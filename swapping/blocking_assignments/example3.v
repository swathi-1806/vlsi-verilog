module test;

  reg clk;
  reg a,b,c;

  // Clock generation
  initial begin
     a=0;
    b=1;
    c=0;
    
    clk = 0;
    forever #5 clk = ~clk;
    
  end

  // Sequential logic
  always @(posedge clk) begin
  
    a = b;
    c <= a;
  end

  // Monitor values
  initial begin
    $monitor("Time=%0t clk=%b a=%b", $time, clk, a);
    #30 $finish;
  end

endmodule

/*
# Time=0 clk=0 a=0
# Time=5 clk=1 a=1
# Time=10 clk=0 a=1
# Time=15 clk=1 a=1
# Time=20 clk=0 a=1
# Time=25 clk=1 a=1
*/
