#data RAM

#code ROM
      .align 0x100
;---------------------------------------------------------------------
;     memcpy                                                         :
;                                                                    :
; Description                                                        :
;     Copy block of memory.                                          :
;                                                                    :
;     Copies the values of BC bytes from the location pointed to by  :
;     HL directly to the memory block pointed to by DE.              :
;                                                                    :
; Parameters                                                         :
;     BC  Number of bytes to copy                                    :
;     DE  Pointer to the destination                                 :
;     HL  Pointer to the source of data to be copied                 :
;                                                                    :
; Returns                                                            :
;     Nothing                                                        :
;                                                                    :
; Destroys                                                           :
;     A                                                              :
;---------------------------------------------------------------------
memcpy:
      ld    A, B                    ; BC == 0?
      or    A, C
      ret   Z                       ; Yes if Z, return

      ldir                          ; while (BC != 0) {
                                    ;   (DE) <- (HL)
                                    ;   DE++, HL++, BC--
                                    ; }
      ret

;---------------------------------------------------------------------
;     strncpy                                                        :
;                                                                    :
; Description                                                        :
;     Copy characters from string.                                   :
;                                                                    :
;     Copies the first BC characters from HL to DE. If the end of    :
;     the source string (which is signaled by a null-character) is   :
;     found before BC characters have been copied, DE is padded with :
;     zeros until a total of BC characters have been written to it.  :
;
;     No null-character is implicitly appended at the end of DE if   ;
;     HL is longer than BC. Thus, in this case, DE shall not be      ;
;     considered a null terminated string.                           ;
;                                                                    :
; Parameters                                                         :
;     BC  Maximum number of characters to be copied                  :
;     DE  Pointer to the destination                                 :
;     HL  String to be copied                                        :
;                                                                    :
; Returns                                                            :
;     Nothing                                                        :
;                                                                    :
; Destroys                                                           :
;     A                                                              :
;---------------------------------------------------------------------
strncpy:
#local
      ld    A, B                    ; BC == 0?
      or    A, C
      ret   Z                       ; Yes if Z, return

      ld    A, (HL)                 ; Load char from source
      cp    A, 0                    ; Is it a zero?
      jr    Z, zero_fill            ; Yes if Z, zero fill from here

      ld    (DE), A                 ; No, store char to dest

      dec   BC                      ; Dec byte count
      inc   DE                      ; Inc dest pointer
      inc   HL                      ; Inc source pointer

      jr    strncpy                 ; Next char

zero_fill:
      xor   A, A                    ; Store 0 into DE
      ld    (DE), A

      dec   BC                      ; Dec byte count
      inc   DE                      ; Inc dest pointer

      ld    A, B                    ; BC == 0?
      or    A, C
      jr    NZ, zero_fill           ; No if NZ, fill next char

      ret
#endlocal

;---------------------------------------------------------------------
;     memset                                                         :
;                                                                    :
; Description                                                        :
;     Fill block of memory.                                          :
;                                                                    :
;     Sets the first BC bytes of the block of memory pointed by HL   :
;     to the specified value in A.                                   :
;                                                                    :
; Parameters                                                         :
;     A   Value to be set                                            :
;     BC  Number of bytes to be set to the value of A                :
;     HL  Pointer to the block of memory to fill                     :
;                                                                    :
; Returns                                                            :
;     Nothing                                                        :
;                                                                    :
; Destroys                                                           :
;     D                                                              :
;---------------------------------------------------------------------
memset:
#local
      ld    D, A

next:
      ld    A, B                    ; BC == 0?
      or    A, C
      ret   Z                       ; Yes if Z, return

      ld    (HL), D                 ; Set

      dec   BC                      ; Dec byte count
      inc   HL                      ; Inc dest pointer

      jr    next
#endlocal
