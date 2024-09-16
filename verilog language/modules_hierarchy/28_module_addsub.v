module top_module(
  input [31:0] a,
  input [31:0] b,
  input sub,
  output [31:0] sum
);
  wire coutL, coutH;
  wire [31:0] bxor;

  assign bxor = b ^ {32{sub}};

  add16 addL(a[15:0], bxor[15:0], sub, sum[15:0], coutL);
  add16 addH(a[31:16], bxor[31:16], coutL, sum[31:16], coutH);

endmodule