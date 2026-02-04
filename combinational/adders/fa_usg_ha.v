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

