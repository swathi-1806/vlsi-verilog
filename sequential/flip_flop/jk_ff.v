module jk_ff(clk,rst,j,k,q);
input clk,rst,j,k;
output reg q;
always@(posedge clk)begin
	if (rst==1)
		q<=0;
	else begin
		case({j,k})
			2'b00:q=q;
			2'b01:q=1'b0;
			2'b10:q=1'b1;
			2'b11:q=~q;
		endcase
	end
end
endmodule

module tb;
reg clk,rst,j,k;
wire q;

jk_ff dut(clk,rst,j,k,q);

	initial begin
		clk=0;
		forever #5 clk=~clk;
	end
	initial begin
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
	end
	
// Stimulus: change at negedge, observe at posedge
initial begin
  @(negedge clk); j=0; k=1;   // reset
  @(posedge clk); $strobe("%0t j=%b k=%b q=%b",$time,j,k,q);

  @(negedge clk); j=0; k=0;   // hold
  @(posedge clk); $strobe("%0t j=%b k=%b q=%b",$time,j,k,q);

  @(negedge clk); j=1; k=0;   // set
  @(posedge clk); $strobe("%0t j=%b k=%b q=%b",$time,j,k,q);

  @(negedge clk); j=1; k=1;   // toggle
  @(posedge clk); $strobe("%0t j=%b k=%b q=%b",$time,j,k,q);

  @(negedge clk); j=1; k=1;   // toggle again
  @(posedge clk); $strobe("%0t j=%b k=%b q=%b",$time,j,k,q);

  @(negedge clk); j=0; k=1;   // reset
  @(posedge clk); $strobe("%0t j=%b k=%b q=%b",$time,j,k,q);

  #20 $finish;
end

endmodule
			
/*
# 15 j=0 k=1 q=0
# 25 j=0 k=0 q=0
# 35 j=1 k=0 q=1
# 45 j=1 k=1 q=0
# 55 j=1 k=1 q=1
# 65 j=0 k=1 q=0
*/

