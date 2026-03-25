module tb;
  initial begin
    $display("%0t-->entry_1",$time);     //0ns
    #5  $display("%0t-->entry_2",$time);  //5ns
    
    fork//(fork starts at 5ns)
    #8;
      $display("%0t-->entry_3",$time);    //(5+0=5ns)
      #1 $display("%0t-->entry_4",$time);  //(5+1=6ns)
      //--------this will run in sequentially-----starts at 5ns because begin_end is considered as one procedure
      begin
        #3 $display("%0t-->entry_5",$time);//(5+3=8ns)
        #5 $display("%0t-->entry_6",$time);//(8+5=13ns)
      end
    join
    //join strats after 13ns
    #3  $display("%0t-->entry_7",$time);//(13+3=16ns)
    #2 $display("%0t-->entry_8",$time); //(16+2=18ns)
      
  end
endmodule

/*
output:
-----------------------
# 0-->entry_1
# 5-->entry_2
# 5-->entry_3
# 6-->entry_4
# 8-->entry_5
# 13-->entry_6
# 16-->entry_7
# 18-->entry_8
------------------------
*/
