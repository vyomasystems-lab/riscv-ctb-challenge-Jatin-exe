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

we need to exit the loop
one way is to make the test cases not equal
but then that would result us to jumping to fail


we can edit the `beq t3, t4, loop` to `beq t3, t4, test_end` to exit the loop and avoid the fail block`

-*there are other ways to solve it, i dont know if this is the correct way to solve it*


**output:**
```
riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -I/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge2_loop/common -T/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge2_loop/common/link.ld test.S -o test.elf
riscv32-unknown-elf-objdump -D test.elf > test.disass
spike --isa=rv32i test.elf 
spike --log-commits --log  test_spike.dump --isa=rv32i +signature=test_spike_signature.log test.elf
```






