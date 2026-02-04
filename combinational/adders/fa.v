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

//testbench code
module top;
reg a,b,cin;
wire sum,carry;
full_adder dut(a,b,cin,sum,carry);
    initial begin
	$monitor("%0t A=%b b=%b cin=%b||sum=%b carry=%b",$time,a,b,cin,sum,carry);
       repeat(10)begin
       {a,b,cin}=$random;
       #1;
      // $display("A=%b b=%b cin=%b||sum=%b carry=%b",a,b,cin,sum,carry);
	  end
    end
endmodule

/*
output for full_adder using $monitor

 0 A=1 b=0 cin=0||sum=1 carry=1
 1 A=0 b=0 cin=1||sum=1 carry=0
 3 A=0 b=1 cin=1||sum=0 carry=1
 4 A=1 b=0 cin=1||sum=0 carry=1
 7 A=0 b=1 cin=0||sum=1 carry=1
 8 A=0 b=0 cin=1||sum=1 carry=0
 9 A=1 b=0 cin=1||sum=0 carry=1
*/




