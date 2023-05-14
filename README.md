> # 0 关于

欢迎到我的博客文章查看更多内容😄：
https://septemusblog.space/computer_organization_exp6/



> # 1 实验内容

设计运算器，将算术逻辑单元和寄存器组集成

> # 2 代码/原理图

> ## 2.1 顶层文件

<img src="/images/exp6_bdf.png" width="80%">

> ## 2.2 ALU模块

```Verilog
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

```

> ## 2.3 ALU的运算功能

```Verilog
module manipulate(

	input clk,
	input [2:0]S,
	input [7:0]X,
	input [7:0]Y,
	input cin,
	output reg[15:0]ans,
	output reg exceed
	);
	initial
	begin
		ans<=8'h00;
	end
	always@(posedge clk)
	begin
			case(S)
				3'b000:ans<=16'b0000_0000_0000_0000;
				3'b001:ans<={8'b0000_0000,X&Y};
				3'b010:ans<={8'b0000_0000,X|Y};
				3'b011:ans<={8'b0000_0000,X^Y};
				3'b100:
				begin 
					ans<=X+Y+cin;
				end
				3'b101:ans<={8'b0000_0000,X[6:0],1'b0};
				3'b110:ans<={8'b0000_0000,1'b0,X[7:1]};
				3'b111:ans<={8'b0000_0000,((X>>7)&1)?1:0,X[7:1]};
			endcase
	end
	always@(posedge clk)
	begin
		if(S==3'b100)
		begin
			if( ans[8]^ans[7] ) exceed<=1;
			else exceed<=0;
		end
		else exceed<=0;
	end
endmodule

```

> ## 2.4 ALU的中间件
```Verilog
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

```

> ## 2.5 寄存器组
```Verilog
module exp5(
	input clk,
	input [1:0]RA,
	input wr,
	input rd,
	input [1:0]M,
	input clr,
	input [7:0] key_out,
	input [7:0] res_alu,
	output [7:0] R0,
	output [7:0] R1,
	output [7:0] R2,
	output [7:0] R3,
	output [7:0] PC
);
	wire [7:0] DATA_INPUT;
	assign DATA_INPUT=key_out;
	wire [31:0]second_counter;
	wire [7:0] X,Y;
	count_second cs (clk,second_counter);
	pc_function pf  (clk,clr,second_counter,DATA_INPUT,M,PC,Y,res_alu);
	reg_function rf (clk,wr,rd,RA,DATA_INPUT,R0,R1,R2,R3,X,res_alu);
endmodule

```

> ## 2.6 寄存器组的计时器
```Verilog
module count_second(input clk,output reg[31:0] second_counter=32'h0000_0000);
always@(negedge clk)
	begin
		if(second_counter==32'd100000)
		second_counter <= 0;
		else 
		second_counter<=second_counter+1;
	end
endmodule
	
```
> ## 2.7 寄存器组的通用寄存器
```Verilog
module reg_function(
	input clk,
	input wr,
	input rd,
	input [1:0] RA,
	input [7:0] DATA_INPUT,
	output reg[7:0]R0,
	output reg[7:0]R1,
	output reg[7:0]R2,
	output reg[7:0]R3,
	output reg[7:0]X,
	input [7:0] res_alu
);
always@(negedge clk)
	begin
		case(RA)
				2'b00:
				begin
					X<=R0;
					if(wr==0&&rd==1)
					begin
						R0<=DATA_INPUT;
					end
					else if(wr==1&&rd==1)
					begin
						R0<=res_alu;
					end
				end
				2'b01:
				begin
					X<=R1;
					if(wr==0&&rd==1)
					begin
						R1<=DATA_INPUT;
					end
					else if(wr==1&&rd==1)
					begin
						R1<=res_alu;
					end
				end
				2'b10:
				begin
					X<=R2;
					if(wr==0&&rd==1)
					begin
						R2<=DATA_INPUT;
					end
					else if(wr==1&&rd==1)
					begin
						R2<=res_alu;
					end
				end
				2'b11:
				begin
					X<=R3;
					if(wr==0&&rd==1)
					begin
						R3<=DATA_INPUT;
					end
					else if(wr==1&&rd==1)
					begin
						R3<=res_alu;
					end
				end
			endcase
	end
	endmodule
	 
```
> ## 2.8 PC寄存器
```Verilog
module pc_function(input clk,input clr,input [31:0]second_counter,input [7:0]DATA_INPUT,input [1:0]M,output reg[7:0]PC,output reg[7:0] Y
,input [7:0] res_alu
);
always@(negedge clk or negedge clr)
	begin
		if(!clr)
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
				2'b11:
					begin 
						PC<=res_alu;
					end
			endcase
			Y<=PC;		
		end
	end
endmodule
```
> ## 2.9 数码管
```Verilog
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


```
> ## 2.10 矩阵键盘
```Verilog
module keymodule(
	input clk,
	input [3:0] KEY_R,
	output reg[3:0] KEY_C = 4'b0111,
	output reg[7:0] out= 8'hxx,
	input key_clr
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
		if(!key_clr)
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
```

> ## 2.11 操作数选择器

```Verilog
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

```

> ## 2.12 选择数码管要显示的内容
```Verilog
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

```

> # 3 引脚分配

<img src="/images/pin6_1.png" width="80%">
<img src="/images/pin6_2.png" width="80%">

> # 4 仿真波形

<img src="/images/wvf6.png" width="80%">
