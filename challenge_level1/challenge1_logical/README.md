# Challenge1_Logical

**error message:**
```bash
riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -I/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge1_logical/common -T/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge1_logical/common/link.ld test.S -o test.elf
test.S: Assembler messages:
test.S:15855: Error: illegal operands `and s7,ra,z4'
test.S:25584: Error: illegal operands `andi s5,t1,s0'
make: *** [Makefile:4: compile] Error 1
```

the errors message informs that there are invalid instructions at line 15955 and 25585 in test.s
lets look at the instructions 

**Line 15855:**
```asm
and s7, ra, z4
```

here z4 is invalid operand which makes this instruction invalid and raises error
- removing this fixes the bug

**Line 25584:**
```asm
andi s5, t1, s0
```

**andi:** and-immediate, where the third argument must be immediate value (number) not a register
Since s0 is not immediate value program raises error

- changing it to immediate or removing this instruction fixes it

**success! fixed the two bugs**

**output after fix:**
```
riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -I/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge1_logical/common -T/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge1_logical/common/link.ld test.S -o test.elf
riscv32-unknown-elf-objdump -D test.elf > test.disass
spike --isa=rv32i test.elf 
spike --log-commits --log  test_spike.dump --isa=rv32i +signature=test_spike_signature.log test.elf
```