module tb;
  int a,b;
  initial begin
    a=10;
    b=20;
    $display("before swapping a=%0d  b=%0d",a,b);

    //swapping without using temp variable
    a=a+b;//(now a value becomes 30)
    b=a-b; //(now b=(30-20=10) so b=10)
    a=a-b;  //(a=30-10=20)
    $display("after swapping a=%0d  b=%0d",a,b);
  end
endmodule

/*
output:
------------------------------
# before swapping a=10  b=20
# after swapping a=20  b=10
------------------------------
*/
