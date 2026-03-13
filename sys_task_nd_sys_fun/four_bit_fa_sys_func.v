module adder_4bit(input[3:0]a,b,input cin, output[3:0]sum,output cout);
  function [4:0]adder(input[3:0]x,y,input z);
    begin
      adder=x+y+z;
    end
  endfunction
  
  wire [4:0]result;
  assign result=adder(a,b,cin);
  assign sum=result[3:0];
  assign cout=result[4];
endmodule


module tb;
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire cout;
  
  wire [4:0]result;
  adder_4bit dut(a,b,cin,sum,cout);
  	initial begin
      repeat(5)begin
        {a,b,cin}=$random;
      
        #10;
        $display("a=%b  b=%b  cin=%b  sum=%B carry=%b",a,b,cin,sum,cout);
      end
    end
endmodule

