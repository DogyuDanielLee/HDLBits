//    a b c d e f 11
// => w x y z
module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );

    assign w = {a, b[4:2]}; // concat 5 bit, 3 bit 
    assign x = {b[1:0], c, d[4]}; // concat 2 bit, 5 bit, 1 bit
    assign y = {d[3:0], e[4:1]}; // concat 4 bit, 4 bit
    assign z = {e[0], f, 2'b11}; // concat 1 bit, 5 bit, 2bit

endmodule
