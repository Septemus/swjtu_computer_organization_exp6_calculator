module count_second(input clk,output reg[31:0] second_counter=32'h0000_0000);
always@(negedge clk)
	begin
		if(second_counter==32'd100000)
		second_counter <= 0;
		else 
		second_counter<=second_counter+1;
	end
endmodule
	