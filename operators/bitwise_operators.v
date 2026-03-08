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
/*
OUTPUT:-
# AND: a=1001 b=1101 c=1001
# OR:    a=1001 b=1101 c=1101
# NAND:  a=1001 b=1101 c=0110
# NOR:   a=1001 b=1101 c=0010
# EX-OR:  a=1001 b=1101 c=0100
# EX-NOR: a=1001 b=1101 c=1011
# -------------------------------
# AND:   a=x001 b=1101 c=x001
# OR:    a=x001 b=1101 c=1101
# NAND:  a=x001 b=1101 c=x110
# NOR:   a=x001 b=1101 c=0010
# EX-OR: a=x001 b=1101 c=x100
# EX-NOR: a=x001 b=1101 c=x011
# -------------------------------
# AND:    a=z001 b=1101 c=x001
# OR:     a=z001 b=1101 c=1101
# NAND:   a=z001 b=1101 c=x110
# NOR:    a=z001 b=1101 c=0010
# EX-OR:  a=z001 b=1101 c=x100
# EX-NOR: a=z001 b=1101 c=x011
# -------------------------------
# AND:    a=z001 b=z101 c=x001
# OR:     a=z001 b=z101 c=x101
# NAND:   a=z001 b=z101 c=x110
# NOR:    a=z001 b=z101 c=x010
# EX-OR:  a=z001 b=z101 c=x100
# EX-NOR: a=z001 b=z101 c=x011
*/


      
      
