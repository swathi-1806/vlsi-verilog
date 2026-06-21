/*
1. always_comb
Used for combinational logic
============================================================
Equivalent Verilog:
always @(*) begin
    y = a & b;
end
============================================================
Rules
- No clock
- Executes whenever any RHS signal changes
- Compiler automatically creates sensitivity list

*/
module mux2x1 (
    input  bit a,
    input  bit b,
    input  bit sel,
    output bit y
);

always_comb begin
    if (sel)
        y = b;
    else
        y = a;
end

endmodule

module tb;

logic a;
logic b;
logic sel;
logic y;

mux2x1 dut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin

    a = 0; b = 0; sel = 0;
    #10;

    a = 0; b = 1; sel = 0;
    #10;

    a = 0; b = 1; sel = 1;
    #10;

    a = 1; b = 0; sel = 0;
    #10;

    a = 1; b = 0; sel = 1;
    #10;

    $finish;
end

initial begin
    $monitor("time=%0t a=%0b b=%0b sel=%0b y=%0b",
              $time,a,b,sel,y);
end

endmodule
