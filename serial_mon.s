#target ROM

#include "platform.inc"
#include "sio.inc"

DEBUG_PORT              .equ  0xDE

SIO_A_WR1               .equ  0
SIO_A_WR3               .equ  0 | SIO_WR3_RX_8 | SIO_WR3_RX_EN
SIO_A_WR4               .equ  0 | SIO_WR4_1_64_CLK | SIO_WR4_STOP_1
SIO_A_WR5               .equ  0 | SIO_WR5_DTR | SIO_WR5_TX_8 | SIO_WR5_TX_EN

VECTOR_INT_PG           .equ  0x01
SIO_INT_VECT_BASE       .equ  VECTOR_INT_PG << 8 | (SIO_BASE << 2 & 0xFF)


assert_rts .macro
      push  AF
      ld    A, SIO_WR0_REG5
      out   (SIO_A_CTL), A
      ld    A, SIO_A_WR5 | SIO_WR5_RTS
      out   (SIO_A_CTL), A
      pop   AF
      .endm

clear_rts .macro
      push  AF
      ld    A, SIO_WR0_REG5
      out   (SIO_A_CTL), A
      ld    A, SIO_A_WR5
      out   (SIO_A_CTL), A
      pop   AF
      .endm

break .macro val
      ld    A, &val
      out   (DEBUG_PORT), A
      halt
      .endm



#data RAM, 0x7F00, 256

#code ROM, 0, 8192
;---- Restart vectors
      .org 0
      jp    main

      .org 0x66
nmi_vector:
      retn

      .org 0x0100
int_vector_table:
      .ds   256

      .align 0x100
#data RAM

#code ROM
main:
      im    2
      ld    A, VECTOR_INT_PG
      ld    I, A
      di                            ; Interrupts not used in monitor

      ld    SP, RAM_BASE+RAM_SZ     ; Stack starts at top of RAM

;---- Configure SIO Channel A
      ; Channel A reset
      ld    C, SIO_A_CTL
      ld    A, SIO_WR0_CMD_CH_RST
      out   (C), A

      ; Channel B WR1 - Status affects vector bit
      ld    C, SIO_B_CTL
      ld    A, SIO_WR0_REG1
      ld    B, SIO_WR1_STAT_VECT
      out   (C), A
      out   (C), B

      ; Channel B WR2 - Interrupt vector
      ld    A, SIO_WR0_REG2
      ld    B, SIO_INT_VECT_BASE & 0xFF
      out   (C), A
      out   (C), B

      ; Channel A WR4 - parity, async mode, clock rate
      ld    C, SIO_A_CTL
      ld    A, SIO_WR0_REG4 | SIO_WR0_CMD_RST_EXT
      ld    B, SIO_A_WR4
      out   (C), A
      out   (C), B

      ; Channel A WR5 - TX enable, 8 bit, set DTR/, clear RTS/
      ld    A, SIO_WR0_REG5
      ld    B, SIO_A_WR5
      out   (C), A
      out   (C), B

      ; Channel A WR3 - RX enable, 8 bit
      ld    A, SIO_WR0_REG3
      ld    B, SIO_A_WR3
      out   (C), A
      out   (C), B

      ; Channel A WR1
      ld    A, SIO_WR0_REG1 | SIO_WR0_CMD_RST_EXT
      ld    B, SIO_A_WR1
      out   (C), A
      out   (C), B

;----
      ld    A, 0                    ; Zeroise RAM
      ld    BC, RAM_size-2          ; -2 to keep ret addr on stack
      ld    HL, RAM

      call  memset

main_loop:
      call  rx_task

      jr    main_loop


#data RAM
rx_flags:               .db 0       ; Flags for RX task
RX_CMD:                 .equ  0     ; Command currently executing

rx_command:             .db 0       ; Command number that is executing
rx_ctr:                 .db 0       ; Number of bytes RX'd to buffer
rx_BC:                  .dw 0       ; Working copy of BC
rx_HL:                  .dw 0       ; Working copy of HL

      .align 16
rx_buf:                 .ds 16      ; RX buffer

#code ROM
      .align 0x100
rx_task:
#local
      in    A, (SIO_A_CTL)          ; Any chars waiting?
      bit   SIO_RR0_RX_AVAIL, A
      ret   Z                       ; No if Z, return

      in    A, (SIO_A_DATA)         ; Get waiting byte
      ld    B, A                    ; Keep a copy for later

      ; Check for errors
      ld    A, SIO_WR0_REG1         ; Setup RR1
      out   (SIO_A_CTL), A
      in    A, (SIO_A_CTL)          ; Read RR1
      and   A, 0x70                 ; Error bits are mask 01110000
      jr    Z, continue             ; Errors if NZ, otherwise continue

      ld    A, B
      out   (DEBUG_PORT), A         ; Output error conds and halt
      halt

continue:
      ld    A, SIO_WR0_CMD_RTN_INT  ; Return from interrupt
      out   (SIO_A_CTL), A

      ld    A, B
      ld    HL, rx_flags            ; Currently executing a command?
      bit   RX_CMD, (HL)
      jr    Z, new_command          ; No if Z, start new command

      ld    A, (rx_command)         ; Load command number into A

new_command:
      cp    A, 0x03                 ; Load into memory command
      jr    Z, write_cmd
      cp    A, 0x04                 ; Execute
      jr    Z, exec_cmd

      ; Invalid command, reset state
end_command:
      xor   A, A
      ld    (rx_command), A
      ld    HL, rx_flags
      res   RX_CMD, (HL)

      jr    rx_task

start_command:
      ld    (rx_command), A         ; Set command number
      set   RX_CMD, (HL)            ; Set command executing flag
      xor   A, A
      ld    (rx_ctr), A             ; Zeroise buffer counter

      jp    rx_task


write_cmd:
      bit   RX_CMD, (HL)            ; Command executing?
      jr    Z, start_command        ; No if Z, start

      ld    A, (rx_ctr)             ; Received all header bytes?
      cp    A, 0x04
      jr    NZ, write_cmd_hdr_byte  ; No if NZ, store into buffer

      ; Place bytes into memory from here
      ld    A, B                    ; Restore RX'd byte
      ld    BC, (rx_BC)             ; Load working BC and HL
      ld    HL, (rx_HL)

      ld    (HL), A                 ; Store RX'd byte

      dec   BC
      inc   HL

      ld    (rx_BC), BC
      ld    (rx_HL), HL

      ld    A, B                    ; BC == 0?
      or    A, C
      jr    NZ, rx_task             ; No if NZ, more bytes to come

      ld    A, '!'                  ; Send command complete to host
      out   (SIO_A_DATA), A

      jr    end_command

write_cmd_hdr_byte:
      ld    HL, rx_buf              ; Increment HL by rx_ctr
      add   A, L
      ld    L, A

      ld    (HL), B                 ; Store B into (HL)

      ld    HL, rx_ctr              ; Increment rx_ctr
      inc   (HL)
      ld    A, (HL)

      cp    A, 0x04                 ; Received 4 header bytes?
      jr    NZ, rx_task             ; No if NZ

      ld    HL, (rx_buf)            ; Xfer working BC out of rx_buf
      ld    (rx_BC), HL
      ld    HL, (rx_buf+2)          ; Xfer working HL out of rx_buf
      ld    (rx_HL), HL

      jp    rx_task


exec_cmd:
      bit   RX_CMD, (HL)            ; Command executing?
      jr    Z, start_command        ; No if Z, start

      ld    A, (rx_ctr)             ; Increment HL by rx_ctr
      ld    HL, rx_buf
      add   A, L
      ld    L, A

      ld    (HL), B                 ; Store B into (HL)

      ld    HL, rx_ctr              ; Increment rx_ctr
      inc   (HL)
      ld    A, (HL)
      out   (DEBUG_PORT), A

      cp    A, 0x02                 ; Received 2 header bytes?
      jp    NZ, rx_task             ; No if NZ

      ld    HL, (rx_buf)            ; Load HL and jump

      ld    A, '+'                  ; Send command complete to host
      out   (SIO_A_DATA), A

      ld    B, 0
dec_b:
      djnz  dec_b

      jp    (HL)




#endlocal


#code ROM
      .align 0x100

#include "c_lib.s"
