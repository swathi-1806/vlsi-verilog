module tb;
  event e1,e2,e3,e4,e5;
  initial begin
    @e5
    $display("telugu");
  end
  initial begin
    @e1;
    $display("hindi");
    ->e2;
  end
  initial begin
    $display("english");
    ->e1;
  end
  initial begin
    @e2;
    $display("maths");
    ->e3;
  end
  initial begin
    @e3;
    $display("science");
    ->e4;
  end
  initial begin
    @e4;
    $display("social");
    ->e5;
  end
endmodule

/*
output:
# english
# hindi
# maths
# science
# social
# telugu
*/
