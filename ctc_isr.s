#data RAM
#code ROM
      .align 0x100
ctc_ch0_isr
      ei
      reti


;---------------------------------------------------------------------
;     CTC Channel 1 ISR - Display refresh                            :
;                                                                    :
; Description                                                        :
;     Runs in real time as opposed to being shceduled as a task      :
;     to ensure the least amount of jitter for display refreshing.   :
;                                                                    :
;     On each iteration of this ISR the working row is incremented,  :
;     and the character data is loaded from the character ROM and    :
;     shifted into the display driver shift registers.               :
;                                                                    :
;     External tasks are responsible for loading the display row     :
;     buffers with the data that is to be displayed.                 :
;---------------------------------------------------------------------
#data RAM
disp_cur_row            .db 0       ; Current row being displayed
disp_dim_ctr            .db 0       ; Display dimming counter
disp_dim                .db 0       ; 0 = bright, 1 = dim

#code ROM
      .align 0x80
ctc_ch1_isr
#local
      ex    AF, AF'
      exx

;---- First thing to do is to determine the current row being worked
;     on. At boot, memory is zeroised, so incrementing early means
;     row 1 is the starting row. Each iteration the counter is inc'd
;     and once it reaches 4 it is reset back to 1 directly.
;
;     Also increment the display dimming row counter. The LSb of this
;     is used to determine if the current working row should be on or
;     off while dimming is active.

      ld    HL, disp_cur_row        ; Increment row counter
      inc   (HL)
      ld    A, (HL)
      cp    A, 4                    ; If at row 4, go back to 1
      jr    NZ, row_offset

      ld    A, 1                    ; Reset row counter to 1
      ld    (HL), A

      ld    HL, disp_dim_ctr        ; Increment dimming counter each
      inc   (HL)                    ; time 3 rows have been displayed.
                                    ; This will result in a 50% duty
                                    ; cycle.

;---- Once the working row is determined, the next step is to compute
;     an offset for the address where that rows buffer is located in
;     RAM. Start by loading the address of row 1's buffer, and then
;     subtract 1 from the current row counter. Each row is then some
;     multiple of 8 from that address.
;
;     Due to the layout of the display driver shift registers, the row
;     is iterated in reverse, from last character to first.
;
;     At the same time, compute a pointer to the dot point buffer for
;     the working row.
;
;     And finally, the buffer offset is added to a pointer for the row
;     data buffer.

row_offset
      ld    HL, display_dp1         ; Ptr to DP buffer for this row

      dec   A                       ; Decrement row counter by 1
      jr    Z, row_offset_add       ; If row ctr == 0, skip offset adj

      ld    B, A                    ; Row counter becomes loop counter
      ld    A, 4                    ; Offset start value

shift_offset
      add   A, A                    ; Double for each row to offset
      inc   HL                      ; Inc DP ptr for each row
      djnz  shift_offset

row_offset_add
      push  HL                      ; Save DP ptr for later

      ld    HL, display_row1+7      ; HL = pointer to row buffer.
                                    ; +7 to load data backwards.
      ld    D, 0                    ; DE = row multiple offset
      ld    E, A
      add   HL, DE                  ; Add row offset to pointer

;---- The outer loop iterates over each of the 8 columns on the row.
;     The row buffer pointer points to the character to be displayed,
;     and is decremented each iteration to work backwards to the first
;     character of the row.
;
;     A pointer to the character ROM is computed and used by the
;     inner loop. Since each character on the display uses 2 bytes of
;     data to control 16 segments, the character value is doubled and
;     then added as an offset to the base addr of the character ROM.

      ld    C, DISP_DATA            ; Display data shift register addr
      ld    B, 8                    ; Outer loop - chars per row

next_row_char
      ld    D, 0                    ; DE = char value to display
      ld    E, (HL)
      ex    DE, HL                  ; Each char ROM entry is 2 bytes
      add   HL, HL                  ; (16 segments), so double DE to
      ex    DE, HL                  ; make offset.

      push  HL                      ; HL = ptr to row buf pos

      ld    HL, CHAR_ROM_BASE       ; HL = char ROM base addr
      add   HL, DE                  ; Add DE for char offset in ROM

      push  BC                      ; BC contains outer loop counter

      ld    B, 2                    ; Inner loop - 2 chars from ROM

      otir                          ; xfer char data
                                    ; 18 clocks between bytes

      pop   BC                      ; Restore outer loop counter
      pop   HL                      ; Restore pointer to row buf
      dec   HL                      ; Move to "next" row buffer pos

      djnz  next_row_char

;---- Finally, the dot points are loaded and shifted, and then the row
;     counter is written to an output register of the display driver
;     board, which also serves to latch in the data to drive that row.

      pop   HL                      ; Restore DP ptr
      ld    A, (HL)                 ; Load DP byte from buffer
#if rev_a_hw
      cpl                           ; Invert for drivers using neg
                                    ; polarity logic, e.g. 74HC595
#endif
      out   (C), A

;---- If the row is to be turned off while dimming is enabled, write
;     row 0 instead of the working row number to the display control
;     register.
;
;     Dimming is enabled by storing some number of 1's in the least
;     significant bit positions of the disp_dim variable. This value
;     is then ANDed with disp_dim_ctr, and when the Z flag is set, the
;     row will be enabled. This allows for a configurable duty cycle
;     down to some small fraction, but realistically, 2 levels of
;     dimming to be provided: 50% and 25% d/c

      ld    HL, disp_dim_ctr        ; Is the display being dimmed?
      ld    A, (disp_dim)
      and   A, (HL)
      ld    A, (disp_cur_row)       ; Default write row counter
      jr    Z, out_disp_ctrl

      xor   A, A                    ; If dimming, this row will be off

out_disp_ctrl
      out   (DISP_CTRL), A

      ex    AF, AF'
      exx

      ei
      reti
#endlocal


;---------------------------------------------------------------------
;     CTC Channel 2 ISR - Task scheduler                             :
;                                                                    :
; Description                                                        :
;     Tasks that are to be run periodically (every ~10ms) will be    :
;     scheduled through this ISR.                                    :
;                                                                    :
;     Additionally, semaphores that permit applications to run will  :
;     be incremented here.                                           :
;                                                                    :
;     The processor is halted once all scheduled tasks have          :
;     completed, so tasks can only start at the next interrupt, and  :
;     only if they are scheduled here.                               :
;---------------------------------------------------------------------
#data RAM
#code ROM
      .align 0x80
ctc_ch2_isr
#local
      ex    AF, AF'
      exx

      ; Schedule periodic tasks
      schedule_task TASK_BUTTON_RD
      schedule_task TASK_WD_POKE
      schedule_task TASK_DISPLAY

      ; Increment semaphores to allow apps to run, but only where an
      ; app owns the foreground mutex. It is important that apps only
      ; run once per ~10ms to allow button acknowledges to be applied
      ; and reduce erratic behaviour.
clock_sem
      mtx_owned foreground_mtx, APP_CLOCK
      jr    Z, configr_sem
      sem_post clock_app_sem

configr_sem
      mtx_owned foreground_mtx, APP_CONFIGR
      jr    Z, done
      sem_post configr_app_sem

done
      ex    AF, AF'
      exx

      ei
      reti
#endlocal

;---------------------------------------------------------------------
;     CTC Channel 3 ISR - Clock display refresh scheduler            :
;                                                                    :
; Description                                                        :
;     The RTC is configured to generate an alarm once per minute     :
;     by asserting its INT/ output. This output is connected to      :
;     channel 3 of the CTC to provide a vectored interrupt for the   :
;     RTC alarm.                                                     :
;                                                                    :
;                                                                    :
;---------------------------------------------------------------------
#data RAM
#code ROM
      .align 0x80
ctc_ch3_isr
#local
      ex    AF, AF'
      exx

;---- Before the clock_upd_sem can be incremented, such an update must
;     have been requested by the clock app. This prevents the
;     semaphore being incremented while not in the clock app.
;
;     Initially when the clock app starts it will read the time from
;     the RTC and use that to configure the display immediately. It
;     will then increment the clock_upd_req_sem semaphore, and wait
;     for the clock_upd_sem semaphore to be updated in turn.
      sem_trywait clock_upd_req_sem
      jr    Z, done

      sem_post clock_upd_sem        ; Increment display update sem

done
      ; Reconfigure things so they can happen again
      in    A, (RTC_FLAGS)          ; Read RTC flags to clear alarm

      ld    A, CTC_CH3_CFG          ; Reconfigure CTC channel to load
      out   (CTC_CH3), A            ; new time constant.
      ld    A, CTC_CH3_TCONST
      out   (CTC_CH3), A

      ex    AF, AF'
      exx

      ei
      reti
#endlocal

; END ctc_isr.s
