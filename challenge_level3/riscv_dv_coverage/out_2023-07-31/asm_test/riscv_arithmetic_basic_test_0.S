.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x15, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  li x31, 0x0
                  csrw 0x304, x31 # MIE
                  mret
init:             
                  li x0, 0xca42853b
                  li x1, 0x2aeddc48
                  li x2, 0xf787f30a
                  li x3, 0x6
                  li x4, 0xc
                  li x5, 0x0
                  li x6, 0xf2f8a34c
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x7
                  li x14, 0x0
                  li x16, 0xf00d83c6
                  li x17, 0x0
                  li x18, 0x1f7e9c5d
                  li x19, 0xa42f6431
                  li x20, 0xfc4ff200
                  li x21, 0xad4c86b1
                  li x22, 0x80000000
                  li x23, 0xf8c687ca
                  li x24, 0x80000000
                  li x25, 0x6
                  li x27, 0x8ad96847
                  li x28, 0x80000000
                  li x29, 0xf6daabdb
                  li x30, 0x0
                  li x31, 0xf4b61634
                  la x26, user_stack_end
main:             auipc       s2, 371669
                  add         t3, t4, s1
                  lui         s9, 765144
                  and         t2, a3, ra
                  sra         s8, a5, a2
                  xor         s3, t1, a2
                  or          a7, a4, a1
                  slli        a2, a4, 11
                  andi        t3, a7, -1411
                  sltu        s8, gp, a1
                  slli        t6, s3, 12
                  lui         t2, 755135
                  ori         s5, t6, 714
                  auipc       a7, 796182
                  srl         s2, a4, ra
                  addi        t4, zero, 955
                  sltu        a6, tp, s10
                  ori         s8, s9, -274
                  xori        s6, sp, -1736
                  andi        t1, t0, 1049
                  sltiu       s4, gp, 1158
                  sll         s4, a4, s5
                  sll         s7, t3, s8
                  andi        s1, t4, 331
                  andi        t3, t0, -1823
                  xor         s4, zero, s2
                  addi        s8, s4, 360
                  srai        s1, a3, 9
                  nop
                  sltiu       s2, a6, -1871
                  xor         t2, tp, a0
                  andi        a2, s1, 1349
                  srl         s3, a0, a3
                  nop
                  add         s4, zero, s9
                  srl         ra, a7, t1
                  xori        a2, t4, 1622
                  slti        t2, a5, 334
                  or          t1, s8, s2
                  nop
                  sll         tp, ra, sp
                  sltiu       a1, s2, -1330
                  sub         t6, s7, a3
                  srli        gp, gp, 13
                  add         t5, gp, a3
                  sll         a2, s10, a4
                  andi        a1, s0, -1522
                  slt         t2, s11, a6
                  sltiu       s6, s5, -528
                  xori        s6, t3, -1682
                  nop
                  xor         s2, t5, a3
                  auipc       a0, 344439
                  andi        a2, s2, 258
                  xori        zero, s2, -1210
                  addi        tp, sp, 1689
                  or          a0, s0, s2
                  sltiu       gp, gp, -1478
                  andi        s1, s6, 316
                  and         tp, s7, s7
                  add         zero, s7, s6
                  sub         gp, s4, gp
                  srli        a4, t2, 14
                  nop
                  xor         a3, ra, sp
                  slt         s0, s1, sp
                  xori        s3, s2, 312
                  or          s1, tp, s10
                  sub         s9, s1, a1
                  auipc       a4, 221664
                  lui         t6, 305951
                  xor         zero, s1, t5
                  slti        ra, s8, -950
                  auipc       sp, 495465
                  slli        ra, s1, 8
                  srli        s6, s7, 17
                  sub         a3, a0, s7
                  add         zero, s3, zero
                  lui         t1, 437558
                  sltiu       t2, a6, -1347
                  slti        t1, s10, 1737
                  auipc       t1, 33845
                  xor         a6, s1, s10
                  xori        ra, a3, 1761
                  xor         zero, t1, t5
                  sra         a3, gp, a7
                  srai        zero, s1, 14
                  sub         a0, t4, s3
                  lui         s4, 866710
                  add         t6, s4, a4
                  addi        s5, s1, 11
                  slli        gp, s1, 5
                  sltu        s4, s5, a1
                  srl         a4, t3, s10
                  sll         gp, s4, s2
                  sltu        a4, a2, s4
                  srl         zero, a4, s5
                  auipc       zero, 1005102
                  nop
                  add         a0, a6, t3
                  slt         s2, gp, t6
                  sra         s9, s11, a4
                  xori        s4, a2, -393
                  slli        s11, s8, 11
                  and         s1, a5, a5
                  sra         s0, t0, s7
                  sub         s9, a5, s11
                  xor         a1, s7, a0
                  xori        zero, t4, 1993
                  sra         gp, a0, s6
                  addi        s9, s0, 1310
                  ori         zero, t6, -1956
                  andi        a3, s3, -1829
                  sra         t6, a2, s0
                  or          zero, t1, s8
                  or          s2, a6, t0
                  add         a6, a7, a0
                  xor         a4, a0, a2
                  and         t5, a3, tp
                  srl         zero, s9, a5
                  or          a3, s10, a4
                  nop
                  nop
                  andi        s11, gp, 207
                  xori        zero, a3, -966
                  auipc       s5, 279508
                  srli        a3, s7, 30
                  slli        zero, a6, 22
                  sltiu       s5, a6, -308
                  and         gp, s3, s2
                  or          s6, sp, s8
                  xor         s7, tp, s2
                  sra         t4, t4, t2
                  ori         a6, s4, -794
                  lui         t1, 767204
                  sll         t1, a0, a6
                  slt         t6, a7, a1
                  auipc       sp, 616420
                  srli        s6, t1, 20
                  xor         zero, s10, t0
                  addi        s9, s5, -1753
                  slt         a0, a3, s1
                  sltiu       a2, s6, -1987
                  sub         a4, gp, t5
                  srl         a3, s6, s2
                  ori         ra, a5, 1637
                  xor         t6, a5, gp
                  srli        s9, t2, 29
                  ori         t4, s4, -2021
                  slt         t3, t2, a5
                  slt         gp, a5, s4
                  and         a0, s1, tp
                  sltu        a3, t5, s0
                  slti        s4, t4, -453
                  add         s6, zero, tp
                  sltiu       s6, a6, -1781
                  add         s8, s3, a7
                  srai        zero, s8, 14
                  add         a3, s7, s2
                  xor         a1, t5, s4
                  sra         s5, s1, t2
                  xor         a4, a2, zero
                  slt         a3, t3, a6
                  addi        s5, tp, -644
                  sub         s3, t4, s5
                  sll         a3, s3, a3
                  lui         ra, 997598
                  or          gp, a2, t6
                  sra         t1, s11, a6
                  srli        s4, zero, 13
                  sra         a2, a1, a5
                  xor         ra, s5, s0
                  srai        s6, t2, 14
                  add         a7, s10, ra
                  srl         t5, t1, t3
                  lui         s5, 828396
                  srl         s9, a7, t3
                  sub         s2, gp, s5
                  nop
                  sltu        s9, s3, t0
                  or          s9, s6, a3
                  add         a7, a3, s4
                  slt         s0, s0, zero
                  slt         s2, t4, a7
                  nop
                  xor         tp, s5, a5
                  xori        t3, t2, -2008
                  addi        gp, s3, -884
                  sll         s2, tp, a7
                  sub         s2, s9, s1
                  addi        a7, sp, -1115
                  nop
                  lui         s4, 315350
                  xor         a4, s2, a7
                  lui         s0, 148939
                  srli        s7, s5, 14
                  srai        zero, a1, 12
                  nop
                  sltiu       a4, a3, 1611
                  ori         a1, tp, 317
                  slti        zero, t1, 1335
                  sra         s3, a1, t5
                  sra         s2, s1, s0
                  xori        a1, t2, -1036
                  srai        t4, s5, 0
                  sltu        tp, a6, t1
                  slt         s7, t5, s5
                  xori        a0, t4, -115
                  sub         s4, t5, s11
                  lui         t2, 951867
                  addi        a3, a0, 1677
                  slli        s2, a3, 30
                  lui         a2, 886919
                  lui         s5, 823814
                  andi        gp, s0, -676
                  add         s1, a2, t5
                  sltiu       zero, ra, 273
                  xor         t2, a5, a7
                  sltiu       s0, zero, 1907
                  sltiu       ra, a0, 1810
                  srai        a3, s11, 31
                  andi        a6, gp, 1945
                  sltu        a1, a0, s3
                  auipc       s5, 684843
                  srai        a6, a7, 19
                  xor         s7, t6, s1
                  sltiu       s1, s4, 1352
                  srai        a6, t2, 21
                  sltiu       s6, t6, 1354
                  slti        a3, sp, 266
                  sra         s0, t6, t4
                  slti        s5, s2, -1483
                  sll         s3, a2, s9
                  srli        s9, s5, 1
                  ori         a6, sp, 1453
                  auipc       s3, 1016054
                  xori        sp, a7, -1825
                  or          a6, s0, s0
                  xori        a1, a5, 1160
                  sra         s2, ra, a0
                  lui         t3, 443750
                  sll         t6, t6, ra
                  sll         s1, s8, t5
                  sra         t4, ra, ra
                  auipc       t2, 202239
                  sra         s4, s6, a0
                  add         s9, t3, a1
                  xori        t3, a7, 922
                  add         zero, t6, s1
                  slti        a7, ra, -871
                  sltiu       zero, a7, 491
                  add         zero, t1, s6
                  sltiu       zero, t3, 1621
                  sub         s3, a3, s7
                  ori         s0, s0, -1084
                  auipc       s3, 1021826
                  srli        zero, s11, 17
                  andi        a6, s8, -1410
                  slli        s0, s10, 0
                  xori        a2, zero, -875
                  srl         gp, s11, gp
                  auipc       zero, 545349
                  nop
                  auipc       s8, 428948
                  nop
                  lui         a6, 582467
                  or          s2, t2, s7
                  xor         a3, t4, t5
                  andi        s6, t6, -320
                  ori         s7, s8, 1564
                  slli        a4, ra, 8
                  sub         sp, a2, s7
                  add         a0, s10, t0
                  sltiu       s3, s4, 1000
                  srl         s5, gp, s7
                  xor         t5, a6, a3
                  sub         ra, t5, zero
                  nop
                  srli        a3, t0, 9
                  andi        a1, ra, -1331
                  slli        gp, zero, 29
                  sltiu       s6, sp, 734
                  auipc       s4, 70110
                  auipc       a4, 1014565
                  slli        t6, s5, 0
                  srli        a7, s10, 25
                  xori        ra, a3, -894
                  or          tp, a6, a6
                  srl         zero, s3, a1
                  or          a1, t6, t6
                  ori         a2, t2, 1715
                  sll         s5, a4, s0
                  addi        a2, t0, -1595
                  srai        ra, a7, 3
                  andi        tp, a5, -388
                  andi        s7, ra, 119
                  sltu        t5, t5, t5
                  slti        t6, a0, -1334
                  auipc       s7, 509896
                  srl         zero, s8, a4
                  sltu        t4, a5, a1
                  sra         s6, t3, a6
                  and         sp, t6, ra
                  sll         s4, a4, s5
                  sub         a1, s8, a3
                  srai        s9, s0, 9
                  slt         zero, sp, a0
                  and         a4, s6, s2
                  sra         t1, t5, a1
                  auipc       s4, 492007
                  sub         s1, s4, s0
                  or          a2, s5, a0
                  sll         a6, zero, t5
                  srl         s0, s1, s4
                  srai        zero, s0, 6
                  sra         a4, tp, tp
                  nop
                  ori         t1, a2, 774
                  nop
                  auipc       a7, 725287
                  xori        zero, t3, -963
                  auipc       a0, 814321
                  slti        t6, a5, 1565
                  lui         zero, 548985
                  nop
                  sltu        s2, s9, t6
                  sltu        s1, a4, a1
                  andi        a3, ra, -800
                  sub         s1, s8, s10
                  sra         s2, sp, t3
                  auipc       a0, 763009
                  srli        zero, t2, 16
                  sub         s6, tp, s5
                  and         s6, a5, sp
                  srai        a3, s5, 16
                  ori         s1, a6, -1577
                  lui         sp, 83037
                  slti        zero, s0, 78
                  add         s8, tp, s7
                  sra         t4, gp, a7
                  ori         a4, a5, 574
                  slti        s7, a0, -1781
                  srl         gp, t3, t1
                  slt         sp, s6, s11
                  andi        zero, gp, 574
                  auipc       t5, 570925
                  xori        s0, t3, -1906
                  srli        t3, s1, 27
                  add         zero, a1, a5
                  srli        gp, a5, 4
                  auipc       a0, 790970
                  lui         zero, 1014454
                  sltu        t5, a1, t0
                  nop
                  srai        s3, s2, 21
                  ori         t5, t2, 712
                  addi        t2, t1, -1492
                  ori         gp, s10, 395
                  sll         zero, zero, s5
                  sltu        zero, sp, a5
                  and         zero, s3, s7
                  slti        s0, a7, -1008
                  xor         gp, t0, s2
                  srai        t2, t1, 10
                  addi        zero, t3, -1736
                  or          s6, t4, s1
                  or          s7, zero, s1
                  sra         zero, a5, s11
                  addi        a3, t3, 1282
                  srai        s4, gp, 3
                  srai        a4, s1, 1
                  slli        a7, t3, 11
                  srai        s7, s11, 27
                  srai        s4, tp, 14
                  xor         a2, sp, s10
                  ori         t6, s5, -1979
                  sub         t3, t1, t2
                  sltu        a0, t3, gp
                  and         t2, s1, a2
                  slti        s0, s10, 1955
                  xor         t1, t5, ra
                  and         s1, t1, t4
                  sll         s7, a3, s5
                  ori         s6, s6, -747
                  nop
                  ori         a3, t6, -1574
                  slt         a7, a1, ra
                  sltu        s9, s1, a0
                  auipc       s6, 982763
                  sub         a0, t3, a1
                  addi        s8, s4, 86
                  auipc       tp, 352917
                  sub         s3, t3, s6
                  srai        s11, a6, 10
                  lui         t5, 606551
                  sltiu       t2, t5, 580
                  sll         a4, a0, s2
                  sltiu       a7, s6, 407
                  ori         s11, a4, 154
                  add         s3, sp, s4
                  nop
                  sra         s1, a7, a0
                  xori        zero, s8, -676
                  add         a0, a0, zero
                  sub         a4, a7, s1
                  ori         a2, s8, -995
                  andi        zero, a1, -1658
                  sll         a2, s9, t3
                  sltu        zero, s0, s2
                  srl         t2, s5, s0
                  and         s3, s5, a2
                  srai        a0, s5, 9
                  sra         t3, tp, s6
                  addi        t2, zero, -2039
                  or          t1, a3, zero
                  lui         a7, 162034
                  sltiu       zero, t4, -1095
                  slti        s1, s9, 1323
                  andi        tp, gp, -957
                  sll         s5, zero, zero
                  xori        s4, tp, 1193
                  andi        t1, t1, 41
                  nop
                  lui         sp, 165572
                  srli        sp, s6, 27
                  andi        s8, s9, -1150
                  slti        s0, t6, -1200
                  xor         t5, t6, s0
                  srai        t4, zero, 21
                  srli        zero, t3, 4
                  xori        t3, t0, -675
                  ori         s5, t6, -1087
                  sra         s0, a3, t5
                  sub         s8, s6, tp
                  slli        s9, t0, 18
                  or          tp, s7, a6
                  srl         s1, t6, a5
                  slli        a1, s9, 23
                  andi        a2, sp, 531
                  andi        s8, t1, 564
                  addi        t4, t2, -1308
                  srai        a6, s3, 28
                  lui         s8, 714375
                  lui         t2, 490670
                  srai        a3, t3, 6
                  sltiu       s8, ra, 587
                  nop
                  andi        a2, s0, -551
                  ori         a0, t1, 1922
                  nop
                  lui         s8, 321399
                  sra         s7, a0, s6
                  or          s4, s11, s4
                  xori        ra, a1, -1869
                  nop
                  lui         a6, 825635
                  ori         t5, s6, -1733
                  xori        s0, ra, -1731
                  sll         t6, gp, ra
                  add         s8, tp, zero
                  xori        a2, tp, 546
                  ori         t4, t4, 606
                  sub         s4, tp, a1
                  nop
                  and         s11, a3, a6
                  xori        s9, t0, -1026
                  nop
                  or          a1, s6, t0
                  sltiu       zero, a5, -453
                  sll         a0, t2, a5
                  andi        s9, s1, 1690
                  sltu        s2, zero, t4
                  sltiu       a0, a3, 1232
                  srl         s9, t2, s3
                  ori         t6, t0, -1392
                  sll         t3, s5, t5
                  andi        t3, s10, 837
                  lui         a1, 833038
                  addi        a7, a6, -1922
                  add         gp, s3, t4
                  slt         zero, a3, a3
                  ori         t4, a5, -896
                  add         s5, s7, s0
                  srli        s8, sp, 22
                  addi        a2, t1, 1356
                  ori         a0, t4, 1258
                  auipc       t5, 266285
                  slt         s11, tp, s7
                  lui         s7, 412542
                  sltu        tp, s9, zero
                  slti        ra, t0, 1408
                  srai        a4, tp, 28
                  sltu        s11, a2, a2
                  add         zero, s1, t5
                  xori        s2, s7, 1009
                  or          a0, t6, a6
                  nop
                  srli        t4, s4, 7
                  or          s2, s2, s10
                  sub         a7, s6, a7
                  xor         a3, s6, a7
                  or          t5, s4, s9
                  andi        sp, s5, -1384
                  slli        t4, s10, 1
                  slt         s7, s11, s6
                  slt         a2, t3, a4
                  srl         t2, a6, ra
                  slti        s11, s4, -403
                  xor         sp, s2, a4
                  and         s0, ra, s8
                  sll         s1, a0, s1
                  xor         ra, a4, t0
                  slt         zero, gp, t0
                  sra         s5, t0, tp
                  sub         zero, s5, s2
                  srai        a0, s3, 27
                  nop
                  addi        s2, s6, 935
                  and         s4, zero, s6
                  ori         zero, a1, 730
                  sra         gp, s3, s11
                  sub         s2, s2, a3
                  slti        a1, a3, -676
                  slti        a7, s10, -1778
                  slli        t5, t1, 25
                  ori         gp, a4, -1861
                  slt         t6, s2, tp
                  slti        a6, s0, 824
                  andi        t1, s10, 236
                  srli        s9, t4, 4
                  srli        s4, t3, 10
                  sub         zero, s2, s11
                  auipc       a3, 361447
                  auipc       t3, 139662
                  slt         s1, t1, a5
                  andi        zero, t1, -1242
                  andi        t2, s6, 1641
                  sub         a7, s5, a3
                  nop
                  xor         ra, s1, s2
                  sub         s9, t4, t0
                  sra         s5, a6, ra
                  lui         a4, 723273
                  srl         zero, s9, a1
                  sltiu       a7, ra, -785
                  slti        sp, t6, -762
                  xori        a1, t3, 1514
                  or          s2, s9, t6
                  auipc       a2, 557919
                  srli        a3, a5, 29
                  add         sp, s2, a0
                  andi        s3, a4, 285
                  sltu        a0, a7, gp
                  add         s4, t5, s8
                  slli        s6, t6, 4
                  slli        tp, s11, 29
                  xor         tp, s9, t5
                  srai        zero, zero, 31
                  xori        s9, t3, 647
                  or          s4, a6, t1
                  xor         tp, s4, gp
                  auipc       s1, 641598
                  addi        zero, t0, 243
                  ori         a3, a3, -980
                  nop
                  xori        t1, a1, -1345
                  slt         s3, a0, gp
                  or          zero, s4, a3
                  xori        a6, s7, -1403
                  andi        s3, s8, 375
                  auipc       s4, 879529
                  sub         a7, a2, s9
                  or          s11, t6, a3
                  sltiu       a0, a2, -1096
                  slti        zero, t0, 368
                  ori         s0, s4, 601
                  slli        a3, s0, 8
                  lui         s5, 988328
                  xori        s5, t3, 1459
                  sll         gp, a1, t3
                  srai        zero, a6, 14
                  add         s1, t3, s1
                  srai        a7, tp, 6
                  sra         a0, a7, a1
                  slti        s3, sp, -1831
                  and         a2, a1, t0
                  sub         s6, t4, s1
                  ori         s2, gp, -804
                  srl         a6, a6, s7
                  sra         a1, s6, s7
                  slt         t2, t2, s9
                  xor         t5, t3, s5
                  nop
                  or          t4, a3, s3
                  slli        gp, tp, 4
                  srli        sp, s9, 24
                  sra         s5, t2, ra
                  addi        gp, s10, -1272
                  xor         s1, s1, a4
                  slt         a6, s7, t6
                  and         t1, ra, a3
                  sra         a3, a6, t0
                  sltiu       s1, gp, -1668
                  or          s3, s10, a3
                  xori        a2, a0, 200
                  ori         a0, t2, -584
                  add         zero, s9, a3
                  srli        s7, t1, 29
                  sltu        zero, a2, a5
                  sltiu       a1, zero, -1117
                  sra         a2, a1, a6
                  ori         s9, sp, 836
                  srl         tp, t1, s7
                  slti        a4, a3, 1981
                  slti        zero, t4, -738
                  xor         tp, a4, a5
                  andi        s7, gp, -1170
                  xori        a1, s0, 766
                  or          zero, s9, s9
                  sub         t4, t6, s1
                  slti        a4, s5, 1721
                  lui         t6, 413234
                  and         t5, s6, t4
                  auipc       t6, 684388
                  ori         t3, s9, 101
                  xor         ra, s7, gp
                  addi        tp, gp, -1670
                  lui         zero, 584157
                  srli        s4, sp, 12
                  ori         t3, s3, 205
                  ori         t1, s10, 454
                  add         s1, ra, s2
                  srl         t2, tp, t2
                  srl         t4, s1, t5
                  srl         s1, s9, t0
                  sltiu       a1, s9, 263
                  auipc       ra, 552810
                  and         s2, t1, t6
                  lui         tp, 79830
                  srai        ra, t0, 31
                  or          t3, t3, s8
                  sub         a2, a3, s10
                  nop
                  slti        a0, ra, 976
                  srli        sp, t5, 27
                  nop
                  sltiu       a7, zero, -1705
                  sra         zero, s1, s11
                  nop
                  slti        a2, a6, -1509
                  andi        a4, a0, -1478
                  andi        t1, a6, 124
                  slti        t1, gp, 1668
                  sub         s7, a4, a0
                  nop
                  slli        zero, s4, 13
                  sra         s1, t0, s10
                  sub         s4, s6, a1
                  nop
                  xor         ra, a4, a6
                  srai        a3, s11, 26
                  add         s9, a7, t0
                  ori         s0, sp, 1093
                  add         t4, ra, s0
                  sltiu       gp, s4, 1250
                  srli        a4, s10, 18
                  sra         a3, t5, s9
                  andi        t3, sp, -1250
                  srli        a3, a3, 14
                  lui         ra, 227364
                  add         t1, t0, s6
                  lui         s4, 1016733
                  sltu        t3, s7, s0
                  slli        s9, a7, 8
                  lui         a4, 145433
                  sub         a2, sp, t4
                  sra         zero, a6, s2
                  andi        zero, t0, -325
                  sltu        a3, a4, t3
                  addi        s6, s2, -704
                  auipc       s1, 719678
                  sltiu       a6, t0, 415
                  addi        t6, t5, -156
                  slti        s7, s0, 1205
                  sll         s7, s6, t3
                  slt         t5, t3, t1
                  and         a1, s3, a7
                  ori         s5, t2, 1647
                  addi        s9, s9, 535
                  sltiu       a3, s11, -921
                  addi        zero, t4, 770
                  srai        s8, a7, 15
                  srl         t4, a3, gp
                  andi        a1, tp, -1274
                  sra         gp, a4, s11
                  lui         s8, 78267
                  nop
                  ori         t3, zero, 747
                  ori         zero, s6, -531
                  sub         t6, t3, s2
                  ori         a6, t1, -2038
                  srli        a1, a5, 19
                  srl         zero, a1, s11
                  or          t1, s4, t4
                  sltu        a4, tp, ra
                  sra         s0, s5, a0
                  xor         a2, a1, ra
                  srli        a2, a0, 18
                  sra         s4, zero, zero
                  slti        s11, sp, -1353
                  srli        s2, s7, 25
                  sll         t1, t1, s0
                  add         a0, t0, ra
                  add         zero, t1, s8
                  xori        zero, t4, -587
                  and         zero, t6, a6
                  srli        s5, s10, 14
                  sltu        t2, s6, s0
                  or          tp, ra, s6
                  ori         s4, a7, -1667
                  addi        a6, s8, 186
                  srai        zero, s2, 6
                  ori         s0, t3, -1854
                  sltu        s6, s4, a6
                  srl         t2, s10, a0
                  addi        zero, s8, -384
                  addi        a1, t6, -274
                  and         tp, s10, s6
                  slti        s3, a3, -1497
                  sra         t3, t4, tp
                  srai        s0, ra, 18
                  andi        a0, t2, 636
                  sltu        s7, t6, s3
                  and         t3, a3, s11
                  srli        a4, s11, 6
                  sltiu       sp, a0, 1052
                  xor         zero, s1, s4
                  sll         a4, s3, s11
                  sra         a6, t2, a4
                  sub         sp, a4, a1
                  sltu        zero, a6, t4
                  or          s4, t2, a1
                  lui         a4, 726983
                  slti        s9, s10, 2038
                  add         t4, sp, s8
                  slt         a7, s10, s8
                  slt         s4, s6, ra
                  auipc       a7, 881058
                  auipc       t6, 636624
                  sll         a0, s8, s2
                  slti        t3, t0, -252
                  nop
                  sll         t2, a3, t0
                  srli        t1, tp, 26
                  andi        t2, s7, 1298
                  slli        zero, a7, 19
                  srl         zero, s11, a0
                  andi        a0, s7, -2021
                  add         t2, a0, a0
                  nop
                  nop
                  slt         a1, zero, zero
                  slti        zero, a3, -1293
                  srli        a4, s5, 9
                  sub         s8, t4, t6
                  lui         s8, 718510
                  andi        a1, ra, -68
                  xori        zero, s8, -1450
                  xor         s5, gp, a0
                  add         ra, a6, a1
                  sll         t5, s2, a2
                  ori         s8, t4, -1140
                  sll         a6, a1, t1
                  nop
                  srai        a0, t2, 8
                  andi        a1, s6, -900
                  and         s8, zero, s5
                  nop
                  ori         t1, sp, -390
                  ori         zero, s0, -998
                  lui         a7, 215280
                  auipc       zero, 131505
                  srai        zero, zero, 12
                  sra         t6, a0, t2
                  sltu        a1, gp, s1
                  lui         a6, 569266
                  and         a6, a2, s8
                  sltiu       s9, gp, -317
                  nop
                  sra         ra, a5, t3
                  srl         zero, sp, t5
                  sub         zero, t6, a7
                  srai        t2, s9, 24
                  nop
                  addi        ra, a1, 165
                  or          s8, s9, t6
                  slt         s7, a6, a2
                  srli        s5, zero, 9
                  sra         t3, t0, t6
                  andi        s11, s9, -1928
                  srai        sp, a2, 24
                  srai        ra, ra, 15
                  slt         t2, a5, s4
                  addi        zero, s0, -756
                  and         s5, a1, a4
                  nop
                  and         a0, t4, sp
                  sltiu       gp, s10, 1535
                  srl         s0, t0, s7
                  sra         a4, s7, s4
                  slti        s4, a4, -1899
                  auipc       zero, 531767
                  sll         t6, ra, t5
                  addi        tp, s5, -1471
                  sra         s6, a7, tp
                  and         s4, zero, s11
                  srl         t3, a5, s8
                  auipc       s2, 950628
                  lui         s4, 814059
                  nop
                  srli        s3, s2, 2
                  slt         a3, zero, t5
                  add         t4, a7, gp
                  auipc       s4, 634126
                  slli        t6, a6, 29
                  srl         t2, t4, s11
                  xori        s9, s7, -1916
                  auipc       s2, 432228
                  andi        s8, t6, 1556
                  or          a4, t3, a7
                  sra         s1, a2, s5
                  sll         tp, t1, a6
                  srli        a4, a2, 26
                  slti        t2, a6, 411
                  sra         sp, s9, s10
                  nop
                  nop
                  sltiu       a0, a2, -291
                  sltu        s4, a6, a4
                  and         a1, a1, s1
                  sll         ra, a1, s7
                  xori        s9, s8, -919
                  xori        t1, a1, 1103
                  auipc       s3, 501046
                  addi        ra, a4, 1865
                  sra         t1, a5, a0
                  sra         zero, s10, t2
                  auipc       s8, 723734
                  and         a4, a4, s1
                  auipc       a3, 478686
                  slli        sp, t5, 11
                  sltiu       a0, a6, 1603
                  addi        a6, s1, 1672
                  nop
                  sltu        tp, s1, s11
                  slt         s9, tp, a5
                  addi        zero, s10, -33
                  sll         t6, t2, a1
                  ori         s2, s9, 942
                  xor         s11, s8, s1
                  sltu        t1, t5, t2
                  ori         a4, a4, 1196
                  and         zero, t4, s0
                  auipc       s6, 908009
                  sltiu       zero, gp, -1361
                  or          a3, t1, s3
                  addi        s11, s10, 1005
                  sltiu       s6, zero, -36
                  xor         s2, a1, a7
                  sll         zero, s4, s5
                  sltu        sp, a7, s9
                  xor         s7, s10, s7
                  srl         a7, a6, s8
                  and         zero, s8, s6
                  addi        s6, s10, 613
                  andi        s1, t6, -1626
                  srl         s7, t0, t5
                  nop
                  slti        s11, t5, -690
                  sub         s4, a0, s3
                  srl         zero, gp, t4
                  addi        a1, gp, 962
                  srli        s6, t2, 9
                  sub         a0, a5, zero
                  slt         a6, s7, a3
                  and         ra, a2, a3
                  auipc       a2, 44632
                  sltu        zero, a2, t4
                  andi        a1, t0, 568
                  and         s6, s9, s3
                  sll         s7, s0, s11
                  nop
                  srai        a1, zero, 17
                  add         s2, sp, a4
                  nop
                  slli        s5, sp, 16
                  sltiu       s5, s11, -1957
                  sltu        a0, a2, zero
                  ori         zero, a1, -1153
                  xori        zero, t5, -702
                  add         t2, t1, a7
                  lui         t4, 365946
                  add         sp, a2, s9
                  srai        t1, s5, 5
                  sltiu       s6, tp, 1885
                  sltiu       sp, a4, 1833
                  auipc       s3, 949464
                  slli        a3, s7, 13
                  sltiu       t2, a0, 1128
                  nop
                  srai        t6, a5, 5
                  xor         a7, t3, a1
                  slti        a7, s8, 1896
                  sll         s5, a1, s9
                  sub         t5, t1, s9
                  lui         ra, 450732
                  and         t6, s1, s4
                  sltu        t2, s11, tp
                  sll         s8, t6, s2
                  add         sp, a4, s6
                  srli        s7, t3, 20
                  xori        zero, s4, -1136
                  or          s8, s0, a5
                  lui         a4, 419558
                  sltiu       a2, tp, 714
                  xor         a6, s5, a2
                  slli        a4, a0, 5
                  srai        s4, s2, 7
                  slti        a7, s1, 1393
                  add         s5, t6, t6
                  or          a1, t3, ra
                  sub         a6, s2, sp
                  xor         t6, a4, s0
                  sltiu       s2, a5, 1326
                  xor         s11, s11, sp
                  srl         t5, s2, s0
                  xori        ra, s10, 703
                  sltiu       zero, s7, 1282
                  add         s8, gp, gp
                  or          s6, s2, a7
                  lui         ra, 1019173
                  and         sp, s11, tp
                  sub         t6, a5, t2
                  or          s0, a1, a3
                  addi        s8, t6, 1149
                  sra         s11, t4, s11
                  xori        s3, s11, 1988
                  ori         sp, sp, -1892
                  slti        s7, a4, 1585
                  auipc       zero, 196704
                  add         gp, t4, s0
                  srli        s6, a7, 7
                  xori        a1, a0, -2018
                  and         a0, s3, s0
                  sub         t3, s0, a7
                  xor         t2, t3, a4
                  auipc       s2, 705624
                  addi        t1, tp, -14
                  ori         gp, t3, -1917
                  slli        s0, a6, 21
                  slli        s11, s5, 16
                  slt         s4, t0, s11
                  sra         s1, s5, s1
                  slti        zero, a0, -207
                  slti        a1, t1, -1022
                  or          s7, s3, a5
                  srai        a7, t1, 20
                  xor         sp, a4, t1
                  sub         a2, tp, s1
                  ori         zero, t5, -615
                  slti        s6, s4, -1750
                  ori         t6, s11, 800
                  sltiu       s6, s4, 1207
                  slti        a2, t6, 1896
                  slt         a1, zero, a7
                  srai        a0, s8, 29
                  addi        s9, s0, 989
                  add         t6, s6, s10
                  or          a0, a2, t1
                  lui         s6, 186619
                  add         s2, s5, s11
                  srli        a2, s6, 14
                  auipc       zero, 245971
                  and         s2, zero, s2
                  slli        t4, t2, 21
                  addi        zero, s2, 1810
                  ori         a4, a1, 343
                  slli        tp, s8, 12
                  srli        sp, s10, 9
                  srli        zero, s0, 29
                  srli        gp, gp, 16
                  ori         sp, a6, 542
                  slt         s7, t3, a4
                  slti        t6, s2, 1607
                  addi        ra, s2, -697
                  sltiu       t4, s2, 1661
                  nop
                  sltu        a7, s6, tp
                  sra         s7, zero, s7
                  sltiu       s8, sp, 53
                  sll         tp, s6, s9
                  slli        s2, s11, 21
                  slt         a4, s4, a5
                  ori         s8, s4, 1606
                  lui         tp, 52288
                  sub         tp, s10, tp
                  slt         s9, t5, s8
                  or          zero, t1, a7
                  and         s5, t1, t4
                  lui         t5, 123760
                  lui         a6, 641774
                  xori        s9, s3, 1023
                  nop
                  lui         gp, 349853
                  srl         a1, t3, zero
                  slli        t6, tp, 9
                  srl         a7, s5, s9
                  srli        t2, a3, 28
                  and         a4, t2, a7
                  slli        zero, t2, 1
                  srli        a4, s8, 3
                  slti        gp, ra, -1653
                  slti        s3, a0, -2036
                  sll         t4, t1, sp
                  slli        a0, t2, 3
                  srli        tp, t2, 30
                  slt         a2, t4, gp
                  slli        ra, t0, 14
                  sra         s4, t0, sp
                  andi        s5, s3, -815
                  slli        gp, gp, 23
                  srli        t1, s1, 26
                  auipc       t5, 853015
                  and         s9, s5, gp
                  xor         t5, gp, s7
                  auipc       s7, 428632
                  sub         s2, s5, s5
                  srli        a4, s8, 15
                  or          t4, t3, s6
                  andi        t2, a7, 1907
                  ori         t5, s4, 137
                  andi        s6, s1, 883
                  srai        zero, t2, 11
                  or          s9, t0, t0
                  slti        a1, s4, -55
                  and         s6, s9, t6
                  srli        zero, a1, 6
                  and         t4, tp, s2
                  slti        s9, tp, 2015
                  and         zero, s8, a7
                  sra         t1, s5, s11
                  srli        a6, zero, 18
                  slli        a4, s1, 0
                  sltu        a7, gp, a4
                  sll         t3, tp, s11
                  slt         a6, s0, gp
                  ori         a6, s10, -573
                  ori         s3, a0, 703
                  addi        a6, zero, 305
                  nop
                  xori        s0, a0, -1679
                  ori         s3, s10, 906
                  nop
                  and         zero, gp, t0
                  sra         a7, s7, t1
                  sra         t3, t4, a6
                  sll         t4, a2, s8
                  and         t3, a5, t6
                  and         zero, a0, s10
                  srli        t4, sp, 28
                  slti        t6, a1, -1411
                  slti        a1, gp, 1462
                  sll         t4, a6, t3
                  srai        zero, s1, 11
                  xor         s3, s5, a1
                  and         s1, a2, s3
                  xori        s8, s11, -62
                  slt         tp, t3, a1
                  sra         s9, tp, sp
                  slti        s3, zero, 469
                  sll         s11, t3, s10
                  srai        zero, sp, 15
                  slti        t4, t5, 1677
                  or          zero, gp, s11
                  xori        a0, t6, -1807
                  xor         zero, gp, a3
                  xori        tp, s0, -2036
                  srl         s1, a4, a7
                  ori         s2, a5, 842
                  lui         gp, 518046
                  sll         ra, s0, s0
                  addi        s8, a1, 1151
                  slli        zero, a2, 26
                  sltu        zero, a4, a3
                  lui         s3, 899890
                  xori        a6, s7, 814
                  xor         sp, s8, s0
                  sll         s3, s3, s3
                  slt         t5, s6, a3
                  sra         s6, a3, gp
                  srli        zero, s6, 12
                  slli        t6, t6, 20
                  srl         t4, a3, ra
                  add         t4, a5, s0
                  srl         zero, s0, a2
                  srl         s0, t6, t3
                  lui         sp, 79529
                  xori        t6, zero, 64
                  srl         a7, ra, tp
                  sra         zero, s1, ra
                  sltu        s11, a0, a2
                  srli        s11, s10, 9
                  lui         s7, 398617
                  xori        t1, s8, -1048
                  ori         zero, t2, -1253
                  xor         t1, t0, t3
                  sll         zero, a0, t5
                  auipc       s9, 555374
                  xor         a0, t5, t0
                  add         t5, s9, t3
                  srli        s1, s1, 9
                  xori        sp, s7, -1447
                  xori        a7, s5, -1686
                  sltu        s4, s10, s11
                  xori        t1, t5, 826
                  sub         s8, a0, t5
                  slt         a0, t1, t4
                  sltiu       a1, s11, 1078
                  sll         a3, t3, s3
                  srli        a2, a0, 25
                  ori         t5, a4, 893
                  or          s5, s5, a7
                  lui         t4, 60622
                  sub         s6, s10, s10
                  auipc       s2, 126433
                  sll         a0, s8, s0
                  lui         t2, 874263
                  addi        s11, t1, -1574
                  addi        t3, t1, 1990
                  xori        t3, s11, 866
                  srai        gp, t1, 30
                  or          tp, s7, t4
                  srli        a7, a1, 21
                  nop
                  sub         s7, t0, a0
                  slti        s4, s10, -1635
                  srai        t1, s2, 25
                  slt         s2, s3, a3
                  auipc       zero, 380615
                  and         a2, s9, t5
                  slti        s6, s6, 1332
                  sltiu       zero, s4, 1145
                  addi        zero, s1, 1919
                  srl         s1, s10, sp
                  srl         s2, a6, a7
                  ori         a0, a5, -725
                  slt         s3, a7, a4
                  sltiu       a1, t5, -2047
                  xor         s5, s3, zero
                  slti        a2, s4, 539
                  xori        s3, t2, -1975
                  sub         tp, t6, s9
                  and         s8, s10, s11
                  srai        zero, a0, 3
                  xori        s3, a0, 496
                  srli        t1, s1, 28
                  sll         s1, t3, s9
                  nop
                  sub         t1, s10, a7
                  slli        t6, t3, 2
                  add         t4, a0, a4
                  sra         t4, t5, a0
                  slti        t1, sp, -398
                  addi        t1, s11, -1945
                  slli        a0, s8, 0
                  slti        s9, t6, -309
                  ori         s8, gp, -739
                  xor         t4, s2, t3
                  srai        s7, s7, 29
                  sltiu       s3, a7, 76
                  or          zero, a6, zero
                  xori        a3, a0, -1006
                  or          a1, s3, s3
                  srli        s4, t4, 30
                  auipc       s11, 225666
                  slli        gp, tp, 31
                  sra         t5, gp, s7
                  sll         gp, t4, s1
                  srli        s11, s1, 26
                  srl         a0, tp, a2
                  srai        s8, t1, 10
                  lui         s7, 158581
                  ori         t1, zero, -485
                  addi        s5, a6, 1401
                  or          s7, s3, sp
                  ori         a3, s9, -591
                  slli        zero, s3, 30
                  srai        a6, t5, 5
                  sltu        zero, a2, a4
                  add         s8, a3, s4
                  sltu        a4, t6, s2
                  nop
                  srl         zero, s7, a5
                  slli        tp, a2, 27
                  xori        ra, t1, -1629
                  and         zero, a7, s2
                  auipc       a0, 324596
                  auipc       a4, 216407
                  srl         s7, a3, t1
                  xor         a6, t1, t3
                  or          a2, sp, t6
                  ori         t1, zero, 761
                  sll         t5, a2, a4
                  add         s7, t6, t4
                  lui         s6, 877270
                  sll         sp, t2, a4
                  add         t2, a3, s10
                  add         zero, a7, s8
                  add         s5, s0, ra
                  nop
                  sltu        s7, s3, s8
                  sll         a2, s10, t1
                  addi        t6, a6, -702
                  slli        sp, s7, 19
                  lui         a6, 310980
                  srli        tp, tp, 24
                  or          a7, t4, ra
                  sub         ra, zero, a2
                  slli        a4, t5, 31
                  srl         gp, a6, ra
                  xori        t6, s3, 960
                  slli        zero, s10, 4
                  addi        s8, s1, 1301
                  or          a7, t3, t0
                  lui         s2, 919554
                  slt         s8, s4, a7
                  srl         s5, t4, s0
                  nop
                  ori         t2, a0, -1524
                  slti        s6, s0, 1593
                  srl         t3, t3, gp
                  xori        t4, ra, 1052
                  and         a4, a4, s1
                  srli        ra, s0, 17
                  sll         a2, a2, s11
                  andi        a2, a1, 561
                  slti        gp, a0, 827
                  add         zero, t1, s7
                  srai        a7, s5, 30
                  lui         sp, 265268
                  srl         s1, ra, t2
                  sub         a3, s2, gp
                  nop
                  xor         zero, s5, s5
                  nop
                  sll         a2, s6, tp
                  srli        s11, a5, 15
                  andi        zero, t4, 934
                  nop
                  srai        s2, ra, 6
                  sra         s8, a6, t0
                  xori        s9, a4, 417
                  slti        s9, a0, 1462
                  lui         zero, 826592
                  srai        ra, s11, 31
                  sltiu       t3, s4, -1757
                  xor         a6, a7, a1
                  sra         a1, s5, t1
                  ori         s7, t5, -1498
                  xor         zero, s5, sp
                  srl         gp, a6, s11
                  srai        gp, s0, 2
                  addi        s3, a0, -772
                  auipc       tp, 887439
                  sltu        zero, ra, t2
                  andi        tp, a4, 685
                  slti        zero, s4, -219
                  sra         gp, s2, t5
                  xor         s1, s10, s4
                  srl         s6, s9, sp
                  srli        t6, a0, 14
                  ori         ra, s3, -675
                  and         s4, s7, t4
                  andi        s4, t0, 72
                  xor         s1, s9, s1
                  srai        a3, a1, 3
                  sll         zero, a1, s6
                  lui         s2, 311753
                  sub         a0, t5, a4
                  andi        a2, t6, -1267
                  slli        t3, s9, 15
                  srl         s9, a2, tp
                  srai        a0, a3, 17
                  slti        a1, s8, 1285
                  srai        ra, gp, 3
                  addi        t6, t2, 688
                  nop
                  sll         s8, sp, t6
                  sll         zero, a4, s7
                  or          ra, gp, s2
                  andi        zero, s0, -1809
                  ori         s4, a6, -53
                  andi        s8, a0, 252
                  ori         a4, s7, -1019
                  xor         zero, t3, s1
                  and         tp, a7, a3
                  lui         a6, 456932
                  sltiu       t3, t2, 398
                  srli        zero, s6, 12
                  slt         s2, s6, s11
                  sra         tp, a6, ra
                  sltiu       t1, s7, -2043
                  slli        t1, t4, 30
                  sub         zero, t0, a2
                  sub         s9, t3, t0
                  or          a1, t1, s7
                  xori        sp, s6, -1912
                  sltiu       tp, s1, -605
                  sub         t1, s8, sp
                  andi        t1, s8, -276
                  lui         a1, 535548
                  slt         a4, s3, t5
                  sra         t2, s3, t6
                  sltu        zero, s10, a4
                  xor         a3, s6, a4
                  xori        s0, tp, 863
                  and         s3, s8, s9
                  nop
                  sub         s1, t6, t5
                  auipc       s11, 225137
                  srl         t1, a2, s8
                  lui         a6, 994775
                  auipc       gp, 237786
                  ori         a2, a1, 1616
                  sra         t3, a2, s5
                  sll         a4, t4, s11
                  auipc       s2, 12503
                  auipc       s4, 360336
                  slt         a3, t2, a7
                  srli        s2, a4, 26
                  sltu        s6, s0, gp
                  srai        s3, s7, 0
                  slt         t1, t1, s4
                  sll         ra, a3, t3
                  srai        zero, s4, 14
                  sltu        zero, a6, t0
                  srli        s6, s7, 4
                  slli        t2, s4, 12
                  sub         t6, t4, s9
                  slt         a3, s5, s5
                  ori         a2, zero, 6
                  xor         a4, a3, s8
                  addi        t3, sp, -528
                  sltiu       s5, a6, 1640
                  sll         s5, a1, s7
                  add         s5, zero, s10
                  nop
                  lui         t1, 896468
                  xor         zero, ra, a5
                  andi        ra, a3, -1777
                  andi        a2, a3, -332
                  sltu        t1, a0, s3
                  nop
                  addi        t6, a3, 1647
                  add         a4, s0, s10
                  ori         ra, t3, 1637
                  sltu        zero, t6, s8
                  slli        a1, a5, 18
                  sub         a6, t4, a7
                  or          s9, a5, t1
                  sra         s3, s1, a6
                  auipc       s8, 139854
                  auipc       zero, 460912
                  auipc       t1, 665983
                  sll         zero, t0, ra
                  srai        s7, a4, 2
                  add         t1, t2, t4
                  srli        s8, a5, 18
                  srl         s3, s7, a4
                  xori        s5, a7, 352
                  slt         a6, s9, a4
                  nop
                  or          a2, t5, gp
                  nop
                  andi        s5, a7, 1842
                  srl         a1, s6, s3
                  xori        t2, s6, 148
                  sll         t2, sp, a0
                  or          a2, tp, s3
                  addi        a6, s6, -1480
                  srai        a0, s4, 19
                  ori         a6, a5, 1336
                  auipc       t6, 1004134
                  add         s8, t2, tp
                  add         t3, t0, s11
                  sltu        tp, gp, s6
                  nop
                  lui         t6, 707815
                  xor         a2, s11, gp
                  slt         ra, t1, s11
                  andi        a1, a2, 1166
                  add         tp, t6, s7
                  sra         t3, s2, a7
                  srli        s8, ra, 9
                  xori        a1, s7, -1852
                  xor         s9, tp, t5
                  srli        zero, s8, 10
                  add         t2, s5, s3
                  ori         zero, s1, -1149
                  ori         t6, s9, 588
                  and         s0, t3, t4
                  sltiu       s6, s5, 1322
                  nop
                  andi        s11, s11, -1932
                  ori         s2, t4, 1977
                  sll         ra, a3, s3
                  add         a6, s0, s2
                  srl         zero, t4, s7
                  or          s8, t2, t4
                  srl         s7, t5, sp
                  sll         a3, t2, a5
                  auipc       a6, 464532
                  or          s2, t3, s5
                  ori         zero, s9, -116
                  srl         s0, a3, t0
                  or          s1, s11, s0
                  sub         a0, a5, a0
                  add         t4, t0, s4
                  srl         a0, t1, a1
                  lui         s5, 396859
                  andi        t6, s5, 2003
                  slli        s5, t5, 5
                  or          s0, s11, a1
                  srl         s1, t0, s5
                  sltu        t2, a1, s11
                  slt         t6, s1, a3
                  auipc       t1, 772443
                  sltiu       a7, s7, -655
                  srli        zero, t3, 20
                  nop
                  addi        a6, zero, 1448
                  addi        a2, t6, -1533
                  sltiu       s0, s3, -1385
                  sra         s8, a6, s11
                  sra         s7, s10, a1
                  add         s8, s1, s4
                  auipc       t6, 689917
                  addi        a1, s2, 424
                  auipc       t1, 876169
                  ori         s1, t2, -1034
                  slt         s0, s0, a3
                  auipc       a2, 734374
                  ori         a2, t1, 1804
                  slli        s8, s3, 9
                  slli        a4, gp, 17
                  sub         s11, s6, a0
                  srai        a2, t3, 0
                  addi        s6, s1, 1620
                  srl         s9, a4, s9
                  srl         t1, a1, t1
                  xor         t4, zero, t4
                  andi        sp, s5, 1261
                  sll         a0, tp, t2
                  slli        a0, s0, 19
                  and         t4, gp, zero
                  ori         s2, s9, -1471
                  auipc       a4, 304177
                  or          s0, s6, s6
                  sltiu       a6, s10, -281
                  slti        s3, a5, 529
                  auipc       t5, 647417
                  andi        s7, t2, 439
                  sltiu       a1, s2, 1192
                  auipc       zero, 358369
                  add         t4, a1, t0
                  slti        t4, sp, -1422
                  and         s8, s0, t6
                  slli        gp, sp, 16
                  andi        t1, a7, -224
                  xor         zero, sp, t6
                  addi        zero, a6, -61
                  or          zero, a6, gp
                  lui         s1, 935675
                  srai        t5, t2, 10
                  sltiu       s4, a3, 801
                  nop
                  add         gp, a6, s11
                  slti        zero, s2, -616
                  nop
                  sra         t2, a1, gp
                  sltu        zero, a1, a0
                  sll         s5, a2, s7
                  slt         s9, s0, s9
                  xori        s7, a5, -62
                  sltu        s0, t3, t6
                  sll         a3, sp, s5
                  sub         a7, s4, zero
                  srli        a6, a2, 12
                  or          a3, t4, s0
                  xori        zero, s3, -782
                  xor         t5, s11, a6
                  srai        s5, t0, 20
                  ori         t2, s8, 465
                  ori         t1, s9, 647
                  auipc       zero, 175760
                  srai        tp, s9, 12
                  sra         a2, s7, s1
                  or          zero, zero, t2
                  andi        s9, s6, -1732
                  srl         t3, a7, t6
                  sra         s9, s9, gp
                  ori         t1, t0, -1429
                  xor         t3, t6, a5
                  auipc       a1, 60589
                  xor         zero, s0, a4
                  add         t6, t2, a3
                  andi        zero, t0, -1364
                  sub         tp, t1, t2
                  nop
                  sltu        zero, t2, s3
                  xor         a6, t6, a1
                  xori        t4, a0, 1971
                  slt         a3, a5, gp
                  slti        t5, s4, -910
                  srl         zero, ra, a0
                  sltiu       s0, ra, -204
                  sltiu       t2, ra, -1053
                  xor         t2, gp, a6
                  srl         a3, s9, s5
                  slli        a3, s8, 2
                  nop
                  srli        s8, t0, 16
                  srl         a2, a1, a7
                  ori         ra, t2, -1862
                  sra         s2, s5, s4
                  sltiu       a2, t6, 1907
                  add         s4, t6, a1
                  sll         s1, t3, s8
                  ori         gp, t2, 1765
                  add         s5, a3, t3
                  and         sp, a5, tp
                  slli        s8, ra, 28
                  addi        sp, s2, -45
                  xori        s3, s11, -1573
                  srl         s1, t1, gp
                  auipc       a0, 921829
                  srl         s3, s3, t2
                  add         a2, s7, sp
                  addi        a3, t6, 328
                  sll         a4, s11, s8
                  xor         s1, s2, a1
                  srli        a1, s0, 12
                  ori         sp, sp, 843
                  sltiu       a3, ra, 1231
                  xor         s6, t5, s10
                  sub         t3, a6, t3
                  addi        a0, tp, -511
                  auipc       a7, 774177
                  add         a7, t0, s0
                  and         a6, t4, s8
                  sltiu       a4, t3, 1506
                  addi        sp, s6, -19
                  sra         s9, gp, sp
                  or          a4, a7, s11
                  nop
                  slti        s7, t4, -1638
                  sub         zero, t4, s1
                  or          a0, a1, a2
                  sra         s9, t3, s8
                  sra         zero, t2, a6
                  srai        a2, s7, 19
                  srai        s5, t5, 2
                  srai        zero, gp, 31
                  srai        zero, t2, 10
                  and         t4, zero, a5
                  sub         t1, t2, s8
                  sltu        s8, a2, t4
                  srl         t4, a6, t0
                  addi        s5, t4, 1412
                  sll         zero, s9, s9
                  nop
                  slli        s2, s1, 25
                  sll         s1, s9, a1
                  xor         s0, s10, a2
                  sra         zero, t3, s7
                  slli        s9, s3, 0
                  sltu        zero, a5, t5
                  addi        s9, s0, 263
                  auipc       t4, 709430
                  auipc       t4, 235084
                  srai        s4, s0, 15
                  andi        t1, s0, -602
                  or          s0, a7, s2
                  slti        t6, s3, 281
                  sll         ra, t0, a0
                  slt         s7, s6, s10
                  addi        a3, t0, 216
                  sra         gp, t0, s7
                  ori         s8, s10, -1394
                  sub         s6, s6, s8
                  sltu        s2, tp, a1
                  sltu        tp, s4, a2
                  sltiu       s0, a6, 1823
                  ori         a6, s1, -1440
                  or          a6, s6, t4
                  sltu        s7, s6, t3
                  addi        t1, t2, 1199
                  addi        s5, gp, 801
                  sltiu       t4, s10, -225
                  nop
                  srl         a6, s5, s0
                  lui         a3, 180943
                  srai        t5, a1, 6
                  sra         s5, a4, a0
                  lui         tp, 261273
                  slti        a0, s1, 1579
                  add         s5, t1, s11
                  srli        s4, a4, 5
                  sltu        t3, a0, sp
                  nop
                  slti        t2, gp, -230
                  ori         zero, a6, -1610
                  add         s8, t0, s11
                  ori         s0, s7, 1267
                  srai        s5, tp, 7
                  slt         a6, t0, t0
                  andi        s1, t1, 1608
                  sll         ra, t4, t6
                  sltu        gp, t6, a0
                  slt         t2, a5, s11
                  sra         s0, t1, a7
                  ori         tp, a0, 1176
                  sltiu       t1, s2, 126
                  sltiu       s3, s0, -946
                  slti        a0, a6, -1327
                  srl         zero, s6, t0
                  or          gp, t1, s8
                  sll         t1, s6, a2
                  slt         zero, s11, s1
                  sltu        t4, t5, s7
                  slti        s4, s2, 1191
                  sll         s0, s2, s2
                  sra         s4, a3, t4
                  addi        gp, t0, 884
                  srai        a4, s10, 10
                  slti        t3, t6, -581
                  nop
                  slti        tp, t3, 1261
                  sll         t5, t6, s1
                  sltiu       s9, s0, -111
                  sltiu       s3, a3, 1571
                  srl         zero, sp, s5
                  xori        s11, a1, 64
                  slt         t1, sp, s1
                  nop
                  ori         s2, s1, 752
                  and         s8, a7, s0
                  sll         t6, a5, s3
                  add         zero, s10, t6
                  nop
                  or          s5, s1, a7
                  addi        tp, s7, -957
                  addi        s5, gp, -387
                  slli        t5, s9, 14
                  slli        s6, t0, 29
                  sltiu       a4, s2, -1383
                  xor         s1, a2, t4
                  slti        t6, a1, -536
                  srai        a7, t2, 7
                  srl         s9, t4, t4
                  xor         s0, ra, a4
                  slt         s3, a1, s1
                  srl         a2, s5, s5
                  lui         s3, 231074
                  slt         t2, tp, t6
                  xor         s11, tp, s8
                  sll         s1, t3, s7
                  add         s6, gp, a1
                  and         t5, s8, s0
                  sltiu       a2, a2, -1824
                  slt         zero, a3, t3
                  sltiu       a6, t4, 345
                  auipc       t2, 154677
                  sll         a1, s2, s0
                  sll         s8, t5, a4
                  xori        t6, sp, -1610
                  lui         zero, 724643
                  slli        a2, a0, 23
                  addi        t1, t6, 1014
                  sltu        a1, a2, a3
                  ori         s7, a2, 1518
                  srl         zero, ra, s0
                  sltu        t3, s5, s5
                  addi        zero, s5, -2025
                  sra         s3, s8, zero
                  slt         a3, t0, t3
                  sltu        s11, a3, a6
                  andi        a3, s9, -1126
                  sra         zero, a3, s2
                  and         a6, sp, t2
                  auipc       tp, 667344
                  sub         tp, a6, s5
                  auipc       tp, 1027933
                  and         s2, t4, s6
                  srl         s8, s5, s10
                  andi        a4, t1, -546
                  srai        a4, s10, 12
                  lui         gp, 869867
                  andi        s11, a0, 1541
                  and         s9, t6, a7
                  ori         sp, s3, 558
                  slt         a1, t3, zero
                  andi        zero, s2, -1689
                  sra         a2, a0, s3
                  srl         s2, s3, t6
                  nop
                  or          t3, s7, a6
                  sltiu       zero, a6, -620
                  sub         a2, sp, a7
                  add         a4, s1, a0
                  sll         s4, s3, t1
                  sltiu       s0, t3, 1767
                  sltu        a1, gp, s10
                  sub         s6, t6, s9
                  lui         s5, 703005
                  nop
                  slti        a1, s3, 220
                  xor         t2, s3, s4
                  srli        s6, t4, 7
                  srai        s0, s2, 12
                  add         gp, s8, s8
                  xori        zero, s6, 1308
                  slt         s1, ra, s2
                  xori        t6, s10, 311
                  srl         s7, t1, s7
                  add         gp, t1, t4
                  add         s3, t2, s10
                  sra         s5, t5, tp
                  xor         s7, tp, t4
                  auipc       t6, 676435
                  srl         s6, t6, s5
                  andi        gp, s3, -293
                  sub         s2, a1, zero
                  nop
                  ori         a4, a6, -1457
                  nop
                  slli        s7, s8, 23
                  slt         s0, t5, zero
                  ori         s8, s7, -142
                  and         s6, s2, t3
                  sub         s4, s8, s1
                  nop
                  and         s2, s6, t3
                  sub         a3, zero, s4
                  srli        a1, a3, 1
                  sra         zero, a7, t3
                  ori         zero, a5, -1839
                  ori         t1, t0, -214
                  or          s11, s8, ra
                  slt         s2, t3, zero
                  add         s9, s11, s0
                  srai        a7, t6, 18
                  or          a1, sp, t0
                  sll         a4, s3, s2
                  xori        a0, a3, -376
                  xor         ra, a6, s0
                  slt         tp, t2, s6
                  srai        a6, sp, 30
                  nop
                  add         a6, s3, s0
                  sub         s11, a6, zero
                  or          ra, t4, a7
                  sra         s7, s8, a3
                  and         s5, sp, a0
                  and         t4, t6, s10
                  xori        tp, gp, 1661
                  and         t4, s6, a4
                  srli        s6, a6, 7
                  sll         s7, s5, t1
                  srl         s8, s6, a4
                  sltiu       s3, s9, -197
                  slt         t2, a5, a5
                  srli        s0, s3, 14
                  lui         sp, 802948
                  slti        t6, t6, 825
                  sub         a2, tp, a0
                  sltu        sp, s6, a5
                  andi        s9, s11, -1261
                  or          zero, tp, gp
                  and         t2, a3, t5
                  sltu        s2, ra, s5
                  sltu        s4, a3, a5
                  sltiu       s7, ra, -1522
                  sltu        a7, s7, t3
                  addi        a1, s11, -1054
                  nop
                  srli        t2, s8, 17
                  and         a1, sp, t1
                  ori         ra, s7, 1452
                  sub         s1, a2, t1
                  nop
                  add         t2, a6, s9
                  sra         t4, t3, t1
                  srli        a3, s7, 13
                  srli        zero, tp, 26
                  sll         s1, ra, s3
                  slt         s11, s0, s1
                  and         s8, a7, s10
                  auipc       ra, 61630
                  sll         s1, sp, t1
                  srl         a3, s11, gp
                  nop
                  slt         t1, t4, s5
                  andi        a3, s11, -1442
                  lui         sp, 721000
                  andi        t3, a0, -1582
                  srl         a0, s8, zero
                  addi        a7, s0, 1348
                  srai        zero, t0, 5
                  sra         zero, sp, s1
                  and         t5, a3, a1
                  xori        zero, a7, -1313
                  sltiu       t1, s4, 723
                  xori        sp, s8, -1662
                  sll         t5, tp, a5
                  srli        gp, a0, 10
                  nop
                  andi        s8, s9, 323
                  nop
                  slt         zero, t1, a0
                  srai        t3, s6, 2
                  slt         s7, t5, t1
                  auipc       s11, 574877
                  sra         zero, s1, ra
                  ori         zero, zero, 817
                  add         zero, s4, sp
                  srli        s0, s4, 14
                  slti        s9, t2, 422
                  sltiu       t1, sp, 857
                  sltiu       s8, a5, -1531
                  slt         s7, s10, t3
                  sll         s5, s9, s2
                  ori         ra, sp, 1119
                  or          ra, a6, a1
                  slli        s8, s0, 11
                  lui         t6, 731647
                  xori        gp, t4, 1367
                  slti        a0, a6, -900
                  add         zero, a4, t4
                  or          s3, s7, a1
                  sll         t6, sp, a3
                  slti        s4, s0, -1163
                  sra         a0, t4, s6
                  xori        t1, t4, -471
                  or          s5, a0, s0
                  ori         t4, t5, 996
                  sll         zero, s9, a2
                  sub         sp, s7, s8
                  nop
                  slli        a7, t0, 12
                  andi        zero, a0, 35
                  nop
                  add         s4, s7, zero
                  andi        a7, s4, 86
                  sltu        a0, a1, s10
                  srli        s3, t5, 10
                  addi        a2, zero, 1138
                  auipc       s1, 360838
                  sltu        zero, s9, s1
                  sltiu       t4, a1, -3
                  lui         a4, 47409
                  addi        s11, s11, 1020
                  slt         sp, s4, a5
                  lui         s5, 644801
                  lui         zero, 228095
                  sltu        s6, t6, s8
                  sll         s0, t5, a0
                  sltu        s5, s1, a4
                  sltu        a4, s0, t5
                  xor         t1, s7, zero
                  sltu        s5, tp, s8
                  lui         t5, 562124
                  addi        a4, a4, -2040
                  auipc       a3, 369222
                  xor         t5, t0, ra
                  nop
                  lui         a0, 41605
                  addi        t2, tp, -197
                  sub         t4, t6, s8
                  srl         s8, s3, a7
                  sub         s9, zero, t4
                  slli        s11, s1, 21
                  sll         s7, s1, gp
                  and         zero, s2, a7
                  srl         s11, a0, t4
                  slt         a6, s10, t6
                  or          gp, s3, s3
                  xori        zero, sp, -1740
                  andi        t4, s5, 800
                  sll         zero, a5, a1
                  srai        t3, a6, 14
                  sra         a1, t4, a3
                  and         tp, s11, s7
                  slti        t4, zero, 135
                  addi        t4, t0, -749
                  and         s1, s4, tp
                  or          s9, s5, s1
                  slti        zero, s10, 1473
                  sltiu       t2, s9, 1926
                  addi        a2, s11, 1200
                  add         sp, a2, ra
                  sltu        s1, a2, a6
                  sll         t6, s0, s1
                  slt         s11, t2, a7
                  auipc       s8, 506865
                  sltiu       s3, s8, 1827
                  sll         ra, a2, a2
                  ori         a4, s3, 235
                  srai        s8, a1, 22
                  srai        t3, s9, 12
                  srai        s4, t4, 29
                  sra         a1, sp, a7
                  slt         s2, s10, tp
                  srai        s0, a2, 29
                  nop
                  and         s7, zero, a0
                  or          a6, a0, s11
                  andi        s1, t0, 26
                  auipc       sp, 324114
                  addi        a4, t6, -416
                  slli        t6, t6, 31
                  sub         s0, s5, sp
                  ori         s6, a5, -1358
                  or          t2, s7, t3
                  sub         zero, a0, s0
                  andi        s0, gp, 1867
                  sltu        s8, a2, a4
                  and         s9, ra, a0
                  ori         s6, t4, 1386
                  sltu        s7, zero, s10
                  srai        s6, zero, 25
                  auipc       zero, 215405
                  ori         zero, t1, 434
                  add         t3, a6, s7
                  addi        ra, t3, 542
                  sra         t4, s8, s8
                  sltiu       a0, a6, -386
                  sub         a6, t5, t0
                  ori         a3, a6, 1726
                  ori         t6, s7, -159
                  andi        a3, ra, 415
                  sltu        s0, s5, t5
                  slti        s6, a2, -1128
                  srai        s0, s7, 22
                  lui         s3, 776035
                  lui         ra, 5603
                  andi        s0, sp, -277
                  auipc       a3, 154959
                  slti        t6, tp, -1584
                  add         t1, t2, zero
                  auipc       s9, 138503
                  and         s6, s7, ra
                  slti        s1, a6, -433
                  srl         s6, a4, s11
                  xori        ra, a1, -13
                  srl         t6, t4, s5
                  sltu        zero, s1, a5
                  ori         s6, s2, 1344
                  nop
                  srli        s9, t4, 14
                  andi        a1, s4, 1976
                  sll         a1, t1, a7
                  andi        tp, s5, 1621
                  andi        zero, a2, 1947
                  or          a2, a0, a7
                  sub         a3, zero, zero
                  sll         zero, t0, a2
                  xor         s2, s2, a5
                  srli        a2, ra, 1
                  sltiu       a6, t0, -533
                  xor         t6, s3, s2
                  lui         s5, 158357
                  addi        zero, s2, -1314
                  sra         s11, t1, t6
                  slli        s3, t6, 8
                  srai        s9, s10, 8
                  slt         t2, zero, a0
                  slt         sp, t3, a1
                  sltiu       zero, zero, -1684
                  xor         s8, t3, t3
                  or          s9, s6, s9
                  slt         s9, a0, t5
                  srli        zero, t3, 21
                  auipc       s7, 386691
                  srli        t1, a1, 3
                  srl         a4, a0, s2
                  auipc       t5, 698655
                  sltiu       s5, t5, -643
                  srai        s9, t2, 11
                  lui         a6, 571367
                  addi        s8, gp, 1000
                  auipc       t4, 920935
                  and         s1, s6, t4
                  auipc       t4, 575598
                  or          t6, a0, t2
                  srli        a2, s1, 29
                  addi        ra, ra, -599
                  sltiu       s2, t2, -1667
                  lui         s4, 815465
                  nop
                  sltiu       t5, s5, -1851
                  sra         a1, s5, ra
                  xori        s6, gp, -609
                  slt         ra, tp, a5
                  nop
                  xor         zero, t5, t2
                  srai        s11, s9, 7
                  slti        s5, gp, -18
                  sll         s4, a5, s1
                  auipc       a2, 203543
                  slti        a7, a6, -15
                  addi        s2, s1, 35
                  addi        s5, a5, -1246
                  andi        zero, s9, -893
                  srai        t6, s9, 13
                  sltu        s2, t1, tp
                  and         a1, a2, a6
                  and         t3, s9, s0
                  srai        s4, s5, 8
                  or          t6, t3, a1
                  or          s3, a6, tp
                  srl         a7, zero, s1
                  add         s6, s7, zero
                  slti        s5, s9, 225
                  srl         ra, s6, t3
                  nop
                  and         s11, a5, s1
                  xor         a1, t5, a7
                  srl         a4, a5, t5
                  slli        s3, t6, 16
                  sltiu       s7, s11, -1580
                  andi        t5, a0, -1579
                  or          a3, s2, a1
                  srl         a0, s4, tp
                  and         s7, ra, a2
                  add         t1, t5, s0
                  and         s6, tp, s1
                  andi        s5, s8, -1205
                  sll         t6, t4, s11
                  slli        zero, ra, 24
                  xor         s4, s4, s4
                  xor         gp, zero, zero
                  or          zero, s10, t1
                  sltu        t1, s9, sp
                  sltiu       s6, gp, 1666
                  srli        gp, s4, 11
                  or          zero, a7, t6
                  lui         s1, 988974
                  ori         tp, a4, -1408
                  sltu        s3, s6, a4
                  sll         zero, tp, t4
                  srai        s1, t4, 23
                  slti        s3, s2, -1637
                  sll         zero, s4, sp
                  or          zero, ra, t3
                  lui         s3, 529472
                  auipc       t6, 673124
                  and         a6, s10, tp
                  srli        a6, a2, 5
                  auipc       a7, 312668
                  sra         s3, s6, t2
                  addi        s1, s9, 827
                  add         zero, zero, s5
                  xor         s2, a5, t3
                  sltu        s0, a5, tp
                  andi        a2, a5, 967
                  nop
                  slli        s9, t1, 15
                  xori        a3, gp, 1608
                  sltiu       s5, tp, -1791
                  andi        sp, a6, -1917
                  xor         a6, zero, a4
                  sltu        a0, a1, t6
                  lui         t6, 230985
                  xori        a3, s2, -98
                  srl         t1, s1, a2
                  xor         t6, a5, a6
                  sll         t4, s9, ra
                  sltiu       a4, t0, -271
                  or          t5, t2, a7
                  ori         a0, s11, -210
                  lui         s7, 410000
                  sll         s4, s8, s6
                  xor         s4, a0, s0
                  addi        zero, a6, 1922
                  auipc       a4, 563142
                  auipc       gp, 322259
                  srai        a3, a3, 0
                  slti        ra, a5, -1051
                  sltu        gp, t1, s1
                  addi        s5, s4, -1238
                  sltiu       s9, t5, 1105
                  sll         a2, t3, ra
                  slt         s9, t1, t0
                  slti        t2, s1, 1408
                  slti        s3, t0, -1457
                  srli        s6, s1, 1
                  slli        sp, a6, 9
                  add         s11, s11, s10
                  sltiu       a4, a5, -1397
                  srl         a4, s5, t6
                  slli        t4, t4, 27
                  ori         s6, s5, -1991
                  and         zero, a7, a4
                  slti        t2, a2, -376
                  sltiu       a7, s10, 64
                  slt         t1, s10, zero
                  xori        a3, s6, -144
                  sltiu       t1, sp, -1524
                  slt         sp, s3, s10
                  srli        tp, a7, 12
                  slli        s3, a5, 23
                  xori        a0, sp, 1360
                  xor         a6, tp, s1
                  srli        s5, s6, 9
                  auipc       s2, 151891
                  addi        a6, t6, -106
                  andi        s6, t5, 1304
                  srai        sp, s6, 1
                  xori        a1, s7, -938
                  slti        s6, gp, -316
                  or          ra, gp, a1
                  srai        a2, a3, 0
                  nop
                  or          t2, t6, t2
                  srli        a1, ra, 25
                  lui         zero, 254006
                  and         a4, s0, t2
                  sltiu       s11, a7, -2013
                  add         t2, zero, t5
                  sra         zero, t2, s6
                  srli        a7, a5, 2
                  andi        ra, s2, -857
                  and         a7, a7, s7
                  xori        tp, t6, 1751
                  sub         t2, t2, a1
                  srai        zero, s6, 12
                  sltiu       tp, tp, 1320
                  slti        sp, tp, 1932
                  xor         s5, s1, s1
                  lui         t6, 293146
                  ori         s6, s11, -1999
                  ori         a4, s9, -510
                  addi        a6, t1, -1394
                  addi        s1, a5, 838
                  sltiu       a4, a3, -298
                  srai        s7, t6, 19
                  lui         ra, 242413
                  sra         tp, gp, s11
                  sltiu       s8, s8, -1054
                  slt         tp, gp, s7
                  and         a7, t1, s9
                  xori        zero, t1, 2015
                  sub         t6, a0, s8
                  ori         t2, s1, -532
                  lui         a2, 449133
                  addi        s1, s4, -1151
                  addi        a2, s9, 52
                  nop
                  lui         s4, 926394
                  addi        s6, t4, 83
                  nop
                  lui         s0, 800598
                  srli        t6, t6, 13
                  xor         ra, s2, a1
                  lui         s5, 658727
                  srli        zero, t5, 0
                  auipc       t4, 864356
                  and         s8, s7, t0
                  slt         s4, t4, s5
                  slt         a1, gp, ra
                  andi        s8, s6, 922
                  or          s0, t0, s5
                  sltiu       s3, s4, -89
                  and         s3, a4, s5
                  nop
                  slti        s3, t4, 731
                  slli        t1, gp, 19
                  sll         zero, a4, s1
                  srl         a4, t1, s5
                  slt         zero, zero, a1
                  andi        a3, s4, 1401
                  slt         s11, a7, s8
                  slt         s7, s2, s0
                  srli        t3, a2, 7
                  sll         s3, t3, a4
                  nop
                  lui         a2, 666406
                  ori         a2, a3, -1126
                  auipc       gp, 80491
                  and         zero, sp, t2
                  xor         s4, a3, a1
                  sub         t4, s1, t1
                  srl         t1, t2, tp
                  ori         s7, s8, -177
                  andi        a7, t1, 647
                  sub         t2, s4, s2
                  add         zero, s5, a3
                  lui         t1, 458299
                  or          s0, a2, s5
                  or          s6, ra, zero
                  srli        a6, tp, 7
                  or          t5, sp, s7
                  nop
                  srai        s2, a4, 13
                  ori         a7, t5, 1892
                  xori        a2, s3, 1106
                  nop
                  nop
                  lui         s7, 1021365
                  sltiu       zero, s1, 99
                  lui         s4, 1004010
                  addi        gp, a2, -632
                  xori        a4, zero, -1741
                  andi        t1, ra, 1622
                  or          t1, ra, s1
                  or          t2, a1, sp
                  sub         t4, gp, a0
                  sub         t2, a3, gp
                  slt         a3, sp, s0
                  sltu        t1, s10, s11
                  nop
                  sub         t1, t6, t1
                  and         t2, t0, t5
                  nop
                  sltiu       a2, sp, -836
                  auipc       t1, 389615
                  slt         a4, a5, zero
                  srl         zero, ra, a4
                  or          zero, zero, a4
                  slt         s7, t3, s4
                  sltu        s9, a7, s0
                  sltu        s6, s2, s4
                  sltiu       tp, s5, -709
                  slt         a3, tp, s11
                  addi        s2, a0, -439
                  ori         t6, s6, -756
                  slli        a7, t2, 10
                  xori        s3, gp, -1088
                  lui         s7, 619476
                  srli        gp, t6, 12
                  auipc       a2, 50158
                  xor         s6, s8, t6
                  slti        s4, a0, 1107
                  xori        s6, s1, -146
                  sll         a1, a0, s7
                  sltiu       gp, a0, 1019
                  slti        s3, a1, 214
                  or          tp, s6, a3
                  sltu        tp, s1, s4
                  sra         s1, tp, t4
                  sll         ra, s6, a1
                  sra         sp, s5, t0
                  slti        t6, sp, 353
                  sub         gp, t3, t6
                  auipc       t2, 876999
                  sra         s1, gp, t6
                  sra         a0, s4, t2
                  addi        t1, s3, -1449
                  slti        a6, s1, 1761
                  lui         t4, 1007244
                  sub         tp, a0, gp
                  srl         t2, a1, t6
                  sub         s7, s5, zero
                  auipc       sp, 52974
                  auipc       s5, 350677
                  srai        t3, t4, 28
                  sub         s8, a6, s11
                  sub         a6, s11, sp
                  srai        a3, s7, 29
                  ori         t4, s3, -1605
                  nop
                  srl         s11, s2, s5
                  xor         a4, sp, s0
                  andi        s9, a7, 832
                  sll         zero, s6, ra
                  xor         t1, zero, t0
                  auipc       a4, 441802
                  slt         s0, t4, s5
                  or          a4, a4, s6
                  sub         zero, a7, s1
                  sub         a7, t1, a1
                  slti        s7, t3, 597
                  sll         t1, a1, tp
                  sra         a2, s0, t5
                  srl         s9, t3, zero
                  slti        ra, s6, 826
                  auipc       s0, 444755
                  sra         s4, zero, s2
                  xori        a1, s2, 1122
                  slli        t2, t3, 13
                  sra         ra, t5, a0
                  ori         zero, s6, -93
                  and         zero, s0, tp
                  sra         a3, t6, gp
                  sub         zero, a2, t6
                  srl         s4, s10, s2
                  srai        a2, a0, 28
                  sltu        s0, a2, s7
                  addi        t2, s8, -752
                  nop
                  sltu        s0, s4, t0
                  sltu        a6, t1, ra
                  sltiu       tp, sp, -1828
                  sltu        a4, a0, zero
                  sltiu       s8, a4, 1827
                  xori        s0, a0, -1101
                  srai        s7, a7, 27
                  add         zero, s2, s6
                  nop
                  ori         sp, a1, -1413
                  auipc       s6, 585411
                  slt         a2, a2, tp
                  add         t6, t3, s0
                  srli        zero, a6, 27
                  slti        s7, sp, 1788
                  srli        s5, a4, 25
                  srl         zero, a7, a1
                  slli        t5, a3, 8
                  lui         s4, 537044
                  xor         a6, a7, s7
                  sltiu       s6, t0, -411
                  slti        t6, a7, 1452
                  auipc       tp, 259998
                  sltiu       zero, a2, -1800
                  slt         zero, a2, gp
                  srl         a7, t1, a2
                  sra         s8, a4, s9
                  nop
                  sub         zero, s10, ra
                  sra         s9, a3, zero
                  srli        sp, s5, 16
                  add         tp, zero, a4
                  ori         s2, s4, -1632
                  ori         t4, s2, -1864
                  slt         s5, s7, t6
                  slt         a2, a1, t2
                  sltu        zero, s4, sp
                  slt         a2, tp, t0
                  ori         tp, s11, 763
                  ori         s6, t2, 1597
                  sltu        sp, a6, ra
                  srai        t1, tp, 8
                  sltiu       gp, t0, 1673
                  or          t2, s4, t2
                  slti        a0, a6, -1479
                  ori         a7, s3, -481
                  sltu        gp, t0, s5
                  or          s5, a4, tp
                  ori         sp, t5, -545
                  addi        a3, zero, 2000
                  andi        t1, s3, -1368
                  srai        a6, t4, 27
                  lui         zero, 604707
                  slt         s3, t6, a3
                  sltiu       t5, s11, -1096
                  srl         a7, s6, t5
                  auipc       tp, 775673
                  xor         s1, s0, s5
                  or          s0, a7, a7
                  xor         zero, s5, s4
                  and         zero, tp, t3
                  ori         s3, s11, -1887
                  addi        s8, a2, 1896
                  srai        a0, s3, 27
                  sltu        t1, tp, t2
                  sltiu       s4, t5, 1295
                  nop
                  srli        s1, s6, 13
                  auipc       t6, 358092
                  srli        a0, t6, 26
                  ori         t3, a0, 1851
                  auipc       s8, 106292
                  auipc       zero, 606733
                  ori         s6, a2, -1816
                  add         s0, s5, sp
                  srli        gp, t3, 16
                  lui         a7, 89750
                  slli        s7, s1, 10
                  nop
                  slti        t4, t4, 2030
                  sub         zero, a7, a6
                  or          s7, a7, a3
                  auipc       a2, 985984
                  xor         s3, t1, a5
                  addi        s6, t2, 1602
                  lui         gp, 1047542
                  ori         zero, a3, 638
                  xori        t5, gp, 1961
                  slli        a3, ra, 30
                  and         s7, gp, s2
                  sltu        sp, a2, s3
                  sra         zero, s11, a2
                  srli        t2, s0, 17
                  sll         tp, a7, s3
                  sub         a4, t2, t1
                  sltiu       s11, t1, 679
                  slt         zero, t0, t2
                  sll         s8, a7, t4
                  xor         a6, gp, t4
                  or          t2, s11, gp
                  srai        s3, t4, 24
                  add         s1, s8, t0
                  sltu        s9, sp, s7
                  slt         s7, t1, a4
                  sll         gp, t5, t5
                  sltiu       gp, s11, 1377
                  xori        sp, t2, 1788
                  add         zero, s3, t6
                  sub         zero, t3, a7
                  slt         t2, s0, t4
                  srl         a4, t0, t5
                  nop
                  sll         zero, a7, s11
                  sltiu       ra, a4, 1960
                  sltu        a4, a1, t3
                  sra         s5, gp, a5
                  or          s1, t0, a4
                  srai        t4, s10, 18
                  slti        s1, a4, -1355
                  sltu        sp, s7, a1
                  lui         t4, 714087
                  srai        a0, a3, 0
                  xori        t4, s7, -137
                  sra         a3, t2, a5
                  xori        zero, a0, -171
                  sltiu       t3, ra, 1158
                  or          s2, s6, s10
                  sll         s1, t4, s7
                  srai        a4, t6, 30
                  ori         s11, s2, 1498
                  sub         ra, s10, s6
                  sltu        s4, s7, s10
                  addi        s6, a2, 1434
                  slti        s5, s1, -110
                  sltu        a3, t4, zero
                  lui         s4, 208601
                  xor         t2, s3, t6
                  andi        gp, s8, 1389
                  srl         a6, a1, a7
                  slli        s5, ra, 20
                  sltiu       a2, t6, -1276
                  andi        gp, t6, 792
                  slt         s1, t0, a0
                  or          t1, a4, sp
                  xor         s5, ra, s6
                  sll         t2, s6, s5
                  addi        sp, t3, 2017
                  auipc       t3, 827790
                  xori        t6, ra, 1936
                  sra         a7, s5, sp
                  auipc       zero, 502950
                  lui         s9, 668115
                  addi        s9, zero, -110
                  sra         t4, s1, s4
                  and         s1, tp, gp
                  or          s0, s7, t5
                  xori        a0, a0, 1269
                  slt         t6, a2, s10
                  and         a2, a7, a1
                  srai        a0, a5, 2
                  sra         t2, zero, tp
                  sub         t6, sp, t6
                  sub         tp, a0, t0
                  and         s8, t2, a3
                  andi        a2, a1, 859
                  and         ra, a7, sp
                  sltiu       s7, s9, 322
                  srli        s3, s4, 12
                  and         a6, s0, gp
                  sltiu       tp, t1, 725
                  srai        s9, a7, 16
                  slti        a3, zero, 1785
                  xor         t2, t0, t2
                  sub         t2, tp, t5
                  ori         t4, s0, 595
                  sll         a3, s4, s8
                  srai        s4, s10, 4
                  srl         s9, t2, t1
                  andi        s2, s11, -1435
                  addi        t6, s8, 414
                  sll         t6, a0, t2
                  sub         a0, a3, t6
                  sll         t5, s0, s6
                  sub         s2, s6, sp
                  slt         s6, s6, t6
                  nop
                  sub         a0, t5, s6
                  srli        zero, a5, 25
                  add         a1, t5, t4
                  auipc       s6, 48150
                  sltiu       sp, a1, -206
                  nop
                  sltu        s11, s5, s6
                  nop
                  srli        a7, s9, 14
                  sra         a1, s8, s4
                  lui         s5, 48422
                  slti        s1, s9, 1406
                  ori         ra, t4, 431
                  and         t3, s1, s6
                  slti        s11, s4, 1588
                  srli        a7, a3, 27
                  auipc       a2, 251422
                  or          a4, s4, t5
                  sltu        s9, s10, s2
                  lui         t6, 770416
                  xori        s0, t3, 1661
                  andi        s2, s2, 628
                  xori        t4, s7, -326
                  srai        zero, a5, 10
                  xor         tp, a7, s2
                  addi        s3, a3, -916
                  addi        gp, a2, -259
                  xor         s4, tp, t5
                  ori         a7, t3, -1097
                  xori        s9, sp, -1113
                  andi        zero, s3, 1466
                  sub         t6, a2, a5
                  srai        t5, s6, 19
                  nop
                  slli        t5, s8, 15
                  and         zero, s10, s5
                  slt         s1, s0, a0
                  ori         zero, s8, -400
                  sra         zero, s8, s4
                  nop
                  auipc       gp, 651559
                  addi        zero, t5, -696
                  slli        t1, a0, 23
                  xor         a4, gp, s3
                  addi        s0, s3, -199
                  or          s8, ra, t2
                  slti        s9, t1, 36
                  srl         s6, s10, t1
                  xor         a7, s8, ra
                  sll         s4, a7, zero
                  sltu        s11, s11, a3
                  sltu        gp, ra, t0
                  auipc       a2, 932425
                  nop
                  nop
                  ori         zero, s9, 1631
                  slt         s0, s6, a0
                  addi        s9, a4, 1819
                  or          t5, gp, a1
                  and         s5, t4, t4
                  srli        t3, s2, 15
                  sltiu       s3, tp, 1673
                  slt         t5, t1, a0
                  srl         a0, a1, a5
                  srai        a1, a7, 18
                  srl         zero, a3, s8
                  andi        zero, t3, 724
                  sub         a1, t5, s10
                  slli        zero, s11, 25
                  add         a6, s3, t0
                  or          s7, t5, s0
                  sltu        s0, s0, a3
                  addi        a1, s6, 1642
                  xor         tp, t6, s8
                  auipc       a4, 8071
                  sra         a6, t6, s7
                  slti        s0, a3, -1277
                  andi        t2, zero, 1933
                  srai        gp, s4, 5
                  xori        s0, s2, -1767
                  sll         t6, s4, s8
                  srl         sp, tp, s10
                  ori         a1, a1, 1656
                  sra         a4, s9, s2
                  andi        gp, gp, -1909
                  srli        a3, t5, 12
                  srl         tp, a6, s5
                  add         ra, t6, t3
                  add         zero, s1, t6
                  slt         t4, s1, s2
                  srli        a2, a5, 15
                  or          s9, t3, gp
                  auipc       s4, 912951
                  addi        zero, t3, -432
                  sra         sp, a0, s11
                  andi        zero, s2, 1820
                  lui         s8, 584946
                  sltiu       zero, t5, 1338
                  addi        a2, s8, 1026
                  ori         s7, zero, 1639
                  or          s11, s0, a5
                  or          s2, s0, s0
                  auipc       s11, 897745
                  sltiu       s11, s6, 1606
                  sra         s8, a3, s5
                  and         zero, a6, a3
                  addi        zero, t3, -1327
                  xor         s4, t5, a1
                  auipc       s9, 534083
                  xor         a6, a3, t1
                  add         s1, t3, a4
                  sll         s8, t5, s7
                  addi        a2, t5, 518
                  sltu        a0, ra, t4
                  slli        s8, t4, 28
                  andi        t3, s6, 720
                  add         zero, s4, t2
                  sra         s0, tp, a5
                  slt         s6, a0, tp
                  lui         t4, 814833
                  srl         a0, a2, ra
                  srl         s7, t2, a2
                  lui         t4, 112737
                  xori        t3, a1, 1049
                  xor         t6, s1, sp
                  and         tp, t3, t1
                  and         s9, t2, t3
                  sltu        s3, t2, sp
                  sltu        zero, t1, a3
                  add         s11, s5, s8
                  srai        t2, s11, 12
                  sll         sp, a3, a2
                  addi        s11, gp, -963
                  nop
                  nop
                  or          zero, t2, a1
                  sltiu       zero, s5, 549
                  srl         a1, sp, s5
                  andi        t5, a6, -1511
                  or          a3, s0, s3
                  slti        t2, t1, -997
                  sltiu       s5, s8, -1575
                  andi        a1, s6, -290
                  nop
                  sll         ra, t0, t4
                  sltu        s3, s4, s7
                  nop
                  slli        s8, a5, 11
                  ori         zero, sp, 1900
                  ori         s9, t0, -1199
                  nop
                  addi        gp, t5, -420
                  andi        s1, a0, 1591
                  auipc       s5, 434883
                  sra         s6, s3, s4
                  srai        tp, s2, 27
                  sub         zero, s11, a7
                  or          s6, t5, s8
                  or          t2, s2, a0
                  sub         t5, t6, a3
                  xor         zero, a3, a7
                  slti        t4, s11, 621
                  add         ra, s10, a6
                  lui         zero, 760422
                  andi        ra, a3, 346
                  addi        a1, s3, 270
                  addi        s2, a7, -831
                  slli        sp, s4, 23
                  add         tp, t5, s0
                  sub         s2, ra, s10
                  sll         ra, t3, a4
                  sra         s0, tp, s7
                  addi        a6, t2, -249
                  sll         s8, a5, a3
                  xor         zero, a1, t6
                  add         zero, a4, s6
                  sltiu       t4, a5, -426
                  and         s3, a0, a2
                  slli        zero, a3, 23
                  xor         s4, s7, s1
                  srli        t5, s4, 14
                  auipc       s1, 803496
                  slt         s9, gp, s8
                  and         t5, s2, s6
                  auipc       s6, 182722
                  srli        t2, s5, 30
                  slt         t4, a7, gp
                  lui         t6, 38418
                  sub         s6, s9, t6
                  sra         sp, s10, a0
                  auipc       sp, 271853
                  lui         s8, 151422
                  sub         a7, t5, s1
                  sltiu       s1, s6, 1751
                  and         s6, s0, s2
                  or          t1, s0, s8
                  xor         zero, sp, tp
                  sra         a3, t0, s3
                  xor         a6, a0, t0
                  xori        zero, gp, -664
                  nop
                  sub         s6, s6, s1
                  or          s3, a4, s6
                  auipc       a1, 851446
                  srli        t5, a2, 23
                  xori        s5, a4, -79
                  xor         a2, s9, t4
                  slli        s5, a1, 25
                  andi        a6, t6, 1600
                  lui         s8, 574530
                  xor         a3, s6, s9
                  srl         t4, ra, sp
                  xori        s7, a5, 1296
                  sll         s1, sp, ra
                  srai        a1, s2, 29
                  nop
                  slli        t4, t4, 8
                  lui         zero, 699513
                  slli        t2, t2, 8
                  and         a4, s6, s4
                  slti        t5, s7, -633
                  sltu        zero, t2, ra
                  add         s0, s0, sp
                  and         s0, s5, gp
                  or          a3, t1, a3
                  sltiu       zero, s11, 1559
                  andi        a1, s0, 786
                  slti        t6, a6, 355
                  sra         s5, tp, t0
                  addi        a0, s3, 1004
                  xor         t2, s9, t4
                  slti        s2, gp, -2006
                  addi        t3, gp, -1180
                  sltiu       s3, t1, -1211
                  sltu        t5, s1, a1
                  slti        s6, s4, -896
                  sltiu       ra, a5, -571
                  nop
                  lui         zero, 524679
                  srl         s7, s2, s7
                  addi        s8, a3, -50
                  add         zero, tp, t5
                  auipc       t2, 476282
                  srli        sp, a4, 30
                  sltu        zero, s0, t6
                  sub         s7, a2, a0
                  slt         a0, s7, s3
                  sra         t2, t3, s11
                  or          t6, a2, a6
                  ori         s8, ra, 480
                  sltiu       a6, t6, -12
                  and         s4, a3, t6
                  lui         s4, 699041
                  slt         s0, s11, t6
                  and         tp, t6, s8
                  slli        t6, s10, 29
                  sltu        t3, tp, t0
                  srai        zero, zero, 15
                  or          a1, gp, s10
                  addi        zero, t1, 789
                  slt         t3, a2, a3
                  srai        s3, t0, 10
                  nop
                  nop
                  sub         t1, ra, s8
                  slli        sp, a1, 25
                  and         zero, s5, t4
                  addi        a6, a1, 1512
                  slti        zero, a0, -1546
                  slli        s7, s6, 30
                  sltiu       a6, a1, 2001
                  sltu        gp, s9, t3
                  lui         a6, 111069
                  slti        a1, gp, -1002
                  nop
                  srl         s3, s9, s1
                  slti        t5, s1, 1463
                  sltiu       ra, s6, -44
                  sra         zero, t3, a1
                  xor         sp, sp, s6
                  xor         s6, s6, s6
                  xor         s6, s0, t1
                  ori         s0, t0, -179
                  sub         zero, s4, a6
                  sub         t1, s0, s4
                  add         s0, s1, s6
                  addi        a1, s3, -971
                  addi        zero, a4, 571
                  add         a2, s4, tp
                  sltu        zero, s8, t5
                  and         sp, t5, tp
                  andi        a0, s10, 112
                  srai        s0, s7, 6
                  sll         zero, gp, s2
                  slli        a0, tp, 8
                  srl         t4, a1, s5
                  nop
                  or          s11, s11, tp
                  auipc       a2, 1010992
                  srai        t3, a3, 31
                  andi        a7, a2, -971
                  slt         a3, s11, t1
                  slt         t2, a4, s4
                  ori         s4, s10, 1503
                  lui         s6, 269781
                  ori         a6, s11, -1844
                  xor         t3, a5, s2
                  xor         zero, a3, a5
                  or          t2, a7, t0
                  addi        t6, gp, 506
                  xor         a4, t6, ra
                  srl         a6, s7, t1
                  or          a4, t5, t1
                  nop
                  srl         a0, s7, t6
                  or          s1, s9, s8
                  sltu        zero, t4, ra
                  srai        t2, gp, 23
                  addi        a6, a7, 1037
                  srl         t5, t2, s1
                  nop
                  andi        s8, sp, 607
                  srl         s4, t6, s0
                  or          t4, a4, t5
                  slli        t3, t2, 24
                  auipc       t1, 551299
                  sub         t3, s6, t3
                  xor         s5, t6, a2
                  srai        zero, s5, 10
                  sll         t3, s5, s10
                  add         t2, a1, s1
                  srl         sp, a1, a1
                  srli        a0, t2, 23
                  sub         a2, gp, s5
                  sltu        s3, a1, s9
                  srl         sp, a5, a6
                  lui         s3, 840221
                  sll         s5, a2, t3
                  add         zero, a1, s7
                  sll         s6, t3, a7
                  slt         s9, s8, gp
                  sra         s4, t5, t5
                  andi        a2, s11, -1277
                  sll         t3, t0, ra
                  add         zero, a6, s2
                  xori        sp, s4, 1176
                  slt         s1, a0, a7
                  and         s9, t2, sp
                  nop
                  srai        zero, t0, 1
                  andi        a3, t1, 489
                  srl         s11, a0, t0
                  sltiu       s5, s5, 510
                  sltu        zero, a5, gp
                  sltu        a7, s5, t4
                  slti        zero, t5, 40
                  andi        s8, s3, 1467
                  srli        s4, tp, 23
                  ori         s2, t0, 227
                  srli        a0, s5, 7
                  and         zero, a7, gp
                  sltiu       sp, s10, -1015
                  ori         a1, t3, -1368
                  slt         a7, s0, tp
                  ori         tp, s5, 1410
                  lui         s8, 295474
                  nop
                  srai        s4, a1, 10
                  sltiu       a2, s5, 1292
                  add         zero, s6, s1
                  add         t3, s8, t2
                  sltiu       zero, t3, -1355
                  sub         zero, sp, a7
                  add         s9, s7, a7
                  nop
                  sll         ra, a1, t0
                  sub         a2, t1, s11
                  sltiu       s11, s1, -1571
                  sltiu       s2, s11, 2044
                  slti        s8, sp, -17
                  andi        s4, a1, 794
                  xori        t3, s1, 1009
                  slli        s5, a7, 12
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
mmode_intr_vector_1:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_2:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_3:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_4:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_5:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_6:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_7:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_8:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_9:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_10:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_11:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_12:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_13:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_14:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_15:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

.align 4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
                  csrrw x26, 0x340, x26
                  add x26, x15, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x30, 0xb # ECALL_MMODE
                  beq x31, x30, ecall_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x5, write_tohost
                  jalr x0, x5, 0

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x15, x26, zero
                  csrrw x26, 0x340, x26
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x15, x26, zero
                  csrrw x26, 0x340, x26
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
