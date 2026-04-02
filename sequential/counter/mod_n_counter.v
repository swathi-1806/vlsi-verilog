module mod_n_counter(clk,rst,a);
parameter N=10;
input clk,rst;
output reg [$clog2(N)-1:0]a;

always@(posedge clk)begin
	if(rst==1)
		a<=0;
	else begin
		  if(a==N-1)a<=0;
		  else a<=a+1;
	end
end
endmodule

module tb;
reg clk,rst;
wire [3:0]a;
parameter N=10;


mod_n_counter #(.N(N)) dut(clk,rst,a);

		initial begin
			clk=0;
			forever #5 clk=~clk;
		end
		initial begin
			rst=1;
			repeat(2)@(posedge clk);
			rst=0;
		end
		always@(posedge clk) begin
			$display("mod_n1-counter=%b",a);
		end
		initial begin
			#200;
			$finish();
		end
endmodule

