module top;
  reg[3:0]a,b,c;
    initial begin
      a=4'b1001;
      b=4'b1101;
      c=a&b;
      $display("AND: a=%b b=%b c=%b",a,b,c);

      c=a|b;
      $display("OR: a=%b b=%b c=%b",a,b,c);
    end
endmodule

      
      
