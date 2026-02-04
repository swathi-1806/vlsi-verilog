//implementation of 1x4_demux

/*//design code
module dmux_1x4(i,s,y);
input i;
input [1:0]s;
output reg [3:0]y;
always@(*)begin
y=0;
	case(s)
		2'b00:y[0]=i;
		2'b01:y[1]=i;
		2'b10:y[2]=i;
		2'b11:y[3]=i;
	endcase
end
endmodule


//testbench code
module top;

reg i;
reg [1:0]s;
wire [3:0]y;
dmux_1x4 dut (.i(i),.s(s),.y(y));
	initial begin
		repeat(10)begin
		{i,s}=$random;
		#1;
		$display("i=%b  s=%b  y=%b",i,s,y);
		end
	end
endmodule*/

/*
module dmux_1x4(i,s,y);
input i;
input [1:0]s;
output reg [3:0]y;

always@(*)begin
y=0;
	y[0]=(s==2'b00) ? i:1'b0;
	y[1]=(s==2'b01) ? i:1'b0;
	y[2]=(s==2'b10) ? i:1'b0;
	y[3]=(s==2'b11) ? i:1'b0;
end
endmodule


//testbench code
module top;

reg i;
reg [1:0]s;
wire [3:0]y;
dmux_1x4  dut (i,s,y);
	initial begin
		repeat(20)begin
		{i,s}=$random;
		#1;
		$display("i=%b  s=%b  y=%b",i,s,y);
		end
	end
endmodule
*/
		

module dmux_1x4(i,s,y);
input i;
input [1:0]s;
output reg [3:0]y;

always@(*)begin
y=0;
	if 		(s==2'b00) y[0]=i;
	else if (s==2'b01) y[1]=i;
	else if (s==2'b10) y[2]=i;
	else              y[3]=i;
end
endmodule
//testbench code
module top;

reg i;
reg [1:0]s;
wire [3:0]y;
dmux_1x4 dut (i,s,y);
	initial begin
		repeat(20)begin
		{i,s}=$random;
		#1;
		$display("i=%b  s=%b  y=%b",i,s,y);
		end
	end
endmodule



/*
output
  i=1  s=00  y=0001
# i=0  s=01  y=0000
# i=0  s=01  y=0000
# i=0  s=11  y=0000
# i=1  s=01  y=0010
# i=1  s=01  y=0010
# i=1  s=01  y=0010
# i=0  s=10  y=0000
# i=0  s=01  y=0000
# i=1  s=01  y=0010
# i=1  s=10  y=0100
# i=1  s=01  y=0010
# i=1  s=01  y=0010
# i=1  s=00  y=0001
# i=0  s=01  y=0000
# i=1  s=10  y=0100
# i=1  s=01  y=0010
# i=0  s=10  y=0000
# i=1  s=01  y=0010
# i=1  s=11  y=1000
*/
