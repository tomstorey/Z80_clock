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
CTC_CH3_CFG       .equ  CTC_CTL_INT_EN | CTC_CTL_CTR_MODE | CTC_CTL_TCONST | CTC_CTL_WORD

CTC_CH1_TCONST    .equ  FSYS / 256 / 1000
CTC_CH2_TCONST    .equ  FSYS / 256 / 100
CTC_CH3_TCONST    .equ  0x01

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

; RTC register addresses
RTC_SEC           .equ  0x10
RTC_SEC_ALM       .equ  0x11
RTC_MIN           .equ  0x12
RTC_MIN_ALM       .equ  0x13
RTC_HRS           .equ  0x14
RTC_HRS_ALM       .equ  0x15
RTC_DAY           .equ  0x16
RTC_DAY_ALM       .equ  0x17
RTC_DOW           .equ  0x18
RTC_MON           .equ  0x19
RTC_YEAR          .equ  0x1A
RTC_RATES         .equ  0x1B
RTC_INTS          .equ  0x1C
RTC_FLAGS         .equ  0x1D
RTC_CTRL          .equ  0x1E

RTC_ALM_CFG       .equ  RTC_ALM_ALM1 | RTC_ALM_ALM0
RTC_RATES_CFG     .equ  RTC_WD_1_5SEC | RTC_RS_NONE
RTC_INTS_CFG      .equ  RTC_INT_AIE
RTC_CTRL_CFG      .equ  RTC_CTRL_RUN_BAT | RTC_CTRL_24HR

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

TASK_BUTTON_RD          .equ  1     ; Button reader
TASK_WD_POKE            .equ  2     ; Poke the watchdog
APP_CLOCK               .equ  3     ; Clock application
APP_CONFIGR             .equ  4     ; Configuration application
TASK_SIO_RX             .equ  5     ; SIO data receiver

;---------------------------------------------------------------------
;                           MISCELLANEOUS                            :
;---------------------------------------------------------------------
DEBUG_PORT              .equ  0xDE

CONFIGR_APP_START       .equ  0
CONFIGR_MAIN_MENU       .equ  0x01
CONFIGR_ADJUST_TIME     .equ  0x02
CONFIGR_HOURS_MSG       .equ  0x03
CONFIGR_ADJUST_HOURS    .equ  0x04
CONFIGR_MINUTES_MSG     .equ  0x05
CONFIGR_ADJUST_MINS     .equ  0x06
CONFIGR_APPLY_TIME      .equ  0x07
CONFIGR_ADJUST_DATE     .equ  0x08
CONFIGR_YEAR_MSG        .equ  0x09
CONFIGR_ADJUST_YEAR     .equ  0x0A
CONFIGR_MONTH_MSG       .equ  0x0B
CONFIGR_ADJUST_MONTH    .equ  0x0C
CONFIGR_DAY_MSG         .equ  0x0D
CONFIGR_ADJUST_DAY      .equ  0x0E
CONFIGR_DOW_MSG         .equ  0x0F
CONFIGR_ADJUST_DOW      .equ  0x10
CONFIGR_APPLY_DATE      .equ  0x11
CONFIGR_EXIT            .equ  0x12

;---------------------------------------------------------------------
;                              MACROS                                :
;---------------------------------------------------------------------
schedule_task .macro task_num
      push  HL

      ld    HL, task_sched+&task_num
      ld    (HL), &task_num

      pop   HL
      .endm

deschedule_task .macro task_num
      push  HL

      ld    HL, task_sched+&task_num
      ld    (HL), 0

      pop   HL
      .endm

run_task .macro task_num, call_label
      ld    HL, task_sched+&task_num
      ld    A, (HL)
      or    A, A

      call  NZ, &call_label
      .endm





set_state .macro sm, state
      push  AF

      ld    A, &state
      ld    (&sm), A

      pop   AF
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
;     Interrupt safe: interrupts are disabled throughout the         :
;                     critical code path, and restored to original   :
;                     state upon completion.                         :
;                                                                    :
; Parameters                                                         :
;     mutex     Address of mutex to acquire                          :
;     task_num  The task number that wants to acquire the mutex      :
;                                                                    :
; Returns                                                            :
;     A  0 if lock not acquired, or task_num if acquired             :
;     F  Z flag is set or cleared based on value of A                :
;---------------------------------------------------------------------
mtx_trylock .macro mutex, task_num
      push  HL

      ld    A, I                    ; IFF2 to P/V flag
      push  AF                      ; Save flags
      di                            ; Ensure interrupts disabled

      ld    HL, &mutex
      ld    A, (HL)                 ; Check current mutex owner
      or    A, A
      jr    Z, $+9                  ; If zero, acquire it

      cp    A, &task_num            ; If not zero, do we own it?
      jr    Z, $+8                  ; Yes if Z, return mutex value

      xor   A, A                    ; No otherwise, return 0
      jr    $+5                     ; Go to done

      ld    A, &task_num            ; Acquire by loading task_num into
      ld    (HL), A                 ; mutex

      pop   HL                      ; F into L
      bit   2, L                    ; Test IFF2 flag
      jr    Z, $+3                  ; If IFF2 was not set, go to done
      ei                            ; Re-enable interrupts

      pop   HL                      ; Done

      or    A, A                    ; Set Z flag according to A
      .endm


;---------------------------------------------------------------------
;     mtx_unlock                                                     :
;                                                                    :
; Description                                                        :
;     Releases a mutual exclusion lock.                              :
;                                                                    :
;     Interrupt safe: interrupts are disabled throughout the         :
;                     critical code path, and restored to original   :
;                     state upon completion.                         :
;                                                                    :
; Parameters                                                         :
;     mutex     Address of mutex to unlock                           :
;                                                                    :
; Returns                                                            :
;     Nothing                                                        :
;---------------------------------------------------------------------
mtx_unlock .macro mutex
      push  AF
      push  HL

      ld    A, I                    ; IFF2 to P/V flag
      push  AF                      ; Save flags
      di                            ; Ensure interrupts disabled

      xor   A, A                    ; Load zero to unlock the mutex
      ld    (&mutex), A

      pop   HL                      ; F into L
      bit   2, L                    ; Test IFF2 flag
      jr    Z, $+3                  ; If IFF2 was not set, go to done
      ei                            ; Re-enable interrupts

      pop   HL                      ; Done
      pop   AF
      .endm


;---------------------------------------------------------------------
;     sem_post                                                       :
;                                                                    :
; Description                                                        :
;     Increment (unlock) a semaphore.                                :
;                                                                    :
;     Interrupt safe: interrupts are disabled throughout the         :
;                     critical code path, and restored to original   :
;                     state upon completion.                         :
;                                                                    :
; Parameters                                                         :
;     sem       Address of semaphore to increment (unlock)           :
;                                                                    :
; Returns                                                            :
;     Nothing                                                        :
;---------------------------------------------------------------------
sem_post .macro sem
      push  AF
      push  HL

      ld    A, I                    ; IFF2 to P/V flag
      push  AF                      ; Save flags
      di                            ; Ensure interrupts disabled

      ld    HL, &sem
      inc   (HL)

      pop   HL                      ; F into L
      bit   2, L                    ; Test IFF2 flag
      jr    Z, $+3                  ; If IFF2 was not set, go to done
      ei                            ; Re-enable interrupts

      pop   HL
      pop   AF
      .endm


;---------------------------------------------------------------------
;     sem_trywait                                                    :
;                                                                    :
; Description                                                        :
;     sem_trywait decrements (locks) the semaphore only if the value :
;     is non-zero. Otherwise, the semaphore is not decremented and   :
;     an error (0) is returned.                                      :
;                                                                    :
;     Interrupt safe: interrupts are disabled throughout the         :
;                     critical code path, and restored to original   :
;                     state upon completion.                         :
;                                                                    :
; Parameters                                                         :
;     sem       Address of semaphore to increment (unlock)           :
;                                                                    :
; Returns                                                            :
;     A  0 if semaphore locked, or semaphore value pre-decrement     :
;     F  Z flag is set or cleared based on value of A                :
;---------------------------------------------------------------------
sem_trywait .macro sem
      push  HL

      ld    A, I                    ; IFF2 to P/V flag
      push  AF                      ; Save flags
      di                            ; Ensure interrupts disabled

      ld    HL, &sem
      ld    A, (HL)                 ; Load semaphore value for return
      or    A, A                    ; Semaphore value greater than 0?
      jr    Z, $+3                  ; If Z, return 0, go to done

      dec   (HL)                    ; Decrement semaphore

      pop   HL                      ; F into L
      bit   2, L                    ; Test IFF2 flag
      jr    Z, $+3                  ; If IFF2 was not set, go to done
      ei                            ; Re-enable interrupts

      pop   HL                      ; Done

      or    A, A                    ; Set Z flag according to A
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

      ld    A, (btn_state)          ; Make all pressed buttons ack'd,
      cp    A, 0                    ; but only if there are recognised
      jr    Z, $+5                  ; button presses.
      ld    (btn_ack), A

      ld    A, &mask
      ld    (btn_valid), A          ; Load new mask

      pop   AF
      .endm


ack_btn .macro button
      push  HL

      ld    HL, btn_ack             ; Ack the button
      set   &button, (HL)

      pop   HL
      .endm


rtc_update_lock .macro
      push  AF

      ld    A, RTC_CTRL_UTI | RTC_CTRL_CFG
      out   (RTC_CTRL), A

      pop   AF
      .endm


rtc_update_unlock .macro
      push  AF

      ld    A, RTC_CTRL_CFG
      out   (RTC_CTRL), A

      pop   AF
      .endm



;---------------------------------------------------------------------
;     get_jp_table_entry                                             :
;                                                                    :
; Description                                                        :
;     Using A as an index, return the value of a double word from    :
;     the supplied table to be used as an address to perform a jump. :
;                                                                    :
;     The value of A is doubled and added to the supplied table      :
;     address.                                                       :
;                                                                    :
; Parameters                                                         :
;     table  Address of the table to return entry from               :
;                                                                    :
; Returns                                                            :
;     HL  Address at index in jump table                             :
;---------------------------------------------------------------------
get_jp_table_entry .macro table
      push DE

      ld    D, 0
      ld    E, A
      sla   E
      rl    D
      ld    HL, &table              ; HL = pointer to jump table
      add   HL, DE                  ; Add offset to pointer
      ld    E, (HL)
      inc   HL
      ld    D, (HL)
      ex    DE, HL

      pop   DE
      .endm

; END clock.inc