//write a verilog code for 3bit comparator using 1bit comparator

module comp_1bit(a,b,gt,lt,eq);
input a,b;
output gt,lt,eq;
assign gt=a&~b;
assign eq=~(a^b);
assign lt=~a&b;
endmodule


module bit3(a,b,lt,gt,eq);
input[2:0]a,b;
output gt,eq,lt;
wire gt2,gt1,gt0,lt2,ly1,lt0,eq2,eq1,eq0;
comp_1bit U1(.a(a[2]),.b(b[2]),.gt(gt2),.lt(lt2),.eq(eq2));
comp_1bit U2(.a(a[1]),.b(b[1]),.gt(gt1),.lt(lt1),.eq(eq1));
comp_1bit U3(.a(a[0]),.b(b[0]),.gt(gt0),.lt(lt0),.eq(eq0));

assign gt=gt2|(eq2&gt1)|(eq2&eq1&gt0);
assign lt=lt2|(eq2&lt1)|(eq2&eq1&lt0);
assign eq=eq2&eq1&eq0;
endmodule



//-->test bench
module top;
reg [2:0]a,b;
wire gt,lt,eq;
bit3 dut(a,b,lt,gt,eq);
initial begin
repeat (8)begin
{a,b}=$random;
#1;
$display("a=%b b=%b gt=%b lt=%b eq=%b",a,b,gt,lt,eq);
end
end
endmodule

/*output

  a=100 b=100 gt=0 lt=0 eq=1
# a=000 b=001 gt=0 lt=1 eq=0
# a=001 b=001 gt=0 lt=0 eq=1
# a=100 b=011 gt=1 lt=0 eq=0
# a=001 b=101 gt=0 lt=1 eq=0
# a=001 b=101 gt=0 lt=1 eq=0
# a=100 b=101 gt=0 lt=1 eq=0
# a=010 b=010 gt=0 lt=0 eq=1

*/
