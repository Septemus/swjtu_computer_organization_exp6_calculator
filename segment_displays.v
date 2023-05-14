module segment_displays(clk,N,seg,sel);
	input clk;
	input [31:0] N;
	output reg [7:0] seg;
	output reg [2:0] sel;
	reg [3:0]num;
	always@(posedge clk)
	begin
		sel<=sel+1;
		
			case(sel)
				3'b110:num<=N[3:0];
				3'b101:num<=N[7:4];
				3'b100:num<=N[11:8];
				3'b011:num<=N[15:12];
				3'b010:num<=N[19:16];
				3'b001:num<=N[23:20];
				3'b000:num<=N[27:24];
				3'b111:num<=N[31:28];
			endcase
	end
	always@(num)
	begin
		case(num)
			4'b0000:seg<=8'b00111111;	//"0"
			4'b0001:seg<=8'b00000110;	//"1"
			4'b0010:seg<=8'b01011011;	//"2"
			4'b0011:seg<=8'b01001111;	//"3”
			4'b0100:seg<=8'b01100110;	//"4"
			4'b0101:seg<=8'b01101101;	//"5"
			4'b0110:seg<=8'b01111101;	//"6"
			4'b0111:seg<=8'b00000111;	//"8"
			4'b1000:seg<=8'b01111111;	//"8"
			4'b1001:seg<=8'b01101111;	//"9"
			4'b1010:seg<=8'b01110111;	//"A"
			4'b1011:seg<=8'b01111100;	//"b"
			4'b1100:seg<=8'b00111001;	//"c"
			4'b1101:seg<=8'b01011110;	//"d"
			4'b1110:seg<=8'b01111001;	//"E"
			4'b1111:seg<=8'b01110001;	//"F"
			default:seg<=8'b00000000;	//"dark"
		endcase
	end
endmodule

