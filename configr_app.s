;---------------------------------------------------------------------
;     Configuration Application                                      :
;                                                                    :
; Description                                                        :
;     This task is scheduled at boot and should not be descheduled.  :
;                                                                    :
;     This task runs as an application of sorts. It implements a     :
;     state machine which provides an interface that allows the user :
;     to configure the time and date of UTC (the base timezone)      :
;     which is then stored within the RTC peripheral.                :
;                                                                    :
;     The task self determines if it should run, signalled by the    :
;     foreground mutex either being null or owned.                   :
;---------------------------------------------------------------------
#data RAM
configr_state           .db 0       ; State machine value
configr_menu_opt        .db 0       ; Current menu option

configr_rtc_min         .db 0       ; Copy of RTC registers for
configr_rtc_hrs         .db 0       ; adjusting and setting time/date
configr_rtc_day         .db 0
configr_rtc_dow         .db 0
configr_rtc_mon         .db 0
configr_rtc_year        .db 0

#data _INITIALIZED
#code _INITIALIZER

#code ROM
      .align 0x100
configr_app
#local
      ; Check semaphore to determine if config app should run
      sem_trywait configr_app_sem
      ret   Z

      ; Try to lock the foreground mutex if it is available, or return
      mtx_trylock foreground_mtx, APP_CONFIGR
      ret   Z

      ; Get jump table entry and jump to state
      ld    A, (configr_state)
      get_jp_table_entry configr_jp_tbl
      jp    (HL)

;---- State 00 -------------------------------------------------------
;     This is where the app starts from fresh.
app_start
      ld    BC, 8                   ; Display app title on row 1
      ld    DE, display_row1
      ld    HL, configr_title
      call  strncpy

      ld    A, 0                    ; Clear rows 2 and 3
      ld    BC, 19
      ld    HL, display_row2
      call  memset

      xor   A, A                    ; Reset selected menu option
      ld    (configr_menu_opt), A

      set_valid_btn_mask BTN_ALL
      set_state configr_state, CONFIGR_MAIN_MENU

      ret

;---- State 01 -------------------------------------------------------
;     Implements the main menu.
;
;     User can:
;     * Select between setting date and time using Up/Down buttons
;     * Proceed to perform that action by pressing the Enter button
;     * Exit configurator app using Escape button
main_menu
#local
      ld    BC, 8                   ; Prepare to set text on row 2,
      ld    DE, display_row2        ; default to "SET DATE"
      ld    HL, configr_menu_set_date

      ld    A, (configr_menu_opt)   ; If selected menu option is value
      cp    A, 0                    ; 0 (zero), row 2 will display
      jr    NZ, do_msg              ; "SET TIME" instead.
      ld    HL, configr_menu_set_time

do_msg
      call  strncpy

      ; Handle button presses
      ld    A, (btn_state)

      bit   BTN_ESC_BIT, A
      jr    Z, test_enter_btn

      ack_btn BTN_ESC_BIT           ; Escape exits the config app
      set_state configr_state, CONFIGR_EXIT

      ret

test_enter_btn
      bit   BTN_ENT_BIT, A
      jr    Z, test_updn_btns

      ack_btn BTN_ENT_BIT

      ld    A, (configr_menu_opt)
      cp    A, 0
      jr    NZ, enter_menu1

      ; On Enter, if menu option was 0, proceed to set time
      set_state configr_state, CONFIGR_ADJUST_TIME

      ret

enter_menu1
      ; Otherwise proceed to set date
      set_state configr_state, CONFIGR_ADJUST_DATE

      ret

test_updn_btns
      ld    B, A
      and   A, 0x03
      ret   Z

      ; Up and Down buttons achieve essentially the same thing, so
      ; handle them as though they are the same - toggle the LSb to
      ; move between the two available options
      ld    HL, configr_menu_opt
      ld    A, (HL)
      xor   A, 0x01
      ld    (HL), A

      ack_btn BTN_UP_BIT
      ack_btn BTN_DN_BIT

      ret
#endlocal

;---- State 02 -------------------------------------------------------
;     Adjust the time.
;
;     The hours and minutes registers of the RTC are copied to RAM so
;     they can be adjusted independently, and then applied at the end.
;
;     Falls through to next state.
adjust_time
      rtc_update_lock

      in    A, (RTC_MIN)
      ld    (configr_rtc_min), A
      in    A, (RTC_HRS)
      and   A, 0x7F                 ; Remove MSb (AM/PM indicator)
      ld    (configr_rtc_hrs), A

      rtc_update_unlock

      ld    BC, 8                   ; Set title/row 1 to "TIME UTC"
      ld    DE, display_row1
      ld    HL, configr_time_utc
      call  strncpy

      set_state configr_state, CONFIGR_HOURS_MSG

;---- State 03 -------------------------------------------------------
;     Updates display row 2 to indicate which value is being adjusted.
;
;     Falls through to next state.
hours_msg
      ld    BC, 16                  ; Set row 2 to "HOURS" and clear
      ld    DE, display_row2        ; row 3
      ld    HL, configr_set_hours
      call  strncpy

      set_state configr_state, CONFIGR_ADJUST_HOURS

;---- State 04 -------------------------------------------------------
;     Implements hours adjustment.
;
;     Hours value can be adjusted using the Up/Down buttons. Proceed
;     to Minutes adjustment using the Enter button, or exit back to
;     the main menu using the Escape button.
adjust_hours
#local
      ; Display tens digit in row 3 col 0
      ld    HL, configr_rtc_hrs
      ld    A, (HL)
      rrca
      rrca
      rrca
      rrca
      and   A, 0x0F
      add   A, 0x30
      ld    (display_row3), A

      ; Display units digit in row 3 col 1
      ld    A, (HL)
      and   A, 0x0F
      add   A, 0x30
      ld    (display_row3+1), A

      ; Handle button presses
      ld    A, (btn_state)

      bit   BTN_ESC_BIT, A
      jr    Z, test_enter_btn

      ack_btn BTN_ESC_BIT           ; Escape returns to main menu
      set_state configr_state, CONFIGR_APP_START

      ret

test_enter_btn
      bit   BTN_ENT_BIT, A
      jr    Z, test_updn_btns

      ack_btn BTN_ENT_BIT           ; Enter proceeds to minutes adjust
      set_state configr_state, CONFIGR_MINUTES_MSG

      ret

test_updn_btns
      ld    B, A
      and   A, 0x03                 ; Up or Down pressed?
      ret   Z                       ; No if Z

      ld    A, (HL)                 ; Hours value into A

      bit   BTN_UP_BIT, B           ; Up button pressed?
      jr    Z, down_button          ; No if Z, must be Down button

      inc   A                       ; Increment on Up button
      ack_btn BTN_UP_BIT
      jr    store

down_button
      dec   A                       ; Decrement on Down button
      ack_btn BTN_DN_BIT

store
      daa                           ; Format new value for BCD
      ld    (HL), A                 ; Store new value back

      cp    A, 0x24                 ; New value overflowed to 24?
      jr    NZ, cp_99
      ld    (HL), 0                 ; Yes, reset to 0

      ret

cp_99
      cp    A, 0x99                 ; New value underflowed to 99?
      ret   NZ
      ld    (HL), 0x23              ; Yes, reset to 23

      ret

#endlocal

;---- State 05 -------------------------------------------------------
;     Updates display row 2 to indicate which value is being adjusted.
;
;     Falls through to next state.
minutes_msg
      ld    BC, 16                  ; Set row 2 to "MINUTES" and clear
      ld    DE, display_row2        ; row 3
      ld    HL, configr_set_minutes
      call  strncpy

      set_state configr_state, CONFIGR_ADJUST_MINS

;---- State 06 -------------------------------------------------------
;     Implements minutes adjustment.
;
;     Minutes value can be adjusted using the Up/Down buttons. Proceed
;     to apply new time using Enter button, or return to hours
;     adjustment using Escape button.
adjust_mins
#local
      ; Display tens digit in row 3 col 0
      ld    HL, configr_rtc_min
      ld    A, (HL)
      rrca
      rrca
      rrca
      rrca
      and   A, 0x0F
      add   A, 0x30
      ld    (display_row3), A

      ; Display units digit in row 3 col 1
      ld    A, (HL)
      and   A, 0x0F
      add   A, 0x30
      ld    (display_row3+1), A

      ; Handle button presses
      ld    A, (btn_state)

      bit   BTN_ESC_BIT, A
      jr    Z, test_enter_btn

      ack_btn BTN_ESC_BIT           ; Escape returns to hours adjust
      set_state configr_state, CONFIGR_HOURS_MSG

      ret

test_enter_btn
      bit   BTN_ENT_BIT, A
      jr    Z, test_updn_btn

      ack_btn BTN_ENT_BIT           ; Enter proceeds to apply time
      set_state configr_state, CONFIGR_APPLY_TIME

      ret

test_updn_btn
      ld    B, A
      and   A, 0x03                 ; Up or Down pressed?
      ret   Z                       ; No if Z

      ld    A, (HL)                 ; Hours value into A

      bit   BTN_UP_BIT, B           ; Up button pressed?
      jr    Z, down_button          ; No if Z, must be Down button

      inc   A                       ; Increment on Up button
      ack_btn BTN_UP_BIT
      jr    store

down_button
      dec   A                       ; Decrement on Down button
      ack_btn BTN_DN_BIT

store
      daa                           ; Format new value for BCD
      ld    (HL), A                 ; Store new value back

      cp    A, 0x60                 ; New value overflowed to 60?
      jr    NZ, cp_99
      ld    (HL), 0                 ; Yes, reset to 0

      ret

cp_99
      cp    A, 0x99                 ; New value underflowed to 99?
      ret   NZ
      ld    (HL), 0x59              ; Yes, reset to 59

      ret

#endlocal

;---- State 07 -------------------------------------------------------
;     The adjusted hours and minutes values are written to the RTC
;     registers to apply the new time.
apply_time
      rtc_update_lock

      xor   A, A                    ; Seconds are always reset to 0
      out   (RTC_SEC), A

      ld    A, (configr_rtc_min)
      out   (RTC_MIN), A
      ld    A, (configr_rtc_hrs)
      out   (RTC_HRS), A

      rtc_update_unlock

      ; Restart app after applying new time
      set_state configr_state, CONFIGR_APP_START

      ret

;---- State 08 -------------------------------------------------------
;     Adjust the date.
;
;     The year, month, day and day of week registers of the RTC are
;     copied to RAM so they can be adjusted independently, and then
;     applied at the end.
;
;     Falls through to next state.
adjust_date
      rtc_update_lock

      in    A, (RTC_DAY)
      ld    (configr_rtc_day), A
      in    A, (RTC_DOW)
      ld    (configr_rtc_dow), A
      in    A, (RTC_MON)
      ld    (configr_rtc_mon), A
      in    A, (RTC_YEAR)
      ld    (configr_rtc_year), A

      rtc_update_unlock

      ld    BC, 8                   ; Set title/row 1 to "DATE UTC"
      ld    DE, display_row1
      ld    HL, configr_date_utc
      call  strncpy

      set_state configr_state, CONFIGR_YEAR_MSG

;---- State 09 -------------------------------------------------------
;     Updates display row 2 to indicate which value is being adjusted.
;
;     Falls through to next state.
year_msg
      ld    BC, 16                  ; Set row 2 to "YEAR" and clear
      ld    DE, display_row2        ; row 3
      ld    HL, configr_set_year
      call  strncpy

      set_state configr_state, CONFIGR_ADJUST_YEAR

;---- State 0A -------------------------------------------------------
adjust_year
#local
      ; Display tens digit in row 3 col 0
      ld    HL, configr_rtc_year
      ld    A, (HL)
      rrca
      rrca
      rrca
      rrca
      and   A, 0x0F
      add   A, 0x30
      ld    (display_row3), A

      ; Display units digit in row 3 col 1
      ld    A, (HL)
      and   A, 0x0F
      add   A, 0x30
      ld    (display_row3+1), A

      ; Handle button presses
      ld    A, (btn_state)

      bit   BTN_ESC_BIT, A
      jr    Z, test_enter_btn

      ack_btn BTN_ESC_BIT           ; Escape returns to main menu
      set_state configr_state, CONFIGR_APP_START

      ret

test_enter_btn
      bit   BTN_ENT_BIT, A
      jr    Z, test_updn_btn

      ack_btn BTN_ENT_BIT           ; Enter proceeds to month adjust
      set_state configr_state, CONFIGR_MONTH_MSG

      ret

test_updn_btn
      ld    B, A
      and   A, 0x03                 ; Up or Down pressed?
      ret   Z                       ; No if Z

      ld    A, (HL)                 ; Hours value into A

      bit   BTN_UP_BIT, B           ; Up button pressed?
      jr    Z, down_button          ; No if Z, must be Down button

      inc   A                       ; Increment on Up button
      ack_btn BTN_UP_BIT
      jr    store

down_button
      dec   A                       ; Decrement on Down button
      ack_btn BTN_DN_BIT

store
      daa                           ; Format new value for BCD
      ld    (HL), A                 ; Store new value back

      ret

#endlocal

;---- State 0B --------------------------------------------------------
;     Updates display row 2 to indicate which value is being adjusted.
;
;     Falls through to next state.
month_msg
      ld    BC, 16                  ; Set row 2 to "MONTH" and clear
      ld    DE, display_row2        ; row 3
      ld    HL, configr_set_month
      call  strncpy

      set_state configr_state, CONFIGR_ADJUST_MONTH

;---- State 0C --------------------------------------------------------
adjust_month
#local
      ; Display tens digit in row 3 col 0
      ld    HL, configr_rtc_mon
      ld    A, (HL)
      rrca
      rrca
      rrca
      rrca
      and   A, 0x0F
      add   A, 0x30
      ld    (display_row3), A

      ; Display units digit in row 3 col 1
      ld    A, (HL)
      and   A, 0x0F
      add   A, 0x30
      ld    (display_row3+1), A

      ; Handle button presses
      ld    A, (btn_state)

      bit   BTN_ESC_BIT, A
      jr    Z, test_enter_btn

      ack_btn BTN_ESC_BIT           ; Escape returns to year adjust
      set_state configr_state, CONFIGR_YEAR_MSG

      ret

test_enter_btn
      bit   BTN_ENT_BIT, A
      jr    Z, test_updn_btn

      ack_btn BTN_ENT_BIT           ; Enter proceeds to day adjust
      set_state configr_state, CONFIGR_DAY_MSG

      ret

test_updn_btn
      ld    B, A
      and   A, 0x03                 ; Up or Down pressed?
      ret   Z                       ; No if Z

      ld    A, (HL)                 ; Hours value into A

      bit   BTN_UP_BIT, B           ; Up button pressed?
      jr    Z, down_button          ; No if Z, must be Down button

      inc   A                       ; Increment on Up button
      ack_btn BTN_UP_BIT
      jr    store

down_button
      dec   A                       ; Decrement on Down button
      ack_btn BTN_DN_BIT

store
      daa                           ; Format new value for BCD
      ld    (HL), A                 ; Store new value back

      cp    A, 0x13                 ; New value overflowed to 13?
      jr    NZ, cp_0
      ld    (HL), 0x01              ; Yes, reset to 1

      ret

cp_0
      cp    A, 0                    ; New value underflowed to 0?
      ret   NZ
      ld    (HL), 0x12              ; Yes, reset to 12

      ret

#endlocal

;---- State 0D --------------------------------------------------------
;     Updates display row 2 to indicate which value is being adjusted.
;
;     Falls through to next state.
day_msg
      ld    BC, 16                  ; Set row 2 to "DAY" and clear row
      ld    DE, display_row2        ; 3
      ld    HL, configr_set_day
      call  strncpy

      set_state configr_state, CONFIGR_ADJUST_DAY

;---- State 0E --------------------------------------------------------
adjust_day
#local
      ; Display tens digit in row 3 col 0
      ld    HL, configr_rtc_day
      ld    A, (HL)
      rrca
      rrca
      rrca
      rrca
      and   A, 0x0F
      add   A, 0x30
      ld    (display_row3), A

      ; Display units digit in row 3 col 1
      ld    A, (HL)
      and   A, 0x0F
      add   A, 0x30
      ld    (display_row3+1), A

      ; Handle button presses
      ld    A, (btn_state)

      bit   BTN_ESC_BIT, A
      jr    Z, test_enter_btn

      ack_btn BTN_ESC_BIT           ; Escape returns to month adjust
      set_state configr_state, CONFIGR_MONTH_MSG

      ret

test_enter_btn
      bit   BTN_ENT_BIT, A
      jr    Z, test_updn_btn

      ack_btn BTN_ENT_BIT           ; Enter proceeds to DOW adjust
      set_state configr_state, CONFIGR_DOW_MSG

      ret

test_updn_btn
      ld    B, A
      and   A, 0x03                 ; Up or Down pressed?
      ret   Z                       ; No if Z

      ld    A, (HL)                 ; Hours value into A

      bit   BTN_UP_BIT, B           ; Up button pressed?
      jr    Z, down_button          ; No if Z, must be Down button

      inc   A                       ; Increment on Up button
      ack_btn BTN_UP_BIT
      jr    store

down_button
      dec   A                       ; Decrement on Down button
      ack_btn BTN_DN_BIT

store
      daa                           ; Format new value for BCD
      ld    (HL), A                 ; Store new value back

      cp    A, 0x32                 ; New value overflowed to 32?
      jr    NZ, cp_0
      ld    (HL), 0x01              ; Yes, reset to 1

      ret

cp_0
      cp    A, 0                    ; New value underflowed to 0?
      ret   NZ
      ld    (HL), 0x31              ; Yes, reset to 31

      ret

#endlocal

;---- State 0F --------------------------------------------------------
;     Updates display row 2 to indicate which value is being adjusted.
;
;     Falls through to next state.
dow_msg
      ld    BC, 16                  ; Set row 2 to "WEEKDAY" and
      ld    DE, display_row2        ; clear row 3
      ld    HL, configr_set_weekday
      call  strncpy

      set_state configr_state, CONFIGR_ADJUST_DOW

;---- State 10 --------------------------------------------------------
adjust_dow
#local
      ld    A, (configr_rtc_dow)    ; DOW value into A
      dec   A                       ; Decrement by 1 and mult by 4 to
      add   A, A                    ; make offset (Sun = index 0)
      add   A, A
      ld    D, 0                    ; A into DE
      ld    E, A
      ld    HL, configr_sun         ; HL = pointer to first tbl entry
      add   HL, DE                  ; Add offset to pointer

      ld    BC, 8                   ; Write day name to row 3
      ld    DE, display_row3
      call  strncpy

      ; Handle button presses
      ld    A, (btn_state)

      bit   BTN_ESC_BIT, A
      jr    Z, test_enter_btn

      ack_btn BTN_ESC_BIT           ; Escape returns to day adjust
      set_state configr_state, CONFIGR_DAY_MSG

      ret

test_enter_btn
      bit   BTN_ENT_BIT, A
      jr    Z, test_updn_btn

      ack_btn BTN_ENT_BIT           ; Enter proceeds to apply date
      set_state configr_state, CONFIGR_APPLY_DATE

      ret

test_updn_btn
      ld    B, A
      and   A, 0x03                 ; Up or Down pressed?
      ret   Z                       ; No if Z

      ld    HL, configr_rtc_dow
      ld    A, (HL)                 ; Hours value into A

      bit   BTN_UP_BIT, B           ; Up button pressed?
      jr    Z, down_button          ; No if Z, must be Down button

      inc   A                       ; Increment on Up button
      ack_btn BTN_UP_BIT
      jr    store

down_button
      dec   A                       ; Decrement on Down button
      ack_btn BTN_DN_BIT

store
      daa                           ; Format new value for BCD
      ld    (HL), A                 ; Store new value back

      cp    A, 0x08                 ; New value overflowed to 8?
      jr    NZ, cp_0
      ld    (HL), 0x01              ; Yes, reset to 1

      ret

cp_0
      cp    A, 0                    ; New value underflowed to 0?
      ret   NZ
      ld    (HL), 0x07              ; Yes, reset to 7

      ret

#endlocal

;---- State 11 --------------------------------------------------------
;     The adjusted year, month, day and day of week values are written
;     to the RTC registers to apply the new date.
apply_date
      rtc_update_lock

      ld    A, (configr_rtc_day)
      out   (RTC_DAY), A
      ld    A, (configr_rtc_dow)
      out   (RTC_DOW), A
      ld    A, (configr_rtc_mon)
      out   (RTC_MON), A
      ld    A, (configr_rtc_year)
      out   (RTC_YEAR), A

      rtc_update_unlock

      ; Restart app after applying new date
      set_state configr_state, CONFIGR_APP_START

      ret

;---- State FF -------------------------------------------------------
;     Exit the config app by releasing the foreground mutex.
exit_app
      set_state configr_state, CONFIGR_APP_START
      mtx_unlock foreground_mtx

      ret

; State machine jump table
configr_jp_tbl          .dw   app_start
                        .dw   main_menu
                        .dw   adjust_time
                        .dw   hours_msg
                        .dw   adjust_hours
                        .dw   minutes_msg
                        .dw   adjust_mins
                        .dw   apply_time
                        .dw   adjust_date
                        .dw   year_msg
                        .dw   adjust_year
                        .dw   month_msg
                        .dw   adjust_month
                        .dw   day_msg
                        .dw   adjust_day
                        .dw   dow_msg
                        .dw   adjust_dow
                        .dw   apply_date
                        .dw   exit_app

#endlocal

configr_title           .text "CONFIGR", 0
configr_menu_set_time   .text "SET TIME", 0
configr_menu_set_date   .text "SET DATE", 0
configr_time_utc        .text "TIME UTC", 0
configr_set_hours       .text "HOURS", 0
configr_set_minutes     .text "MINUTES", 0
configr_date_utc        .text "DATE UTC", 0
configr_set_year        .text "YEAR", 0
configr_set_month       .text "MONTH", 0
configr_set_day         .text "DAY", 0
configr_set_weekday     .text "WEEKDAY", 0
configr_sun             .text "SUN", 0    ; Keep day names contiguous
configr_mon             .text "MON", 0
configr_tue             .text "TUE", 0
configr_wed             .text "WED", 0
configr_thu             .text "THU", 0
configr_fri             .text "FRI", 0
configr_sat             .text "SAT", 0

; END configr_app.s
