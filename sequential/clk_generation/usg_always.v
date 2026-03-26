  reg clk;
  always #5 clk=~clk;
   
    initial begin
      clk=0;
      
      $dumpfile("clk_file.vcd");
      $dumpvers(0,tb);
      
    
      #100;
      $finish();
    end
 endmodule
