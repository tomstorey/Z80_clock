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
#data RAM
clock_state             .db 0       ; State machine value

#data _INITIALIZED
#code _INITIALIZER

#code ROM
      .align 0x100
clock_app
#local
      sem_trywait clock_app_sem
      or    A, A
      ret   Z                       ; If zero, sem locked, return

      mtx_trylock foreground_mtx, APP_CLOCK
      or    A, A
      ret   Z                       ; If zero, mutex not acquired

      ld    A, (clock_state)


state_0
      cp    A, 0
      jr    NZ, state_1

      ld    A, 0                    ; Blank display buffers
      ld    BC, 27
      ld    HL, staging_row1
      call  memset

      ld    BC, 8                   ; Title to row 1
      ld    DE, staging_row1
      ld    HL, clock_title
      call  strncpy

      set_valid_btn_mask BTN_ESC
      set_state clock_state, 0x01

      ret


state_1
      cp    A, 0x01
      jr    NZ, state_FF

      ld    A, (btn_state)
      bit   BTN_ESC_BIT, A
      ret   Z

      ack_btn BTN_ESC_BIT
      set_state clock_state, 0xFF

      ret


state_FF
      cp    A, 0xFF
      ret   NZ

      set_state clock_state, 0
      mtx_unlock foreground_mtx

      ret
#endlocal



clock_title             .text "CLOCK", 0

; END clock_app.s
