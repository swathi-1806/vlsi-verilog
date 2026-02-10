//half adder in dataflow method

module half_adder(a,b,sum,carry);
input a,b;
output sum,carry;
assign sum=a^b;
assign carry=a&b;
endmodule



//testbench code
module top;
     reg a,b;
     wire sum,carry;
	 half_adder dut(a,b,sum,carry);
   initial begin
      repeat(10)begin
        {a,b}=$random;
        #1;
        $display("\t a=%0b,b=%0b,sum=%0b,carry=%0b",a,b,sum,carry);
      end
   end
endmodule
