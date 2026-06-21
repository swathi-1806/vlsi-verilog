
/*
2. always_ff
Used for sequential logic (flip-flops).
If you accidentally write:
always_ff @(a or b)
Compiler will report an error because it is not a clocked event.
*/

module dff (
    input  bit clk,
    input  bit rst,
    input  bit d,
    output bit q
);

always_ff @(posedge clk) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d;
end
endmodule

module tb_dff;

bit clk;
bit rst;
reg d;
wire q;

dff dut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    d   = 0;
    #12 rst = 0;
    d = 1; #10;
    d = 0; #10;
    d = 1; #10;
    $finish;
end

initial begin
    $monitor("time=%0t clk=%0b rst=%0b d=%0b q=%0b",
              $time, clk, rst, d, q);
end
endmodule
