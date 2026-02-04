module encodere_42(a,y);
input [3:0]a;
output reg [1:0]y;

always@(*)begin
	case(a)
		4'b1000 : y=2'b00;
		4'b0100 : y=2'b01;
		4'b0010 : y=2'b10;
		4'b0001 : y=2'b11;
		default y=2'bxx;
	endcase
end
endmodule


module top;
reg [3:0]a;
wire [1:0]y;

encodere_42 dut(a,y);
	initial begin
		repeat(10)begin
		a=$random;
		#1;
		$display("\t--> a=%b y=%b",a,y);
		end
	end
endmodule


/*
	--> a=0100 y=01
# 	--> a=0001 y=11
# 	--> a=1001 y=xx
# 	--> a=0011 y=xx
# 	--> a=1101 y=xx
# 	--> a=1101 y=xx
# 	--> a=0101 y=xx
# 	--> a=0010 y=10
# 	--> a=0001 y=11
# 	--> a=1101 y=xx
*/



