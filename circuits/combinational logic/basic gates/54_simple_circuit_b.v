/*
x y z
0 0 1
1 0 0
0 1 0
1 1 1
=> z = x XNOR y
*/

module top_module ( input x, input y, output z );

    assign z = ~ (x ^ y);

endmodule
