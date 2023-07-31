.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  li x29, 0x0
                  csrw 0x304, x29 # MIE
                  mret
init:             
                  li x0, 0xf9a1f7e1
                  li x1, 0xb
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x5
                  li x5, 0xfd38e08f
                  li x6, 0x80000000
                  li x7, 0xfdc8d044
                  li x8, 0xfc94350c
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0xf38ea4c1
                  li x14, 0x80000000
                  li x15, 0xf32db680
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0xe6f87ea4
                  li x19, 0x5670df0e
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0xf86242a5
                  li x23, 0xfce67027
                  li x24, 0x80000000
                  li x25, 0xb
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0xfbfa60a2
                  li x31, 0x5
                  la x26, user_stack_end
main:             srai        a5, s3, 2
                  add         s2, s7, t6
                  andi        zero, t5, 2016
                  srai        s5, t6, 15
                  sltu        a6, s11, s3
                  addi        t0, s6, -1495
                  srl         a7, s3, s6
                  xor         s3, s8, a4
                  and         a4, a4, a7
                  or          t2, a5, s0
                  srli        a6, t2, 21
                  auipc       zero, 607678
                  sra         s3, t6, t6
                  lui         s2, 676108
                  srl         t0, s6, s8
                  sltiu       t2, a4, 685
                  andi        s0, s11, 159
                  srl         s9, t4, a3
                  ori         s2, zero, 1199
                  ori         s3, tp, -454
                  sltu        zero, a3, s0
                  srl         zero, t0, a4
                  and         s2, s10, ra
                  xori        s1, gp, 1711
                  slt         zero, s1, a5
                  xor         a1, s4, a7
                  xor         s7, t4, s4
                  srl         t3, a3, s2
                  ori         t3, t5, -732
                  sltiu       a4, s0, 1248
                  slt         zero, gp, zero
                  srli        s11, zero, 4
                  auipc       gp, 51508
                  and         zero, t4, tp
                  sltu        t0, s2, sp
                  sltiu       s4, s11, 318
                  sltu        t0, gp, s4
                  andi        t3, a2, -543
                  sll         a2, t3, t0
                  sltiu       s8, t3, -1408
                  sra         a6, ra, a3
                  srli        gp, s0, 4
                  slt         s7, s7, s0
                  nop
                  sll         t0, a2, t5
                  andi        t0, sp, 428
                  slti        s0, ra, -705
                  addi        s4, a5, 1470
                  srai        s6, a3, 20
                  andi        s9, s10, 2010
                  xor         a2, t3, t6
                  andi        a0, gp, -967
                  lui         a6, 302431
                  nop
                  addi        t0, t5, -1645
                  or          t3, t3, a0
                  auipc       a1, 713639
                  and         s1, a7, s3
                  slti        gp, a4, 195
                  srli        s7, a5, 2
                  or          zero, s0, s1
                  lui         s11, 550906
                  and         s3, t5, s9
                  sltiu       tp, sp, -1461
                  srli        s5, a1, 29
                  sltu        a0, t5, a6
                  and         s4, tp, s3
                  srl         a1, a6, t4
                  sll         t3, a3, t3
                  sub         a3, s5, t5
                  slt         s6, s4, tp
                  xori        a7, a1, 1557
                  nop
                  auipc       t0, 270204
                  slti        tp, a4, 843
                  srai        s9, s1, 4
                  andi        t3, t6, -1857
                  or          t3, a7, sp
                  slt         a7, s7, t1
                  xori        t4, gp, -1433
                  slti        t3, s2, -1182
                  xori        zero, a6, 2026
                  xor         zero, gp, t0
                  slli        s0, t5, 16
                  sltiu       ra, t4, 328
                  srl         t3, t1, s0
                  lui         s0, 41261
                  auipc       a1, 655748
                  sub         s4, s11, t2
                  srli        zero, s0, 11
                  slli        a2, s0, 1
                  sub         s3, t5, t5
                  srai        t3, a1, 1
                  lui         s11, 234808
                  sltiu       zero, s1, -500
                  sltiu       zero, a7, 882
                  slli        t4, s7, 13
                  sll         t3, zero, s7
                  slt         a6, s7, s6
                  sll         tp, a5, sp
                  sub         tp, t3, t2
                  slt         a1, s5, t1
                  or          a5, t4, t6
                  addi        s7, t1, -244
                  srai        zero, a3, 11
                  srai        a5, t5, 31
                  sll         a6, ra, t3
                  slti        s7, zero, -1707
                  xori        a7, t2, -613
                  xori        zero, s6, 889
                  sub         a3, gp, s1
                  sltiu       s7, t0, 550
                  srai        zero, a0, 6
                  xori        a3, gp, -1592
                  auipc       s2, 182217
                  slti        s0, s11, -49
                  srli        a3, s8, 14
                  sltiu       s0, zero, -740
                  addi        a2, a5, 1657
                  and         zero, s8, a1
                  nop
                  slt         t3, s7, t0
                  xori        zero, t3, -1993
                  and         t4, s9, t0
                  sltiu       t4, s5, -742
                  andi        zero, s7, 783
                  xor         s0, s5, a1
                  andi        s11, sp, 1720
                  xor         t1, tp, s3
                  slt         s2, t5, t4
                  xor         a5, s10, t1
                  andi        t2, s2, -280
                  srli        s4, s5, 6
                  ori         s4, t1, 1049
                  srli        gp, t2, 22
                  sub         a2, a1, a2
                  slt         t2, t1, a1
                  sltu        sp, s4, ra
                  lui         s9, 766954
                  ori         a2, ra, 1280
                  srli        s2, a0, 3
                  nop
                  andi        s6, a2, -1623
                  sll         t2, s9, s0
                  slt         s2, t2, t5
                  sub         s8, s7, s1
                  sll         s4, a1, s3
                  addi        a1, a6, -1657
                  sra         t1, zero, s10
                  or          a2, t6, a5
                  sltiu       zero, a6, 1328
                  nop
                  sra         a2, t2, s3
                  sra         s4, s8, s9
                  sltu        s7, t1, a0
                  sltiu       tp, s7, -1453
                  sub         zero, a7, s6
                  sltu        tp, s7, a4
                  slli        a7, s7, 5
                  ori         ra, s8, 266
                  srli        s5, s9, 21
                  addi        s7, s10, -1796
                  sll         s8, s3, s11
                  slti        a3, t1, -845
                  srai        s3, sp, 30
                  sub         s7, zero, s9
                  slt         t3, t3, t1
                  lui         a5, 349902
                  slti        s6, a3, -1752
                  slli        tp, t4, 24
                  lui         a6, 760997
                  xor         a7, s9, t6
                  slli        zero, t3, 0
                  slli        sp, s2, 24
                  slti        zero, a2, -1889
                  or          s3, a1, s1
                  xori        zero, s3, -813
                  sub         t4, ra, t5
                  srai        zero, sp, 2
                  slli        t3, ra, 12
                  addi        t3, t0, -309
                  srl         s3, s5, a2
                  ori         s1, t3, -734
                  auipc       t4, 426079
                  sra         a3, t0, s9
                  add         zero, s3, t5
                  or          s1, s10, gp
                  sltu        s1, s1, s7
                  auipc       tp, 788407
                  xori        t4, a3, 743
                  xor         t0, t0, s7
                  andi        a2, zero, -1908
                  add         s7, a6, t6
                  ori         zero, s11, -216
                  slt         zero, s5, a0
                  xor         s8, s5, sp
                  slli        ra, s0, 19
                  srli        a5, s0, 16
                  nop
                  srli        zero, t5, 24
                  ori         zero, t4, 1275
                  addi        zero, s0, -1047
                  addi        s3, s10, 1320
                  ori         s6, s2, 1523
                  srli        t0, s9, 19
                  or          gp, a0, a6
                  srai        tp, t4, 6
                  sltiu       s0, a1, 825
                  sra         a2, s5, a4
                  andi        a5, s4, -629
                  srli        ra, s4, 20
                  or          a7, zero, s1
                  lui         a1, 545025
                  srli        a5, t3, 7
                  srl         s5, tp, s1
                  sltu        s4, s1, s6
                  sltiu       ra, s2, -471
                  and         s11, s2, s3
                  slli        s4, a4, 30
                  srl         t2, a3, zero
                  ori         a0, a5, -184
                  slti        t0, t0, 405
                  sltu        t2, t5, t4
                  ori         t0, s8, -317
                  ori         s5, gp, 461
                  andi        s6, a0, -1565
                  auipc       s7, 890793
                  srai        a0, t5, 10
                  lui         s7, 467419
                  sltiu       t3, tp, -1577
                  add         zero, tp, s0
                  slti        s4, t1, 532
                  sltiu       s7, ra, -953
                  slli        s7, s4, 26
                  nop
                  slti        a4, sp, 1800
                  auipc       a4, 169978
                  sltu        t0, a1, ra
                  sub         zero, t6, a6
                  add         s0, t1, s1
                  sub         s3, a5, s4
                  sub         s6, a3, t4
                  sub         a4, s11, a1
                  addi        s8, t2, 309
                  xori        sp, t4, 1896
                  sll         sp, t5, zero
                  sltu        s3, zero, a4
                  nop
                  slti        a4, a6, -1195
                  slt         t1, tp, t5
                  sltu        s2, s8, t4
                  xor         gp, zero, s11
                  nop
                  srli        s5, s3, 15
                  andi        t1, a3, -1030
                  and         a7, s11, t2
                  sltu        s5, a0, s8
                  sra         a5, s2, t0
                  add         s9, t4, a1
                  xori        a0, tp, 1801
                  xor         s11, a1, t5
                  slli        t2, a6, 20
                  and         ra, s11, a6
                  srai        a5, t6, 0
                  andi        tp, gp, -2025
                  sra         s6, t0, ra
                  ori         a3, t2, -832
                  sltu        s2, a6, gp
                  addi        ra, t4, 947
                  xori        s0, zero, -308
                  xor         s8, zero, s6
                  auipc       tp, 663054
                  srl         s0, s8, s2
                  sltiu       a4, ra, 436
                  sltiu       s9, a6, -1794
                  or          a7, t1, t1
                  nop
                  slli        zero, a4, 6
                  sll         s8, s0, s11
                  sub         s6, a1, s10
                  srl         t2, a3, s2
                  andi        a5, gp, 1521
                  andi        s7, sp, 1643
                  slti        a3, ra, 377
                  add         ra, s4, t1
                  sltiu       zero, zero, -1228
                  srl         a2, a1, t3
                  sub         a1, zero, a7
                  add         sp, s11, a1
                  ori         ra, t2, -631
                  sll         s6, a1, gp
                  sll         s2, s0, s7
                  xori        a5, a4, -342
                  sll         zero, s7, s0
                  xori        a3, s7, 847
                  xor         gp, s11, s10
                  sltiu       s11, t2, -1473
                  sll         t0, zero, a0
                  xor         a0, t5, a7
                  nop
                  slti        s5, s11, 432
                  sltiu       s1, t4, -689
                  andi        zero, s1, 1167
                  sltu        tp, s9, a0
                  nop
                  auipc       t1, 156223
                  slli        zero, sp, 27
                  lui         s5, 684902
                  and         a6, t5, s10
                  sra         a5, a4, a4
                  nop
                  srl         s2, zero, gp
                  sub         t3, a4, t4
                  ori         a1, s8, 1801
                  lui         t1, 888794
                  or          a2, s4, s3
                  sll         a6, s6, ra
                  ori         s0, s0, 1776
                  andi        s1, s11, 1619
                  slli        s3, s1, 8
                  srl         a1, s11, tp
                  add         a5, s6, a6
                  or          a5, a0, t0
                  slli        ra, a3, 9
                  sra         tp, gp, s1
                  sltu        tp, s0, s4
                  ori         a2, s11, 1945
                  sra         zero, s10, sp
                  sltu        tp, s10, s1
                  andi        s4, t6, 1099
                  or          zero, s6, s4
                  andi        s11, a6, -1395
                  add         s7, sp, t2
                  sub         zero, sp, s2
                  srl         a6, s2, a7
                  sub         s9, s7, t3
                  slt         zero, a1, a6
                  xor         s8, a2, s9
                  srai        s5, s3, 30
                  slti        t1, a1, -1075
                  xori        s4, a2, -759
                  lui         zero, 65204
                  srai        s4, ra, 24
                  sub         s9, t5, ra
                  srl         s8, s9, a0
                  xor         a7, s11, a7
                  slli        a7, a1, 13
                  sltiu       s5, a5, 324
                  slli        zero, t3, 27
                  ori         s5, gp, -1631
                  nop
                  and         tp, zero, s5
                  sltu        t2, t2, s10
                  auipc       s0, 140138
                  xori        a4, s3, -2042
                  slt         s6, s11, t4
                  slli        s4, a2, 15
                  slt         zero, s1, t6
                  sub         zero, s3, t3
                  slti        a0, sp, 1202
                  srl         s0, t6, t2
                  slli        t4, s11, 8
                  srli        ra, s1, 3
                  srai        s4, s1, 22
                  sll         s3, s9, a7
                  srai        zero, t5, 1
                  xor         tp, s6, ra
                  nop
                  xori        t0, a2, 1966
                  and         t1, a7, ra
                  xori        t0, s9, -185
                  addi        a0, t0, 501
                  xori        zero, a7, -1516
                  sltiu       s7, s8, 857
                  add         zero, t5, a3
                  slli        zero, s0, 1
                  slli        s7, s7, 4
                  andi        a6, s9, -61
                  or          s7, s0, s7
                  nop
                  sra         s4, s8, t4
                  and         s11, s3, tp
                  nop
                  srli        zero, a2, 31
                  srai        a7, a4, 27
                  xori        gp, t6, 1742
                  sub         t4, s9, a4
                  andi        a4, s1, 1151
                  sub         ra, s7, tp
                  sub         zero, gp, a6
                  slti        t0, a6, -1308
                  srli        gp, a2, 3
                  sra         s7, s6, s5
                  srli        s1, s7, 7
                  srai        a3, s2, 30
                  xori        s9, t2, -1382
                  xori        a3, a5, -1508
                  slt         t2, t2, t2
                  and         s0, a2, gp
                  lui         sp, 292167
                  sll         s8, tp, t6
                  sll         s1, a5, s0
                  sra         zero, t0, tp
                  sra         t2, ra, s2
                  auipc       a7, 343319
                  slt         zero, s7, t3
                  srai        s6, t1, 13
                  xor         a1, ra, a7
                  srai        s7, t3, 28
                  xori        a0, s0, -1054
                  nop
                  slti        ra, sp, 99
                  slti        s7, a5, -1268
                  slt         a5, a0, t2
                  ori         s0, a1, -85
                  slt         zero, t5, t4
                  or          s3, tp, t6
                  auipc       a3, 404068
                  addi        sp, a4, 1657
                  auipc       a2, 170210
                  srli        a0, s10, 14
                  sra         s9, a3, sp
                  andi        s4, a5, -487
                  addi        a1, t6, 106
                  sra         t3, s9, a1
                  xori        t1, t6, 1551
                  sltu        s0, s1, s0
                  auipc       ra, 143373
                  auipc       ra, 933803
                  and         s4, t5, zero
                  sll         a7, s0, s4
                  sltu        a0, t6, s5
                  sra         zero, t0, s4
                  srli        zero, t2, 27
                  or          s0, s5, a3
                  add         a4, t5, a6
                  srl         ra, a0, s10
                  slt         a0, zero, t4
                  andi        zero, t5, 48
                  nop
                  xor         ra, t5, a3
                  ori         gp, a7, -1872
                  nop
                  slt         zero, s5, s3
                  and         s11, t4, a5
                  sub         s6, s2, a0
                  addi        gp, t0, 822
                  addi        a1, tp, -449
                  xori        t0, t0, 1064
                  sll         zero, a0, ra
                  slt         s6, s1, s7
                  addi        a4, a3, -1231
                  lui         s7, 643457
                  and         ra, tp, s2
                  auipc       a0, 30756
                  xori        zero, t5, 1254
                  xori        sp, sp, 17
                  andi        a1, s5, -922
                  srai        t0, s0, 19
                  andi        s0, s11, 1227
                  xor         s4, s4, t6
                  and         a1, t4, gp
                  sra         tp, a5, zero
                  slti        sp, s8, 544
                  xor         a6, t2, a5
                  xori        t3, gp, -1425
                  addi        s1, s0, 1972
                  sll         s6, a7, a2
                  sub         s2, a7, a6
                  srli        s5, ra, 5
                  sra         s1, a7, s8
                  xori        zero, t6, -189
                  sltiu       s9, s11, -710
                  sll         t4, ra, s8
                  xori        s6, s11, 1224
                  and         a0, s6, s7
                  srl         s11, a1, s6
                  sltiu       t3, s2, 1620
                  slt         t0, s9, a1
                  lui         t1, 1018810
                  srli        zero, s8, 3
                  sub         s11, t1, t0
                  ori         a7, sp, 1426
                  slli        s5, a6, 26
                  sltu        tp, t2, s4
                  ori         a0, s3, -371
                  xor         a7, s9, s5
                  sra         t1, s4, a2
                  xori        s5, t4, 1713
                  slli        s0, a7, 25
                  sll         s2, t3, s0
                  lui         zero, 336373
                  nop
                  andi        s0, a7, 1144
                  add         a3, t6, t6
                  srli        a1, t5, 0
                  addi        tp, a7, -1880
                  add         t0, a2, ra
                  xori        a2, t6, 10
                  sll         tp, t4, tp
                  auipc       t0, 85745
                  add         t1, a5, tp
                  addi        a5, s0, 435
                  addi        ra, a1, -1449
                  xori        a6, a1, 1955
                  sub         a3, a1, s3
                  xori        ra, zero, 313
                  lui         s11, 1030069
                  andi        a1, gp, -640
                  slt         s3, s4, a6
                  slli        s11, a4, 1
                  auipc       a4, 999965
                  srl         a0, a2, tp
                  add         a1, a4, t3
                  auipc       s11, 46815
                  addi        a3, s8, 134
                  sra         a2, s4, a7
                  slti        s2, s11, 438
                  ori         s11, s3, 162
                  srai        a5, t2, 6
                  sltu        s8, a2, s11
                  add         s1, tp, ra
                  sll         s0, gp, s8
                  xori        a6, a3, -1037
                  xor         zero, a0, t0
                  xor         t3, s11, a0
                  srli        s7, s11, 4
                  srli        s4, zero, 15
                  xori        s1, s10, -1311
                  auipc       s5, 492349
                  addi        t1, sp, -1407
                  slti        s0, t0, 1961
                  sll         s6, zero, s1
                  sltu        t3, s9, s5
                  andi        t4, tp, 2024
                  srli        a4, s3, 24
                  srl         s5, t1, gp
                  and         a5, s8, a1
                  srli        a4, zero, 0
                  sub         tp, t3, s0
                  auipc       a4, 449287
                  srli        s2, gp, 15
                  sll         s7, t6, a7
                  and         zero, gp, s8
                  xor         tp, s9, t1
                  lui         a4, 628390
                  slli        zero, a5, 30
                  slti        tp, t3, -2046
                  sll         tp, sp, t3
                  auipc       ra, 1044013
                  slt         s2, s11, a2
                  ori         a6, s8, 1330
                  srai        a3, t2, 19
                  sra         a3, gp, s10
                  add         t2, s6, t3
                  andi        zero, a2, -1801
                  srli        t1, s4, 10
                  lui         s5, 864731
                  sltiu       s0, gp, 1550
                  or          a1, s5, s6
                  or          s7, s2, a6
                  auipc       zero, 691463
                  sll         a4, s4, s0
                  srli        s0, t5, 9
                  sra         ra, t3, t3
                  sltu        a4, s1, t6
                  slt         s3, sp, a7
                  or          t3, a1, ra
                  and         a0, ra, a3
                  andi        s1, s11, -1232
                  sll         s2, s5, t0
                  add         s7, s6, sp
                  slt         a4, t1, s6
                  lui         a7, 6803
                  or          s4, s6, tp
                  auipc       t4, 169858
                  sltiu       s8, a6, -140
                  xor         a3, a6, s5
                  ori         s7, s5, 910
                  sll         a2, t5, s9
                  xor         zero, s0, t6
                  srli        a3, s0, 26
                  sub         a6, s0, a0
                  auipc       s8, 531724
                  ori         s3, a6, -450
                  slti        s2, s0, -1487
                  sra         a0, t2, s1
                  or          s6, t4, a5
                  xor         gp, a5, s0
                  srli        a5, a0, 15
                  add         a5, s2, a0
                  slt         a1, a3, s8
                  lui         a4, 851075
                  sll         a0, s9, s4
                  andi        s7, s0, 1083
                  srai        s0, s11, 6
                  srai        s7, t0, 5
                  nop
                  sra         zero, zero, a1
                  and         ra, s1, zero
                  and         s7, s5, a0
                  addi        s4, s0, 1071
                  slti        s7, a3, 1024
                  or          a6, a1, s6
                  xori        t0, s4, -185
                  srli        s8, s10, 23
                  srli        a6, s7, 8
                  srli        gp, s1, 28
                  add         zero, a7, a5
                  lui         a6, 291321
                  xor         s6, t5, a4
                  auipc       s7, 698558
                  sub         s1, t1, s4
                  ori         tp, s10, 1257
                  xori        s9, t2, 1778
                  sra         s4, s3, t4
                  lui         s6, 326494
                  lui         a2, 725649
                  slti        s7, t5, -1388
                  sltiu       zero, gp, 2005
                  sltu        t4, s7, t0
                  slti        tp, t6, 1554
                  sub         zero, t4, s0
                  sub         s0, t0, a7
                  sll         zero, a2, s6
                  auipc       s5, 393949
                  slt         t4, t1, s5
                  sll         s1, t3, ra
                  xori        s4, t2, 1756
                  andi        s4, t3, -1023
                  sltiu       ra, t5, -427
                  srai        a2, s4, 10
                  srli        s9, s8, 6
                  lui         s8, 360652
                  sltiu       s7, s9, 1413
                  slt         s1, t4, s10
                  srai        s6, a0, 12
                  andi        s8, a4, -244
                  srai        a7, s7, 6
                  slt         s11, s11, a1
                  sub         zero, s0, t4
                  nop
                  xori        zero, a4, 347
                  srl         s1, s2, a1
                  or          zero, a2, s1
                  auipc       ra, 520907
                  srai        a6, ra, 9
                  srl         s5, t1, t6
                  srl         s3, s9, s10
                  slt         a7, t1, a5
                  xori        zero, s2, 1827
                  sll         s0, t1, s2
                  sub         sp, a6, s1
                  xori        zero, s11, -435
                  xori        t2, s7, 1228
                  add         s9, a2, a4
                  auipc       s1, 802902
                  sra         s9, ra, a7
                  xor         s0, t6, a3
                  auipc       a7, 787163
                  srl         a3, tp, tp
                  xor         zero, a5, s9
                  and         s3, a5, gp
                  sra         a2, s9, s6
                  srai        s7, sp, 5
                  auipc       t3, 719460
                  ori         s1, a6, 734
                  or          s3, s9, s10
                  sll         zero, a3, s11
                  addi        s11, a5, 1008
                  auipc       a7, 981349
                  srai        sp, a2, 28
                  srli        zero, t5, 2
                  slt         s4, s11, a5
                  or          s7, s3, t1
                  sra         gp, t6, sp
                  nop
                  nop
                  sub         t2, a6, ra
                  srai        t1, s7, 15
                  slli        zero, s10, 26
                  and         s11, t3, a2
                  nop
                  auipc       t2, 663256
                  or          s6, a2, s0
                  sll         a0, t0, a3
                  sltu        ra, s10, s2
                  sll         tp, a3, zero
                  srl         s3, a4, s0
                  xori        a7, s2, -1981
                  sltu        s1, t1, s4
                  sra         a6, t3, sp
                  srai        s5, gp, 17
                  addi        a2, t1, -1515
                  sll         s3, t3, t2
                  srli        s11, a7, 8
                  nop
                  srl         s0, s10, gp
                  srl         a7, t4, t4
                  sub         t2, s8, s11
                  sub         a5, s10, s10
                  sltiu       t3, t1, -1407
                  slti        zero, s5, 1446
                  slti        a4, a5, 1428
                  add         s8, s3, t5
                  srai        s6, tp, 30
                  sltiu       s2, sp, -339
                  add         gp, s6, a4
                  srli        tp, t1, 13
                  andi        tp, s1, 1006
                  sll         s7, gp, t4
                  sltiu       a2, s0, 697
                  srli        t1, t1, 22
                  add         gp, a3, sp
                  auipc       tp, 487969
                  addi        s4, s4, 1403
                  add         s11, s8, a2
                  or          s9, s9, t5
                  srli        t1, s0, 9
                  slli        zero, s4, 17
                  nop
                  srai        a6, ra, 17
                  xori        t4, s9, 989
                  nop
                  sra         a4, s0, t5
                  slli        t3, a5, 13
                  sll         a1, a3, s7
                  slt         zero, t1, a4
                  srli        s5, s3, 20
                  addi        a5, t4, -743
                  and         s5, t2, a5
                  srli        ra, sp, 14
                  srai        t2, gp, 21
                  srli        a7, a2, 12
                  sltiu       a7, t1, 62
                  xor         s0, tp, t5
                  lui         t4, 1021349
                  ori         s1, s4, 467
                  andi        tp, a4, 907
                  nop
                  ori         tp, s5, -1764
                  andi        t1, a1, 789
                  andi        s2, a1, 897
                  nop
                  nop
                  lui         zero, 1037138
                  slt         zero, s11, s1
                  addi        s8, a1, 1651
                  srai        s0, t5, 10
                  nop
                  sltiu       s2, a6, -1636
                  srli        a3, a4, 8
                  auipc       gp, 253668
                  srli        a0, a5, 21
                  slti        zero, a4, 1799
                  ori         s7, zero, 579
                  sra         s4, t2, s8
                  sll         a2, t5, t2
                  auipc       t3, 128750
                  or          a0, t3, t1
                  add         tp, s11, t5
                  slt         a2, a4, s8
                  sll         s4, s11, t1
                  and         a0, s0, t4
                  slti        a6, s1, 1858
                  slt         zero, t0, a3
                  sltiu       s0, sp, -962
                  addi        s6, s8, -487
                  sub         t2, a7, t0
                  srl         zero, s10, a0
                  and         s1, a7, s9
                  srli        a7, s2, 8
                  sltu        sp, a0, s8
                  xor         a6, s8, s11
                  and         a5, t3, a5
                  sll         a5, a2, sp
                  andi        a1, t3, 631
                  or          zero, s1, a4
                  addi        tp, a5, -1647
                  slli        s9, t5, 7
                  or          s9, s9, tp
                  xori        ra, a1, 546
                  slt         s1, a4, s8
                  auipc       a4, 596609
                  nop
                  lui         s1, 585174
                  or          s1, t5, a1
                  auipc       a6, 453010
                  sra         s6, a3, t6
                  auipc       s9, 1004551
                  srai        a2, s11, 16
                  sll         s8, a7, t6
                  lui         a4, 425185
                  lui         a7, 396316
                  srli        a0, a1, 0
                  sub         s7, a1, zero
                  slt         t1, a6, a1
                  andi        a7, s4, -1552
                  auipc       s7, 974089
                  srai        a7, t0, 16
                  add         a1, s0, sp
                  sub         s1, a4, gp
                  sltu        a7, s6, sp
                  andi        a0, s3, -660
                  sltu        a3, a0, s7
                  andi        zero, a5, 126
                  slti        s6, t3, 1665
                  addi        s2, s6, -1523
                  sltiu       a3, a6, 351
                  sltu        s9, s5, a6
                  ori         a0, s11, -692
                  srli        a2, s8, 4
                  andi        t0, s0, -111
                  and         ra, s8, s2
                  add         a3, t2, a3
                  srai        s9, a3, 29
                  xor         s9, t2, gp
                  andi        zero, a3, -1230
                  ori         s11, t5, -127
                  and         zero, sp, a0
                  sll         s0, s9, s1
                  sll         s5, gp, t2
                  auipc       s11, 492926
                  slli        a1, s3, 9
                  sltu        s3, s5, zero
                  srai        s9, a5, 2
                  slti        s9, a4, -1053
                  lui         s3, 674076
                  or          zero, t3, a7
                  sltu        t4, a6, a1
                  sub         s5, s9, s6
                  srai        ra, sp, 14
                  add         s9, s9, s1
                  sub         ra, a1, s6
                  sltu        s6, s7, a1
                  nop
                  slti        a0, a3, 1756
                  nop
                  add         a6, s4, s10
                  ori         a4, s11, -159
                  or          s5, a1, zero
                  addi        t3, s0, 1881
                  ori         t2, t1, 1903
                  slli        a4, s2, 25
                  srai        zero, t4, 13
                  srai        t1, gp, 1
                  slt         zero, t0, t0
                  or          a6, zero, sp
                  nop
                  sra         a6, s6, sp
                  lui         ra, 335765
                  slli        s7, s3, 2
                  auipc       t1, 462491
                  srai        tp, t5, 14
                  srli        t3, s2, 17
                  sltu        a2, t2, t0
                  slti        a6, s3, 1111
                  srli        t0, s3, 23
                  srai        zero, a4, 9
                  sll         tp, gp, a2
                  xori        a3, a7, 545
                  slli        zero, gp, 14
                  sltiu       s3, t2, -594
                  sub         s7, t0, s7
                  xori        gp, s3, 1080
                  lui         a5, 70713
                  andi        a1, t4, -320
                  or          zero, s10, s1
                  slli        t3, s9, 28
                  slt         zero, t2, s10
                  auipc       t0, 197669
                  and         a7, s9, s7
                  sra         gp, s2, t2
                  slt         zero, s6, s4
                  sltu        s5, a4, s9
                  nop
                  sra         s3, s8, s11
                  add         s1, s10, zero
                  lui         s11, 1046813
                  lui         s1, 466417
                  sltiu       a2, t5, 265
                  xor         t0, s3, a0
                  andi        tp, t1, 1819
                  srl         zero, s3, t4
                  sltu        sp, t2, s9
                  slli        s5, a1, 9
                  srl         s4, tp, s6
                  slti        s0, s6, 1915
                  xori        a0, a5, -986
                  auipc       s2, 421725
                  auipc       s8, 453904
                  sra         zero, t1, s4
                  nop
                  addi        t1, a4, 1657
                  add         s11, a2, a6
                  ori         ra, a0, 2017
                  srl         s5, a0, s3
                  sltu        a7, a4, a7
                  auipc       t4, 589174
                  xor         s8, zero, s9
                  sll         t2, t4, t1
                  ori         a3, t5, 1927
                  sltu        s2, gp, t4
                  lui         ra, 594117
                  add         a4, s5, t4
                  srai        t3, t6, 23
                  lui         s0, 478079
                  srli        t3, s3, 9
                  sra         ra, a3, s11
                  and         t2, s9, t1
                  sll         s5, a2, a1
                  xori        ra, s6, 552
                  and         zero, a1, a2
                  lui         a6, 951431
                  sltu        a1, zero, t1
                  or          s2, tp, a4
                  nop
                  andi        t2, a7, 1864
                  slt         gp, a3, a6
                  sra         gp, s5, tp
                  xori        zero, s8, -782
                  xori        a3, t5, -446
                  xor         s1, s0, sp
                  sltu        zero, s10, s9
                  srai        s4, sp, 4
                  or          zero, s9, t1
                  sltiu       s8, s5, -254
                  xori        gp, t3, 1695
                  xori        t0, s9, -602
                  slli        s0, s3, 30
                  or          t1, s7, t1
                  srli        t4, t3, 17
                  ori         zero, s6, 1077
                  andi        s0, s9, 92
                  srli        s4, sp, 0
                  nop
                  xor         tp, zero, s6
                  sub         a3, s11, t0
                  auipc       a0, 789921
                  xori        a5, s11, -1428
                  ori         s9, t6, 1374
                  xori        t2, a6, 838
                  nop
                  ori         gp, s10, 486
                  or          s5, sp, s1
                  slli        a1, t6, 9
                  srl         a7, s0, a6
                  lui         s4, 115392
                  xori        a7, s6, -1898
                  srl         s6, t1, t5
                  sra         a7, gp, s9
                  xor         t3, a3, s6
                  slti        a5, s1, -1861
                  srai        zero, ra, 20
                  xori        sp, s7, 1202
                  add         t1, tp, a5
                  sll         a1, a0, a7
                  lui         s6, 306061
                  sll         s7, s10, sp
                  auipc       a5, 220800
                  auipc       zero, 84000
                  lui         t2, 466056
                  srai        a4, s7, 16
                  ori         a1, a7, 123
                  andi        a4, t2, -1402
                  ori         a3, s4, -838
                  ori         a1, sp, -1820
                  sltiu       a6, s6, -312
                  add         zero, s0, a5
                  lui         a0, 1041752
                  srai        zero, a4, 25
                  addi        a1, s4, -601
                  addi        zero, s4, -810
                  addi        zero, s10, -677
                  srl         s1, zero, s1
                  ori         s0, s8, -952
                  sll         zero, t3, t2
                  sra         s9, s0, tp
                  nop
                  or          s5, a2, tp
                  slt         zero, t3, t2
                  lui         a5, 100315
                  auipc       tp, 65611
                  sub         zero, gp, a0
                  addi        s6, t2, -315
                  and         ra, t3, a0
                  xor         a0, s5, ra
                  sra         gp, t0, a1
                  xori        a6, s3, -258
                  sub         ra, gp, sp
                  sll         a6, t5, a6
                  xor         a7, a6, s10
                  andi        s7, a2, -1600
                  slt         t3, s2, a2
                  sll         s1, a1, t2
                  and         gp, ra, s1
                  sub         a4, s0, a0
                  and         gp, ra, a7
                  ori         zero, ra, -1155
                  sra         zero, t1, t1
                  ori         gp, s3, 1802
                  sltiu       s0, s9, -1416
                  addi        t0, a2, 1017
                  auipc       a0, 195799
                  add         a1, s10, t0
                  slt         s8, s9, zero
                  slti        t2, a5, -246
                  srl         tp, s8, s4
                  lui         t4, 189121
                  nop
                  srai        zero, t1, 16
                  auipc       s11, 982233
                  xori        t2, a5, 1725
                  slt         s4, gp, zero
                  or          gp, a7, t4
                  srli        s4, t5, 13
                  xori        tp, tp, -1051
                  and         a7, a3, s2
                  andi        t4, tp, 81
                  sltiu       sp, s0, 846
                  srl         zero, s3, s10
                  ori         zero, t0, -928
                  slti        a2, a0, 1468
                  sra         s9, s9, s9
                  auipc       s9, 3158
                  srai        s6, s8, 17
                  nop
                  slti        s5, s1, -1356
                  slt         s4, sp, s1
                  sra         t3, a5, s0
                  sll         a0, t1, s4
                  ori         sp, s3, -1394
                  slli        s9, a4, 23
                  auipc       s1, 913558
                  auipc       a1, 892853
                  srl         a1, tp, t1
                  auipc       s7, 604099
                  srl         a4, s1, t6
                  andi        s2, a3, -982
                  sub         s5, s8, a6
                  srl         s2, s8, a4
                  sra         a3, zero, s8
                  slt         a5, a7, t2
                  srl         a4, s6, s2
                  sltu        s6, a5, t0
                  andi        t1, tp, -986
                  lui         a0, 1022325
                  srai        a1, s0, 28
                  xori        t0, s0, 191
                  or          zero, zero, a5
                  ori         t4, a3, -276
                  lui         a4, 427316
                  srl         s2, a5, a6
                  slti        s4, a1, 347
                  slli        s4, gp, 17
                  slti        s8, t2, 744
                  lui         zero, 956847
                  or          s9, s3, t5
                  add         a5, zero, s10
                  srli        a5, s1, 4
                  andi        a7, sp, -1723
                  xori        a1, t0, -610
                  srai        t2, a0, 3
                  and         a3, zero, s0
                  slt         ra, s1, s9
                  srai        s1, s0, 20
                  sub         s8, s2, t2
                  slli        sp, s0, 4
                  xor         a1, a0, t3
                  nop
                  slli        s11, s9, 17
                  srli        ra, s1, 0
                  nop
                  sltiu       zero, t4, 1612
                  and         sp, s6, t3
                  sra         t0, t4, a7
                  auipc       s0, 129930
                  lui         gp, 595326
                  srli        s0, zero, 5
                  slti        s2, s8, 917
                  or          s4, s6, t5
                  slli        s6, s11, 3
                  auipc       a5, 602564
                  srli        s2, a3, 3
                  nop
                  sra         t2, a3, a4
                  sll         zero, a7, s10
                  auipc       s0, 245374
                  and         s3, t5, sp
                  ori         zero, s8, 1466
                  srl         a2, sp, s0
                  or          t4, s8, a3
                  add         s5, a2, a7
                  sll         a5, s6, sp
                  lui         sp, 444989
                  srli        gp, s0, 13
                  xori        s9, a4, -959
                  srli        a1, s5, 24
                  and         s4, a1, gp
                  sub         t2, sp, a0
                  addi        s0, t4, 1669
                  sltiu       t2, s5, 1519
                  sra         s6, s1, s4
                  xor         t2, zero, a4
                  srai        s11, ra, 4
                  sltiu       gp, ra, 1152
                  addi        s1, s10, -1270
                  auipc       a2, 340879
                  srai        s3, s5, 31
                  sra         s1, s3, s1
                  or          t4, a5, s9
                  xor         t3, t6, s6
                  and         a3, a5, s4
                  slt         s11, s6, s7
                  sra         s3, a0, s3
                  srl         a5, t6, a3
                  sltiu       t1, a3, -1173
                  addi        zero, t2, -953
                  or          s11, t5, t5
                  sra         s6, a0, gp
                  xori        t2, gp, -348
                  sltu        s4, s6, t4
                  ori         s5, a6, 400
                  addi        a7, s4, 1086
                  or          zero, zero, a7
                  and         t3, t2, s0
                  sltiu       tp, t1, -223
                  sra         a3, s7, s4
                  nop
                  slli        s0, a4, 17
                  srl         zero, t3, t4
                  xor         s11, s6, t1
                  slli        t2, zero, 7
                  sltu        s8, s11, s10
                  xor         zero, s0, s10
                  xori        a3, s11, 466
                  sltiu       t4, s8, 1054
                  xori        t0, s6, -1953
                  auipc       s1, 581656
                  slt         s0, s2, t6
                  slt         s0, tp, s9
                  slt         a6, a4, a2
                  add         s1, t6, s3
                  srai        sp, t2, 0
                  ori         s1, a7, -173
                  sra         a5, s7, a7
                  ori         t2, gp, -152
                  add         t1, tp, s3
                  sll         a5, a1, a1
                  srli        s11, a2, 8
                  sra         a0, s7, t1
                  slti        a3, a4, 604
                  or          s9, s10, s4
                  ori         sp, s9, -281
                  srai        t3, a5, 3
                  ori         s6, t0, -1074
                  slli        a6, s1, 27
                  lui         zero, 66605
                  srl         a4, ra, t1
                  xori        s7, a1, 1521
                  nop
                  slt         s5, gp, gp
                  slti        zero, t3, 1168
                  srl         s9, s9, a1
                  sltiu       zero, s2, -1669
                  slti        a6, a2, 2047
                  xori        zero, t6, 702
                  sll         a6, a5, a4
                  andi        s11, s3, -1747
                  add         s4, s10, a4
                  auipc       t4, 470340
                  andi        a0, a3, 368
                  sra         zero, a7, s4
                  xori        zero, a2, 1478
                  sltiu       s11, a7, 1352
                  ori         s7, t3, -1710
                  slt         a4, a7, s0
                  slli        t2, t3, 15
                  slti        t2, t0, -1942
                  or          s1, a1, ra
                  sra         s0, t5, s10
                  sltiu       zero, s7, -8
                  slli        zero, ra, 28
                  sll         t0, s10, a7
                  sll         t2, a7, t5
                  slli        s9, t6, 1
                  srai        tp, s10, 31
                  slli        s1, tp, 14
                  slti        a1, s7, 1630
                  slti        sp, a3, 1788
                  and         s11, t0, s1
                  slt         s3, a0, s1
                  auipc       a7, 781888
                  andi        sp, t3, 276
                  sub         a5, sp, a1
                  ori         s9, s0, 1013
                  srl         s6, s3, s10
                  slti        a2, a7, 1457
                  sra         a0, t3, s4
                  srl         sp, a1, s0
                  sltiu       t2, a4, -1663
                  and         t1, a4, a3
                  lui         zero, 871431
                  srai        a2, zero, 6
                  srai        t3, t0, 1
                  ori         s5, a7, -1547
                  or          t4, a5, s7
                  sll         a1, s5, a6
                  lui         s9, 788696
                  lui         s4, 145711
                  sra         s0, a0, a2
                  addi        zero, a2, -1168
                  andi        t0, a5, 1391
                  sub         a3, s0, a5
                  srai        s5, ra, 6
                  or          a2, t3, a4
                  or          a2, a5, ra
                  auipc       a4, 4603
                  sltiu       zero, t2, -633
                  srli        s3, s8, 27
                  slti        ra, s7, 263
                  srli        a6, s11, 25
                  xor         t3, s7, s2
                  or          s0, t1, sp
                  nop
                  andi        t2, s10, -1380
                  sltiu       a3, s11, 1855
                  xori        tp, s10, -1222
                  auipc       t1, 353950
                  nop
                  lui         t3, 673562
                  sub         sp, s1, tp
                  add         zero, s9, s6
                  and         s9, a0, t1
                  add         a6, t1, s1
                  sra         s2, a4, s3
                  add         s6, t3, t0
                  lui         tp, 299366
                  and         a1, t1, s11
                  auipc       gp, 607071
                  sub         zero, t3, t6
                  slli        s4, s8, 14
                  sub         a4, s0, tp
                  sll         a2, tp, sp
                  slt         sp, s10, zero
                  srl         a5, a2, a3
                  sltiu       s6, t2, 299
                  sra         t1, s7, a6
                  or          tp, a5, a4
                  add         tp, a0, s6
                  sll         a5, a4, s1
                  auipc       a5, 590029
                  ori         s5, s9, -1076
                  sra         s11, s3, a5
                  sll         s8, ra, a6
                  xori        gp, t6, 1867
                  auipc       a2, 586862
                  sll         s9, s0, a1
                  addi        s8, s1, -148
                  add         a0, t4, s1
                  andi        s5, sp, -928
                  andi        a0, t5, -1298
                  slti        a6, s1, -1422
                  srai        a5, a5, 15
                  xori        a7, t0, -1484
                  sub         a3, s9, s8
                  sra         gp, s0, s10
                  ori         s8, t3, -1426
                  srl         t0, s9, s7
                  sll         sp, sp, a1
                  ori         s11, zero, 490
                  srl         t2, tp, s5
                  ori         s3, a5, -1076
                  sub         t3, s1, t0
                  addi        a2, t5, 570
                  sub         t1, s4, t1
                  srai        s1, s10, 8
                  and         gp, s10, a0
                  srli        s7, gp, 21
                  ori         zero, a7, -1258
                  ori         s7, tp, 1760
                  srai        s5, t0, 0
                  ori         zero, t0, 1105
                  sll         tp, s1, a4
                  xori        zero, s10, 1949
                  srli        a4, s6, 6
                  andi        a5, s4, 1371
                  sltiu       t1, s3, -22
                  ori         a5, s5, 1606
                  addi        t0, s8, -95
                  and         s11, a1, t0
                  sub         s7, t5, a3
                  auipc       ra, 839623
                  addi        t4, sp, 1942
                  and         a5, s8, s0
                  xor         a7, zero, s2
                  nop
                  xori        a0, a4, 1663
                  andi        a5, s4, -1914
                  auipc       ra, 109868
                  sltu        s2, a7, gp
                  sll         t1, t5, s8
                  xori        s8, a1, 1934
                  sltiu       a7, s8, -1286
                  andi        gp, s11, -1049
                  sra         t2, s0, t2
                  sra         t0, a4, a4
                  addi        sp, tp, -1503
                  xor         t1, t3, t2
                  sll         a1, a1, a2
                  srli        a1, a7, 4
                  ori         a6, s10, 345
                  slti        s3, t4, -1119
                  or          s7, s7, tp
                  andi        a1, s7, -156
                  auipc       a6, 888596
                  xor         ra, s7, s5
                  xori        a0, s3, -87
                  add         t0, s1, t3
                  srai        t3, zero, 6
                  addi        s11, s6, 880
                  slti        tp, gp, -759
                  ori         a7, t2, -2036
                  lui         gp, 564692
                  and         t0, t3, s1
                  sra         t3, t2, s9
                  and         a5, s8, a5
                  nop
                  add         s0, tp, s6
                  srl         t4, zero, s2
                  and         zero, a1, s1
                  srl         t1, a6, t2
                  srai        zero, ra, 26
                  sltu        t4, t2, s4
                  addi        s5, t2, -1908
                  slti        a4, s8, -925
                  andi        s8, s5, -1980
                  nop
                  sltiu       a1, a5, -367
                  srai        zero, s1, 17
                  xori        a1, s8, -684
                  slli        zero, s5, 11
                  lui         zero, 995626
                  slti        s1, a5, -1262
                  slt         a3, t6, s6
                  srli        a1, gp, 4
                  or          s7, s7, a2
                  add         ra, a6, ra
                  lui         a4, 684054
                  srai        sp, a6, 4
                  xori        s8, t6, 760
                  slli        sp, s11, 21
                  xori        a5, a5, -368
                  xor         t3, s5, s3
                  addi        s4, s11, 901
                  slti        a5, t4, 825
                  srli        a0, a6, 2
                  sub         a5, ra, gp
                  xori        s3, a3, -1267
                  sll         a2, a1, a2
                  xori        zero, s1, -586
                  ori         s0, s7, -321
                  xori        a2, zero, -1066
                  andi        s7, s4, -624
                  srai        a4, a2, 6
                  sltiu       sp, s10, -1298
                  srli        s11, s6, 7
                  lui         s8, 344951
                  sltu        zero, gp, t0
                  nop
                  slt         t4, s10, s5
                  lui         s4, 698034
                  xor         s2, t1, ra
                  andi        sp, t5, -465
                  sub         zero, s9, t1
                  sub         s11, s4, t4
                  andi        a6, s4, 1572
                  srli        tp, t0, 10
                  addi        t3, t6, 504
                  or          s8, s9, s1
                  and         zero, s5, a5
                  add         s0, t5, zero
                  sltu        a5, s3, t4
                  andi        s3, s5, -671
                  srai        s9, s10, 22
                  sltiu       t1, a1, -946
                  sll         a4, t0, t6
                  xori        a1, a0, -1363
                  andi        a4, a0, -36
                  sra         a7, s11, a3
                  lui         a0, 742904
                  addi        s0, a0, -1401
                  srl         t2, s1, s7
                  or          s9, tp, s2
                  ori         t2, s7, 1996
                  slti        a1, s8, 207
                  sra         tp, sp, s11
                  ori         s9, a4, 1128
                  slt         sp, t2, s0
                  sltu        zero, ra, s10
                  xori        s6, s1, -1693
                  srai        ra, a7, 22
                  and         s9, gp, s11
                  sltu        a5, t4, ra
                  and         a6, s4, t3
                  sub         s8, s3, t2
                  slt         ra, gp, s7
                  sra         tp, t6, a3
                  andi        a0, a5, 791
                  sra         t2, a2, tp
                  andi        t3, a2, -1078
                  sub         a1, t1, a0
                  addi        t2, s11, -36
                  nop
                  sltu        s0, t6, a1
                  sll         a6, a0, s1
                  lui         s6, 345274
                  sll         t2, t4, gp
                  slli        zero, t3, 5
                  srl         a0, t0, s2
                  xori        s2, a0, -446
                  sra         s9, s0, a3
                  srl         s8, a5, t6
                  addi        s0, s11, -864
                  slli        tp, s2, 9
                  slli        s1, a6, 11
                  sll         a0, a7, s3
                  sub         t4, zero, a3
                  sra         s9, t4, ra
                  srai        a6, gp, 24
                  auipc       s0, 723800
                  srl         a2, sp, s9
                  sra         s9, a0, s3
                  slti        a3, a0, 214
                  slt         s9, s4, s7
                  slli        zero, s2, 4
                  sra         t2, s10, zero
                  sltu        s11, s9, t4
                  srli        zero, a2, 5
                  and         s2, t3, a1
                  add         zero, a3, gp
                  sltiu       a6, s6, -385
                  xori        a3, zero, 1261
                  slt         sp, s1, s5
                  nop
                  sll         s0, s3, a5
                  lui         s4, 1012885
                  sub         zero, s8, t6
                  sltiu       s6, t6, 1013
                  add         a4, a4, a5
                  sra         ra, s6, tp
                  sll         zero, a1, t2
                  auipc       tp, 73799
                  ori         s7, s11, 549
                  ori         sp, s10, 698
                  slti        a2, s10, -29
                  addi        a1, s11, 273
                  auipc       s3, 334265
                  sub         a5, s8, a0
                  slti        zero, ra, 300
                  sra         zero, s0, sp
                  and         s5, gp, a1
                  addi        a5, s8, -443
                  lui         zero, 841532
                  addi        s4, t0, -1022
                  xor         s0, a3, s8
                  andi        s0, a4, 88
                  addi        s5, ra, -1207
                  srl         s8, s0, t5
                  xori        t0, a6, 185
                  srli        t2, t3, 23
                  srai        a7, a5, 30
                  ori         t1, s0, -1201
                  ori         a4, t0, -341
                  sub         s0, s4, tp
                  or          a1, t2, t6
                  slt         s3, s5, s5
                  sub         s9, a1, a4
                  slti        a2, a6, -828
                  xor         t3, s4, a3
                  andi        s6, s9, 1116
                  sll         zero, s6, a6
                  slti        s1, s7, -1470
                  ori         t0, t2, -1464
                  xor         zero, a2, s2
                  addi        t1, s4, 1654
                  ori         s0, a6, -1203
                  slli        t4, zero, 5
                  sltiu       a5, t6, -529
                  slti        s3, s2, -1584
                  sra         zero, a0, a3
                  auipc       s6, 957613
                  slli        a2, a0, 22
                  sub         s1, gp, zero
                  and         s9, a5, s3
                  srli        a4, t6, 25
                  sub         zero, t5, s0
                  sltu        s1, s3, s5
                  sltu        gp, t4, t3
                  srl         a6, t6, s3
                  sub         s0, s6, s1
                  sub         a4, ra, sp
                  andi        tp, s0, 1520
                  srai        a6, a1, 28
                  sra         t1, s2, s6
                  xor         s5, t6, tp
                  or          s4, s10, s5
                  sll         a5, s3, t5
                  srl         tp, zero, s5
                  sltu        t2, s10, s2
                  add         s0, s4, gp
                  ori         t0, s1, -1035
                  srli        t4, gp, 0
                  sll         t3, gp, s8
                  xori        s3, s4, -562
                  xori        zero, s0, 485
                  srl         zero, t0, s2
                  srai        t0, s10, 24
                  srl         s1, s8, s0
                  ori         s6, s2, 1772
                  sra         zero, s6, t0
                  or          s8, t4, s2
                  xor         t4, a5, s8
                  and         a6, a1, s5
                  srli        t2, s3, 23
                  slli        a3, t0, 8
                  sltiu       t0, zero, -971
                  andi        gp, a3, -1294
                  srl         ra, a2, a6
                  sub         s8, a5, zero
                  sltiu       t1, a0, -112
                  andi        t4, a7, 1124
                  or          t0, zero, s5
                  slli        zero, gp, 12
                  and         t3, t6, s5
                  sll         a2, sp, a5
                  sltu        s0, s11, a6
                  slli        s4, a3, 12
                  sltu        gp, sp, a5
                  sltiu       s8, a0, -335
                  xor         s5, a2, ra
                  srli        t3, s0, 28
                  srl         tp, tp, a6
                  xor         s0, s8, s3
                  srli        sp, s0, 26
                  sltu        a4, zero, sp
                  sltu        s3, s10, tp
                  auipc       a6, 381428
                  lui         zero, 964067
                  xori        zero, t3, -915
                  slli        s8, t4, 10
                  xori        t3, a4, -432
                  andi        zero, s5, 1302
                  xori        s11, s6, 701
                  sra         s7, gp, s6
                  srl         a0, s9, zero
                  srl         s6, t0, a4
                  slt         t4, t2, a6
                  slli        s3, t5, 10
                  sll         s5, a7, a1
                  sltiu       s8, s5, -1542
                  add         s1, ra, s10
                  xori        t1, t2, 1374
                  andi        a0, a6, -621
                  or          zero, s9, a5
                  sra         s9, a5, a5
                  or          s1, s7, s11
                  sll         a3, s9, t4
                  lui         s1, 1031041
                  auipc       a6, 858062
                  xori        t1, a5, -1634
                  sub         t2, a6, s10
                  auipc       zero, 499514
                  srai        s2, s10, 5
                  sra         s3, ra, a3
                  nop
                  sltu        a7, a7, s7
                  srli        zero, t2, 9
                  sra         s3, s2, gp
                  sltu        zero, t5, a7
                  addi        s0, s8, -885
                  auipc       s1, 955192
                  sll         a0, a0, s4
                  and         gp, t2, gp
                  srli        s2, s8, 8
                  add         s4, s6, gp
                  or          zero, s9, s9
                  slti        s5, s2, -1542
                  sub         t1, s8, s0
                  srl         a1, a7, a3
                  slli        s8, s8, 24
                  slti        gp, s1, 1036
                  sll         a5, t5, s7
                  andi        zero, s10, 1134
                  lui         a3, 423238
                  slli        ra, s3, 2
                  slt         a5, a3, t3
                  slt         gp, s4, t0
                  addi        sp, s7, -1229
                  srli        t0, a1, 0
                  srai        t3, zero, 29
                  slti        t0, a7, -1205
                  and         s8, s5, a1
                  srli        a7, a4, 1
                  sltiu       zero, t5, -432
                  or          s3, tp, s9
                  auipc       zero, 155060
                  sltu        t4, s11, tp
                  addi        a6, s3, -1800
                  srai        s5, s2, 20
                  or          a0, a0, a3
                  slli        s5, s0, 15
                  andi        s5, s9, 128
                  sll         s0, t3, a7
                  xor         s4, t4, t1
                  ori         a4, a4, -581
                  sub         zero, s2, s4
                  auipc       a5, 339323
                  slt         ra, s6, s4
                  and         zero, gp, gp
                  addi        t1, s2, 406
                  xor         ra, t5, s4
                  sltu        s1, s10, s11
                  sub         a2, t2, a0
                  add         tp, t2, s5
                  andi        s5, tp, -559
                  lui         a1, 1020879
                  sltiu       zero, t5, -1278
                  xori        s3, s8, -311
                  slti        s1, t6, 857
                  slli        s0, a6, 23
                  slli        s1, s5, 6
                  srai        s5, a2, 14
                  sub         s7, s3, gp
                  sub         s4, gp, s7
                  sltiu       s7, a1, 1882
                  slli        t2, zero, 17
                  sltu        t0, a2, s7
                  ori         s11, tp, 235
                  sub         sp, a6, tp
                  sra         ra, a7, a5
                  auipc       s7, 771416
                  sltiu       ra, sp, -1640
                  sltiu       t4, s0, 719
                  srai        tp, gp, 31
                  auipc       ra, 716003
                  or          a3, s2, a6
                  sub         a3, s11, s10
                  and         gp, a1, sp
                  sub         s6, a5, a6
                  ori         t2, s11, 1788
                  sub         a7, t0, t6
                  auipc       a0, 73151
                  addi        zero, a0, 1056
                  lui         zero, 744030
                  ori         t2, t4, -877
                  sltu        sp, s2, s4
                  auipc       zero, 305884
                  xori        t3, s9, 810
                  ori         a2, s6, 922
                  xori        tp, t4, -1740
                  ori         t4, zero, -1254
                  nop
                  slli        s3, t2, 28
                  or          s9, t5, t5
                  slli        t4, s1, 24
                  ori         s5, s9, 1856
                  srl         t0, s1, t4
                  xor         s4, s0, t2
                  auipc       a5, 1014833
                  slti        a6, s9, -1230
                  nop
                  srli        s0, ra, 3
                  nop
                  or          s11, zero, s4
                  auipc       s6, 1036951
                  slt         zero, s7, t6
                  slli        t3, s0, 27
                  addi        zero, s11, 1922
                  addi        s9, a1, -1456
                  xori        a5, t0, -1000
                  ori         s9, s7, 1588
                  slt         a5, s5, s11
                  or          t3, s4, a3
                  srai        s8, s3, 12
                  sub         s9, s5, s7
                  sltu        s4, s10, t2
                  add         ra, t3, s7
                  slt         s8, s4, a5
                  sltiu       a0, s4, -804
                  slt         s4, a7, t4
                  or          zero, t5, a5
                  sltu        a2, t2, ra
                  xori        s2, s6, -1859
                  sra         s4, gp, a1
                  srai        s4, s8, 16
                  sll         zero, zero, s10
                  andi        s3, t4, -1912
                  and         a3, tp, a3
                  auipc       zero, 922496
                  or          zero, s9, a7
                  auipc       t2, 567691
                  srli        zero, s9, 30
                  sll         zero, a0, a0
                  sltiu       t0, a1, 1272
                  ori         s2, tp, -1696
                  and         s2, s1, ra
                  xor         s0, t2, s5
                  nop
                  andi        s3, t3, -75
                  lui         gp, 803692
                  sra         t3, a7, s1
                  addi        s4, t1, -247
                  nop
                  xor         gp, a7, sp
                  srli        t2, s4, 0
                  sll         s1, s3, s4
                  slt         s4, s6, a5
                  and         a7, gp, ra
                  xori        zero, t1, -872
                  sra         a3, s9, s7
                  slli        a5, t1, 13
                  lui         gp, 120624
                  sltiu       s8, s10, 39
                  srli        s7, t3, 19
                  addi        a2, s1, -1613
                  sltiu       s9, s3, -21
                  sub         t2, s7, s6
                  auipc       s2, 255269
                  srl         gp, s0, t2
                  andi        s5, s8, 1476
                  srl         s2, s8, t0
                  or          a1, s2, t2
                  srl         t0, zero, t4
                  xor         t4, a7, a4
                  sra         t4, s11, a0
                  xor         s9, a7, a4
                  sltu        s9, a7, t2
                  andi        zero, s1, -604
                  andi        s11, s9, 53
                  sltu        t2, a7, s6
                  auipc       zero, 168146
                  lui         t2, 266976
                  auipc       zero, 445032
                  add         s4, t2, a5
                  xori        tp, s2, -1139
                  ori         tp, sp, -1223
                  sra         s3, a3, s9
                  slti        a0, zero, 615
                  xor         a2, t2, sp
                  xori        tp, t3, -41
                  addi        zero, t3, 1553
                  sltu        t0, s10, s8
                  slti        s11, t1, -213
                  add         s7, t1, s5
                  addi        tp, s2, -1368
                  nop
                  srl         t3, t4, s11
                  sltu        a2, s6, t4
                  lui         s3, 277112
                  sltu        t0, s1, t6
                  sltu        s7, s9, tp
                  sll         zero, s0, s2
                  sub         tp, a0, a4
                  add         gp, t2, s4
                  xori        a3, s1, 208
                  add         t2, a6, sp
                  andi        a7, s9, -15
                  or          s9, gp, a2
                  sub         t1, s3, s7
                  and         s0, s2, s6
                  slli        tp, s11, 25
                  slli        zero, a3, 10
                  sub         s11, s2, gp
                  srl         s4, s11, t6
                  xori        ra, a0, -647
                  auipc       s11, 918801
                  sltu        ra, s11, a2
                  sub         t1, s3, a1
                  lui         a0, 611655
                  sub         sp, a1, t3
                  nop
                  xor         t0, a1, s6
                  sltu        s1, t2, s0
                  slli        a3, a7, 29
                  sub         a3, s0, a5
                  addi        a1, sp, -1025
                  nop
                  srai        t0, s0, 12
                  nop
                  slt         zero, s4, ra
                  slli        t3, t2, 9
                  lui         s3, 902564
                  slti        a0, a2, -1826
                  slti        t4, s6, 829
                  ori         s11, a2, -1412
                  srl         ra, s2, a4
                  andi        s9, s3, -1982
                  addi        zero, zero, 1314
                  andi        sp, t4, 1629
                  add         s9, a2, a7
                  srli        s2, a4, 29
                  nop
                  sll         s1, ra, s4
                  lui         zero, 828960
                  sub         a0, s7, s5
                  slti        t3, gp, -1905
                  add         t2, a5, s2
                  sltiu       a5, zero, 1898
                  andi        s9, zero, -1660
                  sra         a7, a7, a4
                  or          a7, t4, sp
                  srli        a1, t2, 10
                  srl         s8, t3, s4
                  and         a3, s9, a6
                  andi        t4, s8, -1957
                  auipc       a2, 217576
                  add         gp, a0, zero
                  auipc       a0, 972637
                  addi        t4, s10, -1010
                  slti        s2, gp, 1380
                  and         a1, a0, a1
                  sll         s11, a1, sp
                  addi        s3, a4, -1477
                  add         s1, s6, s11
                  and         t1, s11, zero
                  slli        a4, sp, 24
                  or          s8, a6, a5
                  sra         gp, a5, a4
                  and         s7, gp, s1
                  srl         a1, ra, a6
                  sub         a3, zero, a0
                  srl         a3, s0, s9
                  slli        t2, s4, 13
                  slt         s8, t2, t6
                  slti        s2, s10, -322
                  srli        s6, s2, 25
                  xori        s1, t2, 1381
                  srai        t0, s7, 10
                  nop
                  srai        a3, s2, 17
                  srli        a5, t0, 1
                  or          s11, t6, s6
                  slti        sp, t4, 1721
                  slli        t3, s3, 16
                  xor         s8, t0, s5
                  auipc       s3, 642688
                  xori        s11, a2, -910
                  or          a2, s11, a1
                  slti        s4, t1, 2025
                  sub         s4, s7, s1
                  and         s2, a1, s1
                  ori         a4, sp, -1419
                  slt         ra, s11, zero
                  xor         zero, a6, sp
                  andi        a2, t0, 291
                  xor         gp, t2, a0
                  sltu        t3, ra, t1
                  slti        s5, s7, 1317
                  xori        a6, a0, 1626
                  lui         s11, 155331
                  srli        a7, a6, 23
                  srl         a6, t1, t5
                  sra         zero, s1, s2
                  slt         t2, tp, ra
                  lui         s5, 220451
                  slli        t1, s5, 28
                  ori         t1, s10, -817
                  slti        a0, t3, 797
                  sltu        s6, t2, a4
                  addi        t3, s5, 1270
                  slt         s3, t2, s8
                  srli        s5, a3, 16
                  lui         s1, 87396
                  and         a5, t5, s3
                  lui         zero, 367578
                  sra         t2, zero, a5
                  addi        ra, a2, -1862
                  srli        s6, t4, 16
                  xori        zero, tp, -1680
                  xor         s6, t0, s4
                  lui         t4, 572613
                  sra         a4, s7, s8
                  srli        a3, s11, 6
                  andi        s1, s11, 1374
                  slti        s0, a7, 1023
                  sll         s0, s10, s0
                  lui         s1, 917539
                  andi        ra, gp, -976
                  andi        zero, a3, 530
                  xor         t2, s10, a7
                  srai        zero, s3, 14
                  add         s11, s0, ra
                  srl         s2, s7, gp
                  sll         a2, a7, a4
                  lui         zero, 149843
                  slli        zero, s10, 31
                  slt         s1, a4, s0
                  sltiu       t1, s6, 1151
                  and         s2, s3, s5
                  ori         a6, t3, 4
                  sltu        s9, s7, t3
                  srl         s3, a0, t4
                  slli        s9, gp, 29
                  auipc       a6, 872734
                  and         t3, t1, gp
                  slt         s9, zero, a6
                  xori        t0, s3, -1616
                  sltu        s0, a5, zero
                  xor         a0, a6, s5
                  sub         a4, s2, s2
                  sub         s3, t4, a3
                  srli        zero, s5, 22
                  sltu        a4, a5, s4
                  ori         s0, t3, -249
                  addi        tp, s7, 576
                  srl         s2, zero, s11
                  addi        zero, t4, -763
                  slli        a2, t5, 28
                  ori         a2, s6, -1422
                  ori         zero, s1, 940
                  srai        a4, s3, 28
                  sub         s8, s7, s6
                  srli        a0, s4, 7
                  sub         a7, tp, s1
                  andi        a1, a2, 788
                  sra         t1, s5, s4
                  andi        zero, s1, -1051
                  lui         zero, 697965
                  or          a7, s1, t0
                  andi        s1, t0, -1757
                  slti        zero, s10, 1004
                  srl         a7, a5, t2
                  andi        zero, t0, 837
                  xor         ra, a7, ra
                  srli        a3, s1, 26
                  add         ra, zero, a5
                  slt         s8, t5, s1
                  lui         a1, 707710
                  auipc       a3, 692496
                  nop
                  auipc       ra, 631009
                  sra         zero, t3, a6
                  lui         gp, 785014
                  sltu        t0, t0, zero
                  andi        ra, gp, 1526
                  xor         zero, a7, s8
                  sra         sp, a1, a2
                  slti        a7, sp, -1905
                  srl         s8, s0, a0
                  srai        sp, zero, 0
                  sltu        zero, s7, s0
                  sra         t1, zero, s4
                  nop
                  sra         sp, s1, t1
                  srli        a4, a2, 0
                  and         s5, a2, a4
                  slti        a7, s9, -861
                  slti        a7, a6, 1387
                  lui         zero, 736556
                  add         t4, a1, t1
                  lui         t3, 702953
                  or          zero, s7, gp
                  slli        sp, s1, 7
                  or          a4, a3, a3
                  srai        t2, t2, 10
                  sub         s5, a7, s3
                  andi        s4, tp, 195
                  or          s6, t6, t1
                  add         t3, a0, s5
                  slti        a2, a0, 1389
                  srl         a5, t4, a0
                  xor         t2, a3, s8
                  slti        s7, s9, 1963
                  slli        s5, tp, 25
                  sub         a5, t1, sp
                  addi        a0, sp, -1516
                  xor         t1, a5, a3
                  srli        s6, s5, 26
                  ori         s8, s11, -1729
                  sub         a5, s11, zero
                  add         s1, s8, s10
                  sltu        a4, ra, s11
                  lui         sp, 775502
                  add         zero, ra, t6
                  slti        s7, s1, -1994
                  sltu        a5, a1, zero
                  sltiu       s6, s5, 114
                  sll         s4, a6, t1
                  slli        gp, a0, 25
                  srl         a4, a0, sp
                  xori        gp, s6, -152
                  slli        t0, t6, 1
                  slli        t4, s10, 1
                  lui         t4, 859967
                  xori        gp, a5, 794
                  xor         s3, s2, a1
                  slli        a0, gp, 22
                  auipc       t2, 514756
                  sra         s4, t2, t0
                  add         sp, s6, s6
                  srai        a4, t2, 29
                  sub         tp, s11, s10
                  add         s3, t3, s10
                  srli        s0, t6, 1
                  srl         a4, t1, t2
                  sltu        a1, a0, a0
                  sra         a2, a7, tp
                  sra         a4, t1, t6
                  or          t4, t4, s6
                  sra         s8, sp, a1
                  srai        s6, t3, 30
                  slti        s5, ra, 871
                  lui         sp, 751123
                  or          zero, sp, gp
                  ori         t0, gp, -1434
                  auipc       a4, 821043
                  xori        s2, a3, 1947
                  srli        a2, t1, 28
                  auipc       t4, 129031
                  sll         a7, a5, a0
                  nop
                  ori         a2, s6, 1434
                  ori         a1, s8, -349
                  xor         t4, t4, a2
                  srl         a3, t6, gp
                  sub         t3, gp, s3
                  ori         a5, t3, 391
                  sll         s3, t0, s2
                  addi        s8, s11, -965
                  sll         a4, s6, ra
                  auipc       ra, 573685
                  xori        t3, s0, 1893
                  ori         a1, s11, 2025
                  sltiu       gp, t5, -1880
                  slli        a3, t2, 1
                  sub         s6, sp, s7
                  srl         a5, a4, a0
                  slt         s1, t3, t0
                  xori        zero, a2, -1945
                  srli        t1, a3, 11
                  andi        a1, zero, -815
                  srli        s8, zero, 28
                  sub         s0, t0, a1
                  slti        t4, t0, -251
                  or          gp, sp, a5
                  addi        t0, t3, -1292
                  sll         t3, zero, s9
                  sub         s9, t3, s1
                  ori         s8, t2, 1336
                  auipc       s11, 927597
                  sll         a6, a2, s3
                  ori         s6, s11, 1414
                  and         t3, a0, t0
                  or          a5, s4, s11
                  slt         zero, s11, a6
                  sub         t0, ra, t4
                  add         ra, a7, s6
                  and         s6, a6, s7
                  sub         s1, tp, s7
                  add         s4, a7, s10
                  sll         a7, s0, a4
                  lui         a2, 764511
                  or          zero, a1, s6
                  slt         tp, a6, a7
                  xor         ra, s5, t3
                  srl         a7, t1, s8
                  or          s0, ra, s4
                  lui         a3, 3902
                  and         s6, s0, a2
                  sll         a0, a5, s5
                  sltiu       s7, s10, -157
                  sub         tp, t0, a6
                  or          s4, t0, t5
                  ori         zero, a2, -106
                  and         a6, t6, s1
                  add         s6, t2, a4
                  slti        zero, s1, -108
                  andi        t3, t4, -1563
                  xori        gp, s0, -227
                  nop
                  srl         gp, zero, a6
                  srai        a4, t3, 7
                  sra         s4, s6, s11
                  xori        a6, s3, -1443
                  sra         a7, t2, a3
                  sra         t4, gp, t0
                  sll         s3, t1, s9
                  and         zero, s7, a4
                  slti        t0, sp, 1641
                  slti        a7, zero, -1445
                  xori        ra, s10, 239
                  sub         zero, a5, t0
                  sub         zero, s5, a4
                  xor         zero, a5, a5
                  xor         s3, s4, t3
                  and         a0, tp, s5
                  sltu        t0, t1, t1
                  srl         a7, a3, t6
                  slli        a1, t0, 29
                  sll         s6, a1, tp
                  lui         s9, 483065
                  sra         t0, s10, a6
                  nop
                  sll         a7, t0, a2
                  slti        s6, s5, 873
                  addi        s8, gp, 1260
                  sub         s0, t2, s8
                  sub         a6, t5, a5
                  sll         zero, gp, a0
                  slt         zero, a4, s8
                  sub         s8, s7, a6
                  srl         s9, ra, a3
                  slli        ra, ra, 11
                  addi        a0, s11, -967
                  addi        s7, s3, -2025
                  sltiu       s2, gp, -1211
                  or          t4, gp, a1
                  andi        s3, ra, 649
                  srl         t3, t2, t1
                  sll         zero, t3, sp
                  sll         s3, s4, a5
                  sll         s1, s10, s10
                  sltiu       s11, a7, -445
                  srai        t4, t5, 26
                  ori         a4, s2, -1621
                  slt         zero, sp, t4
                  add         s5, s7, t4
                  ori         t0, a1, -221
                  andi        a7, s2, 277
                  ori         s9, a4, 28
                  srl         a6, s2, t5
                  nop
                  and         zero, s4, a4
                  lui         zero, 602652
                  xori        a7, s8, -608
                  addi        a2, s5, -856
                  sra         a1, s0, t6
                  srli        a1, tp, 9
                  and         a1, a2, t2
                  sub         a6, a2, zero
                  srai        a7, a5, 18
                  slt         s7, a1, a3
                  and         a5, gp, sp
                  xor         t4, t5, t5
                  slt         s5, s8, t0
                  srli        a2, s8, 1
                  sub         a3, a7, a0
                  xori        s8, a4, -1613
                  lui         s9, 360554
                  slti        gp, s5, -2048
                  xori        a5, s5, 1755
                  sltiu       t4, a1, -1701
                  xor         a6, a7, a7
                  andi        s1, s4, -1503
                  sltiu       t4, zero, -1765
                  nop
                  slt         a7, zero, s11
                  sll         s8, s8, s5
                  and         s2, s0, s10
                  slli        s9, s1, 25
                  addi        s4, t5, -1008
                  srai        a3, ra, 24
                  slli        zero, gp, 18
                  srai        tp, t4, 14
                  slt         zero, s1, gp
                  nop
                  sub         gp, ra, s6
                  addi        zero, a4, -751
                  lui         s1, 726189
                  addi        s0, t3, 647
                  xori        tp, t6, 1569
                  and         a2, a2, s4
                  ori         s9, t2, 1250
                  sltu        s11, t5, s9
                  ori         t1, s8, 136
                  srl         zero, zero, t5
                  srl         a5, a3, t6
                  nop
                  slli        s5, a6, 2
                  slt         sp, t3, s9
                  sra         s1, t2, zero
                  slt         a4, s4, t5
                  srl         a6, s5, s3
                  sub         s2, t6, a5
                  slti        t2, a1, -1770
                  xori        zero, s11, 1433
                  addi        s8, a4, -1610
                  srli        t2, a1, 12
                  srl         a0, t5, a3
                  sltu        zero, t6, zero
                  lui         t2, 31887
                  and         s3, tp, s10
                  sra         a2, a5, s2
                  andi        s4, a5, 256
                  sub         a6, zero, s9
                  slli        t0, s4, 9
                  srl         ra, sp, t2
                  nop
                  slt         a7, s0, s8
                  srli        a3, a7, 13
                  add         a0, zero, a2
                  sll         s2, t5, a0
                  addi        tp, s11, -682
                  sra         s1, t2, t3
                  srli        zero, s1, 7
                  srai        s4, a3, 28
                  and         a3, s9, t2
                  sltu        a1, sp, tp
                  xor         s6, s1, s5
                  nop
                  slli        s4, s0, 2
                  sll         s11, s3, s8
                  xor         a5, t0, s5
                  auipc       zero, 74267
                  or          zero, s5, t3
                  and         a5, t6, a7
                  slt         s7, s4, a2
                  nop
                  add         s8, t3, a3
                  xori        t0, zero, 1470
                  sltiu       s1, s9, -1775
                  slli        s11, a6, 10
                  srli        a5, zero, 5
                  ori         s11, t5, -200
                  nop
                  slti        s5, t6, 99
                  auipc       s3, 275268
                  slli        zero, s2, 4
                  srl         t1, a1, ra
                  xori        t2, s10, 1111
                  addi        a3, a2, 250
                  srai        gp, a3, 23
                  xor         t2, s11, t0
                  lui         s3, 666588
                  srl         t0, a6, t0
                  lui         a0, 781964
                  srli        s4, a2, 19
                  srai        s4, zero, 23
                  srai        s5, s10, 17
                  sltu        s9, t3, a2
                  lui         s9, 866563
                  srl         ra, s0, s0
                  andi        sp, a2, 25
                  slti        s6, zero, 574
                  auipc       tp, 313910
                  xor         s0, t2, a2
                  sltiu       s9, a2, 745
                  andi        a3, s3, 1384
                  sltu        t3, sp, s4
                  srli        s2, a6, 8
                  lui         t1, 1024400
                  sltu        s9, s2, s1
                  slli        s3, s2, 31
                  or          a3, s3, ra
                  xori        s0, s0, -1721
                  srl         t3, s4, t1
                  slti        s7, s7, -350
                  slli        a2, t3, 21
                  auipc       a0, 544366
                  add         t3, s1, zero
                  srli        t4, a7, 0
                  slt         t2, s8, t4
                  sra         a3, t5, a1
                  andi        s4, s1, -1013
                  srli        s0, s5, 8
                  nop
                  sltiu       gp, t5, -1282
                  addi        a2, s3, 1963
                  nop
                  srli        a7, t5, 9
                  srai        zero, sp, 8
                  srai        zero, s6, 5
                  srli        a2, s9, 26
                  auipc       tp, 906305
                  sll         s4, s9, s4
                  nop
                  sub         zero, s0, t4
                  sub         zero, a2, s6
                  addi        sp, s5, -749
                  nop
                  slti        s3, tp, -953
                  sltiu       t4, gp, 1482
                  xor         sp, a5, s8
                  xor         s8, s1, s2
                  sra         zero, s11, t2
                  sltu        zero, s0, s4
                  lui         a5, 246989
                  or          a4, s8, a1
                  srai        a1, t3, 31
                  sltiu       s4, s11, -711
                  slt         zero, a0, s3
                  ori         tp, a4, 1779
                  xori        zero, a0, -367
                  sltu        t4, s11, zero
                  slti        a1, a2, -883
                  and         s5, a7, a4
                  slt         a7, s6, t3
                  sltu        t4, a4, s2
                  sltiu       gp, a2, 1766
                  sll         s6, s7, a3
                  sll         ra, a3, t6
                  sll         t3, s6, t3
                  nop
                  xor         sp, s6, a7
                  sltu        s7, t5, t6
                  slti        tp, t0, -1515
                  auipc       t1, 799994
                  slli        gp, s7, 10
                  xor         a3, s9, a1
                  andi        s6, s0, 273
                  slti        a6, ra, -1892
                  srli        a0, a7, 20
                  sll         s4, t2, a0
                  srl         s4, s8, s4
                  srli        zero, s11, 31
                  slli        s7, tp, 26
                  addi        zero, a7, 1286
                  srl         s5, s8, s11
                  slti        zero, tp, 1044
                  slt         a4, t4, a3
                  sra         a7, s2, s10
                  andi        s9, t3, -1370
                  srl         a2, t3, a7
                  add         s9, a3, s11
                  xor         s3, s0, t0
                  srai        a3, t2, 7
                  srli        s6, a2, 28
                  andi        zero, s5, 401
                  addi        s6, a3, -1199
                  nop
                  srl         s4, t2, a0
                  slti        t2, s9, 2046
                  add         s7, s7, a5
                  and         zero, a5, s5
                  srl         a3, s6, s2
                  srli        s2, a7, 7
                  slti        s2, a2, 1894
                  xor         s9, t5, ra
                  andi        a1, a1, -522
                  addi        a0, s10, -442
                  nop
                  slli        sp, a1, 12
                  auipc       s0, 247993
                  sub         a2, t1, s8
                  sltu        a4, s7, s10
                  slli        s1, s2, 21
                  srai        a7, tp, 18
                  auipc       a4, 521008
                  sll         s2, a5, a2
                  sltu        ra, t6, t3
                  slti        a3, a0, 1886
                  slli        t3, tp, 7
                  addi        a6, s2, -771
                  slli        tp, s5, 3
                  auipc       s9, 861142
                  ori         t1, s0, -1843
                  sltiu       s0, zero, -2025
                  lui         zero, 726190
                  addi        s8, s8, 1927
                  slt         t1, t6, a5
                  slti        zero, t2, -1904
                  xori        s3, a6, 1479
                  slt         t0, s0, s8
                  slli        a0, t4, 30
                  sub         a7, gp, s0
                  srai        s2, s11, 27
                  xor         s1, s10, sp
                  sub         t3, t0, s7
                  srl         zero, s9, s4
                  sltu        a5, s2, a0
                  xori        zero, sp, 1841
                  sltiu       s3, t2, -955
                  ori         a0, s4, 1152
                  slti        zero, a2, 566
                  srli        s7, a5, 7
                  and         s9, gp, s6
                  sltu        s8, zero, a2
                  andi        a2, gp, -292
                  xori        t3, a1, -1542
                  sra         zero, t2, t4
                  slli        zero, t4, 28
                  addi        ra, sp, -481
                  srli        a1, s10, 25
                  or          s4, zero, s4
                  slli        s3, tp, 31
                  andi        s0, s3, 656
                  srl         gp, s8, gp
                  srli        a4, s10, 13
                  slti        t0, a7, 44
                  or          a3, ra, a0
                  addi        zero, s3, -1737
                  sub         t2, s1, t3
                  sltu        s2, s6, t3
                  sll         a0, s8, a4
                  andi        s7, a6, -896
                  sub         t2, s3, s5
                  nop
                  addi        ra, t2, -1520
                  sll         t3, s1, s8
                  sltiu       t0, a7, -910
                  xori        ra, a6, -169
                  and         s9, s8, s11
                  srl         a5, tp, t1
                  srl         a7, a0, t6
                  slt         tp, s7, s3
                  sra         t4, a0, tp
                  ori         gp, a0, -1890
                  srl         s1, s0, t5
                  and         t1, a0, a0
                  ori         a2, s3, -1732
                  xor         tp, tp, t1
                  srli        s0, a0, 30
                  srl         t0, t0, s7
                  auipc       t2, 1031969
                  andi        a2, a6, 1933
                  xori        zero, a5, 1151
                  auipc       zero, 260860
                  slti        zero, a1, -1719
                  sub         t4, gp, a1
                  sub         s6, a1, sp
                  or          s0, s11, s11
                  nop
                  slli        s9, t0, 31
                  or          a5, gp, s5
                  xori        a2, s10, -239
                  add         s6, sp, a3
                  lui         zero, 273847
                  sltiu       zero, s5, -815
                  srai        zero, t2, 3
                  addi        s5, a4, -1925
                  xor         s6, ra, s7
                  slti        s11, t1, 1504
                  sltiu       t3, s9, -223
                  sltiu       a1, s6, -1497
                  nop
                  nop
                  ori         s1, t4, 1558
                  ori         s0, t0, 892
                  srai        gp, s5, 20
                  xori        gp, a0, 1718
                  sltiu       zero, s11, -1086
                  sll         t3, a6, zero
                  add         t0, s6, a4
                  lui         t0, 360131
                  xor         s9, s5, s7
                  andi        s6, a7, -1979
                  slli        a2, a2, 23
                  srai        tp, t3, 22
                  xori        s0, s3, -1181
                  nop
                  auipc       zero, 414057
                  srai        t3, s0, 29
                  xor         a1, sp, t0
                  ori         t0, t6, 854
                  auipc       zero, 371660
                  or          tp, ra, s1
                  lui         s7, 742444
                  sll         a4, t5, s9
                  addi        s4, t5, 1920
                  addi        t3, s10, -1044
                  ori         a2, a0, -1400
                  nop
                  sltiu       t0, s2, -795
                  nop
                  sub         gp, s0, s0
                  add         gp, tp, t1
                  srl         s11, s4, a6
                  sltiu       a3, a6, 2041
                  srl         s1, zero, gp
                  slti        t3, a6, 1040
                  srai        t3, t3, 22
                  xori        a5, a3, -217
                  slt         s8, t6, t0
                  nop
                  sra         s9, a1, tp
                  lui         s5, 406309
                  sltu        zero, t5, t2
                  slli        zero, s6, 18
                  and         s6, t1, s11
                  slti        a2, a6, 1672
                  nop
                  xori        s7, s6, -964
                  sub         s8, a2, a6
                  sll         zero, s5, s9
                  and         a0, a5, sp
                  or          s3, t5, t5
                  nop
                  add         s11, sp, t6
                  andi        a7, s7, -1127
                  sltu        zero, a4, s9
                  slti        s3, s7, 855
                  add         zero, a3, t3
                  xor         s1, tp, a1
                  srli        zero, s6, 12
                  lui         t0, 449270
                  addi        ra, s0, -1201
                  sltu        s7, s9, s4
                  xori        a2, a1, 1050
                  lui         zero, 517166
                  srli        s3, s3, 8
                  lui         zero, 425430
                  ori         tp, t2, -1013
                  sltu        t1, a4, tp
                  xori        s6, s6, 1560
                  lui         s7, 32172
                  lui         a1, 1039769
                  and         zero, a6, s5
                  slt         a6, s10, a5
                  sltu        tp, a7, t3
                  sll         a1, tp, a2
                  sltiu       t2, ra, 277
                  slli        gp, gp, 14
                  xori        a1, sp, -306
                  sll         zero, t1, s1
                  srli        t2, s7, 29
                  srl         s2, t6, s9
                  nop
                  add         s8, s6, sp
                  lui         a3, 395461
                  sub         t2, s11, a7
                  lui         t1, 485522
                  slt         a0, s7, t0
                  sll         s9, t2, a0
                  sltu        s6, s5, s9
                  sltu        s5, tp, s10
                  slli        a7, s2, 20
                  and         zero, a3, t5
                  addi        zero, a0, -1276
                  sltiu       t4, tp, -131
                  xor         zero, ra, a2
                  sltiu       s8, zero, 206
                  andi        a4, a4, 406
                  sub         zero, t1, t6
                  and         s2, t5, gp
                  slti        t2, s10, -1975
                  or          sp, s5, a4
                  sub         s0, s11, a5
                  slt         s4, s6, a0
                  addi        tp, s4, 1037
                  auipc       s11, 200248
                  auipc       t1, 920551
                  sltiu       s0, s9, 833
                  xori        sp, s8, 1102
                  slt         s2, s9, s9
                  sra         a5, a7, t1
                  sra         s0, s7, s9
                  sll         t2, s3, s2
                  sra         t0, t2, t1
                  and         a5, ra, a0
                  add         a6, a7, s11
                  slt         t4, a6, t6
                  sltu        s7, t0, s11
                  slli        a0, a5, 11
                  or          sp, s4, gp
                  auipc       sp, 498087
                  or          zero, a1, t1
                  addi        s2, t6, 1936
                  slli        s7, s0, 14
                  sra         sp, s1, a4
                  ori         a5, t0, -827
                  slti        tp, t5, -179
                  srai        s2, t0, 12
                  sll         a2, gp, t4
                  xori        sp, s1, -222
                  sra         a1, t3, s11
                  xor         sp, s9, s9
                  nop
                  lui         sp, 543372
                  add         a6, s7, s5
                  ori         s11, gp, -762
                  sltu        s5, s6, a6
                  xori        t4, s6, 1252
                  srai        a3, s3, 18
                  nop
                  and         zero, t2, t6
                  srai        s0, s2, 0
                  addi        s4, a5, -564
                  srl         a3, a6, zero
                  xor         tp, t4, a3
                  srai        a7, a5, 13
                  ori         t0, zero, 261
                  nop
                  sra         s9, a0, a2
                  ori         a5, s4, 391
                  ori         t4, a2, 1161
                  or          tp, s10, s1
                  slt         s9, t4, t0
                  slt         s11, tp, t5
                  andi        s4, a2, 1159
                  slti        tp, t3, 825
                  sra         s8, s2, t2
                  xori        s9, ra, 1295
                  xori        ra, s9, -561
                  addi        gp, t6, -345
                  srl         s6, s10, t1
                  slti        a4, zero, 1967
                  xor         t3, a2, s9
                  nop
                  addi        t4, s2, -1935
                  xor         a2, t5, a3
                  auipc       s0, 867294
                  add         s7, s0, ra
                  slt         sp, tp, a5
                  sltu        s4, tp, t3
                  or          zero, s5, s1
                  sra         a1, t1, s5
                  sub         zero, gp, s2
                  auipc       s8, 828894
                  slti        zero, a1, 1971
                  slt         a5, s8, t3
                  sltiu       a7, gp, -1962
                  nop
                  add         s0, a5, s8
                  lui         zero, 696960
                  srai        zero, tp, 15
                  xori        s2, s9, 857
                  ori         a6, a2, -2029
                  srai        t4, s4, 23
                  xori        zero, sp, 402
                  srai        a5, t6, 2
                  xori        s11, s1, 2015
                  nop
                  srli        ra, s0, 5
                  slli        s4, zero, 1
                  srli        t0, t3, 17
                  add         s6, s2, a1
                  srai        a3, t2, 27
                  sub         a7, a2, t5
                  addi        a0, a1, -395
                  srli        s9, t1, 16
                  add         s8, s5, sp
                  add         s11, s1, gp
                  addi        a2, t2, -1784
                  slt         a5, zero, s4
                  lui         s2, 453687
                  srl         a2, s9, t2
                  srli        a7, a3, 23
                  srli        s2, s10, 14
                  sltiu       t2, s8, -550
                  ori         t2, s2, -1120
                  sra         s3, a2, a7
                  addi        s9, t2, -1581
                  sra         s2, s2, s2
                  sra         gp, s9, s5
                  srl         a4, t6, sp
                  slt         s9, s5, t2
                  sll         a6, a6, s2
                  sltiu       s2, ra, -1803
                  xor         a5, a3, s2
                  andi        gp, t2, 1960
                  andi        t4, a6, 365
                  sltu        zero, zero, a1
                  add         t4, sp, a5
                  and         s9, s6, zero
                  sub         a1, a2, a1
                  sra         s3, t2, zero
                  sra         a4, a1, s0
                  srai        s7, s6, 30
                  sll         s0, a6, a0
                  slt         s0, a7, a7
                  xor         s9, a7, a1
                  or          s4, t3, a2
                  addi        tp, s11, -927
                  nop
                  slt         s3, sp, t5
                  srli        s8, a6, 8
                  sra         sp, tp, zero
                  srl         tp, a4, zero
                  slti        a7, s5, -108
                  sub         a5, a4, t4
                  slli        zero, a4, 8
                  auipc       s11, 102320
                  sltu        s7, a5, s8
                  srai        a0, t3, 15
                  srai        zero, t5, 16
                  sltiu       ra, t0, 2034
                  and         a2, a0, t5
                  slt         s9, t0, s0
                  srai        s3, t1, 6
                  sll         s2, a7, t1
                  add         s9, t5, t2
                  nop
                  slti        s7, t3, -646
                  slti        tp, t2, -1844
                  srl         zero, t4, s3
                  auipc       a2, 723290
                  srli        s9, zero, 10
                  srl         s1, t4, ra
                  sltiu       t4, ra, 899
                  slti        zero, t2, 675
                  srl         a3, a5, s11
                  nop
                  sltu        a3, t6, s2
                  xori        s8, s0, 1217
                  srli        gp, t4, 24
                  sll         ra, tp, t0
                  nop
                  or          t2, s3, t6
                  lui         a0, 905122
                  add         a1, t5, a5
                  sub         a6, t1, gp
                  sra         zero, tp, t5
                  add         a4, ra, s3
                  ori         a1, s9, -1150
                  slli        s2, t4, 15
                  slli        s4, s9, 28
                  xori        zero, s3, 1037
                  sll         a5, t6, s1
                  addi        s0, t2, -1310
                  xori        sp, s0, 733
                  xori        tp, s10, -1046
                  slt         s5, s10, t1
                  sub         t3, s9, gp
                  slt         zero, s7, tp
                  srl         zero, s6, a0
                  sll         s7, sp, t3
                  srl         a5, t4, a4
                  sltu        zero, s8, s2
                  add         s2, s2, t3
                  sll         s3, a0, a7
                  sub         s4, t4, s8
                  addi        s4, s1, 201
                  xor         s5, a3, t4
                  srl         zero, s6, t0
                  lui         a0, 444921
                  and         zero, t1, s3
                  lui         s6, 559419
                  xori        s11, a4, -1707
                  sltiu       s3, t5, -607
                  lui         s0, 540577
                  and         t0, ra, a6
                  slli        a1, s8, 27
                  slli        zero, t4, 18
                  srli        s5, t2, 0
                  and         zero, a7, t4
                  lui         s5, 409373
                  or          s6, t5, a1
                  add         s4, s2, s6
                  add         s5, a0, t3
                  sub         s2, s4, a3
                  or          s0, s3, a0
                  ori         s5, t4, -1681
                  lui         gp, 239894
                  sub         t2, s4, a1
                  sltiu       sp, s1, -1359
                  sltiu       t2, s8, -751
                  or          s1, s9, a1
                  nop
                  srli        t2, s3, 5
                  srl         s5, s7, s5
                  ori         zero, t3, -849
                  lui         zero, 917949
                  and         s5, sp, t3
                  add         a5, sp, t3
                  lui         s4, 90263
                  srl         a0, s1, s9
                  add         t3, t0, s0
                  sltiu       s3, s1, 60
                  sll         tp, t4, a1
                  xori        s2, t5, -1359
                  sltiu       s1, a5, 343
                  srai        zero, ra, 30
                  sltu        zero, a7, t1
                  sltiu       s7, ra, -1153
                  add         zero, t2, a4
                  ori         a1, s10, 362
                  and         s11, s0, tp
                  add         s7, a4, a6
                  sltu        a3, a2, s9
                  slt         a6, a0, gp
                  nop
                  srli        t3, a2, 29
                  xor         zero, a2, s10
                  nop
                  slt         s0, tp, s2
                  add         s8, zero, s11
                  srli        s6, s10, 30
                  and         a3, a3, s7
                  slt         t0, t5, s11
                  srai        t2, s0, 31
                  sub         s6, tp, s1
                  lui         s7, 448226
                  andi        tp, s6, -1174
                  slti        zero, a1, 279
                  xori        a7, t3, 106
                  sltu        zero, t1, s1
                  sltu        ra, s10, s4
                  sll         a4, a2, t5
                  lui         gp, 995004
                  xor         s2, t3, s8
                  sltu        gp, s11, a5
                  slti        t4, s0, -157
                  sra         a6, s11, s9
                  slt         a0, a2, a3
                  addi        ra, s8, 186
                  sll         s4, a1, s5
                  sub         s3, a3, s0
                  slti        a5, s4, -1825
                  lui         t4, 285426
                  and         zero, a4, s2
                  ori         s6, s11, 1590
                  sltiu       gp, t2, 848
                  srli        sp, t6, 17
                  slti        a7, ra, -949
                  lui         t1, 144598
                  sra         gp, ra, s6
                  sra         zero, a0, t4
                  slt         s5, s9, t3
                  lui         a5, 73154
                  srl         a7, a7, a2
                  ori         s3, a7, 851
                  slt         a5, a7, a6
                  slli        a0, s8, 21
                  xori        zero, gp, 1857
                  xori        a2, s11, -159
                  slt         gp, a1, s8
                  srli        s5, a3, 22
                  auipc       s2, 801868
                  srl         gp, t5, a5
                  slt         t0, ra, s9
                  or          s9, s11, s3
                  slli        sp, s2, 16
                  ori         gp, a6, 1559
                  ori         zero, t6, -366
                  sltiu       a3, s5, -465
                  auipc       s5, 502411
                  xor         zero, t6, gp
                  slt         s9, a3, t3
                  xori        a2, zero, -328
                  slt         s9, a7, a2
                  add         zero, s2, s8
                  auipc       t1, 413431
                  andi        a6, a0, 758
                  auipc       a0, 689086
                  sltiu       a6, sp, 178
                  slti        zero, s2, -463
                  srl         s8, s10, a5
                  add         zero, s7, s9
                  andi        s1, s11, -1259
                  srli        s1, a7, 6
                  srl         s3, t3, s0
                  sltu        tp, a7, a0
                  srl         sp, s5, a3
                  sra         t2, t0, s2
                  sub         a7, a2, a7
                  xor         a2, s8, t1
                  srai        a6, s6, 5
                  sub         s7, t6, zero
                  xori        sp, s2, -1490
                  srli        a6, s6, 12
                  lui         t0, 563442
                  sll         a4, s6, s5
                  and         a2, a7, s4
                  add         s0, s3, s5
                  xori        s4, tp, -2045
                  srli        zero, s2, 9
                  and         ra, s2, sp
                  slli        s5, a2, 13
                  xori        tp, t2, 994
                  sll         s7, gp, sp
                  srai        s7, a5, 12
                  sub         sp, a7, gp
                  xori        zero, a4, -332
                  lui         t2, 980181
                  sub         t2, s1, s4
                  nop
                  and         s5, s10, s7
                  add         a3, gp, s2
                  slti        a0, s0, 1903
                  sltu        a4, t5, a2
                  srai        s1, s1, 18
                  or          tp, s10, t6
                  or          s1, t2, s9
                  srl         a6, t1, a3
                  and         sp, a2, a3
                  slt         s6, s8, a5
                  nop
                  sll         zero, s5, s9
                  slt         s5, s5, a3
                  slti        gp, t6, -607
                  add         s8, s10, t6
                  ori         s4, s4, 1509
                  sltiu       a4, s0, 108
                  sltiu       a7, t0, 1032
                  srl         s1, a5, t4
                  xor         t3, s4, s2
                  sra         sp, a3, a7
                  srl         t2, tp, t4
                  lui         s1, 159103
                  addi        zero, a6, -548
                  and         s7, s4, s0
                  and         s9, s10, t1
                  slli        zero, t0, 14
                  sub         s5, s6, s10
                  xor         s11, s6, s5
                  sll         s9, s9, a3
                  srai        zero, s11, 5
                  andi        s7, t1, 612
                  xori        s6, s10, 853
                  auipc       t1, 488520
                  slli        zero, a0, 2
                  auipc       tp, 899262
                  lui         a3, 1045671
                  sltu        sp, s11, a6
                  sll         s9, s7, s5
                  sub         t1, a3, ra
                  addi        s4, s1, -1810
                  addi        a2, t4, -689
                  add         t3, t3, t0
                  slt         zero, a4, s8
                  srli        s8, sp, 1
                  slti        s9, s10, 1339
                  sub         a1, s0, s6
                  auipc       s6, 194198
                  sltu        s7, t4, t4
                  ori         a3, sp, -1236
                  addi        zero, s2, 1902
                  sra         s5, t4, t3
                  slti        a1, a4, 1533
                  sltiu       tp, a7, -1528
                  auipc       s6, 25151
                  sll         t1, sp, s4
                  addi        gp, s3, -191
                  slti        t1, s4, -1163
                  srl         sp, a1, a1
                  xor         s3, s8, t0
                  sltiu       s3, a4, 1880
                  slli        s5, s8, 16
                  auipc       zero, 868964
                  sltiu       gp, a7, -1638
                  slt         s6, s0, s0
                  addi        a0, sp, -798
                  slti        t3, s10, -141
                  nop
                  slt         s2, a4, a7
                  and         t4, s2, gp
                  srai        a7, s6, 16
                  xor         a0, zero, a4
                  sll         zero, t6, s11
                  srai        zero, t6, 11
                  add         s2, sp, s10
                  addi        s4, s8, 69
                  xori        zero, t1, -1256
                  auipc       a3, 575404
                  nop
                  sll         t2, t6, s1
                  xori        a7, a5, -2040
                  lui         s6, 282756
                  nop
                  srai        s6, t6, 21
                  srli        s8, s0, 21
                  sltiu       t1, a1, -61
                  srai        s1, zero, 0
                  xor         t0, t1, t0
                  andi        a6, t1, 704
                  nop
                  and         a6, s3, t6
                  andi        a6, a1, -1997
                  slli        s2, t3, 30
                  xori        zero, a5, 1761
                  lui         a4, 468109
                  srl         s7, a6, s5
                  sll         a0, t4, t3
                  xor         s7, s6, zero
                  nop
                  auipc       a1, 107558
                  sub         zero, ra, s6
                  nop
                  nop
                  addi        a7, a5, -1436
                  sub         t0, tp, s6
                  nop
                  nop
                  xor         s9, a2, a2
                  add         s8, ra, t6
                  srl         t3, sp, tp
                  sll         s6, t3, s10
                  sltiu       sp, s0, -1060
                  slli        a4, a6, 7
                  nop
                  srai        s7, s10, 12
                  sub         a0, s8, s4
                  sll         ra, t0, gp
                  lui         s3, 680159
                  sub         a1, s7, a1
                  add         s7, t2, a2
                  lui         zero, 1022830
                  sra         s7, t3, s8
                  or          t1, s4, s3
                  and         a5, a0, t4
                  sra         t0, a4, s8
                  srai        gp, a4, 3
                  nop
                  lui         s0, 1031734
                  sll         a5, t4, s3
                  sll         s11, s10, s11
                  addi        zero, tp, 178
                  lui         s11, 897158
                  xori        t0, zero, -1243
                  add         s9, t2, s0
                  slli        s11, t5, 13
                  sra         t3, s1, t5
                  slti        s3, tp, -176
                  srai        zero, s6, 24
                  andi        zero, s11, 1710
                  xor         a3, a2, s9
                  andi        a1, s0, 666
                  sll         a5, t4, a0
                  srai        s6, s7, 10
                  nop
                  sra         s7, s6, a3
                  slli        s5, t3, 4
                  sra         a7, a4, tp
                  srai        s4, s1, 15
                  sub         t4, gp, t3
                  slli        a5, zero, 22
                  slli        t0, s4, 19
                  ori         tp, t4, -1910
                  slti        t2, s0, -774
                  nop
                  addi        a6, ra, 1091
                  srai        s1, s9, 23
                  sltiu       t3, t1, -1889
                  and         s4, s4, a4
                  addi        t3, s8, 948
                  ori         t0, s8, -1808
                  slt         t0, gp, s1
                  srli        a0, s0, 11
                  srli        a0, tp, 27
                  slli        zero, s2, 24
                  xor         t1, t1, t1
                  srl         t2, t2, tp
                  add         s0, s5, gp
                  and         ra, t3, t6
                  addi        t3, sp, 620
                  slli        a4, a5, 8
                  sll         t2, s2, gp
                  srai        a7, t1, 31
                  srli        s1, t2, 29
                  xori        a2, s5, 650
                  xori        t4, s5, -1026
                  srli        s2, s1, 7
                  or          s1, a6, s4
                  sub         a1, s3, s6
                  xori        zero, s1, -1785
                  and         a2, s9, a7
                  sltu        s1, a1, s4
                  add         t0, s10, s9
                  slli        zero, t0, 28
                  xori        s9, zero, 1713
                  nop
                  slli        s2, a3, 26
                  xori        t4, a1, 1248
                  addi        zero, s4, 1953
                  ori         s11, zero, -522
                  slti        tp, a5, 1542
                  lui         s0, 856755
                  add         ra, gp, a1
                  xor         a1, t5, t0
                  slti        tp, s2, 1750
                  srai        s5, t6, 29
                  and         s7, s2, t0
                  auipc       a2, 100092
                  addi        s11, t4, 1563
                  slli        s4, t0, 14
                  srai        s8, t5, 5
                  xori        t4, s11, 322
                  srai        s9, sp, 20
                  xor         a3, zero, t0
                  slt         zero, a1, s2
                  sltu        s6, s2, s2
                  and         sp, s8, t0
                  nop
                  sra         s6, t3, zero
                  sll         a2, a4, a4
                  or          t0, s0, s1
                  and         a7, s11, a5
                  sra         s8, s10, s5
                  andi        s3, t0, -290
                  auipc       sp, 305758
                  sltiu       ra, s4, 268
                  srai        t4, tp, 20
                  sra         s4, ra, a2
                  slti        s1, s8, -1254
                  sub         gp, t3, a6
                  or          gp, a2, s3
                  slt         t1, t2, t3
                  addi        a1, s11, -1395
                  slli        s8, a5, 30
                  add         a0, s5, a2
                  srli        s1, a5, 12
                  nop
                  and         zero, t3, s9
                  xori        s2, s5, -881
                  sll         a0, a7, a3
                  srl         s0, a2, zero
                  nop
                  slt         a6, sp, ra
                  andi        t3, a5, 682
                  sltu        s6, t3, a4
                  xori        sp, t2, 885
                  or          t3, a7, s2
                  slti        gp, a1, 1758
                  sll         t4, s6, t4
                  sltu        a0, s11, s10
                  ori         zero, t2, 736
                  srli        s5, s11, 24
                  addi        s5, t5, 1295
                  sra         a3, s11, tp
                  lui         s0, 415246
                  andi        t1, a5, 448
                  sub         t3, sp, s10
                  ori         s1, s8, -1662
                  sltu        s11, s6, a2
                  sra         a1, a2, s7
                  nop
                  sll         s8, s4, t2
                  and         s5, s5, tp
                  srl         t2, zero, t4
                  add         a2, a6, s0
                  slt         s4, s4, a6
                  xor         t4, s7, t0
                  add         s9, s0, s0
                  or          t3, s7, s4
                  sra         t2, t2, a6
                  sltu        t0, s2, a4
                  nop
                  sltu        s5, t6, a4
                  sltiu       sp, t0, 1803
                  slt         a1, s4, s5
                  nop
                  sltiu       s8, s8, -992
                  sltiu       sp, s11, 355
                  sra         s9, s0, zero
                  or          s7, s3, s8
                  add         zero, a0, s6
                  slli        s6, t4, 28
                  xor         s6, s8, a0
                  lui         ra, 570062
                  addi        a3, a2, -20
                  auipc       ra, 931823
                  slti        s11, a4, -1849
                  and         t3, s4, t4
                  srli        s11, sp, 21
                  lui         tp, 251631
                  andi        s11, gp, -770
                  add         a2, gp, a3
                  sll         a2, s7, a3
                  sub         a6, s2, s6
                  sltiu       s11, a7, -151
                  srai        a3, s9, 20
                  auipc       s1, 986951
                  srai        s7, s2, 29
                  slti        s3, t3, -1347
                  sra         s1, s6, gp
                  lui         gp, 921514
                  and         a3, s0, s11
                  sltiu       a2, s8, 1991
                  add         t0, a1, t0
                  slti        s2, zero, -703
                  nop
                  slt         zero, gp, t3
                  sub         s6, a4, a3
                  slti        a3, sp, 1551
                  add         gp, t0, s9
                  slli        t3, s11, 26
                  srl         t3, t6, s6
                  xori        s11, sp, -1460
                  addi        s9, s8, 160
                  or          s7, t1, t2
                  xori        s2, sp, -1866
                  sra         zero, t0, s6
                  ori         a7, t5, 2005
                  sltiu       zero, s4, 2026
                  sra         s6, a2, s10
                  srai        s5, a0, 1
                  sub         a0, t3, zero
                  slli        zero, a0, 28
                  andi        s6, s2, 624
                  xori        t4, t2, -2021
                  andi        gp, a4, -1499
                  slti        a7, a4, 67
                  sltiu       t2, a3, -1635
                  ori         ra, t4, -1382
                  slt         a1, s9, s5
                  srl         a0, s5, s11
                  srl         s1, t1, a0
                  slli        tp, zero, 13
                  sra         a1, a1, ra
                  sll         zero, tp, t3
                  sltu        s7, s7, s0
                  andi        s6, s6, 99
                  andi        zero, s5, -1901
                  slti        s2, s1, -1822
                  xori        a1, sp, -826
                  lui         a3, 337984
                  sltiu       zero, t3, -1168
                  slli        s3, a3, 8
                  lui         zero, 236374
                  srli        zero, t5, 8
                  auipc       a5, 931679
                  ori         a4, t5, -1498
                  sltu        s6, a5, t3
                  srl         zero, s11, s2
                  and         s3, s6, t1
                  add         sp, a6, s1
                  andi        t0, s1, 1287
                  lui         a1, 800854
                  srli        s3, ra, 19
                  and         s2, t0, s1
                  srli        ra, ra, 18
                  srai        zero, s8, 1
                  nop
                  add         s5, s1, a4
                  xori        s7, gp, -317
                  addi        a7, t2, 890
                  srl         s9, s10, s8
                  sltiu       s0, ra, -1042
                  sra         a5, a5, s0
                  sltu        a0, tp, s4
                  srli        s8, a3, 28
                  slti        a2, a3, -205
                  sltu        a1, t0, s10
                  add         zero, s6, a2
                  srli        a4, gp, 3
                  auipc       a1, 716249
                  sra         zero, t6, t4
                  slti        t2, s7, -170
                  sra         s4, ra, a5
                  slli        s4, a5, 12
                  nop
                  ori         zero, t2, -1260
                  or          zero, t2, zero
                  sll         tp, a1, s4
                  slli        s6, a7, 12
                  nop
                  add         ra, t6, a6
                  auipc       s6, 871506
                  srl         zero, s0, a0
                  add         s7, t3, a6
                  nop
                  andi        s6, a7, -988
                  addi        ra, t3, -1483
                  lui         s3, 95251
                  srli        s7, a3, 5
                  srl         a3, tp, sp
                  sltu        a0, t4, a5
                  addi        s4, s8, 1977
                  sltu        a3, a7, s7
                  sub         s5, t1, zero
                  xor         a4, t6, a7
                  slti        a7, s3, -494
                  slti        gp, s3, -37
                  lui         t3, 854466
                  srl         s6, sp, s3
                  add         s3, s11, t2
                  xor         a6, t2, a2
                  srai        t3, zero, 15
                  sra         a2, t5, s2
                  xori        a5, s10, 198
                  sltiu       gp, s7, -608
                  ori         a7, s5, 1783
                  add         a6, s0, s3
                  sltiu       s7, t5, -427
                  lui         zero, 731232
                  slli        t4, s4, 12
                  or          zero, s2, a7
                  srl         s8, a3, t1
                  sltu        s11, t2, s9
                  auipc       s4, 626414
                  sltiu       ra, ra, 1183
                  sltu        zero, sp, t3
                  srai        s9, a1, 18
                  srli        tp, s5, 6
                  or          tp, s10, s3
                  srli        s3, s2, 19
                  slti        s8, a2, -33
                  slt         a2, s0, t3
                  slli        s6, a2, 16
                  slti        sp, s5, -919
                  sltu        a4, s9, a2
                  slti        sp, t3, -1320
                  lui         t2, 965188
                  add         s2, t5, s1
                  srl         s4, a5, s3
                  nop
                  nop
                  add         ra, a5, tp
                  slli        a5, s1, 8
                  sra         t1, s1, s4
                  andi        t4, s4, 1988
                  srai        s6, a3, 13
                  sltiu       tp, a2, 452
                  auipc       a7, 342387
                  ori         a0, a2, 1673
                  or          tp, t4, s10
                  auipc       ra, 607904
                  auipc       s5, 413371
                  sltiu       s3, a3, -1776
                  sra         ra, t0, s3
                  or          zero, s9, a2
                  slti        tp, t1, -150
                  ori         a7, t2, -1507
                  xori        a7, s1, 1491
                  andi        zero, s10, 1948
                  andi        gp, s6, -1061
                  and         s5, s9, t4
                  slt         a0, a4, s5
                  xor         zero, a5, s1
                  slt         sp, tp, a4
                  xori        a4, a7, -1518
                  sub         t3, a2, s0
                  srai        s9, a0, 25
                  sltiu       a7, t3, 890
                  lui         s11, 610545
                  sltu        zero, a1, ra
                  add         a2, a1, t4
                  srli        s5, s9, 13
                  srl         zero, s2, ra
                  addi        s5, s8, -1480
                  and         t0, s1, s0
                  lui         ra, 77940
                  sltu        zero, s8, s7
                  addi        zero, t1, 891
                  sltu        t4, ra, ra
                  ori         a6, a7, -1771
                  lui         s0, 423722
                  nop
                  slli        t0, t2, 26
                  srli        a4, t0, 11
                  slli        ra, s10, 15
                  sub         s7, s7, t5
                  and         s8, s2, t5
                  slt         s6, gp, t1
                  slti        a0, s8, -2020
                  sra         zero, s10, s10
                  slli        s4, sp, 2
                  sra         t0, t3, a0
                  srli        s5, a7, 30
                  srl         a7, s2, a6
                  nop
                  sll         s8, a7, t2
                  andi        s2, s2, 940
                  nop
                  sub         gp, t5, tp
                  srl         ra, a6, a4
                  nop
                  sll         t0, a1, s9
                  addi        s1, a4, 1300
                  lui         ra, 442863
                  srl         a7, s8, t5
                  sub         gp, t6, s0
                  sltiu       ra, a5, -1545
                  ori         gp, a0, 1440
                  srli        s2, sp, 19
                  andi        s9, t4, 630
                  srli        s0, a5, 2
                  srai        a6, s7, 7
                  sltiu       s8, a1, -237
                  lui         tp, 296854
                  sra         s5, t6, a0
                  srai        t0, s8, 28
                  srl         zero, t5, a6
                  lui         gp, 747244
                  auipc       a5, 297418
                  add         s5, a6, a0
                  sll         ra, s6, t5
                  sltu        a4, a1, t3
                  auipc       zero, 88592
                  or          a3, s4, s1
                  sll         zero, a1, t2
                  add         t2, t6, t2
                  addi        s5, s0, -205
                  addi        s2, gp, 2006
                  sub         zero, tp, t1
                  xori        a1, t0, -248
                  and         s9, s5, t4
                  sltu        ra, s11, t3
                  sll         a5, ra, s6
                  andi        a5, s2, 1307
                  lui         a3, 1890
                  andi        zero, a6, -560
                  andi        t4, a3, -138
                  sra         t4, a2, s7
                  slti        a5, s7, -1087
                  nop
                  nop
                  srl         t3, s6, s1
                  lui         t0, 339411
                  slt         s7, a3, s11
                  lui         t3, 526584
                  sltu        t1, s4, a3
                  nop
                  slli        s8, t5, 28
                  sll         s5, t6, s9
                  srl         zero, s10, t0
                  sltu        s2, s10, sp
                  add         t3, t2, a0
                  lui         ra, 72175
                  auipc       t1, 482249
                  slli        s9, a2, 16
                  ori         s2, s5, 1323
                  srai        a4, a3, 26
                  sll         tp, t6, s6
                  auipc       s4, 577490
                  sll         s6, t3, tp
                  lui         s11, 579005
                  srli        a7, t4, 22
                  slti        t2, tp, -127
                  and         t3, gp, t4
                  or          zero, a1, s3
                  sltu        t2, t4, zero
                  and         a6, tp, gp
                  nop
                  sltiu       tp, a4, 15
                  sltu        a6, zero, t2
                  and         a6, s9, s10
                  or          t2, s3, t1
                  xor         t3, gp, a1
                  andi        t3, zero, 699
                  sra         t3, s3, s8
                  slli        tp, a5, 30
                  slti        s1, gp, -1664
                  addi        s8, t1, 1668
                  srai        s4, s5, 8
                  srl         zero, s5, a6
                  addi        a4, t3, 961
                  add         zero, s1, a5
                  slli        s2, s1, 10
                  slti        s9, s2, -151
                  nop
                  sub         s0, s9, ra
                  srl         zero, t2, s7
                  sltiu       zero, s11, -1161
                  slti        zero, t5, 712
                  srli        s11, a1, 5
                  andi        ra, zero, 176
                  add         s0, a7, s4
                  sub         s6, t2, a6
                  auipc       zero, 741466
                  sltu        s6, s3, zero
                  add         zero, a6, t1
                  sltu        s0, s7, a7
                  and         s8, a4, s11
                  sub         s6, a4, s1
                  lui         s7, 112551
                  sra         s8, s4, t0
                  xor         tp, s0, s10
                  sra         s3, t5, s0
                  xor         s11, sp, a6
                  auipc       a3, 1046898
                  sll         zero, zero, t0
                  andi        s5, a4, -2010
                  sltu        s0, a0, s0
                  srai        ra, s0, 25
                  or          gp, a3, s7
                  or          s1, a6, t1
                  addi        a6, a1, 1885
                  lui         s2, 267605
                  andi        zero, s3, -1166
                  ori         s6, a4, -1849
                  xori        zero, t6, -382
                  srai        t1, t5, 3
                  nop
                  sltiu       zero, gp, 434
                  srai        s11, s5, 19
                  sra         t0, s3, t1
                  xori        a5, t2, -604
                  sll         zero, s6, t4
                  xor         a1, s7, t0
                  andi        a0, s4, -1698
                  srai        tp, sp, 20
                  sra         s3, s5, gp
                  sltu        sp, s7, s5
                  xori        t2, a0, 968
                  srai        tp, t5, 9
                  addi        s3, t1, -20
                  srli        zero, t5, 24
                  sltiu       a6, t4, 936
                  and         a2, a0, s1
                  xor         s9, zero, s10
                  lui         s6, 582131
                  slt         t2, a7, a2
                  slt         t2, s5, s1
                  srli        s9, a2, 8
                  lui         s6, 818969
                  auipc       a0, 452368
                  srli        s0, tp, 23
                  xori        gp, s9, 1862
                  srli        s7, gp, 31
                  addi        s3, s10, -1192
                  and         s4, a5, a1
                  slt         s1, s5, tp
                  lui         tp, 238775
                  srai        tp, s0, 27
                  and         s9, a5, s6
                  slt         a6, t0, a3
                  auipc       a5, 405478
                  srli        t0, gp, 17
                  slli        t0, s6, 26
                  andi        a2, t5, -1177
                  srli        a4, t0, 8
                  sub         s7, zero, a4
                  sltu        zero, sp, t4
                  addi        s0, zero, 75
                  xori        a2, ra, -1155
                  sltu        ra, sp, a1
                  andi        gp, s11, -435
                  add         s6, t4, a3
                  sra         a3, s7, s4
                  andi        s4, s2, -1760
                  sra         t1, a0, zero
                  xor         s8, a7, a7
                  xori        a7, s3, 1549
                  srli        s0, s0, 24
                  or          s4, a2, s6
                  srai        a1, s4, 24
                  sltiu       s0, a6, -1257
                  or          a5, a2, t5
                  srai        t0, a4, 10
                  slli        zero, zero, 15
                  lui         t4, 496940
                  sra         a4, s2, s10
                  slt         s8, s8, a7
                  sltiu       t4, t3, 971
                  sltiu       a5, t3, 504
                  xori        zero, t6, -1897
                  sltiu       s8, tp, 416
                  auipc       s8, 136928
                  sub         s11, t5, a5
                  sltu        t4, zero, gp
                  nop
                  sltu        t1, sp, a4
                  sltu        a5, s1, s5
                  add         s11, zero, t6
                  srli        zero, t0, 3
                  nop
                  add         s3, sp, s1
                  or          t0, s1, t0
                  nop
                  sub         a4, s5, s5
                  nop
                  srl         s2, t6, a0
                  xor         a3, s7, s4
                  add         s7, a0, s4
                  lui         a4, 490412
                  add         a4, gp, s10
                  srai        s8, t0, 17
                  srli        sp, s9, 20
                  or          t1, t6, t6
                  sub         t0, a5, a5
                  slli        a3, t1, 2
                  xor         s7, ra, s5
                  sltiu       sp, a0, -1502
                  sra         zero, t3, s1
                  auipc       a2, 17340
                  nop
                  srai        ra, s11, 18
                  and         s9, t6, t0
                  addi        s11, s0, -1124
                  addi        a1, t5, -628
                  slt         a4, a3, a4
                  nop
                  or          zero, a5, t6
                  auipc       s3, 821924
                  srli        s4, t2, 29
                  sll         ra, a5, ra
                  srai        zero, ra, 30
                  srl         t0, a0, t6
                  xor         sp, tp, a1
                  srl         a3, sp, a6
                  ori         t0, t3, -1590
                  and         a2, sp, t1
                  and         a5, s6, s5
                  srli        a6, t5, 23
                  xori        tp, a2, -727
                  srl         a0, t4, s10
                  nop
                  xori        s5, s0, 1579
                  slt         s0, s6, s8
                  slt         gp, sp, t1
                  sra         t0, a1, s9
                  srl         ra, a0, s5
                  slli        zero, tp, 3
                  xori        s6, a6, -1026
                  sltu        s3, s11, a3
                  sltu        s8, tp, t3
                  slli        a2, s11, 2
                  xor         a2, t4, a0
                  srli        s0, t3, 7
                  add         s2, a3, t2
                  slti        s2, a3, -1434
                  lui         ra, 59514
                  sra         a0, s8, a7
                  srl         s2, s11, s2
                  sll         s5, s5, s11
                  ori         a6, t6, 271
                  add         tp, s11, s0
                  addi        a0, t0, -1733
                  xor         s8, t1, a1
                  sltiu       zero, a4, -524
                  andi        s1, s5, 680
                  auipc       zero, 843805
                  sltiu       s2, t2, 1459
                  add         a5, t3, a7
                  srli        t2, a1, 1
                  srai        zero, s8, 10
                  nop
                  srai        zero, t0, 11
                  auipc       s3, 576812
                  addi        tp, tp, -578
                  lui         gp, 801150
                  and         zero, s11, s0
                  srli        sp, t0, 28
                  sub         a7, a5, s8
                  and         s4, a4, t0
                  or          t0, a7, t6
                  lui         s2, 460613
                  or          s3, t1, t5
                  sltu        a1, s11, s6
                  slli        t4, s10, 21
                  and         s6, a3, t5
                  andi        a4, a7, 1754
                  sub         t3, zero, a4
                  sltiu       zero, t4, -1489
                  xor         t2, t3, t0
                  andi        s8, a2, 498
                  xor         zero, t1, t5
                  slti        t4, s6, -1382
                  nop
                  xori        a6, a4, -1603
                  sltiu       sp, t2, -625
                  slti        s9, s1, 1911
                  add         a5, s11, a3
                  sub         t4, t6, t2
                  slt         s3, t6, a3
                  sltu        sp, t3, a0
                  lui         a0, 297325
                  addi        zero, a0, 542
                  ori         t0, s8, 119
                  xor         a3, tp, a0
                  ori         s9, s10, -957
                  nop
                  auipc       t4, 735469
                  or          t1, zero, a0
                  addi        a5, ra, -1599
                  ori         s9, s3, -534
                  sltu        sp, s9, zero
                  andi        a3, s4, 1888
                  auipc       gp, 984814
                  auipc       sp, 547373
                  sltiu       a4, t5, -713
                  auipc       a1, 538945
                  auipc       a0, 493493
                  sltiu       s1, s11, -1604
                  xori        a0, s10, 588
                  sub         a2, t3, s6
                  sltu        a1, s5, zero
                  sll         s1, t0, a1
                  sltiu       s8, s11, -16
                  sltu        s2, a1, a7
                  ori         t2, s6, -321
                  sltu        a5, s11, s4
                  slt         a6, s0, zero
                  add         s5, a0, s10
                  srl         zero, tp, t2
                  sub         a3, t3, a1
                  sltu        s6, s2, a5
                  xori        sp, s7, 800
                  xor         s7, t3, a1
                  srl         zero, a5, s8
                  sub         s7, a4, a7
                  slt         t3, ra, s1
                  ori         s7, t0, -1437
                  srai        s5, s4, 31
                  nop
                  xori        s11, a1, -884
                  ori         tp, a0, 806
                  slli        t1, s0, 3
                  sltu        s7, a3, s6
                  auipc       tp, 577895
                  and         a4, a1, a1
                  sltiu       s3, s11, 486
                  or          s1, zero, a7
                  nop
                  sra         a4, a1, s1
                  srli        a4, ra, 22
                  slti        a1, sp, 1749
                  sll         a4, gp, t6
                  sltu        a0, s2, s4
                  sltiu       a0, s7, -1262
                  andi        s1, s4, -478
                  slt         a1, s5, s7
                  xori        s11, a1, -505
                  ori         zero, gp, -212
                  sltiu       ra, a4, -1017
                  sltu        a3, a6, zero
                  xor         s9, a2, a7
                  sll         a3, s6, tp
                  srai        s3, a7, 15
                  sub         sp, a3, s0
                  slt         a1, a7, s8
                  xor         a6, a7, t3
                  sltu        sp, gp, gp
                  srai        a6, a1, 7
                  add         s4, s4, t3
                  xor         tp, a5, a7
                  or          t1, s3, s3
                  or          s9, a0, a4
                  or          s9, s2, s11
                  add         zero, s7, t3
                  sra         zero, s10, gp
                  slli        a0, s8, 10
                  and         s8, a1, s6
                  srli        s11, s3, 13
                  sll         t3, s11, a0
                  slti        zero, ra, 1175
                  sll         sp, t4, t4
                  ori         a5, t6, -1083
                  lui         zero, 1028749
                  xor         gp, s7, a7
                  and         tp, s8, s10
                  sub         t4, a2, s3
                  andi        s6, s11, 459
                  sltiu       s9, a4, -1437
                  andi        a3, a1, 71
                  sub         a2, t2, s1
                  srli        zero, t0, 21
                  ori         zero, a1, -188
                  nop
                  slti        tp, a0, -2043
                  nop
                  nop
                  addi        ra, s0, -1601
                  auipc       a6, 470857
                  sll         s6, t3, gp
                  srai        a4, s0, 14
                  nop
                  lui         zero, 545626
                  ori         s6, t4, 1836
                  add         s3, a4, a0
                  addi        s9, t3, -1995
                  auipc       t0, 671593
                  or          a3, a6, s5
                  srli        zero, s11, 27
                  slli        a1, a0, 13
                  slt         sp, a3, s9
                  or          a3, t3, a6
                  lui         s2, 573708
                  xor         t4, s4, sp
                  sll         s7, s8, t6
                  nop
                  sltiu       a1, t2, 764
                  srl         s0, t6, s4
                  slli        a7, a4, 17
                  nop
                  slt         a5, a7, a2
                  nop
                  ori         t2, sp, -1991
                  srli        a7, gp, 1
                  sltu        a1, s6, s0
                  sub         a0, a3, t0
                  srli        zero, s9, 17
                  xor         t2, a7, a6
                  slli        zero, t5, 11
                  and         ra, tp, s5
                  addi        t1, s3, 239
                  and         s0, sp, ra
                  lui         s4, 991619
                  srl         s2, s10, s3
                  lui         t4, 553517
                  sll         s7, a2, s11
                  ori         s7, gp, -302
                  or          s8, a4, s9
                  lui         s0, 912114
                  srai        t2, s1, 23
                  srli        s2, t5, 22
                  auipc       zero, 110068
                  lui         zero, 985704
                  add         s9, s11, s11
                  sll         s11, a1, s6
                  nop
                  sub         t0, s0, s6
                  xori        t4, a1, 1730
                  sub         s8, s4, gp
                  or          t2, sp, s2
                  sub         zero, gp, t5
                  sltiu       tp, ra, -859
                  sltu        s11, a7, s10
                  sra         t0, s4, sp
                  xori        a3, t1, 949
                  xor         a3, s4, s8
                  sltu        t4, s0, gp
                  andi        t1, s1, 398
                  srl         s1, s10, s2
                  and         gp, t5, a2
                  slt         a0, a2, s10
                  srl         s6, t3, t6
                  lui         t2, 657526
                  auipc       t1, 1038839
                  slli        s6, t1, 3
                  andi        t3, a7, 37
                  sll         a3, s0, ra
                  srli        a1, s7, 1
                  lui         ra, 1043140
                  slti        a3, s3, -1821
                  nop
                  xor         a2, s2, a2
                  sra         tp, a4, s2
                  sltu        s11, t5, a3
                  sra         a0, a3, sp
                  xori        ra, gp, -1074
                  addi        t4, s1, 1067
                  ori         a4, a6, 1239
                  xori        t3, s11, -289
                  sltiu       ra, a4, -1114
                  sltu        a0, a3, t1
                  nop
                  sub         s8, s0, t0
                  andi        zero, s1, -281
                  add         t4, s9, t1
                  sltiu       s0, a5, 209
                  auipc       s11, 994613
                  addi        gp, t2, -703
                  add         zero, t3, s4
                  auipc       t1, 1034734
                  srai        a7, t3, 31
                  sll         zero, a6, t5
                  sub         a0, a4, sp
                  sll         a1, t2, s1
                  sltiu       s2, t5, -1575
                  xor         a5, ra, s8
                  srl         s3, t3, a3
                  auipc       a7, 191913
                  xor         t3, a1, a4
                  sltu        a3, a3, t3
                  or          zero, s6, s7
                  srai        s8, a0, 15
                  srai        t2, tp, 29
                  srl         t1, zero, a3
                  and         s9, s10, a4
                  auipc       s6, 837018
                  add         s1, a3, a4
                  add         zero, s10, s10
                  add         s5, s2, s2
                  lui         t2, 195833
                  xori        s2, s11, -1442
                  nop
                  srli        t1, t5, 4
                  lui         s0, 208391
                  nop
                  slti        t3, s4, -264
                  sltiu       t0, s10, 1884
                  sll         t2, a7, t4
                  srai        a4, s1, 14
                  srl         a5, tp, gp
                  xori        a6, a1, -799
                  lui         a7, 536229
                  add         a4, t3, t0
                  lui         t4, 747960
                  xor         zero, s1, s9
                  sll         gp, t1, t1
                  ori         t4, sp, -1019
                  sll         gp, s0, a2
                  srl         a7, tp, s8
                  sra         s8, ra, s10
                  slt         s8, zero, t3
                  sub         a6, s9, t1
                  sra         t0, s6, t6
                  sll         a1, gp, s3
                  sltiu       tp, s3, -980
                  srli        t2, ra, 3
                  sltiu       s7, a3, 638
                  sltiu       s8, s6, 856
                  sub         t4, tp, a7
                  add         a7, t3, gp
                  lui         zero, 383067
                  sll         a5, a7, s10
                  auipc       s8, 442595
                  and         s5, t1, gp
                  add         a2, a6, s1
                  andi        a6, s2, -1371
                  slti        s2, ra, 1009
                  sll         a6, s7, zero
                  sra         t4, s9, a3
                  addi        s2, tp, 1856
                  or          a7, a2, a4
                  sra         t1, s11, gp
                  sub         s0, s3, t1
                  nop
                  srl         a0, a6, s10
                  srl         ra, s7, s11
                  or          a4, t2, s6
                  ori         t2, s2, 1561
                  slli        t2, a4, 0
                  srai        zero, t6, 16
                  ori         s0, a1, -990
                  lui         s1, 1037207
                  auipc       ra, 493170
                  xori        s4, sp, 642
                  sltiu       zero, a2, 1230
                  slli        s9, t5, 6
                  sll         s8, s10, t1
                  sltu        s1, a1, s10
                  sub         a5, s9, t2
                  add         s7, gp, s10
                  sra         a0, s8, gp
                  srai        s11, s5, 5
                  slti        sp, s5, 24
                  sltiu       a6, s2, -1652
                  slti        s9, s1, 489
                  xor         s2, s1, tp
                  slli        s6, a1, 27
                  slli        a0, tp, 26
                  sll         zero, ra, t6
                  or          s1, gp, zero
                  or          t4, s4, s0
                  sll         s3, a3, s3
                  sub         t1, a3, zero
                  srli        ra, s8, 28
                  sltu        sp, s11, t5
                  sltiu       sp, s11, -1565
                  lui         s3, 766115
                  srai        zero, s8, 2
                  slli        s0, ra, 11
                  andi        a0, t4, -774
                  sltiu       s6, sp, -1940
                  add         a2, s10, a4
                  addi        a4, s4, 783
                  xor         a5, a0, t4
                  srli        t0, ra, 19
                  sltu        s6, s1, s5
                  lui         sp, 893780
                  auipc       tp, 906340
                  sra         zero, t3, gp
                  xori        t4, s5, 810
                  slt         zero, s4, a4
                  srai        sp, t2, 27
                  addi        zero, t1, -1412
                  nop
                  srl         sp, s1, t1
                  xori        s5, s6, 660
                  xor         sp, s2, sp
                  srl         tp, t0, a7
                  xor         s7, s2, ra
                  nop
                  and         a2, t2, s0
                  xor         s7, s3, s1
                  lui         zero, 678274
                  sltiu       a5, s5, -496
                  slli        s4, a4, 17
                  lui         s9, 482513
                  sll         a2, s7, a6
                  andi        a4, s10, -191
                  xor         s9, tp, t2
                  nop
                  lui         s6, 370541
                  xor         s7, sp, t5
                  ori         a6, t0, 1766
                  srl         ra, s11, s5
                  add         s6, s7, t3
                  auipc       s3, 322984
                  srai        ra, s3, 2
                  srl         a6, zero, tp
                  or          s7, a5, a2
                  xor         tp, a0, tp
                  xori        a3, s3, -282
                  srai        s11, ra, 24
                  sltu        a2, a5, s0
                  ori         s2, t4, 51
                  and         s2, a2, t1
                  andi        s11, gp, -211
                  auipc       t4, 536219
                  and         t1, a3, t6
                  nop
                  slli        gp, t4, 26
                  nop
                  ori         sp, a5, 715
                  sll         s1, sp, s10
                  add         t4, s11, a4
                  sub         zero, tp, ra
                  lui         a5, 979640
                  auipc       s7, 973437
                  srai        s0, sp, 5
                  srl         s4, t2, s11
                  sltiu       t4, a4, 820
                  srl         zero, a2, t1
                  or          s6, t5, s8
                  xor         gp, zero, zero
                  and         s1, sp, s10
                  srl         gp, sp, s4
                  addi        a4, t5, 1246
                  xori        s7, s1, -1245
                  and         t1, s11, t1
                  slt         zero, s6, s1
                  or          gp, gp, s6
                  sltu        gp, s2, s9
                  add         s11, s0, s3
                  add         s9, t5, a3
                  sra         s11, s2, a3
                  sra         s0, s8, s11
                  sltiu       a4, a4, -1584
                  xori        t4, t1, 1187
                  sll         t0, s5, ra
                  lui         zero, 475250
                  srl         s9, a0, zero
                  sll         a0, t4, t3
                  sltu        a2, t3, s4
                  addi        s2, t4, 654
                  sltiu       zero, s1, -233
                  slti        zero, ra, -6
                  slt         zero, a0, t0
                  sub         a0, s3, zero
                  srli        s11, gp, 29
                  srl         s0, t5, a5
                  slt         t0, t1, sp
                  srl         sp, a6, a1
                  srai        zero, s1, 23
                  srai        t1, a5, 27
                  srai        a1, s0, 20
                  or          a5, zero, t6
                  sub         t0, ra, a1
                  srli        a0, t5, 19
                  andi        zero, sp, 1596
                  or          a7, s8, t1
                  srai        a7, ra, 26
                  srli        t1, s3, 18
                  srai        a2, s6, 27
                  srai        tp, a2, 17
                  andi        s3, s4, 371
                  srli        s8, t2, 6
                  sub         t3, s1, s9
                  sltiu       s1, s4, -1739
                  ori         t2, zero, 1112
                  nop
                  nop
                  or          s3, s9, a4
                  slti        a3, a3, -1456
                  and         a6, sp, s10
                  nop
                  sltu        s9, a3, t5
                  sltiu       a6, s7, 1576
                  auipc       s9, 743981
                  slt         s7, s4, s6
                  sll         s5, t5, sp
                  auipc       zero, 401616
                  sll         a4, s11, a0
                  addi        s9, s8, -943
                  srli        zero, a7, 6
                  or          s2, s5, t0
                  slti        s8, t2, -951
                  sub         t2, s4, a1
                  lui         gp, 990955
                  slli        s2, s6, 16
                  auipc       s9, 780443
                  srli        s6, s9, 28
                  sll         zero, s7, a1
                  sra         s6, tp, a3
                  add         a0, t2, gp
                  add         a7, s4, a2
                  slti        a7, s7, -1072
                  andi        s7, tp, 878
                  lui         a6, 605797
                  sltu        s6, s2, s5
                  srli        s2, t0, 7
                  add         s8, ra, t5
                  andi        tp, s11, -851
                  xor         a1, t4, zero
                  addi        a2, a6, -307
                  and         a7, a7, a4
                  xor         s5, t2, s0
                  slti        a2, s7, -15
                  addi        sp, s9, 855
                  and         s0, t3, t5
                  slt         gp, t3, s8
                  ori         a6, a2, 1464
                  sra         s4, sp, a1
                  slli        ra, s9, 9
                  sra         s5, ra, s7
                  nop
                  auipc       a1, 39546
                  srli        s9, a3, 3
                  sub         s3, s0, zero
                  xor         a0, s1, sp
                  srl         s2, s2, t1
                  xori        s11, s5, -1882
                  auipc       a7, 286707
                  srai        zero, a3, 22
                  sra         zero, a6, s4
                  and         a2, t1, t2
                  xor         a5, a2, s9
                  andi        gp, t5, -536
                  ori         s5, s11, -718
                  sltu        t2, s11, a2
                  srai        t1, a4, 8
                  addi        zero, sp, 371
                  lui         t1, 869180
                  slli        zero, a1, 29
                  srai        t4, s8, 4
                  ori         zero, a3, 1051
                  andi        zero, t2, -1042
                  slli        sp, s2, 23
                  srli        zero, s0, 20
                  nop
                  sub         zero, t1, t4
                  lui         zero, 481353
                  sltiu       a2, zero, -724
                  ori         s5, a4, -1030
                  sltiu       t1, t2, 854
                  srai        s8, t5, 2
                  ori         t2, zero, -992
                  slti        a2, a6, 1892
                  srli        zero, a5, 21
                  sltiu       s5, a1, -1263
                  sra         tp, t3, a2
                  lui         zero, 216934
                  slt         ra, s4, s5
                  slti        zero, a0, -984
                  lui         zero, 375694
                  andi        s4, s2, -1906
                  sltu        a1, sp, a2
                  xori        s7, tp, -1212
                  xor         s2, s7, sp
                  sltiu       zero, s7, 224
                  ori         zero, t4, -435
                  sub         s5, s0, zero
                  slti        zero, ra, 1464
                  nop
                  lui         gp, 429656
                  andi        s9, s10, 1485
                  slli        a5, s3, 0
                  and         gp, a7, ra
                  slt         a5, t3, a2
                  xor         zero, a3, sp
                  srai        s1, a1, 20
                  sub         s8, t2, a7
                  sltiu       t0, a0, 110
                  nop
                  srl         a0, t4, t5
                  sub         s1, s2, zero
                  slti        s0, tp, -715
                  slt         t1, t3, a3
                  ori         t2, t1, -1207
                  andi        t0, s9, -1075
                  slli        a3, a3, 16
                  slt         a0, a3, s4
                  lui         s7, 349986
                  lui         gp, 298224
                  add         s3, ra, s4
                  sltu        s4, s9, t4
                  sll         s2, zero, s9
                  slti        a7, a3, -1331
                  ori         a0, t3, 516
                  lui         a5, 549045
                  xor         ra, s1, sp
                  slt         a3, t6, s4
                  ori         ra, s11, 1770
                  sra         s3, a2, a0
                  slt         a0, a5, t0
                  srli        t4, a0, 26
                  xor         a3, a1, t6
                  nop
                  andi        s3, s11, 1302
                  srai        ra, s3, 16
                  sltu        a3, a2, tp
                  and         zero, a1, a0
                  sub         t1, s9, a5
                  add         s5, s9, tp
                  ori         zero, s1, 1591
                  slli        a3, a0, 28
                  sll         zero, sp, ra
                  ori         a4, t0, 624
                  xor         s8, s0, a3
                  auipc       a6, 709830
                  addi        zero, a2, 155
                  sltiu       s2, a4, 1258
                  srai        a1, s11, 20
                  sll         a1, t1, s10
                  sub         zero, s4, ra
                  xori        zero, tp, 49
                  auipc       a3, 738845
                  and         t0, s6, s1
                  sra         t2, a7, tp
                  sltu        sp, t4, s7
                  add         s8, zero, s8
                  slli        zero, s11, 18
                  xor         zero, s2, a5
                  sltiu       a0, s1, -1760
                  sll         s7, a0, a3
                  nop
                  lui         a4, 28840
                  xor         s3, s8, sp
                  auipc       s2, 949589
                  ori         s4, s6, 1733
                  or          a0, s11, s5
                  nop
                  ori         ra, t4, -1872
                  sll         a3, s9, ra
                  slli        tp, gp, 4
                  auipc       s0, 314096
                  srl         zero, t0, a2
                  slt         s6, a3, zero
                  and         s6, a5, s0
                  sll         a2, a0, s8
                  sltu        a1, t6, t6
                  sll         zero, s1, gp
                  sltiu       ra, s0, 348
                  or          zero, s5, s0
                  sll         a5, tp, a2
                  and         s4, s9, s8
                  sltu        t3, s7, s4
                  slli        s4, t6, 28
                  slli        s2, ra, 31
                  or          tp, s8, t6
                  andi        a1, s5, 66
                  slli        s8, a1, 18
                  xor         s7, a1, ra
                  srl         sp, t4, a7
                  xor         a0, gp, t4
                  slli        t4, t5, 26
                  andi        a7, sp, 1671
                  slli        a5, s4, 21
                  andi        a6, t5, 617
                  sub         s2, a4, a4
                  sltu        s0, t2, a2
                  sub         zero, t2, s0
                  sltiu       a6, gp, 1560
                  sltu        a4, ra, a1
                  slti        s8, a5, 483
                  srl         a6, s7, a5
                  andi        t1, tp, 891
                  sltu        gp, sp, s10
                  sll         s4, s3, a7
                  slt         s5, a7, t0
                  xor         t4, s3, s0
                  sra         a7, s7, s10
                  nop
                  slti        s8, a0, -1471
                  sub         t0, a2, tp
                  slli        s0, a4, 19
                  sra         sp, a0, s3
                  auipc       t2, 311036
                  slt         a4, t0, a2
                  sltiu       a1, t6, 1055
                  sltu        zero, s10, ra
                  auipc       s4, 777426
                  and         gp, t0, s2
                  auipc       a4, 932883
                  ori         s6, a5, 1638
                  andi        s2, t3, 1255
                  srai        zero, sp, 5
                  srl         t3, s10, t6
                  or          zero, t3, s8
                  slti        t2, s11, 1513
                  or          s0, s5, a1
                  nop
                  sra         s6, s1, t0
                  or          s5, s7, a6
                  srli        s11, t3, 24
                  add         a0, s1, t0
                  add         s11, s5, s5
                  srai        t2, s4, 4
                  srli        s2, a3, 23
                  slli        s5, s1, 29
                  auipc       zero, 27669
                  or          s7, t5, s7
                  sltu        a2, s2, a4
                  auipc       s5, 414833
                  sltiu       t2, t6, 25
                  sra         s8, s1, t5
                  andi        a1, s7, -1839
                  or          s11, s10, gp
                  srl         a5, t0, s0
                  slti        s5, t5, 1387
                  sra         s3, t5, zero
                  sra         s8, a2, a4
                  sub         a3, s4, t2
                  srl         s3, tp, t6
                  sll         a4, t2, a0
                  slti        s1, s10, 312
                  slti        zero, t2, -901
                  sltiu       a2, s0, 878
                  slt         tp, t1, a5
                  srli        t3, t0, 31
                  xori        ra, a7, 180
                  sll         a3, s3, s6
                  sltiu       a5, t0, 1428
                  sltu        gp, a1, s5
                  sltiu       s5, t0, -1041
                  xori        a7, s10, -1613
                  xori        s11, s8, 1811
                  xor         s3, a6, s1
                  lui         s0, 464282
                  nop
                  srli        a7, t0, 31
                  sltiu       a5, s4, -1106
                  add         a3, a0, t4
                  or          zero, a0, t0
                  sub         a6, t1, s11
                  srl         gp, s4, s0
                  lui         a2, 793689
                  auipc       t1, 655353
                  srli        t2, a0, 9
                  auipc       a7, 124957
                  srl         t4, t3, s0
                  or          zero, t4, s4
                  sltiu       s6, a4, 518
                  and         s6, a6, s1
                  sub         s5, s2, t4
                  or          t4, sp, a3
                  addi        a1, a2, -1723
                  slli        sp, a5, 30
                  slli        t1, s1, 25
                  sltiu       s7, tp, -1924
                  srl         a7, s8, a2
                  sra         a4, zero, gp
                  slli        zero, a7, 28
                  addi        s1, s0, 859
                  ori         a6, t2, -869
                  and         sp, sp, a6
                  sra         a7, a0, s10
                  xor         tp, s3, s3
                  and         ra, a0, t3
                  addi        s6, t2, -1950
                  lui         s7, 190324
                  xor         t1, s3, ra
                  sltiu       a7, zero, -60
                  lui         s11, 1030483
                  srli        a4, s9, 9
                  lui         sp, 773363
                  add         a1, a4, s6
                  auipc       s6, 141165
                  slti        a6, a7, -1121
                  xori        sp, t0, 1391
                  andi        a3, s5, 185
                  lui         a7, 485851
                  andi        zero, t4, -223
                  sll         s11, t2, zero
                  addi        s3, s6, -1695
                  nop
                  srli        ra, s3, 23
                  slt         s6, a7, s6
                  addi        s8, tp, -1596
                  srai        s1, tp, 6
                  nop
                  slt         t0, a1, a4
                  add         t0, s3, t0
                  sltu        a1, a1, zero
                  xori        s9, t1, 108
                  andi        zero, s1, -1706
                  slli        s4, s1, 12
                  andi        t3, a1, 1252
                  addi        zero, t3, -920
                  sra         t3, s9, sp
                  sltiu       a0, ra, 1142
                  slti        zero, s11, 1306
                  nop
                  and         t1, t1, ra
                  srl         s3, t4, t0
                  or          zero, a7, a2
                  sub         t2, t6, s6
                  xori        zero, s2, -1524
                  slt         ra, tp, a6
                  xori        a6, a7, -1944
                  slt         t4, a0, s2
                  srli        a0, s5, 1
                  nop
                  sll         a4, ra, a2
                  ori         t2, t5, -1428
                  sra         zero, a2, sp
                  lui         s1, 105314
                  nop
                  sltiu       zero, s8, 748
                  sra         t2, a7, s0
                  addi        tp, t6, 1240
                  srai        a3, s2, 28
                  addi        s4, ra, 868
                  srai        gp, tp, 11
                  slt         s0, s1, t0
                  lui         t0, 326344
                  sll         tp, a1, s4
                  xori        t3, s0, 1008
                  auipc       s1, 72252
                  srli        t4, a4, 27
                  lui         zero, 797475
                  ori         s4, s7, 547
                  slt         t1, s10, s7
                  sltu        a3, s3, s0
                  sltiu       sp, a2, 741
                  nop
                  srl         s5, s2, a2
                  sll         ra, s10, t0
                  add         s11, tp, a4
                  lui         s3, 856825
                  srl         t0, a5, s9
                  or          s11, zero, a1
                  lui         s0, 732856
                  auipc       a2, 902099
                  xor         tp, a7, a7
                  srli        ra, tp, 14
                  or          zero, t4, t5
                  sra         s4, s0, s3
                  srli        s6, t3, 1
                  add         zero, a7, a7
                  auipc       s0, 900247
                  xori        t2, t6, 283
                  add         a2, s11, sp
                  slti        gp, t4, -1543
                  lui         t1, 874272
                  slt         a7, s10, t3
                  sltu        s2, t3, zero
                  sll         a3, s1, t4
                  slt         s9, t6, zero
                  ori         t0, s1, 1316
                  lui         sp, 837089
                  lui         s9, 585072
                  sub         s5, gp, zero
                  srli        a4, s8, 8
                  srli        s2, sp, 8
                  and         zero, t3, s1
                  and         a3, a7, s4
                  sltiu       s9, s5, -1427
                  lui         sp, 167792
                  slt         a5, sp, t5
                  ori         t4, t0, -799
                  auipc       t3, 972876
                  srl         a1, s8, s5
                  sll         s3, a0, s4
                  and         sp, zero, t1
                  slli        s9, zero, 19
                  auipc       s5, 717662
                  lui         sp, 92132
                  sub         t4, a4, s4
                  nop
                  lui         zero, 381871
                  sltu        gp, t0, a5
                  sll         ra, a2, s10
                  slt         t0, a6, a3
                  ori         a1, ra, 940
                  xor         t3, s2, a1
                  sll         tp, t3, a0
                  add         s6, a5, s0
                  slli        a4, s10, 2
                  or          s7, s3, s1
                  sra         t1, t3, t5
                  add         s11, zero, s2
                  xori        sp, s10, -1570
                  and         s2, t3, t2
                  addi        tp, s2, 1880
                  sltiu       zero, s6, 379
                  andi        t1, s6, 1802
                  slt         s4, gp, s0
                  sltiu       zero, s5, -1672
                  nop
                  sltiu       t0, tp, -1350
                  srl         s2, s6, s9
                  or          s7, a7, a2
                  srai        t3, s4, 13
                  nop
                  add         t1, a6, a6
                  and         s0, t2, a7
                  andi        zero, tp, 1373
                  xori        ra, a1, -692
                  addi        s6, a4, -1606
                  add         zero, s8, s2
                  sra         s4, t0, a6
                  slli        tp, a6, 20
                  add         s4, t4, tp
                  srl         ra, s5, s6
                  sub         zero, a0, s2
                  ori         s1, a6, 1509
                  srai        t0, s7, 8
                  ori         s6, a2, 126
                  nop
                  andi        s8, s5, 1546
                  nop
                  ori         s8, a0, -460
                  slt         a0, t0, a5
                  srl         s6, s11, s0
                  addi        ra, t5, -1889
                  sll         t2, s1, s3
                  srl         a2, s8, gp
                  srli        a7, t3, 0
                  srl         zero, s0, s10
                  add         t0, s9, a4
                  auipc       zero, 92081
                  nop
                  addi        t0, t2, -229
                  xori        t3, zero, -768
                  xori        t2, t2, 141
                  xor         t4, gp, s6
                  ori         s9, s6, -1230
                  auipc       a4, 919539
                  srai        tp, s0, 24
                  sltu        a1, a0, a6
                  and         zero, a0, s6
                  sll         s7, a3, a1
                  sll         s9, t4, a3
                  and         zero, a7, t4
                  lui         a0, 113618
                  xori        t4, s1, -655
                  ori         t3, s10, 71
                  sltu        s0, s7, a5
                  lui         s7, 741277
                  slti        s1, t4, 603
                  andi        s5, t2, 1110
                  add         s9, a7, a2
                  slli        a6, a0, 15
                  sltiu       s9, tp, 601
                  sra         s7, a5, a2
                  nop
                  slli        zero, a7, 14
                  addi        s3, s4, 484
                  srli        a5, a7, 10
                  or          s11, s2, t0
                  add         a4, a7, zero
                  or          a6, t5, s6
                  slti        t3, s1, 1951
                  ori         a4, a5, -25
                  sltu        a3, t0, t5
                  nop
                  lui         s5, 230760
                  xor         t1, a4, s11
                  nop
                  sub         a2, s4, sp
                  slli        s4, ra, 2
                  sltiu       a5, s0, 1268
                  sll         s1, s3, s6
                  slti        a7, s6, -541
                  xor         sp, a5, a0
                  add         s9, t1, s4
                  xor         ra, t5, a1
                  or          a5, s6, t4
                  xor         s7, s10, s7
                  slli        t1, a1, 24
                  sll         s8, gp, s3
                  slti        gp, s9, -1141
                  sltu        t4, tp, a0
                  srai        ra, t1, 20
                  addi        t4, s4, -1228
                  sll         zero, t4, sp
                  auipc       s11, 336453
                  sub         zero, gp, s7
                  srli        zero, zero, 12
                  slt         zero, sp, ra
                  and         a7, s2, a2
                  and         zero, a0, s5
                  lui         ra, 320323
                  lui         s2, 663913
                  ori         s2, s8, 1177
                  andi        s11, s4, 19
                  andi        zero, a3, 339
                  add         t4, s7, t0
                  addi        t4, s3, 298
                  sra         a3, a6, s8
                  andi        s0, s1, -598
                  lui         t1, 39785
                  add         s1, t4, s2
                  lui         zero, 360082
                  add         s1, s9, s10
                  ori         zero, ra, -889
                  or          s4, s1, a1
                  add         a6, s6, s2
                  xor         zero, a6, s5
                  slli        s7, a0, 28
                  auipc       s6, 246908
                  auipc       t0, 114293
                  nop
                  slt         s0, a2, s10
                  srli        s7, s5, 30
                  slti        s7, s9, -401
                  andi        a0, s6, -679
                  andi        s11, s3, -659
                  srli        s2, a4, 18
                  auipc       s2, 373091
                  sll         s9, s3, s7
                  sub         s4, s4, s5
                  xor         s2, s9, s7
                  ori         zero, a0, 576
                  sra         gp, zero, s7
                  slli        a1, zero, 15
                  lui         s3, 914477
                  slli        a6, gp, 1
                  srai        s5, s4, 4
                  xori        s5, a3, -333
                  andi        zero, a0, 45
                  add         s1, a4, a4
                  and         sp, s7, a0
                  srl         s8, t4, t0
                  sra         s0, s11, t4
                  or          t4, ra, s11
                  add         sp, t1, s10
                  slt         t3, a6, t1
                  and         a3, s2, a2
                  ori         t0, t0, -722
                  srai        tp, a5, 23
                  sub         s8, t5, a0
                  xori        s5, a6, -169
                  sltiu       a7, t4, -1466
                  slt         zero, gp, sp
                  srai        a1, s4, 6
                  xor         a3, t3, a1
                  and         t3, ra, t4
                  srai        s7, tp, 20
                  xori        t4, s11, -199
                  sltiu       a6, t0, 1779
                  srai        zero, a3, 11
                  slti        s7, s6, -622
                  slt         gp, a6, s1
                  sub         a6, zero, t1
                  and         a7, a7, t5
                  nop
                  ori         zero, a3, -160
                  sra         t2, a3, zero
                  ori         s3, s8, 262
                  slli        a0, t1, 5
                  xor         s4, s3, a1
                  and         a5, a6, s0
                  sll         zero, a7, t3
                  sltu        s7, s8, a2
                  sra         s5, a4, a0
                  srl         t1, a3, t6
                  auipc       zero, 866151
                  or          gp, gp, s0
                  addi        zero, s6, -617
                  andi        zero, a4, 727
                  andi        zero, a2, -1264
                  auipc       zero, 76543
                  srai        t1, s6, 17
                  or          a1, gp, s5
                  sltiu       a6, t6, -1542
                  sra         t4, s5, s1
                  srai        ra, s5, 6
                  sra         zero, t4, a3
                  ori         s3, t4, 1623
                  sra         t0, s8, s5
                  ori         zero, t2, -1596
                  ori         a7, s3, -357
                  sll         s0, s0, s6
                  srai        t1, a3, 9
                  srai        sp, a0, 1
                  srl         zero, t1, a0
                  and         a1, s1, a7
                  srai        s9, ra, 23
                  sll         a7, t0, a7
                  sltiu       t1, a6, 1768
                  ori         a1, t5, 691
                  nop
                  srai        s7, a6, 9
                  sra         gp, s4, a2
                  sltu        s5, gp, t5
                  srl         sp, a1, t4
                  xor         s0, sp, s11
                  sll         sp, ra, a5
                  andi        t1, t2, -1662
                  addi        s4, a3, 182
                  xori        ra, s8, 434
                  xori        s0, a1, 1655
                  addi        s4, t4, -1518
                  xor         tp, a7, tp
                  addi        a5, s1, 332
                  srli        s7, s3, 4
                  sub         a0, s3, s8
                  and         a7, t6, a2
                  sub         a1, t6, s8
                  slli        s8, a4, 17
                  auipc       s4, 993219
                  slt         a0, zero, a1
                  srl         a6, tp, sp
                  add         zero, s9, t1
                  sltu        s4, s2, a0
                  srai        s0, s2, 6
                  or          gp, t1, s6
                  srli        s6, sp, 28
                  ori         a0, a6, 1701
                  slt         t1, t2, a3
                  slt         a5, s2, a0
                  srai        s4, s7, 13
                  sltiu       ra, t4, -1492
                  sltiu       a6, a6, 1017
                  add         t4, s11, s3
                  sub         a5, s10, zero
                  andi        gp, s0, -1154
                  sll         a2, a0, gp
                  srl         tp, s3, s3
                  nop
                  srai        a6, s11, 13
                  and         sp, t0, s11
                  auipc       zero, 574406
                  srli        a1, a7, 7
                  sra         t0, ra, a1
                  srli        t3, t2, 27
                  srli        a5, a0, 27
                  sra         a6, t0, t1
                  nop
                  nop
                  or          s8, s10, a1
                  xor         a4, s8, t1
                  srai        s11, a1, 0
                  or          a4, sp, s5
                  xor         tp, s7, s0
                  slti        sp, s8, -1008
                  andi        a0, t3, 188
                  nop
                  srl         gp, s11, t0
                  sltiu       s11, s8, 757
                  srai        t4, s10, 9
                  sub         a6, t5, t6
                  srai        s4, t1, 5
                  sub         s11, s3, t3
                  ori         ra, s8, -685
                  or          s3, t4, t3
                  sltiu       a2, s4, 1450
                  xor         s4, t0, a6
                  srl         a3, t2, s2
                  srai        sp, s8, 20
                  xor         t2, a4, s0
                  auipc       a7, 352207
                  srli        s3, ra, 11
                  srli        a5, ra, 20
                  slli        t2, a1, 29
                  srli        s0, s7, 12
                  add         zero, s2, a3
                  andi        t2, s9, -305
                  xor         a5, a0, s6
                  sll         s11, t3, t5
                  srai        s8, s7, 25
                  sub         zero, a0, a1
                  sltiu       zero, s9, 1835
                  slti        s2, s6, -1476
                  and         s7, s7, s0
                  srai        a7, a2, 24
                  slt         a2, t2, a4
                  sll         s2, a1, t1
                  addi        s0, tp, -801
                  sra         a4, s10, a2
                  sltu        a4, t4, s5
                  srli        s9, s10, 7
                  srli        a0, a7, 21
                  sub         s1, s11, a2
                  sltiu       a6, t6, 1090
                  ori         zero, gp, -1969
                  slti        zero, s2, 878
                  auipc       a5, 122348
                  slt         zero, s7, t2
                  sltiu       ra, s0, -1306
                  slli        s3, t2, 27
                  ori         s2, s7, -1108
                  slti        zero, s3, -518
                  xor         s0, s6, a0
                  lui         zero, 859584
                  srai        s8, s6, 18
                  andi        s1, s2, 1620
                  sltiu       s1, t3, -1818
                  ori         a0, s4, 1175
                  addi        s0, t3, 1690
                  sra         s8, s2, t0
                  lui         a6, 1036819
                  lui         zero, 585812
                  xor         zero, s4, a7
                  sll         a5, a1, t4
                  slt         s0, a2, s0
                  addi        sp, s11, -1816
                  and         s2, a3, t4
                  sltiu       s3, t6, 884
                  sltu        t4, t4, a3
                  xor         s2, s7, t2
                  nop
                  srl         a1, s8, a0
                  nop
                  nop
                  sltiu       s1, a2, -1991
                  slli        a3, tp, 2
                  addi        t0, t3, -1750
                  sltu        zero, a2, t0
                  sltu        s9, a3, a4
                  auipc       t3, 810121
                  sra         zero, a6, sp
                  slt         gp, s10, s6
                  slti        s0, t0, -1778
                  sub         a0, t3, s7
                  and         a4, s7, s11
                  or          a5, s1, s7
                  sltiu       tp, s11, -1698
                  slli        zero, s0, 22
                  sll         t3, gp, a1
                  srl         s5, s6, s10
                  srl         s4, s2, a0
                  andi        a1, a0, 1122
                  slt         sp, t3, a4
                  sub         t2, s8, a3
                  andi        sp, a4, 725
                  sub         tp, tp, s4
                  sub         s3, ra, a3
                  ori         t2, t2, -656
                  add         zero, a3, a1
                  slli        a7, s0, 14
                  lui         gp, 935434
                  slt         s3, s4, tp
                  sub         ra, ra, zero
                  lui         s9, 71827
                  addi        a2, t5, 407
                  xor         a0, t3, t1
                  sltiu       s9, t2, 1395
                  add         gp, a3, s2
                  add         a3, t6, ra
                  lui         ra, 812952
                  auipc       zero, 38638
                  addi        s9, s4, 669
                  srl         a2, ra, s9
                  xori        a2, t5, 887
                  slti        zero, sp, -1301
                  ori         ra, s10, -1291
                  slti        t1, s2, -1393
                  lui         s7, 450017
                  nop
                  sll         t4, t0, s6
                  sll         s5, t6, a4
                  slti        zero, s9, 426
                  sltiu       s1, a0, -1606
                  auipc       t3, 694167
                  xori        s11, s10, 513
                  srl         gp, a1, ra
                  sltiu       a5, a5, -582
                  sra         zero, a0, s5
                  sltu        a7, a6, s0
                  xori        a5, s1, 809
                  auipc       a3, 399527
                  xor         s11, t1, a6
                  or          s8, s4, s6
                  or          a7, s9, t4
                  sll         s0, s7, t2
                  nop
                  sll         a4, t5, a1
                  sltiu       a2, t1, -725
                  xor         a7, s9, s5
                  xor         ra, s7, a1
                  auipc       tp, 1032803
                  sltiu       a3, a5, -440
                  sll         t3, a3, s0
                  slli        s7, t1, 8
                  add         t2, t3, t4
                  sra         s9, a3, s9
                  srai        a7, gp, 26
                  srli        a1, s3, 3
                  srli        s1, s5, 27
                  addi        ra, t6, -419
                  addi        a1, s8, -547
                  or          t1, s3, t2
                  sll         zero, a3, t4
                  xor         s11, a5, a2
                  andi        gp, t2, -1679
                  sltiu       zero, ra, -787
                  or          t3, t2, a1
                  srai        a7, t2, 19
                  slli        zero, s0, 15
                  slt         s1, a4, t6
                  addi        s7, s7, 1215
                  addi        s1, s8, -826
                  srli        s7, s8, 10
                  sra         a1, s10, s0
                  sll         tp, t4, s4
                  addi        ra, s7, -641
                  auipc       t1, 783241
                  srai        t2, t0, 6
                  slti        s4, zero, -1245
                  auipc       a5, 545058
                  and         zero, t2, a4
                  nop
                  srai        s3, tp, 14
                  srl         s3, t1, s1
                  xori        s7, zero, 738
                  srl         a5, s2, t4
                  lui         a6, 700658
                  nop
                  ori         t2, s3, 398
                  srli        s9, s5, 3
                  and         a5, s0, a3
                  or          s11, t2, a2
                  add         s8, s10, t1
                  sltiu       t1, t4, -1589
                  slti        a6, a5, -1829
                  lui         tp, 791156
                  slli        t2, s11, 17
                  sra         a1, a6, s11
                  add         s7, t1, a5
                  lui         t1, 393533
                  and         s2, tp, t0
                  or          a1, t6, ra
                  sltiu       s4, a3, 1085
                  add         sp, a2, t3
                  sll         tp, s3, a4
                  auipc       zero, 228304
                  sltu        s4, s8, s0
                  sltu        zero, a0, s1
                  ori         sp, a3, 874
                  slt         a1, s7, t2
                  slt         sp, s11, a1
                  sll         t2, a6, s5
                  add         s8, sp, s1
                  xori        ra, s10, 998
                  srl         gp, a3, a2
                  srl         a1, a4, t1
                  slti        zero, s4, -1525
                  srli        a7, s9, 6
                  srl         zero, s2, t4
                  nop
                  add         s8, a2, a2
                  sltiu       zero, zero, 858
                  sll         s11, sp, a7
                  sll         t0, s1, s9
                  xor         t1, t6, s6
                  lui         zero, 400527
                  lui         a5, 1024117
                  sra         t3, t0, t0
                  sub         s8, a1, a6
                  srai        s11, s5, 6
                  xori        s9, t0, 131
                  xor         zero, a6, t2
                  andi        t3, s9, 484
                  srl         a3, t1, t0
                  and         zero, t6, a4
                  xori        t1, s4, -155
                  lui         tp, 962357
                  sltu        t0, s5, s3
                  sra         s1, tp, t4
                  add         t4, a7, tp
                  sltu        t2, a3, s11
                  addi        t1, t5, 1121
                  andi        s11, s11, -1617
                  srai        s5, s1, 31
                  xori        s1, a2, 1184
                  slti        zero, s11, -1550
                  and         a3, t1, a1
                  xori        sp, s10, 388
                  srl         s6, t4, t5
                  srl         t2, s1, s11
                  xori        a2, sp, -186
                  or          zero, s5, gp
                  srli        a1, tp, 17
                  sll         a5, a4, t3
                  slli        a2, s1, 14
                  slt         a7, t5, gp
                  sll         a2, tp, t2
                  slli        s11, ra, 7
                  or          a4, t0, s8
                  lui         s8, 380612
                  slt         t2, t4, a2
                  add         s8, s2, s8
                  sltiu       a3, a0, -1419
                  addi        s7, a0, -328
                  slt         t0, t6, s0
                  srli        s11, a3, 8
                  xor         a2, t6, t4
                  slti        t1, s1, 573
                  and         t3, gp, s10
                  sltu        t0, t5, t4
                  and         a5, s3, s0
                  sub         s7, s11, t5
                  slt         t0, t0, s3
                  sub         s4, a6, a4
                  sltiu       s9, t5, 435
                  slli        gp, s7, 25
                  nop
                  srai        a5, a6, 28
                  srli        t0, zero, 24
                  addi        s4, s1, 1545
                  xor         sp, s6, a0
                  slti        t1, a4, -2038
                  add         t3, a6, t1
                  sltu        s3, a2, a7
                  addi        s9, a0, -1590
                  slt         t3, a5, t6
                  sub         s4, a6, a7
                  srl         zero, a6, s9
                  slti        s5, gp, -1235
                  addi        zero, s8, 1198
                  xori        s11, t3, 345
                  srai        a0, a0, 22
                  srli        t0, s5, 13
                  sra         tp, t5, a3
                  sltu        t3, s7, t5
                  srli        a2, a3, 8
                  xori        a2, t6, -2047
                  andi        a2, ra, -2043
                  andi        zero, s2, -1790
                  sltiu       s9, zero, 1361
                  slli        zero, sp, 4
                  srli        tp, s1, 16
                  xor         s4, t0, s6
                  and         tp, s8, t5
                  or          ra, t4, s4
                  xori        sp, sp, -1258
                  sra         s1, s4, t3
                  sll         zero, s9, s10
                  srli        t2, a1, 0
                  add         a5, t2, t5
                  srli        s8, tp, 21
                  srai        tp, zero, 21
                  andi        sp, ra, -2039
                  andi        s6, s4, 809
                  xor         t1, s7, s10
                  srai        a1, s6, 26
                  sll         t2, sp, s10
                  sltiu       t3, t5, 1183
                  sra         gp, s2, t5
                  add         a5, zero, t2
                  sltiu       a4, a5, 1882
                  sll         a3, a5, s10
                  or          s11, t6, s10
                  or          tp, t0, s11
                  sltu        s9, s7, a0
                  slt         s6, sp, sp
                  lui         t1, 788041
                  addi        zero, s1, 425
                  lui         s0, 48983
                  and         tp, a4, sp
                  andi        sp, ra, 1340
                  auipc       s4, 49835
                  add         ra, t4, t6
                  sra         zero, t3, t5
                  sll         zero, a7, a4
                  or          t4, a1, a3
                  slli        a3, t4, 10
                  sub         zero, ra, t0
                  srai        a3, zero, 14
                  ori         s5, t3, -17
                  nop
                  srai        ra, gp, 4
                  srl         zero, a5, s8
                  ori         t0, a0, 358
                  srl         zero, s3, a7
                  srai        gp, ra, 17
                  srai        s5, s0, 14
                  sltu        a2, s1, gp
                  sra         ra, gp, s5
                  sltiu       a3, a1, 2043
                  lui         a3, 126360
                  srli        a1, zero, 31
                  auipc       s8, 922099
                  xori        s4, s7, -187
                  srli        a5, t5, 27
                  or          s8, t0, sp
                  slli        s5, t5, 6
                  slti        s7, s10, 1045
                  lui         zero, 162253
                  slli        s0, s10, 20
                  srli        zero, t0, 17
                  slt         a1, a5, a1
                  xor         ra, t5, t3
                  srl         s8, s3, t1
                  add         s1, t0, s6
                  slli        zero, t2, 9
                  sltiu       s2, s2, 1509
                  slti        s0, s3, 891
                  sltu        zero, a4, s6
                  sltiu       s5, s5, -1628
                  ori         a6, s4, -1332
                  nop
                  srai        s4, t0, 8
                  addi        gp, zero, 439
                  and         a2, s11, s2
                  auipc       s2, 669050
                  srl         t4, t6, tp
                  nop
                  auipc       zero, 541768
                  and         gp, a5, s7
                  srl         zero, ra, a5
                  la x31, test_done
                  jalr x0, x31, 0
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
.align 2
mtvec_handler:    
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
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
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x23, 0xb # ECALL_MMODE
                  beq x29, x23, ecall_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x31, write_tohost
                  jalr x0, x31, 0

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
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
                  add x30, x26, zero
                  csrrw x26, 0x340, x26
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
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
                  add x30, x26, zero
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
