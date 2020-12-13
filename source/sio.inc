SIO_BASE                .equ  0xFC
SIO_A_DATA              .equ  SIO_BASE
SIO_B_DATA              .equ  SIO_BASE + 1
SIO_A_CTL               .equ  SIO_BASE + 2
SIO_B_CTL               .equ  SIO_BASE + 3

SIO_RR0_RX_AVAIL        .equ  0
SIO_RR0_INT_PEND        .equ  0x1
SIO_RR0_TX_EMPTY        .equ  0x2
SIO_RR0_DCD             .equ  0x3
SIO_RR0_SYNC_HUNT       .equ  0x4
SIO_RR0_CTS             .equ  0x5
SIO_RR0_TX_URUN         .equ  0x6
SIO_RR0_BREAK           .equ  0x7

SIO_WR0_REG1            .equ  0x1
SIO_WR0_REG2            .equ  0x2
SIO_WR0_REG3            .equ  0x3
SIO_WR0_REG4            .equ  0x4
SIO_WR0_REG5            .equ  0x5
SIO_WR0_REG6            .equ  0x6
SIO_WR0_REG7            .equ  0x7
SIO_WR0_CMD_ABT         .equ  0x1 << 3
SIO_WR0_CMD_RST_EXT     .equ  0x2 << 3
SIO_WR0_CMD_CH_RST      .equ  0x3 << 3
SIO_WR0_CMD_EN_INT_RX   .equ  0x4 << 3
SIO_WR0_CMD_RST_TXINT   .equ  0x5 << 3
SIO_WR0_CMD_ERR_RST     .equ  0x6 << 3
SIO_WR0_CMD_RTN_INT     .equ  0x7 << 3
SIO_WR0_CRC_RST_RX      .equ  0x1 << 6
SIO_WR0_CRC_RST_TX      .equ  0x2 << 6
SIO_WR0_CRC_RST_EOM     .equ  0x3 << 6

SIO_WR1_EXT_INT         .equ  0x1
SIO_WR1_TX_INT          .equ  0x2
SIO_WR1_STAT_VECT       .equ  0x4
SIO_WR1_RX_INT_1ST      .equ  0x1 << 3
SIO_WR1_RX_INT_ALL_PAV  .equ  0x2 << 3
SIO_WR1_RX_INT_ALL      .equ  0x3 << 3
SIO_WR1_WT_RDY_RX       .equ  0x20
SIO_WR1_RDY_FUNC        .equ  0x40
SIO_WR1_WT_RDY          .equ  0x80

SIO_WR3_RX_EN           .equ  0x1
SIO_WR3_SYNC_INH        .equ  0x2
SIO_WR3_ADDR_SRCH       .equ  0x4
SIO_WR3_RX_CRC_EN       .equ  0x8
SIO_WR3_HUNT_PH         .equ  0x10
SIO_WR3_AUTO_EN         .equ  0x20
SIO_WR3_RX_7            .equ  0x1 << 6
SIO_WR3_RX_6            .equ  0x2 << 6
SIO_WR3_RX_8            .equ  0x3 << 6

SIO_WR4_PAR_EN          .equ  0x1
SIO_WR4_PAR_EVN         .equ  0x2
SIO_WR4_STOP_1          .equ  0x1 << 2
SIO_WR4_STOP_1_5        .equ  0x2 << 2
SIO_WR4_STOP_2          .equ  0x3 << 2
SIO_WR4_SYNC_16         .equ  0x1 << 4
SIO_WR4_SDLC            .equ  0x2 << 4
SIO_WR4_EXT_SYNC        .equ  0x3 << 4
SIO_WR4_1_16_CLK        .equ  0x1 << 6
SIO_WR4_1_32_CLK        .equ  0x2 << 6
SIO_WR4_1_64_CLK        .equ  0x3 << 6

SIO_WR5_TX_CRC          .equ  0x1
SIO_WR5_RTS             .equ  0x2
SIO_WR5_CRC16           .equ  0x4
SIO_WR5_TX_EN           .equ  0x8
SIO_WR5_SND_BRK         .equ  0x10
SIO_WR5_TX_7            .equ  0x1 << 5
SIO_WR5_TX_6            .equ  0x2 << 5
SIO_WR5_TX_8            .equ  0x3 << 5
SIO_WR5_DTR             .equ  0x80

; END sio.inc
