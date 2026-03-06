# What is genvar in Verilog?

* genvar is a special variable used only during elaboration time (before simulation).
* It does not create hardware registers.
* It is used only to control generate loops.
* It helps to replicate hardware structures.

Example idea:<br>
If you want 8 AND gates, instead of writing 8 times, you can generate them using genvar.

### Basic Syntax
i is evaluated at compile time, not during simulation.
