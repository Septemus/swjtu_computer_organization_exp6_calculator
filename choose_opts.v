module choose_opts(
input clk,
	input [7:0]R0,
	input [7:0]R1,
	input [7:0]R2,
	input [7:0]R3,
	input [7:0]PC,
	input flag,
	input [4:0] choose_reg,
	output [15:0] res
);
	reg [7:0]opt1,opt2;
	initial
	begin
		opt1<=8'b0000_0000;
		opt2<=8'b0000_0000;
	end
	always@(posedge clk)
	begin
		if(!flag)
		begin
			case(choose_reg)
				5'b11110:opt1<=R0;
				5'b11101:opt1<=R1;
				5'b11011:opt1<=R2;
				5'b10111:opt1<=R3;
				5'b01111:opt1<=PC;
				default: opt1<=opt1;
			endcase
		end
		else
		begin
			case(choose_reg)
				5'b11110:opt2<=R0;
				5'b11101:opt2<=R1;
				5'b11011:opt2<=R2;
				5'b10111:opt2<=R3;
				5'b01111:opt2<=PC;
				default: opt2<=opt2;
			endcase
		end
	end
	assign res={opt1,opt2};
endmodule
