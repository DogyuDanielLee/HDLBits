module top_module( 
  input [99:0] a, b,
  input cin,
  output [99:0] cout,
  output [99:0] sum 
);
  always @(*) begin
      for (integer i = 0; i < $bits(a); i++) begin
          if (i == 0) begin
              sum[i] = a[i] ^ b[i] ^ cin;
              cout[i] = (a[i] & b[i]) | (cin & (a[i] ^ b[i]));
          end
          else begin
              sum[i] = a[i] ^ b[i] ^ cout[i - 1];
              cout[i] = (a[i] & b[i]) | (cout[i - 1] & (a[i] ^ b[i]));
          end
      end
  end

endmodule
