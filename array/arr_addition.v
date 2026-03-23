//declare 3 arrays and then randomize the two arrays of data and then add the 2 arrays of data and give it to third array
module top;
  integer arrA[7:0];
  integer arrB[7:0];
  integer arrC[15:0];
  integer i;
    initial begin
      for(i=0;i<8;i=i+1)begin
        arrA[i]=$urandom_range(10,20);
        arrB[i]=$urandom_range(50,100);
        arrC[i]=arrA[i]+arrB[i];
        $display("arrA[%0d]=%0d + arrB[%0d]=%0d==arrC[%0d]=%0d",i,arrA[i],i,arrB[i],i,arrC[i]);
      end
    end
endmodule

/*
output:

# arrA[0]=15 + arrB[0]=91==arrC[0]=106
# arrA[1]=17 + arrB[1]=98==arrC[1]=115
# arrA[2]=19 + arrB[2]=53==arrC[2]=72
# arrA[3]=11 + arrB[3]=87==arrC[3]=98
# arrA[4]=20 + arrB[4]=64==arrC[4]=84
# arrA[5]=20 + arrB[5]=65==arrC[5]=85
# arrA[6]=11 + arrB[6]=54==arrC[6]=65
# arrA[7]=12 + arrB[7]=89==arrC[7]=101

*/
