module top_module ( input clk, input d, output q );
    
    wire clk_in;
    wire q1, q2, q3; 
    
    assign clk_in = clk; 
    
    my_dff dff1(.clk(clk_in), .d(d), .q(q1) );
    my_dff dff2(.clk(clk_in), .d(q1), .q(q2) );
    my_dff dff3(.clk(clk_in), .d(q2), .q(q3) );
    
    assign q = q3; 

endmodule