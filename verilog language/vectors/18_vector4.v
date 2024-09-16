// sign-extend 8-bit number to 32-bit
module top_module (
    input [7:0] in,
    output [31:0] out );//

    assign out = {{24{in[7]}}, in};

endmodule
