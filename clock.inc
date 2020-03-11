;---------------------------------------------------------------------
;                 PERIPHERAL CONFIGURATION & IO PORTS                :
;---------------------------------------------------------------------

; CTC channel addresses
CTC_CH0           .equ  0
CTC_CH1           .equ  0x01
CTC_CH2           .equ  0x02
CTC_CH3           .equ  0x03

; CTC channel configuration
CTC_CH0_CFG       .equ  CTC_CTL_WORD
CTC_CH1_CFG       .equ  CTC_CTL_INT_EN | CTC_CTL_PS_256 | CTC_CTL_TCONST | CTC_CTL_WORD
CTC_CH2_CFG       .equ  CTC_CTL_INT_EN | CTC_CTL_PS_256 | CTC_CTL_TCONST | CTC_CTL_WORD
CTC_CH3_CFG       .equ  CTC_CTL_WORD

CTC_CH1_TCONST    .equ  FSYS / 256 / 1000
CTC_CH2_TCONST    .equ  FSYS / 256 / 100

; Watchdog poke register
WDT_POKE          .equ  0x04

; Buttons and switches
BTN_REG           .equ  0x08        ; Buttons
BTN_UP            .equ  0x01        ;    Up button mask
BTN_DN            .equ  0x02        ;    Down button mask
BTN_ENT           .equ  0x04        ;    Enter button mask
BTN_ESC           .equ  0x08        ;    Escape button mask
BTN_ALL           .equ  0x0F        ;    All buttons mask
BTN_UP_BIT        .equ  0           ;    Up button bit
BTN_DN_BIT        .equ  1           ;    Down button bit
BTN_ENT_BIT       .equ  2           ;    Enter button bit
BTN_ESC_BIT       .equ  3           ;    Escape button bit
SW1_REG           .equ  0x09        ; Switches 1 (timezone 1)
SW2_REG           .equ  0x0A        ; Switches 2 (timezone 2)
SW3_REG           .equ  0x0B        ; Switches 3 (timezone 3)
OUTPUT_REG        .equ  0x0C        ; Outputs, e.g. beeper

; Display registers
DISP_DATA         .equ  0x20        ; Display data register
DISP_CTRL         .equ  0x21        ; Display control register

; SIO channel/register addresses
SIO_BASE          .equ  0xFC
SIO_A_DATA        .equ  SIO_BASE
SIO_B_DATA        .equ  SIO_BASE+1
SIO_A_CTL         .equ  SIO_BASE+2
SIO_B_CTL         .equ  SIO_BASE+3

; SIO channel configuration
SIO_A_WR1               .equ  0
SIO_A_WR3               .equ  SIO_WR3_RX_8 | SIO_WR3_RX_EN
SIO_A_WR4               .equ  SIO_WR4_1_64_CLK | SIO_WR4_STOP_1
SIO_A_WR5               .equ  SIO_WR5_TX_8 | SIO_WR5_TX_EN
SIO_INT_VECT_BASE       .equ  SIO_BASE & 0xF0

;---------------------------------------------------------------------
;                         TASK/APP CONSTANTS                         :
;---------------------------------------------------------------------

; Apps differ from tasks in that tasks can be (de)scheduled, while
; apps are scheduled at boot and dont become descheduled. They share
; common infrastructure, however.

TASK_BUTTON_RD    .equ  1     ; Button reader
TASK_WD_POKE      .equ  2     ; Poke the watchdog
APP_CLOCK         .equ  3     ; Clock application
APP_CONFIGR       .equ  4     ; Configuration application
TASK_SIO_RX       .equ  5     ; SIO data receiver

;---------------------------------------------------------------------
;                           MISCELLANEOUS                            :
;---------------------------------------------------------------------
DEBUG_PORT        .equ  0xDE

;---------------------------------------------------------------------
;                              MACROS                                :
;---------------------------------------------------------------------
schedule_task .macro task_num
      ld    HL, task_sched+&task_num
      ld    (HL), &task_num
      .endm

deschedule_task .macro task_num
      ld    HL, task_sched+&task_num
      ld    (HL), 0
      .endm

run_task .macro task_num, call_label
      ld    HL, task_sched+&task_num
      ld    A, (HL)
      or    A, A
      call  NZ, &call_label
      .endm





set_state .macro sm, state
      ld    A, &state
      ld    (&sm), A
      .endm






;---------------------------------------------------------------------
;     mtx_trylock                                                    :
;                                                                    :
; Description                                                        :
;     Attempts to acquire the mutex pointed to by the mutex          :
;     parameter. If the mutex cannot be immediately acquired         :
;     mtx_trylock will return 0, otherwise the mutex will be         :
;     acquired and a non-zero value will be returned.                :
;                                                                    :
; Parameters                                                         :
;     mutex     Address of mutex to acquire                          :
;     task_num  The task number that wants to acquire the mutex      :
;                                                                    :
; Returns                                                            :
;     0 if lock not acquired                                         :
;     task_num if acquired                                           :
;---------------------------------------------------------------------
mtx_trylock .macro mutex, task_num
      ld    A, (&mutex)             ; Check current mutex owner
      or    A, A
      jr    Z, mtx_trylock_lock     ; If zero, acquire it

      cp    A, &task_num            ; If not zero, do we own it?
      jr    Z, mtx_trylock_done     ; Yes if zero

      xor   A, A                    ; No otherwise, return 0
      jr    mtx_trylock_done

mtx_trylock_lock
      ld    A, &task_num            ; Lock by loading our task num in
      ld    (&mutex), A

mtx_trylock_done
      .endm


;---------------------------------------------------------------------
;     mtx_unlock                                                     :
;                                                                    :
; Description                                                        :
;     Releases a mutual exclusion lock.                              :
;                                                                    :
; Parameters                                                         :
;     mutex     Address of mutex to unlock                           :
;                                                                    :
; Returns                                                            :
;     Nothing                                                        :
;---------------------------------------------------------------------
mtx_unlock .macro mutex
      push  AF
      xor   A, A                    ; Load zero to unlock the mutex
      ld    (&mutex), A
      pop   AF
      .endm



;---------------------------------------------------------------------
;     set_valid_btn_mask                                             :
;                                                                    :
; Description                                                        :
;     Update the valid button mask to a new value.                   :
;                                                                    :
;     Presumably this is done while switching between states in an   :
;     app or task, so to prevent any unacknowledged or very recent   :
;     button presses being immediately acted upon within the new     :
;     state, those button presses are nulled out and made            :
;     acknowledged. Therefore the user will need to release those    :
;     button(s) before they can be re-recognised as new presses.     :
;                                                                    :
; Parameters                                                         :
;     mask  New button mask to apply                                 :
;                                                                    :
; Returns                                                            :
;     Nothing                                                        :
;---------------------------------------------------------------------
set_valid_btn_mask .macro mask
      push  AF

      ld    A, (btn_state)          ; Make all pressed buttons ack'd
      ld    (btn_ack), A

      xor   A, A                    ; Null out existing button presses
      ld    (btn_state), A

      ld    A, &mask
      ld    (btn_valid), A          ; Load new mask

      pop   AF
      .endm


ack_btn .macro button
      push  HL

      ld    HL, btn_ack             ; Ack the button
      set   &button, (HL)

      ld    HL, btn_state           ; Make it appear serviced
      res   &button, (HL)

      pop   HL
      .endm

; END clock.inc
