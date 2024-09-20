module top_module(
  input a,
  input b,
  input c,
  input d,
  output out  
);
  wire axorb, cxord;
  assign axorb = a ^ b;
  assign cxord = c ^ d;
  assign out = (~axorb & cxord) | (axorb & ~cxord);

endmodule
