module exp5(
	input clk,
	input [1:0]RA,
	input wr,
	input rd,
	input [1:0]M,
	input clr,
	input [7:0] key_out,
	input [7:0] res_alu,
	output [7:0] R0,
	output [7:0] R1,
	output [7:0] R2,
	output [7:0] R3,
	output [7:0] PC
);
	wire [7:0] DATA_INPUT;
	assign DATA_INPUT=key_out;
	wire [31:0]second_counter;
	wire [7:0] X,Y;
	count_second cs (clk,second_counter);
	pc_function pf  (clk,clr,second_counter,DATA_INPUT,M,PC,Y,res_alu);
	reg_function rf (clk,wr,rd,RA,DATA_INPUT,R0,R1,R2,R3,X,res_alu);
endmodule
