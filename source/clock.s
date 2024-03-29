; Uncomment the below line if you are using the serial bootloader to
; load code and execute from RAM. Adjustments will be made to assemble
; the code appropriately for execution from RAM, as defined in the
; platform.inc file.
; #define serial_loading 1

; Revision A hardware used 74HC595 shift registers for the LED driver
; board. These were replaced with TLC5916 LED drivers in the Rev B
; LED driver board. If you have built Rev A hardware, set the
; following flag to 1.
#define rev_a_hw 0

; Adjust the following setting accordingly, if you would like to build
; a unified ROM image containing application code, TZ ROM and char ROM
; in a single image, instead of individually.
;
;  0 = build only application code
;  1 = build unified image
#define unified_image 0

#target ROM
#include "platform.inc"
#include "ctc.inc"
#include "rtc.inc"
#include "clock.inc"

#data RAM, RAM_BASE, RAM_SZ-256
#data _INITIALIZED, *, 256
#code ROM, ROM_BASE, ROM_SZ-256
#code _INITIALIZER, *, 256

#code ROM
;---------------------------------------------------------------------
;                           RESTART VECTORS                          :
;---------------------------------------------------------------------
      .org ROM_BASE
      jp    proc_test

      .org ROM_BASE+0x8             ; RST1
      halt

      .org ROM_BASE+0x10            ; RST2
      halt

      .org ROM_BASE+0x18            ; RST3
      halt

      .org ROM_BASE+0x20            ; RST4
      halt

      .org ROM_BASE+0x28            ; RST5
      halt

      .org ROM_BASE+0x30            ; RST6
      halt

      .org ROM_BASE+0x38            ; RST7
      halt


;---------------------------------------------------------------------
;                          INTERRUPT VECTORS                         :
;---------------------------------------------------------------------
      .org ROM_BASE+0x66
nmi_vector
      halt

      .org VECTOR_INT_PG<<8
int_vector_table
      .dw   ctc_ch0_isr
      .dw   ctc_ch1_isr
      .dw   ctc_ch2_isr
      .dw   ctc_ch3_isr


;---------------------------------------------------------------------
;     Z80 Processor Test                                             :
;                                                                    :
; Description                                                        :
;     Verify Z80 flags, registers (except IX/IY) and conditional     :
;     jumps, including all shadow register pairs.                    :
;                                                                    :
;     Adapted from IBM 5150 BIOS.                                    :
;---------------------------------------------------------------------
      .align 0x100
proc_test
#local
      di                            ; Ensure interrupts disabled

;---- First tests for normal flags register
next_regs
      xor   A, A
      jr    C, proc_test_err        ; Carry should be clear
      jp    PO, proc_test_err       ; Parity should be even
      jr    NZ, proc_test_err       ; Result should be zero
      jp    M, proc_test_err        ; Result should be positive

      sub   A, 1
      jr    NC, proc_test_err       ; Carry should be set
      jp    PE, proc_test_err       ; Parity should be odd
      jr    Z, proc_test_err        ; Result should be non-zero
      jp    P, proc_test_err        ; Result should be negative

      ld    A, 0x01
      srl   A
      jr    NC, proc_test_err       ; Carry should be set
      jr    NZ, proc_test_err       ; Result should be zero

      rl    A
      jr    C, proc_test_err        ; Carry should be clear
      jr    Z, proc_test_err        ; Result should be non-zero

;---- Repeat tests for shadow flags register
      ex    AF, AF'
      xor   A, A
      jr    C, proc_test_err        ; Carry should be clear
      jp    PO, proc_test_err       ; Parity should be even
      jr    NZ, proc_test_err       ; Result should be zero
      jp    M, proc_test_err        ; Result should be positive

      sub   A, 1
      jr    NC, proc_test_err       ; Carry should be set
      jp    PE, proc_test_err       ; Parity should be odd
      jr    Z, proc_test_err        ; Result should be non-zero
      jp    P, proc_test_err        ; Result should be negative

      ld    A, 0x01
      srl   A
      jr    NC, proc_test_err       ; Carry should be set
      jr    NZ, proc_test_err       ; Result should be zero

      rl    A
      jr    C, proc_test_err        ; Carry should be clear
      jr    Z, proc_test_err        ; Result should be non-zero

;---- Load a test pattern through all registers
      ld    A, 0xFF                 ; Setup one's pattern in A
      scf

      ld    I, A                    ; Write pattern through all regs
      ld    A, I

write_pattern
      ld    L, A
      ld    H, L
      ld    E, H
      ld    D, E
      ld    C, D
      ld    B, C
      ld    A, B
      exx
      ld    L, A
      ld    H, L
      ld    E, H
      ld    D, E
      ld    C, D
      ld    B, C
      jr    NC, proc_test_done
      ex    AF, AF'
      ld    A, B
      xor   A, 0xFF                 ; Pattern make it through all regs
      jr    NZ, proc_test_err       ; If no, go to error
      jr    write_pattern

proc_test_done
      or    A, A                    ; Resulting pattern is zero?
      jp    NZ, proc_test_err       ; If no, go to error

      ld    SP, 0                   ; Test all zeroes in SP
      add   HL, SP
      ld    A, H
      or    A, L
      jr    NZ, proc_test_err

      ld    SP, 0xFFFF              ; Test all ones in SP
      add   HL, SP
      ld    A, H
      xor   A, L
      jr    NZ, proc_test_err

      jp    mem_test

proc_test_err
      halt                          ; Halt on error
#endlocal


;---------------------------------------------------------------------
;     RAM Test                                                       :
;                                                                    :
; Description                                                        :
;     Performs a read/write storage test on RAM address space as     :
;     defined by RAM_BASE and RAM_SZ variables.                      :
;                                                                    :
;     Writes a series of patterns (0xAA, 0x55, 0xFF, 0x01 and 0x00)  :
;     and reads them back to check for errors.                       :
;                                                                    :
;     !!! DESTROYS CONTENTS OF ENTIRE MEMORY BLOCK !!!               :
;---------------------------------------------------------------------
mem_test
#local
      exx
      ld    HL, mem_test_patterns   ; Shadow HL holds ptr to patterns
      exx

      ld    B, 5                    ; B holds outer loop (pattern) ctr

mem_test_next
      ld    HL, RAM_BASE            ; Pointer to start of RAM
      ld    DE, RAM_SZ              ; Inner loop counter (size of RAM)

      exx
      ld    A, (HL)                 ; Get test pattern for this round
      inc   HL                      ; Inc pointer to next test pattern
      exx

mem_test_loop
      ld    (HL), A                 ; Store pattern in memory
      xor   A, (HL)                 ; XOR pattern out of memory
      jr    NZ, mem_test_err        ; If not zero, error

      inc   HL                      ; Inc pointer to next memory loc
      dec   DE                      ; Dec inner loop

      ld    A, D                    ; Inner loop counter at zero?
      or    A, E
      jr    NZ, mem_test_loop       ; No if NZ, next memory loc

      djnz  mem_test_next           ; Loop for next pattern

      jp    init                    ; All tests complete, init

mem_test_err
      halt                          ; Halt on error

mem_test_patterns       .dm   0xAA, 0x55, 0xFF, 0x01, 0
#endlocal


;---------------------------------------------------------------------
;                          APPLICATION CODE                          :
;---------------------------------------------------------------------
#data RAM
; Mutexes
foreground_mtx          .db 0       ; Which task owns the foreground.
                                    ; The foreground task can read
                                    ; buttons and update display row
                                    ; data.

; Semaphores
clock_app_sem           .db 0
configr_app_sem         .db 0
clock_upd_req_sem       .db 0
clock_upd_sem           .db 0

      .align 0x10
task_sched              .ds 16      ; Each byte corresponds to one app
                                    ; or task. A non-zero value
                                    ; indicates the app/task is
                                    ; scheduled to run.

; Display row/dot point buffers - keep each block contiguous!
      .align 0x8
display_row1            .ds 8       ; Working buffers.
display_row2            .ds 8       ; Display rows will be refreshed
display_row3            .ds 8       ; using the data held in these
display_dp1             .db 0       ; buffers.
display_dp2             .db 0
display_dp3             .db 0

      .align 0x8
staging_row1            .ds 8       ; Staging buffers.
staging_row2            .ds 8       ; New data to be displayed can be
staging_row3            .ds 8       ; staged in these buffers, then
staging_dp1             .db 0       ; copied to the working buffers
staging_dp2             .db 0       ; when ready for display.
staging_dp3             .db 0

#code ROM
      .align 0x100
init

      ld    SP, RAM_end             ; SP to top of RAM, below init'd

      ld    BC, _INITIALIZER_size   ; Copy initialised RAM from ROM
      ld    DE, _INITIALIZED
      ld    HL, _INITIALIZER
      call  memcpy

      xor   A, A
      out   (DEBUG_PORT), A         ; Clear debug port display

      ; Zeroise RAM, -2 to save return addr on stack
      ld    BC, RAM_size-2
      ld    HL, RAM_BASE
      call  memset

;---- Configure CTC channels

      ; Configures CTC interrupt vector
      xor   A, A
      out   (CTC_CH0), A

      ; Configures CTC Ch 1 - ~1ms delay for display refresh
      ld    A, CTC_CH1_CFG
      out   (CTC_CH1), A
      ld    A, CTC_CH1_TCONST
      out   (CTC_CH1), A

      ; Configures CTC Ch 2 - ~10ms delay for scheduling various tasks
      ld    A, CTC_CH2_CFG
      out   (CTC_CH2), A
      ld    A, CTC_CH2_TCONST
      out   (CTC_CH2), A

      ; Configures CTC Ch 3 as downcounter for RTC interrupt
      ld    A, CTC_CH3_CFG
      out   (CTC_CH3), A
      ld    A, CTC_CH3_TCONST
      out   (CTC_CH3), A

;---- Configure the RTC
      ld    A, RTC_RATES_CFG        ; WD and periodic int rates
      out   (RTC_RATES), A
      ld    A, RTC_INTS_CFG         ; Interrupt enables
      out   (RTC_INTS), A
      ld    A, RTC_CTRL_CFG         ; Control flags
      out   (RTC_CTRL), A

      xor   A, A                    ; Configure alarm to occur each
      out    (RTC_SEC_ALM), A       ; minute at 0 seconds.
      ld    A, RTC_ALM_CFG
      out    (RTC_MIN_ALM), A
      out    (RTC_HRS_ALM), A
      out    (RTC_DAY_ALM), A

      in    A, (RTC_FLAGS)          ; Read RTC flags to clear them

      ; Configure and enable Z80 vectored interrupts
      im    2
      ld    A, VECTOR_INT_PG
      ld    I, A
      ei

      jp    main

;---- Main application loop
;     Runs all scheduled tasks and applications.
      .align 0x100
main
;---- Schedule applications to run
      schedule_task APP_CLOCK
      schedule_task APP_CONFIGR

;---- Allow the clock to run immediately to populate display
;     staging buffers
      sem_post clock_app_sem

main_loop
      ; Inputs
      run_task TASK_BUTTON_RD, button_rd_task

      ; Applications
      run_task APP_CLOCK, clock_app
      run_task APP_CONFIGR, configr_app

      ; Outputs
      run_task TASK_DISPLAY, display_task

      ; Other
      run_task TASK_WD_POKE, wd_poke_task

      halt

      jr    main_loop


;---------------------------------------------------------------------
;     Button Reader Task                                             :
;                                                                    :
; Description                                                        :
;     Read in the state of any pressed buttons to provide input to   :
;     any task that is interested.                                   :
;                                                                    :
;     Reads the button input register, masks out invalid buttons,    :
;     masks out button presses that have already been acknowledged,  :
;     debounces new button presses, and sets flags for newly         :
;     registered button presses.                                     :
;---------------------------------------------------------------------
#data RAM
btn_valid               .db 0       ; Valid button mask
btn_ack                 .db 0       ; Acknowledged button presses
btn_state               .db 0       ; Serviceable buttons!
btn_debounce            .db 0       ; Buttons presses being debounced
btn_flags               .db 0       ; Button reader task flags

#code ROM
      .align 0x100
button_rd_task
#local
      ld    A, 0x01                 ; For extra button debouncing,
      ld    HL, btn_flags           ; only run task every other time.
      xor   A, (HL)                 ; Invert bit 0 of flags and test
      bit   0, (HL)
      jr    NZ, done                ; If bit is 0, run task

      in    A, (BTN_REG)            ; Read in button state
      cpl                           ; Buttons pull down, make positive

      ld    HL, btn_valid           ; Mask out invalid buttons
      and   A, (HL)
      ld    B, A                    ; B is valid buttons only

      ld    HL, btn_ack             ; Make mask to hide serviced btns
      and   A, (HL)
      ld    C, A                    ; C is mask

      xor   A, B                    ; Remove svcd btns, leave unsvcd
      ld    B, A                    ; B is now unserviced buttons only
      or    A, C                    ; Make mask to clear old ACKs

      and   A, (HL)                 ; Clear ACKs from released btns
      ld    (HL), A

      ld    HL, btn_debounce        ; De-bounce button presses
      ld    A, (HL)
      and   A, B
      ld    (btn_state), A
      ld    (HL), B

done
      deschedule_task TASK_BUTTON_RD

      ret
#endlocal


;---------------------------------------------------------------------
;     Display update task                                            :
;                                                                    :
; Description                                                        :
;     Applications write only to the staging display buffers, but    :
;     the ISR that updates the physical displays takes its input     :
;     from the working display buffers.                              :
;                                                                    :
;     This task implements a display update effect which mimicks the :
;     displays of the DSKY, part of the Apollo Guidance Computer,    :
;     whereby the contents of the displays appear to transition      :
;     slowly.                                                        :
;---------------------------------------------------------------------
#data RAM
display_ctr             .db 0       ; Counter for current character
display_status          .db 0       ; Display updater status register
display_syncd           .db 0       ; If zero, working == staging
display_effect          .db 0       ; Display update effect:
                                    ; LSb 0: DSKY effect
                                    ; Anything else, no effect

#code ROM
      .align 0x100
display_task
#local
      ld    A, (display_effect)
      bit   0, A
      jr    NZ, dsky_effect

      ; No effect - copy the staging buffers to working buffers
      ld    BC, 27
      ld    DE, display_row1
      ld    HL, staging_row1
      call  memcpy

      jr    done

dsky_effect
      ld    HL, display_status      ; Skip every other iteration
      ld    A, (HL)
      xor   A, 0x01
      ld    (HL), A
      bit   0, A
      jr    NZ, done

      xor   A, A
      ld    D, A

      ld    A, (display_ctr)        ; Load display position counter
      ld    E, A                    ; DE is offset

      ld    HL, staging_row1        ; Source pointer
      add   HL, DE
      push  HL                      ; Save for later

      ld    HL, display_row1        ; Destination pointer
      add   HL, DE
      ex    DE, HL                  ; Restore source pointer
      pop   HL

      ld    A, (HL)
      ld    (DE), A

      ld    HL, display_ctr         ; Increment display position ctr
      inc   (HL)
      ld    A, (HL)
      cp    A, 27                   ; Overflowed to 27?
      jr    NZ, done

      xor   A, A                    ; Yes, reset back to zero
      ld    (HL), A

done
      deschedule_task TASK_DISPLAY

      ret
#endlocal


;---------------------------------------------------------------------
;     Watchdog Poke Task                                             :
;                                                                    :
; Description                                                        :
;     The watchdog, contained in the RTC, should be poked every so   :
;     often to prevent it from asserting the RST/ signal and causing :
;     a processor reset.                                             :
;                                                                    :
;     This is achieved very simply by issuing an IO read or write to :
;     the watchdog peripheral address.                               :
;---------------------------------------------------------------------
#data RAM
#code ROM
      .align 0x100
wd_poke_task
#local
      out   (WDT_POKE), A

      deschedule_task TASK_WD_POKE

      ret
#endlocal


#include "clock_app.s"
#include "configr_app.s"
#include "ctc_isr.s"
#include "c_lib.s"

#if unified_image == 1
      .org TZ_ROM_BASE

#include "tz_rom.s"

      .org CHAR_ROM_BASE

#include "char_rom.s"

#endif

      .end
