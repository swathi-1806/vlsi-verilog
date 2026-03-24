module tb;
  event e1,e2;
  initial begin
    @e1;
    $display("entry-1");
    ->e2;
  end
  initial begin
    @e2;
    $display("entry-2");
    $display("all entries are completed");
  end
  initial begin
    $display("entry-3");
    ->e1;
  end
endmodule

/*
output:
# run -all
# entry-3
# entry-1
# entry-2
# all entries are completed
*/
    
