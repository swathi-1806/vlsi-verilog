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
				#0;
				s=0;
          		r=1;
			//	#1;
          $display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
          
          		#4;
          		s=0;
          		r=0;
				#1;
          $display("%0t--> clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
			
				#13;
          		s=0;
          		r=1;
				#2;
				$display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
			
				#2;
          		s=1;
          		r=0;
			//	#1;
				$display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);

          		#1;
          		s=1;
          		r=0;
			//	#1;
				$display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
			
				#14;
          		s=0;
          		r=1;
			//	#1;
				$display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
				
				#14;
          		s=1;
          		r=0;
			//	#1;
				$display("%0t-->clk=%b rst=%b || s=%b  r=%b  q=%b",$time,clk,rst,s,r,q);
			

	
			
		end

		initial begin
          $dumpfile("sr_ff.vcd");
          $dumpvars(0,tb);
			#300;
			$finish();
		end
		
endmodule
