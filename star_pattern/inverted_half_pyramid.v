module tb;
  integer i,j;
  //integer n=5;
    initial begin
      for(i=5;i>=1;i=i-1)begin
        for(j=1;j<=i;j=j+1)
          $write("*");
          $display();
      end
    end
endmodule

/*
***** 
 **** 
  *** 
   ** 
    * 
*/
