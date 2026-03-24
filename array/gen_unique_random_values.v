module tb;
  integer arr[9:0];
  integer i,j,value;
  reg exist_f;
    initial begin
      for(i=0;i<10;)begin
        value=$urandom_range(50,100);
        exist_f=0;
        for(j=0;j<=i;j=j+1)begin
          if(arr[j]==value)begin 
            exist_f=1;
            j=i;
          end
        end
        if(exist_f==0)begin
          arr[i]=value;
          i=i+1;
        end
      end
      for(i=0;i<10;i=i+1)begin
        $display("arr[%od]=%0d",i,arr[i]);
      end
    end
      
endmodule


/*
output:
==========

# arr[0]=72
# arr[1]=91
# arr[2]=85
# arr[3]=98
# arr[4]=79
# arr[5]=53
# arr[6]=87
# arr[7]=67
# arr[8]=64
# arr[9]=73
*/
          
