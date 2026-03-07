module one_bit_fa(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  assign sum=a^b^cin;
  assign cout=a&b|b&cin|cin&a;
endmodule

module four_bit_fa(a,b,cin,sum,cout);
  input [3:0]a,b;
  input cin;
  output [3:0]sum;
  output cout;
  wire [4:0]carry;
  assign carry[0]=cin;
  assign cout=carry[4];

  genvar i;
  generate 
    for(i=0;i<4;i=i+1)begin
      one_bit_fa f1(.a(a[i]),b(b[i]),cin(carry[i]),.sum(sum[i]),.cout(carry[i+1]));
    end
  endgenerate
endmodule

module tb;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire cout;
  four_bit_fa dut(a,b,cin,sum,cout);
    initial begin
      repeat(5)begin
        {a,b,cin}=$random;
        #1;
        $display("a=%b  b=%b  cin=%b  sum=%b   cout=%b",a,b,cin,sum,cout);
      end
    end
endmodule
/*
OUTPUT
# a=1001  b=0010  cin=0  sum=1011   cout=0
# a=0100  b=0000  cin=1  sum=0101   cout=0
# a=0000  b=0100  cin=1  sum=0101   cout=0
# a=0011  b=0001  cin=1  sum=0101   cout=0
# a=1000  b=0110  cin=1  sum=1111   cout=0
*/
      
