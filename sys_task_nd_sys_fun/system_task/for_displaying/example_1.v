module tb;
  reg[3:0] a,b,c,d;
  
    initial begin
      repeat(5)begin
        {a,b,c,d}=$random;
        #1;
        $display("---------$display------");
        $display("a=%0b",a);
        $display("---------$monitor------");
        $monitor("b=%0b",b);
        $display("---------$write------");
        $write("c=%0b",c);
        $display("---------$strobe------");
        $strobe("d=%0b",d);
      end
    end
endmodule
