module subtractor(
  input[3:0]x,
  input [3:0]y,
  input [3:0]z,
  output [6:0]borrow,
  output [6:0]diff );
  assign diff=x^y^z;
  assign borrow=(~x&y) + (~(x^y)&z);
endmodule
