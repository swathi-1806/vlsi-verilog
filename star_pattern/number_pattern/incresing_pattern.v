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
/*
OUTPUT:-
1
2          2
3          3          3
4          4          4          4
5          5          5          5          5
6          6          6          6          6          6
7          7          7          7          7          7          7
8          8          8          8          8          8          8          8
9          9          9          9          9          9          9          9          9
10         10         10         10         10         10         10         10         10         10
*/
      
/*
inverse_incresing_symmetric_pattern:-

module tb;
  integer i,j;
  int num;
    initial begin
      num=1;
      for(i=1;i<=10;i=i+1)begin
        for(j=10;j>=i;j=j-1)begin
          $write("%d",num);
        end
        $write("\n");
        num=num+1;
      end
    end
endmodule
--------------------------------------------------------------------------------------------------------------------------------------------------------
           1          1          1          1          1          1          1          1          1          1
           2          2          2          2          2          2          2          2          2
           3          3          3          3          3          3          3          3
           4          4          4          4          4          4          4
           5          5          5          5          5          5
           6          6          6          6          6
           7          7          7          7
           8          8          8
           9          9
          10
---------------------------------------------------------------------------------------------------------------------------------------------------------
*/
