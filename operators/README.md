# operators in verilog
## Arithmetic Operators
* Binary: +, -, *, /, % (the modulus operator)
* Unary: +, - (This is used to specify the sign)
* Integer division truncates any fractional part
* The result of a modulus operation takes the sign of the first operand
* If any operand bit value is the unknown value x, then the entire result value is x
* Register data types are used as unsigned values (Negative numbers are stored in two's complement form)
 	
  ```
   module arithmetic_operators();
   
   initial begin
     $display (" 5  +  10 = %d", 5  + 10);
     $display (" 5  -  10 = %d", 5  - 10);
     $display (" 10 -  5  = %d", 10 - 5);
     $display (" 10 *  5  = %d", 10 * 5);
     $display (" 10 /  5  = %d", 10 / 5);
     $display (" 10 /  -5 = %d", 10 / -5);
    $display (" 10 %s  3  = %d","%", 10 % 3);
    $display (" +5       = %d", +5);
    $display (" -5       = %d", -5);
     #10  $finish;
  end
  endmodule
  ```
  ```
  output
  5  +  10 =  15
  5  -  10 =  -5
  10 -  5  =   5
  10 *  5  =  50
  10 /  5  =  2
  10 /  -5 = -2
  10 %  3  =   1
  +5       =  5
  -5       =  -5
  ```
  
---
## relational operatprs
a < b
a less than b

a > b
a greater than b

a <= b
a less than or equal to b

a >= b
a greater than or equal to b

The result is a scalar value (example a < b)
* 0 if the relation is false (a is bigger then b)
* 1 if the relation is true ( a is smaller then b)
* x if any of the operands has unknown x bits (if a or b contains X)

```
   module relational_operators();
   
   initial begin
     $display (" 5     <=  10 = %b", (5     <= 10));
     $display (" 5     >=  10 = %b", (5     >= 10));
     $display (" 1'bx  <=  10 = %b", (1'bx  <= 10));
     $display (" 1'bz  <=  10 = %b", (1'bz  <= 10));  
      #10  $finish;
   end
   endmodule
```
```
output
  5     <=  10 = 1
  5     >=  10 = 0
  1'bx  <=  10 = x
  1'bz  <=  10 = x
``` 	 	

---
## equality operator

a === b
a equal to b, including x and z (Case equality)

a !== b
a not equal to b, including x and z (Case inequality)

a == b
a equal to b, result may be unknown (logical equality)

a != b
a not equal to b, result may be unknown (logical equality)

* Operands are compared bit by bit, with zero filling if the two operands do not have the same length
Result is 0 (false) or 1 (true)
* For the == and != operators, the result is x, if either operand contains an x or a z
* For the === and !== operators, bits with x and z are included in the comparison and must match for the result to be true
 	 	
Note : The result is always 0 or 1.

```
   module equality_operators();
   
   initial begin
    // Case Equality
     $display (" 4'bx001 ===  4'bx001 = %b", (4'bx001 ===  4'bx001));
     $display (" 4'bx0x1 ===  4'bx001 = %b", (4'bx0x1 ===  4'bx001));
     $display (" 4'bz0x1 ===  4'bz0x1 = %b", (4'bz0x1 ===  4'bz0x1));
     $display (" 4'bz0x1 ===  4'bz001 = %b", (4'bz0x1 ===  4'bz001));
     // Case Inequality
    $display (" 4'bx0x1 !==  4'bx001 = %b", (4'bx0x1  ! ==  4'bx001));
    $display (" 4'bz0x1 !==  4'bz001 = %b", (4'bz0x1  ! ==  4'bz001));  
    // Logical Equality
    $display (" 5       ==   10      = %b", (5       ==   10));
    $display (" 5       ==   5       = %b", (5       ==   5));
    // Logical Inequality
    $display (" 5       !=   5       = %b", (5        ! =   5));
    $display (" 5       !=   6       = %b", (5        ! =   6));
     #10  $finish;
  end  
  endmodule
```
```
output

  4'bx001 ===  4'bx001 = 1
  4'bx0x1 ===  4'bx001 = 0
  4'bz0x1 ===  4'bz0x1 = 1
  4'bz0x1 ===  4'bz001 = 0
  4'bx0x1 !==  4'bx001 = 1
  4'bz0x1 !==  4'bz001 = 1
  5       ==   10      = 0
  5       ==   5       = 1
  5       !=   5       = 0
  5       !=   6       = 1
```
 	 	
---

## logical operator

!
logic negation

&&
logical and

||
logical or

* Expressions connected by && and || are evaluated from left to right
*Evaluation stops as soon as the result is known
* The result is a scalar value:
    * 0 if the relation is false
    * 1 if the relation is true
    * x if any of the operands has x (unknown) bits
 	 	
```
   module logical_operators();
   
   initial begin
     // Logical AND
     $display ("1'b1 && 1'b1 = %b", (1'b1 && 1'b1));
     $display ("1'b1 && 1'b0 = %b", (1'b1 && 1'b0));
     $display ("1'b1 && 1'bx = %b", (1'b1 && 1'bx));
     // Logical OR
     $display ("1'b1 || 1'b0 = %b", (1'b1 || 1'b0));
    $display ("1'b0 || 1'b0 = %b", (1'b0 || 1'b0));
    $display ("1'b0 || 1'bx = %b", (1'b0 || 1'bx));
    // Logical Negation
    $display ("! 1'b1       = %b", ( !   1'b1));
    $display ("! 1'b0       = %b", ( !   1'b0));
     #10  $finish;
  end 
  endmodule
```
```
output
 1'b1 && 1'b1 = 1
 1'b1 && 1'b0 = 0
 1'b1 && 1'bx = x
 1'b1 || 1'b0 = 1
 1'b0 || 1'b0 = 0
 1'b0 || 1'bx = x
 ! 1'b1       = 0
 ! 1'b0       = 1
``` 	 	
---
## bitwise operators
* Bitwise operators perform a bit wise operation on two operands. 
* They take each bit in one operand and perform the operation with the corresponding bit in the other operand.
* If one operand is shorter than the other, it will be extended on the left side with zeroes to match the length of the longer operand.

~
negation

&
and

|
inclusive or

^
exclusive or

^~ or ~^
exclusive nor (equivalence)

Computations include unknown bits, in the following way:
* ~x = x
* 0&x = 0
* 1&x = x&x = x
* 1|x = 1
* 0|x = x|x = x
* 0^x = 1^x = x^x = x
* 0^~x = 1^~x = x^~x = x
* When operands are of unequal bit length, the shorter operand is zero-filled in the most significant bit positions.
 	 	
```
   module bitwise_operators();
   initial begin

     // Bit Wise Negation
     $display (" ~4'b0001           = %b", (~4'b0001));
     $display (" ~4'bx001           = %b", (~4'bx001));
     $display (" ~4'bz001           = %b", (~4'bz001));

     // Bit Wise AND
     $display (" 4'b0001 &  4'b1001 = %b", (4'b0001 &  4'b1001));
     $display (" 4'b1001 &  4'bx001 = %b", (4'b1001 &  4'bx001));
     $display (" 4'b1001 &  4'bz001 = %b", (4'b1001 &  4'bz001));

     // Bit Wise OR
     $display (" 4'b0001 |  4'b1001 = %b", (4'b0001 |  4'b1001));
     $display (" 4'b0001 |  4'bx001 = %b", (4'b0001 |  4'bx001));
     $display (" 4'b0001 |  4'bz001 = %b", (4'b0001 |  4'bz001));

     // Bit Wise XOR
     $display (" 4'b0001 ^  4'b1001 = %b", (4'b0001 ^  4'b1001));
     $display (" 4'b0001 ^  4'bx001 = %b", (4'b0001 ^  4'bx001));
     $display (" 4'b0001 ^  4'bz001 = %b", (4'b0001 ^  4'bz001));

     // Bit Wise XNOR
     $display (" 4'b0001 ~^ 4'b1001 = %b", (4'b0001 ~^ 4'b1001));
     $display (" 4'b0001 ~^ 4'bx001 = %b", (4'b0001 ~^ 4'bx001));
     $display (" 4'b0001 ~^ 4'bz001 = %b", (4'b0001 ~^ 4'bz001));
      #10  $finish;
   end
  endmodule
```
```
output
  ~4'b0001           = 1110
  ~4'bx001           = x110
  ~4'bz001           = x110
  4'b0001 &  4'b1001 = 0001
  4'b1001 &  4'bx001 = x001
  4'b1001 &  4'bz001 = x001
  4'b0001 |  4'b1001 = 1001
  4'b0001 |  4'bx001 = x001
  4'b0001 |  4'bz001 = x001
  4'b0001 ^  4'b1001 = 1000
  4'b0001 ^  4'bx001 = x000
  4'b0001 ^  4'bz001 = x000
  4'b0001 ~^ 4'b1001 = 0111
  4'b0001 ~^ 4'bx001 = x111
  4'b0001 ~^ 4'bz001 = x111
```
