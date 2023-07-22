# Level 2, Challenge 1 Instructions

We are generating random RISC-V instructions using aapg using the configurations stored in rv32i.yaml

upon running make
we observe that a few instructions that are not supported in RV32I(basic without extensions) are also being randomly generated through the aapg


**as in:**
```
test.S:1197: Error: unrecognized opcode `divw a0,s0,a2'
test.S:1212: Error: unrecognized opcode `divw a3,t3,t6'
test.S:1219: Error: unrecognized opcode `divw a0,s9,s3'
```


after looking at the aapg wiki i figured
we need to find the option for rv32m or rv64m and turn it off 

since divw and such are in those extensions which we are not using currently

looking at the configurations provided in rv32i.yaml

at line 66 in rv32i.yaml
```
rel_rv64m: 10
```
changing this to 0 fixes the bug 
as no rv64m instructions are generated and causes no errors



**final output:**
```
[UpTickPro] Test Compilation ------
riscv32-unknown-elf-gcc -march=rv32i -mabi=ilp32 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -I/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level2/challenge1_instructions/work/common -T/workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level2/challenge1_instructions/test.ld test.S /workspaces/riscv-ctb-challenge-Jatin-exe/challenge_level2/challenge1_instructions/work/common/crt.S -o test.elf
[UpTickPro] Test Disassembly ------
riscv32-unknown-elf-objdump -D test.elf > test.disass
[UpTickPro] Spike Run ------
spike --isa=rv32i test.elf 
spike --log-commits --log  test_spike.dump --isa=rv32i +signature=test_spike_signature.log test.elf
```


