module tb;
  integer i,j;
  int num;
    initial begin
      num=1;
      for(i=1;i<=10;i=i+1)begin
        for(j=1;j<=i;j=j+1)begin
          $write("%d",num);
        end
        $write("\n");
        num=num+1;
      end
endmodule
