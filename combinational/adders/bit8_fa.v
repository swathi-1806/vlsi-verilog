//implementation of 8-bit full_adder using 1-bit full_adder
`include "fa_usg_ha.v"
module bit8_fa(a,b,cin,sum,carry);
input [7:0]a,b;
input cin;
output [7:0]sum;
output carry;

full_adder u1(.a(a[0]),.b(b[0]),.cin(1'b0),.sum(sum[0]),.carry(w0));
full_adder u2(.a(a[1]),.b(b[1]),.cin(w1),.sum(sum[1]),.carry(w1));
full_adder u3(.a(a[2]),.b(b[2]),.cin(w2),.sum(sum[2]),.carry(w2));
full_adder u4(.a(a[3]),.b(b[3]),.cin(w3),.sum(sum[3]),.carry(w3));
full_adder u5(.a(a[4]),.b(b[4]),.cin(w4),.sum(sum[4]),.carry(w4));
full_adder u6(.a(a[5]),.b(b[5]),.cin(w5),.sum(sum[5]),.carry(w5));
full_adder u7(.a(a[6]),.b(b[6]),.cin(w6),.sum(sum[6]),.carry(w6));
full_adder u8(.a(a[7]),.b(b[7]),.cin(w7),.sum(sum[7]),.carry(carry));

endmodule


//testbench code
module top;
reg [7:0]a,b;
reg cin;
wire [7:0]sum;
wire carry;

bit8_fa dut(a,b,cin,sum,carry);
  initial begin
     repeat(30)begin
	 {a,b,cin}=$random;
	 #1;
	 $display("a=%b  b=%b  cin=%b ||sum=%b carry=%b",a,b,cin,sum,carry);
	 end
  end
 endmodule



 /*

 output

# a=10011010  b=10010010  cin=0 ||sum=00001000 carry=1
# a=10101111  b=01000000  cin=1 ||sum=11101111 carry=0
# a=01101011  b=00000100  cin=1 ||sum=01101111 carry=0
# a=00101011  b=00110001  cin=1 ||sum=00011010 carry=0
# a=10111101  b=10000110  cin=1 ||sum=00111011 carry=1
# a=11001100  b=11000110  cin=1 ||sum=00001010 carry=1
# a=01000010  b=00110010  cin=1 ||sum=01110000 carry=0
# a=10101001  b=00001001  cin=0 ||sum=10100000 carry=0
# a=11110001  b=10000000  cin=1 ||sum=01110001 carry=1
# a=11100110  b=10000110  cin=1 ||sum=01100000 carry=1
# a=11111000  b=10111011  cin=0 ||sum=01000011 carry=1
# a=11100110  b=10011110  cin=1 ||sum=01111000 carry=1
# a=00101011  b=11110110  cin=1 ||sum=11011101 carry=0
# a=11111011  b=11000110  cin=0 ||sum=00111101 carry=1
# a=11110100  b=11111100  cin=1 ||sum=00001000 carry=1
# a=10010010  b=01100011  cin=0 ||sum=11110001 carry=0
# a=11000010  b=01100010  cin=1 ||sum=10100000 carry=0
# a=11101001  b=01010101  cin=0 ||sum=10111100 carry=0
# a=11111011  b=11110010  cin=1 ||sum=00001001 carry=1
# a=00111001  b=00111011  cin=1 ||sum=00000010 carry=0
# a=01101011  b=00001001  cin=0 ||sum=01100010 carry=0
# a=01101101  b=11000111  cin=1 ||sum=10101010 carry=0
# a=00110100  b=11111001  cin=0 ||sum=11001101 carry=0
# a=01001011  b=01100111  cin=0 ||sum=00101100 carry=0
# a=00111101  b=01110100  cin=0 ||sum=01001001 carry=0
# a=00100111  b=01100010  cin=1 ||sum=01000101 carry=0
# a=00100100  b=10101110  cin=0 ||sum=10001010 carry=0
# a=00010100  b=01011110  cin=1 ||sum=01001010 carry=0
# a=10101100  b=00010110  cin=1 ||sum=10111010 carry=0
# a=10010011  b=00110010  cin=1 ||sum=10100001 carry=0
*/


