  module relational_operators();
   integer a,b;
   initial begin
     a=5;
     b=10;
     $display ("a is less  than  or  equal to b = %b", (a <= b));
     $display ("a is greater than or equal to b = %b", (a>= b));
     $display (" 1'bx  <=  10 = %b", (1'bx  <= 10));
     $display (" 1'bz  <=  10 = %b", (1'bz  <= 10)); 
     $display (" 1'bx  =>  10 = %b", (1'bx  <= 10));
     $display (" 1'bz  =>  10 = %b", (1'bz  <= 10)); 
      #10  $finish;
   end
   endmodule

/*
OUTPUT:=
# a is less  than  or  equal to b = 1
# a is greater than or equal to b = 0
#  1'bx  <=  10 = x
#  1'bz  <=  10 = x
#  1'bx  =>  10 = x
#  1'bz  =>  10 = x
*/
