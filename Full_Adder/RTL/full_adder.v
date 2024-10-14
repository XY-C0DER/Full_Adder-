module full_adder
(
	input wire in1,
	input wire in2,
	input wire cin,
	
	output wire sum,
	output wire carry
);

wire h0_sum;
wire h0_carry;
wire h1_carry;

half_adder	half_adder_inst0
(
	.in1(in1),
	.in2(in2),
	
	
	.sum(h0_sum),
	.carry(h0_carry)
);

half_adder	half_adder_inst1
(
	.in1(cin),
	.in2(h0_sum),
	
	.sum(sum),
	.carry(h1_carry)
);

assign carry = (h0_carry|h1_carry);
endmodule