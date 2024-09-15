module top_module( input in, output out );

  assign out = ~in; // bitwise NOT ~ 
    // since 'in' is one-bit, we can even use the logical NOT ! to get the same result 
endmodule