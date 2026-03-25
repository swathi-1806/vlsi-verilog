module tb;
  integer num,i,j;
  
  	initial begin
      repeat(5)begin
            num=$urandom_range(100,500);
            $display("num=%0d",num);
              if(num%2==0)begin
                  $display("it is a even nuber");
                  $display("--------------------");
              end
              else begin
                  $display("it is a odd number");
                  $display("--------------------");
        
              end
        end
     end
endmodule

/*
output:

# num=203
# it is a odd number
# --------------------
# num=108
# it is a even nuber
# --------------------
# num=492
# it is a even nuber
# --------------------
# num=473
# it is a odd number
# --------------------
# num=194
# it is a even nuber
# --------------------
*/
