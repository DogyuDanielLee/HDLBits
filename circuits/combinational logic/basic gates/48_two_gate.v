module top_module (
  input in1,
  input in2,
  input in3,
  output out
);

  assign out = ((~ (in1 ^ in2)) ^ in3); // (in1 XNOR in2) XOR in3

endmodule
