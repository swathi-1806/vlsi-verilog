module tb;
  integer num,i,j;
  reg prime_f;
    initial begin
      $display("prime_numbers between 0 to 100");
      for(i=0;i<=100;i=i+1)begin
       	num=i;
        prime_f=1;
        
        if(num<2) prime_f=0;
        else begin
          
               for(j=2;j<=i*0.5;j=j+1)begin
                	if(i%j==0) 
                 	 prime_f=0;
               end
        end              			
          	if(prime_f==1)begin
                  $write("%0d , ",num);
        		end
         		   
      end
    end
endmodule

/*
output:
# prime_numbers between 0 to 100
# 2 , 3 , 5 , 7 , 11 , 13 , 17 , 19 , 23 , 29 , 31 , 37 , 41 , 43 , 47 , 53 , 59 , 61 , 67 , 71 , 73 , 79 , 83 , 89 , 97 , exit
*/
