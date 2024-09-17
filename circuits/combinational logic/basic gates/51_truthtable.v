// reduced solution using k-map
module top_module( 
  input x3,
  input x2,
  input x1, 
  output f
);

  assign f = ((~ x3) & x2) | (x3 & x1);

endmodule


// naive SOP
/*
module top_module( 
  input x3,
  input x2,
  input x1,  // three inputs
  output f   // one output
);
  
  wire nx1, nx2, nx3;

  assign nx1 = ~ x1; 
  assign nx2 = ~ x2; 
  assign nx3 = ~ x3;

  assign f = (nx3 & x2 & nx1) | (nx3 & x2 & x1) | (x3 & nx2 & x1) | (x3 & x2 & x1);

endmodule
*/