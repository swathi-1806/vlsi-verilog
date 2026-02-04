

module encoder_nbit (a,y);
parameter N = 3  ;      
input  [2**N-1:0] a;                      
output reg [N-1:0] y;
    integer i;
    always @(*) begin
        y = 0;
        for (i = 0; i < (1 << N); i = i + 1) begin
            if (a[i]) 
                y = i[N-1:0];
        end
    end
endmodule



module tb_encoder_nbit;
    parameter N = 3;
    reg  [2**N-1:0] a;
    wire [N-1:0] y;

    encoder_nbit #(N) dut (.a(a), .y(y));

    initial begin
        $monitor("Time=%0t | a=%b | y=%b", $time, a, y);
        a = 8'b00000001; #5;
        a = 8'b00000010; #5;
        a = 8'b00000100; #5;
        a = 8'b00001000; #5;
        a = 8'b00010000; #5;
        a = 8'b00100000; #5;
        a = 8'b01000000; #5;
        a = 8'b10000000; #5;
        $finish;
    end
endmodule


/*
 	--> a=10000000 y=000
# 	--> a=00000001 y=111
# 	--> a=00100000 y=010
# 	--> a=00010000 y=011
# 	--> a=00001000 y=100
# 	--> a=11111111 y=111
# 	--> a=01100010 y=110
# 	--> a=10001010 y=110
# 	--> a=00000000 y=xxx
*/
