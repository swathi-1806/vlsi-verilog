
`define VALUE 20

module tb;
  integer arr[`VALUE-1:0];
  integer i;
      initial begin
        for(i=0;i<`VALUE;i=i+1)begin
          arr[i]=$urandom_range(20,50);
          $display("arr[%0d]=%0d",i,arr[i]);
        end
      end
endmodule

/*
output:
-----------------------------------------
# arr[0]=46
# arr[1]=30
# arr[2]=34
# arr[3]=43
# arr[4]=25
# arr[5]=37
# arr[6]=25
# arr[7]=49
# arr[8]=33
# arr[9]=23
# arr[10]=43
# arr[11]=20
# arr[12]=37
# arr[13]=37
# arr[14]=49
# arr[15]=39
# arr[16]=33
# arr[17]=31
# arr[18]=35
# arr[19]=30
-----------------------------------------
*/
