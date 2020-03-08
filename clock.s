#define uart_loading 1

#target ROM
#include "platform.inc"
#include "ctc.inc"

;---- Peripheral addresses
CTC_CH0           .equ  0           ; Address of CTC Ch0
CTC_CH1           .equ  0x01        ; Address of CTC Ch1
CTC_CH2           .equ  0x02        ; Address of CTC Ch2
CTC_CH3           .equ  0x03        ; Address of CTC Ch3

CTC_CH0_CFG       .equ  CTC_CTL_WORD
CTC_CH1_CFG       .equ  CTC_CTL_WORD
CTC_CH2_CFG       .equ  CTC_CTL_INT_EN | CTC_CTL_PS_256 | CTC_CTL_TCONST | CTC_CTL_WORD
CTC_CH3_CFG       .equ  CTC_CTL_WORD

CTC_CH2_TCONST    .equ  FSYS / 256 / 100

DEBUG_PORT        .equ  0xDE

#data RAM, RAM_BASE, RAM_SZ

#code ROM, ROM_BASE, ROM_SZ
;---------------------------------------------------------------------
;                           RESTART VECTORS                          :
;---------------------------------------------------------------------
      .org ROM_BASE
      jp    init

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
      retn

      .org VECTOR_INT_PG<<8
int_vector_table
      .dw   ctc_ch0_isr
      .dw   ctc_ch1_isr
      .dw   ctc_ch2_isr
      .dw   ctc_ch3_isr
      .ds   248, 0

;---------------------------------------------------------------------
;                          APPLICATION CODE                          :
;---------------------------------------------------------------------
      .align 0x100
init
      ld    SP, RAM_BASE+RAM_SZ     ; SP to top of RAM

      ; Configures CTC interrupt vector
      xor   A, A
      out   (CTC_CH0), A

      ; Configures CTC Ch 2 - ~10ms delay for scheduling various tasks
      ld    A, CTC_CH2_CFG
      out   (CTC_CH2), A
      ld    A, CTC_CH2_TCONST
      out   (CTC_CH2), A

      ; Configure and enable Z80 vectored interrupts
      im    2
      ld    A, VECTOR_INT_PG
      ld    I, A
      ei

main
      halt
      jr    main


      .align 0x100
ctc_ch0_isr
      ex    AF, AF'
      exx


      exx
      ex    AF, AF'

      ei
      reti


      .align 0x100
ctc_ch1_isr
      ex    AF, AF'
      exx


      exx
      ex    AF, AF'

      ei
      reti


      .align 0x100
ctc_ch2_isr
      ex    AF, AF'
      exx

      ld    A, R
      out   (DEBUG_PORT), A

      exx
      ex    AF, AF'

      ei
      reti


      .align 0x100
ctc_ch3_isr
      ex    AF, AF'
      exx


      exx
      ex    AF, AF'

      ei
      reti
