module johnson_counter(clk,rst,a);
input clk,rst;
output reg [3:0]a;

always@(posedge clk)begin
	if(rst==1)
		a<=4'b0000;
	else
		  a <= {~a[0], a[3], a[2], a[1]};
		//a<={~a[0],a[3:1]};
end
endmodule

module tb;
reg clk,rst;
wire [3:0]a;

johnson_counter dut(clk,rst,a);

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
			$display("johnson_counter=%b",a);
		end
		initial begin
			#200;
			$finish();
		end
endmodule

/*
# johnson_counter=xxxx
# johnson_counter=0000
# johnson_counter=0000
# johnson_counter=1000
# johnson_counter=1100
# johnson_counter=1110
# johnson_counter=1111
# johnson_counter=0111
# johnson_counter=0011
# johnson_counter=0001
# johnson_counter=0000
# johnson_counter=1000
# johnson_counter=1100
# johnson_counter=1110
# johnson_counter=1111
# johnson_counter=0111
# johnson_counter=0011
# johnson_counter=0001
# johnson_counter=0000
# johnson_counter=1000
*/

