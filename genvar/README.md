### What is genvar in Verilog?

* genvar is a special variable used only during elaboration time (before simulation).
* It does not create hardware registers.
* It is used only to control generate loops.
* It helps to replicate hardware structures.

Example idea:<br>
If you want 8 AND gates, instead of writing 8 times, you can generate them using genvar.

## 1. Basic Syntax of genvar
```
genvar i;
generate
   for(i = 0; i < N; i = i + 1) begin : block_name
       // hardware instantiation
   end
endgenerate
```
## Explanation
* genvar i; → declares a generate variable
* generate ... endgenerate → block used for generating hardware
* for loop → repeats hardware creation
* block_name → name_
