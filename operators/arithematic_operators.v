module top;
  integer a,b,c;
    initial begin
      a=30;
      b=60;
      c=a+b;
      $display("ADDITION:a=%d b=%d c=%d",a,b,s);

      a=60;
      b=30;
      c=a-b;
      $display("SUBTRACTION:a=%d b=%d c=%d",a,b,c);

      a=3;
      b=60;
      c=a*b;
      $display("MULTIPLICATION:a=%d b=%d c=%d",a,b,c);

      a=60;
      b=30;
      c=a/b;d b=%d c=%d",a,b,c);

      a=60;
      b=30;
      c=a%b;
      $display("MODULUS:a=%d b=%d c=%d",a,b,c);
    end
endmodule

/*
OUTPUT:-

 ADDITION:      a=30 b=60 c=90
 SUBTRACTION:   a=60 b=30 c=30
 MULTIPLICATION:a=3 b=60 c=180
 DIVISION:      a=60 b=30 c=2
 MODULUS:       a=60 b=30 c=0
*/
