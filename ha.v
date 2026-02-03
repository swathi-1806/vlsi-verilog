 module half_adder(a,b,s,co);
 input a,b;
 output s,co;
 assign s=a^b;
 assign co=a&b;
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


