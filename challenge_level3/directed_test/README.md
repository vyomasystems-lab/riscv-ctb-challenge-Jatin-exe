# Using Directed test to find bugs in riscv_buggy 


riscv_buggy is stored in /challenge_level3/riscv/riscv_buggy


```
  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  TEST_RR_OP( 2,  add, 0x00000001, 0x00000001, 0x00000000 );

```


directed tests used to test instructions iteratively to find bugs in riscv_buggy


Directed tests help us iteratively execute instructions and help us find if there is any anoyomity in the instructions 



These tests were used when hazards were found
which are bugs which effect other bugs and then we get a domino effect, in which trying to find the origin is difficult 


after using a fuzzer for assembly like aaapg for riscv-dv 

directed tests were used to find the bugs in riscv_buggy implementation

such examples files are provided


