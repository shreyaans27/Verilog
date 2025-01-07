module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] mux_q, q1, q2, add_q; 
    wire cout0, dummy1, dummy2; 
    
    add16 a0(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(add_q), .cout(cout0));
    add16 a1(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(q1), .cout(dummy1));
    add16 a2(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(q2), .cout(dummy2));
    
    always @(*) begin
        case(cout0)
            1'b0: mux_q = q1;
            1'b1: mux_q = q2;
            default: mux_q = 16'b0; 
        endcase
    end
  
    assign sum[31:0] = { mux_q[15:0], add_q[15:0]};
    

endmodule
