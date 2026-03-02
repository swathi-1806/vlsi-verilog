module tb;
  integer i,j;
  integer n=5;
    initial begin
      for(i=1;i<=n;i=i+1)begin
        for(j=1;j<=n;j=j+1)begin
          if(i==j||j==(n-i+1))
          $write("*");
          else
            $write("  ");
          end
        $write("\n");
         // $display();
      end
    end
endmodule

/*
output:-

 *      *
   *  *  
     *    
   *  *  
 *      *

*/
