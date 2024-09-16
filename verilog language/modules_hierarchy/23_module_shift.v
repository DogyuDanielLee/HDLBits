module top_module ( input clk, input d, output q );

    wire w1, w2, w3;

    my_dff(clk, d, w1);
    my_dff(clk, w1, w2);
    my_dff(clk, w2, w3);
    assign q = w3;

endmodule