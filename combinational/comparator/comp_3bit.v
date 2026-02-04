
//implementation of 3bit comparator
module comp_3bit(a,b,agb,alb,aeb);
input [2:0]a,b;
output agb,alb,aeb;
assign agb=a[2]>b[2]||a[2]==b[2] && a[1]>b[2] || a[2]==b[2] && a[1]==b[1] && a[0]>b[0];
assign alb=a[2]<b[2]||a[2]==b[2] && a[1]<b[2]||a[2]==b[2] && a[1]==b[1] && a[0]<b[0];
assign aeb=a[2]==b[2] && a[1]==b[1] && a[0]==b[0];

//-------------------------------------------------------------------------------
//assign agb=a>b;
//assign alb=a<b;
//assign aeb=(a==b);
//-------------------------------------------------------------------------------

endmodule


module top;
reg [2:0]a,b;
wire agb,alb,aeb;
comp_3bit dut(a,b,agb,alb,aeb);
	initial begin
		repeat(10)begin
		{a,b}=$random;
		#1;
		$display("\t--> a=%b  b=%b  agb=%b  alb=%b  aeb=%b",a,b,agb,alb,aeb);
		end
	end
endmodule


/*
output
	--> a=100  b=100  agb=0  alb=1  aeb=1
 	--> a=000  b=001  agb=0  alb=1  aeb=0
 	--> a=001  b=001  agb=0  alb=0  aeb=1
 	--> a=100  b=011  agb=1  alb=0  aeb=0
 	--> a=001  b=101  agb=0  alb=1  aeb=0
 	--> a=001  b=101  agb=0  alb=1  aeb=0
 	--> a=100  b=101  agb=0  alb=1  aeb=0
 	--> a=010  b=010  agb=1  alb=0  aeb=1
 	--> a=000  b=001  agb=0  alb=1  aeb=0
 	--> a=001  b=101  agb=0  alb=1  aeb=0
*/


