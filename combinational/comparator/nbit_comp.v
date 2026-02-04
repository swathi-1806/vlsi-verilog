
//implementation of nbit comparator
module comp_nbit(a,b,agb,alb,aeb);
parameter N=5;
input [N-1:0]a,b;
output agb,alb,aeb;

assign agb=a>b;
assign alb=a<b;
assign aeb=(a==b);
endmodule


module top;
parameter N=5;
reg [N-1:0]a,b;
wire agb,alb,aeb;
comp_nbit #(.N(N)) dut(a,b,agb,alb,aeb);
	initial begin
		repeat(20)begin
		{a,b}=$random;
		#1;
		$display("\t--> a=%b  b=%b  agb=%b  alb=%b  aeb=%b",a,b,agb,alb,aeb);
		end
	end
endmodule


/*
output
	--> a =01001  b=00100  agb=1  alb=0  aeb=0
 	--> a=10100  b=00001  agb=1  alb=0  aeb=0
 	--> a=10000  b=01001  agb=1  alb=0  aeb=0
 	--> a=10011  b=00011  agb=1  alb=0  aeb=0
 	--> a=11000  b=01101  agb=1  alb=0  aeb=0
 	--> a=01100  b=01101  agb=0  alb=1  aeb=0
 	--> a=00011  b=00101  agb=0  alb=1  aeb=0
 	--> a=10000  b=10010  agb=0  alb=1  aeb=0
 	--> a=11000  b=00001  agb=1  alb=0  aeb=0
 	--> a=01000  b=01101  agb=0  alb=1  aeb=0
 	--> a=01011  b=10110  agb=0  alb=1  aeb=0
 	--> a=01001  b=11101  agb=0  alb=1  aeb=0
 	--> a=11111  b=01101  agb=1  alb=0  aeb=0
 	--> a=11100  b=01100  agb=1  alb=0  aeb=0
 	--> a=01111  b=11001  agb=0  alb=1  aeb=0
 	--> a=00110  b=00110  agb=0  alb=0  aeb=1
 	--> a=00110  b=00101  agb=1  alb=0  aeb=0
 	--> a=10101  b=01010  agb=1  alb=0  aeb=0
 	--> a=11111  b=00101  agb=1  alb=0  aeb=0
 	--> a=10011  b=10111  agb=0  alb=1  aeb=0
*/




