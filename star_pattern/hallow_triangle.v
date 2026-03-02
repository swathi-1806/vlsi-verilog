module tb;
  integer i,j;
  initial begin
    for(i=1;i<=5;i=i+1)begin
      for(j=1;j<=i;j=j+1)begin
        if(i==1||i==5||j==1||i==j)
          $write("* ;
          else
            $write("  ");
      end
      $write("\n");
    end
  end
endmodule

/*
 * 
 * * 
 *   * 
 *     * 
 * * * * * 
*/
