module jk_latch (
    input  J,
    input  K,
    output reg Q,
    output Qn
);

always @ (J or K) begin
    case ({J, K})
        2'b00: Q <= Q;        // Hold
        2'b01: Q <= 1'b0;     // Reset
        2'b10: Q <= 1'b1;     // Set
        2'b11: Q <= ~Q;       // Toggle
    endcase
end

assign Qn = ~Q;

endmodule
//testbench
module tb_jk_latch;

reg J, K;
wire Q, Qn;

jk_latch dut (
    .J(J),
    .K(K),
    .Q(Q),
    .Qn(Qn)
);

initial begin
    $monitor("Time=%0t | J=%b K=%b | Q=%b Qn=%b", $time, J, K, Q, Qn);

    J = 0; K = 0;  #10;  // Hold
    J = 1; K = 0;  #10;  // Set
    J = 0; K = 0;  #10;  // Hold
    J = 0; K = 1;  #10;  // Reset
    J = 1; K = 1;  #10;  // Toggle
    J = 1; K = 1;  #10;  // Toggle again

    $finish;
end

endmodule

