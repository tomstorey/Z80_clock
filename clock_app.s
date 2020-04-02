;---------------------------------------------------------------------
;     Clock Application                                              :
;                                                                    :
; Description                                                        :
;     This task is scheduled at boot and should not be descheduled.  :
;                                                                    :
;     This task runs as an application of sorts. It reads the        :
;     registers of the RTC to get UTC time, and then for each of the :
;     configured timezones (according to DIP switch settings),       :
;     calculates the appropriate offsets from UTC to show those      :
;     timezones on each row of the display.                          :
;                                                                    :
;     The task self determines if it should run, signalled by the    :
;     foreground mutex either being null or owned.                   :
;---------------------------------------------------------------------

; State machine states
CLOCK_APP_START         .equ  0
CLOCK_UPDATE            .equ  0x01
CLOCK_IDLE              .equ  0x02
CLOCK_EXIT              .equ  0x03

#data RAM
clock_state             .db 0       ; State machine value

clock_tz1_sw            .db 0       ; Timezone switch settings
clock_tz2_sw            .db 0
clock_tz3_sw            .db 0

clock_rtc_min           .db 0       ; Copy of RTC registers
clock_rtc_hrs           .db 0
clock_rtc_day           .db 0
clock_rtc_dow           .db 0
clock_rtc_mon           .db 0
clock_rtc_year          .db 0

clock_tz_min            .db 0       ; These variables hold the values
clock_tz_hrs            .db 0       ; being computed for the current
clock_tz_day            .db 0       ; row of the display.
clock_tz_dow            .db 0
clock_tz_mon            .db 0
clock_tz_days_in_mon    .db 0       ; Days in month for this row

clock_row               .db 0       ; Display row being computed

tz_sw_ptr               .dw 0
tz_rom_ptr              .dw 0       ; Pointer to TZ ROM entry
row_buf_ptr             .dw 0       ; Pointer to display row buffer
day_array_ptr           .dw 0       ; Pointer to array of days in mon

row_carrys              .db 0       ; Keep track of carrys:
                                    ; 0: Minutes
                                    ; 1: Hours (affects day)
                                    ; 2: Days (affects month)
                                    ; 3: Month (affects year)

row_borrows             .db 0       ; Keep track of borrows:
                                    ; 0: Minutes
                                    ; 1: Hours (affects day)
                                    ; 2: Days (affects month)
                                    ; 3: Month (affects year)

row_flags               .db 0       ; Flags used during row work:
                                    ; 0: DST hour match
                                    ; 1: DST day match
                                    ; 2: DST month match
                                    ; 3:
                                    ; 4:
                                    ; 5:
                                    ; 6:
                                    ; 7: Apply DST

#data _INITIALIZED
#code _INITIALIZER

#code ROM
      .align 0x100
clock_app
      ; Try to lock the foreground mutex if it is available, or return
      mtx_trylock foreground_mtx, APP_CLOCK
      ret   Z

      ; Check semaphore to determine if clock app should run
      sem_trywait clock_app_sem
      ret   Z

      ; Get jump table entry and jump to state
      ld    A, (clock_state)
      or    A, A
      jr    Z, clock_app_start

      get_jp_table_entry clock_jp_tbl
      jp    (HL)

;---- State 00 -------------------------------------------------------
;     This is where the app starts from fresh.
clock_app_start
      ld    A, 0                    ; Blank display buffers
      ld    BC, 27
      ld    HL, staging_row1
      call  memset

      xor   A, A                    ; Reset clock semaphores
      ld    A, (clock_upd_req_sem)
      ld    A, (clock_upd_sem)

      ld    A, 0x01                 ; Use DSKY display update effect
      ld    (display_effect), A

      set_valid_btn_mask BTN_ESC
      set_state clock_state, CLOCK_UPDATE

      ret

;---- State 01 -------------------------------------------------------
;     This is the state in which the clock display is updated with the
;     current time.
;
;     This state is always executed when the clock app starts, to fill
;     the display with the configured times, and then once per minute
;     as signalled by the clock_upd_sem semaphore containing a
;     non-zero value.
;
;     The clock_upd_req_sem semaphore is set at the end of this state
;     to request that the clock_upd_sem semaphore be incremented by
;     the RTC per-minute ISR.
clock_update
#local
;---- Reset counters, pointers etc as required for a fresh run
      xor   A, A
      ld    (clock_row), A          ; Display row starts at 0

      ld    HL, clock_tz1_sw        ; Timezone switch pointer
      ld    (tz_sw_ptr), HL

      ld    HL, staging_row1        ; Display row buffer pointer
      ld    (row_buf_ptr), HL

;---- Read in timezone switch settings
      ld    C, TZ_SW1_REG
      ld    HL, clock_tz1_sw

      ini                           ; Timezone 1 switch
      inc   C
      ini                           ; Timezone 2 switch
      inc   C
      ini                           ; Timezone 3 switch

;---- Read in time from RTC
      ld    A, RTC_CTRL_UTI | RTC_CTRL_CFG
      out   (RTC_CTRL), A

      ld    C, RTC_MIN
      ld    HL, clock_rtc_min

      ini                           ; Minutes register
      inc   C                       ; Inc twice to skip alarm reg
      inc   C
      ini                           ; Hours register
      inc   C                       ; Inc twice to skip alarm reg
      inc   C
      ini                           ; Day register
      inc   C                       ; Inc twice to skip alarm reg
      inc   C
      ini                           ; Day of week register
      inc   C
      ini                           ; Month register
      inc   C
      ini                           ; Year register

      ld    A, RTC_CTRL_CFG
      out   (RTC_CTRL), A


;---- Main loop for computing display rows
row_loop
      xor   A, A                    ; Reset row borrows/carrys/flags
      ld    (row_flags), A

      ; Calculate pointer to TZ ROM entry for current row
      ld    HL, (tz_sw_ptr)         ; Get value of timezone switches
      ld    A, (HL)                 ; for this row
      cpl                           ; Switches pull down, so invert
      and   A, 0x7F                 ; MSb is reserved

      ld    HL, TZ_ROM_BASE         ; Compute pointer to TZ ROM entry.
      ld    E, A                    ; HL is base of TZ ROM, DE will be
      xor   A, A                    ; offset.

      sla   E                       ; Each entry is 32 bytes, so shift
      rla                           ; left 5 bits
      sla   E
      rla
      sla   E
      rla
      sla   E
      rla
      sla   E
      rla

      ld    D, A
      add   HL, DE

      ld    (tz_rom_ptr), HL        ; Save pointer, and xfer to IX
      push  HL
      pop   IX

      ; Process this timezone setting?
      ld    A, (IX+0)               ; Entry contains data?
      cp    A, 0xFF
      jp    Z, row_loop_done        ; No if 0xFF, skip row

      bit   0, A                    ; If bit 0 is set, this is a TZ
      jp    Z, row_loop_done        ; Skip if not a TZ

      ; Take a copy of all of the RTC time registers
      ld    HL, clock_rtc_min
      ld    DE, clock_tz_min
      ld    BC, 5
      call  memcpy


      ; Execution can be diverted to this point from later in the
      ; program, if all of the DST match flags have been set. This
      ; causes an additional hour to be added onto the time that was
      ; computed during the first pass, which then also compensates
      ; for any additional hour/day/month carrys that may occurr as a
      ; result.
begin_computation
      xor   A, A                    ; Reset row borrows/carrys/flags.
      ld    (row_carrys), A         ; Do that here so that bor/car
      ld    (row_borrows), A        ; from pre-DST computation do not
                                    ; apply twice.


;---- Compute minutes for current timezone ---------------------------
      ; Functionality not implemented at this time.
      nop


;---- Compute hours for current timezone -----------------------------
      ld    A, (clock_tz_hrs)       ; Load hours BCD into A
      and   A, 0x7F                 ; Remove AM/PM bit (working in
                                    ; 24hr time)

      ld    C, 0x24

      ld    B, (IX+6)               ; Load hrs offset from TZ ROM

      ld    HL, row_flags           ; If the "Apply DST" flag is set,
      bit   7, (HL)                 ; replace offset with 1 to move
      jr    Z, $+4                  ; clock forward.
      ld    B, 0x01

      add   A, B                    ; Add offset to hours
      daa

      jp    P, no_hrs_borrow        ; If positive, check for overflow

      add   A, C                    ; Result was negative, so add 24
      daa
      ld    HL, row_borrows         ; Record a borrow (-1 day)
      set   1, (HL)

      push  AF
      ld    HL, staging_row3
      ld    (HL), 'B'
      pop   AF

      jr    no_hrs_carry

no_hrs_borrow
      cp    A, C                    ; Has result overflowed hour 24?
      jr    C, no_hrs_carry         ; If C, result < 24

      sub   A, C                    ; Result overflowed, sub 24
      daa
      ld    HL, row_carrys          ; Record a carry (+1 day)
      set   1, (HL)

no_hrs_carry
      ld    (clock_tz_hrs), A       ; Store hours back


;---- Compute day of month -------------------------------------------
      ; First check for leap year
      ld    HL, days_common_year    ; Default to common year array

      ld    A, (clock_rtc_year)     ; Load year BCD into A
      and   0x03
      jr    NZ, not_leap_year       ; If zero, in a leap year

      ld    HL, days_leap_year      ; Override to leap year array

not_leap_year
      ; Load number of days in month from array
      ld    A, (clock_tz_mon)       ; Load month BCD into A
      call  bcd_to_dec
      dec   A                       ; Sub 1 for offset into array
      ld    D, 0                    ; DE becomes array offset
      ld    E, A
      add   HL, DE                  ; Add offset to pointer
      ld    B, (HL)                 ; B is number of days in month
      ld    (day_array_ptr), HL     ; Save pointer

      ; Store the number of days in the month for use later on
      ld    HL, clock_tz_days_in_mon
      ld    (HL), B

      ; Apply borrow/carry to day of month
      ld    A, (clock_tz_day)       ; Load day BCD into A

      ld    HL, row_borrows         ; Test hrs borrow bit
      bit   1, (HL)

      jr    Z, no_day_borrow        ; If Z, no borrow

      ld    HL, clock_tz_dow        ; Decrement the day-of-week
      dec   (HL)
      jr    NZ, $+4
      ld    (HL), 0x07

      dec   A                       ; Hrs borrow, dec to prev day
      daa

      jr    NZ, day_continue        ; If day is 0, record borrow

      ; Day is left at zero and will be corrected when calculating new
      ; month from borrow.
      ld    HL, row_borrows         ; Record a borrow (-1 month)
      set   2, (HL)

      jr    day_continue

no_day_borrow
      ld    HL, row_carrys          ; Test hrs carry bit
      bit   1, (HL)

      jr    Z, day_continue         ; If Z, no carry

      ld    C, A                    ; Save A while incrementing DOW

      ld    HL, clock_tz_dow        ; Increment the day-of-week
      ld    A, (HL)
      inc   A
      and   0x07
      jr    NZ, $+4                 ; If NZ, still in valid range 1..7
      ld    A, 0x01                 ; Inc reached zero, reset to 1
      ld    (HL), A

      ld    A, C                    ; Restore A
      inc   A                       ; Hrs carry, inc to next day
      daa

      cp    A, B                    ; Overflowed num of days in month?
      jr    C, day_continue         ; C if A < B
      jr    Z, day_continue         ; Z if A == B

      ld    A, 0x01                 ; On carry, day can be set to 1

      ld    HL, row_carrys          ; Record a carry (+1 month)
      set   2, (HL)

day_continue
      ld    (clock_tz_day), A       ; Store day back


;---- Compute month --------------------------------------------------
      ld    A, (clock_tz_mon)       ; Load month BCD into A

      ld    HL, row_borrows         ; Test day borrow bit
      bit   2, (HL)

      jr    Z, no_mon_borrow        ; If Z, no borrow

      ; If a day borrow occurred, the month number needs to be
      ; decremented, and the day reset to the last day of the new
      ; month. So, fix month number first...

      dec   A                       ; Decrement month number
      daa

      jr    NZ, mon_borrow_fix_day  ; Did it hit zero?

      ld    A, 0x12                 ; Reset back to month 12

mon_borrow_fix_day
      ld    (clock_tz_mon), A       ; Store month back now

      ; Now use the new month number to apply the correct day number

      call  bcd_to_dec
      dec   A                       ; Sub 1 for offset into array
      ld    D, 0                    ; DE becomes array offset
      ld    E, A

      ld    HL, (day_array_ptr)
      ld    A, L
      and   A, 0xF0
      ld    L, A

      add   HL, DE                  ; Add offset to pointer
      ld    A, (HL)
      ld    (clock_tz_day), A       ; Save corrected day number
      ld    (clock_tz_days_in_mon), A

      jr    no_mon_carry

no_mon_borrow
      ld    HL, row_carrys          ; Test day carry bit
      bit   2, (HL)

      jr    Z, no_mon_carry         ; If Z, no carry

      inc   A                       ; Day carry, inc to next month
      daa
      ld    (clock_tz_mon), A       ; Store month back now

      cp    A, 0x13                 ; Overflowed to 13?
      jr    NZ, no_mon_carry        ; No if NZ, all done

      ld    A, 0x01                 ; On overflow, reset to month 1
      ld    (clock_tz_mon), A       ; Store month back now

      ; Now need to load and store the number of days in this month
      ld    HL, (day_array_ptr)
      call  bcd_to_dec
      dec   A
      ld    D, 0
      ld    E, A
      add   HL, DE
      ld    A, (HL)
      ld    (clock_tz_days_in_mon), A

no_mon_carry

      ld    A, (row_flags)          ; If the "Apply DST" flag is set,
      bit   7, A                    ; skip to display_row because it
      jp    NZ, display_row         ; is not neccessary to recompute
                                    ; whether DST is in effect.

      ; At this stage the correct time and date for the timezone has
      ; been computed, and now can determine if DST is in effect for
      ; this timezone.

      ; First, does DST even apply in this timezone?
      ld    A, (IX+10)              ; Load DST start options
      or    A, A
      jp    Z, display_row          ; DST does not apply if it doesnt
                                    ; start, show info on display row


;---- DST check #1: within the months that DST applies? --------------
      ;
      ; This is a definitive test to determine if DST SHOULD be in
      ; effect.
      ;
      ; To achieve this, first work out the order of the start and end
      ; months, e.g. if the end month is lower than the start month
      ; then they should be reversed, and then check if the current
      ; month falls within that range.
      ld    B, (IX+7)               ; Load start month from TZ ROM
      ld    C, (IX+11)              ; Load end month from TZ ROM
      push  BC                      ; Save these for later

      ld    A, B
      cp    A, C
      jr    C, dst_end_mon_higher

      ; End month is lower than start month, add 12 to reverse order
      ld    A, C
      ld    D, 0x12
      add   A, D
      daa
      ld    C, A

      ld    A, (clock_tz_mon)       ; Must also offset current month,
      cp    A, B                    ; but only if less than the start
      jr    NC, check1              ; month.

      add   A, D
      daa

      jr    check1

dst_end_mon_higher
      ld    A, (clock_tz_mon)       ; Load current month unaffected

check1
      cp    A, B
      jr    Z, check_start_cond     ; cur_mon == start_mon
      jr    C, check1_done          ; cur_mon < start_mon

      cp    A, C
      jp    Z, check_end_cond       ; cur_mon == end_mon
      jr    NC, check1_done         ; cur_mon > end_mon

      ; At this point DST is definitively IN EFFECT
      ld    A, 0x07                 ; Set all match flags
      ld    (row_flags), A
      pop   BC                      ; No longer needed

      jp    check_for_dst

check1_done


;---- DST check #2: outside the months that DST applies? -------------
      ;
      ; This is a definitive test to determine if DST SHOULD NOT be in
      ; effect.
      ;
      ; This is achieved in a similar way to the first check, except
      ; this time we reverse the order of start/end months if the
      ; start month is lower than the end month.

      pop   BC                      ; Restore original star/end months
      push  BC                      ; Save them again

      ld    A, B
      cp    A, C
      jr    NC, nodst_start_mon_higher

      ; Start month is lower than end month, add 12 to reverse order
      ld    D, 0x12
      add   A, D
      daa
      ld    B, A

      ld    A, (clock_tz_mon)       ; Must also offset current month,
      cp    A, C                    ; but only if less than the end
      jr    NC, check2              ; month.

      add   A, D
      daa

      jr    check2

nodst_start_mon_higher
      ld    A, (clock_tz_mon)       ; Load current month unaffected

check2
      cp    A, C
      jr    Z, check_end_cond       ; cur_mon == end_mon
      jr    C, check_start_cond     ; cur_mon < end_mon

      cp    A, B
      jr    Z, check_start_cond     ; cur_mon == start_mon
      jr    NC, check_start_cond    ; cur_mon > start_mon

      ; At this point DST is definitively NOT IN EFFECT
      xor   A, A                    ; Clear all match flags
      ld    (row_flags), A
      pop   BC                      ; No longer needed

      jp    display_row


;---- DST check #3: Progressively check start conditions -------------
check_start_cond
      pop   BC
      push  BC
      ld    A, (clock_tz_mon)

      cp    A, B                    ; In start month?
      jr    NZ, check_end_cond      ; No if NZ (should be end month)

      ; Yes - In start month
      ld    A, (clock_tz_mon)
      ld    HL, row_flags
      set   2, (HL)                 ; Set month match flag
      pop   BC                      ; No longer need this on stack

      ld    A, (clock_tz_day)       ; Load current day into B
      ld    B, A

      ld    C, (IX+10)              ; Load start options from TZ ROM

      bit   0, C                    ; If bit 0 of start options was
      jr    Z, check3_last_sun      ; set, find the day number of the
      call  find_first_sunday       ; first Sunday of the month
      jr    check3_match_day

check3_last_sun
      bit   1, C                    ; If bit 1 of the start options
      jr    Z, check3_second_sun    ; was set, find the day number of
      call  find_last_sunday        ; the last Sunday of the month
      jr    check3_match_day

check3_second_sun
      bit   2, C                    ; If bit 2 of start options was
      jr    Z, check_end_cond       ; set, find the day number of the
      call  find_second_sunday      ; second Sunday of the month. If
                                    ; bit 2 not set, some other bit is
                                    ; and that is unhandled (no DST).

check3_match_day
      ; There are 3 tests for matching the day:
      ;
      ; 1. Day of month is less than start day, no DST
      ; 2. Day of month is same as start day, maybe no DST just yet
      ;    (depends on final check of hours)
      ; 3. Day of month is greater than start day, DST in effect
      cp    A, B
      jr    Z, check3_day_equal     ; Maybe in effect
      jr    NC, display_row         ; Less than, not in effect

      ; Day is greater than start day, DST is IN EFFECT. Set remaining
      ; match flags
      set   0, (HL)
      set   1, (HL)

      jr    check_for_dst

check3_day_equal
      set   1, (HL)                 ; Day matches, set match flag

      ; Final check for starting DST is if the starting hour has been
      ; reached.
      ld    A, (clock_tz_hrs)
      ld    B, (IX+9)               ; Load start hour from TZ ROM

      cp    A, B
      jr    C, display_row          ; Hour is less than start, no DST

      set   0, (HL)                 ; Hour matches, set match flag

      jr    check_for_dst


;---- DST check #4: Progressively check end conditions ---------------
check_end_cond
      pop   BC                      ; POP but dont PUSH again
      ld    A, (clock_tz_mon)

      cp    A, C                    ; In end month?
      jr    NZ, display_row         ; No if NZ (should have been?)

      ; Yes - In end month
      ld    A, (clock_tz_mon)
      ld    HL, row_flags
      set   2, (HL)                 ; Set month match flag

      ld    A, (clock_tz_day)       ; Load current day into B
      ld    B, A

      ld    C, (IX+14)              ; Load end options from TZ ROM

      bit   0, C                    ; If bit 0 of end options was set,
      jr    Z, check4_last_sun      ; find the day number of the first
      call  find_first_sunday       ; Sunday of the month
      jr    check4_match_day

check4_last_sun
      bit   1, C                    ; If bit 1 of the start options
      jr    Z, display_row          ; was set, find the day number of
      call  find_last_sunday        ; the last Sunday of the month. If
                                    ; bit 1 not set, some other bit is
                                    ; and that is unhandled (no DST).

check4_match_day
      ; There are 3 tests for matching the day:
      ;
      ; 1. Day of month is less than end day, DST in effect
      ; 2. Day of month is same as end day, DST may have ended
      ;    (depends on final check of hours)
      ; 3. Day of month is greater than end day, no DST
      cp    A, B
      jr    Z, check4_day_equal     ; Maybe ended
      jr    C, check_for_dst        ; Greater than, not in effect

      ; Day is less than end day, DST is IN EFFECT. Set remaining
      ; match flags
      set   0, (HL)
      set   1, (HL)

      jr    check_for_dst

check4_day_equal
      set   1, (HL)                 ; Day matches, set match flag

      ; Final check for ending DST is if the ending hour has been
      ; reached.
      ld    A, (clock_tz_hrs)
      ld    B, (IX+13)              ; Load end hour from TZ ROM

      inc   A                       ; What would the time be with DST?
      daa

      cp    A, 0x24                 ; Reset on overflow
      jr    NZ, $+3
      xor   A, A

      cp    A, B
      jr    Z, display_row          ; cur_hour == end_hour, no DST
      jr    NC, display_row         ; cur_hour > end_hour, no DST

      set   0, (HL)                 ; Hour <, set match flag


;---- Check DST match flags ------------------------------------------
check_for_dst
      ld    A, (row_flags)
      cp    A, 7                    ; Are all DST flags set?
      jr    NZ, display_row         ; No if NZ, update row display

      set   7, A                    ; Set "Apply DST" flag
      ld    (row_flags), A
      jp    begin_computation       ; Re-run computation to add 1 hour


;---- Enable dimming, and display time or date on a row --------------
display_row
      ; Enable dimming of the display if configured
      in    A, (BTN_REG)            ; Read buttons and switches
      cpl                           ; Buttons pull down, make positive
      ld    C, A                    ; Save A for later, determine d/c
      rra                           ; Move upper nibble to lower
      rra
      rra
      rra
      and   A, DIMM_ROW>>4          ; 2 LSbs are row dimming selector
      ld    B, A                    ; Save for later

      ld    A, (clock_row)          ; Get display row counter and INC.
      inc   A                       ; Row counter range is 0..2, so
                                    ; make comparable to switch config
                                    ; which is 1..3. Switches set to 0
                                    ; means dimming not enabled.

      cp    A, B                    ; Compare row ctr with switches
      jr    NZ, no_dimming          ; No match or dimming not enabled

      ; Dimming enabled on this row. Dimming in effect between 2100
      ; and 0600 hours.
      ld    A, (clock_tz_hrs)       ; Load hours for this row

      cp    A, 0x21
      jr    Z, dimming_on           ; hour == 2100
      jr    NC, dimming_on          ; hour > 2100

      cp    A, 0x06
      jr    NC, dimming_off         ; hour >= 0600

dimming_on
      ld    A, 0x01                 ; Enable dimming (default 50% d/c)

      ; Configure duty cycle, which is determined by the value of bit
      ; position 6 of the buttons register:
      ;
      ; Low (0): 50% duty cycle
      ; High (1): 25% duty cycle

      bit   DUTY_CYCLE_BIT, C       ; Test duty cycle switch value
      jr    Z, apply_dimming        ; Leave A as is for 50% d/c

      scf                           ; Set carry flag and rotate into A
      rla                           ; for 25% d/c

      jr    apply_dimming

dimming_off
      xor   A, A

apply_dimming
      ld    (disp_dim), A

no_dimming
      ; The MSb switch position indicates if the row should be
      ; displaying a time (low) or date (high)
      ld    HL, (tz_sw_ptr)         ; Get value of timezone switches
      ld    A, (HL)                 ; for this row
      cpl                           ; Switches pull down, so invert
      bit   7, A

      jr    NZ, display_date


;---- Time display ---------------------------------------------------
display_time
      ; Load the name of the timezone into the beginning of this row
      ld    HL, (row_buf_ptr)       ; Row pointer to DE
      ex    DE, HL
      ld    HL, (tz_rom_ptr)        ; TZ ROM pointer to HL, TZ name
      inc   HL                      ; begins from second byte
      ld    BC, 3
      call  strncpy

      ex    DE, HL                  ; Save ptr for later
      push  HL

      ; If in DST, add a + to indicate it
      ld    HL, row_flags
      ld    A, ' '

      bit   7, (HL)
      jr    Z, $+4
      ld    A, '+'

      pop   HL                      ; Restore ptr
      ld    (HL), A
      inc   HL

      ; Place hours and minutes into display buffer
      ld    A, (clock_tz_hrs)       ; Hours value, in BCD
      ld    B, 2

hrs_min_to_buf
      ld    C, A                    ; Save a copy

      rra                           ; Tens digit is upper nibble, move
      rra                           ; to lower nibble
      rra
      rra
      and   A, 0x07                 ; Remove AM/PM, keep only 3 LSb's
      add   A, 0x30                 ; Add 0x30 to make ASCII char val
      ld    (HL), A                 ; Store char val into disp buf
      inc   HL

      ld    A, C                    ; Units digit
      and   A, 0x0F
      add   A, 0x30
      ld    (HL), A
      inc   HL

      ld    A, (clock_tz_min)       ; Load mins value for next iter

      djnz  hrs_min_to_buf

      ld    (row_buf_ptr), HL       ; Save updated row buffer pointer
                                    ; which now points to the next row
      jr    row_loop_done


;---- Date display ---------------------------------------------------
display_date
      ld    HL, (row_buf_ptr)       ; Row buffer is destination
      ex    DE, HL

      ld    A, (clock_tz_dow)       ; DOW forms offset after << 2
      rla
      rla
      and   0x1C

      ld    HL, short_day_names     ; Add offset to L
      ld    B, 0
      ld    C, A
      add   HL, BC

      ld    BC, 3                   ; Copy day name to start of row
      call  strncpy

      ex    DE, HL

      ; Place month and day number into display buffer
      ld    A, (clock_tz_mon)       ; Month value, in BCD
      ld    B, 2

mon_day_to_buf
      ld    C, A                    ; Save a copy

      rra                           ; Tens digit is upper nibble, move
      rra                           ; to lower nibble
      rra
      rra
      and   A, 0x03                 ; Keep only 2 LSb's
      add   A, 0x30                 ; Add 0x30 to make ASCII char val
      ld    (HL), A                 ; Store char val into disp buf
      inc   HL

      ld    A, C                    ; Units digit
      and   A, 0x0F
      add   A, 0x30
      ld    (HL), A
      inc   HL

      ld    A, B                    ; Only add / between mon and day
      dec   A
      jr    Z, mon_day_dec

      ld    A, '/'                  ; Add / to separate mon and day
      ld    (HL), A
      inc   HL

      ld    A, (clock_tz_day)       ; Load day number for next iter

mon_day_dec
      djnz  mon_day_to_buf

      ld    (row_buf_ptr), HL       ; Save updated row buffer pointer
                                    ; which now points to the next row


;---- Row loop complete ----------------------------------------------
row_loop_done
      ; Increment various pointers, counters, etc
      ld    HL, tz_sw_ptr           ; Next timezone switch
      inc   (HL)

      ld    HL, clock_row           ; Increment row counter itself
      inc   (HL)
      ld    A, (HL)

      ; Iterate again if row counter < 3
      cp    A, 3
      jp    NZ, row_loop

      sem_post clock_upd_req_sem
      set_state clock_state, CLOCK_IDLE

      ret
#endlocal

;---- State 02 -------------------------------------------------------
;     The clock app idles in this state while waiting for one of two
;     events to happen:
;
;     1. Esc button is pressed, and the app is exited
;     2. clock_upd_sem contains a non-zero value, and the displays
;        are updated
clock_idle
#local
      ld    A, (btn_state)          ; Check if the escape button is
      bit   BTN_ESC_BIT, A          ; pressed, if so, proceed to exit
      jr    Z, check_semaphore

      ack_btn BTN_ESC_BIT
      set_state clock_state, CLOCK_EXIT

      ret

check_semaphore
      sem_trywait clock_upd_sem     ; Check clock_upd_sem and proceed
      ret   Z                       ; to update clock display if > 0

      set_state clock_state, CLOCK_UPDATE

      ret
#endlocal

;---- State 03 -------------------------------------------------------
;     Exit the config app by releasing the foreground mutex.
clock_exit_app
      set_state clock_state, CLOCK_APP_START
      mtx_unlock foreground_mtx

      ret

; State machine jump table
clock_jp_tbl            .dw   clock_app_start
                        .dw   clock_update
                        .dw   clock_idle
                        .dw   clock_exit_app

; Days per month in a common year - keep aligned to 16 bytes
      .align 0x10
days_common_year        .dm   0x31, 0x28, 0x31, 0x30, 0x31, 0x30
                        .dm   0x31, 0x31, 0x30, 0x31, 0x30, 0x31

; Days per month in a leap year - keep aligned to 16 bytes
      .align 0x10
days_leap_year          .dm   0x31, 0x29, 0x31, 0x30, 0x31, 0x30
                        .dm   0x31, 0x31, 0x30, 0x31, 0x30, 0x31

; Short day of week names - keep aligned to 16 bytes
      .align 0x10
short_day_names         .text 0, 0, 0, 0        ; Null entry
                        .text 'SU', 0, 0        ; Each day name takes
                        .text 'MO', 0, 0        ; 4 bytes to that the
                        .text 'TU', 0, 0        ; day number can be
                        .text 'WE', 0, 0        ; simply shifted by
                        .text 'TH', 0, 0        ; two places to the
                        .text 'FR', 0, 0        ; left for its offset.
                        .text 'SA', 0, 0


;---------------------------------------------------------------------
;     find_first_sunday                                              :
;                                                                    :
; Description                                                        :
;     Finds the day number of the first Sunday in a month.           :
;                                                                    :
;     Takes no parameters, but uses timezone row variables and       :
;     returns the result in A.                                       :
;                                                                    :
; Returns                                                            :
;     A  Day number of first Sunday in BCD                           :
;---------------------------------------------------------------------
find_first_sunday
#local
      push  BC

      ld    A, (clock_tz_dow)       ; Day of week into B
      dec   A                       ; Make day of week range 0..6
      ld    B, A

      ld    A, (clock_tz_day)       ; Day of month into A
      call  bcd_to_dec              ; Convert from BCD to decimal

      add   A, 7                    ; Add an extra week to cater for
                                    ; low day numbers

      sub   A, B                    ; Subtract DOW from day

      cp    A, 8                    ; Result is day 1-7?
      jr    C, done                 ; Yes if C, done

loop
      sub   A, 7                    ; Take a week off
      cp    A, 8                    ; Result is day 1-7?
      jr    NC, loop                ; No if NC, go again

done
      pop   BC

      ret
#endlocal


;---------------------------------------------------------------------
;     find_last_sunday                                               :
;                                                                    :
; Description                                                        :
;     Finds the day number of the last Sunday in a month.            :
;                                                                    :
;     This is done by calling find_first_sunday and then adding 7    :
;     as long as the day number does not exceed the number of days   :
;     in the current month (per clock_tz_days_in_mon).               :
;                                                                    :
; Returns                                                            :
;     A  Day number of last Sunday in BCD                            :
;---------------------------------------------------------------------
find_last_sunday
#local
      push  BC

      ld    A, (clock_tz_days_in_mon)
      ld    B, A

      call  find_first_sunday

loop
      add   A, 7                    ; Add a week
      daa

      cp    A, B                    ; Below number of days in month?
      jr    C, loop                 ; Yes if C, loop again
      jr    Z, done                 ; Last day is Sunday if Z

      sub   A, 7                    ; Overshot in last loop iter, fix
      daa

done
      pop   BC

      ret
#endlocal


;---------------------------------------------------------------------
;     find_second_sunday                                             :
;                                                                    :
; Description                                                        :
;     Finds the day number of the second Sunday in a month.          :
;                                                                    :
;     This is done by calling find_first_sunday and then adding 7.   :
;                                                                    :
; Returns                                                            :
;     A  Day number of second Sunday in BCD                          :
;---------------------------------------------------------------------
find_second_sunday
      call  find_first_sunday
      add   A, 7
      daa

      ret


;---------------------------------------------------------------------
;     bcd_to_dec                                                     :
;                                                                    :
; Description                                                        :
;     Convert the BCD value in A to a decimal number.                :
;                                                                    :
; Returns                                                            :
;     A  Decimal converted number                                    :
;---------------------------------------------------------------------
bcd_to_dec
      push  BC                      ; Save BC, B is used as temp
      ld    C, A                    ; Store A for later

      rra                           ; Tens to lower nibble
      rra
      rra
      rra
      and   A, 0xF                  ; Clear upper nibble
      ld    B, A                    ; Save 1x lower nibble
      add   A, A                    ; Lower nibble * 2
      add   A, B                    ; Lower nibble * 3
      sla   A                       ; Lower nibble * 6
      ld    B, A                    ; B = 6 * tens
      ld    A, C                    ; Restore original BCD val
      sub   A, B                    ; Subtract 6 * tens from BCD

      pop   BC

      ret

; END clock_app.s
