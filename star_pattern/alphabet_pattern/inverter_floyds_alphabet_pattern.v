module tb;
  integer i,j;
  reg [7:0]ch;
    initial begin
      ch="A";
      for(i=1;i<=6;i=i+1)begin
        for(j=6;j>=i;j=j-1)begin
          $write("%s",ch);
          ch=ch+1;
        end
        $write("\n");
      end
    end
endmodule

/*
OUTPUT:-

ABCDEF
GHIJK
LMNO
PQR
ST
U

*/

/*
Another model:-

module tb;
  integer i,j;
  reg [7:0]ch;
    initial begin
      ch="U";
      for(i=1;i<=6;i=i+1)begin
        for(j=6;j>=i;j=j-1)begin
          $write("%s",ch);
          ch=ch-1;
        end
        $write("\n");
      end
    end
endmodule
--------------------------------------------
 UTSRQP
 ONMLK
 JIHG
 FED
 CB
 A
--------------------------------------------

*/
