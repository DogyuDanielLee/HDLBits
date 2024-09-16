// carry-select adder
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel, t0, t1;
    wire [15:0] addh0out, addh1out;

    add16 addL(a[15:0], b[15:0], 1'b0, sum[15:0], sel);
    add16 addH0(a[31:16], b[31:16], 1'b0, addh0out, t0);
    add16 addH1(a[31:16], b[31:16], 1'b1, addh1out, t1);

    always @(*) begin
        case (sel)
            1'b0: sum[31:16] = addh0out;
            1'b1: sum[31:16] = addh1out;
            default: sum[31:16] = addh0out; // just to be safe
        endcase
    end


endmodule
