module top_module (
  input [31:0] a,
  input [31:0] b,
  output [31:0] sum
);
  wire cout1, cout2;

  add16 ADD_1(
      .a(a[15:0]),
      .b(b[15:0]),
      .cin(1'b0),
      .sum(sum[15:0]),
      .cout(cout1),
  );
  add16 ADD_2(
      .a(a[31:16]),
      .b(b[31:16]),
      .cin(cout1),
      .sum(sum[31:16]),
      .cout(cout2),
  );

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

  wire ab, axorb;

  assign ab = a & b;
  assign axorb = a ^ b;

  assign sum = axorb ^ cin;
  assign cout = ab | (cin & axorb); 

endmodule
