RTC_ALM_ALM0            .equ  0x40
RTC_ALM_ALM1            .equ  0x80

RTC_RS_NONE             .equ  0
RTC_RS_30_5175US        .equ  0x01 << 4
RTC_RS_61_035US         .equ  0x02 << 4
RTC_RS_122_070US        .equ  0x03 << 4
RTC_RS_244_141US        .equ  0x04 << 4
RTC_RS_488_281US        .equ  0x05 << 4
RTC_RS_976_5625US       .equ  0x06 << 4
RTC_RS_1_95315MS        .equ  0x07 << 4
RTC_RS_3_90625MS        .equ  0x08 << 4
RTC_RS_7_8125MS         .equ  0x09 << 4
RTC_RS_15_625MS         .equ  0x0A << 4
RTC_RS_31_25MS          .equ  0x0B << 4
RTC_RS_62_5MS           .equ  0x0C << 4
RTC_RS_125MS            .equ  0x0D << 4
RTC_RS_250MS            .equ  0x0E << 4
RTC_RS_500MS            .equ  0x0F << 4

RTC_WD_1_5SEC           .equ  0
RTC_WD_23_4375MS        .equ  0x01 << 4
RTC_WD_46_875MS         .equ  0x02 << 4
RTC_WD_93_75MS          .equ  0x03 << 4
RTC_WD_187_5MS          .equ  0x04 << 4
RTC_WD_375MS            .equ  0x05 << 4
RTC_WD_750MS            .equ  0x06 << 4
RTC_WD_3S               .equ  0x07 << 4

RTC_INT_ABE             .equ  0x01
RTC_INT_PWRIE           .equ  0x02
RTC_INT_PIE             .equ  0x04
RTC_INT_AIE             .equ  0x08

RTC_FLAG_BVF            .equ  0x01
RTC_FLAG_PWRF           .equ  0x02
RTC_FLAG_PF             .equ  0x04
RTC_FLAG_AF             .equ  0x08

RTC_CTRL_DSE            .equ  0x01
RTC_CTRL_24HR           .equ  0x02
RTC_CTRL_RUN_BAT        .equ  0x04
RTC_CTRL_UTI            .equ  0x08

; END rtc.inc
