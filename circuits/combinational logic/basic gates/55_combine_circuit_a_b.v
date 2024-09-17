module top_module (input x, input y, output z);

    wire a_out, b_out;

    assign a_out = x & (~ y);
    assign b_out = ~ (x ^ y);

    assign z = (a_out | b_out) ^ (a_out & b_out);
        
endmodule
