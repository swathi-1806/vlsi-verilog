module mux_4x1(i0,i1,i2,i3,s,y);
input i0,i1,i2,i3;
input [1:0]s;
output reg y;
always@(*)begin

//-------------------------

    if(s==2'b00)y=i0;
	else if(s==2'b01)y=i1;
	else if(s==2'b10)y=i2;
	else y=i3;

//-------------------------

  /* case({s})
	2'b00:y=i0;
	2'b01:y=i1;
	2'b10:y=i2;
	2'b11:y=i3;*/
//-------------------------
   //endcase
  end
endmodule

//testbench
module top;
reg i0,i1,i2,i3;
reg [1:0]s;
wire y;
integer seed;
mux_4x1 dut(i0,i1,i2,i3,s,y);
initial begin
  seed=1234;
  repeat(10)begin
  {i0,i1,i2,i3,s}=$random(seed);
  #1;
  $display("\t--> i0=%b i1=%b i2=%b i3=%b  s=%b  y=%b",i0,i1,i2,i3,s,y);
  end
 end
endmodule

/*
 output using if-else condition
 ------------------------------------------
    --> i=0010  s=10  y=0
# 	--> i=0001  s=00  y=1
# 	--> i=1100  s=01  y=0
# 	--> i=1011  s=10  y=0
# 	--> i=1110  s=10  y=1
# 	--> i=1000  s=00  y=0
# 	--> i=0011  s=00  y=1
# 	--> i=0000  s=01  y=0
# 	--> i=0100  s=11  y=0
# 	--> i=0001  s=00  y=1
=============================================
output using case statements
---------------------------------------------
        i=0010  s=10  y=0
# 	--> i=0001  s=00  y=1
# 	--> i=1100  s=01  y=0
# 	--> i=1011  s=10  y=0
# 	--> i=1110  s=10  y=1
# 	--> i=1000  s=00  y=0
# 	--> i=0011  s=00  y=1
# 	--> i=0000  s=01  y=0
# 	--> i=0100  s=11  y=0
# 	--> i=0001  s=00  y=1
---------------------------------------------
*/


