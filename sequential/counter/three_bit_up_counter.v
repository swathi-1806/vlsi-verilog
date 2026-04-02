module up_counter_3_bit(clk,rst,a);
input clk,rst;
output reg [2:0]a;

always@(posedge clk)begin
	if(rst==1)
		a<=0;
	else
		a<=a+1;
end
endmodule

module tb;
reg clk,rst;
wire [2:0]a;
up_counter_3_bit dut(clk,rst,a);
	initial begin
		clk=0;
		forever #5 clk=~clk;
	end
	initial begin
		rst=1;
		repeat(2)@(posedge clk)
		rst=0;
	
	end
	initial begin
		#500;
		$finish();
	end
endmodule
		

