/*module comp_1bit(a,b,agb,alb,aeb);
input a,b;
output reg agb,alb,aeb;
	always@(*)begin
		agb=a&~b;	//a>b
		alb=~a&b;	//a<b
		aeb=~(a^b);	//a==b
	end
endmodule
*/
//using if-else condition
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

module top;
reg a,b;
wire agb,alb,aeb;
comp_1bit dut(a,b,agb,alb,aeb);
	initial begin
		repeat(10)begin
		{a,b}=$random;
		#1;
		$display("\t-->a=%b	b=%b || agb=%b   alb=%b	aeb=%b",a,b,agb,alb,aeb);
		end
	end
endmodule


/*
output
-----------------------------------------
	-->a=0	b=0 || agb=0   alb=0	aeb=1
 	-->a=0	b=1 || agb=0   alb=1	aeb=0
 	-->a=0	b=1 || agb=0   alb=1	aeb=0
 	-->a=1	b=1 || agb=0   alb=0	aeb=1
 	-->a=0	b=1 || agb=0   alb=1	aeb=0
 	-->a=0	b=1 || agb=0   alb=1	aeb=0
 	-->a=0	b=1 || agb=0   alb=1	aeb=0
 	-->a=1	b=0 || agb=1   alb=0	aeb=0
 	-->a=0	b=1 || agb=0   alb=1	aeb=0
 	-->a=0	b=1 || agb=0   alb=1	aeb=0
-----------------------------------------
*/
