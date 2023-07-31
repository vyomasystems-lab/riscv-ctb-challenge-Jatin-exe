# Challenge 2 Loop

when we run make the program is stuck in a loop

```
root@codespaces-32c7d7:/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge2_loop# make
riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -I/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge2_loop/common -T/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge2_loop/common/link.ld test.S -o test.elf
riscv32-unknown-elf-objdump -D test.elf > test.disass
spike --isa=rv32i test.elf 

*stuck in loop*
```


looking at the file test.S

here is the main segment of the file test.S
which is responsible for the infinite loop

```asm
loop:
  lw t1, (t0)
  lw t2, 4(t0)
  lw t3, 8(t0)
  add t4, t1, t2
  addi t0, t0, 12
  beq t3, t4, loop        # check if sum is correct
  j fail


  test_cases:
  .word 0x20               # input 1
  .word 0x20               # input 2
  .word 0x40               # sum
  .word 0x03034078
  .word 0x5d70344d
  .word 0x607374C5
  .word 0xcafe
  .word 0x1
  .word 0xcaff
```

> what i think this is supposed to be is that if the sum of successive numbers of test_cases is equal to the number after it we pass the function and we loop to check the next set of three numbers for equality
>
> as there are 3 sets of 3 digit numbers we can track when to exit the loop using 


```
la t0, test_cases
addi t5, t0, 48
```

where t0 is the pointer to cases and t5 keeps track of when to exit



we keep on incrementing t0 by 12 in each test case
by 3 test cases it must be incremented by 48 if it passed all three test cases successfully

so we check for that before the jump to loop
`beq t0, t5, test_end`
using this line, which exits the loop after verifying all test cases


**output:**
```
riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -I/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge2_loop/common -T/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge2_loop/common/link.ld test.S -o test.elf
riscv32-unknown-elf-objdump -D test.elf > test.disass
spike --isa=rv32i test.elf 
spike --log-commits --log  test_spike.dump --isa=rv32i +signature=test_spike_signature.log test.elf
```






