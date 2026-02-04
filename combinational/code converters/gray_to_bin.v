//implementation gray to binary converter

module g_to_b(g,b);
 input [3:0]g;
 output [3:0]b;

 assign b[3]=g[3];
 assign b[2]=b[3]^g[2];
 assign b[1]=b[2]^g[1];
 assign b[0]=b[1]^g[0];
 endmodule


 module top;
 reg [3:0]g;
 wire [3:0]b;

 b_to_g dut(g,b);
 	initial begin
		repeat(10)begin
		g=$random;
		#1;
		$display("gray=%b  binary=%b",g,b);
		end
	end
endmodule

/*
# gray=0100  binary=0110
# gray=0001  binary=0001
# gray=1001  binary=1101
# gray=0011  binary=0010
# gray=1101  binary=1011
# gray=1101  binary=1011
# gray=0101  binary=0111
# gray=0010  binary=0011
# gray=0001  binary=0001
# gray=1101  binary=1011
*/

