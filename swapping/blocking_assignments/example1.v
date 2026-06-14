module tb;
  int a,b,c;
    initial begin
      b=1;
      a=b;
      c=b;
      $display("a=%0d  b=%0d  c=%0d",a,b,c );
    end
endmodule

/*
# a=1  b=1  c=1
*/
