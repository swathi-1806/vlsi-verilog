//implementation of binary to gray convereter 

module b_to_g(b,g);
 input [3:0]b;
 output [3:0]g;

 assign g[3]=b[3];
 assign g[2]=b[3]^b[2];
 assign g[1]=b[2]^b[1];
 assign g[0]=b[1]^b[0];
 endmodule


 module top;
 reg [3:0]b;
 wire [3:0]g;

 b_to_g dut(b,g);
 	initial begin
		repeat(10)begin
		b=$random;
		#1;
		$display("binary=%b  gray=%b",b,g);
		end
	end
endmodule



/*
# binary=0100  gray=0110
# binary=0001  gray=0001
# binary=1001  gray=1101
# binary=0011  gray=0010
# binary=1101  gray=1011
# binary=1101  gray=1011
# binary=0101  gray=0111
# binary=0010  gray=0011
# binary=0001  gray=0001
# binary=1101  gray=1011
*/
