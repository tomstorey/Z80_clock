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

#code ROM
      .align 0x100
ctc_ch1_isr
#local
      ex    AF, AF'
      exx

;---- First thing to do is to determine the current row being worked
;     on. At boot, memory is zeroised, so incrementing early means
;     row 1 is the starting row. Each iteration the counter is inc'd
;     and once it reaches 4 it is reset back to 1 directly.

      ld    HL, disp_cur_row        ; Increment row counter
      inc   (HL)
      ld    A, (HL)
      cp    A, 4                    ; If at row 4, go back to 1
      jr    NZ, row_offset

      ld    A, 1                    ; Reset row counter to 1
      ld    (HL), A

;---- Once the working row is determined, the next step is to compute
;     an offset for the address where that rows buffer is located in
;     RAM. Start by loading the address of row 1's buffer, and then
;     subtract 1 from the current row counter. Each row is then a
;     multiple of 8 from that address (achieved with a couple of left
;     shifts), skipping 0 of course.
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
      sub   A, 1                    ; Subtract 1 from row counter
      ld    C, A                    ; Save copy of A

      ld    HL, display_dp1         ; Ptr to DP buffer for this row

      ld    A, C                    ; Restore copy of A
      or    A, A                    ; If row ctr == 0, skip offset adj
      jr    Z, row_offset_add

      ld    B, A                    ; Row counter becomes loop counter
      ld    A, 4                    ; Offset start value

shift_offset
      sla   A                       ; Shift for each row to offset
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
      xor   A, 0xFF                 ; Invert for drivers that sink
      out   (C), A

      ld    A, (disp_cur_row)       ; Write row counter to latch new
      out   (DISP_CTRL), A          ; data into display drivers.

      exx
      ex    AF, AF'

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
;     The processor is halted once all scheduled tasks have          :
;     completed, so tasks can only start at the next interrupt, and  :
;     only if they are scheduled here.                               :
;---------------------------------------------------------------------
#data RAM
#code ROM
      .align 0x100
ctc_ch2_isr
      ex    AF, AF'
      exx

      ; Schedule periodic tasks
      schedule_task TASK_BUTTON_RD
      schedule_task TASK_WD_POKE
      schedule_task TASK_SIO_RX

      exx
      ex    AF, AF'

      ei
      reti


#data RAM
#code ROM
      .align 0x100
ctc_ch3_isr
      ei
      reti

; END ctc_isr.s
