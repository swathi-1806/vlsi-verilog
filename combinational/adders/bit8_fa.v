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

