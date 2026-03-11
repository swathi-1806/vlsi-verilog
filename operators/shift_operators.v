   module shift_operators();
   
   initial begin
     // Left Shift
     $display("----------Left Shift-----------");
     $display (" 4'b1001 << 1 = %b", (4'b1001 << 1));
     $display (" 4'b10x1 << 1 = %b", (4'b10x1 << 1));
     $display (" 4'b10z1 << 1 = %b", (4'b10z1 << 1));
     // Right Shift
     $display("----------right_shift-----------");
     $display (" 4'b1001 >> 1 = %b", (4'b1001 >> 1));
     $display (" 4'b10x1 >> 1 = %b", (4'b10x1 >> 1));
     $display (" 4'b10z1 >> 1 = %b", (4'b10z1 >> 1));
      #10  $finish;
   end
   endmodule

/*
OUTPUT
# ----------Left Shift-----------
#  4'b1001 << 1 = 0010
#  4'b10x1 << 1 = 0x10
#  4'b10z1 << 1 = 0z10
# ----------right_shift-----------
#  4'b1001 >> 1 = 0100
#  4'b10x1 >> 1 = 010x
#  4'b10z1 >> 1 = 010z
*/
