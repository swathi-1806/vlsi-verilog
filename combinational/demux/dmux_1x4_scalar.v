//implementation of 1x4 in scalar

/*//conditional operator
module dmux_1x4(i,s0,s1,y0,y1,y2,y3);
input i,s1,s0;
output reg y0,y1,y2,y3;
always@(*)begin
     y0=(s1==0 && s0==0)?i:1'b0;
	 y1=(s1==0 && s0==1)?i:1'b0;
	 y2=(s1==1 && s0==0)?i:1'b0;
	 y3=(s1==1 && s0==1)?i:1'b0;
	 end
endmodule*/

/*//case 
module dmux_1x4(i,s0,s1,y0,y1,y2,y3);
input i,s1,s0;
output reg y0,y1,y2,y3;
always@(*)begin
y0=0;y1=0;y2=0;y3=0;
	case({s1,s0})
     (s1==0 && s0==0):y0=i;
	 (s1==0 && s0==1):y1=i;
	 (s1==1 && s0==0):y2=i;
	 (s1==1 && s0==1):y3=i;
	 endcase
	 end
endmodule
*/


module dmux_1x4(i,s0,s1,y0,y1,y2,y3);
input i,s1,s0;
output reg y0,y1,y2,y3;
always@(*)begin
y0=0;y1=0;y2=0;y3=0;
    if      (s1==0 && s0==0) y0=i;
	else if (s1==0 && s0==1) y1=i;
	else if (s1==1 && s0==0) y2=i;
	else                     y3=i;
	 end
endmodule


module top;
reg i;
reg s1,s0;
wire y3,y2,y1,y0;
dmux_1x4 dut (i,s0,s1,y0,y1,y2,y3);
	initial begin
		repeat(20)begin
		{i,s1,s0}=$random;
		#1;
		$display("i=%b  s=%b%b  y=%b%b%b%b",i,s1,s0,y3,y2,y1,y0);
		end
	end
endmodule


/*
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





