module page_switch(
	input clk,
	input [2:0]switch_buttons,
	input [7:0]R0,
	input [7:0]R1,
	input [7:0]R2,
	input [7:0]R3,
	input [7:0]pc,
	input [31:0]alu_N,
	output reg[31:0] N,
	output reg[1:0] status
);
	//reg status[1:0]=2'b00;
	initial
	begin
		status<=2'b00;
	end
	always@(posedge clk)
	begin
		//N<={R0,R1,R2,R3};
		casex(switch_buttons)
			3'bxx0: status<=2'b00;
			3'bx01: status<=2'b01;
			3'b011: status<=2'b10;
			default: status<=status;
		endcase
		case(status)
			2'b00:N<={R0,R1,R2,R3};
			2'b01:N<={24'h000000,pc};
			2'b10:N<=alu_N;
		endcase
	end
endmodule
