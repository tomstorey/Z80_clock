#target ROM
#code ROM, 0, 8192
      .org 0
;---- Entry 0
;     This entry is reserved for blanking display lines
      .db 0xFF

;---- Entry 1: UTC ---------------------------------------------------
;     UTC has no offset, and does not observe DST - its not really
;     even a timezone as such. But it is the base time that all other
;     timezones in the clock are derived.
      .align 0x20
      .db %00000001     ; The first byte is the entry descriptor. All
                        ; ones indicates an empty entry, otherwise a
                        ; single bit position describes the entry
                        ; type:
                        ;  MSb 7:
                        ;      6:
                        ;      5:
                        ;      4:
                        ;      3:
                        ;      2:
                        ;      1:
                        ;  LSb 0: Timezone

      .text "UTC", 0    ; 3 char, null terminated string displayed at
                        ; start of row.

      .db 0x00          ; Std time mins offset from UTC (BCD)
      .db 0x00          ; Std time hours offset from UTC (BCD)
                        ; Negative offsets: e.g. 0x95 is -5

      .db 0x00          ; DST start month (BCD)
      .db 0x00          ; DST start day of month (BCD)
      .db 0x00          ; DST start hour (BCD)
      .db %00000000     ; DST start options:
                        ;   MSb 7:
                        ;       6:
                        ;       5:
                        ;       4:
                        ;       3:
                        ;       2: Second sunday of month
                        ;       1: Last sunday of month
                        ;   LSb 0: First sunday of month

      .db 0x00          ; DST end month (BCD)
      .db 0x00          ; DST end day of month (BCD)
      .db 0x00          ; DST end hour (BCD)
      .db %00000000     ; DST end options:
                        ;   MSb 7:
                        ;       6:
                        ;       5:
                        ;       4:
                        ;       3:
                        ;       2:
                        ;       1: Last sunday of month
                        ;   LSb 0: First sunday of month

;---- Entry 2: London timezone ---------------------------------------
      .align 0x20
      .db %00000001

      .text "LON", 0

      .db 0x00
      .db 0x00

      .db 0x03
      .db 0x00
      .db 0x01
      .db %00000010

      .db 0x10
      .db 0x00
      .db 0x02
      .db %00000010

;---- Entry 3: Sydney timezone ---------------------------------------
      .align 0x20
      .db %00000001

      .text "SYD", 0

      .db 0x00
      .db 0x10

      .db 0x10
      .db 0x00
      .db 0x02
      .db %00000001

      .db 0x04
      .db 0x00
      .db 0x03
      .db %00000001

;---- Entry 4: Los Angeles timezone ----------------------------------
      .align 0x20
      .db %00000001

      .text "LAX", 0

      .db 0x00
      .db 0x92

      .db 0x03
      .db 0x00
      .db 0x02
      .db %00000100

      .db 0x11
      .db 0x00
      .db 0x02
      .db %00000001
