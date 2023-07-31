# RISCV-DV

## Test generation using riscv-dv
```
run --target rv32i --test riscv_arithmetic_basic_test --testlist testlist.yaml --simulator pyflow
```
creates out- dir in the current dir which includes all the test cases according to the testlist.yaml 


testlist.yaml is used to generate the random instructions using riscv-dv

*ps: it takes considerably long time for the simulation to finish*



**Examples test of riscv_arithmetic_basic_test in testlist.yaml:**

```
- test: riscv_arithmetic_basic_test
  description: >
    Arithmetic instruction test, no load/store/branch instructions
  gen_opts: >
    +instr_cnt=10000
    +num_of_sub_program=1
    +no_fence=1
    +no_data_page=1
    +no_branch_jump=1
    +boot_mode=m
  iterations: 2
  gen_test: riscv_instr_base_test
  rtl_test: core_base_test
```

using this config file we can tune the instructions being generated and aim for maximum converage of the present architecture (rv32i) to ensure maximum bug testing of the given model

Details of the coverage instruction are given in the directory 
with the achived coverage for rv32i 


## RV32I ISA Coverage
to generate  coverage of the extent to which instructions are being generated

Coverage represents the percentage of functionality that is being tested by the random instruction generator

So Coverage is like a proof weather the instruction generator touches all the functionality of the procesor 

ideally coverage must be 100 percent which proves that all functionalty is being touched by the instruction generator


**to generate converage report**
```
cov --dir out/spike_sim/ --simulator=pyflow --enable_visualization
```

**to view the percentage:**
```
pyucis report cov_out_2023-07-31/cov_db.xml 
```









