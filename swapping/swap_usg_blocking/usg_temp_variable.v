//swapping using blocking nature with the help of temporary variable
module tb;
  int a,b,temp;
  initial begin
    a=3;
    b=7;
    $display("before swapping a=%0d   b=%0d",a,b);

    //swapping using temporary variable
    temp=a;
    a=b;
    b=temp;
    $display("after swapping a=%0d   b=%0d",a,b);
  end
endmodule

/*
output:
------------------------------------------
# before swapping a=3   b=7
# after swapping a=7   b=3
------------------------------------------
*/
