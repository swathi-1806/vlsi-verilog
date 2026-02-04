//implementation of 2bit comparator using 1bit comparator

//implementation of 1bit comparator
module comp_1bit(a,b,agb,alb,aeb);
input a,b;
output reg agb,alb,aeb;
	always@(*)begin
	agb=0;alb=0;aeb=0;
		if		(a>b) agb=1;
		else if	(a<b) alb=1;
		else 		  aeb=1;
	end
endmodule

//implementation of 2bit comparator
module comp_2bit(a,b,agb,alb,aeb);
input [1:0]a,b;
output agb,alb,aeb;
comp_1bit c1(.a(a[1]),.b(b[1]),.agb(gt1),.alb(lt1),.aeb(eq1));
comp_1bit c2(.a(a[0]),.b(b[0]),.agb(gt0),.alb(lt0),.aeb(eq0));
assign agb=gt1|(eq1&gt0);	//gt1||eq1&&gt0
assign alb=lt1|(eq1&lt0);	//lt1||eq1&&lt0
assign aeb=eq1&eq0;			//eq1&&eq0
endmodule


module top;
reg [1:0]a,b;
wire agb,alb,aeb;
integer mango=1234;
comp_2bit dut (a,b,agb,alb,aeb);
	initial begin
		repeat(10)begin
		{a,b}=$random(mango);
		#1;
		$display("\t-->a=%b b=%b||agb=%b  alb=%b  aeb=%b",a,b,agb,alb,aeb);
		end
	end
endmodule


/*
output
-------------------------------------
	-->a=10 b=10||agb=0  alb=0  aeb=1
# 	-->a=01 b=00||agb=1  alb=0  aeb=0
# 	-->a=00 b=01||agb=0  alb=1  aeb=0
# 	-->a=11 b=10||agb=1  alb=0  aeb=0
# 	-->a=10 b=10||agb=0  alb=0  aeb=1
# 	-->a=00 b=00||agb=0  alb=0  aeb=1
# 	-->a=11 b=00||agb=1  alb=0  aeb=0
# 	-->a=00 b=01||agb=0  alb=1  aeb=0
# 	-->a=00 b=11||agb=0  alb=1  aeb=0
# 	-->a=01 b=00||agb=1  alb=0  aeb=0
-------------------------------------
*/
