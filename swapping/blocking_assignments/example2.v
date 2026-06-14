/*
=================================================================================
Step-by-step:
a <= 1'b1 → schedules a=1
a = 1'b0 → immediately makes a=0
End of time step → scheduled update occurs
=================================================================================
*/
module test;

  reg clk;
  reg a;

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Sequential logic
  always @(posedge clk) begin
  
    a <= 1'b1;
    a  = 1'b0;
  end

  // Monitor values
  initial begin
    $monitor("Time=%0t clk=%b a=%b", $time, clk, a);
    #30 $finish;
  end

endmodule
