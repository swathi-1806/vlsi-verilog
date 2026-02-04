//1x8 demux using 2x1demux

//implementing 1x2demux
module demux_1x2(i,s,y0,y1);
input i,s;
output y0,y1;
assign y0=~s&i;
assign y1=s&i;
endmodule

//implementing 1x8 demux
module demux_1x8(i,s,y);
input i;
input [2:0]s;
output[7:0]y;
wire w1,w2,w3,w4,w5,w6,w7;
demux_1x2 d1(.i(i), .s(s[2]),.y0(w1),.y1(w2));
demux_1x2 d2(.i(w1),.s(s[1]),.y0(w3),.y1(w4));
demux_1x2 d3(.i(w2),.s(s[1]),.y0(w5),.y1(w6));
demux_1x2 d4(.i(w3),.s(s[0]),.y0(y[0]),.y1(y[1]));
demux_1x2 d5(.i(w4),.s(s[0]),.y0(y[2]),.y1(y[3]));
demux_1x2 d6(.i(w5),.s(s[0]),.y0(y[4]),.y1(y[5]));
demux_1x2 d7(.i(w6),.s(s[0]),.y0(y[6]),.y1(y[7]));
endmodule

//implimentation of testbench
module top;
reg i;
reg [2:0]s;
wire [7:0]y;
integer bawge;
demux_1x8 dut (i ,s,y);
initial begin
	bawge=1804;
	$monitor("\t-->%0t	i=%b	s=%b	y=%b",$time,i,s,y);
	repeat(20)begin
	{i,s}=$random(bawge);
	#1;
	//$display("\t-->%t	i=%b	s=%b	y=%b",$time,i,s,y);
	end
end
endmodule

/*
output
----------------------------------
using $display  
----------------------------------
 	-->1	i=1	s=110	y=01000000
 	-->2	i=1	s=110	y=01000000
 	-->3	i=1	s=100	y=00010000
 	-->4	i=0	s=001	y=00000000
 	-->5	i=0	s=101	y=00000000
 	-->6	i=0	s=100	y=00000000
 	-->7	i=0	s=010	y=00000000
 	-->8	i=0	s=011	y=00000000
 	-->9	i=0	s=011	y=00000000
 	-->10	i=1	s=011	y=00001000
 	-->11	i=1	s=110	y=01000000
 	-->12	i=1	s=110	y=01000000
 	-->13	i=0	s=000	y=00000000
 	-->14	i=0	s=100	y=00000000
 	-->15	i=1	s=010	y=00000100
 	-->16	i=1	s=000	y=00000001
 	-->17	i=0	s=111	y=00000000
 	-->18	i=1	s=101	y=00100000
 	-->19	i=0	s=010	y=00000000
 	-->20	i=0	s=011	y=00000000

----------------------------------
using $monitor
----------------------------------
 	-->0	i=1	s=110	y=01000000
 	-->2	i=1	s=100	y=00010000
 	-->3	i=0	s=001	y=00000000
 	-->4	i=0	s=101	y=00000000
 	-->5	i=0	s=100	y=00000000
 	-->6	i=0	s=010	y=00000000
 	-->7	i=0	s=011	y=00000000
 	-->9	i=1	s=011	y=00001000
 	-->10	i=1	s=110	y=01000000
 	-->12	i=0	s=000	y=00000000
 	-->13	i=0	s=100	y=00000000
 	-->14	i=1	s=010	y=00000100
 	-->15	i=1	s=000	y=00000001
 	-->16	i=0	s=111	y=00000000
 	-->17	i=1	s=101	y=00100000
 	-->18	i=0	s=010	y=00000000
 	-->19	i=0	s=011	y=00000000
*/





