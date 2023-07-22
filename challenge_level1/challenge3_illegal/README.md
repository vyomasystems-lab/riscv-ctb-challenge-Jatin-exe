# Challenge 3 Illegal Instruction

so we have an illegal instruction in the test file
`.word 0`

the mtvec( Machine Trap Vector) is set to handle exceptions using the mtvec_handler

so when executing `.word 0 ` the current pc is stored in mepc ( Machine Exception Program Counter) and control is shifted to mtvec_handler

here we check weather the cause of the excpetion is an illegal instruction usign mcause ( Machine Cause) register

2 is code for illegal instruction as per RISC-V ISA

if it is not an illegal instruction we jump to fail

else we store the Exception Program Counter in t0 and return back to program execution

The Problem is it is suppposed to go to next instruction

mret is supposed to increment Program Counter so we will be at `j fail` instruction

but that doesnt happen
maybe the program counter is not being incremented 
we seem to be stuck in the loop of returning back to the instruction that caused the exception


**THAT IS THE BUG HERE**


