module RiscV
(
	input a,
	input b,
	output c,
	output d
);

assign c = a | b;
assign d = a & b;

endmodule