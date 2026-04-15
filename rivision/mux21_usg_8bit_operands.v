module mux2_1_8bit (a,b,sel,y);
  input [7:0] a;
  input [7:0] b;
  input  sel;
  output reg [7:0] y;


    assign y= ~sel&a|sel&b;

endmodule

module tb;
  reg [7:0]a;
  reg [7:0]b;
  reg sel;
  wire [7:0]y;
 
  mux2_1_8bit dut(a,b,sel,y);
  	initial begin
      repeat(5)begin
        {a,b,sel}=$random;
        #1;
        $display("a=%b  b=%b  sel=%b y=%b",a,b,sel,y);
      end
    end
endmodule

/*
output:=
# a=10011010  b=10010010  sel=0 y=10011010
# a=10101111  b=01000000  sel=1 y=10101110
# a=01101011  b=00000100  sel=1 y=01101010
# a=00101011  b=00110001  sel=1 y=00101011
# a=10111101  b=10000110  sel=1 y=10111100
*/
