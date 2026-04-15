module tb;
  integer i,j;
  integer n;
  	initial begin
      for(i=1;i<=5;i=i+1)begin
        for(j=1;j<=5;j=j+1)begin
          $write("%0d",j);
        end
        $display("");
      end
    end
endmodule

/*
output:=
# 12345
# 12345
# 12345
# 12345
# 12345
*/
