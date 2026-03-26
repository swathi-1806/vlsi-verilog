  module tb;
  reg clk;
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    $dumpfile("clk_wave.vcd");   // VCD file name
        $dumpvars(0, tb);        // dump all signals under tb
  end
     initial begin
       #300;
       $finish();
     end
endmodule

