module exp4(
	input clk,
	input [2:0]S,
	input cin,
	//input [3:0] KEY_R,
	input [15:0] operators,
	output exceed,
	//output [3:0] KEY_C = 4'b0111,
	output [15:0] ans,
	//output [31:0] N,
	//output [7:0] codeout,
	//output [2:0] sel,
	output [7:0] X,
	output [7:0] Y,
	output [7:0] alu_res
);
//wire clr;
//keymodule km(.clk(clk),.KEY_R(KEY_R),.KEY_C(KEY_C),.out(key_out),.clr(clr));
midware mw(operators,X,Y,clk);
assign N={X,Y,ans};
assign alu_res=ans[7:0];
//assign clr=( (S==3'b000)?1:0 );
//segment_displays sd(.clk(clk),.N(N),.seg(codeout),.sel(sel),.clr(clr));
manipulate man(clk,S,X,Y,cin,ans,exceed);
endmodule
