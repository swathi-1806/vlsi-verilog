module mux_4x1(i,s,y);
input [3:0]i;
input [1:0]s;
output y;
assign y=(~s[0]&~s[1]&i[0]|~s[0]&s[1]&i[1]|s[0]&~s[1]&i[2]|s[0]&s[1]&i[3]);
//assign y=s[1] ? (s[0] ? i[3] :i[2]) : (s[0] ? i[1] : i[0]);


endmodule

module top;
reg [3:0]i;
reg [1:0]s;
wire y;
integer seed;
mux_4x1 dut(i,s,y);
initial begin
  seed=1234;
  repeat(10)begin
  {i,s}=$random(seed);
  #1;
  $display("\t--> i=%b  s=%b  y=%b",i,s,y);
   end
  $display("output equation=~s[0]&~s[1]&i[0]|~s[0]&s[1]&i[1]|s[0]&~s[1]&i[2]|s[0]&s[1]&i[3]");
 end
endmodule


/*
---------output-------------------------------------------------------------------
--> i=0010  s=10  y=1
# 	--> i=0001  s=00  y=1
# 	--> i=1100  s=01  y=1
# 	--> i=1011  s=10  y=1
# 	--> i=1110  s=10  y=1
# 	--> i=1000  s=00  y=0
# 	--> i=0011  s=00  y=1
# 	--> i=0000  s=01  y=0
# 	--> i=0100  s=11  y=0
# 	--> i=0001  s=00  y=1
# output equation=~s[0]&~s[1]&i[0]|~s[0]&s[1]&i[1]|s[0]&~s[1]&i[2]|s[0]&s[1]&i[3]
*/
