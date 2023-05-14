module exp4(
	input clk,
	input [2:0]S,
	input cin,
	input [15:0] operators,
	output exceed,
	output [15:0] ans,
	output [7:0] X,
	output [7:0] Y,
	output [7:0] alu_res
);
midware mw(operators,X,Y,clk);
assign N={X,Y,ans};
assign alu_res=ans[7:0];
manipulate man(clk,S,X,Y,cin,ans,exceed);
endmodule
