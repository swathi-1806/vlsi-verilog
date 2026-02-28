/*
Rows → outer loop
Columns → inner loop
Condition → when to print "*" and when to print space
-------------------------------------------
for(i = 1 to rows)
{
    for(j = 1 to columns)
    {
        print something
    }
    go to next line
}
----------------
Logic:
5 rows
5 columns
Always print *
----------------
------------------------------------------
*/

module tb;
  integer i,j;
  integer n=5;
    initial begin
      for(i=1;i<=n;i=i+1)begin
        for(j=1;j<=n;j=j+1)
          $write("*");
          $display();
      end
    end
endmodule

/*
 output
 ****** 
 ****** 
 ****** 
 ****** 
 ****** 
*/
