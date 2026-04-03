module tb;
  integer a;
  reg b;
  reg [3:0]c;
  initial begin
    repeat(5)begin
        a=$urandom_rnage(100,500);
        b=$random;
        c=$random;
        #1;
        $display("a=%0d  b=%b  c=%b",a,b,c);
    end
  end
endmodule
