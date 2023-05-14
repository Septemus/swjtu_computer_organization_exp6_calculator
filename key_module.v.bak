module keymodule(
	input clk,
	input [3:0] KEY_R,
	output reg[3:0] KEY_C = 4'b0111,
	output reg[7:0] out= 8'hxx,
	input clr
//	output reg[2:0] press_times=3'b000
);
	reg [1:0] cnt = 2'b0;
	reg[4:0] num=5'd16;
	reg[31:0] count_num=32'b1;
//根据按钮的列扫描信号和行输入信号判断按钮是否被按下
always  @(posedge clk)
begin
//		if(S==3'b000)
//		begin
//			out<=16'h0000;
//		end
//		else
		if(clr)
		begin
			out<=16'h0000;
		end
		else
		begin
			cnt = cnt + 1'b1;
			case (cnt)
				2'b00:	KEY_C <= 4'b1110;
				2'b01:	KEY_C <= 4'b1101;
				2'b10:	KEY_C <= 4'b1011;
				2'b11:	KEY_C <= 4'b0111;         
			endcase
			if(KEY_R==4'b1111)
			begin
				num=5'd16;
			end
			else 
			begin 
				  case ({KEY_C, KEY_R})
					 
					 8'b1011_1110: num = 5'd0;
					 8'b0111_0111: num = 5'd1;
					 8'b1011_0111: num = 5'd2;
					 8'b1101_0111: num = 5'd3;
					 
					 8'b0111_1011: num = 5'd4;
					 8'b1011_1011: num = 5'd5;
					 8'b1101_1011: num = 5'd6;
					 8'b0111_1101: num = 5'd7;  
					 
					 8'b1011_1101: num = 5'd8;
					 8'b1101_1101: num = 5'd9;
					 8'b1110_0111: num = 5'd10;
					 8'b1110_1011: num = 5'd11;  
					 
					 8'b1110_1101: num = 5'd12;
					 8'b1110_1110: num = 5'd13;
					 8'b0111_1110: num = 5'd14;
					 8'b1101_1110: num = 5'd15;  
				  endcase
			end
			begin
				if(num == 5'b1_0000)
					begin
						if(count_num == 32'b0)begin
							count_num = 32'd100001;end
						count_num = count_num + 1'b1;
					end
				else if(count_num > 32'd100000)
					begin
						count_num = 32'b1;
					
						//移位
						begin
						out=out<<4;
						out[3:0] = num[3:0];
						end
					end
			end
			end
		
end
endmodule   