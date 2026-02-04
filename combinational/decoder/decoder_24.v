module decoder_24(a,y);
input [1:0]a;
output reg [3:0]y;
always@(*)begin
	case(a)
	2'b00:y=4'b1000;
	2'b01:y=4'b0100;
	2'b10:y=4'b0010;
	2'b11:y=4'b0001;
	default y=4'bxxxx;
	endcase
end
endmodule


module top;
reg [1:0]a;
wire [3:0]y;
decoder_24 dut(a,y);
	initial begin
		repeat(10)begin
		a=$random;
		#1;
		$display("\t--> a=%b  y=%b",a,y);
		end
	end
endmodule

/*
	--> a=00  y=1000
# 	--> a=01  y=0100
# 	--> a=01  y=0100
# 	--> a=11  y=0001
# 	--> a=01  y=0100
# 	--> a=01  y=0100
# 	--> a=01  y=0100
# 	--> a=10  y=0010
# 	--> a=01  y=0100
# 	--> a=01  y=0100

*/
