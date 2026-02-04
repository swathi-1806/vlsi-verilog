module pre_enc_83(a,y);
input [7:0]a;
output reg [2:0]y;
always@(*)begin
	casex(a)
		8'b1000_0000:y=3'b000;
		8'bx100_0000:y=3'b001;
		8'bxx10_0000:y=3'b010;
		8'bxxx1_0000:y=3'b011;
		8'bxxxx_1000:y=3'b100;
		8'bxxxx_x100:y=3'b101;
		8'bxxxx_xx10:y=3'b110;
		8'bxxxx_xxx1:y=3'b111;
		default      y=3'bxxx;
	endcase
end
endmodule


module top;
reg [7:0]a;
wire [2:0]y;
//integer apple;
pre_enc_83 dut(a,y);
//initial begin
//apple=1804;
//repeat(30)begin
//{a}=$random(apple);
		initial begin
		a=8'b10000000;
		#1;
		$display("\t--> a=%b y=%b",a,y);
	
		a=8'b00000001;
		#1;
		$display("\t--> a=%b y=%b",a,y);
	
		a=8'b00100000;
		#1;
		$display("\t--> a=%b y=%b",a,y);
		
		a=8'b00010000;
		#1;
		$display("\t--> a=%b y=%b",a,y);
	
		a=8'b00001000;
		#1;
		$display("\t--> a=%b y=%b",a,y);
		
		a=8'b11111111;
		#1;
		$display("\t--> a=%b y=%b",a,y);
	
		a=8'b01100010;
		#1;
		$display("\t--> a=%b y=%b",a,y);
	
		a=8'b10001010;
		#1;
		$display("\t--> a=%b y=%b",a,y);

		a=8'b00000000;
		#1;
		$display("\t--> a=%b y=%b",a,y);


		end
endmodule

/*
	--> a=10000000 y=000
# 	--> a=00000001 y=111
# 	--> a=00100000 y=010
# 	--> a=00010000 y=011
# 	--> a=00001000 y=100
# 	--> a=11111111 y=111
# 	--> a=01100010 y=110
# 	--> a=10001010 y=110
# 	--> a=00000000 y=xxx
*/
