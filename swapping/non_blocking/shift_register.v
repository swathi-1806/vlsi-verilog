module shift_reg(
    input  wire clk,
    input  wire rst,
    input  wire d,
    output reg  q1,
    output reg  q2
);

always @(posedge clk) begin
    if (rst) begin
        q1 <= 0;
        q2 <= 0;
    end
    else begin
        q1 <= d;
        q2 <= q1;
    end
end

endmodule

module tb;

reg clk;
reg rst;
reg d;

wire q1;
wire q2;

shift_reg dut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q1(q1),
    .q2(q2)
);

// Clock Generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Stimulus
initial begin
    rst = 1;
    d   = 0;

    #12 rst = 0;

    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;

    #20 $finish;
end

// Monitor
initial begin
    $monitor("T=%0t rst=%b d=%b q1=%b q2=%b",
              $time, rst, d, q1, q2);
end

endmodule

/*
# T=0 rst=1 d=0 q1=x q2=x
# T=5 rst=1 d=0 q1=0 q2=0
# T=12 rst=0 d=0 q1=0 q2=0
# T=22 rst=0 d=1 q1=0 q2=0
# T=25 rst=0 d=1 q1=1 q2=0
# T=32 rst=0 d=0 q1=1 q2=0
# T=35 rst=0 d=0 q1=0 q2=1
# T=42 rst=0 d=1 q1=0 q2=1
# T=45 rst=0 d=1 q1=1 q2=0
# T=55 rst=0 d=1 q1=1 q2=1
*/
