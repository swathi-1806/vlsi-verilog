module jk_ff(clk,rst,j,k,q);
input clk,rst,j,k;
output reg q;
always@(posedge clk)begin
	if (rst==1);
		q<=0;
	else begin
		case({j,k})
			2'b00:q=q;
			2'b01:q=1'b0;
			2'b01:q=1'b1;
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
		repeat(2)@posedge clk;
		rst=0;
	end
	initial begin
		@(negedge clk)begin

				j=0;
          		k=1;
				#10;
         		$display("clk=%b rst=%b || j=%b  k=%b  q=%b",clk,rst,j,k,q);
          
          	
          		j=0;
          		k=0;
				#10;
          		$display("clk=%b rst=%b || j=%b  k=%b  q=%b",clk,rst,j,k,q);
			
				
          		j=0;
          		k=1;
				#10;
				$display("clk=%b rst=%b || j=%b  k=%b  q=%b",clk,rst,j,k,q);
			
				
          		j=1;
          		k=0;
				#10;
				$display("clk=%b rst=%b || j=%b  k=%b  q=%b",clk,rst,j,k,q);
          		
          		j=1;
          		k=0;
				#10;
				$display("clk=%b rst=%b || j=%b  k=%b  q=%b",clk,rst,j,k,q);
			
				
          		j=0;
          		k=1;
				#10;
				$display("clk=%b rst=%b || j=%b  k=%b  q=%b",clk,rst,j,k,q);
				
				
          		j=1;
          		k=0;
				#10;
				$display("clk=%b rst=%b || j=%b  k=%b  q=%b",clk,rst,j,k,q);
			end
			
	end
	initial begin
		#200;
		$finish();
	end
endmodule


