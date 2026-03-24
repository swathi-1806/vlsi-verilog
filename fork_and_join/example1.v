module tb;
  initial begin
    $display("%0t-->start of entry",$time);
    #2;
    $display("%0t-->entry-1",$time);
      #1;
    $display("%0t-->entry-2",$time);
    #3 $display("%0t-->entry-3",$time);
    $display("%0t-->entry-4",$time);
  end
  initial begin
  $display("%0t-->end of entry",$time);
  end
endmodule

/*
output:
# 0-->start of entry
# 0-->end of entry
# 2-->entry-1
# 3-->entry-2
# 6-->entry-3
# 6-->entry-4
*/
