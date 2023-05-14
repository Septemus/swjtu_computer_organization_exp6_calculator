module midware(
	input [15:0]key_out,
	output reg [7:0] X,
	output reg [7:0] Y,
	input clk
);
	always@(posedge clk)
	begin
		X<=key_out[15:8];
		Y<=key_out[7:0];
	end
endmodule
