module top;
  reg[3:0]a,b,c;
    initial begin
      a=4'b1001;
      b=4'b1101;
      c=a&b;
      $display("AND: a=%b b=%b c=%b",a,b,c);

      c=a|b;
      $display("OR:    a=%b b=%b c=%b",a,b,c);

      c=~(a&b);
      $display("NAND:  a=%b b=%b c=%b",a,b,c);

      c=~(a|b);
      $display("NOR:   a=%b b=%b c=%b",a,b,c);

      c=a^b;
      $display("EX-OR:  a=%b b=%b c=%b",a,b,c);

      c=~(a^b);
      $display("EX-NOR: a=%b b=%b c=%b",a,b,c);
      $display("-------------------------------");
      
      a=4'bx001;
      b=4'b1101;
      c=a&b;
      $display("AND:   a=%b b=%b c=%b",a,b,c);

      c=a|b;
      $display("OR:    a=%b b=%b c=%b",a,b,c);

      c=~(a&b);
      $display("NAND:  a=%b b=%b c=%b",a,b,c);

      c=~(a|b);
      $display("NOR:   a=%b b=%b c=%b",a,b,c);

      c=a^b;
      $display("EX-OR: a=%b b=%b c=%b",a,b,c);

      c=~(a^b);
      $display("EX-NOR: a=%b b=%b c=%b",a,b,c);
      
      $display("-------------------------------");
      
      a=4'bz001;
      b=4'b1101;
      c=a&b;
      $display("AND:    a=%b b=%b c=%b",a,b,c);

      c=a|b;
      $display("OR:     a=%b b=%b c=%b",a,b,c);

      c=~(a&b);
      $display("NAND:   a=%b b=%b c=%b",a,b,c);

      c=~(a|b);
      $display("NOR:    a=%b b=%b c=%b",a,b,c);

      c=a^b;
      $display("EX-OR:  a=%b b=%b c=%b",a,b,c);

      c=~(a^b);
      $display("EX-NOR: a=%b b=%b c=%b",a,b,c);
      $display("-------------------------------");
      
      a=4'bz001;
      b=4'bz101;
      c=a&b;
      $display("AND:    a=%b b=%b c=%b",a,b,c);

      c=a|b;
      $display("OR:     a=%b b=%b c=%b",a,b,c);

      c=~(a&b);
      $display("NAND:   a=%b b=%b c=%b",a,b,c);

      c=~(a|b);
      $display("NOR:    a=%b b=%b c=%b",a,b,c);

      c=a^b;
      $display("EX-OR:  a=%b b=%b c=%b",a,b,c);

      c=~(a^b);
      $display("EX-NOR: a=%b b=%b c=%b",a,b,c);
    end
endmodule


      
      
