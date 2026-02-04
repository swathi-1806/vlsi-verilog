
//implementation of 8x1 mux using 4x1 mux

`include "mux_4x1_behav.v"
module mux_8x1(i,s,y);
input [7:0]i;
input [2:0]s;
output reg y;
wire w1,w2;
//mux_4x1 u1(.i(i[7:4]),.s(s[1:0]),.y(w1));
//mux_4x1 u2(.i(i[3:0]),.s(s[1:0]),.y(w2));
//mux_4x1 u3(.i(i[1'b0,1'b0,w2,w1]),.s([s[2],1'b0]),.y(y));
//endmodule

mux_4x1 u1(
.i0(i[0]),
.i1(i[1]),
.i2(i[2]),
.i3(i[3]),
.s(s[1:0]),
.y(w1)
);

mux_4x1 u2(
.i0(i[4]),
.i1(i[5]),
.i2(i[6]),
.i3(i[7]),
.s(s[1:0]),
.y(w2)
);

mux_4x1 u3(
.i0(w1),
.i1(w2),
.i2(1'b0),
.i3(1'b0),
.s({1'b0,s[2]}),
.y(y)
);
endmodule

module top;
reg [7:0]i;
reg [2:0]s;
wire y;

mux_8x1 dut(i,s,y);
initial begin
 
  repeat(20)begin
  {i,s}=$random;
  #1;
  $display("\t--> i=%b  s=%b  y=%b",i,s,y);
  
  end
  end
 endmodule
