module tb;
  integer i,j,k;
  initial begin
    for(i=5;i>=1;i=i-1)begin
      for(j=1;j<=5-i;j=j+1)begin
        $write(" ");
      end
      for(k=1;k<=(2*i-1);k=k+1)begin
        $write(" *");
      end
      $write("\n");
    end
  end
endmodule

/*
 * * * * * * * * *
   * * * * * * *
    * * * * *
     * * *
       *
*/
