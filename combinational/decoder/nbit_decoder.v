

module nbit_decoder(a,y);
parameter N=3;
input [N-1:0]a;
output reg [2**N-1:0]y;
always@(*)begin
y=1<<a;

//y=8'b1000_0000>>a;
end
endmodule


module top;
parameter N=3;
reg [N-1:0]a;
wire [2**N-1:0]y;
nbit_decoder #(.N(N)) dut(a,y);
	initial begin
	
		repeat(10)begin
		a=$random;
		#1;
		$display("\t--> a=%b  y=%b",a,y);
		end
	end
endmodule

/*
--------[y=1<<a]-----------
	--> a=100  y=00010000
# 	--> a=001  y=00000010
# 	--> a=001  y=00000010
# 	--> a=011  y=00001000
# 	--> a=101  y=00100000
# 	--> a=101  y=00100000
# 	--> a=101  y=00100000
# 	--> a=010  y=00000100
# 	--> a=001  y=00000010
# 	--> a=101  y=00100000

-----[y=n'b1000>>a...]-----
	--> a=100  y=00001000
# 	--> a=001  y=01000000
# 	--> a=001  y=01000000
# 	--> a=011  y=00010000
# 	--> a=101  y=00000100
# 	--> a=101  y=00000100
# 	--> a=101  y=00000100
# 	--> a=010  y=00100000
# 	--> a=001  y=01000000
# 	--> a=101  y=00000100
----------------------------
*/


//module nbit_decoder(a,y);
//parameter N=3;
//input [N-1:0]a;
//output reg [2**N-1:0]y;
//always@(*)begin
//y=0;
//	case(a)
//	0:y=1<<((1<<N)-1);
//	default:y=(1<<((1<<N)-1-a));
//	endcase
//end
//endmodule
//
//
//module top;
//parameter N=3;
//reg [N-1:0]a;
//wire [2**N-1:0]y;
//nbit_decoder #(.N(N)) dut(a,y);
//	initial begin	
//		for(a=0;a<(1<<N);a=a+1)
//		#5;
//		$display("\t--> a=%b  y=%b",a,y);
//	end
//endmodule

