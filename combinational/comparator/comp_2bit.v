module comp_2bit(a,b,agb,alb,aeb);
input [1:0]a,b;
output agb,alb,aeb;

assign agb=a[1]>b[1]||a[1]==b[1]&&a[0]>b[0];
assign alb=a[1]<b[1]||a[1]==b[1]&&a[0]<b[0];
assign aeb=a[1]==b[1]&&a[0]==b[0];
endmodule

module top;
reg [1:0]a,b;
wire agb,alb,aeb;
comp_2bit dut(a,b,agb,alb,aeb);
	initial begin
		repeat(10)begin
		{a,b}=$random;
		#1;
		$display("\t--> a=%b  b=%b  agb=%b  alb=%b  aeb=%b",a,b,agb,alb,aeb);
		end
	end
endmodule


/*
	--> a=01  b=00  agb=1  alb=0  aeb=0
# 	--> a=00  b=01  agb=0  alb=1  aeb=0
# 	--> a=10  b=01  agb=1  alb=0  aeb=0
# 	--> a=00  b=11  agb=0  alb=1  aeb=0
# 	--> a=11  b=01  agb=1  alb=0  aeb=0
# 	--> a=11  b=01  agb=1  alb=0  aeb=0
# 	--> a=01  b=01  agb=0  alb=0  aeb=1
# 	--> a=00  b=10  agb=0  alb=1  aeb=0
# 	--> a=00  b=01  agb=0  alb=1  aeb=0
# 	--> a=11  b=01  agb=1  alb=0  aeb=0
*/
