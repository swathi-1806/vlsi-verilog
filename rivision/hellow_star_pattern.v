module tb;
  integer i,j;
  integer n;
  initial begin
    for(i=1;i<=5;i=i+1)begin
      for(j=1;j<=5;j=j+1)begin
        if(i==1||i==5||j==1||j==5)
          $write("*");
         else
           $write(" ");
      end
      $display("");
    end
  end
endmodule
/*
another method:=
------------------------------------
module tb;
  integer i,j;
  integer n;
  initial begin
    $display("*****");
    for(i=1;i<4;i=i+1)begin
      for(j=1;j<2;j=j+1)begin
        $write("*   *");
      end
      $display("");
    end
      $display("*****");
  end
endmodule
------------------------------------
*/

/*
# *****
# *   *
# *   *
# *   *
# *****
*/
