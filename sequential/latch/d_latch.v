module d_latch (
    input  d,
    input  en,
    output reg q
);

always @ (d or en) begin
    if (en)
        q = d;
    // else: q holds its previous value
end

endmodule
//testbench code
module tb_d_latch;

reg d;
reg en;
wire q;

// Instantiate the DUT (Device Under Test)
d_latch uut (
    .d(d),
    .en(en),
    .q(q)
);

initial begin
    // Initialize signals
    d  = 0;
    en = 0;

    #10 d = 1;        // en=0, q should not change
    #10 en = 1;       // latch opens, q follows d
    #10 d = 0;        // q updates
    #10 d = 1;        // q updates
    #10 en = 0;       // latch closes
    #10 d = 0;        // q should HOLD previous value
    #10 d = 1;        // still holds
    #10 en = 1;       // latch opens again
    #10 d = 0;        // q updates

    #20 $finish;
end

endmodule

