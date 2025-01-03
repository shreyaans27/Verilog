module top_module ( input a, input b, output out );

    wire out1, in1, in2; 
    
    mod_a a1 ( .out(out1), .in1(in1), .in2(in2));
    
    assign out = out1;
    assign in2 = b;
    assign in1 = a;
endmodule


//OR


module top_module ( input a, input b, output out );

    mod_a a1 ( .out(out), .in1(a), .in2(b));

endmodule
