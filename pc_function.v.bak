module pc_function(input clk,input clr,input [31:0]second_counter,input [7:0]DATA_INPUT,input [1:0]M,output reg[7:0]PC,output reg[7:0] Y);
always@(negedge clk or posedge clr)
	begin
		if(clr)
		begin
			PC<=8'h00;
		end
		else if(!clk)
		begin
			case(M)
				2'b00:
				begin 
					if(!second_counter) PC<=PC+1;
				end
				2'b01:
				begin 
					if(!second_counter) PC<=PC-1;
				end
				2'b10:
					begin
						PC<=DATA_INPUT;
					end
				default:
				begin 
					if(!second_counter) PC<=PC+1;
				end
			endcase
			Y<=PC;		
		end
	end
endmodule
