// implementation of fulladder in a behavioural model

/*module full_adder(a,b,cin,sum,carry);
input a,b,cin;
output reg sum,carry;

always@(*)begin
sum=a^b^cin;
carry=(a&b|b&cin|a&cin);
end
endmodule


//implementation of full adder using dataflow model

module full_adder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
assign sum=a^b^cin;
assign carry=(a&b|b&cin|a&cin);
endmodule*/


//implementation of full adder using structural model
module full_adder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
wire w1,w2,w3,w4;
xor g1(w1,a,b);
xor g2(sum,w1,cin);
and g3(w2,a,b);
and g4(w3,b,cin);
and g5(w4,a,cin);
or g6(carry,w2,w1,w3);
endmodule



