module t_ff(clk,rst,t,q);
input clk,rst,t;
output q;

always@(posedge clk)begin
	if(rst==1)
		q<=0;
	else begin
		if(t==0)q<=t;
		else q<=~t
	end
end
endmodule

module tb;
reg clk,rst,t;
wire q;

d_ff dut(clk,rst,t,q);

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
			t=$random;
			#1;
			$display("clk=%b rst=%b || d=%b  q=%b",clk,rst,d,q);
		end
	end
	initial begin
		#200;
		$finish();
	end
endmodule
