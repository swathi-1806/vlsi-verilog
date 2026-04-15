module tb;
  integer i,j;
  integer n;
  	initial begin
      for(i=1;i<=5;i=i+1)begin
        for(j=1;j<=i;j=j+1)begin
          $write("%0d",j);
        end
        $display("");
      end
    end
endmodule

/*
output:=
# 1
# 12
# 123
# 1234
# 12345
*/
