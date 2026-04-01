module d_ff(clk,rst,d,q);
input clk,rst,d;
output reg q;

always@(posedge clk)begin
	if(rst==1)
		q<=1'b0;
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
		repeat(2)@(posedge clk)
		rst=0;
	end
	initial begin
		repeat(10) begin
   			 @(negedge clk);
   			 d = $random;

   			 @(posedge clk);
   			 $strobe("time=%0t clk=%b rst=%b d=%b q=%b",
             $time, clk, rst, d, q);
  end	end
	initial begin
		#200;
		$finish();
	end
endmodule

/*
# time=15 clk=1 rst=0 d=0 q=0
# time=25 clk=1 rst=0 d=1 q=1
# time=35 clk=1 rst=0 d=1 q=1
# time=45 clk=1 rst=0 d=1 q=1
# time=55 clk=1 rst=0 d=1 q=1
# time=65 clk=1 rst=0 d=1 q=1
# time=75 clk=1 rst=0 d=1 q=1
# time=85 clk=1 rst=0 d=0 q=0
# time=95 clk=1 rst=0 d=1 q=1
# time=105 clk=1 rst=0 d=1 q=1
*/
