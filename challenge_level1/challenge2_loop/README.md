# Challenge 2 Loop

when we run make the program is stuck in a loop

looking at the test case 
test.S

```asm
loop:
  lw t1, (t0)
  lw t2, 4(t0)
  lw t3, 8(t0)
  add t4, t1, t2
  addi t0, t0, 12
  beq t3, t4, loop        # check if sum is correct
  j fail
```

we need to exit the loop after we check all the 3 test cases

so we need a counter for that first which is done by
`addi t5, t0, 48`
here t5 stores the end address of the third test cases

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






