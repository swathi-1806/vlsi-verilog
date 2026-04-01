module sr_ff(clk,rst,s,r,q);
	input clk,rst,s,r;
	output reg q;

	always@(posedge clk)begin
		if(rst==1)begin
			q<=0;
        end
		else begin
			case({s,r})
				2'b00:q=q;
				2'b01:q=1'b0;
				2'b10:q=1'b1;
				default q=1'bx;
				
			endcase
		end	
	end
endmodule

module tb;
reg clk,rst,s,r;
wire q;

sr_ff dut(clk,rst,s,r,q);

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
			@(negedge clk)begin
				
				s=0;
          		r=1;
				#10;
          $display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
          
          	
          		s=0;
          		r=0;
				#10;
          $display("%0t--> clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
			
				
          		s=0;
          		r=1;
				#10;
				$display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
			
				
          		s=1;
          		r=0;
				#10;
				$display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);

          		
          		s=1;
          		r=0;
				#10;
				$display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
			
				
          		s=0;
          		r=1;
				#10;
				$display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
				
				
          		s=1;
          		r=0;
				#10;
				$display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
			end	
		end

		initial begin
          $dumpfile("sr_ff.vcd");
          $dumpvars(0,tb);
			#300;
			$finish();
		end
		
endmodule

/*
# 20-->clk=1 rst=0 || s=0  r=1  q=0
# 30-->clk=1 rst=0 || s=0  r=0  q=0
# 40-->clk=1 rst=0 || s=0  r=1  q=0
# 50-->clk=1 rst=0 || s=1  r=0  q=1
# 60-->clk=1 rst=0 || s=1  r=0  q=1
# 70-->clk=1 rst=0 || s=0  r=1  q=0
# 80-->clk=1 rst=0 || s=1  r=0  q=1
*/
