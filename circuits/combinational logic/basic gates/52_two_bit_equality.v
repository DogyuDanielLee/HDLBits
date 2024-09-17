module top_module ( input [1:0] A, input [1:0] B, output z ); 

    always @(*) begin
        if (A == B) z = 1'b1;
        else z = 1'b0;
    end

endmodule

// without using verilog if-else 
// 'pure' combination logic version
/*
module top_module ( input [1:0] A, input [1:0] B, output z ); 

    wire na1, na0, nb1, nb0;
    assign na1 = ~A[1];
    assign na0 = ~A[0];    
    assign nb1 = ~B[1];
    assign nb0 = ~B[0];

    assign z = (na1 & na0 & nb1 & nb0) | (na1 & A[0] & nb1 & B[0]) | (A[1] & na0 & B[1] & nb0) | (A[1] & A[0] & B[1] & B[0]);

endmodule
*/