module exp5(
	input clk,
	input [1:0]RA,
	input wr,
	input rd,
	input [1:0]M,
	input clr,
	input [3:0] KEY_R,
	input key_clr,
	output [3:0] KEY_C = 4'b0111,
	output [7:0] R0,
	output [7:0] R1,
	output [7:0] R2,
	output [7:0] R3,
	output [7:0] PC,
	output [2:0] sel,
	output [31:0] N,
	output [7:0]codeout
);
	wire [7:0] DATA_INPUT;
	wire [7:0] key_out;
	keymodule km(.clk(clk),.KEY_R(KEY_R),.KEY_C(KEY_C),.out(key_out),.clr(key_clr));
	segment_displays sd(.clk(clk),.N(N),.seg(codeout),.sel(sel));
	assign DATA_INPUT=key_out;
	wire [31:0]second_counter;
	wire [7:0] X,Y;
	assign N={X,16'h0000,Y};
	count_second cs(clk,second_counter);
	pc_function pf(clk,clr,second_counter,DATA_INPUT,M,PC,Y);
	reg_function rf(clk,wr,rd,RA,DATA_INPUT,R0,R1,R2,R3,X);
endmodule
