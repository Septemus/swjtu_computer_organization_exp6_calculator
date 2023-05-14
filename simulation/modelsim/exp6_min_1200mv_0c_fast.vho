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

-- DATE "05/14/2023 17:09:43"

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
	wr : IN std_logic;
	rd : IN std_logic;
	pc_clr : IN std_logic;
	key_clr : IN std_logic;
	key_r : IN std_logic_vector(3 DOWNTO 0);
	M : IN std_logic_vector(1 DOWNTO 0);
	RA : IN std_logic_vector(1 DOWNTO 0);
	S : IN std_logic_vector(2 DOWNTO 0);
	codeout : OUT std_logic_vector(7 DOWNTO 0);
	switch_buttons : IN std_logic_vector(2 DOWNTO 0);
	key_c : OUT std_logic_vector(3 DOWNTO 0);
	sel : OUT std_logic_vector(2 DOWNTO 0)
	);
END exp6;

-- Design Ports Information
-- exceed	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[0]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_clr	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_clr	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_buttons[1]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_buttons[0]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_buttons[2]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cr[2]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cr[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cr[1]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cr[3]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cr[4]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[3]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[2]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_wr : std_logic;
SIGNAL ww_rd : std_logic;
SIGNAL ww_pc_clr : std_logic;
SIGNAL ww_key_clr : std_logic;
SIGNAL ww_key_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_M : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_codeout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_switch_buttons : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_key_c : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \exceed~output_o\ : std_logic;
SIGNAL \codeout[7]~output_o\ : std_logic;
SIGNAL \codeout[6]~output_o\ : std_logic;
SIGNAL \codeout[5]~output_o\ : std_logic;
SIGNAL \codeout[4]~output_o\ : std_logic;
SIGNAL \codeout[3]~output_o\ : std_logic;
SIGNAL \codeout[2]~output_o\ : std_logic;
SIGNAL \codeout[1]~output_o\ : std_logic;
SIGNAL \codeout[0]~output_o\ : std_logic;
SIGNAL \key_c[3]~output_o\ : std_logic;
SIGNAL \key_c[2]~output_o\ : std_logic;
SIGNAL \key_c[1]~output_o\ : std_logic;
SIGNAL \key_c[0]~output_o\ : std_logic;
SIGNAL \sel[2]~output_o\ : std_logic;
SIGNAL \sel[1]~output_o\ : std_logic;
SIGNAL \sel[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cr[1]~input_o\ : std_logic;
SIGNAL \cr[0]~input_o\ : std_logic;
SIGNAL \cr[2]~input_o\ : std_logic;
SIGNAL \inst18|opt1[3]~0_combout\ : std_logic;
SIGNAL \M[0]~input_o\ : std_logic;
SIGNAL \inst21|pf|PC[0]~8_combout\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \rd~input_o\ : std_logic;
SIGNAL \key_r[2]~input_o\ : std_logic;
SIGNAL \key_r[0]~input_o\ : std_logic;
SIGNAL \key_r[1]~input_o\ : std_logic;
SIGNAL \key_r[3]~input_o\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|num~0_combout\ : std_logic;
SIGNAL \inst|cnt[0]~1_combout\ : std_logic;
SIGNAL \key_clr~input_o\ : std_logic;
SIGNAL \inst|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|Decoder0~3_combout\ : std_logic;
SIGNAL \inst|Decoder0~2_combout\ : std_logic;
SIGNAL \inst|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|num~1_combout\ : std_logic;
SIGNAL \inst|num~2_combout\ : std_logic;
SIGNAL \inst|num~3_combout\ : std_logic;
SIGNAL \inst|num~4_combout\ : std_logic;
SIGNAL \inst|num~5_combout\ : std_logic;
SIGNAL \inst|num~6_combout\ : std_logic;
SIGNAL \inst|out~0_combout\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|num~18_combout\ : std_logic;
SIGNAL \inst|num~17_combout\ : std_logic;
SIGNAL \inst|num~19_combout\ : std_logic;
SIGNAL \inst|num~22_combout\ : std_logic;
SIGNAL \inst|num~20_combout\ : std_logic;
SIGNAL \inst|num~21_combout\ : std_logic;
SIGNAL \inst|num~14_combout\ : std_logic;
SIGNAL \inst|num~15_combout\ : std_logic;
SIGNAL \inst|num~16_combout\ : std_logic;
SIGNAL \inst|num~11_combout\ : std_logic;
SIGNAL \inst|num~10_combout\ : std_logic;
SIGNAL \inst|num~12_combout\ : std_logic;
SIGNAL \inst|num~13_combout\ : std_logic;
SIGNAL \inst|num~7_combout\ : std_logic;
SIGNAL \inst|num~8_combout\ : std_logic;
SIGNAL \inst|num~9_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add1~22_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~26_combout\ : std_logic;
SIGNAL \inst|count_num[31]~0_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~25_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add1~24_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~23_combout\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~21_combout\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Add1~20_combout\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Add1~19_combout\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~27_combout\ : std_logic;
SIGNAL \inst|Add1~29_combout\ : std_logic;
SIGNAL \inst|Add1~28\ : std_logic;
SIGNAL \inst|Add1~30_combout\ : std_logic;
SIGNAL \inst|Add1~32_combout\ : std_logic;
SIGNAL \inst|Add1~31\ : std_logic;
SIGNAL \inst|Add1~33_combout\ : std_logic;
SIGNAL \inst|Add1~35_combout\ : std_logic;
SIGNAL \inst|Add1~34\ : std_logic;
SIGNAL \inst|Add1~36_combout\ : std_logic;
SIGNAL \inst|Add1~38_combout\ : std_logic;
SIGNAL \inst|Add1~37\ : std_logic;
SIGNAL \inst|Add1~39_combout\ : std_logic;
SIGNAL \inst|Add1~41_combout\ : std_logic;
SIGNAL \inst|Add1~40\ : std_logic;
SIGNAL \inst|Add1~42_combout\ : std_logic;
SIGNAL \inst|Add1~44_combout\ : std_logic;
SIGNAL \inst|Add1~43\ : std_logic;
SIGNAL \inst|Add1~45_combout\ : std_logic;
SIGNAL \inst|Add1~47_combout\ : std_logic;
SIGNAL \inst|Equal2~7_combout\ : std_logic;
SIGNAL \inst|Equal2~8_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst|Equal2~9_combout\ : std_logic;
SIGNAL \inst|Add1~46\ : std_logic;
SIGNAL \inst|Add1~49\ : std_logic;
SIGNAL \inst|Add1~51_combout\ : std_logic;
SIGNAL \inst|Add1~53_combout\ : std_logic;
SIGNAL \inst|Add1~52\ : std_logic;
SIGNAL \inst|Add1~54_combout\ : std_logic;
SIGNAL \inst|Add1~56_combout\ : std_logic;
SIGNAL \inst|Add1~55\ : std_logic;
SIGNAL \inst|Add1~57_combout\ : std_logic;
SIGNAL \inst|Add1~59_combout\ : std_logic;
SIGNAL \inst|Add1~58\ : std_logic;
SIGNAL \inst|Add1~60_combout\ : std_logic;
SIGNAL \inst|Add1~62_combout\ : std_logic;
SIGNAL \inst|Add1~61\ : std_logic;
SIGNAL \inst|Add1~63_combout\ : std_logic;
SIGNAL \inst|Add1~65_combout\ : std_logic;
SIGNAL \inst|Add1~64\ : std_logic;
SIGNAL \inst|Add1~66_combout\ : std_logic;
SIGNAL \inst|Add1~68_combout\ : std_logic;
SIGNAL \inst|Add1~67\ : std_logic;
SIGNAL \inst|Add1~69_combout\ : std_logic;
SIGNAL \inst|Add1~71_combout\ : std_logic;
SIGNAL \inst|Add1~70\ : std_logic;
SIGNAL \inst|Add1~72_combout\ : std_logic;
SIGNAL \inst|Add1~74_combout\ : std_logic;
SIGNAL \inst|Add1~73\ : std_logic;
SIGNAL \inst|Add1~75_combout\ : std_logic;
SIGNAL \inst|Add1~77_combout\ : std_logic;
SIGNAL \inst|Add1~76\ : std_logic;
SIGNAL \inst|Add1~78_combout\ : std_logic;
SIGNAL \inst|Add1~80_combout\ : std_logic;
SIGNAL \inst|Add1~79\ : std_logic;
SIGNAL \inst|Add1~81_combout\ : std_logic;
SIGNAL \inst|Add1~83_combout\ : std_logic;
SIGNAL \inst|Add1~82\ : std_logic;
SIGNAL \inst|Add1~84_combout\ : std_logic;
SIGNAL \inst|Add1~86_combout\ : std_logic;
SIGNAL \inst|Equal2~4_combout\ : std_logic;
SIGNAL \inst|Equal2~2_combout\ : std_logic;
SIGNAL \inst|Equal2~3_combout\ : std_logic;
SIGNAL \inst|Add1~85\ : std_logic;
SIGNAL \inst|Add1~87_combout\ : std_logic;
SIGNAL \inst|Add1~89_combout\ : std_logic;
SIGNAL \inst|Add1~88\ : std_logic;
SIGNAL \inst|Add1~90_combout\ : std_logic;
SIGNAL \inst|Add1~92_combout\ : std_logic;
SIGNAL \inst|Add1~91\ : std_logic;
SIGNAL \inst|Add1~93_combout\ : std_logic;
SIGNAL \inst|Add1~95_combout\ : std_logic;
SIGNAL \inst|Equal2~5_combout\ : std_logic;
SIGNAL \inst|Equal2~6_combout\ : std_logic;
SIGNAL \inst|Equal2~10_combout\ : std_logic;
SIGNAL \inst|Add1~48_combout\ : std_logic;
SIGNAL \inst|Add1~50_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|out[5]~1_combout\ : std_logic;
SIGNAL \inst21|rf|R0~0_combout\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \inst21|rf|Decoder0~2_combout\ : std_logic;
SIGNAL \inst18|opt1[3]~1_combout\ : std_logic;
SIGNAL \inst21|rf|Decoder0~1_combout\ : std_logic;
SIGNAL \inst21|rf|R1[0]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|Decoder0~3_combout\ : std_logic;
SIGNAL \inst18|Selector7~0_combout\ : std_logic;
SIGNAL \inst18|Selector7~1_combout\ : std_logic;
SIGNAL \inst18|opt2[0]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R3[0]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|Decoder0~0_combout\ : std_logic;
SIGNAL \cr[3]~input_o\ : std_logic;
SIGNAL \flag~input_o\ : std_logic;
SIGNAL \cr[4]~input_o\ : std_logic;
SIGNAL \inst18|opt1[3]~2_combout\ : std_logic;
SIGNAL \inst18|opt1[3]~3_combout\ : std_logic;
SIGNAL \inst18|opt1[3]~4_combout\ : std_logic;
SIGNAL \inst18|opt2[7]~0_combout\ : std_logic;
SIGNAL \inst18|opt1[0]~feeder_combout\ : std_logic;
SIGNAL \inst18|opt1[7]~5_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \inst22|man|Add0~1_cout\ : std_logic;
SIGNAL \inst22|man|Add0~2_combout\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \inst22|man|Mux7~1_combout\ : std_logic;
SIGNAL \inst|out~3_combout\ : std_logic;
SIGNAL \inst18|opt2[1]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R3[1]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~15_combout\ : std_logic;
SIGNAL \inst22|man|ans~14_combout\ : std_logic;
SIGNAL \inst22|man|ans[1]~1_combout\ : std_logic;
SIGNAL \inst|out~5_combout\ : std_logic;
SIGNAL \inst18|opt2[2]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R3[2]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~21_combout\ : std_logic;
SIGNAL \inst22|man|ans~20_combout\ : std_logic;
SIGNAL \inst22|man|ans[2]~3_combout\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \inst22|man|ans[6]~10_combout\ : std_logic;
SIGNAL \inst18|opt2[3]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R3[3]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~27_combout\ : std_logic;
SIGNAL \inst22|man|ans~26_combout\ : std_logic;
SIGNAL \inst22|man|ans[3]~5_combout\ : std_logic;
SIGNAL \inst22|man|ans~28_combout\ : std_logic;
SIGNAL \inst18|opt2[4]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R3[4]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~9_combout\ : std_logic;
SIGNAL \inst22|man|ans~8_combout\ : std_logic;
SIGNAL \inst22|man|ans[4]~0_combout\ : std_logic;
SIGNAL \inst|out~4_combout\ : std_logic;
SIGNAL \inst18|opt2[5]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R3[5]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~18_combout\ : std_logic;
SIGNAL \inst22|man|ans~17_combout\ : std_logic;
SIGNAL \inst22|man|ans[5]~2_combout\ : std_logic;
SIGNAL \inst22|man|ans~19_combout\ : std_logic;
SIGNAL \inst22|man|exceed~0_combout\ : std_logic;
SIGNAL \inst|out~6_combout\ : std_logic;
SIGNAL \inst18|opt2[6]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R3[6]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~23_combout\ : std_logic;
SIGNAL \inst22|man|ans~24_combout\ : std_logic;
SIGNAL \inst22|man|ans[6]~4_combout\ : std_logic;
SIGNAL \inst22|man|Add0~3\ : std_logic;
SIGNAL \inst22|man|Add0~5\ : std_logic;
SIGNAL \inst22|man|Add0~7\ : std_logic;
SIGNAL \inst22|man|Add0~9\ : std_logic;
SIGNAL \inst22|man|Add0~11\ : std_logic;
SIGNAL \inst22|man|Add0~13\ : std_logic;
SIGNAL \inst22|man|Add0~14_combout\ : std_logic;
SIGNAL \inst22|man|Mux1~0_combout\ : std_logic;
SIGNAL \inst22|man|ans~25_combout\ : std_logic;
SIGNAL \inst22|man|Mux1~1_combout\ : std_logic;
SIGNAL \inst22|man|ans[6]~12_combout\ : std_logic;
SIGNAL \inst22|man|ans[6]~13_combout\ : std_logic;
SIGNAL \inst21|rf|R1~2_combout\ : std_logic;
SIGNAL \inst18|Selector1~0_combout\ : std_logic;
SIGNAL \inst18|Selector1~1_combout\ : std_logic;
SIGNAL \inst18|opt1[6]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|Add0~12_combout\ : std_logic;
SIGNAL \inst22|man|Mux2~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux2~1_combout\ : std_logic;
SIGNAL \inst21|rf|R1~1_combout\ : std_logic;
SIGNAL \inst18|Selector2~0_combout\ : std_logic;
SIGNAL \inst18|Selector2~1_combout\ : std_logic;
SIGNAL \inst18|opt1[5]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|Add0~10_combout\ : std_logic;
SIGNAL \inst22|man|ans~11_combout\ : std_logic;
SIGNAL \inst22|man|Mux3~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux3~1_combout\ : std_logic;
SIGNAL \inst|out~2_combout\ : std_logic;
SIGNAL \inst21|rf|R1~0_combout\ : std_logic;
SIGNAL \inst18|Selector3~0_combout\ : std_logic;
SIGNAL \inst18|Selector3~1_combout\ : std_logic;
SIGNAL \inst18|opt1[4]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|Add0~8_combout\ : std_logic;
SIGNAL \inst22|man|Mux4~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux4~1_combout\ : std_logic;
SIGNAL \inst|out~7_combout\ : std_logic;
SIGNAL \inst21|rf|R0~3_combout\ : std_logic;
SIGNAL \inst18|Selector4~0_combout\ : std_logic;
SIGNAL \inst18|Selector4~1_combout\ : std_logic;
SIGNAL \inst18|opt1[3]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~22_combout\ : std_logic;
SIGNAL \inst22|man|Add0~6_combout\ : std_logic;
SIGNAL \inst22|man|Mux5~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux5~1_combout\ : std_logic;
SIGNAL \inst21|rf|R0~2_combout\ : std_logic;
SIGNAL \inst18|Selector5~0_combout\ : std_logic;
SIGNAL \inst18|Selector5~1_combout\ : std_logic;
SIGNAL \inst18|opt1[2]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|ans~16_combout\ : std_logic;
SIGNAL \inst22|man|Add0~4_combout\ : std_logic;
SIGNAL \inst22|man|Mux6~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux6~1_combout\ : std_logic;
SIGNAL \inst21|rf|R0~1_combout\ : std_logic;
SIGNAL \inst18|Selector6~0_combout\ : std_logic;
SIGNAL \inst18|Selector6~1_combout\ : std_logic;
SIGNAL \inst18|opt1[1]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|Mux7~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux7~2_combout\ : std_logic;
SIGNAL \inst22|man|Mux7~3_combout\ : std_logic;
SIGNAL \inst21|pf|Mux7~0_combout\ : std_logic;
SIGNAL \pc_clr~input_o\ : std_logic;
SIGNAL \M[1]~input_o\ : std_logic;
SIGNAL \inst21|cs|Add0~0_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~9_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~33\ : std_logic;
SIGNAL \inst21|cs|Add0~34_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~35\ : std_logic;
SIGNAL \inst21|cs|Add0~36_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~37\ : std_logic;
SIGNAL \inst21|cs|Add0~38_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~39\ : std_logic;
SIGNAL \inst21|cs|Add0~40_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~41\ : std_logic;
SIGNAL \inst21|cs|Add0~42_combout\ : std_logic;
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
SIGNAL \inst21|cs|Equal0~7_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~5_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~6_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~3_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~2_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~1_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~0_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~4_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~8_combout\ : std_logic;
SIGNAL \inst21|cs|Equal0~10_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~6_combout\ : std_logic;
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
SIGNAL \inst21|cs|second_counter~0_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~11\ : std_logic;
SIGNAL \inst21|cs|Add0~12_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~13\ : std_logic;
SIGNAL \inst21|cs|Add0~14_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~1_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~15\ : std_logic;
SIGNAL \inst21|cs|Add0~16_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~17\ : std_logic;
SIGNAL \inst21|cs|Add0~18_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~2_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~19\ : std_logic;
SIGNAL \inst21|cs|Add0~20_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~3_combout\ : std_logic;
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
SIGNAL \inst21|cs|second_counter~4_combout\ : std_logic;
SIGNAL \inst21|cs|Add0~31\ : std_logic;
SIGNAL \inst21|cs|Add0~32_combout\ : std_logic;
SIGNAL \inst21|cs|second_counter~5_combout\ : std_logic;
SIGNAL \inst21|pf|WideNor0~1_combout\ : std_logic;
SIGNAL \inst21|pf|WideNor0~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[0]~10_combout\ : std_logic;
SIGNAL \inst21|pf|PC[0]~9\ : std_logic;
SIGNAL \inst21|pf|PC[1]~11_combout\ : std_logic;
SIGNAL \inst21|pf|Mux6~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[1]~12\ : std_logic;
SIGNAL \inst21|pf|PC[2]~13_combout\ : std_logic;
SIGNAL \inst21|pf|Mux5~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[2]~14\ : std_logic;
SIGNAL \inst21|pf|PC[3]~15_combout\ : std_logic;
SIGNAL \inst21|pf|Mux4~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[3]~16\ : std_logic;
SIGNAL \inst21|pf|PC[4]~17_combout\ : std_logic;
SIGNAL \inst21|pf|Mux3~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[4]~18\ : std_logic;
SIGNAL \inst21|pf|PC[5]~19_combout\ : std_logic;
SIGNAL \inst21|pf|Mux2~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[5]~20\ : std_logic;
SIGNAL \inst21|pf|PC[6]~21_combout\ : std_logic;
SIGNAL \inst21|pf|Mux1~0_combout\ : std_logic;
SIGNAL \inst21|pf|PC[6]~22\ : std_logic;
SIGNAL \inst21|pf|PC[7]~23_combout\ : std_logic;
SIGNAL \inst|out~8_combout\ : std_logic;
SIGNAL \inst21|pf|Mux0~0_combout\ : std_logic;
SIGNAL \inst21|rf|R1~3_combout\ : std_logic;
SIGNAL \inst18|Selector8~0_combout\ : std_logic;
SIGNAL \inst18|Selector8~1_combout\ : std_logic;
SIGNAL \inst18|opt1[7]~feeder_combout\ : std_logic;
SIGNAL \inst21|rf|R3[7]~feeder_combout\ : std_logic;
SIGNAL \inst22|mw|X[7]~feeder_combout\ : std_logic;
SIGNAL \inst18|opt2[7]~feeder_combout\ : std_logic;
SIGNAL \inst22|mw|Y[7]~feeder_combout\ : std_logic;
SIGNAL \inst22|man|Mux0~1_combout\ : std_logic;
SIGNAL \inst22|man|Mux0~3_combout\ : std_logic;
SIGNAL \inst22|man|Mux0~4_combout\ : std_logic;
SIGNAL \inst22|man|Add0~15\ : std_logic;
SIGNAL \inst22|man|Add0~16_combout\ : std_logic;
SIGNAL \inst22|man|Mux0~0_combout\ : std_logic;
SIGNAL \inst22|man|Mux0~2_combout\ : std_logic;
SIGNAL \inst22|man|Add0~17\ : std_logic;
SIGNAL \inst22|man|Add0~18_combout\ : std_logic;
SIGNAL \inst22|man|ans~29_combout\ : std_logic;
SIGNAL \inst22|man|exceed~1_combout\ : std_logic;
SIGNAL \inst22|man|exceed~q\ : std_logic;
SIGNAL \switch_buttons[0]~input_o\ : std_logic;
SIGNAL \switch_buttons[1]~input_o\ : std_logic;
SIGNAL \inst20|Mux1~0_combout\ : std_logic;
SIGNAL \switch_buttons[2]~input_o\ : std_logic;
SIGNAL \inst20|status[1]~0_combout\ : std_logic;
SIGNAL \inst20|Mux0~0_combout\ : std_logic;
SIGNAL \inst20|Mux12~0_combout\ : std_logic;
SIGNAL \inst20|N[30]~0_combout\ : std_logic;
SIGNAL \inst20|Mux20~0_combout\ : std_logic;
SIGNAL \inst1|sel[0]~2_combout\ : std_logic;
SIGNAL \inst20|Mux16~0_combout\ : std_logic;
SIGNAL \inst1|sel[1]~1_combout\ : std_logic;
SIGNAL \inst20|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|Mux2~3_combout\ : std_logic;
SIGNAL \inst1|sel[2]~0_combout\ : std_logic;
SIGNAL \inst20|Mux32~0_combout\ : std_logic;
SIGNAL \inst20|Mux4~0_combout\ : std_logic;
SIGNAL \inst20|Mux24~0_combout\ : std_logic;
SIGNAL \inst20|Mux28~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mux2~4_combout\ : std_logic;
SIGNAL \inst20|Mux19~0_combout\ : std_logic;
SIGNAL \inst20|Mux7~0_combout\ : std_logic;
SIGNAL \inst20|Mux15~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \inst20|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~3_combout\ : std_logic;
SIGNAL \inst20|Mux27~0_combout\ : std_logic;
SIGNAL \inst20|Mux23~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst20|Mux3~0_combout\ : std_logic;
SIGNAL \inst20|Mux31~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~4_combout\ : std_logic;
SIGNAL \inst20|Mux18~0_combout\ : std_logic;
SIGNAL \inst20|Mux10~0_combout\ : std_logic;
SIGNAL \inst20|Mux6~0_combout\ : std_logic;
SIGNAL \inst20|Mux14~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|Mux0~3_combout\ : std_logic;
SIGNAL \inst20|Mux22~0_combout\ : std_logic;
SIGNAL \inst20|Mux26~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst20|Mux30~0_combout\ : std_logic;
SIGNAL \inst20|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~4_combout\ : std_logic;
SIGNAL \inst20|Mux21~0_combout\ : std_logic;
SIGNAL \inst20|Mux17~0_combout\ : std_logic;
SIGNAL \inst20|Mux13~0_combout\ : std_logic;
SIGNAL \inst20|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~3_combout\ : std_logic;
SIGNAL \inst20|Mux5~0_combout\ : std_logic;
SIGNAL \inst20|Mux33~0_combout\ : std_logic;
SIGNAL \inst20|Mux25~0_combout\ : std_logic;
SIGNAL \inst20|Mux29~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~4_combout\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|WideOr1~0_combout\ : std_logic;
SIGNAL \inst1|WideOr2~0_combout\ : std_logic;
SIGNAL \inst1|WideOr3~0_combout\ : std_logic;
SIGNAL \inst1|WideOr4~0_combout\ : std_logic;
SIGNAL \inst1|WideOr5~0_combout\ : std_logic;
SIGNAL \inst1|WideOr6~0_combout\ : std_logic;
SIGNAL \inst20|status\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst20|N\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|KEY_C\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst22|man|ans\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst22|mw|Y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst21|rf|R2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst21|pf|PC\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst22|mw|X\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|count_num\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst21|cs|second_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|num\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst21|rf|R0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst21|rf|R1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst18|opt1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst18|opt2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst21|rf|R3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|num\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cr[3]~input_o\ : std_logic;
SIGNAL \inst1|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_WideOr1~0_combout\ : std_logic;

BEGIN

exceed <= ww_exceed;
ww_clk <= clk;
ww_cin <= cin;
ww_flag <= flag;
ww_cr <= cr;
ww_wr <= wr;
ww_rd <= rd;
ww_pc_clr <= pc_clr;
ww_key_clr <= key_clr;
ww_key_r <= key_r;
ww_M <= M;
ww_RA <= RA;
ww_S <= S;
codeout <= ww_codeout;
ww_switch_buttons <= switch_buttons;
key_c <= ww_key_c;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_cr[3]~input_o\ <= NOT \cr[3]~input_o\;
\inst1|ALT_INV_WideOr6~0_combout\ <= NOT \inst1|WideOr6~0_combout\;
\inst1|ALT_INV_WideOr5~0_combout\ <= NOT \inst1|WideOr5~0_combout\;
\inst1|ALT_INV_WideOr4~0_combout\ <= NOT \inst1|WideOr4~0_combout\;
\inst1|ALT_INV_WideOr3~0_combout\ <= NOT \inst1|WideOr3~0_combout\;
\inst1|ALT_INV_WideOr2~0_combout\ <= NOT \inst1|WideOr2~0_combout\;
\inst1|ALT_INV_WideOr1~0_combout\ <= NOT \inst1|WideOr1~0_combout\;

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

-- Location: IOOBUF_X67_Y35_N2
\codeout[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeout[7]~output_o\);

-- Location: IOOBUF_X11_Y43_N16
\codeout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \codeout[6]~output_o\);

-- Location: IOOBUF_X29_Y43_N23
\codeout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \codeout[5]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
\codeout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \codeout[4]~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\codeout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \codeout[3]~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\codeout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \codeout[2]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\codeout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \codeout[1]~output_o\);

-- Location: IOOBUF_X43_Y43_N30
\codeout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \codeout[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\key_c[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|KEY_C\(3),
	devoe => ww_devoe,
	o => \key_c[3]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\key_c[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|KEY_C\(2),
	devoe => ww_devoe,
	o => \key_c[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\key_c[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|KEY_C\(1),
	devoe => ww_devoe,
	o => \key_c[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\key_c[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|KEY_C\(0),
	devoe => ww_devoe,
	o => \key_c[0]~output_o\);

-- Location: IOOBUF_X5_Y43_N16
\sel[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sel\(2),
	devoe => ww_devoe,
	o => \sel[2]~output_o\);

-- Location: IOOBUF_X65_Y43_N16
\sel[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sel\(1),
	devoe => ww_devoe,
	o => \sel[1]~output_o\);

-- Location: IOOBUF_X56_Y43_N30
\sel[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sel\(0),
	devoe => ww_devoe,
	o => \sel[0]~output_o\);

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

-- Location: LCCOMB_X30_Y27_N20
\inst18|opt1[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[3]~0_combout\ = (\cr[2]~input_o\ & ((\cr[0]~input_o\) # (!\cr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cr[1]~input_o\,
	datac => \cr[0]~input_o\,
	datad => \cr[2]~input_o\,
	combout => \inst18|opt1[3]~0_combout\);

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

-- Location: LCCOMB_X34_Y26_N8
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

-- Location: IOIBUF_X27_Y0_N15
\key_r[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_r(2),
	o => \key_r[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\key_r[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_r(0),
	o => \key_r[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\key_r[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_r(1),
	o => \key_r[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\key_r[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_r(3),
	o => \key_r[3]~input_o\);

-- Location: LCCOMB_X30_Y24_N24
\inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\key_r[2]~input_o\ & (\key_r[0]~input_o\ & (\key_r[1]~input_o\ & \key_r[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[0]~input_o\,
	datac => \key_r[1]~input_o\,
	datad => \key_r[3]~input_o\,
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y24_N10
\inst|num~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~0_combout\ = (\key_r[2]~input_o\ & ((\key_r[0]~input_o\ & (\key_r[1]~input_o\ $ (!\key_r[3]~input_o\))) # (!\key_r[0]~input_o\ & ((!\key_r[3]~input_o\) # (!\key_r[1]~input_o\))))) # (!\key_r[2]~input_o\ & (((!\key_r[3]~input_o\) # 
-- (!\key_r[1]~input_o\)) # (!\key_r[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[0]~input_o\,
	datac => \key_r[1]~input_o\,
	datad => \key_r[3]~input_o\,
	combout => \inst|num~0_combout\);

-- Location: LCCOMB_X28_Y26_N12
\inst|cnt[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~1_combout\ = !\inst|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(0),
	combout => \inst|cnt[0]~1_combout\);

-- Location: IOIBUF_X36_Y0_N15
\key_clr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_clr,
	o => \key_clr~input_o\);

-- Location: FF_X28_Y26_N13
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[0]~1_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: LCCOMB_X29_Y24_N6
\inst|cnt[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~0_combout\ = \inst|cnt\(1) $ (((\inst|cnt\(0) & \key_clr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datac => \inst|cnt\(1),
	datad => \key_clr~input_o\,
	combout => \inst|cnt[1]~0_combout\);

-- Location: FF_X29_Y24_N7
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: LCCOMB_X29_Y24_N26
\inst|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder0~1_combout\ = (\inst|cnt\(1)) # (!\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(1),
	combout => \inst|Decoder0~1_combout\);

-- Location: FF_X30_Y24_N7
\inst|KEY_C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Decoder0~1_combout\,
	sload => VCC,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|KEY_C\(2));

-- Location: LCCOMB_X29_Y24_N24
\inst|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder0~3_combout\ = (!\inst|cnt\(1)) # (!\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(1),
	combout => \inst|Decoder0~3_combout\);

-- Location: FF_X29_Y24_N25
\inst|KEY_C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Decoder0~3_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|KEY_C\(0));

-- Location: LCCOMB_X29_Y24_N4
\inst|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder0~2_combout\ = (\inst|cnt\(0)) # (\inst|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(1),
	combout => \inst|Decoder0~2_combout\);

-- Location: FF_X30_Y24_N21
\inst|KEY_C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Decoder0~2_combout\,
	sload => VCC,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|KEY_C\(1));

-- Location: LCCOMB_X29_Y24_N16
\inst|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Decoder0~0_combout\ = (\inst|cnt\(0)) # (!\inst|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(1),
	combout => \inst|Decoder0~0_combout\);

-- Location: FF_X30_Y24_N5
\inst|KEY_C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Decoder0~0_combout\,
	sload => VCC,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|KEY_C\(3));

-- Location: LCCOMB_X29_Y24_N20
\inst|num~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~1_combout\ = (\inst|KEY_C\(2) & ((\inst|KEY_C\(0) & (\inst|KEY_C\(1) $ (!\inst|KEY_C\(3)))) # (!\inst|KEY_C\(0) & ((!\inst|KEY_C\(3)) # (!\inst|KEY_C\(1)))))) # (!\inst|KEY_C\(2) & (((!\inst|KEY_C\(3)) # (!\inst|KEY_C\(1))) # 
-- (!\inst|KEY_C\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|KEY_C\(2),
	datab => \inst|KEY_C\(0),
	datac => \inst|KEY_C\(1),
	datad => \inst|KEY_C\(3),
	combout => \inst|num~1_combout\);

-- Location: LCCOMB_X29_Y24_N2
\inst|num~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~2_combout\ = (\inst|num~0_combout\) # (\inst|num~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|num~0_combout\,
	datad => \inst|num~1_combout\,
	combout => \inst|num~2_combout\);

-- Location: FF_X29_Y24_N11
\inst|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|num~6_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|num\(0));

-- Location: LCCOMB_X30_Y24_N4
\inst|num~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~3_combout\ = (\key_r[3]~input_o\ & ((\key_r[1]~input_o\) # (!\key_r[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[1]~input_o\,
	datad => \key_r[3]~input_o\,
	combout => \inst|num~3_combout\);

-- Location: LCCOMB_X30_Y24_N18
\inst|num~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~4_combout\ = (\inst|KEY_C\(2) & (!\inst|KEY_C\(1) & ((!\key_r[2]~input_o\) # (!\inst|num~3_combout\)))) # (!\inst|KEY_C\(2) & (\inst|num~3_combout\ & (\key_r[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|num~3_combout\,
	datab => \key_r[2]~input_o\,
	datac => \inst|KEY_C\(1),
	datad => \inst|KEY_C\(2),
	combout => \inst|num~4_combout\);

-- Location: LCCOMB_X30_Y24_N28
\inst|num~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~5_combout\ = \inst|num~3_combout\ $ (((\inst|KEY_C\(3) & !\inst|num~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|num~3_combout\,
	datac => \inst|KEY_C\(3),
	datad => \inst|num~4_combout\,
	combout => \inst|num~5_combout\);

-- Location: LCCOMB_X29_Y24_N10
\inst|num~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~6_combout\ = (!\inst|Equal0~0_combout\ & ((\inst|num~2_combout\ & (\inst|num\(0))) # (!\inst|num~2_combout\ & ((!\inst|num~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|num~2_combout\,
	datac => \inst|num\(0),
	datad => \inst|num~5_combout\,
	combout => \inst|num~6_combout\);

-- Location: LCCOMB_X33_Y26_N10
\inst|out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out~0_combout\ = (\inst|num~6_combout\ & \key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|num~6_combout\,
	datad => \key_clr~input_o\,
	combout => \inst|out~0_combout\);

-- Location: LCCOMB_X30_Y24_N30
\inst|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (\key_r[2]~input_o\ & ((\key_r[0]~input_o\ & (\key_r[1]~input_o\ $ (\key_r[3]~input_o\))) # (!\key_r[0]~input_o\ & (\key_r[1]~input_o\ & \key_r[3]~input_o\)))) # (!\key_r[2]~input_o\ & (\key_r[0]~input_o\ & (\key_r[1]~input_o\ & 
-- \key_r[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[0]~input_o\,
	datac => \key_r[1]~input_o\,
	datad => \key_r[3]~input_o\,
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X30_Y24_N14
\inst|num~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~18_combout\ = (\key_r[2]~input_o\ & ((\key_r[0]~input_o\ & (\key_r[1]~input_o\ $ (\key_r[3]~input_o\))) # (!\key_r[0]~input_o\ & (\key_r[1]~input_o\ & \key_r[3]~input_o\)))) # (!\key_r[2]~input_o\ & (\key_r[0]~input_o\ & (\key_r[1]~input_o\ & 
-- \key_r[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[0]~input_o\,
	datac => \key_r[1]~input_o\,
	datad => \key_r[3]~input_o\,
	combout => \inst|num~18_combout\);

-- Location: LCCOMB_X30_Y24_N20
\inst|num~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~17_combout\ = (\inst|KEY_C\(2) & (\inst|KEY_C\(1) $ (\inst|KEY_C\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|KEY_C\(2),
	datac => \inst|KEY_C\(1),
	datad => \inst|KEY_C\(0),
	combout => \inst|num~17_combout\);

-- Location: LCCOMB_X30_Y24_N0
\inst|num~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~19_combout\ = ((!\inst|num~17_combout\) # (!\inst|KEY_C\(3))) # (!\inst|num~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|num~18_combout\,
	datac => \inst|KEY_C\(3),
	datad => \inst|num~17_combout\,
	combout => \inst|num~19_combout\);

-- Location: LCCOMB_X29_Y24_N30
\inst|num~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~22_combout\ = (!\inst|Equal0~0_combout\ & ((!\inst|num~21_combout\) # (!\inst|num~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|num~19_combout\,
	datac => \inst|num~21_combout\,
	combout => \inst|num~22_combout\);

-- Location: FF_X29_Y24_N31
\inst|num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|num~22_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|num\(4));

-- Location: LCCOMB_X30_Y24_N6
\inst|num~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~20_combout\ = ((\inst|KEY_C\(3) $ (!\inst|KEY_C\(2))) # (!\inst|KEY_C\(0))) # (!\inst|KEY_C\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|KEY_C\(1),
	datab => \inst|KEY_C\(3),
	datac => \inst|KEY_C\(2),
	datad => \inst|KEY_C\(0),
	combout => \inst|num~20_combout\);

-- Location: LCCOMB_X29_Y24_N8
\inst|num~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~21_combout\ = (!\inst|num\(4) & ((\inst|num~20_combout\) # (!\inst|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr0~0_combout\,
	datac => \inst|num\(4),
	datad => \inst|num~20_combout\,
	combout => \inst|num~21_combout\);

-- Location: LCCOMB_X30_Y24_N2
\inst|num~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~14_combout\ = (\inst|KEY_C\(2) & (((\key_r[1]~input_o\ & !\inst|KEY_C\(1))) # (!\key_r[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[1]~input_o\,
	datac => \inst|KEY_C\(1),
	datad => \inst|KEY_C\(2),
	combout => \inst|num~14_combout\);

-- Location: LCCOMB_X30_Y24_N12
\inst|num~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~15_combout\ = (\key_r[3]~input_o\ & ((\inst|KEY_C\(3) & ((\inst|num~14_combout\))) # (!\inst|KEY_C\(3) & (\key_r[2]~input_o\)))) # (!\key_r[3]~input_o\ & (((\inst|KEY_C\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[3]~input_o\,
	datac => \inst|KEY_C\(3),
	datad => \inst|num~14_combout\,
	combout => \inst|num~15_combout\);

-- Location: FF_X29_Y24_N23
\inst|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|num~16_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|num\(1));

-- Location: LCCOMB_X29_Y24_N22
\inst|num~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~16_combout\ = (!\inst|Equal0~0_combout\ & ((\inst|num~2_combout\ & ((\inst|num\(1)))) # (!\inst|num~2_combout\ & (\inst|num~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|num~15_combout\,
	datac => \inst|num\(1),
	datad => \inst|num~2_combout\,
	combout => \inst|num~16_combout\);

-- Location: LCCOMB_X30_Y24_N26
\inst|num~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~11_combout\ = (\key_r[1]~input_o\ & ((\inst|KEY_C\(2)) # (!\inst|KEY_C\(3)))) # (!\key_r[1]~input_o\ & (\inst|KEY_C\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[1]~input_o\,
	datac => \inst|KEY_C\(3),
	datad => \inst|KEY_C\(2),
	combout => \inst|num~11_combout\);

-- Location: LCCOMB_X30_Y24_N16
\inst|num~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~10_combout\ = (\inst|KEY_C\(3) & (\inst|KEY_C\(1) & \inst|KEY_C\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|KEY_C\(3),
	datac => \inst|KEY_C\(1),
	datad => \inst|KEY_C\(2),
	combout => \inst|num~10_combout\);

-- Location: LCCOMB_X30_Y24_N8
\inst|num~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~12_combout\ = (\inst|num~10_combout\) # ((\key_r[2]~input_o\ & (\key_r[3]~input_o\ & \inst|num~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[3]~input_o\,
	datac => \inst|num~11_combout\,
	datad => \inst|num~10_combout\,
	combout => \inst|num~12_combout\);

-- Location: FF_X29_Y24_N1
\inst|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|num~13_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|num\(3));

-- Location: LCCOMB_X29_Y24_N0
\inst|num~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~13_combout\ = (!\inst|Equal0~0_combout\ & ((\inst|num~2_combout\ & ((\inst|num\(3)))) # (!\inst|num~2_combout\ & (\inst|num~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|num~12_combout\,
	datac => \inst|num\(3),
	datad => \inst|num~2_combout\,
	combout => \inst|num~13_combout\);

-- Location: FF_X29_Y24_N15
\inst|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|num~9_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|num\(2));

-- Location: LCCOMB_X30_Y24_N22
\inst|num~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~7_combout\ = (\key_r[2]~input_o\ & (\inst|KEY_C\(2) & ((\key_r[1]~input_o\) # (\inst|KEY_C\(1))))) # (!\key_r[2]~input_o\ & (((!\inst|KEY_C\(2)) # (!\inst|KEY_C\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_r[2]~input_o\,
	datab => \key_r[1]~input_o\,
	datac => \inst|KEY_C\(1),
	datad => \inst|KEY_C\(2),
	combout => \inst|num~7_combout\);

-- Location: LCCOMB_X29_Y24_N12
\inst|num~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~8_combout\ = (\key_r[3]~input_o\ & (!\inst|num~2_combout\ & ((\inst|num~7_combout\) # (!\inst|KEY_C\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|KEY_C\(3),
	datab => \inst|num~7_combout\,
	datac => \key_r[3]~input_o\,
	datad => \inst|num~2_combout\,
	combout => \inst|num~8_combout\);

-- Location: LCCOMB_X29_Y24_N14
\inst|num~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|num~9_combout\ = (!\inst|Equal0~0_combout\ & ((\inst|num~8_combout\) # ((\inst|num~2_combout\ & \inst|num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|num~2_combout\,
	datac => \inst|num\(2),
	datad => \inst|num~8_combout\,
	combout => \inst|num~9_combout\);

-- Location: LCCOMB_X29_Y24_N28
\inst|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|num~16_combout\ & (!\inst|num~13_combout\ & (!\inst|num~9_combout\ & !\inst|num~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|num~16_combout\,
	datab => \inst|num~13_combout\,
	datac => \inst|num~9_combout\,
	datad => \inst|num~6_combout\,
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y24_N18
\inst|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|Equal1~0_combout\ & ((\inst|Equal0~0_combout\) # ((\inst|num~21_combout\ & \inst|num~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|num~21_combout\,
	datac => \inst|num~19_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y27_N0
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (((\inst|Equal2~10_combout\) # (!\inst|count_num\(0))))
-- \inst|Add1~1\ = CARRY((\inst|Equal2~10_combout\) # (!\inst|count_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~10_combout\,
	datab => \inst|count_num\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X27_Y27_N16
\inst|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~22_combout\ = (\inst|Equal1~1_combout\ & (!\inst|Add1~0_combout\)) # (!\inst|Equal1~1_combout\ & (((!\inst|LessThan0~3_combout\ & \inst|count_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|LessThan0~3_combout\,
	datac => \inst|count_num\(0),
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~22_combout\);

-- Location: FF_X27_Y27_N17
\inst|count_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~22_combout\,
	ena => \key_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(0));

-- Location: LCCOMB_X26_Y27_N2
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|count_num\(1) & (!\inst|Add1~1\)) # (!\inst|count_num\(1) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|count_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X28_Y27_N22
\inst|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~26_combout\ = (\inst|Add1~2_combout\ & \inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~2_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~26_combout\);

-- Location: LCCOMB_X28_Y26_N26
\inst|count_num[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|count_num[31]~0_combout\ = (\key_clr~input_o\ & ((\inst|LessThan0~3_combout\) # (\inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_clr~input_o\,
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|count_num[31]~0_combout\);

-- Location: FF_X28_Y27_N23
\inst|count_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~26_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(1));

-- Location: LCCOMB_X26_Y27_N4
\inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|count_num\(2) & (\inst|Add1~3\ $ (GND))) # (!\inst|count_num\(2) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|count_num\(2) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X28_Y27_N8
\inst|Add1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~25_combout\ = (\inst|Add1~4_combout\ & \inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~4_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~25_combout\);

-- Location: FF_X28_Y27_N9
\inst|count_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~25_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(2));

-- Location: LCCOMB_X26_Y27_N6
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|count_num\(3) & (!\inst|Add1~5\)) # (!\inst|count_num\(3) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|count_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X28_Y27_N18
\inst|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~24_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Add1~6_combout\,
	combout => \inst|Add1~24_combout\);

-- Location: FF_X28_Y27_N19
\inst|count_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~24_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(3));

-- Location: LCCOMB_X26_Y27_N8
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|count_num\(4) & (\inst|Add1~7\ $ (GND))) # (!\inst|count_num\(4) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|count_num\(4) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X28_Y27_N12
\inst|Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~23_combout\ = (\inst|Add1~8_combout\ & \inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~8_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~23_combout\);

-- Location: FF_X28_Y27_N13
\inst|count_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~23_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(4));

-- Location: LCCOMB_X26_Y27_N10
\inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|Equal2~10_combout\ & (((!\inst|Add1~9\)))) # (!\inst|Equal2~10_combout\ & ((\inst|count_num\(5) & (!\inst|Add1~9\)) # (!\inst|count_num\(5) & ((\inst|Add1~9\) # (GND)))))
-- \inst|Add1~11\ = CARRY(((!\inst|Equal2~10_combout\ & !\inst|count_num\(5))) # (!\inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~10_combout\,
	datab => \inst|count_num\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X27_Y27_N22
\inst|Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~21_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~1_combout\,
	datad => \inst|Add1~10_combout\,
	combout => \inst|Add1~21_combout\);

-- Location: FF_X27_Y27_N23
\inst|count_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~21_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(5));

-- Location: LCCOMB_X26_Y27_N12
\inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|count_num\(6) & (\inst|Add1~11\ $ (GND))) # (!\inst|count_num\(6) & (!\inst|Add1~11\ & VCC))
-- \inst|Add1~13\ = CARRY((\inst|count_num\(6) & !\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X27_Y27_N28
\inst|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~20_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~1_combout\,
	datad => \inst|Add1~12_combout\,
	combout => \inst|Add1~20_combout\);

-- Location: FF_X27_Y27_N29
\inst|count_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~20_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(6));

-- Location: LCCOMB_X26_Y27_N14
\inst|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|Equal2~10_combout\ & (((!\inst|Add1~13\)))) # (!\inst|Equal2~10_combout\ & ((\inst|count_num\(7) & (!\inst|Add1~13\)) # (!\inst|count_num\(7) & ((\inst|Add1~13\) # (GND)))))
-- \inst|Add1~15\ = CARRY(((!\inst|Equal2~10_combout\ & !\inst|count_num\(7))) # (!\inst|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~10_combout\,
	datab => \inst|count_num\(7),
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X27_Y27_N10
\inst|Add1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~19_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~1_combout\,
	datad => \inst|Add1~14_combout\,
	combout => \inst|Add1~19_combout\);

-- Location: FF_X27_Y27_N11
\inst|count_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~19_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(7));

-- Location: LCCOMB_X26_Y27_N16
\inst|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = (\inst|count_num\(8) & (\inst|Add1~15\ $ (GND))) # (!\inst|count_num\(8) & (!\inst|Add1~15\ & VCC))
-- \inst|Add1~17\ = CARRY((\inst|count_num\(8) & !\inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(8),
	datad => VCC,
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\,
	cout => \inst|Add1~17\);

-- Location: LCCOMB_X27_Y27_N20
\inst|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = (\inst|Add1~16_combout\ & \inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~16_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~18_combout\);

-- Location: FF_X27_Y27_N21
\inst|count_num[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~18_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(8));

-- Location: LCCOMB_X26_Y27_N18
\inst|Add1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~27_combout\ = (\inst|Equal2~10_combout\ & (((!\inst|Add1~17\)))) # (!\inst|Equal2~10_combout\ & ((\inst|count_num\(9) & (!\inst|Add1~17\)) # (!\inst|count_num\(9) & ((\inst|Add1~17\) # (GND)))))
-- \inst|Add1~28\ = CARRY(((!\inst|Equal2~10_combout\ & !\inst|count_num\(9))) # (!\inst|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~10_combout\,
	datab => \inst|count_num\(9),
	datad => VCC,
	cin => \inst|Add1~17\,
	combout => \inst|Add1~27_combout\,
	cout => \inst|Add1~28\);

-- Location: LCCOMB_X27_Y27_N12
\inst|Add1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~29_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~1_combout\,
	datad => \inst|Add1~27_combout\,
	combout => \inst|Add1~29_combout\);

-- Location: FF_X27_Y27_N13
\inst|count_num[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~29_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(9));

-- Location: LCCOMB_X26_Y27_N20
\inst|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~30_combout\ = (\inst|Add1~28\ & (((\inst|Equal2~10_combout\) # (\inst|count_num\(10))))) # (!\inst|Add1~28\ & ((((\inst|Equal2~10_combout\) # (\inst|count_num\(10))))))
-- \inst|Add1~31\ = CARRY((!\inst|Add1~28\ & ((\inst|Equal2~10_combout\) # (\inst|count_num\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~10_combout\,
	datab => \inst|count_num\(10),
	datad => VCC,
	cin => \inst|Add1~28\,
	combout => \inst|Add1~30_combout\,
	cout => \inst|Add1~31\);

-- Location: LCCOMB_X27_Y27_N18
\inst|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~32_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~1_combout\,
	datad => \inst|Add1~30_combout\,
	combout => \inst|Add1~32_combout\);

-- Location: FF_X27_Y27_N19
\inst|count_num[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~32_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(10));

-- Location: LCCOMB_X26_Y27_N22
\inst|Add1~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~33_combout\ = (\inst|count_num\(11) & (!\inst|Add1~31\)) # (!\inst|count_num\(11) & ((\inst|Add1~31\) # (GND)))
-- \inst|Add1~34\ = CARRY((!\inst|Add1~31\) # (!\inst|count_num\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(11),
	datad => VCC,
	cin => \inst|Add1~31\,
	combout => \inst|Add1~33_combout\,
	cout => \inst|Add1~34\);

-- Location: LCCOMB_X28_Y26_N14
\inst|Add1~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~35_combout\ = (\inst|Add1~33_combout\ & \inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~33_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~35_combout\);

-- Location: FF_X28_Y26_N15
\inst|count_num[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~35_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(11));

-- Location: LCCOMB_X26_Y27_N24
\inst|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~36_combout\ = (\inst|count_num\(12) & (\inst|Add1~34\ $ (GND))) # (!\inst|count_num\(12) & (!\inst|Add1~34\ & VCC))
-- \inst|Add1~37\ = CARRY((\inst|count_num\(12) & !\inst|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(12),
	datad => VCC,
	cin => \inst|Add1~34\,
	combout => \inst|Add1~36_combout\,
	cout => \inst|Add1~37\);

-- Location: LCCOMB_X28_Y26_N20
\inst|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~38_combout\ = (\inst|Add1~36_combout\ & \inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~36_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~38_combout\);

-- Location: FF_X28_Y26_N21
\inst|count_num[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~38_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(12));

-- Location: LCCOMB_X26_Y27_N26
\inst|Add1~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~39_combout\ = (\inst|count_num\(13) & (!\inst|Add1~37\)) # (!\inst|count_num\(13) & ((\inst|Add1~37\) # (GND)))
-- \inst|Add1~40\ = CARRY((!\inst|Add1~37\) # (!\inst|count_num\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(13),
	datad => VCC,
	cin => \inst|Add1~37\,
	combout => \inst|Add1~39_combout\,
	cout => \inst|Add1~40\);

-- Location: LCCOMB_X28_Y26_N30
\inst|Add1~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~41_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datad => \inst|Add1~39_combout\,
	combout => \inst|Add1~41_combout\);

-- Location: FF_X28_Y26_N31
\inst|count_num[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~41_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(13));

-- Location: LCCOMB_X26_Y27_N28
\inst|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~42_combout\ = (\inst|count_num\(14) & (\inst|Add1~40\ $ (GND))) # (!\inst|count_num\(14) & (!\inst|Add1~40\ & VCC))
-- \inst|Add1~43\ = CARRY((\inst|count_num\(14) & !\inst|Add1~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(14),
	datad => VCC,
	cin => \inst|Add1~40\,
	combout => \inst|Add1~42_combout\,
	cout => \inst|Add1~43\);

-- Location: LCCOMB_X28_Y26_N24
\inst|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~44_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datad => \inst|Add1~42_combout\,
	combout => \inst|Add1~44_combout\);

-- Location: FF_X28_Y26_N25
\inst|count_num[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~44_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(14));

-- Location: LCCOMB_X26_Y27_N30
\inst|Add1~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~45_combout\ = (\inst|Equal2~10_combout\ & (((!\inst|Add1~43\)))) # (!\inst|Equal2~10_combout\ & ((\inst|count_num\(15) & (!\inst|Add1~43\)) # (!\inst|count_num\(15) & ((\inst|Add1~43\) # (GND)))))
-- \inst|Add1~46\ = CARRY(((!\inst|Equal2~10_combout\ & !\inst|count_num\(15))) # (!\inst|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~10_combout\,
	datab => \inst|count_num\(15),
	datad => VCC,
	cin => \inst|Add1~43\,
	combout => \inst|Add1~45_combout\,
	cout => \inst|Add1~46\);

-- Location: LCCOMB_X27_Y27_N2
\inst|Add1~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~47_combout\ = (\inst|Add1~45_combout\ & \inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~45_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~47_combout\);

-- Location: FF_X27_Y27_N3
\inst|count_num[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~47_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(15));

-- Location: LCCOMB_X27_Y27_N24
\inst|Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal2~7_combout\ = (!\inst|count_num\(9) & (!\inst|count_num\(10) & (!\inst|count_num\(15) & !\inst|count_num\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(9),
	datab => \inst|count_num\(10),
	datac => \inst|count_num\(15),
	datad => \inst|count_num\(16),
	combout => \inst|Equal2~7_combout\);

-- Location: LCCOMB_X27_Y27_N30
\inst|Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal2~8_combout\ = (!\inst|count_num\(7) & (!\inst|count_num\(6) & (!\inst|count_num\(5) & !\inst|count_num\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(7),
	datab => \inst|count_num\(6),
	datac => \inst|count_num\(5),
	datad => \inst|count_num\(8),
	combout => \inst|Equal2~8_combout\);

-- Location: LCCOMB_X28_Y27_N20
\inst|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (!\inst|count_num\(1) & (!\inst|count_num\(3) & (!\inst|count_num\(2) & !\inst|count_num\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(1),
	datab => \inst|count_num\(3),
	datac => \inst|count_num\(2),
	datad => \inst|count_num\(4),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X28_Y26_N10
\inst|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = (!\inst|count_num\(13) & (!\inst|count_num\(14) & (!\inst|count_num\(11) & !\inst|count_num\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(13),
	datab => \inst|count_num\(14),
	datac => \inst|count_num\(11),
	datad => \inst|count_num\(12),
	combout => \inst|Equal2~1_combout\);

-- Location: LCCOMB_X27_Y27_N8
\inst|Equal2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal2~9_combout\ = (\inst|Equal2~8_combout\ & (\inst|count_num\(0) & (\inst|Equal2~0_combout\ & \inst|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~8_combout\,
	datab => \inst|count_num\(0),
	datac => \inst|Equal2~0_combout\,
	datad => \inst|Equal2~1_combout\,
	combout => \inst|Equal2~9_combout\);

-- Location: LCCOMB_X26_Y26_N0
\inst|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~48_combout\ = (\inst|Add1~46\ & (((\inst|count_num\(16)) # (\inst|Equal2~10_combout\)))) # (!\inst|Add1~46\ & ((((\inst|count_num\(16)) # (\inst|Equal2~10_combout\)))))
-- \inst|Add1~49\ = CARRY((!\inst|Add1~46\ & ((\inst|count_num\(16)) # (\inst|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(16),
	datab => \inst|Equal2~10_combout\,
	datad => VCC,
	cin => \inst|Add1~46\,
	combout => \inst|Add1~48_combout\,
	cout => \inst|Add1~49\);

-- Location: LCCOMB_X26_Y26_N2
\inst|Add1~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~51_combout\ = (\inst|count_num\(17) & (!\inst|Add1~49\)) # (!\inst|count_num\(17) & ((\inst|Add1~49\) # (GND)))
-- \inst|Add1~52\ = CARRY((!\inst|Add1~49\) # (!\inst|count_num\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(17),
	datad => VCC,
	cin => \inst|Add1~49\,
	combout => \inst|Add1~51_combout\,
	cout => \inst|Add1~52\);

-- Location: LCCOMB_X28_Y26_N16
\inst|Add1~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~53_combout\ = (\inst|Add1~51_combout\ & \inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~51_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~53_combout\);

-- Location: FF_X28_Y26_N17
\inst|count_num[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~53_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(17));

-- Location: LCCOMB_X26_Y26_N4
\inst|Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~54_combout\ = (\inst|count_num\(18) & (\inst|Add1~52\ $ (GND))) # (!\inst|count_num\(18) & (!\inst|Add1~52\ & VCC))
-- \inst|Add1~55\ = CARRY((\inst|count_num\(18) & !\inst|Add1~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(18),
	datad => VCC,
	cin => \inst|Add1~52\,
	combout => \inst|Add1~54_combout\,
	cout => \inst|Add1~55\);

-- Location: LCCOMB_X28_Y26_N18
\inst|Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~56_combout\ = (\inst|Add1~54_combout\ & \inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~54_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~56_combout\);

-- Location: FF_X28_Y26_N19
\inst|count_num[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~56_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(18));

-- Location: LCCOMB_X26_Y26_N6
\inst|Add1~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~57_combout\ = (\inst|count_num\(19) & (!\inst|Add1~55\)) # (!\inst|count_num\(19) & ((\inst|Add1~55\) # (GND)))
-- \inst|Add1~58\ = CARRY((!\inst|Add1~55\) # (!\inst|count_num\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(19),
	datad => VCC,
	cin => \inst|Add1~55\,
	combout => \inst|Add1~57_combout\,
	cout => \inst|Add1~58\);

-- Location: LCCOMB_X28_Y26_N8
\inst|Add1~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~59_combout\ = (\inst|Add1~57_combout\ & \inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~57_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~59_combout\);

-- Location: FF_X28_Y26_N9
\inst|count_num[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~59_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(19));

-- Location: LCCOMB_X26_Y26_N8
\inst|Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~60_combout\ = (\inst|count_num\(20) & (\inst|Add1~58\ $ (GND))) # (!\inst|count_num\(20) & (!\inst|Add1~58\ & VCC))
-- \inst|Add1~61\ = CARRY((\inst|count_num\(20) & !\inst|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(20),
	datad => VCC,
	cin => \inst|Add1~58\,
	combout => \inst|Add1~60_combout\,
	cout => \inst|Add1~61\);

-- Location: LCCOMB_X28_Y26_N22
\inst|Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~62_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datad => \inst|Add1~60_combout\,
	combout => \inst|Add1~62_combout\);

-- Location: FF_X28_Y26_N23
\inst|count_num[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~62_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(20));

-- Location: LCCOMB_X26_Y26_N10
\inst|Add1~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~63_combout\ = (\inst|count_num\(21) & (!\inst|Add1~61\)) # (!\inst|count_num\(21) & ((\inst|Add1~61\) # (GND)))
-- \inst|Add1~64\ = CARRY((!\inst|Add1~61\) # (!\inst|count_num\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(21),
	datad => VCC,
	cin => \inst|Add1~61\,
	combout => \inst|Add1~63_combout\,
	cout => \inst|Add1~64\);

-- Location: LCCOMB_X27_Y26_N20
\inst|Add1~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~65_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Add1~63_combout\,
	combout => \inst|Add1~65_combout\);

-- Location: FF_X27_Y26_N21
\inst|count_num[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~65_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(21));

-- Location: LCCOMB_X26_Y26_N12
\inst|Add1~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~66_combout\ = (\inst|count_num\(22) & (\inst|Add1~64\ $ (GND))) # (!\inst|count_num\(22) & (!\inst|Add1~64\ & VCC))
-- \inst|Add1~67\ = CARRY((\inst|count_num\(22) & !\inst|Add1~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(22),
	datad => VCC,
	cin => \inst|Add1~64\,
	combout => \inst|Add1~66_combout\,
	cout => \inst|Add1~67\);

-- Location: LCCOMB_X27_Y26_N18
\inst|Add1~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~68_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Add1~66_combout\,
	combout => \inst|Add1~68_combout\);

-- Location: FF_X27_Y26_N19
\inst|count_num[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~68_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(22));

-- Location: LCCOMB_X26_Y26_N14
\inst|Add1~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~69_combout\ = (\inst|count_num\(23) & (!\inst|Add1~67\)) # (!\inst|count_num\(23) & ((\inst|Add1~67\) # (GND)))
-- \inst|Add1~70\ = CARRY((!\inst|Add1~67\) # (!\inst|count_num\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(23),
	datad => VCC,
	cin => \inst|Add1~67\,
	combout => \inst|Add1~69_combout\,
	cout => \inst|Add1~70\);

-- Location: LCCOMB_X27_Y26_N12
\inst|Add1~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~71_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Add1~69_combout\,
	combout => \inst|Add1~71_combout\);

-- Location: FF_X27_Y26_N13
\inst|count_num[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~71_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(23));

-- Location: LCCOMB_X26_Y26_N16
\inst|Add1~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~72_combout\ = (\inst|count_num\(24) & (\inst|Add1~70\ $ (GND))) # (!\inst|count_num\(24) & (!\inst|Add1~70\ & VCC))
-- \inst|Add1~73\ = CARRY((\inst|count_num\(24) & !\inst|Add1~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(24),
	datad => VCC,
	cin => \inst|Add1~70\,
	combout => \inst|Add1~72_combout\,
	cout => \inst|Add1~73\);

-- Location: LCCOMB_X27_Y26_N14
\inst|Add1~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~74_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~1_combout\,
	datac => \inst|Add1~72_combout\,
	combout => \inst|Add1~74_combout\);

-- Location: FF_X27_Y26_N15
\inst|count_num[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~74_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(24));

-- Location: LCCOMB_X26_Y26_N18
\inst|Add1~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~75_combout\ = (\inst|count_num\(25) & (!\inst|Add1~73\)) # (!\inst|count_num\(25) & ((\inst|Add1~73\) # (GND)))
-- \inst|Add1~76\ = CARRY((!\inst|Add1~73\) # (!\inst|count_num\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(25),
	datad => VCC,
	cin => \inst|Add1~73\,
	combout => \inst|Add1~75_combout\,
	cout => \inst|Add1~76\);

-- Location: LCCOMB_X27_Y26_N10
\inst|Add1~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~77_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Add1~75_combout\,
	combout => \inst|Add1~77_combout\);

-- Location: FF_X27_Y26_N11
\inst|count_num[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~77_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(25));

-- Location: LCCOMB_X26_Y26_N20
\inst|Add1~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~78_combout\ = (\inst|count_num\(26) & (\inst|Add1~76\ $ (GND))) # (!\inst|count_num\(26) & (!\inst|Add1~76\ & VCC))
-- \inst|Add1~79\ = CARRY((\inst|count_num\(26) & !\inst|Add1~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(26),
	datad => VCC,
	cin => \inst|Add1~76\,
	combout => \inst|Add1~78_combout\,
	cout => \inst|Add1~79\);

-- Location: LCCOMB_X27_Y26_N8
\inst|Add1~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~80_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Add1~78_combout\,
	combout => \inst|Add1~80_combout\);

-- Location: FF_X27_Y26_N9
\inst|count_num[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~80_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(26));

-- Location: LCCOMB_X26_Y26_N22
\inst|Add1~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~81_combout\ = (\inst|count_num\(27) & (!\inst|Add1~79\)) # (!\inst|count_num\(27) & ((\inst|Add1~79\) # (GND)))
-- \inst|Add1~82\ = CARRY((!\inst|Add1~79\) # (!\inst|count_num\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(27),
	datad => VCC,
	cin => \inst|Add1~79\,
	combout => \inst|Add1~81_combout\,
	cout => \inst|Add1~82\);

-- Location: LCCOMB_X27_Y26_N30
\inst|Add1~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~83_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Add1~81_combout\,
	combout => \inst|Add1~83_combout\);

-- Location: FF_X27_Y26_N31
\inst|count_num[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~83_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(27));

-- Location: LCCOMB_X26_Y26_N24
\inst|Add1~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~84_combout\ = (\inst|count_num\(28) & (\inst|Add1~82\ $ (GND))) # (!\inst|count_num\(28) & (!\inst|Add1~82\ & VCC))
-- \inst|Add1~85\ = CARRY((\inst|count_num\(28) & !\inst|Add1~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(28),
	datad => VCC,
	cin => \inst|Add1~82\,
	combout => \inst|Add1~84_combout\,
	cout => \inst|Add1~85\);

-- Location: LCCOMB_X27_Y26_N16
\inst|Add1~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~86_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Add1~84_combout\,
	combout => \inst|Add1~86_combout\);

-- Location: FF_X27_Y26_N17
\inst|count_num[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~86_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(28));

-- Location: LCCOMB_X27_Y26_N26
\inst|Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal2~4_combout\ = (!\inst|count_num\(27) & (!\inst|count_num\(28) & (!\inst|count_num\(26) & !\inst|count_num\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(27),
	datab => \inst|count_num\(28),
	datac => \inst|count_num\(26),
	datad => \inst|count_num\(25),
	combout => \inst|Equal2~4_combout\);

-- Location: LCCOMB_X28_Y26_N28
\inst|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal2~2_combout\ = (!\inst|count_num\(18) & (!\inst|count_num\(19) & (!\inst|count_num\(20) & !\inst|count_num\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(18),
	datab => \inst|count_num\(19),
	datac => \inst|count_num\(20),
	datad => \inst|count_num\(17),
	combout => \inst|Equal2~2_combout\);

-- Location: LCCOMB_X27_Y26_N4
\inst|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal2~3_combout\ = (!\inst|count_num\(23) & (!\inst|count_num\(21) & (!\inst|count_num\(24) & !\inst|count_num\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(23),
	datab => \inst|count_num\(21),
	datac => \inst|count_num\(24),
	datad => \inst|count_num\(22),
	combout => \inst|Equal2~3_combout\);

-- Location: LCCOMB_X26_Y26_N26
\inst|Add1~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~87_combout\ = (\inst|count_num\(29) & (!\inst|Add1~85\)) # (!\inst|count_num\(29) & ((\inst|Add1~85\) # (GND)))
-- \inst|Add1~88\ = CARRY((!\inst|Add1~85\) # (!\inst|count_num\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(29),
	datad => VCC,
	cin => \inst|Add1~85\,
	combout => \inst|Add1~87_combout\,
	cout => \inst|Add1~88\);

-- Location: LCCOMB_X27_Y26_N28
\inst|Add1~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~89_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~1_combout\,
	datac => \inst|Add1~87_combout\,
	combout => \inst|Add1~89_combout\);

-- Location: FF_X27_Y26_N29
\inst|count_num[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~89_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(29));

-- Location: LCCOMB_X26_Y26_N28
\inst|Add1~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~90_combout\ = (\inst|count_num\(30) & (\inst|Add1~88\ $ (GND))) # (!\inst|count_num\(30) & (!\inst|Add1~88\ & VCC))
-- \inst|Add1~91\ = CARRY((\inst|count_num\(30) & !\inst|Add1~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(30),
	datad => VCC,
	cin => \inst|Add1~88\,
	combout => \inst|Add1~90_combout\,
	cout => \inst|Add1~91\);

-- Location: LCCOMB_X27_Y26_N22
\inst|Add1~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~92_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Add1~90_combout\,
	combout => \inst|Add1~92_combout\);

-- Location: FF_X27_Y26_N23
\inst|count_num[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~92_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(30));

-- Location: LCCOMB_X26_Y26_N30
\inst|Add1~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~93_combout\ = \inst|count_num\(31) $ (\inst|Add1~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(31),
	cin => \inst|Add1~91\,
	combout => \inst|Add1~93_combout\);

-- Location: LCCOMB_X27_Y26_N24
\inst|Add1~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~95_combout\ = (\inst|Equal1~1_combout\ & \inst|Add1~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Add1~93_combout\,
	combout => \inst|Add1~95_combout\);

-- Location: FF_X27_Y26_N25
\inst|count_num[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~95_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(31));

-- Location: LCCOMB_X27_Y26_N6
\inst|Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal2~5_combout\ = (!\inst|count_num\(29) & (!\inst|count_num\(30) & !\inst|count_num\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count_num\(29),
	datac => \inst|count_num\(30),
	datad => \inst|count_num\(31),
	combout => \inst|Equal2~5_combout\);

-- Location: LCCOMB_X27_Y26_N0
\inst|Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal2~6_combout\ = (\inst|Equal2~4_combout\ & (\inst|Equal2~2_combout\ & (\inst|Equal2~3_combout\ & \inst|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~4_combout\,
	datab => \inst|Equal2~2_combout\,
	datac => \inst|Equal2~3_combout\,
	datad => \inst|Equal2~5_combout\,
	combout => \inst|Equal2~6_combout\);

-- Location: LCCOMB_X27_Y27_N6
\inst|Equal2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal2~10_combout\ = (\inst|Equal2~7_combout\ & (\inst|Equal2~9_combout\ & \inst|Equal2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal2~7_combout\,
	datac => \inst|Equal2~9_combout\,
	datad => \inst|Equal2~6_combout\,
	combout => \inst|Equal2~10_combout\);

-- Location: LCCOMB_X27_Y27_N0
\inst|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~50_combout\ = (\inst|Add1~48_combout\ & \inst|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add1~48_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Add1~50_combout\);

-- Location: FF_X27_Y27_N1
\inst|count_num[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add1~50_combout\,
	ena => \inst|count_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count_num\(16));

-- Location: LCCOMB_X28_Y27_N6
\inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|count_num\(6)) # ((\inst|count_num\(5) & ((!\inst|Equal2~0_combout\) # (!\inst|count_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(6),
	datab => \inst|count_num\(5),
	datac => \inst|count_num\(0),
	datad => \inst|Equal2~0_combout\,
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y27_N26
\inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|count_num\(8)) # ((\inst|count_num\(7) & \inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(8),
	datac => \inst|count_num\(7),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X27_Y27_N4
\inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = ((\inst|count_num\(9) & (\inst|count_num\(10) & \inst|LessThan0~1_combout\))) # (!\inst|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(9),
	datab => \inst|count_num\(10),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|Equal2~1_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y27_N14
\inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = ((\inst|count_num\(16) & (\inst|LessThan0~2_combout\ & \inst|count_num\(15)))) # (!\inst|Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count_num\(16),
	datab => \inst|Equal2~6_combout\,
	datac => \inst|LessThan0~2_combout\,
	datad => \inst|count_num\(15),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y26_N30
\inst|out[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out[5]~1_combout\ = ((!\inst|Equal1~1_combout\ & \inst|LessThan0~3_combout\)) # (!\key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_clr~input_o\,
	datac => \inst|Equal1~1_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|out[5]~1_combout\);

-- Location: FF_X33_Y26_N11
\inst|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|out~0_combout\,
	ena => \inst|out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out\(0));

-- Location: LCCOMB_X33_Y27_N30
\inst21|rf|R0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~0_combout\ = (\wr~input_o\ & (((\inst22|man|ans\(0))))) # (!\wr~input_o\ & ((\rd~input_o\ & ((\inst|out\(0)))) # (!\rd~input_o\ & (\inst22|man|ans\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \rd~input_o\,
	datac => \inst22|man|ans\(0),
	datad => \inst|out\(0),
	combout => \inst21|rf|R0~0_combout\);

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

-- Location: LCCOMB_X35_Y27_N12
\inst21|rf|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|Decoder0~2_combout\ = (\rd~input_o\ & (!\RA[0]~input_o\ & !\RA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \RA[0]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \inst21|rf|Decoder0~2_combout\);

-- Location: FF_X33_Y27_N31
\inst21|rf|R0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R0~0_combout\,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(0));

-- Location: LCCOMB_X30_Y27_N14
\inst18|opt1[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[3]~1_combout\ = (\cr[1]~input_o\ & \cr[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cr[1]~input_o\,
	datad => \cr[2]~input_o\,
	combout => \inst18|opt1[3]~1_combout\);

-- Location: LCCOMB_X35_Y27_N2
\inst21|rf|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|Decoder0~1_combout\ = (\rd~input_o\ & (!\RA[0]~input_o\ & \RA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \RA[0]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \inst21|rf|Decoder0~1_combout\);

-- Location: FF_X34_Y27_N29
\inst21|rf|R2[0]\ : dffeas
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
	q => \inst21|rf|R2\(0));

-- Location: LCCOMB_X33_Y27_N10
\inst21|rf|R1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R1[0]~feeder_combout\ = \inst21|rf|R0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|rf|R0~0_combout\,
	combout => \inst21|rf|R1[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y27_N22
\inst21|rf|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|Decoder0~3_combout\ = (\rd~input_o\ & (\RA[0]~input_o\ & !\RA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \RA[0]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \inst21|rf|Decoder0~3_combout\);

-- Location: FF_X33_Y27_N11
\inst21|rf|R1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R1[0]~feeder_combout\,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(0));

-- Location: LCCOMB_X34_Y27_N28
\inst18|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector7~0_combout\ = (\inst18|opt1[3]~1_combout\ & (\inst18|opt1[3]~0_combout\)) # (!\inst18|opt1[3]~1_combout\ & ((\inst18|opt1[3]~0_combout\ & ((\inst21|rf|R1\(0)))) # (!\inst18|opt1[3]~0_combout\ & (\inst21|rf|R2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt1[3]~1_combout\,
	datab => \inst18|opt1[3]~0_combout\,
	datac => \inst21|rf|R2\(0),
	datad => \inst21|rf|R1\(0),
	combout => \inst18|Selector7~0_combout\);

-- Location: LCCOMB_X30_Y27_N6
\inst18|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector7~1_combout\ = (\inst18|opt1[3]~1_combout\ & ((\inst18|Selector7~0_combout\ & ((\inst21|pf|PC\(0)))) # (!\inst18|Selector7~0_combout\ & (\inst21|rf|R0\(0))))) # (!\inst18|opt1[3]~1_combout\ & (((\inst18|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|rf|R0\(0),
	datab => \inst18|opt1[3]~1_combout\,
	datac => \inst21|pf|PC\(0),
	datad => \inst18|Selector7~0_combout\,
	combout => \inst18|Selector7~1_combout\);

-- Location: LCCOMB_X29_Y27_N0
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

-- Location: LCCOMB_X30_Y27_N22
\inst21|rf|R3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R3[0]~feeder_combout\ = \inst21|rf|R0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|rf|R0~0_combout\,
	combout => \inst21|rf|R3[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y27_N20
\inst21|rf|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|Decoder0~0_combout\ = (\rd~input_o\ & (\RA[0]~input_o\ & \RA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \RA[0]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \inst21|rf|Decoder0~0_combout\);

-- Location: FF_X30_Y27_N23
\inst21|rf|R3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R3[0]~feeder_combout\,
	ena => \inst21|rf|Decoder0~0_combout\,
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

-- Location: LCCOMB_X30_Y27_N28
\inst18|opt1[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[3]~2_combout\ = (\cr[3]~input_o\ & (\cr[1]~input_o\ $ (\cr[4]~input_o\))) # (!\cr[3]~input_o\ & (\cr[1]~input_o\ & \cr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cr[3]~input_o\,
	datac => \cr[1]~input_o\,
	datad => \cr[4]~input_o\,
	combout => \inst18|opt1[3]~2_combout\);

-- Location: LCCOMB_X30_Y27_N10
\inst18|opt1[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[3]~3_combout\ = (\cr[3]~input_o\ & (\cr[1]~input_o\ & \cr[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cr[3]~input_o\,
	datac => \cr[1]~input_o\,
	datad => \cr[4]~input_o\,
	combout => \inst18|opt1[3]~3_combout\);

-- Location: LCCOMB_X30_Y27_N12
\inst18|opt1[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[3]~4_combout\ = (\inst18|opt1[3]~2_combout\ & (((\inst18|opt1[3]~3_combout\) # (!\cr[0]~input_o\)) # (!\cr[2]~input_o\))) # (!\inst18|opt1[3]~2_combout\ & ((\cr[2]~input_o\ $ (!\cr[0]~input_o\)) # (!\inst18|opt1[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cr[2]~input_o\,
	datab => \inst18|opt1[3]~2_combout\,
	datac => \cr[0]~input_o\,
	datad => \inst18|opt1[3]~3_combout\,
	combout => \inst18|opt1[3]~4_combout\);

-- Location: LCCOMB_X30_Y27_N30
\inst18|opt2[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt2[7]~0_combout\ = (\flag~input_o\ & !\inst18|opt1[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flag~input_o\,
	datad => \inst18|opt1[3]~4_combout\,
	combout => \inst18|opt2[7]~0_combout\);

-- Location: FF_X29_Y27_N1
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
	ena => \inst18|opt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(0));

-- Location: FF_X32_Y28_N31
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

-- Location: LCCOMB_X30_Y27_N8
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

-- Location: LCCOMB_X30_Y27_N24
\inst18|opt1[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|opt1[7]~5_combout\ = (!\flag~input_o\ & !\inst18|opt1[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flag~input_o\,
	datad => \inst18|opt1[3]~4_combout\,
	combout => \inst18|opt1[7]~5_combout\);

-- Location: FF_X30_Y27_N9
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
	ena => \inst18|opt1[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(0));

-- Location: FF_X32_Y28_N9
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

-- Location: LCCOMB_X32_Y28_N10
\inst22|man|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~1_cout\ = CARRY(\cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cin~input_o\,
	datad => VCC,
	cout => \inst22|man|Add0~1_cout\);

-- Location: LCCOMB_X32_Y28_N12
\inst22|man|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~2_combout\ = (\inst22|mw|X\(0) & ((\inst22|mw|Y\(0) & (\inst22|man|Add0~1_cout\ & VCC)) # (!\inst22|mw|Y\(0) & (!\inst22|man|Add0~1_cout\)))) # (!\inst22|mw|X\(0) & ((\inst22|mw|Y\(0) & (!\inst22|man|Add0~1_cout\)) # (!\inst22|mw|Y\(0) & 
-- ((\inst22|man|Add0~1_cout\) # (GND)))))
-- \inst22|man|Add0~3\ = CARRY((\inst22|mw|X\(0) & (!\inst22|mw|Y\(0) & !\inst22|man|Add0~1_cout\)) # (!\inst22|mw|X\(0) & ((!\inst22|man|Add0~1_cout\) # (!\inst22|mw|Y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(0),
	datab => \inst22|mw|Y\(0),
	datad => VCC,
	cin => \inst22|man|Add0~1_cout\,
	combout => \inst22|man|Add0~2_combout\,
	cout => \inst22|man|Add0~3\);

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

-- Location: LCCOMB_X32_Y26_N12
\inst22|man|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux7~1_combout\ = (!\S[0]~input_o\ & ((\S[2]~input_o\ & ((\inst22|man|Add0~2_combout\))) # (!\S[2]~input_o\ & (\inst22|mw|Y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(0),
	datab => \inst22|man|Add0~2_combout\,
	datac => \S[2]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst22|man|Mux7~1_combout\);

-- Location: LCCOMB_X33_Y26_N0
\inst|out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out~3_combout\ = (\inst|num~16_combout\ & \key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|num~16_combout\,
	datad => \key_clr~input_o\,
	combout => \inst|out~3_combout\);

-- Location: FF_X33_Y26_N1
\inst|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|out~3_combout\,
	ena => \inst|out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out\(1));

-- Location: LCCOMB_X32_Y27_N26
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

-- Location: LCCOMB_X35_Y27_N28
\inst21|rf|R3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R3[1]~feeder_combout\ = \inst21|rf|R0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|rf|R0~1_combout\,
	combout => \inst21|rf|R3[1]~feeder_combout\);

-- Location: FF_X35_Y27_N29
\inst21|rf|R3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R3[1]~feeder_combout\,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(1));

-- Location: FF_X32_Y27_N27
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
	ena => \inst18|opt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(1));

-- Location: FF_X32_Y28_N15
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

-- Location: LCCOMB_X35_Y28_N14
\inst22|man|ans~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~15_combout\ = \inst22|mw|Y\(1) $ (\inst22|mw|X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|Y\(1),
	datad => \inst22|mw|X\(1),
	combout => \inst22|man|ans~15_combout\);

-- Location: LCCOMB_X35_Y28_N28
\inst22|man|ans~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~14_combout\ = (\inst22|mw|Y\(1)) # (\inst22|mw|X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|Y\(1),
	datad => \inst22|mw|X\(1),
	combout => \inst22|man|ans~14_combout\);

-- Location: LCCOMB_X33_Y28_N6
\inst22|man|ans[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[1]~1_combout\ = (\S[0]~input_o\ & (\inst22|man|ans~15_combout\)) # (!\S[0]~input_o\ & ((\inst22|man|ans~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans~15_combout\,
	datab => \S[0]~input_o\,
	datad => \inst22|man|ans~14_combout\,
	combout => \inst22|man|ans[1]~1_combout\);

-- Location: LCCOMB_X33_Y26_N14
\inst|out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out~5_combout\ = (\key_clr~input_o\ & \inst|num~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_clr~input_o\,
	datad => \inst|num~9_combout\,
	combout => \inst|out~5_combout\);

-- Location: FF_X33_Y26_N15
\inst|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|out~5_combout\,
	ena => \inst|out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out\(2));

-- Location: LCCOMB_X32_Y27_N10
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

-- Location: LCCOMB_X35_Y27_N4
\inst21|rf|R3[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R3[2]~feeder_combout\ = \inst21|rf|R0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|rf|R0~2_combout\,
	combout => \inst21|rf|R3[2]~feeder_combout\);

-- Location: FF_X35_Y27_N5
\inst21|rf|R3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R3[2]~feeder_combout\,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(2));

-- Location: FF_X32_Y27_N11
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
	ena => \inst18|opt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(2));

-- Location: FF_X32_Y28_N17
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

-- Location: LCCOMB_X33_Y29_N10
\inst22|man|ans~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~21_combout\ = \inst22|mw|X\(2) $ (\inst22|mw|Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|X\(2),
	datad => \inst22|mw|Y\(2),
	combout => \inst22|man|ans~21_combout\);

-- Location: LCCOMB_X33_Y29_N24
\inst22|man|ans~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~20_combout\ = (\inst22|mw|X\(2)) # (\inst22|mw|Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|X\(2),
	datad => \inst22|mw|Y\(2),
	combout => \inst22|man|ans~20_combout\);

-- Location: LCCOMB_X33_Y28_N14
\inst22|man|ans[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[2]~3_combout\ = (\S[0]~input_o\ & (\inst22|man|ans~21_combout\)) # (!\S[0]~input_o\ & ((\inst22|man|ans~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans~21_combout\,
	datab => \inst22|man|ans~20_combout\,
	datad => \S[0]~input_o\,
	combout => \inst22|man|ans[2]~3_combout\);

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

-- Location: LCCOMB_X33_Y28_N12
\inst22|man|ans[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[6]~10_combout\ = (\S[2]~input_o\ & ((\S[1]~input_o\) # (\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst22|man|ans[6]~10_combout\);

-- Location: LCCOMB_X32_Y27_N6
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

-- Location: LCCOMB_X35_Y27_N8
\inst21|rf|R3[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R3[3]~feeder_combout\ = \inst21|rf|R0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|rf|R0~3_combout\,
	combout => \inst21|rf|R3[3]~feeder_combout\);

-- Location: FF_X35_Y27_N9
\inst21|rf|R3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R3[3]~feeder_combout\,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(3));

-- Location: FF_X32_Y27_N7
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
	ena => \inst18|opt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(3));

-- Location: FF_X32_Y28_N19
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

-- Location: LCCOMB_X33_Y29_N28
\inst22|man|ans~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~27_combout\ = \inst22|mw|X\(3) $ (\inst22|mw|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|X\(3),
	datad => \inst22|mw|Y\(3),
	combout => \inst22|man|ans~27_combout\);

-- Location: LCCOMB_X34_Y29_N28
\inst22|man|ans~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~26_combout\ = (\inst22|mw|Y\(3)) # (\inst22|mw|X\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|Y\(3),
	datad => \inst22|mw|X\(3),
	combout => \inst22|man|ans~26_combout\);

-- Location: LCCOMB_X33_Y28_N30
\inst22|man|ans[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[3]~5_combout\ = (\S[0]~input_o\ & (\inst22|man|ans~27_combout\)) # (!\S[0]~input_o\ & ((\inst22|man|ans~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans~27_combout\,
	datab => \inst22|man|ans~26_combout\,
	datad => \S[0]~input_o\,
	combout => \inst22|man|ans[3]~5_combout\);

-- Location: LCCOMB_X32_Y29_N8
\inst22|man|ans~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~28_combout\ = (\inst22|mw|X\(3) & \inst22|mw|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|X\(3),
	datad => \inst22|mw|Y\(3),
	combout => \inst22|man|ans~28_combout\);

-- Location: LCCOMB_X32_Y27_N18
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

-- Location: LCCOMB_X35_Y27_N14
\inst21|rf|R3[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R3[4]~feeder_combout\ = \inst21|rf|R1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|rf|R1~0_combout\,
	combout => \inst21|rf|R3[4]~feeder_combout\);

-- Location: FF_X35_Y27_N15
\inst21|rf|R3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R3[4]~feeder_combout\,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(4));

-- Location: FF_X32_Y27_N19
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
	ena => \inst18|opt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(4));

-- Location: FF_X32_Y28_N21
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

-- Location: LCCOMB_X33_Y29_N14
\inst22|man|ans~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~9_combout\ = \inst22|mw|Y\(4) $ (\inst22|mw|X\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(4),
	datad => \inst22|mw|X\(4),
	combout => \inst22|man|ans~9_combout\);

-- Location: LCCOMB_X33_Y29_N8
\inst22|man|ans~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~8_combout\ = (\inst22|mw|Y\(4)) # (\inst22|mw|X\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(4),
	datad => \inst22|mw|X\(4),
	combout => \inst22|man|ans~8_combout\);

-- Location: LCCOMB_X33_Y28_N24
\inst22|man|ans[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[4]~0_combout\ = (\S[0]~input_o\ & (\inst22|man|ans~9_combout\)) # (!\S[0]~input_o\ & ((\inst22|man|ans~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans~9_combout\,
	datab => \S[0]~input_o\,
	datad => \inst22|man|ans~8_combout\,
	combout => \inst22|man|ans[4]~0_combout\);

-- Location: LCCOMB_X33_Y26_N4
\inst|out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out~4_combout\ = (\inst|out\(1) & \key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|out\(1),
	datad => \key_clr~input_o\,
	combout => \inst|out~4_combout\);

-- Location: FF_X33_Y26_N5
\inst|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|out~4_combout\,
	ena => \inst|out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out\(5));

-- Location: LCCOMB_X32_Y27_N14
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

-- Location: LCCOMB_X35_Y27_N26
\inst21|rf|R3[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R3[5]~feeder_combout\ = \inst21|rf|R1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|rf|R1~1_combout\,
	combout => \inst21|rf|R3[5]~feeder_combout\);

-- Location: FF_X35_Y27_N27
\inst21|rf|R3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R3[5]~feeder_combout\,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(5));

-- Location: FF_X32_Y27_N15
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
	ena => \inst18|opt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(5));

-- Location: FF_X32_Y28_N23
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

-- Location: LCCOMB_X35_Y28_N6
\inst22|man|ans~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~18_combout\ = \inst22|mw|Y\(5) $ (\inst22|mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|Y\(5),
	datad => \inst22|mw|X\(5),
	combout => \inst22|man|ans~18_combout\);

-- Location: LCCOMB_X35_Y28_N20
\inst22|man|ans~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~17_combout\ = (\inst22|mw|Y\(5)) # (\inst22|mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|Y\(5),
	datad => \inst22|mw|X\(5),
	combout => \inst22|man|ans~17_combout\);

-- Location: LCCOMB_X33_Y28_N4
\inst22|man|ans[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[5]~2_combout\ = (\S[0]~input_o\ & (\inst22|man|ans~18_combout\)) # (!\S[0]~input_o\ & ((\inst22|man|ans~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans~18_combout\,
	datab => \S[0]~input_o\,
	datad => \inst22|man|ans~17_combout\,
	combout => \inst22|man|ans[5]~2_combout\);

-- Location: LCCOMB_X32_Y28_N8
\inst22|man|ans~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~19_combout\ = (\inst22|mw|Y\(5) & \inst22|mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(5),
	datad => \inst22|mw|X\(5),
	combout => \inst22|man|ans~19_combout\);

-- Location: LCCOMB_X32_Y26_N24
\inst22|man|exceed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|exceed~0_combout\ = (\S[2]~input_o\ & !\S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	combout => \inst22|man|exceed~0_combout\);

-- Location: LCCOMB_X33_Y26_N22
\inst|out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out~6_combout\ = (\inst|out\(2) & \key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|out\(2),
	datad => \key_clr~input_o\,
	combout => \inst|out~6_combout\);

-- Location: FF_X33_Y26_N23
\inst|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|out~6_combout\,
	ena => \inst|out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out\(6));

-- Location: LCCOMB_X32_Y27_N22
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

-- Location: LCCOMB_X35_Y27_N30
\inst21|rf|R3[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R3[6]~feeder_combout\ = \inst21|rf|R1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|rf|R1~2_combout\,
	combout => \inst21|rf|R3[6]~feeder_combout\);

-- Location: FF_X35_Y27_N31
\inst21|rf|R3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R3[6]~feeder_combout\,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(6));

-- Location: FF_X32_Y27_N23
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
	ena => \inst18|opt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(6));

-- Location: FF_X32_Y28_N11
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

-- Location: LCCOMB_X33_Y29_N30
\inst22|man|ans~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~23_combout\ = (\inst22|mw|X\(6)) # (\inst22|mw|Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|X\(6),
	datad => \inst22|mw|Y\(6),
	combout => \inst22|man|ans~23_combout\);

-- Location: LCCOMB_X34_Y28_N2
\inst22|man|ans~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~24_combout\ = \inst22|mw|Y\(6) $ (\inst22|mw|X\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|Y\(6),
	datad => \inst22|mw|X\(6),
	combout => \inst22|man|ans~24_combout\);

-- Location: LCCOMB_X33_Y28_N0
\inst22|man|ans[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[6]~4_combout\ = (\S[0]~input_o\ & ((\inst22|man|ans~24_combout\))) # (!\S[0]~input_o\ & (\inst22|man|ans~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans~23_combout\,
	datab => \S[0]~input_o\,
	datad => \inst22|man|ans~24_combout\,
	combout => \inst22|man|ans[6]~4_combout\);

-- Location: LCCOMB_X32_Y28_N14
\inst22|man|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~4_combout\ = ((\inst22|mw|Y\(1) $ (\inst22|mw|X\(1) $ (!\inst22|man|Add0~3\)))) # (GND)
-- \inst22|man|Add0~5\ = CARRY((\inst22|mw|Y\(1) & ((\inst22|mw|X\(1)) # (!\inst22|man|Add0~3\))) # (!\inst22|mw|Y\(1) & (\inst22|mw|X\(1) & !\inst22|man|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(1),
	datab => \inst22|mw|X\(1),
	datad => VCC,
	cin => \inst22|man|Add0~3\,
	combout => \inst22|man|Add0~4_combout\,
	cout => \inst22|man|Add0~5\);

-- Location: LCCOMB_X32_Y28_N16
\inst22|man|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~6_combout\ = (\inst22|mw|X\(2) & ((\inst22|mw|Y\(2) & (\inst22|man|Add0~5\ & VCC)) # (!\inst22|mw|Y\(2) & (!\inst22|man|Add0~5\)))) # (!\inst22|mw|X\(2) & ((\inst22|mw|Y\(2) & (!\inst22|man|Add0~5\)) # (!\inst22|mw|Y\(2) & 
-- ((\inst22|man|Add0~5\) # (GND)))))
-- \inst22|man|Add0~7\ = CARRY((\inst22|mw|X\(2) & (!\inst22|mw|Y\(2) & !\inst22|man|Add0~5\)) # (!\inst22|mw|X\(2) & ((!\inst22|man|Add0~5\) # (!\inst22|mw|Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(2),
	datab => \inst22|mw|Y\(2),
	datad => VCC,
	cin => \inst22|man|Add0~5\,
	combout => \inst22|man|Add0~6_combout\,
	cout => \inst22|man|Add0~7\);

-- Location: LCCOMB_X32_Y28_N18
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

-- Location: LCCOMB_X32_Y28_N20
\inst22|man|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Add0~10_combout\ = (\inst22|mw|X\(4) & ((\inst22|mw|Y\(4) & (\inst22|man|Add0~9\ & VCC)) # (!\inst22|mw|Y\(4) & (!\inst22|man|Add0~9\)))) # (!\inst22|mw|X\(4) & ((\inst22|mw|Y\(4) & (!\inst22|man|Add0~9\)) # (!\inst22|mw|Y\(4) & 
-- ((\inst22|man|Add0~9\) # (GND)))))
-- \inst22|man|Add0~11\ = CARRY((\inst22|mw|X\(4) & (!\inst22|mw|Y\(4) & !\inst22|man|Add0~9\)) # (!\inst22|mw|X\(4) & ((!\inst22|man|Add0~9\) # (!\inst22|mw|Y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(4),
	datab => \inst22|mw|Y\(4),
	datad => VCC,
	cin => \inst22|man|Add0~9\,
	combout => \inst22|man|Add0~10_combout\,
	cout => \inst22|man|Add0~11\);

-- Location: LCCOMB_X32_Y28_N22
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

-- Location: LCCOMB_X32_Y28_N24
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

-- Location: LCCOMB_X32_Y28_N2
\inst22|man|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux1~0_combout\ = (\inst22|man|ans[6]~10_combout\ & (((\inst22|mw|X\(5))) # (!\inst22|man|exceed~0_combout\))) # (!\inst22|man|ans[6]~10_combout\ & (\inst22|man|exceed~0_combout\ & ((\inst22|man|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans[6]~10_combout\,
	datab => \inst22|man|exceed~0_combout\,
	datac => \inst22|mw|X\(5),
	datad => \inst22|man|Add0~14_combout\,
	combout => \inst22|man|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y28_N30
\inst22|man|ans~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~25_combout\ = (\inst22|mw|X\(6) & \inst22|mw|Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|mw|X\(6),
	datad => \inst22|mw|Y\(6),
	combout => \inst22|man|ans~25_combout\);

-- Location: LCCOMB_X32_Y28_N6
\inst22|man|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux1~1_combout\ = (\inst22|man|Mux1~0_combout\ & ((\inst22|man|exceed~0_combout\) # ((\inst22|mw|X\(7))))) # (!\inst22|man|Mux1~0_combout\ & (!\inst22|man|exceed~0_combout\ & (\inst22|man|ans~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|Mux1~0_combout\,
	datab => \inst22|man|exceed~0_combout\,
	datac => \inst22|man|ans~25_combout\,
	datad => \inst22|mw|X\(7),
	combout => \inst22|man|Mux1~1_combout\);

-- Location: LCCOMB_X33_Y28_N2
\inst22|man|ans[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[6]~12_combout\ = (!\S[2]~input_o\ & (!\S[1]~input_o\ & !\S[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst22|man|ans[6]~12_combout\);

-- Location: LCCOMB_X33_Y28_N16
\inst22|man|ans[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans[6]~13_combout\ = (\S[2]~input_o\) # (!\S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[1]~input_o\,
	datad => \S[2]~input_o\,
	combout => \inst22|man|ans[6]~13_combout\);

-- Location: FF_X33_Y28_N1
\inst22|man|ans[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[6]~4_combout\,
	asdata => \inst22|man|Mux1~1_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(6));

-- Location: LCCOMB_X34_Y27_N14
\inst21|rf|R1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R1~2_combout\ = (\wr~input_o\ & (((\inst22|man|ans\(6))))) # (!\wr~input_o\ & ((\rd~input_o\ & (\inst|out\(6))) # (!\rd~input_o\ & ((\inst22|man|ans\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \rd~input_o\,
	datac => \inst|out\(6),
	datad => \inst22|man|ans\(6),
	combout => \inst21|rf|R1~2_combout\);

-- Location: FF_X34_Y27_N15
\inst21|rf|R2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R1~2_combout\,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(6));

-- Location: FF_X33_Y27_N27
\inst21|rf|R1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R1~2_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(6));

-- Location: LCCOMB_X33_Y27_N26
\inst18|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector1~0_combout\ = (\inst18|opt1[3]~1_combout\ & (((\inst18|opt1[3]~0_combout\)))) # (!\inst18|opt1[3]~1_combout\ & ((\inst18|opt1[3]~0_combout\ & ((\inst21|rf|R1\(6)))) # (!\inst18|opt1[3]~0_combout\ & (\inst21|rf|R2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt1[3]~1_combout\,
	datab => \inst21|rf|R2\(6),
	datac => \inst21|rf|R1\(6),
	datad => \inst18|opt1[3]~0_combout\,
	combout => \inst18|Selector1~0_combout\);

-- Location: FF_X33_Y27_N25
\inst21|rf|R0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R1~2_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(6));

-- Location: LCCOMB_X33_Y27_N24
\inst18|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector1~1_combout\ = (\inst18|Selector1~0_combout\ & ((\inst21|pf|PC\(6)) # ((!\inst18|opt1[3]~1_combout\)))) # (!\inst18|Selector1~0_combout\ & (((\inst21|rf|R0\(6) & \inst18|opt1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Selector1~0_combout\,
	datab => \inst21|pf|PC\(6),
	datac => \inst21|rf|R0\(6),
	datad => \inst18|opt1[3]~1_combout\,
	combout => \inst18|Selector1~1_combout\);

-- Location: LCCOMB_X32_Y27_N0
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

-- Location: FF_X32_Y27_N1
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
	ena => \inst18|opt1[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(6));

-- Location: FF_X32_Y28_N5
\inst22|mw|X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst18|opt1\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|mw|X\(6));

-- Location: LCCOMB_X32_Y28_N0
\inst22|man|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux2~0_combout\ = (\inst22|man|ans[6]~10_combout\ & (((\inst22|mw|X\(4))) # (!\inst22|man|exceed~0_combout\))) # (!\inst22|man|ans[6]~10_combout\ & (\inst22|man|exceed~0_combout\ & ((\inst22|man|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans[6]~10_combout\,
	datab => \inst22|man|exceed~0_combout\,
	datac => \inst22|mw|X\(4),
	datad => \inst22|man|Add0~12_combout\,
	combout => \inst22|man|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y28_N4
\inst22|man|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux2~1_combout\ = (\inst22|man|exceed~0_combout\ & (((\inst22|man|Mux2~0_combout\)))) # (!\inst22|man|exceed~0_combout\ & ((\inst22|man|Mux2~0_combout\ & ((\inst22|mw|X\(6)))) # (!\inst22|man|Mux2~0_combout\ & (\inst22|man|ans~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans~19_combout\,
	datab => \inst22|man|exceed~0_combout\,
	datac => \inst22|mw|X\(6),
	datad => \inst22|man|Mux2~0_combout\,
	combout => \inst22|man|Mux2~1_combout\);

-- Location: FF_X33_Y28_N5
\inst22|man|ans[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[5]~2_combout\,
	asdata => \inst22|man|Mux2~1_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(5));

-- Location: LCCOMB_X34_Y27_N6
\inst21|rf|R1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R1~1_combout\ = (\wr~input_o\ & (((\inst22|man|ans\(5))))) # (!\wr~input_o\ & ((\rd~input_o\ & (\inst|out\(5))) # (!\rd~input_o\ & ((\inst22|man|ans\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \rd~input_o\,
	datac => \inst|out\(5),
	datad => \inst22|man|ans\(5),
	combout => \inst21|rf|R1~1_combout\);

-- Location: FF_X33_Y27_N19
\inst21|rf|R1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R1~1_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(5));

-- Location: FF_X33_Y27_N1
\inst21|rf|R0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R1~1_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(5));

-- Location: FF_X34_Y27_N7
\inst21|rf|R2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R1~1_combout\,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(5));

-- Location: LCCOMB_X33_Y27_N0
\inst18|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector2~0_combout\ = (\inst18|opt1[3]~1_combout\ & ((\inst18|opt1[3]~0_combout\) # ((\inst21|rf|R0\(5))))) # (!\inst18|opt1[3]~1_combout\ & (!\inst18|opt1[3]~0_combout\ & ((\inst21|rf|R2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt1[3]~1_combout\,
	datab => \inst18|opt1[3]~0_combout\,
	datac => \inst21|rf|R0\(5),
	datad => \inst21|rf|R2\(5),
	combout => \inst18|Selector2~0_combout\);

-- Location: LCCOMB_X33_Y27_N18
\inst18|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector2~1_combout\ = (\inst18|opt1[3]~0_combout\ & ((\inst18|Selector2~0_combout\ & (\inst21|pf|PC\(5))) # (!\inst18|Selector2~0_combout\ & ((\inst21|rf|R1\(5)))))) # (!\inst18|opt1[3]~0_combout\ & (((\inst18|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt1[3]~0_combout\,
	datab => \inst21|pf|PC\(5),
	datac => \inst21|rf|R1\(5),
	datad => \inst18|Selector2~0_combout\,
	combout => \inst18|Selector2~1_combout\);

-- Location: LCCOMB_X32_Y27_N20
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

-- Location: FF_X32_Y27_N21
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
	ena => \inst18|opt1[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(5));

-- Location: FF_X32_Y28_N3
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

-- Location: LCCOMB_X34_Y28_N6
\inst22|man|ans~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~11_combout\ = (\inst22|mw|X\(4) & \inst22|mw|Y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|X\(4),
	datad => \inst22|mw|Y\(4),
	combout => \inst22|man|ans~11_combout\);

-- Location: LCCOMB_X33_Y28_N26
\inst22|man|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux3~0_combout\ = (\inst22|man|ans[6]~10_combout\ & (((!\inst22|man|exceed~0_combout\)))) # (!\inst22|man|ans[6]~10_combout\ & ((\inst22|man|exceed~0_combout\ & (\inst22|man|Add0~10_combout\)) # (!\inst22|man|exceed~0_combout\ & 
-- ((\inst22|man|ans~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans[6]~10_combout\,
	datab => \inst22|man|Add0~10_combout\,
	datac => \inst22|man|exceed~0_combout\,
	datad => \inst22|man|ans~11_combout\,
	combout => \inst22|man|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y28_N8
\inst22|man|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux3~1_combout\ = (\inst22|man|Mux3~0_combout\ & ((\inst22|mw|X\(5)) # ((!\inst22|man|ans[6]~10_combout\)))) # (!\inst22|man|Mux3~0_combout\ & (((\inst22|mw|X\(3) & \inst22|man|ans[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(5),
	datab => \inst22|mw|X\(3),
	datac => \inst22|man|Mux3~0_combout\,
	datad => \inst22|man|ans[6]~10_combout\,
	combout => \inst22|man|Mux3~1_combout\);

-- Location: FF_X33_Y28_N25
\inst22|man|ans[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[4]~0_combout\,
	asdata => \inst22|man|Mux3~1_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(4));

-- Location: LCCOMB_X33_Y26_N26
\inst|out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out~2_combout\ = (\inst|out\(0) & \key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|out\(0),
	datad => \key_clr~input_o\,
	combout => \inst|out~2_combout\);

-- Location: FF_X33_Y26_N27
\inst|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|out~2_combout\,
	ena => \inst|out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out\(4));

-- Location: LCCOMB_X34_Y27_N10
\inst21|rf|R1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R1~0_combout\ = (\wr~input_o\ & (((\inst22|man|ans\(4))))) # (!\wr~input_o\ & ((\rd~input_o\ & ((\inst|out\(4)))) # (!\rd~input_o\ & (\inst22|man|ans\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \rd~input_o\,
	datac => \inst22|man|ans\(4),
	datad => \inst|out\(4),
	combout => \inst21|rf|R1~0_combout\);

-- Location: FF_X33_Y27_N9
\inst21|rf|R1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R1~0_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(4));

-- Location: FF_X34_Y27_N11
\inst21|rf|R2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R1~0_combout\,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(4));

-- Location: LCCOMB_X33_Y27_N8
\inst18|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector3~0_combout\ = (\inst18|opt1[3]~1_combout\ & (\inst18|opt1[3]~0_combout\)) # (!\inst18|opt1[3]~1_combout\ & ((\inst18|opt1[3]~0_combout\ & (\inst21|rf|R1\(4))) # (!\inst18|opt1[3]~0_combout\ & ((\inst21|rf|R2\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt1[3]~1_combout\,
	datab => \inst18|opt1[3]~0_combout\,
	datac => \inst21|rf|R1\(4),
	datad => \inst21|rf|R2\(4),
	combout => \inst18|Selector3~0_combout\);

-- Location: FF_X33_Y27_N5
\inst21|rf|R0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R1~0_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(4));

-- Location: LCCOMB_X33_Y27_N4
\inst18|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector3~1_combout\ = (\inst18|opt1[3]~1_combout\ & ((\inst18|Selector3~0_combout\ & ((\inst21|pf|PC\(4)))) # (!\inst18|Selector3~0_combout\ & (\inst21|rf|R0\(4))))) # (!\inst18|opt1[3]~1_combout\ & (\inst18|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt1[3]~1_combout\,
	datab => \inst18|Selector3~0_combout\,
	datac => \inst21|rf|R0\(4),
	datad => \inst21|pf|PC\(4),
	combout => \inst18|Selector3~1_combout\);

-- Location: LCCOMB_X32_Y27_N4
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

-- Location: FF_X32_Y27_N5
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
	ena => \inst18|opt1[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(4));

-- Location: FF_X32_Y28_N25
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

-- Location: LCCOMB_X33_Y28_N28
\inst22|man|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux4~0_combout\ = (\inst22|man|exceed~0_combout\ & ((\inst22|man|ans[6]~10_combout\ & ((\inst22|mw|X\(2)))) # (!\inst22|man|ans[6]~10_combout\ & (\inst22|man|Add0~8_combout\)))) # (!\inst22|man|exceed~0_combout\ & 
-- (((\inst22|man|ans[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|exceed~0_combout\,
	datab => \inst22|man|Add0~8_combout\,
	datac => \inst22|mw|X\(2),
	datad => \inst22|man|ans[6]~10_combout\,
	combout => \inst22|man|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y28_N22
\inst22|man|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux4~1_combout\ = (\inst22|man|exceed~0_combout\ & (((\inst22|man|Mux4~0_combout\)))) # (!\inst22|man|exceed~0_combout\ & ((\inst22|man|Mux4~0_combout\ & ((\inst22|mw|X\(4)))) # (!\inst22|man|Mux4~0_combout\ & (\inst22|man|ans~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans~28_combout\,
	datab => \inst22|mw|X\(4),
	datac => \inst22|man|exceed~0_combout\,
	datad => \inst22|man|Mux4~0_combout\,
	combout => \inst22|man|Mux4~1_combout\);

-- Location: FF_X33_Y28_N31
\inst22|man|ans[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[3]~5_combout\,
	asdata => \inst22|man|Mux4~1_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(3));

-- Location: LCCOMB_X33_Y26_N20
\inst|out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out~7_combout\ = (\key_clr~input_o\ & \inst|num~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_clr~input_o\,
	datad => \inst|num~13_combout\,
	combout => \inst|out~7_combout\);

-- Location: FF_X33_Y26_N21
\inst|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|out~7_combout\,
	ena => \inst|out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out\(3));

-- Location: LCCOMB_X33_Y27_N22
\inst21|rf|R0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~3_combout\ = (\rd~input_o\ & ((\wr~input_o\ & (\inst22|man|ans\(3))) # (!\wr~input_o\ & ((\inst|out\(3)))))) # (!\rd~input_o\ & (\inst22|man|ans\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans\(3),
	datab => \rd~input_o\,
	datac => \inst|out\(3),
	datad => \wr~input_o\,
	combout => \inst21|rf|R0~3_combout\);

-- Location: FF_X33_Y27_N29
\inst21|rf|R1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~3_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(3));

-- Location: FF_X34_Y27_N25
\inst21|rf|R2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~3_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(3));

-- Location: FF_X33_Y27_N23
\inst21|rf|R0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R0~3_combout\,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(3));

-- Location: LCCOMB_X34_Y27_N24
\inst18|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector4~0_combout\ = (\inst18|opt1[3]~1_combout\ & ((\inst18|opt1[3]~0_combout\) # ((\inst21|rf|R0\(3))))) # (!\inst18|opt1[3]~1_combout\ & (!\inst18|opt1[3]~0_combout\ & (\inst21|rf|R2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt1[3]~1_combout\,
	datab => \inst18|opt1[3]~0_combout\,
	datac => \inst21|rf|R2\(3),
	datad => \inst21|rf|R0\(3),
	combout => \inst18|Selector4~0_combout\);

-- Location: LCCOMB_X33_Y27_N28
\inst18|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector4~1_combout\ = (\inst18|opt1[3]~0_combout\ & ((\inst18|Selector4~0_combout\ & (\inst21|pf|PC\(3))) # (!\inst18|Selector4~0_combout\ & ((\inst21|rf|R1\(3)))))) # (!\inst18|opt1[3]~0_combout\ & (((\inst18|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(3),
	datab => \inst18|opt1[3]~0_combout\,
	datac => \inst21|rf|R1\(3),
	datad => \inst18|Selector4~0_combout\,
	combout => \inst18|Selector4~1_combout\);

-- Location: LCCOMB_X32_Y27_N24
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

-- Location: FF_X32_Y27_N25
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
	ena => \inst18|opt1[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(3));

-- Location: FF_X32_Y28_N13
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

-- Location: LCCOMB_X33_Y29_N12
\inst22|man|ans~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~22_combout\ = (\inst22|mw|X\(2) & \inst22|mw|Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|X\(2),
	datad => \inst22|mw|Y\(2),
	combout => \inst22|man|ans~22_combout\);

-- Location: LCCOMB_X33_Y28_N18
\inst22|man|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux5~0_combout\ = (\inst22|man|exceed~0_combout\ & (((\inst22|man|Add0~6_combout\ & !\inst22|man|ans[6]~10_combout\)))) # (!\inst22|man|exceed~0_combout\ & ((\inst22|man|ans~22_combout\) # ((\inst22|man|ans[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|exceed~0_combout\,
	datab => \inst22|man|ans~22_combout\,
	datac => \inst22|man|Add0~6_combout\,
	datad => \inst22|man|ans[6]~10_combout\,
	combout => \inst22|man|Mux5~0_combout\);

-- Location: LCCOMB_X34_Y28_N12
\inst22|man|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux5~1_combout\ = (\inst22|man|ans[6]~10_combout\ & ((\inst22|man|Mux5~0_combout\ & (\inst22|mw|X\(3))) # (!\inst22|man|Mux5~0_combout\ & ((\inst22|mw|X\(1)))))) # (!\inst22|man|ans[6]~10_combout\ & (((\inst22|man|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans[6]~10_combout\,
	datab => \inst22|mw|X\(3),
	datac => \inst22|mw|X\(1),
	datad => \inst22|man|Mux5~0_combout\,
	combout => \inst22|man|Mux5~1_combout\);

-- Location: FF_X33_Y28_N15
\inst22|man|ans[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[2]~3_combout\,
	asdata => \inst22|man|Mux5~1_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(2));

-- Location: LCCOMB_X34_Y27_N4
\inst21|rf|R0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~2_combout\ = (\rd~input_o\ & ((\wr~input_o\ & ((\inst22|man|ans\(2)))) # (!\wr~input_o\ & (\inst|out\(2))))) # (!\rd~input_o\ & (((\inst22|man|ans\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|out\(2),
	datab => \rd~input_o\,
	datac => \wr~input_o\,
	datad => \inst22|man|ans\(2),
	combout => \inst21|rf|R0~2_combout\);

-- Location: FF_X33_Y27_N13
\inst21|rf|R1[2]\ : dffeas
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
	q => \inst21|rf|R1\(2));

-- Location: FF_X34_Y27_N5
\inst21|rf|R2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R0~2_combout\,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(2));

-- Location: LCCOMB_X33_Y27_N12
\inst18|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector5~0_combout\ = (\inst18|opt1[3]~1_combout\ & (\inst18|opt1[3]~0_combout\)) # (!\inst18|opt1[3]~1_combout\ & ((\inst18|opt1[3]~0_combout\ & (\inst21|rf|R1\(2))) # (!\inst18|opt1[3]~0_combout\ & ((\inst21|rf|R2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt1[3]~1_combout\,
	datab => \inst18|opt1[3]~0_combout\,
	datac => \inst21|rf|R1\(2),
	datad => \inst21|rf|R2\(2),
	combout => \inst18|Selector5~0_combout\);

-- Location: FF_X33_Y27_N7
\inst21|rf|R0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~2_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(2));

-- Location: LCCOMB_X33_Y27_N6
\inst18|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector5~1_combout\ = (\inst18|Selector5~0_combout\ & (((\inst21|pf|PC\(2))) # (!\inst18|opt1[3]~1_combout\))) # (!\inst18|Selector5~0_combout\ & (\inst18|opt1[3]~1_combout\ & (\inst21|rf|R0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|Selector5~0_combout\,
	datab => \inst18|opt1[3]~1_combout\,
	datac => \inst21|rf|R0\(2),
	datad => \inst21|pf|PC\(2),
	combout => \inst18|Selector5~1_combout\);

-- Location: LCCOMB_X32_Y27_N8
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

-- Location: FF_X32_Y27_N9
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
	ena => \inst18|opt1[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(2));

-- Location: FF_X32_Y28_N27
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

-- Location: LCCOMB_X30_Y28_N0
\inst22|man|ans~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~16_combout\ = (\inst22|mw|X\(1) & \inst22|mw|Y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|mw|X\(1),
	datad => \inst22|mw|Y\(1),
	combout => \inst22|man|ans~16_combout\);

-- Location: LCCOMB_X30_Y28_N22
\inst22|man|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux6~0_combout\ = (\inst22|man|exceed~0_combout\ & (((!\inst22|man|ans[6]~10_combout\ & \inst22|man|Add0~4_combout\)))) # (!\inst22|man|exceed~0_combout\ & ((\inst22|man|ans~16_combout\) # ((\inst22|man|ans[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|exceed~0_combout\,
	datab => \inst22|man|ans~16_combout\,
	datac => \inst22|man|ans[6]~10_combout\,
	datad => \inst22|man|Add0~4_combout\,
	combout => \inst22|man|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y28_N16
\inst22|man|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux6~1_combout\ = (\inst22|man|ans[6]~10_combout\ & ((\inst22|man|Mux6~0_combout\ & (\inst22|mw|X\(2))) # (!\inst22|man|Mux6~0_combout\ & ((\inst22|mw|X\(0)))))) # (!\inst22|man|ans[6]~10_combout\ & (((\inst22|man|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(2),
	datab => \inst22|man|ans[6]~10_combout\,
	datac => \inst22|man|Mux6~0_combout\,
	datad => \inst22|mw|X\(0),
	combout => \inst22|man|Mux6~1_combout\);

-- Location: FF_X33_Y28_N7
\inst22|man|ans[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans[1]~1_combout\,
	asdata => \inst22|man|Mux6~1_combout\,
	sclr => \inst22|man|ans[6]~12_combout\,
	sload => \inst22|man|ans[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(1));

-- Location: LCCOMB_X33_Y27_N14
\inst21|rf|R0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R0~1_combout\ = (\wr~input_o\ & (((\inst22|man|ans\(1))))) # (!\wr~input_o\ & ((\rd~input_o\ & (\inst|out\(1))) # (!\rd~input_o\ & ((\inst22|man|ans\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \inst|out\(1),
	datac => \rd~input_o\,
	datad => \inst22|man|ans\(1),
	combout => \inst21|rf|R0~1_combout\);

-- Location: FF_X33_Y27_N17
\inst21|rf|R1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~1_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(1));

-- Location: FF_X34_Y27_N17
\inst21|rf|R2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R0~1_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(1));

-- Location: FF_X33_Y27_N15
\inst21|rf|R0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R0~1_combout\,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(1));

-- Location: LCCOMB_X34_Y27_N16
\inst18|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector6~0_combout\ = (\inst18|opt1[3]~1_combout\ & ((\inst18|opt1[3]~0_combout\) # ((\inst21|rf|R0\(1))))) # (!\inst18|opt1[3]~1_combout\ & (!\inst18|opt1[3]~0_combout\ & (\inst21|rf|R2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt1[3]~1_combout\,
	datab => \inst18|opt1[3]~0_combout\,
	datac => \inst21|rf|R2\(1),
	datad => \inst21|rf|R0\(1),
	combout => \inst18|Selector6~0_combout\);

-- Location: LCCOMB_X33_Y27_N16
\inst18|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector6~1_combout\ = (\inst18|opt1[3]~0_combout\ & ((\inst18|Selector6~0_combout\ & (\inst21|pf|PC\(1))) # (!\inst18|Selector6~0_combout\ & ((\inst21|rf|R1\(1)))))) # (!\inst18|opt1[3]~0_combout\ & (((\inst18|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(1),
	datab => \inst18|opt1[3]~0_combout\,
	datac => \inst21|rf|R1\(1),
	datad => \inst18|Selector6~0_combout\,
	combout => \inst18|Selector6~1_combout\);

-- Location: LCCOMB_X32_Y27_N28
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

-- Location: FF_X32_Y27_N29
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
	ena => \inst18|opt1[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(1));

-- Location: FF_X32_Y28_N29
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

-- Location: LCCOMB_X32_Y26_N14
\inst22|man|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux7~0_combout\ = (\S[2]~input_o\ & ((\inst22|mw|X\(1)))) # (!\S[2]~input_o\ & (\inst22|mw|X\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(0),
	datab => \inst22|mw|X\(1),
	datac => \S[2]~input_o\,
	combout => \inst22|man|Mux7~0_combout\);

-- Location: LCCOMB_X32_Y26_N18
\inst22|man|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux7~2_combout\ = (\S[2]~input_o\ & (((\inst22|man|Add0~2_combout\ & !\S[0]~input_o\)))) # (!\S[2]~input_o\ & (\inst22|mw|Y\(0) & ((\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(0),
	datab => \inst22|man|Add0~2_combout\,
	datac => \S[2]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst22|man|Mux7~2_combout\);

-- Location: LCCOMB_X32_Y26_N0
\inst22|man|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux7~3_combout\ = (\S[1]~input_o\ & ((\inst22|man|Mux7~1_combout\ & ((\inst22|man|Mux7~0_combout\) # (!\inst22|man|Mux7~2_combout\))) # (!\inst22|man|Mux7~1_combout\ & (\inst22|man|Mux7~0_combout\ $ (\inst22|man|Mux7~2_combout\))))) # 
-- (!\S[1]~input_o\ & (\inst22|man|Mux7~2_combout\ & ((\inst22|man|Mux7~1_combout\) # (\inst22|man|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|Mux7~1_combout\,
	datab => \inst22|man|Mux7~0_combout\,
	datac => \S[1]~input_o\,
	datad => \inst22|man|Mux7~2_combout\,
	combout => \inst22|man|Mux7~3_combout\);

-- Location: FF_X32_Y26_N1
\inst22|man|ans[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(0));

-- Location: LCCOMB_X33_Y26_N24
\inst21|pf|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux7~0_combout\ = (\M[0]~input_o\ & (\inst22|man|ans\(0))) # (!\M[0]~input_o\ & ((\inst|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datac => \inst22|man|ans\(0),
	datad => \inst|out\(0),
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

-- Location: LCCOMB_X33_Y31_N0
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

-- Location: LCCOMB_X34_Y31_N26
\inst21|cs|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~9_combout\ = (\inst21|cs|second_counter\(7) & (\inst21|cs|second_counter\(10) & (\inst21|cs|second_counter\(9) & \inst21|cs|second_counter\(5))))

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
	combout => \inst21|cs|Equal0~9_combout\);

-- Location: LCCOMB_X33_Y30_N0
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

-- Location: LCCOMB_X33_Y30_N2
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

-- Location: FF_X33_Y30_N3
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

-- Location: LCCOMB_X33_Y30_N4
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

-- Location: FF_X33_Y30_N5
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

-- Location: LCCOMB_X33_Y30_N6
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

-- Location: FF_X33_Y30_N7
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

-- Location: LCCOMB_X33_Y30_N8
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

-- Location: FF_X33_Y30_N9
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

-- Location: LCCOMB_X33_Y30_N10
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

-- Location: FF_X33_Y30_N11
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

-- Location: LCCOMB_X33_Y30_N12
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

-- Location: FF_X33_Y30_N13
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

-- Location: LCCOMB_X33_Y30_N14
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

-- Location: FF_X33_Y30_N15
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

-- Location: LCCOMB_X33_Y30_N16
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

-- Location: FF_X33_Y30_N17
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

-- Location: LCCOMB_X33_Y30_N18
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

-- Location: FF_X33_Y30_N19
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

-- Location: LCCOMB_X33_Y30_N20
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

-- Location: FF_X33_Y30_N21
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

-- Location: LCCOMB_X33_Y30_N22
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

-- Location: FF_X33_Y30_N23
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

-- Location: LCCOMB_X33_Y30_N24
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

-- Location: FF_X33_Y30_N25
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

-- Location: LCCOMB_X33_Y30_N26
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

-- Location: FF_X33_Y30_N27
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

-- Location: LCCOMB_X33_Y30_N28
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

-- Location: FF_X33_Y30_N29
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

-- Location: LCCOMB_X33_Y30_N30
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

-- Location: FF_X33_Y30_N31
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

-- Location: LCCOMB_X34_Y30_N22
\inst21|cs|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~7_combout\ = (!\inst21|cs|second_counter\(31) & !\inst21|cs|second_counter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(31),
	datad => \inst21|cs|second_counter\(30),
	combout => \inst21|cs|Equal0~7_combout\);

-- Location: LCCOMB_X34_Y30_N2
\inst21|cs|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~5_combout\ = (!\inst21|cs|second_counter\(23) & (!\inst21|cs|second_counter\(25) & (!\inst21|cs|second_counter\(24) & !\inst21|cs|second_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(23),
	datab => \inst21|cs|second_counter\(25),
	datac => \inst21|cs|second_counter\(24),
	datad => \inst21|cs|second_counter\(22),
	combout => \inst21|cs|Equal0~5_combout\);

-- Location: LCCOMB_X34_Y30_N4
\inst21|cs|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~6_combout\ = (!\inst21|cs|second_counter\(28) & (!\inst21|cs|second_counter\(27) & (!\inst21|cs|second_counter\(29) & !\inst21|cs|second_counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(28),
	datab => \inst21|cs|second_counter\(27),
	datac => \inst21|cs|second_counter\(29),
	datad => \inst21|cs|second_counter\(26),
	combout => \inst21|cs|Equal0~6_combout\);

-- Location: LCCOMB_X34_Y30_N26
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

-- Location: LCCOMB_X34_Y30_N8
\inst21|cs|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~2_combout\ = (!\inst21|cs|second_counter\(17) & (!\inst21|cs|second_counter\(13) & (!\inst21|cs|second_counter\(12) & !\inst21|cs|second_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(17),
	datab => \inst21|cs|second_counter\(13),
	datac => \inst21|cs|second_counter\(12),
	datad => \inst21|cs|second_counter\(14),
	combout => \inst21|cs|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y31_N12
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

-- Location: LCCOMB_X34_Y31_N4
\inst21|cs|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~0_combout\ = (!\inst21|cs|second_counter\(1) & (!\inst21|cs|second_counter\(3) & (!\inst21|cs|second_counter\(2) & !\inst21|cs|second_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(1),
	datab => \inst21|cs|second_counter\(3),
	datac => \inst21|cs|second_counter\(2),
	datad => \inst21|cs|second_counter\(4),
	combout => \inst21|cs|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y30_N20
\inst21|cs|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~4_combout\ = (\inst21|cs|Equal0~3_combout\ & (\inst21|cs|Equal0~2_combout\ & (\inst21|cs|Equal0~1_combout\ & \inst21|cs|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|Equal0~3_combout\,
	datab => \inst21|cs|Equal0~2_combout\,
	datac => \inst21|cs|Equal0~1_combout\,
	datad => \inst21|cs|Equal0~0_combout\,
	combout => \inst21|cs|Equal0~4_combout\);

-- Location: LCCOMB_X34_Y30_N0
\inst21|cs|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~8_combout\ = (\inst21|cs|Equal0~7_combout\ & (\inst21|cs|Equal0~5_combout\ & (\inst21|cs|Equal0~6_combout\ & \inst21|cs|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|Equal0~7_combout\,
	datab => \inst21|cs|Equal0~5_combout\,
	datac => \inst21|cs|Equal0~6_combout\,
	datad => \inst21|cs|Equal0~4_combout\,
	combout => \inst21|cs|Equal0~8_combout\);

-- Location: LCCOMB_X34_Y31_N28
\inst21|cs|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Equal0~10_combout\ = (\inst21|cs|second_counter\(16) & (\inst21|cs|second_counter\(15) & (\inst21|cs|Equal0~9_combout\ & \inst21|cs|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(16),
	datab => \inst21|cs|second_counter\(15),
	datac => \inst21|cs|Equal0~9_combout\,
	datad => \inst21|cs|Equal0~8_combout\,
	combout => \inst21|cs|Equal0~10_combout\);

-- Location: LCCOMB_X34_Y31_N6
\inst21|cs|second_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~6_combout\ = (\inst21|cs|Add0~0_combout\ & !\inst21|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|cs|Add0~0_combout\,
	datad => \inst21|cs|Equal0~10_combout\,
	combout => \inst21|cs|second_counter~6_combout\);

-- Location: FF_X34_Y31_N7
\inst21|cs|second_counter[0]\ : dffeas
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
	q => \inst21|cs|second_counter\(0));

-- Location: LCCOMB_X33_Y31_N2
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

-- Location: FF_X33_Y31_N3
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

-- Location: LCCOMB_X33_Y31_N4
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

-- Location: FF_X33_Y31_N5
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

-- Location: LCCOMB_X33_Y31_N6
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

-- Location: FF_X33_Y31_N7
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

-- Location: LCCOMB_X33_Y31_N8
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

-- Location: FF_X33_Y31_N9
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

-- Location: LCCOMB_X33_Y31_N10
\inst21|cs|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~10_combout\ = (\inst21|cs|second_counter\(5) & (!\inst21|cs|Add0~9\)) # (!\inst21|cs|second_counter\(5) & ((\inst21|cs|Add0~9\) # (GND)))
-- \inst21|cs|Add0~11\ = CARRY((!\inst21|cs|Add0~9\) # (!\inst21|cs|second_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(5),
	datad => VCC,
	cin => \inst21|cs|Add0~9\,
	combout => \inst21|cs|Add0~10_combout\,
	cout => \inst21|cs|Add0~11\);

-- Location: LCCOMB_X34_Y31_N24
\inst21|cs|second_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~0_combout\ = (\inst21|cs|Add0~10_combout\ & !\inst21|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|Add0~10_combout\,
	datad => \inst21|cs|Equal0~10_combout\,
	combout => \inst21|cs|second_counter~0_combout\);

-- Location: FF_X34_Y31_N25
\inst21|cs|second_counter[5]\ : dffeas
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
	q => \inst21|cs|second_counter\(5));

-- Location: LCCOMB_X33_Y31_N12
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

-- Location: FF_X33_Y31_N13
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

-- Location: LCCOMB_X33_Y31_N14
\inst21|cs|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~14_combout\ = (\inst21|cs|second_counter\(7) & (!\inst21|cs|Add0~13\)) # (!\inst21|cs|second_counter\(7) & ((\inst21|cs|Add0~13\) # (GND)))
-- \inst21|cs|Add0~15\ = CARRY((!\inst21|cs|Add0~13\) # (!\inst21|cs|second_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(7),
	datad => VCC,
	cin => \inst21|cs|Add0~13\,
	combout => \inst21|cs|Add0~14_combout\,
	cout => \inst21|cs|Add0~15\);

-- Location: LCCOMB_X34_Y31_N22
\inst21|cs|second_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~1_combout\ = (\inst21|cs|Add0~14_combout\ & !\inst21|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|Add0~14_combout\,
	datad => \inst21|cs|Equal0~10_combout\,
	combout => \inst21|cs|second_counter~1_combout\);

-- Location: FF_X34_Y31_N23
\inst21|cs|second_counter[7]\ : dffeas
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
	q => \inst21|cs|second_counter\(7));

-- Location: LCCOMB_X33_Y31_N16
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

-- Location: FF_X33_Y31_N17
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

-- Location: LCCOMB_X33_Y31_N18
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

-- Location: LCCOMB_X34_Y31_N0
\inst21|cs|second_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~2_combout\ = (\inst21|cs|Add0~18_combout\ & !\inst21|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|Add0~18_combout\,
	datad => \inst21|cs|Equal0~10_combout\,
	combout => \inst21|cs|second_counter~2_combout\);

-- Location: FF_X34_Y31_N1
\inst21|cs|second_counter[9]\ : dffeas
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
	q => \inst21|cs|second_counter\(9));

-- Location: LCCOMB_X33_Y31_N20
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

-- Location: LCCOMB_X34_Y31_N18
\inst21|cs|second_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~3_combout\ = (\inst21|cs|Add0~20_combout\ & !\inst21|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|Add0~20_combout\,
	datad => \inst21|cs|Equal0~10_combout\,
	combout => \inst21|cs|second_counter~3_combout\);

-- Location: FF_X34_Y31_N19
\inst21|cs|second_counter[10]\ : dffeas
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
	q => \inst21|cs|second_counter\(10));

-- Location: LCCOMB_X33_Y31_N22
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

-- Location: FF_X33_Y31_N23
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

-- Location: LCCOMB_X33_Y31_N24
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

-- Location: FF_X33_Y31_N25
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

-- Location: LCCOMB_X33_Y31_N26
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

-- Location: FF_X33_Y31_N27
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

-- Location: LCCOMB_X33_Y31_N28
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

-- Location: FF_X33_Y31_N29
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

-- Location: LCCOMB_X33_Y31_N30
\inst21|cs|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|Add0~30_combout\ = (\inst21|cs|second_counter\(15) & (!\inst21|cs|Add0~29\)) # (!\inst21|cs|second_counter\(15) & ((\inst21|cs|Add0~29\) # (GND)))
-- \inst21|cs|Add0~31\ = CARRY((!\inst21|cs|Add0~29\) # (!\inst21|cs|second_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(15),
	datad => VCC,
	cin => \inst21|cs|Add0~29\,
	combout => \inst21|cs|Add0~30_combout\,
	cout => \inst21|cs|Add0~31\);

-- Location: LCCOMB_X34_Y31_N2
\inst21|cs|second_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~4_combout\ = (\inst21|cs|Add0~30_combout\ & !\inst21|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|cs|Add0~30_combout\,
	datad => \inst21|cs|Equal0~10_combout\,
	combout => \inst21|cs|second_counter~4_combout\);

-- Location: FF_X34_Y31_N3
\inst21|cs|second_counter[15]\ : dffeas
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
	q => \inst21|cs|second_counter\(15));

-- Location: LCCOMB_X34_Y31_N20
\inst21|cs|second_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|cs|second_counter~5_combout\ = (\inst21|cs|Add0~32_combout\ & !\inst21|cs|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|cs|Add0~32_combout\,
	datad => \inst21|cs|Equal0~10_combout\,
	combout => \inst21|cs|second_counter~5_combout\);

-- Location: FF_X34_Y31_N21
\inst21|cs|second_counter[16]\ : dffeas
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
	q => \inst21|cs|second_counter\(16));

-- Location: LCCOMB_X34_Y31_N30
\inst21|pf|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|WideNor0~1_combout\ = (\inst21|cs|second_counter\(16)) # (\inst21|cs|second_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|cs|second_counter\(16),
	datad => \inst21|cs|second_counter\(15),
	combout => \inst21|pf|WideNor0~1_combout\);

-- Location: LCCOMB_X34_Y31_N8
\inst21|pf|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|WideNor0~0_combout\ = (\inst21|cs|second_counter\(7)) # ((\inst21|cs|second_counter\(10)) # ((\inst21|cs|second_counter\(9)) # (\inst21|cs|second_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|cs|second_counter\(7),
	datab => \inst21|cs|second_counter\(10),
	datac => \inst21|cs|second_counter\(9),
	datad => \inst21|cs|second_counter\(5),
	combout => \inst21|pf|WideNor0~0_combout\);

-- Location: LCCOMB_X34_Y26_N6
\inst21|pf|PC[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[0]~10_combout\ = (\M[1]~input_o\) # ((!\inst21|pf|WideNor0~1_combout\ & (!\inst21|pf|WideNor0~0_combout\ & \inst21|cs|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|WideNor0~1_combout\,
	datab => \inst21|pf|WideNor0~0_combout\,
	datac => \M[1]~input_o\,
	datad => \inst21|cs|Equal0~8_combout\,
	combout => \inst21|pf|PC[0]~10_combout\);

-- Location: FF_X34_Y26_N9
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
	ena => \inst21|pf|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(0));

-- Location: LCCOMB_X34_Y26_N10
\inst21|pf|PC[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[1]~11_combout\ = (\inst21|pf|PC\(1) & ((\M[0]~input_o\ & (\inst21|pf|PC[0]~9\ & VCC)) # (!\M[0]~input_o\ & (!\inst21|pf|PC[0]~9\)))) # (!\inst21|pf|PC\(1) & ((\M[0]~input_o\ & (!\inst21|pf|PC[0]~9\)) # (!\M[0]~input_o\ & 
-- ((\inst21|pf|PC[0]~9\) # (GND)))))
-- \inst21|pf|PC[1]~12\ = CARRY((\inst21|pf|PC\(1) & (!\M[0]~input_o\ & !\inst21|pf|PC[0]~9\)) # (!\inst21|pf|PC\(1) & ((!\inst21|pf|PC[0]~9\) # (!\M[0]~input_o\))))

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
	combout => \inst21|pf|PC[1]~11_combout\,
	cout => \inst21|pf|PC[1]~12\);

-- Location: LCCOMB_X33_Y26_N6
\inst21|pf|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux6~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(1)))) # (!\M[0]~input_o\ & (\inst|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst|out\(1),
	datad => \inst22|man|ans\(1),
	combout => \inst21|pf|Mux6~0_combout\);

-- Location: FF_X34_Y26_N11
\inst21|pf|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[1]~11_combout\,
	asdata => \inst21|pf|Mux6~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(1));

-- Location: LCCOMB_X34_Y26_N12
\inst21|pf|PC[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[2]~13_combout\ = ((\inst21|pf|PC\(2) $ (\M[0]~input_o\ $ (!\inst21|pf|PC[1]~12\)))) # (GND)
-- \inst21|pf|PC[2]~14\ = CARRY((\inst21|pf|PC\(2) & ((\M[0]~input_o\) # (!\inst21|pf|PC[1]~12\))) # (!\inst21|pf|PC\(2) & (\M[0]~input_o\ & !\inst21|pf|PC[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(2),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst21|pf|PC[1]~12\,
	combout => \inst21|pf|PC[2]~13_combout\,
	cout => \inst21|pf|PC[2]~14\);

-- Location: LCCOMB_X33_Y26_N16
\inst21|pf|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux5~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(2)))) # (!\M[0]~input_o\ & (\inst|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datac => \inst|out\(2),
	datad => \inst22|man|ans\(2),
	combout => \inst21|pf|Mux5~0_combout\);

-- Location: FF_X34_Y26_N13
\inst21|pf|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[2]~13_combout\,
	asdata => \inst21|pf|Mux5~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(2));

-- Location: LCCOMB_X34_Y26_N14
\inst21|pf|PC[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[3]~15_combout\ = (\inst21|pf|PC\(3) & ((\M[0]~input_o\ & (\inst21|pf|PC[2]~14\ & VCC)) # (!\M[0]~input_o\ & (!\inst21|pf|PC[2]~14\)))) # (!\inst21|pf|PC\(3) & ((\M[0]~input_o\ & (!\inst21|pf|PC[2]~14\)) # (!\M[0]~input_o\ & 
-- ((\inst21|pf|PC[2]~14\) # (GND)))))
-- \inst21|pf|PC[3]~16\ = CARRY((\inst21|pf|PC\(3) & (!\M[0]~input_o\ & !\inst21|pf|PC[2]~14\)) # (!\inst21|pf|PC\(3) & ((!\inst21|pf|PC[2]~14\) # (!\M[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(3),
	datab => \M[0]~input_o\,
	datad => VCC,
	cin => \inst21|pf|PC[2]~14\,
	combout => \inst21|pf|PC[3]~15_combout\,
	cout => \inst21|pf|PC[3]~16\);

-- Location: LCCOMB_X34_Y26_N26
\inst21|pf|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux4~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(3)))) # (!\M[0]~input_o\ & (\inst|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|out\(3),
	datac => \M[0]~input_o\,
	datad => \inst22|man|ans\(3),
	combout => \inst21|pf|Mux4~0_combout\);

-- Location: FF_X34_Y26_N15
\inst21|pf|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[3]~15_combout\,
	asdata => \inst21|pf|Mux4~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(3));

-- Location: LCCOMB_X34_Y26_N16
\inst21|pf|PC[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[4]~17_combout\ = ((\M[0]~input_o\ $ (\inst21|pf|PC\(4) $ (!\inst21|pf|PC[3]~16\)))) # (GND)
-- \inst21|pf|PC[4]~18\ = CARRY((\M[0]~input_o\ & ((\inst21|pf|PC\(4)) # (!\inst21|pf|PC[3]~16\))) # (!\M[0]~input_o\ & (\inst21|pf|PC\(4) & !\inst21|pf|PC[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst21|pf|PC\(4),
	datad => VCC,
	cin => \inst21|pf|PC[3]~16\,
	combout => \inst21|pf|PC[4]~17_combout\,
	cout => \inst21|pf|PC[4]~18\);

-- Location: LCCOMB_X34_Y26_N4
\inst21|pf|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux3~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(4)))) # (!\M[0]~input_o\ & (\inst|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M[0]~input_o\,
	datac => \inst|out\(4),
	datad => \inst22|man|ans\(4),
	combout => \inst21|pf|Mux3~0_combout\);

-- Location: FF_X34_Y26_N17
\inst21|pf|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[4]~17_combout\,
	asdata => \inst21|pf|Mux3~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(4));

-- Location: LCCOMB_X34_Y26_N18
\inst21|pf|PC[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[5]~19_combout\ = (\M[0]~input_o\ & ((\inst21|pf|PC\(5) & (\inst21|pf|PC[4]~18\ & VCC)) # (!\inst21|pf|PC\(5) & (!\inst21|pf|PC[4]~18\)))) # (!\M[0]~input_o\ & ((\inst21|pf|PC\(5) & (!\inst21|pf|PC[4]~18\)) # (!\inst21|pf|PC\(5) & 
-- ((\inst21|pf|PC[4]~18\) # (GND)))))
-- \inst21|pf|PC[5]~20\ = CARRY((\M[0]~input_o\ & (!\inst21|pf|PC\(5) & !\inst21|pf|PC[4]~18\)) # (!\M[0]~input_o\ & ((!\inst21|pf|PC[4]~18\) # (!\inst21|pf|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst21|pf|PC\(5),
	datad => VCC,
	cin => \inst21|pf|PC[4]~18\,
	combout => \inst21|pf|PC[5]~19_combout\,
	cout => \inst21|pf|PC[5]~20\);

-- Location: LCCOMB_X34_Y26_N30
\inst21|pf|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux2~0_combout\ = (\M[0]~input_o\ & ((\inst22|man|ans\(5)))) # (!\M[0]~input_o\ & (\inst|out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|out\(5),
	datac => \M[0]~input_o\,
	datad => \inst22|man|ans\(5),
	combout => \inst21|pf|Mux2~0_combout\);

-- Location: FF_X34_Y26_N19
\inst21|pf|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[5]~19_combout\,
	asdata => \inst21|pf|Mux2~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(5));

-- Location: LCCOMB_X34_Y26_N20
\inst21|pf|PC[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[6]~21_combout\ = ((\M[0]~input_o\ $ (\inst21|pf|PC\(6) $ (!\inst21|pf|PC[5]~20\)))) # (GND)
-- \inst21|pf|PC[6]~22\ = CARRY((\M[0]~input_o\ & ((\inst21|pf|PC\(6)) # (!\inst21|pf|PC[5]~20\))) # (!\M[0]~input_o\ & (\inst21|pf|PC\(6) & !\inst21|pf|PC[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst21|pf|PC\(6),
	datad => VCC,
	cin => \inst21|pf|PC[5]~20\,
	combout => \inst21|pf|PC[6]~21_combout\,
	cout => \inst21|pf|PC[6]~22\);

-- Location: LCCOMB_X34_Y26_N0
\inst21|pf|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux1~0_combout\ = (\M[0]~input_o\ & (\inst22|man|ans\(6))) # (!\M[0]~input_o\ & ((\inst|out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M[0]~input_o\,
	datac => \inst22|man|ans\(6),
	datad => \inst|out\(6),
	combout => \inst21|pf|Mux1~0_combout\);

-- Location: FF_X34_Y26_N21
\inst21|pf|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[6]~21_combout\,
	asdata => \inst21|pf|Mux1~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(6));

-- Location: LCCOMB_X34_Y26_N22
\inst21|pf|PC[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|PC[7]~23_combout\ = \inst21|pf|PC\(7) $ (\M[0]~input_o\ $ (\inst21|pf|PC[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(7),
	datab => \M[0]~input_o\,
	cin => \inst21|pf|PC[6]~22\,
	combout => \inst21|pf|PC[7]~23_combout\);

-- Location: LCCOMB_X33_Y26_N2
\inst|out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|out~8_combout\ = (\inst|out\(3) & \key_clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|out\(3),
	datad => \key_clr~input_o\,
	combout => \inst|out~8_combout\);

-- Location: FF_X33_Y26_N3
\inst|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|out~8_combout\,
	ena => \inst|out[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out\(7));

-- Location: LCCOMB_X33_Y26_N8
\inst21|pf|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|pf|Mux0~0_combout\ = (\M[0]~input_o\ & (\inst22|man|ans\(7))) # (!\M[0]~input_o\ & ((\inst|out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M[0]~input_o\,
	datab => \inst22|man|ans\(7),
	datad => \inst|out\(7),
	combout => \inst21|pf|Mux0~0_combout\);

-- Location: FF_X34_Y26_N23
\inst21|pf|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|pf|PC[7]~23_combout\,
	asdata => \inst21|pf|Mux0~0_combout\,
	clrn => \pc_clr~input_o\,
	sload => \M[1]~input_o\,
	ena => \inst21|pf|PC[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|pf|PC\(7));

-- Location: LCCOMB_X34_Y27_N30
\inst21|rf|R1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R1~3_combout\ = (\wr~input_o\ & (((\inst22|man|ans\(7))))) # (!\wr~input_o\ & ((\rd~input_o\ & (\inst|out\(7))) # (!\rd~input_o\ & ((\inst22|man|ans\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \rd~input_o\,
	datac => \inst|out\(7),
	datad => \inst22|man|ans\(7),
	combout => \inst21|rf|R1~3_combout\);

-- Location: FF_X33_Y27_N3
\inst21|rf|R1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R1~3_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R1\(7));

-- Location: FF_X33_Y27_N21
\inst21|rf|R0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \inst21|rf|R1~3_combout\,
	sload => VCC,
	ena => \inst21|rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R0\(7));

-- Location: FF_X34_Y27_N31
\inst21|rf|R2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R1~3_combout\,
	ena => \inst21|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R2\(7));

-- Location: LCCOMB_X33_Y27_N20
\inst18|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector8~0_combout\ = (\inst18|opt1[3]~1_combout\ & ((\inst18|opt1[3]~0_combout\) # ((\inst21|rf|R0\(7))))) # (!\inst18|opt1[3]~1_combout\ & (!\inst18|opt1[3]~0_combout\ & ((\inst21|rf|R2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt1[3]~1_combout\,
	datab => \inst18|opt1[3]~0_combout\,
	datac => \inst21|rf|R0\(7),
	datad => \inst21|rf|R2\(7),
	combout => \inst18|Selector8~0_combout\);

-- Location: LCCOMB_X33_Y27_N2
\inst18|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst18|Selector8~1_combout\ = (\inst18|opt1[3]~0_combout\ & ((\inst18|Selector8~0_combout\ & (\inst21|pf|PC\(7))) # (!\inst18|Selector8~0_combout\ & ((\inst21|rf|R1\(7)))))) # (!\inst18|opt1[3]~0_combout\ & (((\inst18|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|opt1[3]~0_combout\,
	datab => \inst21|pf|PC\(7),
	datac => \inst21|rf|R1\(7),
	datad => \inst18|Selector8~0_combout\,
	combout => \inst18|Selector8~1_combout\);

-- Location: LCCOMB_X32_Y27_N30
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

-- Location: LCCOMB_X35_Y27_N10
\inst21|rf|R3[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21|rf|R3[7]~feeder_combout\ = \inst21|rf|R1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|rf|R1~3_combout\,
	combout => \inst21|rf|R3[7]~feeder_combout\);

-- Location: FF_X35_Y27_N11
\inst21|rf|R3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst21|rf|R3[7]~feeder_combout\,
	ena => \inst21|rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|rf|R3\(7));

-- Location: FF_X32_Y27_N31
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
	ena => \inst18|opt1[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt1\(7));

-- Location: LCCOMB_X32_Y26_N26
\inst22|mw|X[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|mw|X[7]~feeder_combout\ = \inst18|opt1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|opt1\(7),
	combout => \inst22|mw|X[7]~feeder_combout\);

-- Location: FF_X32_Y26_N27
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

-- Location: LCCOMB_X32_Y27_N12
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

-- Location: FF_X32_Y27_N13
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
	ena => \inst18|opt2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|opt2\(7));

-- Location: LCCOMB_X32_Y26_N20
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

-- Location: FF_X32_Y26_N21
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

-- Location: LCCOMB_X32_Y26_N10
\inst22|man|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux0~1_combout\ = (!\S[2]~input_o\ & (\S[1]~input_o\ & ((\inst22|mw|X\(7)) # (\inst22|mw|Y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(7),
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \inst22|mw|Y\(7),
	combout => \inst22|man|Mux0~1_combout\);

-- Location: LCCOMB_X32_Y26_N28
\inst22|man|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux0~3_combout\ = (\S[1]~input_o\ & (\inst22|mw|X\(7) $ (((!\S[2]~input_o\ & \inst22|mw|Y\(7)))))) # (!\S[1]~input_o\ & ((\S[2]~input_o\) # ((\inst22|mw|X\(7) & \inst22|mw|Y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(7),
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \inst22|mw|Y\(7),
	combout => \inst22|man|Mux0~3_combout\);

-- Location: LCCOMB_X32_Y26_N2
\inst22|man|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux0~4_combout\ = (\inst22|man|Mux0~3_combout\ & ((\inst22|mw|X\(6)) # ((\S[1]~input_o\) # (!\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(6),
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \inst22|man|Mux0~3_combout\,
	combout => \inst22|man|Mux0~4_combout\);

-- Location: LCCOMB_X32_Y28_N26
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

-- Location: LCCOMB_X32_Y26_N4
\inst22|man|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux0~0_combout\ = (\S[2]~input_o\ & (!\S[1]~input_o\ & \inst22|man|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \inst22|man|Add0~16_combout\,
	combout => \inst22|man|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y26_N22
\inst22|man|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|Mux0~2_combout\ = (\S[0]~input_o\ & (((\inst22|man|Mux0~4_combout\)))) # (!\S[0]~input_o\ & ((\inst22|man|Mux0~1_combout\) # ((\inst22|man|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|Mux0~1_combout\,
	datab => \inst22|man|Mux0~4_combout\,
	datac => \inst22|man|Mux0~0_combout\,
	datad => \S[0]~input_o\,
	combout => \inst22|man|Mux0~2_combout\);

-- Location: FF_X32_Y26_N23
\inst22|man|ans[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(7));

-- Location: LCCOMB_X32_Y28_N28
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

-- Location: LCCOMB_X33_Y28_N10
\inst22|man|ans~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|ans~29_combout\ = (\S[2]~input_o\ & (\inst22|man|Add0~18_combout\ & (!\S[1]~input_o\ & !\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \inst22|man|Add0~18_combout\,
	datac => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst22|man|ans~29_combout\);

-- Location: FF_X33_Y28_N11
\inst22|man|ans[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|ans~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|ans\(8));

-- Location: LCCOMB_X33_Y28_N20
\inst22|man|exceed~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22|man|exceed~1_combout\ = (!\S[0]~input_o\ & (\inst22|man|exceed~0_combout\ & (\inst22|man|ans\(7) $ (\inst22|man|ans\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|man|ans\(7),
	datab => \S[0]~input_o\,
	datac => \inst22|man|exceed~0_combout\,
	datad => \inst22|man|ans\(8),
	combout => \inst22|man|exceed~1_combout\);

-- Location: FF_X33_Y28_N21
\inst22|man|exceed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|man|exceed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|man|exceed~q\);

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

-- Location: LCCOMB_X35_Y24_N24
\inst20|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux1~0_combout\ = (\switch_buttons[0]~input_o\ & !\switch_buttons[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch_buttons[0]~input_o\,
	datad => \switch_buttons[1]~input_o\,
	combout => \inst20|Mux1~0_combout\);

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

-- Location: LCCOMB_X35_Y24_N0
\inst20|status[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|status[1]~0_combout\ = ((!\switch_buttons[1]~input_o\) # (!\switch_buttons[2]~input_o\)) # (!\switch_buttons[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch_buttons[0]~input_o\,
	datac => \switch_buttons[2]~input_o\,
	datad => \switch_buttons[1]~input_o\,
	combout => \inst20|status[1]~0_combout\);

-- Location: FF_X35_Y24_N25
\inst20|status[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux1~0_combout\,
	ena => \inst20|status[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|status\(0));

-- Location: LCCOMB_X35_Y24_N10
\inst20|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux0~0_combout\ = (\switch_buttons[0]~input_o\ & \switch_buttons[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch_buttons[0]~input_o\,
	datad => \switch_buttons[1]~input_o\,
	combout => \inst20|Mux0~0_combout\);

-- Location: FF_X35_Y24_N11
\inst20|status[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux0~0_combout\,
	ena => \inst20|status[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|status\(1));

-- Location: LCCOMB_X35_Y28_N10
\inst20|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux12~0_combout\ = (\inst20|status\(1) & (\inst22|mw|X\(5))) # (!\inst20|status\(1) & (((!\inst20|status\(0) & \inst21|rf|R1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(5),
	datab => \inst20|status\(0),
	datac => \inst21|rf|R1\(5),
	datad => \inst20|status\(1),
	combout => \inst20|Mux12~0_combout\);

-- Location: LCCOMB_X35_Y26_N16
\inst20|N[30]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|N[30]~0_combout\ = (!\inst20|status\(1)) # (!\inst20|status\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|status\(0),
	datad => \inst20|status\(1),
	combout => \inst20|N[30]~0_combout\);

-- Location: FF_X35_Y28_N11
\inst20|N[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux12~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(21));

-- Location: LCCOMB_X34_Y27_N18
\inst20|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux20~0_combout\ = (\inst21|rf|R2\(5) & (!\inst20|status\(1) & !\inst20|status\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|rf|R2\(5),
	datac => \inst20|status\(1),
	datad => \inst20|status\(0),
	combout => \inst20|Mux20~0_combout\);

-- Location: FF_X34_Y27_N19
\inst20|N[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux20~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(13));

-- Location: LCCOMB_X35_Y26_N14
\inst1|sel[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sel[0]~2_combout\ = !\inst1|sel\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sel\(0),
	combout => \inst1|sel[0]~2_combout\);

-- Location: FF_X35_Y26_N15
\inst1|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|sel[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sel\(0));

-- Location: LCCOMB_X34_Y28_N16
\inst20|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux16~0_combout\ = (\inst20|status\(1) & (\inst22|mw|X\(1))) # (!\inst20|status\(1) & (((!\inst20|status\(0) & \inst21|rf|R1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(1),
	datab => \inst20|status\(0),
	datac => \inst20|status\(1),
	datad => \inst21|rf|R1\(1),
	combout => \inst20|Mux16~0_combout\);

-- Location: FF_X34_Y28_N17
\inst20|N[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux16~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(17));

-- Location: LCCOMB_X35_Y26_N24
\inst1|sel[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sel[1]~1_combout\ = \inst1|sel\(0) $ (\inst1|sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sel\(0),
	datac => \inst1|sel\(1),
	combout => \inst1|sel[1]~1_combout\);

-- Location: FF_X35_Y26_N25
\inst1|sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|sel[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sel\(1));

-- Location: LCCOMB_X35_Y28_N24
\inst20|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux8~0_combout\ = (\inst20|status\(1) & (\inst22|mw|Y\(1))) # (!\inst20|status\(1) & (((!\inst20|status\(0) & \inst21|rf|R0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(1),
	datab => \inst20|status\(0),
	datac => \inst21|rf|R0\(1),
	datad => \inst20|status\(1),
	combout => \inst20|Mux8~0_combout\);

-- Location: FF_X35_Y28_N25
\inst20|N[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux8~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(25));

-- Location: LCCOMB_X35_Y28_N18
\inst1|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~2_combout\ = (\inst1|sel\(1) & ((\inst20|N\(17)) # ((\inst1|sel\(0))))) # (!\inst1|sel\(1) & (((!\inst1|sel\(0) & \inst20|N\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(17),
	datab => \inst1|sel\(1),
	datac => \inst1|sel\(0),
	datad => \inst20|N\(25),
	combout => \inst1|Mux2~2_combout\);

-- Location: LCCOMB_X35_Y28_N8
\inst1|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~3_combout\ = (\inst1|sel\(0) & ((\inst1|Mux2~2_combout\ & ((\inst20|N\(13)))) # (!\inst1|Mux2~2_combout\ & (\inst20|N\(21))))) # (!\inst1|sel\(0) & (((\inst1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(21),
	datab => \inst20|N\(13),
	datac => \inst1|sel\(0),
	datad => \inst1|Mux2~2_combout\,
	combout => \inst1|Mux2~3_combout\);

-- Location: LCCOMB_X34_Y28_N0
\inst1|sel[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sel[2]~0_combout\ = \inst1|sel\(2) $ (((\inst1|sel\(0) & \inst1|sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sel\(0),
	datac => \inst1|sel\(2),
	datad => \inst1|sel\(1),
	combout => \inst1|sel[2]~0_combout\);

-- Location: FF_X34_Y28_N1
\inst1|sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|sel[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sel\(2));

-- Location: LCCOMB_X33_Y26_N12
\inst20|Mux32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux32~0_combout\ = (\inst20|status\(0) & (\inst21|pf|PC\(1))) # (!\inst20|status\(0) & ((\inst21|rf|R3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(1),
	datab => \inst20|status\(0),
	datad => \inst21|rf|R3\(1),
	combout => \inst20|Mux32~0_combout\);

-- Location: FF_X33_Y26_N13
\inst20|N[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux32~0_combout\,
	asdata => \inst22|man|ans\(1),
	sload => \inst20|status\(1),
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(1));

-- Location: LCCOMB_X35_Y28_N22
\inst20|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux4~0_combout\ = (\inst20|status\(1) & (\inst22|mw|Y\(5))) # (!\inst20|status\(1) & (((!\inst20|status\(0) & \inst21|rf|R0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(5),
	datab => \inst20|status\(0),
	datac => \inst21|rf|R0\(5),
	datad => \inst20|status\(1),
	combout => \inst20|Mux4~0_combout\);

-- Location: FF_X35_Y28_N23
\inst20|N[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux4~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(29));

-- Location: LCCOMB_X35_Y28_N26
\inst20|Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux24~0_combout\ = (!\inst20|status\(1) & (!\inst20|status\(0) & \inst21|rf|R2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|status\(1),
	datab => \inst20|status\(0),
	datad => \inst21|rf|R2\(1),
	combout => \inst20|Mux24~0_combout\);

-- Location: FF_X35_Y28_N27
\inst20|N[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux24~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(9));

-- Location: LCCOMB_X35_Y27_N18
\inst20|Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux28~0_combout\ = (\inst20|status\(0) & ((\inst21|pf|PC\(5)))) # (!\inst20|status\(0) & (\inst21|rf|R3\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|status\(0),
	datab => \inst21|rf|R3\(5),
	datad => \inst21|pf|PC\(5),
	combout => \inst20|Mux28~0_combout\);

-- Location: FF_X35_Y27_N19
\inst20|N[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux28~0_combout\,
	asdata => \inst22|man|ans\(5),
	sload => \inst20|status\(1),
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(5));

-- Location: LCCOMB_X35_Y28_N16
\inst1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst1|sel\(1) & (((\inst1|sel\(0))))) # (!\inst1|sel\(1) & ((\inst1|sel\(0) & ((\inst20|N\(5)))) # (!\inst1|sel\(0) & (\inst20|N\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(9),
	datab => \inst1|sel\(1),
	datac => \inst1|sel\(0),
	datad => \inst20|N\(5),
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y28_N0
\inst1|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (\inst1|sel\(1) & ((\inst1|Mux2~0_combout\ & ((\inst20|N\(29)))) # (!\inst1|Mux2~0_combout\ & (\inst20|N\(1))))) # (!\inst1|sel\(1) & (((\inst1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(1),
	datab => \inst1|sel\(1),
	datac => \inst20|N\(29),
	datad => \inst1|Mux2~0_combout\,
	combout => \inst1|Mux2~1_combout\);

-- Location: LCCOMB_X35_Y29_N22
\inst1|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~4_combout\ = (\inst1|sel\(2) & ((\inst1|Mux2~1_combout\))) # (!\inst1|sel\(2) & (\inst1|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux2~3_combout\,
	datac => \inst1|sel\(2),
	datad => \inst1|Mux2~1_combout\,
	combout => \inst1|Mux2~4_combout\);

-- Location: FF_X35_Y29_N23
\inst1|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|num\(1));

-- Location: LCCOMB_X34_Y26_N28
\inst20|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux19~0_combout\ = (!\inst20|status\(0) & (!\inst20|status\(1) & \inst21|rf|R2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|status\(0),
	datac => \inst20|status\(1),
	datad => \inst21|rf|R2\(6),
	combout => \inst20|Mux19~0_combout\);

-- Location: FF_X34_Y26_N29
\inst20|N[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux19~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(14));

-- Location: LCCOMB_X34_Y26_N2
\inst20|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux7~0_combout\ = (\inst20|status\(1) & (\inst22|mw|Y\(2))) # (!\inst20|status\(1) & (((!\inst20|status\(0) & \inst21|rf|R0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(2),
	datab => \inst20|status\(1),
	datac => \inst20|status\(0),
	datad => \inst21|rf|R0\(2),
	combout => \inst20|Mux7~0_combout\);

-- Location: FF_X34_Y26_N3
\inst20|N[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux7~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(26));

-- Location: LCCOMB_X34_Y27_N20
\inst20|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux15~0_combout\ = (\inst20|status\(1) & (\inst22|mw|X\(2))) # (!\inst20|status\(1) & (((\inst21|rf|R1\(2) & !\inst20|status\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(2),
	datab => \inst21|rf|R1\(2),
	datac => \inst20|status\(1),
	datad => \inst20|status\(0),
	combout => \inst20|Mux15~0_combout\);

-- Location: FF_X34_Y27_N21
\inst20|N[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux15~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(18));

-- Location: LCCOMB_X35_Y26_N8
\inst1|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (\inst1|sel\(1) & (((\inst1|sel\(0)) # (\inst20|N\(18))))) # (!\inst1|sel\(1) & (\inst20|N\(26) & (!\inst1|sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(26),
	datab => \inst1|sel\(1),
	datac => \inst1|sel\(0),
	datad => \inst20|N\(18),
	combout => \inst1|Mux1~2_combout\);

-- Location: LCCOMB_X34_Y26_N24
\inst20|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux11~0_combout\ = (\inst20|status\(1) & (((\inst22|mw|X\(6))))) # (!\inst20|status\(1) & (!\inst20|status\(0) & ((\inst21|rf|R1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|status\(0),
	datab => \inst22|mw|X\(6),
	datac => \inst20|status\(1),
	datad => \inst21|rf|R1\(6),
	combout => \inst20|Mux11~0_combout\);

-- Location: FF_X34_Y26_N25
\inst20|N[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux11~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(22));

-- Location: LCCOMB_X35_Y26_N2
\inst1|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~3_combout\ = (\inst1|sel\(0) & ((\inst1|Mux1~2_combout\ & (\inst20|N\(14))) # (!\inst1|Mux1~2_combout\ & ((\inst20|N\(22)))))) # (!\inst1|sel\(0) & (((\inst1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(14),
	datab => \inst1|sel\(0),
	datac => \inst1|Mux1~2_combout\,
	datad => \inst20|N\(22),
	combout => \inst1|Mux1~3_combout\);

-- Location: LCCOMB_X33_Y26_N28
\inst20|Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux27~0_combout\ = (\inst20|status\(0) & (\inst21|pf|PC\(6))) # (!\inst20|status\(0) & ((\inst21|rf|R3\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(6),
	datab => \inst20|status\(0),
	datad => \inst21|rf|R3\(6),
	combout => \inst20|Mux27~0_combout\);

-- Location: FF_X33_Y26_N29
\inst20|N[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux27~0_combout\,
	asdata => \inst22|man|ans\(6),
	sload => \inst20|status\(1),
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(6));

-- Location: LCCOMB_X35_Y26_N28
\inst20|Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux23~0_combout\ = (!\inst20|status\(0) & (\inst21|rf|R2\(2) & !\inst20|status\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|status\(0),
	datac => \inst21|rf|R2\(2),
	datad => \inst20|status\(1),
	combout => \inst20|Mux23~0_combout\);

-- Location: FF_X35_Y26_N29
\inst20|N[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux23~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(10));

-- Location: LCCOMB_X35_Y26_N22
\inst1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst1|sel\(0) & ((\inst20|N\(6)) # ((\inst1|sel\(1))))) # (!\inst1|sel\(0) & (((\inst20|N\(10) & !\inst1|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(6),
	datab => \inst20|N\(10),
	datac => \inst1|sel\(0),
	datad => \inst1|sel\(1),
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y26_N20
\inst20|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux3~0_combout\ = (\inst20|status\(1) & (\inst22|mw|Y\(6))) # (!\inst20|status\(1) & (((\inst21|rf|R0\(6) & !\inst20|status\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|status\(1),
	datab => \inst22|mw|Y\(6),
	datac => \inst21|rf|R0\(6),
	datad => \inst20|status\(0),
	combout => \inst20|Mux3~0_combout\);

-- Location: FF_X35_Y26_N21
\inst20|N[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux3~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(30));

-- Location: LCCOMB_X33_Y26_N18
\inst20|Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux31~0_combout\ = (\inst20|status\(0) & (\inst21|pf|PC\(2))) # (!\inst20|status\(0) & ((\inst21|rf|R3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(2),
	datab => \inst20|status\(0),
	datad => \inst21|rf|R3\(2),
	combout => \inst20|Mux31~0_combout\);

-- Location: FF_X33_Y26_N19
\inst20|N[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux31~0_combout\,
	asdata => \inst22|man|ans\(2),
	sload => \inst20|status\(1),
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(2));

-- Location: LCCOMB_X35_Y26_N10
\inst1|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = (\inst1|Mux1~0_combout\ & ((\inst20|N\(30)) # ((!\inst1|sel\(1))))) # (!\inst1|Mux1~0_combout\ & (((\inst20|N\(2) & \inst1|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~0_combout\,
	datab => \inst20|N\(30),
	datac => \inst20|N\(2),
	datad => \inst1|sel\(1),
	combout => \inst1|Mux1~1_combout\);

-- Location: LCCOMB_X35_Y29_N20
\inst1|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~4_combout\ = (\inst1|sel\(2) & ((\inst1|Mux1~1_combout\))) # (!\inst1|sel\(2) & (\inst1|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux1~3_combout\,
	datac => \inst1|sel\(2),
	datad => \inst1|Mux1~1_combout\,
	combout => \inst1|Mux1~4_combout\);

-- Location: FF_X35_Y29_N21
\inst1|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|num\(2));

-- Location: LCCOMB_X34_Y27_N2
\inst20|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux18~0_combout\ = (\inst21|rf|R2\(7) & (!\inst20|status\(1) & !\inst20|status\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|rf|R2\(7),
	datac => \inst20|status\(1),
	datad => \inst20|status\(0),
	combout => \inst20|Mux18~0_combout\);

-- Location: FF_X34_Y27_N3
\inst20|N[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux18~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(15));

-- Location: LCCOMB_X34_Y27_N22
\inst20|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux10~0_combout\ = (\inst20|status\(1) & (\inst22|mw|X\(7))) # (!\inst20|status\(1) & (((!\inst20|status\(0) & \inst21|rf|R1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(7),
	datab => \inst20|status\(0),
	datac => \inst20|status\(1),
	datad => \inst21|rf|R1\(7),
	combout => \inst20|Mux10~0_combout\);

-- Location: FF_X34_Y27_N23
\inst20|N[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux10~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(23));

-- Location: LCCOMB_X34_Y27_N12
\inst20|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux6~0_combout\ = (\inst20|status\(1) & (\inst22|mw|Y\(3))) # (!\inst20|status\(1) & (((\inst21|rf|R0\(3) & !\inst20|status\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(3),
	datab => \inst21|rf|R0\(3),
	datac => \inst20|status\(1),
	datad => \inst20|status\(0),
	combout => \inst20|Mux6~0_combout\);

-- Location: FF_X34_Y27_N13
\inst20|N[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux6~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(27));

-- Location: LCCOMB_X34_Y28_N24
\inst20|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux14~0_combout\ = (\inst20|status\(1) & (((\inst22|mw|X\(3))))) # (!\inst20|status\(1) & (!\inst20|status\(0) & ((\inst21|rf|R1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|status\(0),
	datab => \inst22|mw|X\(3),
	datac => \inst20|status\(1),
	datad => \inst21|rf|R1\(3),
	combout => \inst20|Mux14~0_combout\);

-- Location: FF_X34_Y28_N25
\inst20|N[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux14~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(19));

-- Location: LCCOMB_X34_Y28_N10
\inst1|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~2_combout\ = (\inst1|sel\(0) & (((\inst1|sel\(1))))) # (!\inst1|sel\(0) & ((\inst1|sel\(1) & ((\inst20|N\(19)))) # (!\inst1|sel\(1) & (\inst20|N\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(27),
	datab => \inst20|N\(19),
	datac => \inst1|sel\(0),
	datad => \inst1|sel\(1),
	combout => \inst1|Mux0~2_combout\);

-- Location: LCCOMB_X34_Y28_N8
\inst1|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~3_combout\ = (\inst1|sel\(0) & ((\inst1|Mux0~2_combout\ & (\inst20|N\(15))) # (!\inst1|Mux0~2_combout\ & ((\inst20|N\(23)))))) # (!\inst1|sel\(0) & (((\inst1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(15),
	datab => \inst1|sel\(0),
	datac => \inst20|N\(23),
	datad => \inst1|Mux0~2_combout\,
	combout => \inst1|Mux0~3_combout\);

-- Location: LCCOMB_X34_Y28_N26
\inst20|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux22~0_combout\ = (!\inst20|status\(0) & (!\inst20|status\(1) & \inst21|rf|R2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|status\(0),
	datac => \inst20|status\(1),
	datad => \inst21|rf|R2\(3),
	combout => \inst20|Mux22~0_combout\);

-- Location: FF_X34_Y28_N27
\inst20|N[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux22~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(11));

-- Location: LCCOMB_X34_Y28_N20
\inst20|Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux26~0_combout\ = (\inst20|status\(0) & (\inst21|pf|PC\(7))) # (!\inst20|status\(0) & ((\inst21|rf|R3\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(7),
	datab => \inst21|rf|R3\(7),
	datad => \inst20|status\(0),
	combout => \inst20|Mux26~0_combout\);

-- Location: FF_X34_Y28_N21
\inst20|N[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux26~0_combout\,
	asdata => \inst22|man|ans\(7),
	sload => \inst20|status\(1),
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(7));

-- Location: LCCOMB_X35_Y28_N30
\inst1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|sel\(0) & (((\inst20|N\(7)) # (\inst1|sel\(1))))) # (!\inst1|sel\(0) & (\inst20|N\(11) & ((!\inst1|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(11),
	datab => \inst20|N\(7),
	datac => \inst1|sel\(0),
	datad => \inst1|sel\(1),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y28_N22
\inst20|Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux30~0_combout\ = (\inst20|status\(0) & ((\inst21|pf|PC\(3)))) # (!\inst20|status\(0) & (\inst21|rf|R3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|rf|R3\(3),
	datab => \inst21|pf|PC\(3),
	datad => \inst20|status\(0),
	combout => \inst20|Mux30~0_combout\);

-- Location: FF_X34_Y28_N23
\inst20|N[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux30~0_combout\,
	asdata => \inst22|man|ans\(3),
	sload => \inst20|status\(1),
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(3));

-- Location: LCCOMB_X34_Y28_N28
\inst20|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux2~0_combout\ = (\inst20|status\(1) & (\inst22|mw|Y\(7))) # (!\inst20|status\(1) & (((\inst21|rf|R0\(7) & !\inst20|status\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|Y\(7),
	datab => \inst20|status\(1),
	datac => \inst21|rf|R0\(7),
	datad => \inst20|status\(0),
	combout => \inst20|Mux2~0_combout\);

-- Location: FF_X34_Y28_N29
\inst20|N[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux2~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(31));

-- Location: LCCOMB_X34_Y28_N18
\inst1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|Mux0~0_combout\ & (((\inst20|N\(31))) # (!\inst1|sel\(1)))) # (!\inst1|Mux0~0_combout\ & (\inst1|sel\(1) & (\inst20|N\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~0_combout\,
	datab => \inst1|sel\(1),
	datac => \inst20|N\(3),
	datad => \inst20|N\(31),
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X34_Y28_N30
\inst1|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~4_combout\ = (\inst1|sel\(2) & ((\inst1|Mux0~1_combout\))) # (!\inst1|sel\(2) & (\inst1|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sel\(2),
	datac => \inst1|Mux0~3_combout\,
	datad => \inst1|Mux0~1_combout\,
	combout => \inst1|Mux0~4_combout\);

-- Location: FF_X34_Y28_N31
\inst1|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|num\(3));

-- Location: LCCOMB_X34_Y27_N0
\inst20|Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux21~0_combout\ = (!\inst20|status\(0) & (!\inst20|status\(1) & \inst21|rf|R2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|status\(0),
	datac => \inst20|status\(1),
	datad => \inst21|rf|R2\(4),
	combout => \inst20|Mux21~0_combout\);

-- Location: FF_X34_Y27_N1
\inst20|N[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux21~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(12));

-- Location: LCCOMB_X34_Y27_N8
\inst20|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux17~0_combout\ = (\inst20|status\(1) & (((\inst22|mw|X\(0))))) # (!\inst20|status\(1) & (\inst21|rf|R1\(0) & (!\inst20|status\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|rf|R1\(0),
	datab => \inst20|status\(0),
	datac => \inst20|status\(1),
	datad => \inst22|mw|X\(0),
	combout => \inst20|Mux17~0_combout\);

-- Location: FF_X34_Y27_N9
\inst20|N[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux17~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(16));

-- Location: LCCOMB_X34_Y27_N26
\inst20|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux13~0_combout\ = (\inst20|status\(1) & (\inst22|mw|X\(4))) # (!\inst20|status\(1) & (((!\inst20|status\(0) & \inst21|rf|R1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|mw|X\(4),
	datab => \inst20|status\(0),
	datac => \inst20|status\(1),
	datad => \inst21|rf|R1\(4),
	combout => \inst20|Mux13~0_combout\);

-- Location: FF_X34_Y27_N27
\inst20|N[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux13~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(20));

-- Location: LCCOMB_X35_Y27_N16
\inst20|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux9~0_combout\ = (\inst20|status\(1) & (((\inst22|mw|Y\(0))))) # (!\inst20|status\(1) & (!\inst20|status\(0) & (\inst21|rf|R0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|status\(0),
	datab => \inst20|status\(1),
	datac => \inst21|rf|R0\(0),
	datad => \inst22|mw|Y\(0),
	combout => \inst20|Mux9~0_combout\);

-- Location: FF_X35_Y27_N17
\inst20|N[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux9~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(24));

-- Location: LCCOMB_X35_Y27_N6
\inst1|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (\inst1|sel\(0) & ((\inst20|N\(20)) # ((\inst1|sel\(1))))) # (!\inst1|sel\(0) & (((!\inst1|sel\(1) & \inst20|N\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(20),
	datab => \inst1|sel\(0),
	datac => \inst1|sel\(1),
	datad => \inst20|N\(24),
	combout => \inst1|Mux3~2_combout\);

-- Location: LCCOMB_X35_Y27_N24
\inst1|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~3_combout\ = (\inst1|sel\(1) & ((\inst1|Mux3~2_combout\ & (\inst20|N\(12))) # (!\inst1|Mux3~2_combout\ & ((\inst20|N\(16)))))) # (!\inst1|sel\(1) & (((\inst1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(12),
	datab => \inst20|N\(16),
	datac => \inst1|sel\(1),
	datad => \inst1|Mux3~2_combout\,
	combout => \inst1|Mux3~3_combout\);

-- Location: LCCOMB_X34_Y28_N14
\inst20|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux5~0_combout\ = (\inst20|status\(1) & (((\inst22|mw|Y\(4))))) # (!\inst20|status\(1) & (\inst21|rf|R0\(4) & ((!\inst20|status\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|rf|R0\(4),
	datab => \inst22|mw|Y\(4),
	datac => \inst20|status\(1),
	datad => \inst20|status\(0),
	combout => \inst20|Mux5~0_combout\);

-- Location: FF_X34_Y28_N15
\inst20|N[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux5~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(28));

-- Location: LCCOMB_X34_Y28_N4
\inst20|Mux33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux33~0_combout\ = (\inst20|status\(0) & (\inst21|pf|PC\(0))) # (!\inst20|status\(0) & ((\inst21|rf|R3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|pf|PC\(0),
	datab => \inst20|status\(0),
	datad => \inst21|rf|R3\(0),
	combout => \inst20|Mux33~0_combout\);

-- Location: FF_X34_Y28_N5
\inst20|N[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux33~0_combout\,
	asdata => \inst22|man|ans\(0),
	sload => \inst20|status\(1),
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(0));

-- Location: LCCOMB_X35_Y28_N12
\inst20|Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux25~0_combout\ = (\inst20|status\(1) & (((\inst22|man|ans\(8))))) # (!\inst20|status\(1) & (!\inst20|status\(0) & ((\inst21|rf|R2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|status\(1),
	datab => \inst20|status\(0),
	datac => \inst22|man|ans\(8),
	datad => \inst21|rf|R2\(0),
	combout => \inst20|Mux25~0_combout\);

-- Location: FF_X35_Y28_N13
\inst20|N[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux25~0_combout\,
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(8));

-- Location: LCCOMB_X35_Y27_N0
\inst20|Mux29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mux29~0_combout\ = (\inst20|status\(0) & ((\inst21|pf|PC\(4)))) # (!\inst20|status\(0) & (\inst21|rf|R3\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|status\(0),
	datab => \inst21|rf|R3\(4),
	datad => \inst21|pf|PC\(4),
	combout => \inst20|Mux29~0_combout\);

-- Location: FF_X35_Y27_N1
\inst20|N[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|Mux29~0_combout\,
	asdata => \inst22|man|ans\(4),
	sload => \inst20|status\(1),
	ena => \inst20|N[30]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|N\(4));

-- Location: LCCOMB_X35_Y28_N2
\inst1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst1|sel\(0) & (((\inst20|N\(4)) # (\inst1|sel\(1))))) # (!\inst1|sel\(0) & (\inst20|N\(8) & ((!\inst1|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(8),
	datab => \inst20|N\(4),
	datac => \inst1|sel\(0),
	datad => \inst1|sel\(1),
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y28_N4
\inst1|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = (\inst1|sel\(1) & ((\inst1|Mux3~0_combout\ & (\inst20|N\(28))) # (!\inst1|Mux3~0_combout\ & ((\inst20|N\(0)))))) # (!\inst1|sel\(1) & (((\inst1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|N\(28),
	datab => \inst1|sel\(1),
	datac => \inst20|N\(0),
	datad => \inst1|Mux3~0_combout\,
	combout => \inst1|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y29_N12
\inst1|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~4_combout\ = (\inst1|sel\(2) & ((\inst1|Mux3~1_combout\))) # (!\inst1|sel\(2) & (\inst1|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~3_combout\,
	datac => \inst1|sel\(2),
	datad => \inst1|Mux3~1_combout\,
	combout => \inst1|Mux3~4_combout\);

-- Location: FF_X35_Y29_N13
\inst1|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|num\(0));

-- Location: LCCOMB_X35_Y29_N6
\inst1|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (\inst1|num\(0) & ((\inst1|num\(3)) # (\inst1|num\(1) $ (\inst1|num\(2))))) # (!\inst1|num\(0) & ((\inst1|num\(1)) # (\inst1|num\(2) $ (\inst1|num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|num\(1),
	datab => \inst1|num\(2),
	datac => \inst1|num\(3),
	datad => \inst1|num\(0),
	combout => \inst1|WideOr0~0_combout\);

-- Location: LCCOMB_X35_Y29_N28
\inst1|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr1~0_combout\ = (\inst1|num\(1) & (!\inst1|num\(3) & ((\inst1|num\(0)) # (!\inst1|num\(2))))) # (!\inst1|num\(1) & (\inst1|num\(0) & (\inst1|num\(2) $ (!\inst1|num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|num\(1),
	datab => \inst1|num\(2),
	datac => \inst1|num\(3),
	datad => \inst1|num\(0),
	combout => \inst1|WideOr1~0_combout\);

-- Location: LCCOMB_X35_Y29_N10
\inst1|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr2~0_combout\ = (\inst1|num\(1) & (((!\inst1|num\(3) & \inst1|num\(0))))) # (!\inst1|num\(1) & ((\inst1|num\(2) & (!\inst1|num\(3))) # (!\inst1|num\(2) & ((\inst1|num\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|num\(1),
	datab => \inst1|num\(2),
	datac => \inst1|num\(3),
	datad => \inst1|num\(0),
	combout => \inst1|WideOr2~0_combout\);

-- Location: LCCOMB_X35_Y29_N24
\inst1|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr3~0_combout\ = (\inst1|num\(1) & ((\inst1|num\(2) & ((\inst1|num\(0)))) # (!\inst1|num\(2) & (\inst1|num\(3) & !\inst1|num\(0))))) # (!\inst1|num\(1) & (!\inst1|num\(3) & (\inst1|num\(2) $ (\inst1|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|num\(1),
	datab => \inst1|num\(2),
	datac => \inst1|num\(3),
	datad => \inst1|num\(0),
	combout => \inst1|WideOr3~0_combout\);

-- Location: LCCOMB_X35_Y29_N2
\inst1|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr4~0_combout\ = (\inst1|num\(2) & (\inst1|num\(3) & ((\inst1|num\(1)) # (!\inst1|num\(0))))) # (!\inst1|num\(2) & (\inst1|num\(1) & (!\inst1|num\(3) & !\inst1|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|num\(1),
	datab => \inst1|num\(2),
	datac => \inst1|num\(3),
	datad => \inst1|num\(0),
	combout => \inst1|WideOr4~0_combout\);

-- Location: LCCOMB_X35_Y29_N4
\inst1|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr5~0_combout\ = (\inst1|num\(1) & ((\inst1|num\(0) & ((\inst1|num\(3)))) # (!\inst1|num\(0) & (\inst1|num\(2))))) # (!\inst1|num\(1) & (\inst1|num\(2) & (\inst1|num\(3) $ (\inst1|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|num\(1),
	datab => \inst1|num\(2),
	datac => \inst1|num\(3),
	datad => \inst1|num\(0),
	combout => \inst1|WideOr5~0_combout\);

-- Location: LCCOMB_X35_Y29_N26
\inst1|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr6~0_combout\ = (\inst1|num\(2) & (!\inst1|num\(1) & (\inst1|num\(3) $ (!\inst1|num\(0))))) # (!\inst1|num\(2) & (\inst1|num\(0) & (\inst1|num\(1) $ (!\inst1|num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|num\(1),
	datab => \inst1|num\(2),
	datac => \inst1|num\(3),
	datad => \inst1|num\(0),
	combout => \inst1|WideOr6~0_combout\);

ww_exceed <= \exceed~output_o\;

ww_codeout(7) <= \codeout[7]~output_o\;

ww_codeout(6) <= \codeout[6]~output_o\;

ww_codeout(5) <= \codeout[5]~output_o\;

ww_codeout(4) <= \codeout[4]~output_o\;

ww_codeout(3) <= \codeout[3]~output_o\;

ww_codeout(2) <= \codeout[2]~output_o\;

ww_codeout(1) <= \codeout[1]~output_o\;

ww_codeout(0) <= \codeout[0]~output_o\;

ww_key_c(3) <= \key_c[3]~output_o\;

ww_key_c(2) <= \key_c[2]~output_o\;

ww_key_c(1) <= \key_c[1]~output_o\;

ww_key_c(0) <= \key_c[0]~output_o\;

ww_sel(2) <= \sel[2]~output_o\;

ww_sel(1) <= \sel[1]~output_o\;

ww_sel(0) <= \sel[0]~output_o\;
END structure;


