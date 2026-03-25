module tb;
  int a,b;
  initial begin
    a=10;
    b=20;
    $display("before swapping a=%0d  b=%0d",a,b);

    //swapping usin non_blocking nature
    a<=b;
    b<=a;
    #5; 
    $display("after swapping a=%0d  b=%0d",a,b);
  end
endmodule

/*
output:
------------------------------------------
# before swapping a=10  b=20
# after swapping  a=20  b=10
------------------------------------------
*/
