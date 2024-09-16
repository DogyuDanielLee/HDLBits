module top_module( 
  input [99:0] in,
  output [99:0] out
);
  always @(*) begin
      for (integer i = 0; i < 100; i++)
          out[i] = in[99 - i];
  end

endmodule


// we could use system function $bits() 
// that returns the width of a signal
/*
always @(*) begin
    for (integer i = 0; i < $bits(in); i++)
        out[i] = in[$bits(in) - 1 - i];
end
*/