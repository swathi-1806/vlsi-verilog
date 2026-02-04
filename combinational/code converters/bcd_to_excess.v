//implementation of bcd to excess convrter

module excess(bcd,excess);
input [3:0]bcd;
output [3:0]excess;

assign excess=bcd+4'b0011;
endmodule


module top;
reg [3:0]bcd;
wire [3:0]excess;

excess dut(bcd,excess);
	initial begin
		repeat(20)begin
		bcd=$random;
		#1;
		$display("bcd=%b  excess=%b",bcd,excess);
		end
	end
endmodule


/*
# bcd=0100  excess=0111
# bcd=0001  excess=0100
# bcd=1001  excess=1100
# bcd=0011  excess=0110
# bcd=1101  excess=0000
# bcd=1101  excess=0000
# bcd=0101  excess=1000
# bcd=0010  excess=0101
# bcd=0001  excess=0100
# bcd=1101  excess=0000
# bcd=0110  excess=1001
# bcd=1101  excess=0000
# bcd=1101  excess=0000
# bcd=1100  excess=1111
# bcd=1001  excess=1100
# bcd=0110  excess=1001
# bcd=0101  excess=1000
# bcd=1010  excess=1101
# bcd=0101  excess=1000
# bcd=0111  excess=1010

*/
