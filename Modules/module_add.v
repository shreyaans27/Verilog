module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire [15:0] out1, out2; 
    
    wire cin1, cout_f; 
    
    add16 add1(.a( a[15:0]), .b( b[15:0]), .cin(1'b0), .sum(out1), .cout(cin1));
    add16 add2(.a( a[31:16]), .b( b[31:16]), .cin(cin1), .sum(out2), .cout(cout_f));
    
    assign sum = {out2, out1};
    

endmodule
