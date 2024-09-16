/*
reduction operands
- can create a wide gate that operates on all of the bits of one vector
- note that this is a unary operator
- can also use with not(~) to make NAND(~&), NOR(~|), XNOR(~^)

example
& a[3:0] <=> AND: a[3]&a[2]&a[1]&a[0] <=> (a[3:0] == 4'hf)
| b[3:0] <=> OR: b[3]|b[2]|b[1]|b[0] <=> (b[3:0] != 4'h0)
^ c[2:0] <=> XOR: c[2]^c[1]^c[0]
*/

module top_module (
    input [7:0] in,
    output parity); 

    assign parity = ^ in[7:0];

endmodule