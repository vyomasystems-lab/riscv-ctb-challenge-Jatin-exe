# Challenge 3 Illegal Instruction

so we have an illegal instruction in the test file
`.word 0`

the mtvec( Machine Trap Vector) is set to handle exceptions using the mtvec_handler

so when executing `.word 0 ` the current pc is stored in mepc ( Machine Exception Program Counter) and control is shifted to mtvec_handler

here in mtvec_handler we check weather the cause of the excpetion is an illegal instruction usign mcause ( Machine Cause) register

2 is code for illegal instruction as per RISC-V ISA

if it is not an illegal instruction we jump to fail

else we store the Exception Program Counter in t0 and return back to program execution

> by returning back through mret, we just go back to the instruction which caused the exception, thus entering into an infinite loop

**correct handling of the exception:**
```
mtvec_handler:
  li t1, CAUSE_ILLEGAL_INSTRUCTION
  csrr t0, mcause
  bne t0, t1, fail
  csrr t0, mepc
  addi t0, t0 , 4 # increasing the pc by 4
  csrw mepc, t0 # writing the pc to the mepc
  mret # returning to the next instruction
```

By going to the next instruction, we skip the illegal instruction and resume execution of the program

but the next instruction is `j fail` which currently confuses me as to what to do about it




