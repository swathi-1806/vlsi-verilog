module half_adder(a,b,sum,carry);
input a,b;
output sum,carry;
xor g1(sum,a,b);
and g2(carry,a,b);
endmodule

module full_adder(a,b,cin,sum,carry);
input a,b,cin;
output sum,carry;
half_adder u1(.a(a),.b(b),.sum(w1),.carry(w2));
half_adder u2(.a(a),.b(b),.sum(sum),.carry(w3));
or g1(carry,w2,w3);
endmodule

//testbench code
module top;
reg a,b,cin;
wire sum,carry;

full_adder dut(a,b,cin,sum,carry);
initial begin
repeat(10)begin
{a,b,cin}=$random;
#1;
$display("a=%b b=%b cin=%b||sum=%b carry=%b",a,b,cin,sum,carry);
end
end
endmodule


/*
output

# a=1 b=0 cin=0||sum=1 carry=0
# a=0 b=0 cin=1||sum=0 carry=0
# a=0 b=0 cin=1||sum=0 carry=0
# a=0 b=1 cin=1||sum=1 carry=0
# a=1 b=0 cin=1||sum=1 carry=0
# a=1 b=0 cin=1||sum=1 carry=0
# a=1 b=0 cin=1||sum=1 carry=0
# a=0 b=1 cin=0||sum=1 carry=0
# a=0 b=0 cin=1||sum=0 carry=0
# a=1 b=0 cin=1||sum=1 carry=0
*/


