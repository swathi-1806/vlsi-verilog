module top;
  reg[2:0] arr[7:0];
  integer i;
      initial begin
        for(i=0;i<8;i=i+1)begin
          arr[i]=$random;
          $display("arr[%0d]=%0d",i,arr[i]);
        end
      end
endmodule

/*
output:

# arr[0]=4
# arr[1]=1
# arr[2]=1
# arr[3]=3
# arr[4]=5
# arr[5]=5
# arr[6]=5
# arr[7]=2
*/
