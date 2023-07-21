# Challenge1_Logical

error message:
```bash
riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -I/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge1_logical/common -T/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge1_logical/common/link.ld test.S -o test.elf
test.S: Assembler messages:
test.S:15855: Error: illegal operands `and s7,ra,z4'
test.S:25584: Error: illegal operands `andi s5,t1,s0'
make: *** [Makefile:4: compile] Error 1
```

lets look at the instructions in test.s at 15855 and 25584

**15855:**
```asm
and s7, ra, z4
```

here z4 is invalid operand which makes this instruction invalid

removing this fixes the bug

**25584:**
```asm
andi s5, t1, s0
```

andi- and immediate, where the third argument must be immediate value (number) not a register

changing it to immediate or removing this instruction fixes it

**success!**

output:
```
riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -I/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge1_logical/common -T/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level1/challenge1_logical/common/link.ld test.S -o test.elf
riscv32-unknown-elf-objdump -D test.elf > test.disass
spike --isa=rv32i test.elf 
spike --log-commits --log  test_spike.dump --isa=rv32i +signature=test_spike_signature.log test.elf
```