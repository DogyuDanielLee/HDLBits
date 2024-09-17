// 100-digit Binary-Coded Decimal Ripple-Carry Adder
module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum 
);

    wire [100:0] cout_temp;
    genvar i;

    generate 
        for (i = 0; i < 100; i++) begin : genblock
            if (i == 0) begin
                bcd_fadd adder(
                    a[i * 4 + 3:i * 4],
                    b[i * 4 + 3:i * 4], 
                    cin, 
                    cout_temp[i], 
                    sum[i * 4 + 3:i * 4]
                );
            end
            else begin
                bcd_fadd adder(
                    a[i * 4 + 3:i * 4],
                    b[i * 4 + 3:i * 4], 
                    cout_temp[i - 1], 
                    cout_temp[i], 
                    sum[i * 4 + 3:i * 4]
                );
            end
        end
    endgenerate

    assign cout = cout_temp[99];

endmodule
