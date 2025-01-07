module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    wire dummy1, mid_c; 
    wire [15:0] out0, out1;
    wire [31:0] mod_b;
    
    assign mod_b = b ^ {32{sub}}; 
    
    add16 a0(.a(a[15:0]), .b(mod_b[15:0]), .cin(sub), .sum(out0), .cout(mid_c));
    add16 a1(.a(a[31:16]), .b(mod_b[31:16]), .cin(mid_c), .sum(out1), .cout(dummy1));
    
    assign sum[31:0] = {out1[15:0], out0[15:0]};

endmodule
