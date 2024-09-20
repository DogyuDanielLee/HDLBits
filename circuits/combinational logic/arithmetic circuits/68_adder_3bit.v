module top_module( 
  input [2:0] a, b,
  input cin,
  output [2:0] cout,
  output [2:0] sum 
);
  fadder_1bit zero(a[0], b[0], cin, cout[0], sum[0]);
  fadder_1bit one(a[1], b[1], cout[0], cout[1], sum[1]);
  fadder_1bit two(a[2], b[2], cout[1], cout[2], sum[2]);

endmodule

module fadder_1bit(
  input a, b, cin,
  output cout, sum
);

  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (cin & (a ^ b)); 

endmodule