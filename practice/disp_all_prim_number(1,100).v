//`define PRIME_NUMBERS
`define NON_PRIME_NUMBERS
module tb;
  integer num,i,j;
  reg prime_f;
    initial begin
      `ifdef PRIME_NUMBERS
      $display("prime_numbers between 0 to 100");
     `endif
      
      `ifdef NON_PRIME_NUMBERS
      $display(" non_prime_numbers between 0 to 100");
     `endif
      
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
            `ifdef PRIME_NUMBERS
          	    if(prime_f==1)begin
                  $write("%0d , ",num);
        		    end
            `endif
        
            `ifdef   NON_PRIME_NUMBERS
                if(prime_f==0)begin
                    $write("%0d , ",num);
        		    end
            `endif      		   
      end
    end
endmodule

/*
output:
# prime_numbers between 0 to 100
# 2 , 3 , 5 , 7 , 11 , 13 , 17 , 19 , 23 , 29 , 31 , 37 , 41 , 43 , 47 , 53 , 59 , 61 , 67 , 71 , 73 , 79 , 83 , 89 , 97 , exit
--------------------------------------------------------------------------------------------------------------------------------------------------------------
# non_prime_numbers between 0 to 100
# 0 , 1 , 4 , 6 , 8 , 9 , 10 , 12 , 14 , 15 , 16 , 18 , 20 , 21 , 22 , 24 , 25 , 26 , 27 , 28 , 30 , 32 , 33 , 34 , 35 , 36 , 38 , 39 , 40 , 42 , 44 , 45 , 46 , 48 , 49 , 50 , 51 , 52 , 54 , 55 , 56 , 57 , 58 , 60 , 62 , 63 , 64 , 65 , 66 , 68 , 69 , 70 , 72 , 74 , 75 , 76 , 77 , 78 , 80 , 81 , 82 , 84 , 85 , 86 , 87 , 88 , 90 , 91 , 92 , 93 , 94 , 95 , 96 , 98 , 99 , 100 , exit
*/
