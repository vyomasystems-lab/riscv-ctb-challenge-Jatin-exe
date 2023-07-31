#include "encoding.h"

#if __riscv_xlen == 64
  # define LREG ld
  # define LREGU lwu
  # define SREG sd
  # define REGBYTES 8
  # define FMV fmv.d.x
#else
  # define LREG lw
  # define SREG sw
  # define LREGU lw
  # define REGBYTES 4
  # define FMV fmv.w.x
#endif

  .section ".text.init"
  .globl _start
_start:
  la sp, begin_signature
  LREG  x1, 0*REGBYTES(sp)
  LREG  x3, 1*REGBYTES(sp)
  LREG  x4, 2*REGBYTES(sp)
  LREG  x5, 3*REGBYTES(sp)
  LREG  x6, 4*REGBYTES(sp)
  LREG  x7, 5*REGBYTES(sp)
  LREG  x8, 6*REGBYTES(sp)
  LREG  x9, 7*REGBYTES(sp)
  LREG  x10,8*REGBYTES(sp)
  LREG  x11,9*REGBYTES(sp)
  LREG  x12,10*REGBYTES(sp)
  LREG  x13,11*REGBYTES(sp)
  LREG  x14,12*REGBYTES(sp)
  LREG  x15,13*REGBYTES(sp)
  LREG  x16,14*REGBYTES(sp)
  LREG  x17,15*REGBYTES(sp)
  LREG  x18,16*REGBYTES(sp)
  LREG  x19,17*REGBYTES(sp)
  LREG  x20,18*REGBYTES(sp)
  LREG  x21,19*REGBYTES(sp)
  LREG  x22,20*REGBYTES(sp)
  LREG  x23,21*REGBYTES(sp)
  LREG  x24,22*REGBYTES(sp)
  LREG  x25,23*REGBYTES(sp)
  LREG  x26,24*REGBYTES(sp)
  LREG  x27,25*REGBYTES(sp)
  LREG  x28,26*REGBYTES(sp)
  LREG  x29,27*REGBYTES(sp)
  LREG  x30,28*REGBYTES(sp)
  LREG  x31,29*REGBYTES(sp)

  # enable FPU and accelerator if present
  li t0, MSTATUS_FS | MSTATUS_XS
  csrs mstatus, t0

  # make sure XLEN agrees with compilation choice
  li t0, 1
  slli t0, t0, 31
#if __riscv_xlen == 64
  bgez t0, 1f
#else
  bltz t0, 1f
#endif
2:
  li a0, 1
  sw a0, tohost, t0
  j 2b
1:

#ifdef __riscv_flen
  # initialize FPU if we have one
  la t0, 1f
  csrw mtvec, t0

  fssr    x0
  FMV  f0, x1
  FMV  f1, x1
  FMV  f2, x2
  FMV  f3, x3
  FMV  f4, x4
  FMV  f5, x5
  FMV  f6, x6
  FMV  f7, x7
  FMV  f8, x8
  FMV  f9, x9
  FMV  f10, x10
  FMV  f11, x11
  FMV  f12, x12
  FMV  f13, x13
  FMV  f14, x14
  FMV  f15, x15
  FMV  f16, x16
  FMV  f17, x17
  FMV  f18, x18
  FMV  f19, x19
  FMV  f20, x20
  FMV  f21, x21
  FMV  f22, x22
  FMV  f23, x23
  FMV  f24, x24
  FMV  f25, x25
  FMV  f26, x26
  FMV  f27, x27
  FMV  f28, x28
  FMV  f29, x29
  FMV  f30, x30
  FMV  f31, x31
  .align 4
1:
#endif

  # initialize trap vector
  la t0, trap_entry
  csrw mtvec, t0

  la  tp, _end + 63
  and tp, tp, -64

  # get core id
  csrr a0, mhartid
  # for now, assume only 1 core
  li a1, 1
1:bgeu a0, a1, 1b

  # give each core 128KB of stack + TLS
#define STKSHIFT 17
  sll a2, a0, STKSHIFT
  add tp, tp, a2
  add sp, a0, 1
  sll sp, sp, STKSHIFT
  add sp, sp, tp

  j main

  .align 2
trap_entry:
  addi sp, sp, -272

  SREG x1, 1*REGBYTES(sp)
  SREG x2, 2*REGBYTES(sp)
  SREG x3, 3*REGBYTES(sp)
  SREG x4, 4*REGBYTES(sp)
  SREG x5, 5*REGBYTES(sp)
  SREG x6, 6*REGBYTES(sp)
  SREG x7, 7*REGBYTES(sp)
  SREG x8, 8*REGBYTES(sp)
  SREG x9, 9*REGBYTES(sp)
  SREG x10, 10*REGBYTES(sp)
  SREG x11, 11*REGBYTES(sp)
  SREG x12, 12*REGBYTES(sp)
  SREG x13, 13*REGBYTES(sp)
  SREG x14, 14*REGBYTES(sp)
  SREG x15, 15*REGBYTES(sp)
  SREG x16, 16*REGBYTES(sp)
  SREG x17, 17*REGBYTES(sp)
  SREG x18, 18*REGBYTES(sp)
  SREG x19, 19*REGBYTES(sp)
  SREG x20, 20*REGBYTES(sp)
  SREG x21, 21*REGBYTES(sp)
  SREG x22, 22*REGBYTES(sp)
  SREG x23, 23*REGBYTES(sp)
  SREG x24, 24*REGBYTES(sp)
  SREG x25, 25*REGBYTES(sp)
  SREG x26, 26*REGBYTES(sp)
  SREG x27, 27*REGBYTES(sp)
  SREG x28, 28*REGBYTES(sp)
  SREG x29, 29*REGBYTES(sp)
  SREG x30, 30*REGBYTES(sp)
  SREG x31, 31*REGBYTES(sp)

  csrr a0, mcause                 # copy the mcause to register a0.
  csrr a1, mepc                   # copy the mepc to register a1.
  lhu  a2, 0(a1)                  # load instruction into reg a1.

  # check the lower 2 bits to see if the instruction is 32-bit or 16-bit.
  andi a2, a2, 0x3;
  li t0, 0x3
  bne a2,t0,inst16

  inst32:                           # is 32-bit instruction then increment by 4
  addi a1,a1,0x4
  beqz x0,1f

inst16:
  addi a1,a1,0x2                  # is 16-bit instruction then increment by 2

1: 
  csrw mepc, a1                   # point mepc to the next instruction.

  # use mcause to update the number of exceptions encountered in the program.

  # Remain in M-mode after eret
  li t0, MSTATUS_MPP
  csrs mstatus, t0

  LREG x1, 1*REGBYTES(sp)
  LREG x2, 2*REGBYTES(sp)
  LREG x3, 3*REGBYTES(sp)
  LREG x4, 4*REGBYTES(sp)
  LREG x5, 5*REGBYTES(sp)
  LREG x6, 6*REGBYTES(sp)
  LREG x7, 7*REGBYTES(sp)
  LREG x8, 8*REGBYTES(sp)
  LREG x9, 9*REGBYTES(sp)
  LREG x10, 10*REGBYTES(sp)
  LREG x11, 11*REGBYTES(sp)
  LREG x12, 12*REGBYTES(sp)
  LREG x13, 13*REGBYTES(sp)
  LREG x14, 14*REGBYTES(sp)
  LREG x15, 15*REGBYTES(sp)
  LREG x16, 16*REGBYTES(sp)
  LREG x17, 17*REGBYTES(sp)
  LREG x18, 18*REGBYTES(sp)
  LREG x19, 19*REGBYTES(sp)
  LREG x20, 20*REGBYTES(sp)
  LREG x21, 21*REGBYTES(sp)
  LREG x22, 22*REGBYTES(sp)
  LREG x23, 23*REGBYTES(sp)
  LREG x24, 24*REGBYTES(sp)
  LREG x25, 25*REGBYTES(sp)
  LREG x26, 26*REGBYTES(sp)
  LREG x27, 27*REGBYTES(sp)
  LREG x28, 28*REGBYTES(sp)
  LREG x29, 29*REGBYTES(sp)
  LREG x30, 30*REGBYTES(sp)
  LREG x31, 31*REGBYTES(sp)

  addi sp, sp, 272
  mret

.section ".tdata.begin"
.globl _tdata_begin
_tdata_begin:

.section ".tdata.end"
.globl _tdata_end
_tdata_end:

.section ".tbss.end"
.globl _tbss_end
_tbss_end:

.section ".tohost","aw",@progbits
.align 6
.globl tohost
tohost: .dword 0
.align 6
.globl fromhost
fromhost: .dword 0

# Exception generation numbers
.align 4
.globl ecause_num
ecause_num:
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0
    .dword 0

# Read only data
.section ".rodata"
.globl rodata
rodata:
    	.dword 0x5b707269762d6d6f
	.dword 0x64655d0a6d6f6465
	.dword 0x203d206d0a5b6765
	.dword 0x6e6572616c5d0a74
	.dword 0x6f74616c5f696e73
	.dword 0x7472756374696f6e
	.dword 0x73203d2031303030
	.dword 0x0a726567735f6e6f
	.dword 0x745f757365203d20
	.dword 0x78312c78320a6375
	.dword 0x73746f6d5f747261
	.dword 0x705f68616e646c65
	.dword 0x72203d2046616c73
	.dword 0x650a636f64655f73
	.dword 0x746172745f616464
	.dword 0x72657373203d2032
	.dword 0x3134373438333634
	.dword 0x380a64656661756c
	.dword 0x745f70726f677261
	.dword 0x6d5f65786974203d
	.dword 0x20547275650a6465
	.dword 0x6c65676174696f6e
	.dword 0x203d20300a5b6973
	.dword 0x612d696e73747275
	.dword 0x6374696f6e2d6469
	.dword 0x7374726962757469
	.dword 0x6f6e5d0a72656c5f
	.dword 0x737973203d20300a
	.dword 0x72656c5f7379732e
	.dword 0x637372203d20310a
	.dword 0x72656c5f72763332
	.dword 0x692e6374726c203d
	.dword 0x20310a72656c5f72
	.dword 0x763332692e636f6d
	.dword 0x70757465203d2031
	.dword 0x300a72656c5f7276
	.dword 0x3332692e64617461
	.dword 0x203d2031300a7265
	.dword 0x6c5f72763332692e
	.dword 0x66656e6365203d20
	.dword 0x31300a72656c5f72
	.dword 0x763634692e636f6d
	.dword 0x70757465203d2030
	.dword 0x0a72656c5f727636
	.dword 0x34692e6461746120
	.dword 0x3d20300a72656c5f
	.dword 0x72763332692e7a62
	.dword 0x61203d20300a7265
	.dword 0x6c5f72763634692e
	.dword 0x7a6261203d20300a
	.dword 0x72656c5f72763332
	.dword 0x692e7a6262203d20
	.dword 0x300a72656c5f7276
	.dword 0x3634692e7a626220
	.dword 0x3d20300a72656c5f
	.dword 0x72763332692e7a62
	.dword 0x63203d20300a7265
	.dword 0x6c5f72763332692e
	.dword 0x7a6273203d20300a
	.dword 0x72656c5f72763332
	.dword 0x692e7a6265203d20
	.dword 0x300a72656c5f7276
	.dword 0x3634692e7a626520
	.dword 0x3d20300a72656c5f
	.dword 0x72763332692e7a62
	.dword 0x66203d20300a7265
	.dword 0x6c5f72763634692e
	.dword 0x7a6266203d20300a
	.dword 0x72656c5f72763634
	.dword 0x692e7a626d203d20
	.dword 0x300a72656c5f7276
	.dword 0x3332692e7a627020
	.dword 0x3d20300a72656c5f
	.dword 0x72763634692e7a62
	.dword 0x70203d20300a7265
	.dword 0x6c5f72763332692e
	.dword 0x7a6272203d20300a
	.dword 0x72656c5f72763634
	.dword 0x692e7a6272203d20
	.dword 0x300a72656c5f7276
	.dword 0x3332692e7a627420
	.dword 0x3d20300a72656c5f
	.dword 0x72763634692e7a62
	.dword 0x74203d20300a7265
	.dword 0x6c5f727633326d20
	.dword 0x3d20300a72656c5f
	.dword 0x727636346d203d20
	.dword 0x300a72656c5f7276
	.dword 0x333261203d20300a
	.dword 0x72656c5f72763634
	.dword 0x61203d20300a7265
	.dword 0x6c5f727633326620
	.dword 0x3d20300a72656c5f
	.dword 0x7276363466203d20
	.dword 0x300a72656c5f7276
	.dword 0x333264203d20300a
	.dword 0x72656c5f72763634
	.dword 0x64203d20300a7265
	.dword 0x6c5f7276632e6374
	.dword 0x726c203d20310a72
	.dword 0x656c5f7276632e63
	.dword 0x6f6d70757465203d
	.dword 0x2031300a72656c5f
	.dword 0x7276632e7370203d
	.dword 0x2031300a72656c5f
	.dword 0x7276632e64617461
	.dword 0x203d2031300a7265
	.dword 0x6c5f7276632e6664
	.dword 0x617461203d20300a
	.dword 0x72656c5f72763332
	.dword 0x632e636f6d707574
	.dword 0x65203d2031300a72
	.dword 0x656c5f7276333263
	.dword 0x2e6374726c203d20
	.dword 0x350a72656c5f7276
	.dword 0x3332632e66646174
	.dword 0x61203d20300a7265
	.dword 0x6c5f72763634632e
	.dword 0x636f6d7075746520
	.dword 0x3d20300a72656c5f
	.dword 0x72763634632e6461
	.dword 0x7461203d20300a5b
	.dword 0x666c6f61742d726f
	.dword 0x756e64696e675d0a
	.dword 0x726e65203d203130
	.dword 0x0a72747a203d2031
	.dword 0x300a72646e203d20
	.dword 0x31300a727570203d
	.dword 0x2031300a726d6d20
	.dword 0x3d2031300a5b6272
	.dword 0x616e63682d636f6e
	.dword 0x74726f6c5d0a6261
	.dword 0x636b776172642d70
	.dword 0x726f626162696c69
	.dword 0x7479203d20302e35
	.dword 0x0a626c6f636b2d73
	.dword 0x697a65203d20370a
	.dword 0x5b72656375727369
	.dword 0x6f6e2d6f7074696f
	.dword 0x6e735d0a72656375
	.dword 0x7273696f6e2d656e
	.dword 0x61626c65203d2054
	.dword 0x7275650a72656375
	.dword 0x7273696f6e2d6465
	.dword 0x707468203d203130
	.dword 0x0a72656375727369
	.dword 0x6f6e2d63616c6c73
	.dword 0x203d20350a5b6163
	.dword 0x636573732d736563
	.dword 0x74696f6e735d0a62
	.dword 0x6567696e5f736967
	.dword 0x6e6174757265203d
	.dword 0x2030783830303931
	.dword 0x3030302c30783830
	.dword 0x3039353030302c72
	.dword 0x770a5b6373722d73
	.dword 0x656374696f6e735d
	.dword 0x0a73656374696f6e
	.dword 0x73203d2030783031
	.dword 0x30303a3078646666
	.dword 0x2c2030783332352c
	.dword 0x2030783530303a30
	.dword 0x786666660a5b7573
	.dword 0x65722d66756e6374
	.dword 0x696f6e735d0a6675
	.dword 0x6e6331203d207b30
	.dword 0x3a22616464207830
	.dword 0x2c78302c7830227d
	.dword 0x0a5b737769746368
	.dword 0x2d707269762d6d6f
	.dword 0x6465735d0a737769
	.dword 0x7463685f6d6f6465
	.dword 0x73203d2054727565
	.dword 0x0a6e756d5f737769
	.dword 0x7463686573203d20
	.dword 0x390a5b692d636163
	.dword 0x68655d0a6e756d5f
	.dword 0x63616c6c73203d20
	.dword 0x360a6e756d5f6279
	.dword 0x7465735f7065725f
	.dword 0x626c6f636b203d20
	.dword 0x31360a6e756d5f62
	.dword 0x6c6f636b73203d20
	.dword 0x380a6e756d5f6379
	.dword 0x636c6573203d2031
	.dword 0x300a5b642d636163
	.dword 0x68655d0a6e756d5f
	.dword 0x63616c6c73203d20
	.dword 0x390a6e756d5f6279
	.dword 0x7465735f7065725f
	.dword 0x626c6f636b203d20
	.dword 0x31360a6e756d5f62
	.dword 0x6c6f636b73203d20
	.dword 0x380a6e756d5f6379
	.dword 0x636c6573203d2031
	.dword 0x300a5b6578636570
	.dword 0x74696f6e2d67656e
	.dword 0x65726174696f6e5d
	.dword 0x0a65636175736530
	.dword 0x30203d20310a6563
	.dword 0x617573653031203d
	.dword 0x20310a6563617573
	.dword 0x653032203d20310a
	.dword 0x6563617573653033
	.dword 0x203d20310a656361
	.dword 0x7573653034203d20
	.dword 0x310a656361757365
	.dword 0x3035203d20310a65
	.dword 0x6361757365303620
	.dword 0x3d20310a65636175
	.dword 0x73653037203d2031
	.dword 0x0a65636175736530
	.dword 0x38203d20310a6563
	.dword 0x617573653039203d
	.dword 0x20310a6563617573
	.dword 0x653130203d20310a
	.dword 0x6563617573653131
	.dword 0x203d20310a656361
	.dword 0x7573653132203d20
	.dword 0x310a656361757365
	.dword 0x3133203d20310a65
	.dword 0x6361757365313420
	.dword 0x3d20310a5b646174
	.dword 0x612d68617a617264
	.dword 0x735d0a7261775f70
	.dword 0x726f62203d20302e
	.dword 0x350a7761725f7072
	.dword 0x6f62203d20302e35
	.dword 0x0a7761775f70726f
	.dword 0x62203d20302e350a
	.dword 0x6e756d5f72656773
	.dword 0x5f6c6f6f6b626568
	.dword 0x696e64203d20330a
	.dword 0x5b70726f6772616d
	.dword 0x2d6d6163726f5d0a
	.dword 0x7072655f70726f67
	.dword 0x72616d5f6d616372
	.dword 0x6f203d2061646420
	.dword 0x78302c78302c7830
	.dword 0x0a706f73745f7072
	.dword 0x6f6772616d5f6d61
	.dword 0x63726f203d206164
	.dword 0x642078302c78302c
	.dword 0x78300a7072655f62
	.dword 0x72616e63685f6d61
	.dword 0x63726f203d206164
	.dword 0x642078302c78302c
	.dword 0x78300a706f73745f
	.dword 0x6272616e63685f6d
	.dword 0x6163726f203d2061
	.dword 0x64642078302c7830
	.dword 0x2c78300a65636175
	.dword 0x73653030203d2072
	.dword 0x616e646f6d0a6563
	.dword 0x617573653031203d
	.dword 0x2072616e646f6d0a
	.dword 0x6563617573653032
	.dword 0x203d2072616e646f
	.dword 0x6d0a656361757365
	.dword 0x3033203d2072616e
	.dword 0x646f6d0a65636175
	.dword 0x73653034203d2072
	.dword 0x616e646f6d0a6563
	.dword 0x617573653035203d
	.dword 0x2072616e646f6d0a
	.dword 0x6563617573653036
	.dword 0x203d2072616e646f
	.dword 0x6d0a656361757365
	.dword 0x3037203d2072616e
	.dword 0x646f6d0a65636175
	.dword 0x73653038203d2072
	.dword 0x616e646f6d0a6563
	.dword 0x617573653039203d
	.dword 0x2072616e646f6d0a
	.dword 0x6563617573653130
	.dword 0x203d2072616e646f
	.dword 0x6d0a656361757365
	.dword 0x3131203d2072616e
	.dword 0x646f6d0a65636175
	.dword 0x73653132203d2072
	.dword 0x616e646f6d0a6563
	.dword 0x617573653133203d
	.dword 0x2072616e646f6d0a
	.dword 0x6563617573653134
	.dword 0x203d2072616e646f
	.dword 0x6d0a5b73656c662d
	.dword 0x636865636b696e67
	.dword 0x5d0a72617465203d
	.dword 0x203130300a746573
	.dword 0x745f706173735f6d
	.dword 0x6163726f203d206c
	.dword 0x6120202020202073
	.dword 0x702c20626567696e
	.dword 0x5f7369676e617475
	.dword 0x72653b2061646469
	.dword 0x2020202073702c20
	.dword 0x73702c20322a5245
	.dword 0x4742595445533b20
	.dword 0x6c69202020202020
	.dword 0x74312c2030786666
	.dword 0x6666663b20535245
	.dword 0x472020202074312c
	.dword 0x20302a5245474259
	.dword 0x544553287370290a
	.dword 0x746573745f666169
	.dword 0x6c5f6d6163726f20
	.dword 0x3d20616464207830
	.byte 0x2c
	.byte 0x78
	.byte 0x30
	.byte 0x2c
	.byte 0x78
	.byte 0x30
	.byte 0xa
