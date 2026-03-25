module tb;
  integer num,i,j;
  reg prime_f;
    initial begin
      repeat(30)begin
        num=$urandom_range(1,30);
        $display("num=%0d",num);
       
        for(i=2;i<=num;i=i+1)begin
          prime_f=1;//is a prime number
         
          for(j=2;j<=i*0.5;j=j+1)begin
            if(i%j==0)begin
              prime_f=0;//is not a prime number
            end
          end
        end

        if(prime_f==1) $display("%0d is a prime_number",num);
        else $display("%0d is not a prime_number",num);
      end
    end
  endmodule

/*
output:
# num=2
# 2 is a prime_number
# num=3
# 3 is a prime_number
# num=27
# 27 is not a prime_number
# num=16
# 16 is not a prime_number
# num=9
# 9 is not a prime_number
# num=1
# 1 is not a prime_number
# num=11
# 11 is a prime_number
# num=29
# 29 is a prime_number
# num=15
# 15 is not a prime_number
# num=21
# 21 is not a prime_number
# num=21
# 21 is not a prime_number
# num=16
# 16 is not a prime_number
# num=29
# 29 is a prime_number
# num=8
# 8 is not a prime_number
# num=12
# 12 is not a prime_number
# num=28
# 28 is not a prime_number
# num=1
# 1 is not a prime_number
# num=23
# 23 is a prime_number
# num=25
# 25 is not a prime_number
# num=30
# 30 is not a prime_number
# num=21
# 21 is not a prime_number
# num=23
# 23 is a prime_number
# num=3
# 3 is a prime_number
# num=26
# 26 is not a prime_number
# num=13
# 13 is a prime_number
# num=13
# 13 is a prime_number
# num=23
# 23 is a prime_number
# num=28
# 28 is not a prime_number
# num=30
# 30 is not a prime_number
# num=19
# 19 is a prime_number
*/
            
