module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);

    wire [7:0] avsb, cvsd;

    assign avsb = (a < b)? a : b;
    assign cvsd = (c < d)? c : d;
    assign min = (avsb < cvsd)? avsb : cvsd;

endmodule