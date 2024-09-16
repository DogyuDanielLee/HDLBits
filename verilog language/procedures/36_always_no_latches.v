module top_module (
  input [15:0] scancode,
  output reg left,
  output reg down,
  output reg right,
  output reg up
); 

  always @(*) begin
      // default for preventing latches
      left = 1'b0; down = 1'b0; right = 1'b0; up = 1'b0;

      // below code will overwrite correct register
      case (scancode)
          16'he06b: left = 1'b1;
          16'he072: down = 1'b1;
          16'he074: right = 1'b1;
          16'he075: up = 1'b1;
          // no default case needed
      endcase
  end

endmodule