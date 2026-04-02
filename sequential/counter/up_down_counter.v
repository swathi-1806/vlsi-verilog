module up_counter_3_bit(clk,rst,a,mode);
input clk,rst,mode;
output reg [2:0]a;

always@(posedge clk)begin
	if(rst==1)
		a<=0;
	else begin
		if(mode==1)	a<=a+1;
		else a<=a-1;
	end
end
endmodule

module tb;
reg clk,rst,mode;
wire [2:0]a;
up_counter_3_bit dut(clk,rst,a,mode);
	initial begin
		clk=0;
		forever #5 clk=~clk;
	end
	initial begin
		rst=1;
		repeat(2)@(posedge clk)
		rst=0;
	//selection up or down counter
	//	mode=0;
	mode=1;
	
	end

	initial begin
		#500;
		$finish();
	end
endmodule
		

