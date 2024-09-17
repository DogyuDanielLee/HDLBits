module top_module (input x, input y, output z);

    // equivalent to (x ^ y) & x, but more simple
    assign z = x & (~ y); 

endmodule
