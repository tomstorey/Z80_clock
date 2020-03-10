;---- Oscillator frequencies (in Hz)
;     * FSYS is the primary system oscillator which drives the CPU.
;     * FCTC is a secondary oscillator external to the CTC which can
;       be prescaled and is fed in to the TRG1 input.
;     * FUART is the frequency fed into the SIO clock inputs for baud
;       rate generation.
FSYS                    .equ  6000000
FCTC                    .equ  4096000
FUART                   .equ  7372800

;---- Memory sizes (in bytes)
;     Define the start (base) and size of ROMs and RAM.
#if defined(serial_loading)
ROM_BASE                .equ  0x6000
ROM_SZ                  .equ  6144

RAM_BASE                .equ  0x7800
RAM_SZ                  .equ  1792
#else
ROM_BASE                .equ  0
ROM_SZ                  .equ  24576

RAM_BASE                .equ  0x6000
RAM_SZ                  .equ  8192
#endif

TZ_ROM_BASE             .equ  0xC000
TZ_ROM_SZ               .equ  8192

CHAR_ROM_BASE           .equ  0xE000
CHAR_ROM_SZ             .equ  8192

;---- Vector interrupt page number
;     Forms the most significant byte of the interrupt vector address
;     for Mode 2 interrupts.
VECTOR_INT_PG           .equ  (ROM_BASE+0x100)>>8

; END platform.inc
