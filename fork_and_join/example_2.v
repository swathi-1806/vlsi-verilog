module top;
  initial begin
    $display("%0t-->entry1",$time);      //0ns
    #5  $display("%0t-->entry2",$time); //5ns
    //(fork starts at 5ns)
    fork
      #2;
      #8 $display("%0t-->entry3",$time); //(5+8)=13ns
      #1 $display("%0t-->entry4",$time); //(5+1)=6ns
      $display("%0t-->entry5",$time);	 //(5+0)5ns
      #5 $display("%0t-->entry6",$time); //(5+5)=10ns
      //fork ends at 13ns
    join
    //join strts after 13ns
    #3 $display("%0t-->entry7",$time);//(13+3=16)
    #2 $display("%0t-->entry8",$time);//(16+2=18)
  end
endmodule

/*
output:
------------------------
# 0-->entry1
# 5-->entry2
# 5-->entry5
# 6-->entry4
# 10-->entry6
# 13-->entry3
# 16-->entry7
# 18-->entry8
-------------------------
*/
