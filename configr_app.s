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

#data _INITIALIZED
#code _INITIALIZER

#code ROM
      .align 0x100
configr_app
#local
      mtx_trylock foreground_mtx, APP_CONFIGR

      or    A, A
      ret   Z                       ; If zero, mtx not acq'd, return

next_state
      ld    A, (configr_state)

;---- State 0
;     When entering the configurator app, start here.
state_0
      cp    A, 0
      jr    NZ, state_1

      ld    A, 0                    ; Blank display buffers
      ld    BC, 27
      ld    HL, display_row1
      call  memset

      ld    BC, 8                   ; Title to row 1
      ld    DE, display_row1
      ld    HL, configr_title
      call  strncpy

      set_valid_btn_mask BTN_ALL    ; All buttons valid for main menu
      set_state configr_state, 0x01

      ret

;---- State 1
;     State 1 controls the main menu, including displaying the menu
;     item that is currently selected and allowing movement between
;     main menu items. Also, allows the configurator to be exited.
state_1
      cp    A, 0x01
      jr    NZ, state_FF

      ; Based on the currently selected menu items, load display row 2
      ld    BC, 8                   ; Copy 8 chars
      ld    DE, display_row2        ; To display row 2 buffer
      ld    HL, configr_menu_set_date

      ld    A, (configr_menu_opt)
      cp    A, 0                    ; If current menu is 0, override
      jr    NZ, state_1_do_msg
      ld    HL, configr_menu_set_time

state_1_do_msg
      call  strncpy

      ; Handle button presses in the main menu
      ld    A, (btn_state)

      bit   BTN_ESC_BIT, A          ; Esc button pressed?
      jr    Z, state_1_enter

      set_state configr_state, 0xFF ; Yes, exit configurator
      jr    next_state

state_1_enter
      bit   BTN_ENT_BIT, A          ; Enter button pressed?
      jr    Z, state_1_up

      ret

state_1_up
      bit   BTN_UP_BIT, A           ; Up button pressed?
      jr    Z, state_1_dn

      ld    HL, configr_menu_opt    ; Increment the selected menu item
      ld    A, (HL)
      inc   A
      and   A, 0x01
      ld    (HL), A

      ack_btn BTN_UP_BIT            ; Ack the button press

      ret

state_1_dn
      bit   BTN_DN_BIT, A           ; Down button pressed?
      ret   Z

      ld    HL, configr_menu_opt    ; Decrement the selected menu item
      ld    A, (HL)
      dec   A
      and   A, 0x01
      ld    (HL), A

      ack_btn BTN_DN_BIT            ; Ack the button press

      ret

;---- Exit the configurator app
;     Reset various settings ready for the next time the configurator
;     is started.
state_FF
      cp    A, 0xFF
      ret   NZ

      xor   A, A                    ; Reset selected menu item
      ld    (configr_menu_opt), A

      set_state configr_state, 0    ; Reset state machine
      mtx_unlock foreground_mtx

done
      ret
#endlocal


configr_title           .text "CONFIGR", 0
configr_menu_set_time   .text "SET TIME", 0
configr_menu_set_date   .text "SET DATE", 0

; END configr_app.s
