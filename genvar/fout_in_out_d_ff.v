//single d_ff_rtl code
module d_ff(
input clk,
input d,
output reg q
);
always @(posedge clk)
q <= d;
endmodule



//fout d_ff_connected in parallel
module four_d_ff(
input clk,
input [3:0] d,
output reg [3:0]q
);
  
genvar i;

generate
for(i=0;i<4;i=i+1)
begin : dff_block
    d_ff u1(
        .clk(clk),
        .d(d[i]),
        .q(q[i])
    );
end
endgenerate

endmodule

//testbench code
module tb;
  reg clk;
  reg [3:0]d;
  wire [3:0]q;
  
  four_d_ff dut(.clk(clk),.d(d),.q(q));
  
  //clk generation
  initial begin
			clk = 0;
			forever #5 clk = ~clk;   // proper clock
   end
 
  
    initial begin
      repeat(5)begin
        d=$random;
        #10;
        $display("clk=%b  d=%b  q=%b ",clk,d,q);
      end
      
      $finish;   // stops simulation
    end
endmodule
/*
OUTPUT:
# clk=1  d=0100  q=0100 
# clk=1  d=0001  q=0001 
# clk=1  d=1001  q=1001 
# clk=1  d=0011  q=0011 
# clk=1  d=1101  q=1101 
*/
      
