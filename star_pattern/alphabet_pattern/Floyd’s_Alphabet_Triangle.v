/*
Logic:-

Outer loop → controls rows (i)
Inner loop → prints i characters
One variable ch starts from "A"
After printing each character → increment ch
So alphabets continue continuously
*/
module tb;
integer i,j;
reg[7:0]ch;
  initial begin
    ch="A";
    for(i=1;i<=6;i=i+1)begin
      for(j=1;j<=i;j=j+1)begin
        $write("%c",ch);
        ch=ch+1;
      end
       $write("\n");
    end
  end
endmodule

/*
OUTPUT

 A
 BC
 DEF
 GHIJ
 KLMNO
 PQRSTU

*/
