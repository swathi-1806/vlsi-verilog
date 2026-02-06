module t_latch (
    input  T,
    output reg Q,
    output Qn
);

always @ (T) begin
    if (T == 1'b1)
        Q <= ~Q;   // Toggle
    // else hold
end

assign Qn = ~Q;

endmodule
//testbench code
module tb_t_latch;

reg T;
wire Q, Qn;

t_latch dut (
    .T(T),
    .Q(Q),
    .Qn(Qn)
);

initial begin
    $monitor("Time=%0t | T=%b | Q=%b Qn=%b", $time, T, Q, Qn);

    T = 0; #10;   // Hold
    T = 1; #10;   // Toggle
    T = 0; #10;   // Hold
    T = 1; #10;   // Toggle
    T = 1; #10;   // Toggle again

    $finish;
end

endmodule

