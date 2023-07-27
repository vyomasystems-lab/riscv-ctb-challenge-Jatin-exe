### 1. core   0: exception trap_illegal_instruction, epc 0x800000b0
```
core   0: 0x800000b0 (0x00301073) csrw    fcsr, zero
core   0: exception trap_illegal_instruction, epc 0x800000b0
core   0:           tval 0x00301073
```

floating point control and status register
    : writing zero into it is an error 


### 2.core   0: exception trap_illegal_instruction, epc 0x8000051c
```
core   0: 0x8000051c (0x02a787b3) mul     a5, a5, a0
core   0: exception trap_illegal_instruction, epc 0x8000051c
core   0:           tval 0x02a787b3
core   0: >>>>  $x
```

Since mul extension is not supported we have an exception for this



### 3.core   0: exception trap_store_address_misaligned, epc 0x80000520
```
core   0: 0x80000520 (0x00a7a0a3) sw      a0, 1(a5)
core   0: exception trap_store_address_misaligned, epc 0x80000520
core   0:           tval 0x80092f11
core   0: >>>>  $x
```
here the address that we are trying to access is (a5 +1) which is not properly aligned

this could be due to using offset of 1 which is uncommon 
using an offset of 4 maintains data integrity and alignment



### 4.core   0: exception trap_instruction_access_fault, epc 0x00000000
```
core   0: 0x8000064c (0x00000767) jalr    a4, zero, 0
core   0: exception trap_instruction_access_fault, epc 0x00000000
core   0:           tval 0x00000000
core   0: >>>>  $x
```
`jalr rd, rs, im`: instruction stores pc++ in rd and sets pc to rs+im
here since rs+im == 0
which is invalid address, which we are unable to access




### 5.core   0: exception trap_machine_ecall, epc 0x80000764
```
core   0: 0x80000764 (0x00000073) ecall
core   0: exception trap_machine_ecall, epc 0x80000764
core   0: >>>>  $x
```











core   0: exception trap_illegal_instruction, epc 0x8000059c

```
core   0: 0x8000059c (0xa97d15f3) csrrw   a1, unknown_a97, s10
core   0: exception trap_illegal_instruction, epc 0x8000059c
core   0:           tval 0xa97d15f3
core   0: >>>>  trap_entry
```




```
core   0: 0x80000504 (0x002401e7) jalr    gp, s0, 2
core   0: exception trap_instruction_address_misaligned, epc 0x80000504
core   0:           tval 0x8000050a
core   0: >>>>  switch_mode_handler
```



```
core   0: 0x80000928 (0x00000073) ecall
core   0: exception trap_machine_ecall, epc 0x80000928
core   0: >>>>  switch_mode_handler
```


```
core   0: 0x800015c4 (0x00032303) lw      t1, 0(t1)
core   0: exception trap_load_access_fault, epc 0x800015c4
core   0:           tval 0x00000000
core   0: >>>>  switch_mode_handler
```


```core   0: 0x800012d4 (0x000121a3) sw      zero, 3(sp)
core   0: exception trap_store_address_misaligned, epc 0x800012d4
core   0:           tval 0x80092927
core   0: >>>>  switch_mode_handler```



```
core   0: 0x80000f68 (0x008b15b3) sll     a1, s6, s0
core   0: 0x80000f6c (0xd13efd7525f) unknown
core   0: exception trap_illegal_instruction, epc 0x80000f6c
core   0:           tval 0xefd7525f
core   0: >>>>  switch_mode_handler
```