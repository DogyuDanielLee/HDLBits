module top_module (
  input [3:0] x,
  input [3:0] y, 
  output [4:0] sum);

  wire cout[2:0];

  fadder_1bit zero(x[0], y[0], 1'b0, cout[0], sum[0]);
  fadder_1bit one(x[1], y[1], cout[0], cout[1], sum[1]);
  fadder_1bit two(x[2], y[2], cout[1], cout[2], sum[2]);
  fadder_1bit three(x[3], y[3], cout[2], sum[4], sum[3]);

endmodule

module fadder_1bit(
input a, b, cin,
output cout, sum
);

assign sum = a ^ b ^ cin;
assign cout = (a & b) | (cin & (a ^ b)); 

endmodule