CTC_CTL_WORD            .equ  0x1   ; This is a control word
CTC_CTL_SW_RESET        .equ  0x2   ; Perform SW reset on channel
CTC_CTL_TCONST          .equ  0x4   ; Time constant follows
CTC_CTL_CLKTRG_ST       .equ  0x8   ; CLK/TRG pulse starts timer
CTC_CTL_RISE            .equ  0x10  ; CLK/TRG rising edge
CTC_CTL_PS_256          .equ  0x20  ; Prescaler of 256
CTC_CTL_CTR_MODE        .equ  0x40  ; Channel in counter mode
CTC_CTL_INT_EN          .equ  0x80  ; Enable interrupt on this channel

; END ctc.inc
