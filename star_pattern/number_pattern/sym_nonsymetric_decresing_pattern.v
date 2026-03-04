
module tb;
  integer i,j;
  int num;
    initial begin
      num=10;
      for(i=1;i<=10;i=i+1)begin
        for(j=1;j<=i;j=j+1)begin
          $write("%d",num);
        end
        $write("\n");
        num=num-1;
      end
    end
endmodule
/*
OUTPUT:-
          10
            9          9
           8          8          8
           7          7          7          7
           6          6          6          6          6
           5          5          5          5          5          5
           4          4          4          4          4          4          4
           3          3          3          3          3          3          3          3
           2          2          2          2          2          2          2          2          2
           1          1          1          1          1          1          1          1          1          1
*/
/*

*/
