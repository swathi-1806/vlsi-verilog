module pre_enc_42(a,y);
input [3:0]a;
output reg [1:0]y;

always@(*)begin
	casex(a)
		4'b1000 : y=2'b00;
		4'bx100 : y=2'b01;
		4'bxx10 : y=2'b10;
		4'bxxx1 : y=2'b11;
		default y=2'bxx;
	endcase
end
endmodule


module top;
reg [3:0]a;
wire [1:0]y;

pre_enc_42 dut(a,y);
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
# 	--> a=1001 y=11
# 	--> a=0011 y=11
# 	--> a=1101 y=11
# 	--> a=1101 y=11
# 	--> a=0101 y=11
# 	--> a=0010 y=10
# 	--> a=0001 y=11
# 	--> a=1101 y=11
*/
