 module half_adder(a,b,s,co);
 input a,b;
 output s,co;
 assign s=a^b;
 assign co=a&b;
 endmodule

//testbench code
module top;
reg a,b;
wire s,co;
half_adder dut(a,b,s,co);
  initial begin
    repeat(10)begin
    {a,b}=$random;
	#1;
    $monitor("/t--> a=%b b=%b||sum=%b carry=%b",a,b,s,co);
    end
  end
endmodule


/* 
# /t--> a=0 b=1||sum=1 carry=0
# /t--> a=0 b=1||sum=1 carry=0
# /t--> a=1 b=1||sum=0 carry=1
# /t--> a=0 b=1||sum=1 carry=0
# /t--> a=0 b=1||sum=1 carry=0
# /t--> a=0 b=1||sum=1 carry=0
# /t--> a=1 b=0||sum=1 carry=0
# /t--> a=0 b=1||sum=1 carry=0
# /t--> a=0 b=1||sum=1 carry=0
# /t--> a=0 b=1||sum=1 carry=0
*/



