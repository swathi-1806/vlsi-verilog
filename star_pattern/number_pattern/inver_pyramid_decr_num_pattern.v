module tb;
  integer i,j,k;
  int num;
    initial begin
      num=5;
      for(i=5;i>=1;i=i-1)begin
        for(j=1;j<=5-i;j=j+1)begin
          $write("  ");
        end
        for(k=1;k<=(2*i-1);k=k+1)begin
          $write("%0d ",num);
        end
        $write("\n");
        num=num-1;
      end
    end
endmodule

/*
OUTPUT:-

 5 5 5 5 5 5 5 5 5 
   4 4 4 4 4 4 4 
     3 3 3 3 3 
       2 2 2 
         1 
*/
