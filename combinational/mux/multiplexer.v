
//implementation mux using diagram in dataflow model
module multiplexer(i,s,y);
input [3:0]i;
input [1:0]s;
output y;
wire w1,w2,w3,w4;
assign w1=s[1]&s[0]&i[3];
assign w2=s[1]&~s[0]&i[3];
assign w3=~s[1]&s[0]&i[3];
assign w4=~s[1]&~s[0]&i[3];
assign y=w1|w2|w3|w4; 

endmodule



//---------testbench------------
module top;
reg [3:0]i;
reg [1:0]s;
wire y;
multiplexer dut(i,s,y);
  initial begin
  repeat(10)begin
  {i,s}=$random;
  #1;
  $display("i=%b  s=%b  y=%b",i,s,y);
  end
  end
endmodule


//----------output---------------
/*
 
  i=1001  s=00  y=1
 i=0000  s=01  y=0
 i=0010  s=01  y=0
 i=1000  s=11  y=1
 i=0011  s=01  y=0
 i=0011  s=01  y=0
 i=1001  s=01  y=1
 i=0100  s=10  y=0
 i=0000  s=01  y=0
 i=0011  s=01  y=0
 */


