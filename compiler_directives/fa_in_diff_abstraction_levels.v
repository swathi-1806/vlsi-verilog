    module tb;
      reg a,b,cin;
    
      `ifdef BEHAVE reg sum,carry;
      `else wire sum, carry;
      `endif
    
      `ifdef DATAFLOW
          assign sum = a^b^cin;
          assign carry= a&b|b&cin|cin&a;
      
      		initial begin
                $display("------------------------");
                $display("Full Adder : DATAFLOW");
                $display("------------------------");
          end
              
      
      `elsif BEHAVE
            always @(*)begin
                sum = a^b^cin;
                carry= a&b|b&cin|cin&a;
             end
      
            initial begin
                  $display("------------------------");
                  $display("Full Adder : BEHAVE");
                  $display("------------------------");
            end
      
      
    	`elsif GATELEVEL
           	wire n1,n2,n3;
              xor g1(n1,a,b);
              xor g2(sum,cin,n1);
              and g3(n2,a,b);
              and g4(n3,cin,n1);
              or g5(carry,n2,n3);
      
            initial begin
       
              $display("------------------------");
              $display("Full Adder : GATELEVEL");
              $display("------------------------");
            end
    
    `endif
      
    initial begin
      repeat(10)begin
        {a,b,cin}=$random;
        #5;
        $display("a=%0d  b=%0d  cin=%0d  sum=%0d  carry=%0d",a,b,cin,sum,carry);
      end
    end
    endmodule

/*
how_to run:
vlog tb.v +define+DATAFLOW
vlog tb.v +define+BEHAVE
vlog tb.v +define+GATELEVEL
----------------------------------------
in eda:
+define+DATAFLOW
+define+BEHAVE
+define+GATELEVEL

=========================================
output:
# ------------------------
# Full Adder : GATELEVEL
# ------------------------
# a=1  b=0  cin=0  sum=1  carry=0
# a=0  b=0  cin=1  sum=1  carry=0
# a=0  b=0  cin=1  sum=1  carry=0
# a=0  b=1  cin=1  sum=0  carry=1
# a=1  b=0  cin=1  sum=0  carry=1
# a=1  b=0  cin=1  sum=0  carry=1
# a=1  b=0  cin=1  sum=0  carry=1
# a=0  b=1  cin=0  sum=1  carry=0
# a=0  b=0  cin=1  sum=1  carry=0
# a=1  b=0  cin=1  sum=0  carry=1
--------------------------------------------------
*/



    
