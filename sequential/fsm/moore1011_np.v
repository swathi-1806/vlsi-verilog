module moore_nop(clk,rst,d_in,pattern_detect);
parameter S_RST	=5'b00001;
parameter S_C	=5'b00010;
parameter S_CB	=5'b00100;
parameter S_CBC	=5'b01000;
parameter S_CBCC=5'b10000;

parameter B=1'b0;
parameter C=1'b1;

input clk,rst,d_in;
output reg pattern_detect;

reg [4:0] state,next_state;
always@(posedge clk)begin
	if(rst)begin
		pattern_detect=0;
		state=S_RST;
		next_state=S_RST;
	end
	else begin

		pattern_detect=0;
		case(state)
		
			S_RST:begin
				if(d_in==C)next_state=S_C;
				else next_state=S_RST;
			end
			S_C:begin
				if(d_in==C)next_state=S_C;
				else next_state=S_CB;
			end
			S_CB:begin
				if(d_in==C)next_state=S_CBC;
				else next_state=S_RST;
			end
			S_CBC:begin
				if(d_in==C)next_state=S_CBCC;
				else next_state=S_CB;
			end
			S_CBCC:begin
			pattern_detect=1;
				if(d_in==C)next_state=S_C;
				else next_state=S_RST;
			end
		endcase
	end
end
always@(next_state) state=next_state;
endmodule


//`include "moore1011_np.v"

module top;
	reg clk,rst,d_in;
	wire pattern_detect;
	integer count=0;

	moore_nop dut(	.clk(clk),
					.rst(rst),
					.d_in(d_in),
					.pattern_detect(pattern_detect));

	initial begin
		clk=0;
		forever #2 clk=~clk;
	end

	initial begin
		rst=1;
		d_in=0;
		repeat(2)@(posedge clk);
		rst=0;
		d_in=0;
	#4	d_in=1;//give the delay according to the clk generation,because every posedge we are incidenting a new d_in value
	#4	d_in=0;
	#4	d_in=1;
	#4	d_in=1;
	#4	d_in=1;
	#4	d_in=0;
	#4	d_in=1;
	#4	d_in=1;
	#4	d_in=0;
	#4	d_in=0;
	#4	d_in=1;
	#4	d_in=0;
	#4	d_in=1;
	#4	d_in=1;
	#4	d_in=0;
	#4	d_in=0;
	#4	d_in=0;
	#4	d_in=1;
	#4	d_in=0;
	#4	d_in=1;
	#4	d_in=1;
	 	#100;
		$display("\t-->total number times pattern got detected=%0d",count);
		// $display("-->%0d",d_in);
		$finish();
	end
	always@(posedge pattern_detect) count=count+1;
endmodule

	


				
		
