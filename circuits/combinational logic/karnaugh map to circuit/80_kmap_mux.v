module top_module (
  input c,
  input d,
  output [3:0] mux_in
); 
  assign mux_in[0] = c | d; // c? 1: d
  assign mux_in[1] = 1'b0;
  assign mux_in[2] = ~d; // d? 0 : 1;
  assign mux_in[3] = c & d; // c? d : 0;

endmodule
