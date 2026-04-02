module ring_counter(clk,rst,a);
input clk,rst;
output reg [3:0]a;

always@(posedge clk)begin
	if(rst==1)
		a<=4'b0001;
	else
		  a <= {a[0], a[3], a[2], a[1]};
		//a<={a[0],a[3:1]};
end
endmodule

module tb;
reg clk,rst;
wire [3:0]a;

ring_counter dut(clk,rst,a);

		initial begin
			clk=0;
			forever #5 clk=~clk;
		end
		initial begin
			rst=1;
			repeat(2)@(posedge clk);
			rst=0;
		end
		initial begin
			#500;
			$finish();
		end
endmodule

