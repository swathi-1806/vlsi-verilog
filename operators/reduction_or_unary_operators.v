   module reduction_operators();
   
   initial begin
  
     // Bit Wise AND reduction
     $display("---Bit Wise AND reduction---");
     $display (" &  4'b1001 = %b", (&  4'b1001));
     $display (" &  4'bx111 = %b", (&  4'bx111));
     $display (" &  4'bz111 = %b", (&  4'bz111));
     
     
  
     // Bit Wise NAND reduction
      $display("--- Bit Wise NAND reduction---");
     $display (" ~& 4'b1001 = %b", (~& 4'b1001));
     $display (" ~& 4'bx001 = %b", (~& 4'bx001));
     $display (" ~& 4'bz001 = %b", (~& 4'bz001));
  
     // Bit Wise OR reduction
      $display("---Bit Wise OR reduction---");
     $display (" |  4'b1001 = %b", (|  4'b1001));
     $display (" |  4'bx000 = %b", (|  4'bx000));
     $display (" |  4'bz000 = %b", (|  4'bz000));
  
     // Bit Wise NOR reduction
      $display("---Bit Wise NOR reduction---");
     $display (" ~| 4'b1001 = %b", (~| 4'b1001));
     $display (" ~| 4'bx001 = %b", (~| 4'bx001));
     $display (" ~| 4'bz001 = %b", (~| 4'bz001));
  
     // Bit Wise XOR reduction
     $display("---Bit Wise XOR reduction---");
     $display (" ^  4'b1001 = %b", (^  4'b1001));
     $display (" ^  4'bx001 = %b", (^  4'bx001));
     $display (" ^  4'bz001 = %b", (^  4'bz001));
  
     // Bit Wise XNOR
      $display("---Bit Wise XNOR---");
     $display (" ~^ 4'b1001 = %b", (~^ 4'b1001));
     $display (" ~^ 4'bx001 = %b", (~^ 4'bx001));
     $display (" ~^ 4'bz001 = %b", (~^ 4'bz001));
      #10  $finish;
   end
 endmodule
/*
OUTPUT:-
# ---Bit Wise AND reduction---
#  &  4'b1001 = 0
#  &  4'bx111 = x
#  &  4'bz111 = x
# --- Bit Wise NAND reduction---
#  ~& 4'b1001 = 1
#  ~& 4'bx001 = 1
#  ~& 4'bz001 = 1
# ---Bit Wise OR reduction---
#  |  4'b1001 = 1
#  |  4'bx000 = x
#  |  4'bz000 = x
# ---Bit Wise NOR reduction---
#  ~| 4'b1001 = 0
#  ~| 4'bx001 = 0
#  ~| 4'bz001 = 0
# ---Bit Wise XOR reduction---
#  ^  4'b1001 = 0
#  ^  4'bx001 = x
#  ^  4'bz001 = x
# ---Bit Wise XNOR---
#  ~^ 4'b1001 = 1
#  ~^ 4'bx001 = x
#  ~^ 4'bz001 = x
*/
