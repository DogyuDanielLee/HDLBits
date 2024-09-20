module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );

    assign {cout, sum} = a + b + {99'd0, cin}; 

endmodule