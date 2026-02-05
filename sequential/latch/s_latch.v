module sr_latch (
    input  s,
    input  r,
    output reg q
);

always @ (s or r) begin
    if (s && !r)
        q = 1'b1;      // Set
    else if (!s && r)
        q = 1'b0;      // Reset
    else if (!s && !r)
        q = q;         // Hold
    else
        q = 1'bx;      // Invalid condition (s=1, r=1)
end

endmodule

//testbench code
module tb_sr_latch;

reg s;
reg r;
wire q;

// Instantiate DUT
sr_latch uut (
    .s(s),
    .r(r),
    .q(q)
);

initial begin
    // Initial values
    s = 0; r = 0;

    #10 s = 1; r = 0;   // Set → q = 1
    #10 s = 0; r = 0;   // Hold
    #10 s = 0; r = 1;   // Reset → q = 0
    #10 s = 0; r = 0;   // Hold
    #10 s = 1; r = 1;   // Invalid → q = X
    #10 s = 0; r = 0;   // Hold previous

    #20 $finish;
end

endmodule



