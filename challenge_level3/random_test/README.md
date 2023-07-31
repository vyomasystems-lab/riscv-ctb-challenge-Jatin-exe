# Using Random Instructions to find bugs in riscv_buggy


Using aapg we generated random instructions according to the configuration file of aapg give in `rv32i.yaml` 


after running `make` we generated test.S with instructiosn according to the rv32i.yaml and simulate using spike


and then prining the diff of the dumps to find any bugs in the processor 
or trying to make the program crash

after analyzing the dump of the simultion 
we got a list of the bugs in riscv_buggy 
by comparing the diff of the two dumps ( as it is done in the Makefiel)

**examples diff of make output**
```
.
.
> 3 0x80001144 (0x1e1eef93) x31 0xfd6141ef
> 3 0x80001148 (0x41c70433) x 8 0xffefc000
> 3 0x8000114c (0x41d45433) x 8 0xffffffbf
1481c1481
< 3 0x8000116c (0x56b44e93) x29 0xfffffad5
---
> 3 0x8000116c (0x56b44e93) x29 0xfffffad4
1485c1485
< 3 0x8000117c (0xf57d6413) x 8 0xffffff56
---
> 3 0x8000117c (0xf57d6413) x 8 0xffffff57
1504c1504
< 3 0x800011c8 (0x00846433) x 8 0x00000000
---
> 3 0x800011c8 (0x00846433) x 8 0x00000597
1513c1513
< 3 0x800011ec (0x01d45933) x18 0x00000000
---
> 3 0x800011ec (0x01d45933) x18 0x00000597
1521c1521
< 3 0x8000120c (0x40675413) x 8 0xffffbe00
---
> 3 0x8000120c (0x40675413) x 8 0xffffbf00
1525,1526c1525,1526
< 3 0x8000121c (0x01deeeb3) x29 0x00000000
< 3 0x80001220 (0x01741d13) x26 0x00000000
---
> 3 0x8000121c (0x01deeeb3) x29 0x00000001
> 3 0x80001220 (0x01741d13) x26 0x80000000
1530c1530
< 3 0x80001230 (0x41dd0eb3) x29 0xd0000100
---
> 3 0x80001230 (0x41dd0eb3) x29 0x50000100
1537c1537
< 3 0x8000124c (0x01aed433) x 8 0x00000d00
---
> 3 0x8000124c (0x01aed433) x 8 0x00000500
1550c1550
< 3 0x80001280 (0x6fbee813) x16 0x4c05a09d
---
> 3 0x80001280 (0x6fbee813) x16 0x4c05a6ff
1601c1601
< 3 0x8000134c (0x00846c33) x24 0x00000000
---
> 3 0x8000134c (0x00846c33) x24 0x88d14596
1604c1604
< 3 0x80001358 (0x00ec6733) x14 0x00000000
---
> 3 0x80001358 (0x00ec6733) x14 0x88d14596
1607,1608c1607,1608
< 3 0x80001364 (0x86ceee93) x29 0x94a9686c
< 3 0x80001368 (0x01aef433) x 8 0x94a96868
---
> 3 0x80001364 (0x86ceee93) x29 0xfffff86c
> 3 0x80001368 (0x01aef433) x 8 0xfffff868
1626c1626
< 3 0x800013b0 (0xbad46713) x14 0xffffff72
---
> 3 0x800013b0 (0xbad46713) x14 0xffffffff
1638c1638
< 3 0x800013e0 (0x3fc66e13) x28 0x03160cfc
---
.
.
.
```


the directory provides the information of all the bugs that were found in riscv_buggy 

when we ran ./riscv_buggy with random configured instructions







