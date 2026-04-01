module d_ff(clk,rst,d,q);
input clk,rst,d;
output q;

always@(posedge clk)begin
	if(rst==1)
		q<=q;
	else
		q<=d;
end
endmodule

module tb;
reg clk,rst,d;
wire q;

d_ff dut(clk,rst,d,q);

	initial begin
		clk=0;
		forever #5 clk=~clk;
	end
	initial begin
		rst=1;
		repeat(2)@posedge clk;
		rst=0;
	end
	initial begin
		repeat(10)begin
			d=$random;
			#1;
			$display("clk=%b rst=%b || d=%b  q=%b",clk,rst,d,q);
		end
	end
	initial begin
		#200;
		$finish();
	end
endmodule

/*

*/
