-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "05/14/2023 17:34:33"

-- 
-- Device: Altera EP3C40F780C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exp6 IS
    PORT (
	exceed : OUT std_logic;
	clk : IN std_logic;
	cin : IN std_logic;
	flag : IN std_logic;
	cr : IN std_logic_vector(4 DOWNTO 0);
	PC : OUT std_logic_vector(7 DOWNTO 0);
	wr : IN std_logic;
	rd : IN std_logic;
	pc_clr : IN std_logic;
	keyout : IN std_logic_vector(7 DOWNTO 0);
	M : IN std_logic_vector(1 DOWNTO 0);
	RA : IN std_logic_vector(1 DOWNTO 0);
	R0 : OUT std_logic_vector(7 DOWNTO 0);
	R1 : OUT std_logic_vector(7 DOWNTO 0);
	R2 : OUT std_logic_vector(7 DOWNTO 0);
	R3 : OUT std_logic_vector(7 DOWNTO 0);
	S : IN std_logic_vector(2 DOWNTO 0);
	switch_buttons : IN std_logic_vector(2 DOWNTO 0)
	);
END exp6;

-- Design Ports Information
-- exceed	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[5]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[2]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[1]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[7]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[5]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[4]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[1]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[6]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[5]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[4]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[0]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[4]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_buttons[2]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_buttons[1]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_buttons[0]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyout[7]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_clr	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyout[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyout[5]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyout[4]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyout[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyout[2]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyout[1]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keyout[0]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cr[2]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cr[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cr[1]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cr[3]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cr[4]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exp6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_exceed : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_flag : std_logic;
SIGNAL ww_cr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_wr : std_logic;
SIGNAL ww_rd : std_logic;
SIGNAL ww_pc_clr : std_logic;
SIGNAL ww_keyout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_R0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_switch_buttons : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch_buttons[2]~input_o\ : std_logic;
SIGNAL \switch_buttons[1]~input_o\ : std_logic;
SIGNAL \switch_buttons[0]~input_o\ : std_logic;
SIGNAL \exceed~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \R0[7]~output_o\ : std_logic;
SIGNAL \R0[6]~output_o\ : std_logic;
SIGNAL \R0[5]~output_o\ : std_logic;
SIGNAL \R0[4]~output_o\ : std_logic;
SIGNAL \R0[3]~output_o\ : std_logic;
SIGNAL \R0[2]~output_o\ : std_logic;
SIGNAL \R0[1]~output_o\ : std_logic;
SIGNAL \R0[0]~output_o\ : std_logic;
SIGNAL \R1[7]~output_o\ : std_logic;
SIGNAL \R1[6]~output_o\ : std_logic;
SIGNAL \R1[5]~output_o\ : std_logic;
SIGNAL \R1[4]~output_o\ : std_logic;
SIGNAL \R1[3]~output_o\ : std_logic;
SIGNAL \R1[2]~output_o\ : std_logic;
SIGNAL \R1[1]~output_o\ : std_logic;
SIGNAL \R1[0]~output_o\ : std_logic;
SIGNAL \R2[7]~output_o\ : std_logic;
SIGNAL \R2[6]~output_o\ : std_logic;
SIGNAL \R2[5]~output_o\ : std_logic;
SIGNAL \R2[4]~output_o\ : std_logic;
SIGNAL \R2[3]~output_o\ : std_logic;
SIGNAL \R2[2]~output_o\ : std_logic;
SIGNAL \R2[1]~output_o\ : std_logic;
SIGNAL \R2[0]~output_o\ : std_logic;
SIGNAL \R3[7]~output_o\ : std_logic;
SIGNAL \R3[6]~output_o\ : std_logic;
SIGNAL \R3[5]~output_o\ : std_logic;
SIGNAL \R3[4]~output_o\ : std_logic;
SIGNAL \R3[3]~output_o\ : std_logic;
SIGNAL \R3[2]~output_o\ : std_logic;
SIGNAL \R3[1]~output_o\ : std_logic;
SIGNAL \R3[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \M[0]~input_o\ : std_logic;
SIGNAL \inst21|pf|PC[0]~8_combout\ : std_logic;
SIGNAL \keyout[0]~input_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \rd~input_o\ : std_logic;
SIGNAL \inst21|rf|R0~7_combout\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \inst21|rf|Decoder0~0_combout\ : std_logic;
SIGNAL \cr[1]~input_o\ : std_logic;
SIGNAL \cr[2]~input_o\ : std_logic;
SIGNAL \inst18|opt2[0]~1_combout\ : std_logic;
SIGNAL \cr[0]~input_o\ : std_logic;
SIGNAL \inst18|opt2[0]~0_combout\ : std_logic;
SIGNAL \inst21|rf|R1[0]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|Decoder0~1_combout\ : std_logic;
SIGNAL \inst21|rf|R2[0]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|Decoder0~2_combout\ : std_logic;
SIGNAL \inst18|Selector7~0_combout\ : std_logic;
SIGNAL \inst18|Selector7~1_combout\ : std_logic;
SIGNAL \inst18|opt2[0]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|Decoder0~3_combout\ : std_logic;
SIGNAL \cr[3]~input_o\ : std_logic;
SIGNAL \flag~input_o\ : std_logic;
SIGNAL \cr[4]~input_o\ : std_logic;
SIGNAL \inst18|opt2[0]~2_combout\ : std_logic;
SIGNAL \inst18|opt2[0]~3_combout\ : std_logic;
SIGNAL \inst18|opt2[0]~4_combout\ : std_logic;
SIGNAL \inst18|opt2[7]~5_combout\ : std_logic;
SIGNAL \inst18|opt1[0]~feeder_combout\ : std_logic;
SIGNAL \inst18|opt1[7]~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux7~1_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \inst22|man|Add0~1_cout\ : std_logic;
SIGNAL \inst22|man|Add0~2_combout\ : std_logic;
SIGNAL \keyout[1]~input_o\ : std_logic;
SIGNAL \inst18|opt2[1]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~25_combout\ : std_logic;
SIGNAL \inst22|man|ans~26_combout\ : std_logic;
SIGNAL \inst22|man|ans[1]~5_combout\ : std_logic;
SIGNAL \keyout[2]~input_o\ : std_logic;
SIGNAL \inst18|opt2[2]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~23_combout\ : std_logic;
SIGNAL \inst22|man|ans~22_combout\ : std_logic;
SIGNAL \inst22|man|ans[2]~4_combout\ : std_logic;
SIGNAL \keyout[3]~input_o\ : std_logic;
SIGNAL \inst18|opt2[3]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~20_combout\ : std_logic;
SIGNAL \inst22|man|ans~19_combout\ : std_logic;
SIGNAL \inst22|man|ans[3]~3_combout\ : std_logic;
SIGNAL \keyout[4]~input_o\ : std_logic;
SIGNAL \inst18|opt2[4]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~17_combout\ : std_logic;
SIGNAL \inst22|man|ans~16_combout\ : std_logic;
SIGNAL \inst22|man|ans[4]~2_combout\ : std_logic;
SIGNAL \inst22|man|ans[6]~9_combout\ : std_logic;
SIGNAL \keyout[5]~input_o\ : std_logic;
SIGNAL \inst18|opt2[5]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~14_combout\ : std_logic;
SIGNAL \inst22|man|ans~15_combout\ : std_logic;
SIGNAL \inst22|man|ans[5]~1_combout\ : std_logic;
SIGNAL \inst22|man|ans[6]~11_combout\ : std_logic;
SIGNAL \keyout[6]~input_o\ : std_logic;
SIGNAL \inst18|opt2[6]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R3[6]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~7_combout\ : std_logic;
SIGNAL \inst22|man|ans~8_combout\ : std_logic;
SIGNAL \inst22|man|ans[6]~0_combout\ : std_logic;
SIGNAL \inst22|man|ans~10_combout\ : std_logic;
SIGNAL \inst22|man|Add0~3\ : std_logic;
SIGNAL \inst22|man|Add0~5\ : std_logic;
SIGNAL \inst22|man|Add0~7\ : std_logic;
SIGNAL \inst22|man|Add0~9\ : std_logic;
SIGNAL \inst22|man|Add0~11\ : std_logic;
SIGNAL \inst22|man|Add0~13\ : std_logic;
SIGNAL \inst22|man|Add0~14_combout\ : std_logic;
SIGNAL \inst22|man|Mux1~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux1~1_combout\ : std_logic;
SIGNAL \inst22|man|ans[6]~12_combout\ : std_logic;
SIGNAL \inst22|man|ans[6]~13_combout\ : std_logic;
SIGNAL \inst21|rf|R0~1_combout\ : std_logic;
SIGNAL \inst21|rf|R2[6]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R1[6]~feeder_combout\ : std_logic;
SIGNAL \inst18|Selector1~0_combout\ : std_logic;
SIGNAL \inst18|Selector1~1_combout\ : std_logic;
SIGNAL \inst18|opt1[6]~feeder_combout\ : std_logic;
SIGNAL \inst22|mw|X[6]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|Mux2~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux2~1_combout\ : std_logic;
SIGNAL \inst22|man|Add0~12_combout\ : std_logic;
SIGNAL \inst22|man|Mux2~2_combout\ : std_logic;
SIGNAL \inst21|rf|R0~2_combout\ : std_logic;
SIGNAL \inst21|rf|R2[5]~feeder_combout\ : std_logic;
SIGNAL \inst18|Selector2~0_combout\ : std_logic;
SIGNAL \inst18|Selector2~1_combout\ : std_logic;
SIGNAL \inst18|opt1[5]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~18_combout\ : std_logic;
SIGNAL \inst22|man|Add0~10_combout\ : std_logic;
SIGNAL \inst22|man|Mux3~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux3~1_combout\ : std_logic;
SIGNAL \inst21|rf|R0~3_combout\ : std_logic;
SIGNAL \inst21|rf|R1[4]~feeder_combout\ : std_logic;
SIGNAL \inst18|Selector3~0_combout\ : std_logic;
SIGNAL \inst18|Selector3~1_combout\ : std_logic;
SIGNAL \inst18|opt1[4]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~21_combout\ : std_logic;
SIGNAL \inst22|man|Add0~8_combout\ : std_logic;
SIGNAL \inst22|man|Mux4~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux4~1_combout\ : std_logic;
SIGNAL \inst21|rf|R0~4_combout\ : std_logic;
SIGNAL \inst21|rf|R1[3]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R2[3]~feeder_combout\ : std_logic;
SIGNAL \inst18|Selector4~0_combout\ : std_logic;
SIGNAL \inst18|Selector4~1_combout\ : std_logic;
SIGNAL \inst18|opt1[3]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|Add0~6_combout\ : std_logic;
SIGNAL \inst22|man|ans~24_combout\ : std_logic;
SIGNAL \inst22|man|Mux5~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux5~1_combout\ : std_logic;
SIGNAL \inst21|rf|R0~5_combout\ : std_logic;
SIGNAL \inst21|rf|R0[2]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R1[2]~feeder_combout\ : std_logic;
SIGNAL \inst18|Selector5~0_combout\ : std_logic;
SIGNAL \inst18|Selector5~1_combout\ : std_logic;
SIGNAL \inst18|opt1[2]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~27_combout\ : std_logic;
SIGNAL \inst22|man|Add0~4_combout\ : std_logic;
SIGNAL \inst22|man|Mux6~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux6~1_combout\ : std_logic;
SIGNAL \inst21|rf|R0~6_combout\ : std_logic;
SIGNAL \inst21|rf|R0[1]~feeder_combout\ : std_logic;
SIGNAL \inst18|Selector6~0_combout\ : std_logic;
SIGNAL \inst18|Selector6~1_combout\ : std_logic;
SIGNAL \inst18|opt1[1]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|Mux7~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux7~2_combout\ : std_logic;
SIGNAL \inst21|pf|Mux7~0_combout\ : std_logic;
SIGNAL \pc_clr~input_o\ : std_logic;
SIGNAL \M[1]~input_o\ : std_logic;
SIGNAL \inst21|cs|Add0~0_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~0_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~1\ : std_logic;
SIGNAL \inst21|cs|Add0~2_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~3\ : std_logic;
SIGNAL \inst21|cs|Add0~4_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~5\ : std_logic;
SIGNAL \inst21|cs|Add0~6_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~7\ : std_logic;
SIGNAL \inst21|cs|Add0~8_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~9\ : std_logic;
SIGNAL \inst21|cs|Add0~10_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~3_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~11\ : std_logic;
SIGNAL \inst21|cs|Add0~12_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~13\ : std_logic;
SIGNAL \inst21|cs|Add0~14_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~4_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~15\ : std_logic;
SIGNAL \inst21|cs|Add0~16_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~17\ : std_logic;
SIGNAL \inst21|cs|Add0~18_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~5_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~8_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~1_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~0_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~33\ : std_logic;
SIGNAL \inst21|cs|Add0~34_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~2_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~35\ : std_logic;
SIGNAL \inst21|cs|Add0~36_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~37\ : std_logic;
SIGNAL \inst21|cs|Add0~38_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~39\ : std_logic;
SIGNAL \inst21|cs|Add0~40_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~41\ : std_logic;
SIGNAL \inst21|cs|Add0~42_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~3_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~4_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~43\ : std_logic;
SIGNAL \inst21|cs|Add0~44_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~45\ : std_logic;
SIGNAL \inst21|cs|Add0~46_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~47\ : std_logic;
SIGNAL \inst21|cs|Add0~48_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~49\ : std_logic;
SIGNAL \inst21|cs|Add0~50_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~51\ : std_logic;
SIGNAL \inst21|cs|Add0~52_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~53\ : std_logic;
SIGNAL \inst21|cs|Add0~54_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~55\ : std_logic;
SIGNAL \inst21|cs|Add0~56_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~57\ : std_logic;
SIGNAL \inst21|cs|Add0~58_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~59\ : std_logic;
SIGNAL \inst21|cs|Add0~60_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~61\ : std_logic;
SIGNAL \inst21|cs|Add0~62_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~5_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~6_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~7_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~9_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~10_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~19\ : std_logic;
SIGNAL \inst21|cs|Add0~20_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~6_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~21\ : std_logic;
SIGNAL \inst21|cs|Add0~22_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~23\ : std_logic;
SIGNAL \inst21|cs|Add0~24_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~25\ : std_logic;
SIGNAL \inst21|cs|Add0~26_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~27\ : std_logic;
SIGNAL \inst21|cs|Add0~28_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~29\ : std_logic;
SIGNAL \inst21|cs|Add0~30_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~1_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~31\ : std_logic;
SIGNAL \inst21|cs|Add0~32_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~2_combout\ : std_logic;
SIGNAL \inst21|pf|WideNor0~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[0]~24_combout\ : std_logic;
SIGNAL \inst21|pf|PC[0]~25_combout\ : std_logic;
SIGNAL \inst21|pf|PC[0]~9\ : std_logic;
SIGNAL \inst21|pf|PC[1]~10_combout\ : std_logic;
SIGNAL \inst21|pf|Mux6~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[1]~11\ : std_logic;
SIGNAL \inst21|pf|PC[2]~12_combout\ : std_logic;
SIGNAL \inst21|pf|Mux5~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[2]~13\ : std_logic;
SIGNAL \inst21|pf|PC[3]~14_combout\ : std_logic;
SIGNAL \inst21|pf|Mux4~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[3]~15\ : std_logic;
SIGNAL \inst21|pf|PC[4]~16_combout\ : std_logic;
SIGNAL \inst21|pf|Mux3~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[4]~17\ : std_logic;
SIGNAL \inst21|pf|PC[5]~18_combout\ : std_logic;
SIGNAL \inst21|pf|Mux2~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[5]~19\ : std_logic;
SIGNAL \inst21|pf|PC[6]~20_combout\ : std_logic;
SIGNAL \inst21|pf|Mux1~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[6]~21\ : std_logic;
SIGNAL \inst21|pf|PC[7]~22_combout\ : std_logic;
SIGNAL \keyout[7]~input_o\ : std_logic;
SIGNAL \inst22|man|Mux0~0_combout\ : std_logic;
SIGNAL \inst18|opt2[7]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R0~0_combout\ : std_logic;
SIGNAL \inst22|mw|Y[7]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|Mux0~1_combout\ : std_logic;
SIGNAL \inst22|man|Mux0~2_combout\ : std_logic;
SIGNAL \inst22|man|Add0~15\ : std_logic;
SIGNAL \inst22|man|Add0~16_combout\ : std_logic;
SIGNAL \inst22|man|Mux0~3_combout\ : std_logic;
SIGNAL \inst21|pf|Mux0~0_combout\ : std_logic;
SIGNAL \inst21|rf|R0[7]~feeder_combout\ : std_logic;
SIGNAL \inst18|Selector8~0_combout\ : std_logic;
SIGNAL \inst18|Selector8~1_combout\ : std_logic;
SIGNAL \inst18|opt1[7]~feeder_combout\ : std_logic;
SIGNAL \inst22|mw|X[7]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|Add0~17\ : std_logic;
SIGNAL \inst22|man|Add0~18_combout\ : std_logic;
SIGNAL \inst22|man|ans~6_combout\ : std_logic;
SIGNAL \inst22|man|always1~0_combout\ : std_logic;
SIGNAL \inst22|man|exceed~0_combout\ : std_logic;
SIGNAL \inst22|man|exceed~q\ : std_logic;
SIGNAL \inst21|pf|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst21|rf|R3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst21|rf|R2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst21|rf|R1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst21|rf|R0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst22|man|ans\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst18|opt1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst22|mw|X\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst18|opt2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst22|mw|Y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst21|cs|second_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cr[3]~input_o\ : std_logic;

BEGIN

exceed <= ww_exceed;
ww_clk <= clk;
ww_cin <= cin;
ww_flag <= flag;
ww_cr <= cr;
PC <= ww_PC;
ww_wr <= wr;
ww_rd <= rd;
ww_pc_clr <= pc_clr;
ww_keyout <= keyout;
ww_M <= M;
ww_RA <= RA;
R0 <= ww_R0;
R1 <= ww_R1;
R2 <= ww_R2;
R3 <= ww_R3;
ww_S <= S;
ww_switch_buttons <= switch_buttons;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_cr[3]~input_o\ <= NOT \cr[3]~input_o\;

-- Location: IOOBUF_X5_Y0_N23
\exceed~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|man|exceed~q\,
	devoe => ww_devoe,
	o => \exceed~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\PC[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|pf|PC\(7),
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\PC[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|pf|PC\(6),
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\PC[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|pf|PC\(5),
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\PC[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|pf|PC\(4),
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

-- Location: IOOBUF_X20_Y43_N9
\PC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|pf|PC\(3),
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\PC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|pf|PC\(2),
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\PC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|pf|PC\(1),
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\PC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|pf|PC\(0),
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X0_Y17_N2
\R0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R0\(7),
	devoe => ww_devoe,
	o => \R0[7]~output_o\);

-- Location: IOOBUF_X18_Y43_N30
\R0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R0\(6),
	devoe => ww_devoe,
	o => \R0[6]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\R0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R0\(5),
	devoe => ww_devoe,
	o => \R0[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\R0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R0\(4),
	devoe => ww_devoe,
	o => \R0[4]~output_o\);

-- Location: IOOBUF_X16_Y43_N2
\R0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R0\(3),
	devoe => ww_devoe,
	o => \R0[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\R0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R0\(2),
	devoe => ww_devoe,
	o => \R0[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\R0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R0\(1),
	devoe => ww_devoe,
	o => \R0[1]~output_o\);

-- Location: IOOBUF_X18_Y43_N2
\R0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R0\(0),
	devoe => ww_devoe,
	o => \R0[0]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\R1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R1\(7),
	devoe => ww_devoe,
	o => \R1[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\R1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R1\(6),
	devoe => ww_devoe,
	o => \R1[6]~output_o\);

-- Location: IOOBUF_X0_Y16_N9
\R1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R1\(5),
	devoe => ww_devoe,
	o => \R1[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\R1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R1\(4),
	devoe => ww_devoe,
	o => \R1[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\R1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R1\(3),
	devoe => ww_devoe,
	o => \R1[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\R1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R1\(2),
	devoe => ww_devoe,
	o => \R1[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\R1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R1\(1),
	devoe => ww_devoe,
	o => \R1[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N23
\R1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R1\(0),
	devoe => ww_devoe,
	o => \R1[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\R2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R2\(7),
	devoe => ww_devoe,
	o => \R2[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\R2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R2\(6),
	devoe => ww_devoe,
	o => \R2[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\R2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R2\(5),
	devoe => ww_devoe,
	o => \R2[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\R2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R2\(4),
	devoe => ww_devoe,
	o => \R2[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\R2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R2\(3),
	devoe => ww_devoe,
	o => \R2[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\R2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R2\(2),
	devoe => ww_devoe,
	o => \R2[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\R2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R2\(1),
	devoe => ww_devoe,
	o => \R2[1]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\R2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R2\(0),
	devoe => ww_devoe,
	o => \R2[0]~output_o\);

-- Location: IOOBUF_X20_Y43_N23
\R3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R3\(7),
	devoe => ww_devoe,
	o => \R3[7]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\R3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R3\(6),
	devoe => ww_devoe,
	o => \R3[6]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\R3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R3\(5),
	devoe => ww_devoe,
	o => \R3[5]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\R3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R3\(4),
	devoe => ww_devoe,
	o => \R3[4]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\R3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R3\(3),
	devoe => ww_devoe,
	o => \R3[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\R3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R3\(2),
	devoe => ww_devoe,
	o => \R3[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\R3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R3\(1),
	devoe => ww_devoe,
	o => \R3[1]~output_o\);

-- Location: IOOBUF_X0_Y17_N23
\R3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21|rf|R3\(0),
	devoe => ww_devoe,
	o => \R3[0]~output_o\);

-- Location: IOIBUF_X34_Y43_N15
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G14
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y0_N22
\S[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\S[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\S[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\M[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(0),
	o => \M[0]~input_o\);

-- Location: LCCOMB_X22_Y18_N4
\inst21|pf|PC[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[0]~8_combout\ = \inst21|pf|PC\(0) $ (VCC)
-- \inst21|pf|PC[0]~9\ = CARRY(\inst21|pf|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|pf|PC\(0),
	datad => VCC,
	combout => \inst21|pf|PC[0]~8_combout\,
	cout => \inst21|pf|PC[0]~9\);

-- Location: IOIBUF_X36_Y0_N15
\keyout[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyout(0),
	o => \keyout[0]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\wr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\rd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd,
	o => \rd~input_o\);

-- Location: LCCOMB_X21_Y18_N22
\inst21|rf|R0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~7_combout\ = (\wr~input_o\ & (((\inst22|man|ans\(0))))) # (!\wr~input_o\ & ((\rd~input_o\ & (\keyout[0]~input_o\)) # (!\rd~input_o\ & ((\inst22|man|ans\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \keyout[0]~input_o\,
	datac => \rd~input_o\,
	datad => \inst22|man|ans\(0),
	combout => \inst21|rf|R0~7_combout\);

-- Location: IOIBUF_X34_Y0_N1
\RA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(1),
	o => \RA[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\RA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(0),
	o => \RA[0]~input_o\);

-- Location: LCCOMB_X21_Y18_N2
\inst21|rf|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|Decoder0~0_combout\ = (\rd~input_o\ & (!\RA[1]~input_o\ & !\RA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \RA[1]~input_o\,
	datad => \RA[0]~input_o\,
	combout => \inst21|rf|Decoder0~0_combout\);

-- Location: FF_X19_Y18_N27
\inst21|rf|R0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~7_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(0));

-- Location: IOIBUF_X14_Y0_N29
\cr[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cr(1),
	o => \cr[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\cr[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cr(2),
	o => \cr[2]~input_o\);

-- Location: LCCOMB_X19_Y18_N0
\inst18|opt2[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[0]~1_combout\ = (\cr[1]~input_o\ & \cr[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cr[1]~input_o\,
	datad => \cr[2]~input_o\,
	combout => \inst18|opt2[0]~1_combout\);

-- Location: IOIBUF_X7_Y0_N22
\cr[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cr(0),
	o => \cr[0]~input_o\);

-- Location: LCCOMB_X19_Y18_N12
\inst18|opt2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[0]~0_combout\ = (\cr[2]~input_o\ & ((\cr[0]~input_o\) # (!\cr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cr[0]~input_o\,
	datab => \cr[1]~input_o\,
	datad => \cr[2]~input_o\,
	combout => \inst18|opt2[0]~0_combout\);

-- Location: LCCOMB_X20_Y18_N30
\inst21|rf|R1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R1[0]~feeder_combout\ = \inst21|rf|R0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|rf|R0~7_combout\,
	combout => \inst21|rf|R1[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N28
\inst21|rf|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|Decoder0~1_combout\ = (\rd~input_o\ & (!\RA[1]~input_o\ & \RA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \RA[1]~input_o\,
	datad => \RA[0]~input_o\,
	combout => \inst21|rf|Decoder0~1_combout\);

-- Location: FF_X20_Y18_N31
\inst21|rf|R1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R1[0]~feeder_combout\,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(0));

-- Location: LCCOMB_X20_Y18_N0
\inst21|rf|R2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R2[0]~feeder_combout\ = \inst21|rf|R0~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|rf|R0~7_combout\,
	combout => \inst21|rf|R2[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N20
\inst21|rf|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|Decoder0~2_combout\ = (\rd~input_o\ & (\RA[1]~input_o\ & !\RA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \RA[1]~input_o\,
	datad => \RA[0]~input_o\,
	combout => \inst21|rf|Decoder0~2_combout\);

-- Location: FF_X20_Y18_N1
\inst21|rf|R2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R2[0]~feeder_combout\,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(0));

-- Location: LCCOMB_X20_Y18_N22
\inst18|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector7~0_combout\ = (\inst18|opt2[0]~0_combout\ & ((\inst18|opt2[0]~1_combout\) # ((\inst21|rf|R1\(0))))) # (!\inst18|opt2[0]~0_combout\ & (!\inst18|opt2[0]~1_combout\ & ((\inst21|rf|R2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~0_combout\,
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|rf|R1\(0),
	datad => \inst21|rf|R2\(0),
	combout => \inst18|Selector7~0_combout\);

-- Location: LCCOMB_X19_Y18_N18
\inst18|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector7~1_combout\ = (\inst18|opt2[0]~1_combout\ & ((\inst18|Selector7~0_combout\ & ((\inst21|pf|PC\(0)))) # (!\inst18|Selector7~0_combout\ & (\inst21|rf|R0\(0))))) # (!\inst18|opt2[0]~1_combout\ & (((\inst18|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|rf|R0\(0),
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|pf|PC\(0),
	datad => \inst18|Selector7~0_combout\,
	combout => \inst18|Selector7~1_combout\);

-- Location: LCCOMB_X18_Y18_N10
\inst18|opt2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[0]~feeder_combout\ = \inst18|Selector7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector7~1_combout\,
	combout => \inst18|opt2[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N18
\inst21|rf|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|Decoder0~3_combout\ = (\rd~input_o\ & (\RA[1]~input_o\ & \RA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \RA[1]~input_o\,
	datad => \RA[0]~input_o\,
	combout => \inst21|rf|Decoder0~3_combout\);

-- Location: FF_X21_Y18_N29
\inst21|rf|R3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~7_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(0));

-- Location: IOIBUF_X20_Y0_N8
\cr[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cr(3),
	o => \cr[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\flag~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_flag,
	o => \flag~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\cr[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cr(4),
	o => \cr[4]~input_o\);

-- Location: LCCOMB_X19_Y18_N8
\inst18|opt2[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[0]~2_combout\ = (\cr[1]~input_o\ & (\cr[3]~input_o\ $ (\cr[4]~input_o\))) # (!\cr[1]~input_o\ & (\cr[3]~input_o\ & \cr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cr[1]~input_o\,
	datab => \cr[3]~input_o\,
	datad => \cr[4]~input_o\,
	combout => \inst18|opt2[0]~2_combout\);

-- Location: LCCOMB_X19_Y18_N14
\inst18|opt2[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[0]~3_combout\ = (\cr[1]~input_o\ & (\cr[3]~input_o\ & \cr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cr[1]~input_o\,
	datab => \cr[3]~input_o\,
	datad => \cr[4]~input_o\,
	combout => \inst18|opt2[0]~3_combout\);

-- Location: LCCOMB_X19_Y18_N10
\inst18|opt2[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[0]~4_combout\ = (\inst18|opt2[0]~2_combout\ & ((\inst18|opt2[0]~3_combout\) # ((!\cr[2]~input_o\) # (!\cr[0]~input_o\)))) # (!\inst18|opt2[0]~2_combout\ & ((\cr[0]~input_o\ $ (!\cr[2]~input_o\)) # (!\inst18|opt2[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~2_combout\,
	datab => \inst18|opt2[0]~3_combout\,
	datac => \cr[0]~input_o\,
	datad => \cr[2]~input_o\,
	combout => \inst18|opt2[0]~4_combout\);

-- Location: LCCOMB_X19_Y18_N26
\inst18|opt2[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[7]~5_combout\ = (\flag~input_o\ & !\inst18|opt2[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~input_o\,
	datad => \inst18|opt2[0]~4_combout\,
	combout => \inst18|opt2[7]~5_combout\);

-- Location: FF_X18_Y18_N11
\inst18|opt2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt2[0]~feeder_combout\,
	asdata => \inst21|rf|R3\(0),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt2[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(0));

-- Location: FF_X26_Y18_N31
\inst22|mw|Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt2\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|Y\(0));

-- Location: LCCOMB_X18_Y18_N8
\inst18|opt1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[0]~feeder_combout\ = \inst18|Selector7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector7~1_combout\,
	combout => \inst18|opt1[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y18_N20
\inst18|opt1[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[7]~0_combout\ = (!\flag~input_o\ & !\inst18|opt2[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~input_o\,
	datad => \inst18|opt2[0]~4_combout\,
	combout => \inst18|opt1[7]~0_combout\);

-- Location: FF_X18_Y18_N9
\inst18|opt1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt1[0]~feeder_combout\,
	asdata => \inst21|rf|R3\(0),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(0));

-- Location: FF_X26_Y18_N5
\inst22|mw|X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt1\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|X\(0));

-- Location: LCCOMB_X25_Y18_N10
\inst22|man|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux7~1_combout\ = (\inst22|mw|Y\(0) & (\S[1]~input_o\ $ (((\S[0]~input_o\ & \inst22|mw|X\(0)))))) # (!\inst22|mw|Y\(0) & (\S[1]~input_o\ & ((\inst22|mw|X\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(0),
	datab => \S[1]~input_o\,
	datac => \S[0]~input_o\,
	datad => \inst22|mw|X\(0),
	combout => \inst22|man|Mux7~1_combout\);

-- Location: IOIBUF_X29_Y0_N1
\cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X26_Y18_N10
\inst22|man|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~1_cout\ = CARRY(\cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cin~input_o\,
	datad => VCC,
	cout => \inst22|man|Add0~1_cout\);

-- Location: LCCOMB_X26_Y18_N12
\inst22|man|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~2_combout\ = (\inst22|mw|Y\(0) & ((\inst22|mw|X\(0) & (\inst22|man|Add0~1_cout\ & VCC)) # (!\inst22|mw|X\(0) & (!\inst22|man|Add0~1_cout\)))) # (!\inst22|mw|Y\(0) & ((\inst22|mw|X\(0) & (!\inst22|man|Add0~1_cout\)) # (!\inst22|mw|X\(0) & 
-- ((\inst22|man|Add0~1_cout\) # (GND)))))
-- \inst22|man|Add0~3\ = CARRY((\inst22|mw|Y\(0) & (!\inst22|mw|X\(0) & !\inst22|man|Add0~1_cout\)) # (!\inst22|mw|Y\(0) & ((!\inst22|man|Add0~1_cout\) # (!\inst22|mw|X\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(0),
	datab => \inst22|mw|X\(0),
	datad => VCC,
	cin => \inst22|man|Add0~1_cout\,
	combout => \inst22|man|Add0~2_combout\,
	cout => \inst22|man|Add0~3\);

-- Location: IOIBUF_X36_Y0_N22
\keyout[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyout(1),
	o => \keyout[1]~input_o\);

-- Location: LCCOMB_X18_Y18_N14
\inst18|opt2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[1]~feeder_combout\ = \inst18|Selector6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector6~1_combout\,
	combout => \inst18|opt2[1]~feeder_combout\);

-- Location: FF_X21_Y18_N15
\inst21|rf|R3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~6_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(1));

-- Location: FF_X18_Y18_N15
\inst18|opt2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt2[1]~feeder_combout\,
	asdata => \inst21|rf|R3\(1),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt2[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(1));

-- Location: FF_X26_Y18_N15
\inst22|mw|Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt2\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|Y\(1));

-- Location: LCCOMB_X25_Y18_N28
\inst22|man|ans~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~25_combout\ = (\inst22|mw|Y\(1)) # (\inst22|mw|X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|Y\(1),
	datad => \inst22|mw|X\(1),
	combout => \inst22|man|ans~25_combout\);

-- Location: LCCOMB_X25_Y18_N2
\inst22|man|ans~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~26_combout\ = \inst22|mw|Y\(1) $ (\inst22|mw|X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|Y\(1),
	datad => \inst22|mw|X\(1),
	combout => \inst22|man|ans~26_combout\);

-- Location: LCCOMB_X25_Y18_N24
\inst22|man|ans[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[1]~5_combout\ = (\S[0]~input_o\ & ((\inst22|man|ans~26_combout\))) # (!\S[0]~input_o\ & (\inst22|man|ans~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \inst22|man|ans~25_combout\,
	datad => \inst22|man|ans~26_combout\,
	combout => \inst22|man|ans[1]~5_combout\);

-- Location: IOIBUF_X0_Y20_N15
\keyout[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyout(2),
	o => \keyout[2]~input_o\);

-- Location: LCCOMB_X18_Y18_N2
\inst18|opt2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[2]~feeder_combout\ = \inst18|Selector5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector5~1_combout\,
	combout => \inst18|opt2[2]~feeder_combout\);

-- Location: FF_X21_Y18_N21
\inst21|rf|R3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~5_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(2));

-- Location: FF_X18_Y18_N3
\inst18|opt2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt2[2]~feeder_combout\,
	asdata => \inst21|rf|R3\(2),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt2[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(2));

-- Location: FF_X26_Y18_N13
\inst22|mw|Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt2\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|Y\(2));

-- Location: LCCOMB_X27_Y18_N2
\inst22|man|ans~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~23_combout\ = \inst22|mw|Y\(2) $ (\inst22|mw|X\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(2),
	datad => \inst22|mw|X\(2),
	combout => \inst22|man|ans~23_combout\);

-- Location: LCCOMB_X27_Y18_N8
\inst22|man|ans~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~22_combout\ = (\inst22|mw|Y\(2)) # (\inst22|mw|X\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(2),
	datad => \inst22|mw|X\(2),
	combout => \inst22|man|ans~22_combout\);

-- Location: LCCOMB_X23_Y18_N12
\inst22|man|ans[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[2]~4_combout\ = (\S[0]~input_o\ & (\inst22|man|ans~23_combout\)) # (!\S[0]~input_o\ & ((\inst22|man|ans~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \inst22|man|ans~23_combout\,
	datad => \inst22|man|ans~22_combout\,
	combout => \inst22|man|ans[2]~4_combout\);

-- Location: IOIBUF_X22_Y43_N29
\keyout[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyout(3),
	o => \keyout[3]~input_o\);

-- Location: LCCOMB_X18_Y18_N18
\inst18|opt2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[3]~feeder_combout\ = \inst18|Selector4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector4~1_combout\,
	combout => \inst18|opt2[3]~feeder_combout\);

-- Location: FF_X23_Y18_N17
\inst21|rf|R3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R0~4_combout\,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(3));

-- Location: FF_X18_Y18_N19
\inst18|opt2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt2[3]~feeder_combout\,
	asdata => \inst21|rf|R3\(3),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt2[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(3));

-- Location: FF_X26_Y18_N19
\inst22|mw|Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt2\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|Y\(3));

-- Location: LCCOMB_X23_Y18_N4
\inst22|man|ans~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~20_combout\ = \inst22|mw|Y\(3) $ (\inst22|mw|X\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(3),
	datac => \inst22|mw|X\(3),
	combout => \inst22|man|ans~20_combout\);

-- Location: LCCOMB_X27_Y18_N20
\inst22|man|ans~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~19_combout\ = (\inst22|mw|X\(3)) # (\inst22|mw|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(3),
	datac => \inst22|mw|Y\(3),
	combout => \inst22|man|ans~19_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst22|man|ans[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[3]~3_combout\ = (\S[0]~input_o\ & (\inst22|man|ans~20_combout\)) # (!\S[0]~input_o\ & ((\inst22|man|ans~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \inst22|man|ans~20_combout\,
	datad => \inst22|man|ans~19_combout\,
	combout => \inst22|man|ans[3]~3_combout\);

-- Location: IOIBUF_X0_Y20_N8
\keyout[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyout(4),
	o => \keyout[4]~input_o\);

-- Location: LCCOMB_X18_Y18_N26
\inst18|opt2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[4]~feeder_combout\ = \inst18|Selector3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector3~1_combout\,
	combout => \inst18|opt2[4]~feeder_combout\);

-- Location: FF_X25_Y18_N17
\inst21|rf|R3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R0~3_combout\,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(4));

-- Location: FF_X18_Y18_N27
\inst18|opt2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt2[4]~feeder_combout\,
	asdata => \inst21|rf|R3\(4),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt2[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(4));

-- Location: FF_X26_Y18_N21
\inst22|mw|Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt2\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|Y\(4));

-- Location: LCCOMB_X27_Y18_N24
\inst22|man|ans~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~17_combout\ = \inst22|mw|Y\(4) $ (\inst22|mw|X\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|mw|Y\(4),
	datad => \inst22|mw|X\(4),
	combout => \inst22|man|ans~17_combout\);

-- Location: LCCOMB_X26_Y18_N4
\inst22|man|ans~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~16_combout\ = (\inst22|mw|Y\(4)) # (\inst22|mw|X\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(4),
	datab => \inst22|mw|X\(4),
	combout => \inst22|man|ans~16_combout\);

-- Location: LCCOMB_X25_Y18_N18
\inst22|man|ans[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[4]~2_combout\ = (\S[0]~input_o\ & (\inst22|man|ans~17_combout\)) # (!\S[0]~input_o\ & ((\inst22|man|ans~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \inst22|man|ans~17_combout\,
	datad => \inst22|man|ans~16_combout\,
	combout => \inst22|man|ans[4]~2_combout\);

-- Location: LCCOMB_X25_Y18_N26
\inst22|man|ans[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[6]~9_combout\ = (\S[2]~input_o\ & ((\S[0]~input_o\) # (\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[2]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst22|man|ans[6]~9_combout\);

-- Location: IOIBUF_X22_Y0_N8
\keyout[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyout(5),
	o => \keyout[5]~input_o\);

-- Location: LCCOMB_X18_Y18_N6
\inst18|opt2[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[5]~feeder_combout\ = \inst18|Selector2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector2~1_combout\,
	combout => \inst18|opt2[5]~feeder_combout\);

-- Location: FF_X21_Y18_N19
\inst21|rf|R3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~2_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(5));

-- Location: FF_X18_Y18_N7
\inst18|opt2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt2[5]~feeder_combout\,
	asdata => \inst21|rf|R3\(5),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt2[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(5));

-- Location: FF_X26_Y18_N25
\inst22|mw|Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt2\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|Y\(5));

-- Location: LCCOMB_X23_Y18_N0
\inst22|man|ans~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~14_combout\ = (\inst22|mw|Y\(5)) # (\inst22|mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|Y\(5),
	datad => \inst22|mw|X\(5),
	combout => \inst22|man|ans~14_combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst22|man|ans~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~15_combout\ = \inst22|mw|X\(5) $ (\inst22|mw|Y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|mw|X\(5),
	datac => \inst22|mw|Y\(5),
	combout => \inst22|man|ans~15_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst22|man|ans[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[5]~1_combout\ = (\S[0]~input_o\ & ((\inst22|man|ans~15_combout\))) # (!\S[0]~input_o\ & (\inst22|man|ans~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \inst22|man|ans~14_combout\,
	datad => \inst22|man|ans~15_combout\,
	combout => \inst22|man|ans[5]~1_combout\);

-- Location: LCCOMB_X23_Y18_N22
\inst22|man|ans[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[6]~11_combout\ = (\S[1]~input_o\) # (!\S[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst22|man|ans[6]~11_combout\);

-- Location: IOIBUF_X25_Y0_N22
\keyout[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyout(6),
	o => \keyout[6]~input_o\);

-- Location: LCCOMB_X18_Y18_N22
\inst18|opt2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[6]~feeder_combout\ = \inst18|Selector1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector1~1_combout\,
	combout => \inst18|opt2[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y18_N6
\inst21|rf|R3[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R3[6]~feeder_combout\ = \inst21|rf|R0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|rf|R0~1_combout\,
	combout => \inst21|rf|R3[6]~feeder_combout\);

-- Location: FF_X25_Y18_N7
\inst21|rf|R3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R3[6]~feeder_combout\,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(6));

-- Location: FF_X18_Y18_N23
\inst18|opt2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt2[6]~feeder_combout\,
	asdata => \inst21|rf|R3\(6),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt2[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(6));

-- Location: FF_X26_Y18_N27
\inst22|mw|Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt2\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|Y\(6));

-- Location: LCCOMB_X27_Y18_N16
\inst22|man|ans~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~7_combout\ = (\inst22|mw|X\(6)) # (\inst22|mw|Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|mw|X\(6),
	datac => \inst22|mw|Y\(6),
	combout => \inst22|man|ans~7_combout\);

-- Location: LCCOMB_X27_Y18_N14
\inst22|man|ans~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~8_combout\ = \inst22|mw|X\(6) $ (\inst22|mw|Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|mw|X\(6),
	datac => \inst22|mw|Y\(6),
	combout => \inst22|man|ans~8_combout\);

-- Location: LCCOMB_X25_Y18_N12
\inst22|man|ans[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[6]~0_combout\ = (\S[0]~input_o\ & ((\inst22|man|ans~8_combout\))) # (!\S[0]~input_o\ & (\inst22|man|ans~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \inst22|man|ans~7_combout\,
	datad => \inst22|man|ans~8_combout\,
	combout => \inst22|man|ans[6]~0_combout\);

-- Location: LCCOMB_X27_Y18_N4
\inst22|man|ans~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~10_combout\ = (\inst22|mw|X\(6) & \inst22|mw|Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|mw|X\(6),
	datac => \inst22|mw|Y\(6),
	combout => \inst22|man|ans~10_combout\);

-- Location: LCCOMB_X26_Y18_N14
\inst22|man|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~4_combout\ = ((\inst22|mw|X\(1) $ (\inst22|mw|Y\(1) $ (!\inst22|man|Add0~3\)))) # (GND)
-- \inst22|man|Add0~5\ = CARRY((\inst22|mw|X\(1) & ((\inst22|mw|Y\(1)) # (!\inst22|man|Add0~3\))) # (!\inst22|mw|X\(1) & (\inst22|mw|Y\(1) & !\inst22|man|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(1),
	datab => \inst22|mw|Y\(1),
	datad => VCC,
	cin => \inst22|man|Add0~3\,
	combout => \inst22|man|Add0~4_combout\,
	cout => \inst22|man|Add0~5\);

-- Location: LCCOMB_X26_Y18_N16
\inst22|man|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~6_combout\ = (\inst22|mw|Y\(2) & ((\inst22|mw|X\(2) & (\inst22|man|Add0~5\ & VCC)) # (!\inst22|mw|X\(2) & (!\inst22|man|Add0~5\)))) # (!\inst22|mw|Y\(2) & ((\inst22|mw|X\(2) & (!\inst22|man|Add0~5\)) # (!\inst22|mw|X\(2) & 
-- ((\inst22|man|Add0~5\) # (GND)))))
-- \inst22|man|Add0~7\ = CARRY((\inst22|mw|Y\(2) & (!\inst22|mw|X\(2) & !\inst22|man|Add0~5\)) # (!\inst22|mw|Y\(2) & ((!\inst22|man|Add0~5\) # (!\inst22|mw|X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(2),
	datab => \inst22|mw|X\(2),
	datad => VCC,
	cin => \inst22|man|Add0~5\,
	combout => \inst22|man|Add0~6_combout\,
	cout => \inst22|man|Add0~7\);

-- Location: LCCOMB_X26_Y18_N18
\inst22|man|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~8_combout\ = ((\inst22|mw|X\(3) $ (\inst22|mw|Y\(3) $ (!\inst22|man|Add0~7\)))) # (GND)
-- \inst22|man|Add0~9\ = CARRY((\inst22|mw|X\(3) & ((\inst22|mw|Y\(3)) # (!\inst22|man|Add0~7\))) # (!\inst22|mw|X\(3) & (\inst22|mw|Y\(3) & !\inst22|man|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(3),
	datab => \inst22|mw|Y\(3),
	datad => VCC,
	cin => \inst22|man|Add0~7\,
	combout => \inst22|man|Add0~8_combout\,
	cout => \inst22|man|Add0~9\);

-- Location: LCCOMB_X26_Y18_N20
\inst22|man|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~10_combout\ = (\inst22|mw|Y\(4) & ((\inst22|mw|X\(4) & (\inst22|man|Add0~9\ & VCC)) # (!\inst22|mw|X\(4) & (!\inst22|man|Add0~9\)))) # (!\inst22|mw|Y\(4) & ((\inst22|mw|X\(4) & (!\inst22|man|Add0~9\)) # (!\inst22|mw|X\(4) & 
-- ((\inst22|man|Add0~9\) # (GND)))))
-- \inst22|man|Add0~11\ = CARRY((\inst22|mw|Y\(4) & (!\inst22|mw|X\(4) & !\inst22|man|Add0~9\)) # (!\inst22|mw|Y\(4) & ((!\inst22|man|Add0~9\) # (!\inst22|mw|X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(4),
	datab => \inst22|mw|X\(4),
	datad => VCC,
	cin => \inst22|man|Add0~9\,
	combout => \inst22|man|Add0~10_combout\,
	cout => \inst22|man|Add0~11\);

-- Location: LCCOMB_X26_Y18_N22
\inst22|man|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~12_combout\ = ((\inst22|mw|Y\(5) $ (\inst22|mw|X\(5) $ (!\inst22|man|Add0~11\)))) # (GND)
-- \inst22|man|Add0~13\ = CARRY((\inst22|mw|Y\(5) & ((\inst22|mw|X\(5)) # (!\inst22|man|Add0~11\))) # (!\inst22|mw|Y\(5) & (\inst22|mw|X\(5) & !\inst22|man|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(5),
	datab => \inst22|mw|X\(5),
	datad => VCC,
	cin => \inst22|man|Add0~11\,
	combout => \inst22|man|Add0~12_combout\,
	cout => \inst22|man|Add0~13\);

-- Location: LCCOMB_X26_Y18_N24
\inst22|man|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~14_combout\ = (\inst22|mw|Y\(6) & ((\inst22|mw|X\(6) & (\inst22|man|Add0~13\ & VCC)) # (!\inst22|mw|X\(6) & (!\inst22|man|Add0~13\)))) # (!\inst22|mw|Y\(6) & ((\inst22|mw|X\(6) & (!\inst22|man|Add0~13\)) # (!\inst22|mw|X\(6) & 
-- ((\inst22|man|Add0~13\) # (GND)))))
-- \inst22|man|Add0~15\ = CARRY((\inst22|mw|Y\(6) & (!\inst22|mw|X\(6) & !\inst22|man|Add0~13\)) # (!\inst22|mw|Y\(6) & ((!\inst22|man|Add0~13\) # (!\inst22|mw|X\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(6),
	datab => \inst22|mw|X\(6),
	datad => VCC,
	cin => \inst22|man|Add0~13\,
	combout => \inst22|man|Add0~14_combout\,
	cout => \inst22|man|Add0~15\);

-- Location: LCCOMB_X26_Y18_N0
\inst22|man|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux1~0_combout\ = (\inst22|man|ans[6]~11_combout\ & ((\inst22|man|ans~10_combout\) # ((\inst22|man|ans[6]~9_combout\)))) # (!\inst22|man|ans[6]~11_combout\ & (((!\inst22|man|ans[6]~9_combout\ & \inst22|man|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans~10_combout\,
	datab => \inst22|man|ans[6]~11_combout\,
	datac => \inst22|man|ans[6]~9_combout\,
	datad => \inst22|man|Add0~14_combout\,
	combout => \inst22|man|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y18_N4
\inst22|man|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux1~1_combout\ = (\inst22|man|ans[6]~9_combout\ & ((\inst22|man|Mux1~0_combout\ & (\inst22|mw|X\(7))) # (!\inst22|man|Mux1~0_combout\ & ((\inst22|mw|X\(5)))))) # (!\inst22|man|ans[6]~9_combout\ & (((\inst22|man|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans[6]~9_combout\,
	datab => \inst22|mw|X\(7),
	datac => \inst22|man|Mux1~0_combout\,
	datad => \inst22|mw|X\(5),
	combout => \inst22|man|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y18_N30
\inst22|man|ans[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[6]~12_combout\ = (!\S[2]~input_o\ & (!\S[0]~input_o\ & !\S[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[2]~input_o\,
	datac => \S[0]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst22|man|ans[6]~12_combout\);

-- Location: LCCOMB_X25_Y18_N20
\inst22|man|ans[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[6]~13_combout\ = (\S[2]~input_o\) # (!\S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \inst22|man|ans[6]~13_combout\);

-- Location: FF_X25_Y18_N13
\inst22|man|ans[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[6]~0_combout\,
	asdata => \inst22|man|Mux1~1_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(6));

-- Location: LCCOMB_X25_Y18_N0
\inst21|rf|R0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~1_combout\ = (\rd~input_o\ & ((\wr~input_o\ & ((\inst22|man|ans\(6)))) # (!\wr~input_o\ & (\keyout[6]~input_o\)))) # (!\rd~input_o\ & (((\inst22|man|ans\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \wr~input_o\,
	datac => \keyout[6]~input_o\,
	datad => \inst22|man|ans\(6),
	combout => \inst21|rf|R0~1_combout\);

-- Location: FF_X19_Y18_N13
\inst21|rf|R0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~1_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(6));

-- Location: LCCOMB_X20_Y18_N14
\inst21|rf|R2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R2[6]~feeder_combout\ = \inst21|rf|R0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|rf|R0~1_combout\,
	combout => \inst21|rf|R2[6]~feeder_combout\);

-- Location: FF_X20_Y18_N15
\inst21|rf|R2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R2[6]~feeder_combout\,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(6));

-- Location: LCCOMB_X20_Y18_N10
\inst21|rf|R1[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R1[6]~feeder_combout\ = \inst21|rf|R0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|rf|R0~1_combout\,
	combout => \inst21|rf|R1[6]~feeder_combout\);

-- Location: FF_X20_Y18_N11
\inst21|rf|R1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R1[6]~feeder_combout\,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(6));

-- Location: LCCOMB_X20_Y18_N18
\inst18|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector1~0_combout\ = (\inst18|opt2[0]~0_combout\ & ((\inst18|opt2[0]~1_combout\) # ((\inst21|rf|R1\(6))))) # (!\inst18|opt2[0]~0_combout\ & (!\inst18|opt2[0]~1_combout\ & (\inst21|rf|R2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~0_combout\,
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|rf|R2\(6),
	datad => \inst21|rf|R1\(6),
	combout => \inst18|Selector1~0_combout\);

-- Location: LCCOMB_X19_Y18_N4
\inst18|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector1~1_combout\ = (\inst18|opt2[0]~1_combout\ & ((\inst18|Selector1~0_combout\ & ((\inst21|pf|PC\(6)))) # (!\inst18|Selector1~0_combout\ & (\inst21|rf|R0\(6))))) # (!\inst18|opt2[0]~1_combout\ & (((\inst18|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|rf|R0\(6),
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|pf|PC\(6),
	datad => \inst18|Selector1~0_combout\,
	combout => \inst18|Selector1~1_combout\);

-- Location: LCCOMB_X18_Y18_N16
\inst18|opt1[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[6]~feeder_combout\ = \inst18|Selector1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector1~1_combout\,
	combout => \inst18|opt1[6]~feeder_combout\);

-- Location: FF_X18_Y18_N17
\inst18|opt1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt1[6]~feeder_combout\,
	asdata => \inst21|rf|R3\(6),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(6));

-- Location: LCCOMB_X23_Y18_N2
\inst22|mw|X[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|mw|X[6]~feeder_combout\ = \inst18|opt1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|opt1\(6),
	combout => \inst22|mw|X[6]~feeder_combout\);

-- Location: FF_X23_Y18_N3
\inst22|mw|X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|mw|X[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|X\(6));

-- Location: LCCOMB_X26_Y18_N30
\inst22|man|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux2~0_combout\ = (\inst22|mw|Y\(5) & \inst22|mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(5),
	datab => \inst22|mw|X\(5),
	combout => \inst22|man|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y18_N26
\inst22|man|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux2~1_combout\ = (\inst22|man|ans[6]~9_combout\ & (((\inst22|mw|X\(6))) # (!\inst22|man|ans[6]~11_combout\))) # (!\inst22|man|ans[6]~9_combout\ & (\inst22|man|ans[6]~11_combout\ & ((\inst22|man|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans[6]~9_combout\,
	datab => \inst22|man|ans[6]~11_combout\,
	datac => \inst22|mw|X\(6),
	datad => \inst22|man|Mux2~0_combout\,
	combout => \inst22|man|Mux2~1_combout\);

-- Location: LCCOMB_X26_Y18_N8
\inst22|man|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux2~2_combout\ = (\inst22|man|ans[6]~11_combout\ & (\inst22|man|Mux2~1_combout\)) # (!\inst22|man|ans[6]~11_combout\ & ((\inst22|man|Mux2~1_combout\ & (\inst22|mw|X\(4))) # (!\inst22|man|Mux2~1_combout\ & ((\inst22|man|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans[6]~11_combout\,
	datab => \inst22|man|Mux2~1_combout\,
	datac => \inst22|mw|X\(4),
	datad => \inst22|man|Add0~12_combout\,
	combout => \inst22|man|Mux2~2_combout\);

-- Location: FF_X23_Y18_N29
\inst22|man|ans[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[5]~1_combout\,
	asdata => \inst22|man|Mux2~2_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(5));

-- Location: LCCOMB_X21_Y18_N12
\inst21|rf|R0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~2_combout\ = (\rd~input_o\ & ((\wr~input_o\ & ((\inst22|man|ans\(5)))) # (!\wr~input_o\ & (\keyout[5]~input_o\)))) # (!\rd~input_o\ & (((\inst22|man|ans\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \keyout[5]~input_o\,
	datac => \wr~input_o\,
	datad => \inst22|man|ans\(5),
	combout => \inst21|rf|R0~2_combout\);

-- Location: LCCOMB_X20_Y18_N4
\inst21|rf|R2[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R2[5]~feeder_combout\ = \inst21|rf|R0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|rf|R0~2_combout\,
	combout => \inst21|rf|R2[5]~feeder_combout\);

-- Location: FF_X20_Y18_N5
\inst21|rf|R2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R2[5]~feeder_combout\,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(5));

-- Location: FF_X21_Y18_N3
\inst21|rf|R0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~2_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(5));

-- Location: LCCOMB_X20_Y18_N16
\inst18|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector2~0_combout\ = (\inst18|opt2[0]~0_combout\ & (\inst18|opt2[0]~1_combout\)) # (!\inst18|opt2[0]~0_combout\ & ((\inst18|opt2[0]~1_combout\ & ((\inst21|rf|R0\(5)))) # (!\inst18|opt2[0]~1_combout\ & (\inst21|rf|R2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~0_combout\,
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|rf|R2\(5),
	datad => \inst21|rf|R0\(5),
	combout => \inst18|Selector2~0_combout\);

-- Location: FF_X20_Y18_N9
\inst21|rf|R1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~2_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(5));

-- Location: LCCOMB_X20_Y18_N8
\inst18|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector2~1_combout\ = (\inst18|opt2[0]~0_combout\ & ((\inst18|Selector2~0_combout\ & ((\inst21|pf|PC\(5)))) # (!\inst18|Selector2~0_combout\ & (\inst21|rf|R1\(5))))) # (!\inst18|opt2[0]~0_combout\ & (\inst18|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~0_combout\,
	datab => \inst18|Selector2~0_combout\,
	datac => \inst21|rf|R1\(5),
	datad => \inst21|pf|PC\(5),
	combout => \inst18|Selector2~1_combout\);

-- Location: LCCOMB_X18_Y18_N24
\inst18|opt1[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[5]~feeder_combout\ = \inst18|Selector2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector2~1_combout\,
	combout => \inst18|opt1[5]~feeder_combout\);

-- Location: FF_X18_Y18_N25
\inst18|opt1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt1[5]~feeder_combout\,
	asdata => \inst21|rf|R3\(5),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(5));

-- Location: FF_X26_Y18_N29
\inst22|mw|X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt1\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|X\(5));

-- Location: LCCOMB_X27_Y18_N6
\inst22|man|ans~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~18_combout\ = (\inst22|mw|Y\(4) & \inst22|mw|X\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|mw|Y\(4),
	datad => \inst22|mw|X\(4),
	combout => \inst22|man|ans~18_combout\);

-- Location: LCCOMB_X26_Y18_N6
\inst22|man|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux3~0_combout\ = (\inst22|man|ans[6]~11_combout\ & ((\inst22|man|ans~18_combout\) # ((\inst22|man|ans[6]~9_combout\)))) # (!\inst22|man|ans[6]~11_combout\ & (((!\inst22|man|ans[6]~9_combout\ & \inst22|man|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans~18_combout\,
	datab => \inst22|man|ans[6]~11_combout\,
	datac => \inst22|man|ans[6]~9_combout\,
	datad => \inst22|man|Add0~10_combout\,
	combout => \inst22|man|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y18_N22
\inst22|man|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux3~1_combout\ = (\inst22|man|ans[6]~9_combout\ & ((\inst22|man|Mux3~0_combout\ & (\inst22|mw|X\(5))) # (!\inst22|man|Mux3~0_combout\ & ((\inst22|mw|X\(3)))))) # (!\inst22|man|ans[6]~9_combout\ & (((\inst22|man|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans[6]~9_combout\,
	datab => \inst22|mw|X\(5),
	datac => \inst22|mw|X\(3),
	datad => \inst22|man|Mux3~0_combout\,
	combout => \inst22|man|Mux3~1_combout\);

-- Location: FF_X25_Y18_N19
\inst22|man|ans[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[4]~2_combout\,
	asdata => \inst22|man|Mux3~1_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(4));

-- Location: LCCOMB_X25_Y18_N16
\inst21|rf|R0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~3_combout\ = (\wr~input_o\ & (((\inst22|man|ans\(4))))) # (!\wr~input_o\ & ((\rd~input_o\ & (\keyout[4]~input_o\)) # (!\rd~input_o\ & ((\inst22|man|ans\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyout[4]~input_o\,
	datab => \wr~input_o\,
	datac => \rd~input_o\,
	datad => \inst22|man|ans\(4),
	combout => \inst21|rf|R0~3_combout\);

-- Location: FF_X19_Y18_N15
\inst21|rf|R0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~3_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(4));

-- Location: FF_X19_Y18_N1
\inst21|rf|R2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~3_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(4));

-- Location: LCCOMB_X20_Y18_N26
\inst21|rf|R1[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R1[4]~feeder_combout\ = \inst21|rf|R0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|rf|R0~3_combout\,
	combout => \inst21|rf|R1[4]~feeder_combout\);

-- Location: FF_X20_Y18_N27
\inst21|rf|R1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R1[4]~feeder_combout\,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(4));

-- Location: LCCOMB_X19_Y18_N2
\inst18|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector3~0_combout\ = (\inst18|opt2[0]~0_combout\ & ((\inst18|opt2[0]~1_combout\) # ((\inst21|rf|R1\(4))))) # (!\inst18|opt2[0]~0_combout\ & (!\inst18|opt2[0]~1_combout\ & (\inst21|rf|R2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~0_combout\,
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|rf|R2\(4),
	datad => \inst21|rf|R1\(4),
	combout => \inst18|Selector3~0_combout\);

-- Location: LCCOMB_X19_Y18_N28
\inst18|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector3~1_combout\ = (\inst18|opt2[0]~1_combout\ & ((\inst18|Selector3~0_combout\ & ((\inst21|pf|PC\(4)))) # (!\inst18|Selector3~0_combout\ & (\inst21|rf|R0\(4))))) # (!\inst18|opt2[0]~1_combout\ & (((\inst18|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|rf|R0\(4),
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|pf|PC\(4),
	datad => \inst18|Selector3~0_combout\,
	combout => \inst18|Selector3~1_combout\);

-- Location: LCCOMB_X18_Y18_N12
\inst18|opt1[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[4]~feeder_combout\ = \inst18|Selector3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector3~1_combout\,
	combout => \inst18|opt1[4]~feeder_combout\);

-- Location: FF_X18_Y18_N13
\inst18|opt1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt1[4]~feeder_combout\,
	asdata => \inst21|rf|R3\(4),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(4));

-- Location: FF_X26_Y18_N9
\inst22|mw|X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt1\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|X\(4));

-- Location: LCCOMB_X27_Y18_N22
\inst22|man|ans~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~21_combout\ = (\inst22|mw|X\(3) & \inst22|mw|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(3),
	datac => \inst22|mw|Y\(3),
	combout => \inst22|man|ans~21_combout\);

-- Location: LCCOMB_X27_Y18_N28
\inst22|man|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux4~0_combout\ = (\inst22|man|ans[6]~11_combout\ & (((\inst22|man|ans[6]~9_combout\)))) # (!\inst22|man|ans[6]~11_combout\ & ((\inst22|man|ans[6]~9_combout\ & (\inst22|mw|X\(2))) # (!\inst22|man|ans[6]~9_combout\ & 
-- ((\inst22|man|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(2),
	datab => \inst22|man|ans[6]~11_combout\,
	datac => \inst22|man|ans[6]~9_combout\,
	datad => \inst22|man|Add0~8_combout\,
	combout => \inst22|man|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y18_N30
\inst22|man|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux4~1_combout\ = (\inst22|man|ans[6]~11_combout\ & ((\inst22|man|Mux4~0_combout\ & (\inst22|mw|X\(4))) # (!\inst22|man|Mux4~0_combout\ & ((\inst22|man|ans~21_combout\))))) # (!\inst22|man|ans[6]~11_combout\ & 
-- (((\inst22|man|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(4),
	datab => \inst22|man|ans[6]~11_combout\,
	datac => \inst22|man|ans~21_combout\,
	datad => \inst22|man|Mux4~0_combout\,
	combout => \inst22|man|Mux4~1_combout\);

-- Location: FF_X23_Y18_N19
\inst22|man|ans[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[3]~3_combout\,
	asdata => \inst22|man|Mux4~1_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(3));

-- Location: LCCOMB_X23_Y18_N16
\inst21|rf|R0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~4_combout\ = (\wr~input_o\ & (((\inst22|man|ans\(3))))) # (!\wr~input_o\ & ((\rd~input_o\ & (\keyout[3]~input_o\)) # (!\rd~input_o\ & ((\inst22|man|ans\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \rd~input_o\,
	datac => \keyout[3]~input_o\,
	datad => \inst22|man|ans\(3),
	combout => \inst21|rf|R0~4_combout\);

-- Location: LCCOMB_X20_Y18_N28
\inst21|rf|R1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R1[3]~feeder_combout\ = \inst21|rf|R0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|rf|R0~4_combout\,
	combout => \inst21|rf|R1[3]~feeder_combout\);

-- Location: FF_X20_Y18_N29
\inst21|rf|R1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R1[3]~feeder_combout\,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(3));

-- Location: LCCOMB_X19_Y18_N22
\inst21|rf|R2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R2[3]~feeder_combout\ = \inst21|rf|R0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|rf|R0~4_combout\,
	combout => \inst21|rf|R2[3]~feeder_combout\);

-- Location: FF_X19_Y18_N23
\inst21|rf|R2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R2[3]~feeder_combout\,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(3));

-- Location: FF_X19_Y18_N21
\inst21|rf|R0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~4_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(3));

-- Location: LCCOMB_X19_Y18_N30
\inst18|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector4~0_combout\ = (\inst18|opt2[0]~0_combout\ & (\inst18|opt2[0]~1_combout\)) # (!\inst18|opt2[0]~0_combout\ & ((\inst18|opt2[0]~1_combout\ & ((\inst21|rf|R0\(3)))) # (!\inst18|opt2[0]~1_combout\ & (\inst21|rf|R2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~0_combout\,
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|rf|R2\(3),
	datad => \inst21|rf|R0\(3),
	combout => \inst18|Selector4~0_combout\);

-- Location: LCCOMB_X19_Y18_N16
\inst18|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector4~1_combout\ = (\inst18|opt2[0]~0_combout\ & ((\inst18|Selector4~0_combout\ & ((\inst21|pf|PC\(3)))) # (!\inst18|Selector4~0_combout\ & (\inst21|rf|R1\(3))))) # (!\inst18|opt2[0]~0_combout\ & (((\inst18|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~0_combout\,
	datab => \inst21|rf|R1\(3),
	datac => \inst18|Selector4~0_combout\,
	datad => \inst21|pf|PC\(3),
	combout => \inst18|Selector4~1_combout\);

-- Location: LCCOMB_X18_Y18_N0
\inst18|opt1[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[3]~feeder_combout\ = \inst18|Selector4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector4~1_combout\,
	combout => \inst18|opt1[3]~feeder_combout\);

-- Location: FF_X18_Y18_N1
\inst18|opt1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt1[3]~feeder_combout\,
	asdata => \inst21|rf|R3\(3),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(3));

-- Location: FF_X26_Y18_N11
\inst22|mw|X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt1\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|X\(3));

-- Location: LCCOMB_X27_Y18_N12
\inst22|man|ans~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~24_combout\ = (\inst22|mw|Y\(2) & \inst22|mw|X\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(2),
	datad => \inst22|mw|X\(2),
	combout => \inst22|man|ans~24_combout\);

-- Location: LCCOMB_X27_Y18_N18
\inst22|man|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux5~0_combout\ = (\inst22|man|ans[6]~9_combout\ & (\inst22|man|ans[6]~11_combout\)) # (!\inst22|man|ans[6]~9_combout\ & ((\inst22|man|ans[6]~11_combout\ & ((\inst22|man|ans~24_combout\))) # (!\inst22|man|ans[6]~11_combout\ & 
-- (\inst22|man|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans[6]~9_combout\,
	datab => \inst22|man|ans[6]~11_combout\,
	datac => \inst22|man|Add0~6_combout\,
	datad => \inst22|man|ans~24_combout\,
	combout => \inst22|man|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst22|man|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux5~1_combout\ = (\inst22|man|ans[6]~9_combout\ & ((\inst22|man|Mux5~0_combout\ & (\inst22|mw|X\(3))) # (!\inst22|man|Mux5~0_combout\ & ((\inst22|mw|X\(1)))))) # (!\inst22|man|ans[6]~9_combout\ & (((\inst22|man|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(3),
	datab => \inst22|mw|X\(1),
	datac => \inst22|man|ans[6]~9_combout\,
	datad => \inst22|man|Mux5~0_combout\,
	combout => \inst22|man|Mux5~1_combout\);

-- Location: FF_X23_Y18_N13
\inst22|man|ans[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[2]~4_combout\,
	asdata => \inst22|man|Mux5~1_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(2));

-- Location: LCCOMB_X21_Y18_N30
\inst21|rf|R0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~5_combout\ = (\wr~input_o\ & (((\inst22|man|ans\(2))))) # (!\wr~input_o\ & ((\rd~input_o\ & (\keyout[2]~input_o\)) # (!\rd~input_o\ & ((\inst22|man|ans\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \rd~input_o\,
	datac => \keyout[2]~input_o\,
	datad => \inst22|man|ans\(2),
	combout => \inst21|rf|R0~5_combout\);

-- Location: LCCOMB_X21_Y18_N24
\inst21|rf|R0[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0[2]~feeder_combout\ = \inst21|rf|R0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|rf|R0~5_combout\,
	combout => \inst21|rf|R0[2]~feeder_combout\);

-- Location: FF_X21_Y18_N25
\inst21|rf|R0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R0[2]~feeder_combout\,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(2));

-- Location: FF_X19_Y18_N9
\inst21|rf|R2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~5_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(2));

-- Location: LCCOMB_X20_Y18_N6
\inst21|rf|R1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R1[2]~feeder_combout\ = \inst21|rf|R0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|rf|R0~5_combout\,
	combout => \inst21|rf|R1[2]~feeder_combout\);

-- Location: FF_X20_Y18_N7
\inst21|rf|R1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R1[2]~feeder_combout\,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(2));

-- Location: LCCOMB_X19_Y18_N6
\inst18|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector5~0_combout\ = (\inst18|opt2[0]~0_combout\ & ((\inst18|opt2[0]~1_combout\) # ((\inst21|rf|R1\(2))))) # (!\inst18|opt2[0]~0_combout\ & (!\inst18|opt2[0]~1_combout\ & (\inst21|rf|R2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~0_combout\,
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|rf|R2\(2),
	datad => \inst21|rf|R1\(2),
	combout => \inst18|Selector5~0_combout\);

-- Location: LCCOMB_X19_Y18_N24
\inst18|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector5~1_combout\ = (\inst18|opt2[0]~1_combout\ & ((\inst18|Selector5~0_combout\ & ((\inst21|pf|PC\(2)))) # (!\inst18|Selector5~0_combout\ & (\inst21|rf|R0\(2))))) # (!\inst18|opt2[0]~1_combout\ & (((\inst18|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|rf|R0\(2),
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|pf|PC\(2),
	datad => \inst18|Selector5~0_combout\,
	combout => \inst18|Selector5~1_combout\);

-- Location: LCCOMB_X18_Y18_N4
\inst18|opt1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[2]~feeder_combout\ = \inst18|Selector5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector5~1_combout\,
	combout => \inst18|opt1[2]~feeder_combout\);

-- Location: FF_X18_Y18_N5
\inst18|opt1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt1[2]~feeder_combout\,
	asdata => \inst21|rf|R3\(2),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(2));

-- Location: FF_X26_Y18_N3
\inst22|mw|X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|X\(2));

-- Location: LCCOMB_X26_Y18_N2
\inst22|man|ans~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~27_combout\ = (\inst22|mw|X\(1) & \inst22|mw|Y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(1),
	datab => \inst22|mw|Y\(1),
	combout => \inst22|man|ans~27_combout\);

-- Location: LCCOMB_X27_Y18_N0
\inst22|man|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux6~0_combout\ = (\inst22|man|ans[6]~9_combout\ & ((\inst22|man|ans[6]~11_combout\) # ((\inst22|mw|X\(0))))) # (!\inst22|man|ans[6]~9_combout\ & (!\inst22|man|ans[6]~11_combout\ & ((\inst22|man|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans[6]~9_combout\,
	datab => \inst22|man|ans[6]~11_combout\,
	datac => \inst22|mw|X\(0),
	datad => \inst22|man|Add0~4_combout\,
	combout => \inst22|man|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y18_N10
\inst22|man|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux6~1_combout\ = (\inst22|man|ans[6]~11_combout\ & ((\inst22|man|Mux6~0_combout\ & (\inst22|mw|X\(2))) # (!\inst22|man|Mux6~0_combout\ & ((\inst22|man|ans~27_combout\))))) # (!\inst22|man|ans[6]~11_combout\ & 
-- (((\inst22|man|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(2),
	datab => \inst22|man|ans[6]~11_combout\,
	datac => \inst22|man|ans~27_combout\,
	datad => \inst22|man|Mux6~0_combout\,
	combout => \inst22|man|Mux6~1_combout\);

-- Location: FF_X25_Y18_N25
\inst22|man|ans[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[1]~5_combout\,
	asdata => \inst22|man|Mux6~1_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(1));

-- Location: LCCOMB_X21_Y18_N8
\inst21|rf|R0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~6_combout\ = (\wr~input_o\ & (((\inst22|man|ans\(1))))) # (!\wr~input_o\ & ((\rd~input_o\ & (\keyout[1]~input_o\)) # (!\rd~input_o\ & ((\inst22|man|ans\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \keyout[1]~input_o\,
	datac => \rd~input_o\,
	datad => \inst22|man|ans\(1),
	combout => \inst21|rf|R0~6_combout\);

-- Location: FF_X20_Y18_N13
\inst21|rf|R1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~6_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(1));

-- Location: FF_X20_Y18_N3
\inst21|rf|R2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~6_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(1));

-- Location: LCCOMB_X21_Y18_N6
\inst21|rf|R0[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0[1]~feeder_combout\ = \inst21|rf|R0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|rf|R0~6_combout\,
	combout => \inst21|rf|R0[1]~feeder_combout\);

-- Location: FF_X21_Y18_N7
\inst21|rf|R0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R0[1]~feeder_combout\,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(1));

-- Location: LCCOMB_X20_Y18_N2
\inst18|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector6~0_combout\ = (\inst18|opt2[0]~0_combout\ & (\inst18|opt2[0]~1_combout\)) # (!\inst18|opt2[0]~0_combout\ & ((\inst18|opt2[0]~1_combout\ & ((\inst21|rf|R0\(1)))) # (!\inst18|opt2[0]~1_combout\ & (\inst21|rf|R2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~0_combout\,
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|rf|R2\(1),
	datad => \inst21|rf|R0\(1),
	combout => \inst18|Selector6~0_combout\);

-- Location: LCCOMB_X20_Y18_N12
\inst18|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector6~1_combout\ = (\inst18|opt2[0]~0_combout\ & ((\inst18|Selector6~0_combout\ & (\inst21|pf|PC\(1))) # (!\inst18|Selector6~0_combout\ & ((\inst21|rf|R1\(1)))))) # (!\inst18|opt2[0]~0_combout\ & (((\inst18|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~0_combout\,
	datab => \inst21|pf|PC\(1),
	datac => \inst21|rf|R1\(1),
	datad => \inst18|Selector6~0_combout\,
	combout => \inst18|Selector6~1_combout\);

-- Location: LCCOMB_X18_Y18_N28
\inst18|opt1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[1]~feeder_combout\ = \inst18|Selector6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector6~1_combout\,
	combout => \inst18|opt1[1]~feeder_combout\);

-- Location: FF_X18_Y18_N29
\inst18|opt1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt1[1]~feeder_combout\,
	asdata => \inst21|rf|R3\(1),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(1));

-- Location: FF_X26_Y18_N23
\inst22|mw|X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt1\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|X\(1));

-- Location: LCCOMB_X25_Y18_N8
\inst22|man|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux7~0_combout\ = (\S[1]~input_o\ & (((\inst22|mw|X\(1))))) # (!\S[1]~input_o\ & (!\S[0]~input_o\ & (\inst22|man|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \inst22|man|Add0~2_combout\,
	datad => \inst22|mw|X\(1),
	combout => \inst22|man|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y18_N2
\inst22|man|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux7~2_combout\ = (\S[2]~input_o\ & ((\inst22|man|Mux7~0_combout\))) # (!\S[2]~input_o\ & (\inst22|man|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[2]~input_o\,
	datac => \inst22|man|Mux7~1_combout\,
	datad => \inst22|man|Mux7~0_combout\,
	combout => \inst22|man|Mux7~2_combout\);

-- Location: FF_X22_Y18_N3
\inst22|man|ans[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(0));

-- Location: LCCOMB_X21_Y18_N0
\inst21|pf|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux7~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(0)))) # (!\M[0]~input_o\ & (\keyout[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \keyout[0]~input_o\,
	datad => \inst22|man|ans\(0),
	combout => \inst21|pf|Mux7~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\pc_clr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_clr,
	o => \pc_clr~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\M[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(1),
	o => \M[1]~input_o\);

-- Location: LCCOMB_X21_Y4_N0
\inst21|cs|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~0_combout\ = \inst21|cs|second_counter\(0) $ (VCC)
-- \inst21|cs|Add0~1\ = CARRY(\inst21|cs|second_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(0),
	datad => VCC,
	combout => \inst21|cs|Add0~0_combout\,
	cout => \inst21|cs|Add0~1\);

-- Location: LCCOMB_X22_Y4_N30
\inst21|cs|second_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~0_combout\ = (\inst21|cs|Add0~0_combout\ & !\inst21|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|cs|Add0~0_combout\,
	datad => \inst21|cs|Equal0~10_combout\,
	combout => \inst21|cs|second_counter~0_combout\);

-- Location: FF_X22_Y4_N31
\inst21|cs|second_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|second_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(0));

-- Location: LCCOMB_X21_Y4_N2
\inst21|cs|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~2_combout\ = (\inst21|cs|second_counter\(1) & (!\inst21|cs|Add0~1\)) # (!\inst21|cs|second_counter\(1) & ((\inst21|cs|Add0~1\) # (GND)))
-- \inst21|cs|Add0~3\ = CARRY((!\inst21|cs|Add0~1\) # (!\inst21|cs|second_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(1),
	datad => VCC,
	cin => \inst21|cs|Add0~1\,
	combout => \inst21|cs|Add0~2_combout\,
	cout => \inst21|cs|Add0~3\);

-- Location: FF_X21_Y4_N3
\inst21|cs|second_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(1));

-- Location: LCCOMB_X21_Y4_N4
\inst21|cs|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~4_combout\ = (\inst21|cs|second_counter\(2) & (\inst21|cs|Add0~3\ $ (GND))) # (!\inst21|cs|second_counter\(2) & (!\inst21|cs|Add0~3\ & VCC))
-- \inst21|cs|Add0~5\ = CARRY((\inst21|cs|second_counter\(2) & !\inst21|cs|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(2),
	datad => VCC,
	cin => \inst21|cs|Add0~3\,
	combout => \inst21|cs|Add0~4_combout\,
	cout => \inst21|cs|Add0~5\);

-- Location: FF_X21_Y4_N5
\inst21|cs|second_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(2));

-- Location: LCCOMB_X21_Y4_N6
\inst21|cs|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~6_combout\ = (\inst21|cs|second_counter\(3) & (!\inst21|cs|Add0~5\)) # (!\inst21|cs|second_counter\(3) & ((\inst21|cs|Add0~5\) # (GND)))
-- \inst21|cs|Add0~7\ = CARRY((!\inst21|cs|Add0~5\) # (!\inst21|cs|second_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(3),
	datad => VCC,
	cin => \inst21|cs|Add0~5\,
	combout => \inst21|cs|Add0~6_combout\,
	cout => \inst21|cs|Add0~7\);

-- Location: FF_X21_Y4_N7
\inst21|cs|second_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(3));

-- Location: LCCOMB_X21_Y4_N8
\inst21|cs|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~8_combout\ = (\inst21|cs|second_counter\(4) & (\inst21|cs|Add0~7\ $ (GND))) # (!\inst21|cs|second_counter\(4) & (!\inst21|cs|Add0~7\ & VCC))
-- \inst21|cs|Add0~9\ = CARRY((\inst21|cs|second_counter\(4) & !\inst21|cs|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(4),
	datad => VCC,
	cin => \inst21|cs|Add0~7\,
	combout => \inst21|cs|Add0~8_combout\,
	cout => \inst21|cs|Add0~9\);

-- Location: FF_X21_Y4_N9
\inst21|cs|second_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(4));

-- Location: LCCOMB_X21_Y4_N10
\inst21|cs|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~10_combout\ = (\inst21|cs|second_counter\(5) & (!\inst21|cs|Add0~9\)) # (!\inst21|cs|second_counter\(5) & ((\inst21|cs|Add0~9\) # (GND)))
-- \inst21|cs|Add0~11\ = CARRY((!\inst21|cs|Add0~9\) # (!\inst21|cs|second_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(5),
	datad => VCC,
	cin => \inst21|cs|Add0~9\,
	combout => \inst21|cs|Add0~10_combout\,
	cout => \inst21|cs|Add0~11\);

-- Location: LCCOMB_X22_Y4_N2
\inst21|cs|second_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~3_combout\ = (\inst21|cs|Add0~10_combout\ & !\inst21|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|cs|Add0~10_combout\,
	datad => \inst21|cs|Equal0~10_combout\,
	combout => \inst21|cs|second_counter~3_combout\);

-- Location: FF_X22_Y4_N3
\inst21|cs|second_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|second_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(5));

-- Location: LCCOMB_X21_Y4_N12
\inst21|cs|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~12_combout\ = (\inst21|cs|second_counter\(6) & (\inst21|cs|Add0~11\ $ (GND))) # (!\inst21|cs|second_counter\(6) & (!\inst21|cs|Add0~11\ & VCC))
-- \inst21|cs|Add0~13\ = CARRY((\inst21|cs|second_counter\(6) & !\inst21|cs|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(6),
	datad => VCC,
	cin => \inst21|cs|Add0~11\,
	combout => \inst21|cs|Add0~12_combout\,
	cout => \inst21|cs|Add0~13\);

-- Location: FF_X21_Y4_N13
\inst21|cs|second_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(6));

-- Location: LCCOMB_X21_Y4_N14
\inst21|cs|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~14_combout\ = (\inst21|cs|second_counter\(7) & (!\inst21|cs|Add0~13\)) # (!\inst21|cs|second_counter\(7) & ((\inst21|cs|Add0~13\) # (GND)))
-- \inst21|cs|Add0~15\ = CARRY((!\inst21|cs|Add0~13\) # (!\inst21|cs|second_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(7),
	datad => VCC,
	cin => \inst21|cs|Add0~13\,
	combout => \inst21|cs|Add0~14_combout\,
	cout => \inst21|cs|Add0~15\);

-- Location: LCCOMB_X22_Y4_N4
\inst21|cs|second_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~4_combout\ = (!\inst21|cs|Equal0~10_combout\ & \inst21|cs|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|Equal0~10_combout\,
	datad => \inst21|cs|Add0~14_combout\,
	combout => \inst21|cs|second_counter~4_combout\);

-- Location: FF_X22_Y4_N5
\inst21|cs|second_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|second_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(7));

-- Location: LCCOMB_X21_Y4_N16
\inst21|cs|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~16_combout\ = (\inst21|cs|second_counter\(8) & (\inst21|cs|Add0~15\ $ (GND))) # (!\inst21|cs|second_counter\(8) & (!\inst21|cs|Add0~15\ & VCC))
-- \inst21|cs|Add0~17\ = CARRY((\inst21|cs|second_counter\(8) & !\inst21|cs|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(8),
	datad => VCC,
	cin => \inst21|cs|Add0~15\,
	combout => \inst21|cs|Add0~16_combout\,
	cout => \inst21|cs|Add0~17\);

-- Location: FF_X21_Y4_N17
\inst21|cs|second_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(8));

-- Location: LCCOMB_X21_Y4_N18
\inst21|cs|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~18_combout\ = (\inst21|cs|second_counter\(9) & (!\inst21|cs|Add0~17\)) # (!\inst21|cs|second_counter\(9) & ((\inst21|cs|Add0~17\) # (GND)))
-- \inst21|cs|Add0~19\ = CARRY((!\inst21|cs|Add0~17\) # (!\inst21|cs|second_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(9),
	datad => VCC,
	cin => \inst21|cs|Add0~17\,
	combout => \inst21|cs|Add0~18_combout\,
	cout => \inst21|cs|Add0~19\);

-- Location: LCCOMB_X22_Y4_N26
\inst21|cs|second_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~5_combout\ = (!\inst21|cs|Equal0~10_combout\ & \inst21|cs|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|Equal0~10_combout\,
	datad => \inst21|cs|Add0~18_combout\,
	combout => \inst21|cs|second_counter~5_combout\);

-- Location: FF_X22_Y4_N27
\inst21|cs|second_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|second_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(9));

-- Location: LCCOMB_X22_Y4_N6
\inst21|cs|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~8_combout\ = (\inst21|cs|second_counter\(7) & (\inst21|cs|second_counter\(10) & (\inst21|cs|second_counter\(9) & \inst21|cs|second_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(7),
	datab => \inst21|cs|second_counter\(10),
	datac => \inst21|cs|second_counter\(9),
	datad => \inst21|cs|second_counter\(5),
	combout => \inst21|cs|Equal0~8_combout\);

-- Location: LCCOMB_X22_Y4_N12
\inst21|cs|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~1_combout\ = (!\inst21|cs|second_counter\(0) & (!\inst21|cs|second_counter\(11) & (!\inst21|cs|second_counter\(8) & !\inst21|cs|second_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(0),
	datab => \inst21|cs|second_counter\(11),
	datac => \inst21|cs|second_counter\(8),
	datad => \inst21|cs|second_counter\(6),
	combout => \inst21|cs|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y4_N24
\inst21|cs|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~0_combout\ = (!\inst21|cs|second_counter\(1) & (!\inst21|cs|second_counter\(2) & (!\inst21|cs|second_counter\(3) & !\inst21|cs|second_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(1),
	datab => \inst21|cs|second_counter\(2),
	datac => \inst21|cs|second_counter\(3),
	datad => \inst21|cs|second_counter\(4),
	combout => \inst21|cs|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y3_N0
\inst21|cs|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~32_combout\ = (\inst21|cs|second_counter\(16) & (\inst21|cs|Add0~31\ $ (GND))) # (!\inst21|cs|second_counter\(16) & (!\inst21|cs|Add0~31\ & VCC))
-- \inst21|cs|Add0~33\ = CARRY((\inst21|cs|second_counter\(16) & !\inst21|cs|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(16),
	datad => VCC,
	cin => \inst21|cs|Add0~31\,
	combout => \inst21|cs|Add0~32_combout\,
	cout => \inst21|cs|Add0~33\);

-- Location: LCCOMB_X21_Y3_N2
\inst21|cs|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~34_combout\ = (\inst21|cs|second_counter\(17) & (!\inst21|cs|Add0~33\)) # (!\inst21|cs|second_counter\(17) & ((\inst21|cs|Add0~33\) # (GND)))
-- \inst21|cs|Add0~35\ = CARRY((!\inst21|cs|Add0~33\) # (!\inst21|cs|second_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(17),
	datad => VCC,
	cin => \inst21|cs|Add0~33\,
	combout => \inst21|cs|Add0~34_combout\,
	cout => \inst21|cs|Add0~35\);

-- Location: FF_X21_Y3_N3
\inst21|cs|second_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(17));

-- Location: LCCOMB_X22_Y4_N22
\inst21|cs|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~2_combout\ = (!\inst21|cs|second_counter\(13) & (!\inst21|cs|second_counter\(12) & (!\inst21|cs|second_counter\(14) & !\inst21|cs|second_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(13),
	datab => \inst21|cs|second_counter\(12),
	datac => \inst21|cs|second_counter\(14),
	datad => \inst21|cs|second_counter\(17),
	combout => \inst21|cs|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y3_N4
\inst21|cs|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~36_combout\ = (\inst21|cs|second_counter\(18) & (\inst21|cs|Add0~35\ $ (GND))) # (!\inst21|cs|second_counter\(18) & (!\inst21|cs|Add0~35\ & VCC))
-- \inst21|cs|Add0~37\ = CARRY((\inst21|cs|second_counter\(18) & !\inst21|cs|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(18),
	datad => VCC,
	cin => \inst21|cs|Add0~35\,
	combout => \inst21|cs|Add0~36_combout\,
	cout => \inst21|cs|Add0~37\);

-- Location: FF_X21_Y3_N5
\inst21|cs|second_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(18));

-- Location: LCCOMB_X21_Y3_N6
\inst21|cs|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~38_combout\ = (\inst21|cs|second_counter\(19) & (!\inst21|cs|Add0~37\)) # (!\inst21|cs|second_counter\(19) & ((\inst21|cs|Add0~37\) # (GND)))
-- \inst21|cs|Add0~39\ = CARRY((!\inst21|cs|Add0~37\) # (!\inst21|cs|second_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(19),
	datad => VCC,
	cin => \inst21|cs|Add0~37\,
	combout => \inst21|cs|Add0~38_combout\,
	cout => \inst21|cs|Add0~39\);

-- Location: FF_X21_Y3_N7
\inst21|cs|second_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(19));

-- Location: LCCOMB_X21_Y3_N8
\inst21|cs|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~40_combout\ = (\inst21|cs|second_counter\(20) & (\inst21|cs|Add0~39\ $ (GND))) # (!\inst21|cs|second_counter\(20) & (!\inst21|cs|Add0~39\ & VCC))
-- \inst21|cs|Add0~41\ = CARRY((\inst21|cs|second_counter\(20) & !\inst21|cs|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(20),
	datad => VCC,
	cin => \inst21|cs|Add0~39\,
	combout => \inst21|cs|Add0~40_combout\,
	cout => \inst21|cs|Add0~41\);

-- Location: FF_X21_Y3_N9
\inst21|cs|second_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(20));

-- Location: LCCOMB_X21_Y3_N10
\inst21|cs|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~42_combout\ = (\inst21|cs|second_counter\(21) & (!\inst21|cs|Add0~41\)) # (!\inst21|cs|second_counter\(21) & ((\inst21|cs|Add0~41\) # (GND)))
-- \inst21|cs|Add0~43\ = CARRY((!\inst21|cs|Add0~41\) # (!\inst21|cs|second_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(21),
	datad => VCC,
	cin => \inst21|cs|Add0~41\,
	combout => \inst21|cs|Add0~42_combout\,
	cout => \inst21|cs|Add0~43\);

-- Location: FF_X21_Y3_N11
\inst21|cs|second_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(21));

-- Location: LCCOMB_X22_Y3_N0
\inst21|cs|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~3_combout\ = (!\inst21|cs|second_counter\(21) & (!\inst21|cs|second_counter\(19) & (!\inst21|cs|second_counter\(18) & !\inst21|cs|second_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(21),
	datab => \inst21|cs|second_counter\(19),
	datac => \inst21|cs|second_counter\(18),
	datad => \inst21|cs|second_counter\(20),
	combout => \inst21|cs|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y4_N20
\inst21|cs|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~4_combout\ = (\inst21|cs|Equal0~1_combout\ & (\inst21|cs|Equal0~0_combout\ & (\inst21|cs|Equal0~2_combout\ & \inst21|cs|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|Equal0~1_combout\,
	datab => \inst21|cs|Equal0~0_combout\,
	datac => \inst21|cs|Equal0~2_combout\,
	datad => \inst21|cs|Equal0~3_combout\,
	combout => \inst21|cs|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y3_N12
\inst21|cs|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~44_combout\ = (\inst21|cs|second_counter\(22) & (\inst21|cs|Add0~43\ $ (GND))) # (!\inst21|cs|second_counter\(22) & (!\inst21|cs|Add0~43\ & VCC))
-- \inst21|cs|Add0~45\ = CARRY((\inst21|cs|second_counter\(22) & !\inst21|cs|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(22),
	datad => VCC,
	cin => \inst21|cs|Add0~43\,
	combout => \inst21|cs|Add0~44_combout\,
	cout => \inst21|cs|Add0~45\);

-- Location: FF_X21_Y3_N13
\inst21|cs|second_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(22));

-- Location: LCCOMB_X21_Y3_N14
\inst21|cs|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~46_combout\ = (\inst21|cs|second_counter\(23) & (!\inst21|cs|Add0~45\)) # (!\inst21|cs|second_counter\(23) & ((\inst21|cs|Add0~45\) # (GND)))
-- \inst21|cs|Add0~47\ = CARRY((!\inst21|cs|Add0~45\) # (!\inst21|cs|second_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(23),
	datad => VCC,
	cin => \inst21|cs|Add0~45\,
	combout => \inst21|cs|Add0~46_combout\,
	cout => \inst21|cs|Add0~47\);

-- Location: FF_X21_Y3_N15
\inst21|cs|second_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(23));

-- Location: LCCOMB_X21_Y3_N16
\inst21|cs|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~48_combout\ = (\inst21|cs|second_counter\(24) & (\inst21|cs|Add0~47\ $ (GND))) # (!\inst21|cs|second_counter\(24) & (!\inst21|cs|Add0~47\ & VCC))
-- \inst21|cs|Add0~49\ = CARRY((\inst21|cs|second_counter\(24) & !\inst21|cs|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(24),
	datad => VCC,
	cin => \inst21|cs|Add0~47\,
	combout => \inst21|cs|Add0~48_combout\,
	cout => \inst21|cs|Add0~49\);

-- Location: FF_X21_Y3_N17
\inst21|cs|second_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(24));

-- Location: LCCOMB_X21_Y3_N18
\inst21|cs|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~50_combout\ = (\inst21|cs|second_counter\(25) & (!\inst21|cs|Add0~49\)) # (!\inst21|cs|second_counter\(25) & ((\inst21|cs|Add0~49\) # (GND)))
-- \inst21|cs|Add0~51\ = CARRY((!\inst21|cs|Add0~49\) # (!\inst21|cs|second_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(25),
	datad => VCC,
	cin => \inst21|cs|Add0~49\,
	combout => \inst21|cs|Add0~50_combout\,
	cout => \inst21|cs|Add0~51\);

-- Location: FF_X21_Y3_N19
\inst21|cs|second_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(25));

-- Location: LCCOMB_X21_Y3_N20
\inst21|cs|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~52_combout\ = (\inst21|cs|second_counter\(26) & (\inst21|cs|Add0~51\ $ (GND))) # (!\inst21|cs|second_counter\(26) & (!\inst21|cs|Add0~51\ & VCC))
-- \inst21|cs|Add0~53\ = CARRY((\inst21|cs|second_counter\(26) & !\inst21|cs|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(26),
	datad => VCC,
	cin => \inst21|cs|Add0~51\,
	combout => \inst21|cs|Add0~52_combout\,
	cout => \inst21|cs|Add0~53\);

-- Location: FF_X21_Y3_N21
\inst21|cs|second_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(26));

-- Location: LCCOMB_X21_Y3_N22
\inst21|cs|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~54_combout\ = (\inst21|cs|second_counter\(27) & (!\inst21|cs|Add0~53\)) # (!\inst21|cs|second_counter\(27) & ((\inst21|cs|Add0~53\) # (GND)))
-- \inst21|cs|Add0~55\ = CARRY((!\inst21|cs|Add0~53\) # (!\inst21|cs|second_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(27),
	datad => VCC,
	cin => \inst21|cs|Add0~53\,
	combout => \inst21|cs|Add0~54_combout\,
	cout => \inst21|cs|Add0~55\);

-- Location: FF_X21_Y3_N23
\inst21|cs|second_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(27));

-- Location: LCCOMB_X21_Y3_N24
\inst21|cs|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~56_combout\ = (\inst21|cs|second_counter\(28) & (\inst21|cs|Add0~55\ $ (GND))) # (!\inst21|cs|second_counter\(28) & (!\inst21|cs|Add0~55\ & VCC))
-- \inst21|cs|Add0~57\ = CARRY((\inst21|cs|second_counter\(28) & !\inst21|cs|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(28),
	datad => VCC,
	cin => \inst21|cs|Add0~55\,
	combout => \inst21|cs|Add0~56_combout\,
	cout => \inst21|cs|Add0~57\);

-- Location: FF_X21_Y3_N25
\inst21|cs|second_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(28));

-- Location: LCCOMB_X21_Y3_N26
\inst21|cs|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~58_combout\ = (\inst21|cs|second_counter\(29) & (!\inst21|cs|Add0~57\)) # (!\inst21|cs|second_counter\(29) & ((\inst21|cs|Add0~57\) # (GND)))
-- \inst21|cs|Add0~59\ = CARRY((!\inst21|cs|Add0~57\) # (!\inst21|cs|second_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(29),
	datad => VCC,
	cin => \inst21|cs|Add0~57\,
	combout => \inst21|cs|Add0~58_combout\,
	cout => \inst21|cs|Add0~59\);

-- Location: FF_X21_Y3_N27
\inst21|cs|second_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(29));

-- Location: LCCOMB_X21_Y3_N28
\inst21|cs|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~60_combout\ = (\inst21|cs|second_counter\(30) & (\inst21|cs|Add0~59\ $ (GND))) # (!\inst21|cs|second_counter\(30) & (!\inst21|cs|Add0~59\ & VCC))
-- \inst21|cs|Add0~61\ = CARRY((\inst21|cs|second_counter\(30) & !\inst21|cs|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(30),
	datad => VCC,
	cin => \inst21|cs|Add0~59\,
	combout => \inst21|cs|Add0~60_combout\,
	cout => \inst21|cs|Add0~61\);

-- Location: FF_X21_Y3_N29
\inst21|cs|second_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(30));

-- Location: LCCOMB_X21_Y3_N30
\inst21|cs|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~62_combout\ = \inst21|cs|second_counter\(31) $ (\inst21|cs|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(31),
	cin => \inst21|cs|Add0~61\,
	combout => \inst21|cs|Add0~62_combout\);

-- Location: FF_X21_Y3_N31
\inst21|cs|second_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(31));

-- Location: LCCOMB_X20_Y3_N4
\inst21|cs|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~5_combout\ = (!\inst21|cs|second_counter\(22) & (!\inst21|cs|second_counter\(24) & (!\inst21|cs|second_counter\(23) & !\inst21|cs|second_counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(22),
	datab => \inst21|cs|second_counter\(24),
	datac => \inst21|cs|second_counter\(23),
	datad => \inst21|cs|second_counter\(25),
	combout => \inst21|cs|Equal0~5_combout\);

-- Location: LCCOMB_X20_Y3_N2
\inst21|cs|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~6_combout\ = (!\inst21|cs|second_counter\(26) & (!\inst21|cs|second_counter\(27) & (!\inst21|cs|second_counter\(28) & !\inst21|cs|second_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(26),
	datab => \inst21|cs|second_counter\(27),
	datac => \inst21|cs|second_counter\(28),
	datad => \inst21|cs|second_counter\(29),
	combout => \inst21|cs|Equal0~6_combout\);

-- Location: LCCOMB_X20_Y3_N8
\inst21|cs|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~7_combout\ = (!\inst21|cs|second_counter\(31) & (!\inst21|cs|second_counter\(30) & (\inst21|cs|Equal0~5_combout\ & \inst21|cs|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(31),
	datab => \inst21|cs|second_counter\(30),
	datac => \inst21|cs|Equal0~5_combout\,
	datad => \inst21|cs|Equal0~6_combout\,
	combout => \inst21|cs|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y4_N16
\inst21|cs|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~9_combout\ = (\inst21|cs|second_counter\(16) & \inst21|cs|second_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(16),
	datac => \inst21|cs|second_counter\(15),
	combout => \inst21|cs|Equal0~9_combout\);

-- Location: LCCOMB_X22_Y4_N18
\inst21|cs|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~10_combout\ = (\inst21|cs|Equal0~8_combout\ & (\inst21|cs|Equal0~4_combout\ & (\inst21|cs|Equal0~7_combout\ & \inst21|cs|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|Equal0~8_combout\,
	datab => \inst21|cs|Equal0~4_combout\,
	datac => \inst21|cs|Equal0~7_combout\,
	datad => \inst21|cs|Equal0~9_combout\,
	combout => \inst21|cs|Equal0~10_combout\);

-- Location: LCCOMB_X21_Y4_N20
\inst21|cs|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~20_combout\ = (\inst21|cs|second_counter\(10) & (\inst21|cs|Add0~19\ $ (GND))) # (!\inst21|cs|second_counter\(10) & (!\inst21|cs|Add0~19\ & VCC))
-- \inst21|cs|Add0~21\ = CARRY((\inst21|cs|second_counter\(10) & !\inst21|cs|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(10),
	datad => VCC,
	cin => \inst21|cs|Add0~19\,
	combout => \inst21|cs|Add0~20_combout\,
	cout => \inst21|cs|Add0~21\);

-- Location: LCCOMB_X22_Y4_N8
\inst21|cs|second_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~6_combout\ = (!\inst21|cs|Equal0~10_combout\ & \inst21|cs|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|Equal0~10_combout\,
	datad => \inst21|cs|Add0~20_combout\,
	combout => \inst21|cs|second_counter~6_combout\);

-- Location: FF_X22_Y4_N9
\inst21|cs|second_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|second_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(10));

-- Location: LCCOMB_X21_Y4_N22
\inst21|cs|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~22_combout\ = (\inst21|cs|second_counter\(11) & (!\inst21|cs|Add0~21\)) # (!\inst21|cs|second_counter\(11) & ((\inst21|cs|Add0~21\) # (GND)))
-- \inst21|cs|Add0~23\ = CARRY((!\inst21|cs|Add0~21\) # (!\inst21|cs|second_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(11),
	datad => VCC,
	cin => \inst21|cs|Add0~21\,
	combout => \inst21|cs|Add0~22_combout\,
	cout => \inst21|cs|Add0~23\);

-- Location: FF_X21_Y4_N23
\inst21|cs|second_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(11));

-- Location: LCCOMB_X21_Y4_N24
\inst21|cs|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~24_combout\ = (\inst21|cs|second_counter\(12) & (\inst21|cs|Add0~23\ $ (GND))) # (!\inst21|cs|second_counter\(12) & (!\inst21|cs|Add0~23\ & VCC))
-- \inst21|cs|Add0~25\ = CARRY((\inst21|cs|second_counter\(12) & !\inst21|cs|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(12),
	datad => VCC,
	cin => \inst21|cs|Add0~23\,
	combout => \inst21|cs|Add0~24_combout\,
	cout => \inst21|cs|Add0~25\);

-- Location: FF_X21_Y4_N25
\inst21|cs|second_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(12));

-- Location: LCCOMB_X21_Y4_N26
\inst21|cs|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~26_combout\ = (\inst21|cs|second_counter\(13) & (!\inst21|cs|Add0~25\)) # (!\inst21|cs|second_counter\(13) & ((\inst21|cs|Add0~25\) # (GND)))
-- \inst21|cs|Add0~27\ = CARRY((!\inst21|cs|Add0~25\) # (!\inst21|cs|second_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(13),
	datad => VCC,
	cin => \inst21|cs|Add0~25\,
	combout => \inst21|cs|Add0~26_combout\,
	cout => \inst21|cs|Add0~27\);

-- Location: FF_X21_Y4_N27
\inst21|cs|second_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(13));

-- Location: LCCOMB_X21_Y4_N28
\inst21|cs|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~28_combout\ = (\inst21|cs|second_counter\(14) & (\inst21|cs|Add0~27\ $ (GND))) # (!\inst21|cs|second_counter\(14) & (!\inst21|cs|Add0~27\ & VCC))
-- \inst21|cs|Add0~29\ = CARRY((\inst21|cs|second_counter\(14) & !\inst21|cs|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(14),
	datad => VCC,
	cin => \inst21|cs|Add0~27\,
	combout => \inst21|cs|Add0~28_combout\,
	cout => \inst21|cs|Add0~29\);

-- Location: FF_X21_Y4_N29
\inst21|cs|second_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(14));

-- Location: LCCOMB_X21_Y4_N30
\inst21|cs|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~30_combout\ = (\inst21|cs|second_counter\(15) & (!\inst21|cs|Add0~29\)) # (!\inst21|cs|second_counter\(15) & ((\inst21|cs|Add0~29\) # (GND)))
-- \inst21|cs|Add0~31\ = CARRY((!\inst21|cs|Add0~29\) # (!\inst21|cs|second_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(15),
	datad => VCC,
	cin => \inst21|cs|Add0~29\,
	combout => \inst21|cs|Add0~30_combout\,
	cout => \inst21|cs|Add0~31\);

-- Location: LCCOMB_X22_Y4_N14
\inst21|cs|second_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~1_combout\ = (\inst21|cs|Add0~30_combout\ & !\inst21|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|cs|Add0~30_combout\,
	datad => \inst21|cs|Equal0~10_combout\,
	combout => \inst21|cs|second_counter~1_combout\);

-- Location: FF_X22_Y4_N15
\inst21|cs|second_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|second_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(15));

-- Location: LCCOMB_X22_Y4_N28
\inst21|cs|second_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~2_combout\ = (\inst21|cs|Add0~32_combout\ & !\inst21|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|cs|Add0~32_combout\,
	datad => \inst21|cs|Equal0~10_combout\,
	combout => \inst21|cs|second_counter~2_combout\);

-- Location: FF_X22_Y4_N29
\inst21|cs|second_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|cs|second_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|cs|second_counter\(16));

-- Location: LCCOMB_X22_Y4_N10
\inst21|pf|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|WideNor0~0_combout\ = (\inst21|cs|second_counter\(9)) # ((\inst21|cs|second_counter\(7)) # ((\inst21|cs|second_counter\(10)) # (\inst21|cs|second_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(9),
	datab => \inst21|cs|second_counter\(7),
	datac => \inst21|cs|second_counter\(10),
	datad => \inst21|cs|second_counter\(5),
	combout => \inst21|pf|WideNor0~0_combout\);

-- Location: LCCOMB_X22_Y4_N0
\inst21|pf|PC[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[0]~24_combout\ = (\inst21|cs|second_counter\(16)) # ((\inst21|cs|second_counter\(15)) # (\inst21|pf|WideNor0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(16),
	datac => \inst21|cs|second_counter\(15),
	datad => \inst21|pf|WideNor0~0_combout\,
	combout => \inst21|pf|PC[0]~24_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst21|pf|PC[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[0]~25_combout\ = (\M[1]~input_o\) # ((!\inst21|pf|PC[0]~24_combout\ & (\inst21|cs|Equal0~4_combout\ & \inst21|cs|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC[0]~24_combout\,
	datab => \M[1]~input_o\,
	datac => \inst21|cs|Equal0~4_combout\,
	datad => \inst21|cs|Equal0~7_combout\,
	combout => \inst21|pf|PC[0]~25_combout\);

-- Location: FF_X22_Y18_N5
\inst21|pf|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[0]~8_combout\,
	asdata => \inst21|pf|Mux7~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(0));

-- Location: LCCOMB_X22_Y18_N6
\inst21|pf|PC[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[1]~10_combout\ = (\inst21|pf|PC\(1) & ((\M[0]~input_o\ & (\inst21|pf|PC[0]~9\ & VCC)) # (!\M[0]~input_o\ & (!\inst21|pf|PC[0]~9\)))) # (!\inst21|pf|PC\(1) & ((\M[0]~input_o\ & (!\inst21|pf|PC[0]~9\)) # (!\M[0]~input_o\ & 
-- ((\inst21|pf|PC[0]~9\) # (GND)))))
-- \inst21|pf|PC[1]~11\ = CARRY((\inst21|pf|PC\(1) & (!\M[0]~input_o\ & !\inst21|pf|PC[0]~9\)) # (!\inst21|pf|PC\(1) & ((!\inst21|pf|PC[0]~9\) # (!\M[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(1),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst21|pf|PC[0]~9\,
	combout => \inst21|pf|PC[1]~10_combout\,
	cout => \inst21|pf|PC[1]~11\);

-- Location: LCCOMB_X21_Y18_N16
\inst21|pf|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux6~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(1)))) # (!\M[0]~input_o\ & (\keyout[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datac => \keyout[1]~input_o\,
	datad => \inst22|man|ans\(1),
	combout => \inst21|pf|Mux6~0_combout\);

-- Location: FF_X22_Y18_N7
\inst21|pf|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[1]~10_combout\,
	asdata => \inst21|pf|Mux6~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(1));

-- Location: LCCOMB_X22_Y18_N8
\inst21|pf|PC[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[2]~12_combout\ = ((\inst21|pf|PC\(2) $ (\M[0]~input_o\ $ (!\inst21|pf|PC[1]~11\)))) # (GND)
-- \inst21|pf|PC[2]~13\ = CARRY((\inst21|pf|PC\(2) & ((\M[0]~input_o\) # (!\inst21|pf|PC[1]~11\))) # (!\inst21|pf|PC\(2) & (\M[0]~input_o\ & !\inst21|pf|PC[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(2),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst21|pf|PC[1]~11\,
	combout => \inst21|pf|PC[2]~12_combout\,
	cout => \inst21|pf|PC[2]~13\);

-- Location: LCCOMB_X21_Y18_N26
\inst21|pf|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux5~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(2)))) # (!\M[0]~input_o\ & (\keyout[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datac => \keyout[2]~input_o\,
	datad => \inst22|man|ans\(2),
	combout => \inst21|pf|Mux5~0_combout\);

-- Location: FF_X22_Y18_N9
\inst21|pf|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[2]~12_combout\,
	asdata => \inst21|pf|Mux5~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(2));

-- Location: LCCOMB_X22_Y18_N10
\inst21|pf|PC[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[3]~14_combout\ = (\inst21|pf|PC\(3) & ((\M[0]~input_o\ & (\inst21|pf|PC[2]~13\ & VCC)) # (!\M[0]~input_o\ & (!\inst21|pf|PC[2]~13\)))) # (!\inst21|pf|PC\(3) & ((\M[0]~input_o\ & (!\inst21|pf|PC[2]~13\)) # (!\M[0]~input_o\ & 
-- ((\inst21|pf|PC[2]~13\) # (GND)))))
-- \inst21|pf|PC[3]~15\ = CARRY((\inst21|pf|PC\(3) & (!\M[0]~input_o\ & !\inst21|pf|PC[2]~13\)) # (!\inst21|pf|PC\(3) & ((!\inst21|pf|PC[2]~13\) # (!\M[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(3),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst21|pf|PC[2]~13\,
	combout => \inst21|pf|PC[3]~14_combout\,
	cout => \inst21|pf|PC[3]~15\);

-- Location: LCCOMB_X22_Y18_N28
\inst21|pf|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux4~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(3)))) # (!\M[0]~input_o\ & (\keyout[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M[0]~input_o\,
	datac => \keyout[3]~input_o\,
	datad => \inst22|man|ans\(3),
	combout => \inst21|pf|Mux4~0_combout\);

-- Location: FF_X22_Y18_N11
\inst21|pf|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[3]~14_combout\,
	asdata => \inst21|pf|Mux4~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(3));

-- Location: LCCOMB_X22_Y18_N12
\inst21|pf|PC[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[4]~16_combout\ = ((\inst21|pf|PC\(4) $ (\M[0]~input_o\ $ (!\inst21|pf|PC[3]~15\)))) # (GND)
-- \inst21|pf|PC[4]~17\ = CARRY((\inst21|pf|PC\(4) & ((\M[0]~input_o\) # (!\inst21|pf|PC[3]~15\))) # (!\inst21|pf|PC\(4) & (\M[0]~input_o\ & !\inst21|pf|PC[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(4),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst21|pf|PC[3]~15\,
	combout => \inst21|pf|PC[4]~16_combout\,
	cout => \inst21|pf|PC[4]~17\);

-- Location: LCCOMB_X22_Y18_N22
\inst21|pf|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux3~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(4)))) # (!\M[0]~input_o\ & (\keyout[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyout[4]~input_o\,
	datab => \M[0]~input_o\,
	datad => \inst22|man|ans\(4),
	combout => \inst21|pf|Mux3~0_combout\);

-- Location: FF_X22_Y18_N13
\inst21|pf|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[4]~16_combout\,
	asdata => \inst21|pf|Mux3~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(4));

-- Location: LCCOMB_X22_Y18_N14
\inst21|pf|PC[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[5]~18_combout\ = (\inst21|pf|PC\(5) & ((\M[0]~input_o\ & (\inst21|pf|PC[4]~17\ & VCC)) # (!\M[0]~input_o\ & (!\inst21|pf|PC[4]~17\)))) # (!\inst21|pf|PC\(5) & ((\M[0]~input_o\ & (!\inst21|pf|PC[4]~17\)) # (!\M[0]~input_o\ & 
-- ((\inst21|pf|PC[4]~17\) # (GND)))))
-- \inst21|pf|PC[5]~19\ = CARRY((\inst21|pf|PC\(5) & (!\M[0]~input_o\ & !\inst21|pf|PC[4]~17\)) # (!\inst21|pf|PC\(5) & ((!\inst21|pf|PC[4]~17\) # (!\M[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(5),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst21|pf|PC[4]~17\,
	combout => \inst21|pf|PC[5]~18_combout\,
	cout => \inst21|pf|PC[5]~19\);

-- Location: LCCOMB_X22_Y18_N24
\inst21|pf|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux2~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(5)))) # (!\M[0]~input_o\ & (\keyout[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M[0]~input_o\,
	datac => \keyout[5]~input_o\,
	datad => \inst22|man|ans\(5),
	combout => \inst21|pf|Mux2~0_combout\);

-- Location: FF_X22_Y18_N15
\inst21|pf|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[5]~18_combout\,
	asdata => \inst21|pf|Mux2~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(5));

-- Location: LCCOMB_X22_Y18_N16
\inst21|pf|PC[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[6]~20_combout\ = ((\inst21|pf|PC\(6) $ (\M[0]~input_o\ $ (!\inst21|pf|PC[5]~19\)))) # (GND)
-- \inst21|pf|PC[6]~21\ = CARRY((\inst21|pf|PC\(6) & ((\M[0]~input_o\) # (!\inst21|pf|PC[5]~19\))) # (!\inst21|pf|PC\(6) & (\M[0]~input_o\ & !\inst21|pf|PC[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(6),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst21|pf|PC[5]~19\,
	combout => \inst21|pf|PC[6]~20_combout\,
	cout => \inst21|pf|PC[6]~21\);

-- Location: LCCOMB_X22_Y18_N30
\inst21|pf|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux1~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(6)))) # (!\M[0]~input_o\ & (\keyout[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyout[6]~input_o\,
	datac => \M[0]~input_o\,
	datad => \inst22|man|ans\(6),
	combout => \inst21|pf|Mux1~0_combout\);

-- Location: FF_X22_Y18_N17
\inst21|pf|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[6]~20_combout\,
	asdata => \inst21|pf|Mux1~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(6));

-- Location: LCCOMB_X22_Y18_N18
\inst21|pf|PC[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[7]~22_combout\ = \M[0]~input_o\ $ (\inst21|pf|PC[6]~21\ $ (\inst21|pf|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M[0]~input_o\,
	datad => \inst21|pf|PC\(7),
	cin => \inst21|pf|PC[6]~21\,
	combout => \inst21|pf|PC[7]~22_combout\);

-- Location: IOIBUF_X0_Y16_N1
\keyout[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keyout(7),
	o => \keyout[7]~input_o\);

-- Location: LCCOMB_X23_Y18_N20
\inst22|man|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux0~0_combout\ = (\S[0]~input_o\ & ((\S[1]~input_o\ & (\inst22|mw|X\(7))) # (!\S[1]~input_o\ & ((\inst22|mw|X\(6)))))) # (!\S[0]~input_o\ & (!\S[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \inst22|mw|X\(7),
	datad => \inst22|mw|X\(6),
	combout => \inst22|man|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y18_N30
\inst18|opt2[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[7]~feeder_combout\ = \inst18|Selector8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector8~1_combout\,
	combout => \inst18|opt2[7]~feeder_combout\);

-- Location: LCCOMB_X21_Y18_N10
\inst21|rf|R0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~0_combout\ = (\rd~input_o\ & ((\wr~input_o\ & ((\inst22|man|ans\(7)))) # (!\wr~input_o\ & (\keyout[7]~input_o\)))) # (!\rd~input_o\ & (((\inst22|man|ans\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyout[7]~input_o\,
	datab => \rd~input_o\,
	datac => \inst22|man|ans\(7),
	datad => \wr~input_o\,
	combout => \inst21|rf|R0~0_combout\);

-- Location: FF_X21_Y18_N1
\inst21|rf|R3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~0_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(7));

-- Location: FF_X18_Y18_N31
\inst18|opt2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt2[7]~feeder_combout\,
	asdata => \inst21|rf|R3\(7),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt2[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(7));

-- Location: LCCOMB_X23_Y18_N24
\inst22|mw|Y[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|mw|Y[7]~feeder_combout\ = \inst18|opt2\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|opt2\(7),
	combout => \inst22|mw|Y[7]~feeder_combout\);

-- Location: FF_X23_Y18_N25
\inst22|mw|Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|mw|Y[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|Y\(7));

-- Location: LCCOMB_X23_Y18_N30
\inst22|man|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux0~1_combout\ = (\inst22|mw|X\(7) & (\S[1]~input_o\ $ (((\S[0]~input_o\ & \inst22|mw|Y\(7)))))) # (!\inst22|mw|X\(7) & (((\S[1]~input_o\ & \inst22|mw|Y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \inst22|mw|X\(7),
	datad => \inst22|mw|Y\(7),
	combout => \inst22|man|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst22|man|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux0~2_combout\ = (\S[2]~input_o\ & ((\inst22|man|Mux0~0_combout\))) # (!\S[2]~input_o\ & (\inst22|man|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[2]~input_o\,
	datac => \inst22|man|Mux0~1_combout\,
	datad => \inst22|man|Mux0~0_combout\,
	combout => \inst22|man|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst22|man|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~16_combout\ = ((\inst22|mw|X\(7) $ (\inst22|mw|Y\(7) $ (!\inst22|man|Add0~15\)))) # (GND)
-- \inst22|man|Add0~17\ = CARRY((\inst22|mw|X\(7) & ((\inst22|mw|Y\(7)) # (!\inst22|man|Add0~15\))) # (!\inst22|mw|X\(7) & (\inst22|mw|Y\(7) & !\inst22|man|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(7),
	datab => \inst22|mw|Y\(7),
	datad => VCC,
	cin => \inst22|man|Add0~15\,
	combout => \inst22|man|Add0~16_combout\,
	cout => \inst22|man|Add0~17\);

-- Location: LCCOMB_X22_Y18_N0
\inst22|man|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux0~3_combout\ = (\inst22|man|Mux0~2_combout\ & ((\S[0]~input_o\) # ((\inst22|man|Add0~16_combout\) # (!\inst22|man|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \inst22|man|Mux0~0_combout\,
	datac => \inst22|man|Mux0~2_combout\,
	datad => \inst22|man|Add0~16_combout\,
	combout => \inst22|man|Mux0~3_combout\);

-- Location: FF_X22_Y18_N1
\inst22|man|ans[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(7));

-- Location: LCCOMB_X22_Y18_N26
\inst21|pf|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux0~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(7)))) # (!\M[0]~input_o\ & (\keyout[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyout[7]~input_o\,
	datab => \M[0]~input_o\,
	datad => \inst22|man|ans\(7),
	combout => \inst21|pf|Mux0~0_combout\);

-- Location: FF_X22_Y18_N19
\inst21|pf|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[7]~22_combout\,
	asdata => \inst21|pf|Mux0~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(7));

-- Location: FF_X20_Y18_N21
\inst21|rf|R1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~0_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(7));

-- Location: FF_X20_Y18_N25
\inst21|rf|R2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~0_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(7));

-- Location: LCCOMB_X21_Y18_N4
\inst21|rf|R0[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0[7]~feeder_combout\ = \inst21|rf|R0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|rf|R0~0_combout\,
	combout => \inst21|rf|R0[7]~feeder_combout\);

-- Location: FF_X21_Y18_N5
\inst21|rf|R0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R0[7]~feeder_combout\,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(7));

-- Location: LCCOMB_X20_Y18_N24
\inst18|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector8~0_combout\ = (\inst18|opt2[0]~0_combout\ & (\inst18|opt2[0]~1_combout\)) # (!\inst18|opt2[0]~0_combout\ & ((\inst18|opt2[0]~1_combout\ & ((\inst21|rf|R0\(7)))) # (!\inst18|opt2[0]~1_combout\ & (\inst21|rf|R2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt2[0]~0_combout\,
	datab => \inst18|opt2[0]~1_combout\,
	datac => \inst21|rf|R2\(7),
	datad => \inst21|rf|R0\(7),
	combout => \inst18|Selector8~0_combout\);

-- Location: LCCOMB_X20_Y18_N20
\inst18|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector8~1_combout\ = (\inst18|opt2[0]~0_combout\ & ((\inst18|Selector8~0_combout\ & (\inst21|pf|PC\(7))) # (!\inst18|Selector8~0_combout\ & ((\inst21|rf|R1\(7)))))) # (!\inst18|opt2[0]~0_combout\ & (((\inst18|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(7),
	datab => \inst18|opt2[0]~0_combout\,
	datac => \inst21|rf|R1\(7),
	datad => \inst18|Selector8~0_combout\,
	combout => \inst18|Selector8~1_combout\);

-- Location: LCCOMB_X18_Y18_N20
\inst18|opt1[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[7]~feeder_combout\ = \inst18|Selector8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|Selector8~1_combout\,
	combout => \inst18|opt1[7]~feeder_combout\);

-- Location: FF_X18_Y18_N21
\inst18|opt1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|opt1[7]~feeder_combout\,
	asdata => \inst21|rf|R3\(7),
	sload => \ALT_INV_cr[3]~input_o\,
	ena => \inst18|opt1[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(7));

-- Location: LCCOMB_X23_Y18_N14
\inst22|mw|X[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|mw|X[7]~feeder_combout\ = \inst18|opt1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|opt1\(7),
	combout => \inst22|mw|X[7]~feeder_combout\);

-- Location: FF_X23_Y18_N15
\inst22|mw|X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|mw|X[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|X\(7));

-- Location: LCCOMB_X26_Y18_N28
\inst22|man|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~18_combout\ = \inst22|man|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst22|man|Add0~17\,
	combout => \inst22|man|Add0~18_combout\);

-- Location: LCCOMB_X25_Y18_N14
\inst22|man|ans~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~6_combout\ = (!\S[0]~input_o\ & (!\S[1]~input_o\ & (\S[2]~input_o\ & \inst22|man|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[2]~input_o\,
	datad => \inst22|man|Add0~18_combout\,
	combout => \inst22|man|ans~6_combout\);

-- Location: FF_X25_Y18_N15
\inst22|man|ans[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(8));

-- Location: LCCOMB_X21_Y18_N14
\inst22|man|always1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|always1~0_combout\ = \inst22|man|ans\(8) $ (\inst22|man|ans\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans\(8),
	datab => \inst22|man|ans\(7),
	combout => \inst22|man|always1~0_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst22|man|exceed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|exceed~0_combout\ = (!\S[0]~input_o\ & (!\S[1]~input_o\ & (\S[2]~input_o\ & \inst22|man|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \S[2]~input_o\,
	datad => \inst22|man|always1~0_combout\,
	combout => \inst22|man|exceed~0_combout\);

-- Location: FF_X23_Y18_N7
\inst22|man|exceed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|exceed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|exceed~q\);

-- Location: IOIBUF_X67_Y22_N8
\switch_buttons[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_buttons(2),
	o => \switch_buttons[2]~input_o\);

-- Location: IOIBUF_X67_Y22_N22
\switch_buttons[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_buttons(1),
	o => \switch_buttons[1]~input_o\);

-- Location: IOIBUF_X67_Y22_N15
\switch_buttons[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_buttons(0),
	o => \switch_buttons[0]~input_o\);

ww_exceed <= \exceed~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_R0(7) <= \R0[7]~output_o\;

ww_R0(6) <= \R0[6]~output_o\;

ww_R0(5) <= \R0[5]~output_o\;

ww_R0(4) <= \R0[4]~output_o\;

ww_R0(3) <= \R0[3]~output_o\;

ww_R0(2) <= \R0[2]~output_o\;

ww_R0(1) <= \R0[1]~output_o\;

ww_R0(0) <= \R0[0]~output_o\;

ww_R1(7) <= \R1[7]~output_o\;

ww_R1(6) <= \R1[6]~output_o\;

ww_R1(5) <= \R1[5]~output_o\;

ww_R1(4) <= \R1[4]~output_o\;

ww_R1(3) <= \R1[3]~output_o\;

ww_R1(2) <= \R1[2]~output_o\;

ww_R1(1) <= \R1[1]~output_o\;

ww_R1(0) <= \R1[0]~output_o\;

ww_R2(7) <= \R2[7]~output_o\;

ww_R2(6) <= \R2[6]~output_o\;

ww_R2(5) <= \R2[5]~output_o\;

ww_R2(4) <= \R2[4]~output_o\;

ww_R2(3) <= \R2[3]~output_o\;

ww_R2(2) <= \R2[2]~output_o\;

ww_R2(1) <= \R2[1]~output_o\;

ww_R2(0) <= \R2[0]~output_o\;

ww_R3(7) <= \R3[7]~output_o\;

ww_R3(6) <= \R3[6]~output_o\;

ww_R3(5) <= \R3[5]~output_o\;

ww_R3(4) <= \R3[4]~output_o\;

ww_R3(3) <= \R3[3]~output_o\;

ww_R3(2) <= \R3[2]~output_o\;

ww_R3(1) <= \R3[1]~output_o\;

ww_R3(0) <= \R3[0]~output_o\;
END structure;


