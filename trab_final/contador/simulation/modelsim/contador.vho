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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/31/2022 18:16:31"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador IS
    PORT (
	clock : IN std_logic;
	reset_contador : IN std_logic;
	enable_contador : IN std_logic;
	count : OUT std_logic_vector(27 DOWNTO 0)
	);
END contador;

-- Design Ports Information
-- count[0]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[1]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[3]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[4]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[5]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[6]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[7]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[8]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[9]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[10]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[11]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[12]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[13]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[14]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[15]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[16]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[17]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[18]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[19]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[20]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[21]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[22]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[23]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[24]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[25]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[26]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- count[27]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- enable_contador	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_contador	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF contador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset_contador : std_logic;
SIGNAL ww_enable_contador : std_logic;
SIGNAL ww_count : std_logic_vector(27 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \cnt~6_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \enable_contador~combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \reset_contador~combout\ : std_logic;
SIGNAL \cnt~1_combout\ : std_logic;
SIGNAL \cnt~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \cnt~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \cnt~5_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \cnt~4_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \cnt~3_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \cnt~8_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \cnt~7_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \cnt~10_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \cnt~9_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \cnt~11_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \seg[0]~27_combout\ : std_logic;
SIGNAL \seg[1]~28_combout\ : std_logic;
SIGNAL \seg[1]~29\ : std_logic;
SIGNAL \seg[2]~30_combout\ : std_logic;
SIGNAL \seg[2]~31\ : std_logic;
SIGNAL \seg[3]~32_combout\ : std_logic;
SIGNAL \seg[3]~33\ : std_logic;
SIGNAL \seg[4]~34_combout\ : std_logic;
SIGNAL \seg[4]~35\ : std_logic;
SIGNAL \seg[5]~36_combout\ : std_logic;
SIGNAL \seg[5]~37\ : std_logic;
SIGNAL \seg[6]~38_combout\ : std_logic;
SIGNAL \seg[6]~39\ : std_logic;
SIGNAL \seg[7]~40_combout\ : std_logic;
SIGNAL \seg[7]~41\ : std_logic;
SIGNAL \seg[8]~42_combout\ : std_logic;
SIGNAL \seg[8]~43\ : std_logic;
SIGNAL \seg[9]~44_combout\ : std_logic;
SIGNAL \seg[9]~45\ : std_logic;
SIGNAL \seg[10]~46_combout\ : std_logic;
SIGNAL \seg[10]~47\ : std_logic;
SIGNAL \seg[11]~48_combout\ : std_logic;
SIGNAL \seg[11]~49\ : std_logic;
SIGNAL \seg[12]~50_combout\ : std_logic;
SIGNAL \seg[12]~51\ : std_logic;
SIGNAL \seg[13]~52_combout\ : std_logic;
SIGNAL \seg[13]~53\ : std_logic;
SIGNAL \seg[14]~54_combout\ : std_logic;
SIGNAL \seg[14]~55\ : std_logic;
SIGNAL \seg[15]~56_combout\ : std_logic;
SIGNAL \seg[15]~57\ : std_logic;
SIGNAL \seg[16]~58_combout\ : std_logic;
SIGNAL \seg[16]~59\ : std_logic;
SIGNAL \seg[17]~60_combout\ : std_logic;
SIGNAL \seg[17]~61\ : std_logic;
SIGNAL \seg[18]~62_combout\ : std_logic;
SIGNAL \seg[18]~63\ : std_logic;
SIGNAL \seg[19]~64_combout\ : std_logic;
SIGNAL \seg[19]~65\ : std_logic;
SIGNAL \seg[20]~66_combout\ : std_logic;
SIGNAL \seg[20]~67\ : std_logic;
SIGNAL \seg[21]~68_combout\ : std_logic;
SIGNAL \seg[21]~69\ : std_logic;
SIGNAL \seg[22]~70_combout\ : std_logic;
SIGNAL \seg[22]~71\ : std_logic;
SIGNAL \seg[23]~72_combout\ : std_logic;
SIGNAL \seg[23]~73\ : std_logic;
SIGNAL \seg[24]~74_combout\ : std_logic;
SIGNAL \seg[24]~75\ : std_logic;
SIGNAL \seg[25]~76_combout\ : std_logic;
SIGNAL \seg[25]~77\ : std_logic;
SIGNAL \seg[26]~78_combout\ : std_logic;
SIGNAL \seg[26]~79\ : std_logic;
SIGNAL \seg[27]~80_combout\ : std_logic;
SIGNAL seg : std_logic_vector(27 DOWNTO 0);
SIGNAL cnt : std_logic_vector(27 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset_contador <= reset_contador;
ww_enable_contador <= enable_contador;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

-- Location: LCCOMB_X7_Y13_N10
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt(3) & (!\Add0~5\)) # (!cnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X7_Y13_N12
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (cnt(4) & (\Add0~7\ $ (GND))) # (!cnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((cnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X7_Y13_N20
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (cnt(8) & (\Add0~15\ $ (GND))) # (!cnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((cnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X7_Y13_N24
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (cnt(10) & (\Add0~19\ $ (GND))) # (!cnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((cnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X7_Y13_N28
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (cnt(12) & (\Add0~23\ $ (GND))) # (!cnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((cnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X7_Y13_N30
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (cnt(13) & (!\Add0~25\)) # (!cnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X7_Y12_N6
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (cnt(17) & (!\Add0~33\)) # (!cnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X7_Y12_N12
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (cnt(20) & (\Add0~39\ $ (GND))) # (!cnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((cnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCFF_X7_Y13_N29
\cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(8));

-- Location: LCFF_X7_Y13_N13
\cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~53_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(4));

-- Location: LCFF_X7_Y13_N11
\cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~52_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LCFF_X7_Y13_N7
\cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~69_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(13));

-- Location: LCFF_X7_Y13_N21
\cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~61_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(12));

-- Location: LCFF_X7_Y13_N17
\cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~59_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(10));

-- Location: LCFF_X6_Y12_N31
\cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(23));

-- Location: LCFF_X7_Y12_N11
\cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(20));

-- Location: LCCOMB_X6_Y13_N0
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\reset_contador~combout\) # ((!\Add0~0_combout\ & (!\Add0~4_combout\ & !\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \reset_contador~combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~2_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X6_Y13_N14
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (!\reset_contador~combout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_contador~combout\,
	datac => \Add0~6_combout\,
	combout => \Add0~52_combout\);

-- Location: LCCOMB_X6_Y13_N8
\Add0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (!\reset_contador~combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_contador~combout\,
	datac => \Add0~8_combout\,
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X6_Y12_N12
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (!\Add0~52_combout\ & (!\Add0~54_combout\ & !\Add0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Add0~52_combout\,
	datac => \Add0~54_combout\,
	datad => \Add0~53_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X6_Y13_N16
\Add0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (!\reset_contador~combout\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_contador~combout\,
	datad => \Add0~20_combout\,
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X7_Y13_N2
\Add0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (!\reset_contador~combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_contador~combout\,
	datad => \Add0~24_combout\,
	combout => \Add0~61_combout\);

-- Location: LCCOMB_X6_Y12_N0
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Add0~16_combout\) # ((\Add0~12_combout\) # ((\Add0~14_combout\) # (\Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~26_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X6_Y12_N6
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\reset_contador~combout\ & ((\Add0~36_combout\) # ((\Add0~40_combout\) # (\Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_contador~combout\,
	datab => \Add0~36_combout\,
	datac => \Add0~40_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X6_Y12_N20
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~59_combout\ & (!\Add0~61_combout\ & (!\Add0~60_combout\ & !\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~59_combout\,
	datab => \Add0~61_combout\,
	datac => \Add0~60_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X6_Y13_N24
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (!\reset_contador~combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_contador~combout\,
	datad => \Add0~16_combout\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X6_Y13_N4
\Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (!\reset_contador~combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_contador~combout\,
	datad => \Add0~26_combout\,
	combout => \Add0~69_combout\);

-- Location: LCCOMB_X6_Y12_N30
\cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~6_combout\ = (!\reset_contador~combout\ & (\Add0~46_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_contador~combout\,
	datab => \Add0~46_combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~6_combout\);

-- Location: LCCOMB_X8_Y12_N8
\Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (!\reset_contador~combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_contador~combout\,
	datad => \Add0~40_combout\,
	combout => \Add0~70_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable_contador~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_enable_contador,
	combout => \enable_contador~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_contador~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_contador,
	combout => \reset_contador~combout\);

-- Location: LCCOMB_X6_Y12_N16
\cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~1_combout\ = (!\reset_contador~combout\ & (\Add0~38_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_contador~combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~1_combout\);

-- Location: LCFF_X6_Y12_N17
\cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(19));

-- Location: LCCOMB_X6_Y12_N26
\cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~2_combout\ = (\Add0~34_combout\ & (!\reset_contador~combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \reset_contador~combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~2_combout\);

-- Location: LCFF_X6_Y12_N27
\cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(17));

-- Location: LCCOMB_X7_Y13_N4
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\enable_contador~combout\ & (cnt(0) $ (VCC))) # (!\enable_contador~combout\ & (cnt(0) & VCC))
-- \Add0~1\ = CARRY((\enable_contador~combout\ & cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable_contador~combout\,
	datab => cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X6_Y13_N30
\Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (!\reset_contador~combout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_contador~combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~67_combout\);

-- Location: LCFF_X7_Y13_N27
\cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~67_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LCCOMB_X7_Y13_N6
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cnt(1) & (!\Add0~1\)) # (!cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X6_Y13_N20
\Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (!\reset_contador~combout\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_contador~combout\,
	datad => \Add0~2_combout\,
	combout => \Add0~66_combout\);

-- Location: LCFF_X7_Y13_N5
\cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~66_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LCCOMB_X7_Y13_N8
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cnt(2) & (\Add0~3\ $ (GND))) # (!cnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X6_Y13_N26
\Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (!\reset_contador~combout\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_contador~combout\,
	datad => \Add0~4_combout\,
	combout => \Add0~65_combout\);

-- Location: LCFF_X7_Y13_N9
\cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~65_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LCCOMB_X7_Y13_N14
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (cnt(5) & (!\Add0~9\)) # (!cnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X6_Y13_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (!\reset_contador~combout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_contador~combout\,
	datac => \Add0~10_combout\,
	combout => \Add0~54_combout\);

-- Location: LCFF_X7_Y13_N15
\cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~54_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(5));

-- Location: LCCOMB_X7_Y13_N16
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (cnt(6) & (\Add0~11\ $ (GND))) # (!cnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((cnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X6_Y13_N28
\Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (!\reset_contador~combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_contador~combout\,
	datac => \Add0~12_combout\,
	combout => \Add0~64_combout\);

-- Location: LCFF_X7_Y13_N23
\cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~64_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(6));

-- Location: LCCOMB_X7_Y13_N18
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (cnt(7) & (!\Add0~13\)) # (!cnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X6_Y13_N6
\Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (!\reset_contador~combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_contador~combout\,
	datad => \Add0~14_combout\,
	combout => \Add0~63_combout\);

-- Location: LCFF_X7_Y13_N3
\cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~63_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(7));

-- Location: LCCOMB_X7_Y13_N22
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (cnt(9) & (!\Add0~17\)) # (!cnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X7_Y13_N0
\cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~0_combout\ = (!\reset_contador~combout\ & (\Add0~18_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_contador~combout\,
	datab => \Add0~18_combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~0_combout\);

-- Location: LCFF_X7_Y13_N1
\cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(9));

-- Location: LCCOMB_X7_Y13_N26
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (cnt(11) & (!\Add0~21\)) # (!cnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X6_Y13_N10
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (!\reset_contador~combout\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_contador~combout\,
	datac => \Add0~22_combout\,
	combout => \Add0~60_combout\);

-- Location: LCFF_X7_Y13_N19
\cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~60_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(11));

-- Location: LCCOMB_X7_Y12_N0
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (cnt(14) & (\Add0~27\ $ (GND))) # (!cnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((cnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X7_Y12_N30
\cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~5_combout\ = (!\reset_contador~combout\ & (\Add0~28_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_contador~combout\,
	datab => \Add0~28_combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~5_combout\);

-- Location: LCFF_X7_Y12_N31
\cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(14));

-- Location: LCCOMB_X7_Y12_N2
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (cnt(15) & (!\Add0~29\)) # (!cnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X7_Y12_N28
\cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~4_combout\ = (!\reset_contador~combout\ & (\Add0~30_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_contador~combout\,
	datab => \Add0~30_combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~4_combout\);

-- Location: LCFF_X7_Y12_N29
\cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(15));

-- Location: LCCOMB_X7_Y12_N4
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (cnt(16) & (\Add0~31\ $ (GND))) # (!cnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((cnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X6_Y12_N24
\cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~3_combout\ = (!\reset_contador~combout\ & (\Add0~32_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_contador~combout\,
	datac => \Add0~32_combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~3_combout\);

-- Location: LCFF_X6_Y12_N25
\cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(16));

-- Location: LCCOMB_X7_Y12_N8
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (cnt(18) & (\Add0~35\ $ (GND))) # (!cnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((cnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X8_Y12_N14
\Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (!\reset_contador~combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_contador~combout\,
	datad => \Add0~36_combout\,
	combout => \Add0~68_combout\);

-- Location: LCFF_X7_Y12_N23
\cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Add0~68_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(18));

-- Location: LCCOMB_X7_Y12_N10
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (cnt(19) & (!\Add0~37\)) # (!cnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X7_Y12_N14
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (cnt(21) & (!\Add0~41\)) # (!cnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X5_Y12_N2
\cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~8_combout\ = (!\reset_contador~combout\ & (\Add0~42_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_contador~combout\,
	datac => \Add0~42_combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~8_combout\);

-- Location: LCFF_X5_Y12_N3
\cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(21));

-- Location: LCCOMB_X7_Y12_N16
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (cnt(22) & (\Add0~43\ $ (GND))) # (!cnt(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((cnt(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X6_Y12_N28
\cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~7_combout\ = (!\reset_contador~combout\ & (\Add0~44_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_contador~combout\,
	datac => \Add0~44_combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~7_combout\);

-- Location: LCFF_X6_Y12_N29
\cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(22));

-- Location: LCCOMB_X7_Y12_N18
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (cnt(23) & (!\Add0~45\)) # (!cnt(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X6_Y12_N18
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\reset_contador~combout\ & (\Add0~38_combout\ & (\Add0~18_combout\ & \Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_contador~combout\,
	datab => \Add0~38_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~46_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X5_Y12_N0
\cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~10_combout\ = (!\reset_contador~combout\ & (\Add0~50_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_contador~combout\,
	datac => \Add0~50_combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~10_combout\);

-- Location: LCFF_X5_Y12_N1
\cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(25));

-- Location: LCCOMB_X7_Y12_N20
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (cnt(24) & (\Add0~47\ $ (GND))) # (!cnt(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((cnt(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X6_Y12_N4
\cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~9_combout\ = (!\reset_contador~combout\ & (\Add0~48_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_contador~combout\,
	datac => \Add0~48_combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~9_combout\);

-- Location: LCFF_X6_Y12_N5
\cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(24));

-- Location: LCCOMB_X7_Y12_N22
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (cnt(25) & (!\Add0~49\)) # (!cnt(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X6_Y12_N14
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Add0~44_combout\ & (\Add0~42_combout\ & (\Add0~50_combout\ & \Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Add0~42_combout\,
	datac => \Add0~50_combout\,
	datad => \Add0~48_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X6_Y12_N22
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Add0~34_combout\ & (\Add0~30_combout\ & (\Add0~32_combout\ & \Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~30_combout\,
	datac => \Add0~32_combout\,
	datad => \Add0~28_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X6_Y12_N8
\cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt~11_combout\ = (!\reset_contador~combout\ & (\Add0~57_combout\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_contador~combout\,
	datac => \Add0~57_combout\,
	datad => \Equal0~9_combout\,
	combout => \cnt~11_combout\);

-- Location: LCFF_X6_Y12_N9
\cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(27));

-- Location: LCCOMB_X7_Y12_N24
\Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (cnt(26) & (\Add0~51\ $ (GND))) # (!cnt(26) & (!\Add0~51\ & VCC))
-- \Add0~56\ = CARRY((cnt(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X8_Y12_N0
\Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (!\reset_contador~combout\ & \Add0~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_contador~combout\,
	datad => \Add0~55_combout\,
	combout => \Add0~71_combout\);

-- Location: LCFF_X8_Y12_N1
\cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(26));

-- Location: LCCOMB_X7_Y12_N26
\Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = \Add0~56\ $ (cnt(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(27),
	cin => \Add0~56\,
	combout => \Add0~57_combout\);

-- Location: LCCOMB_X6_Y12_N10
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~3_combout\ & (\Equal0~4_combout\ & (\Add0~57_combout\ & !\Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~57_combout\,
	datad => \Add0~55_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X6_Y12_N2
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X5_Y12_N4
\seg[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[0]~27_combout\ = seg(0) $ (\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg(0),
	datad => \Equal0~9_combout\,
	combout => \seg[0]~27_combout\);

-- Location: LCFF_X5_Y12_N5
\seg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(0));

-- Location: LCCOMB_X5_Y12_N6
\seg[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[1]~28_combout\ = (seg(1) & (seg(0) $ (VCC))) # (!seg(1) & (seg(0) & VCC))
-- \seg[1]~29\ = CARRY((seg(1) & seg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg(1),
	datab => seg(0),
	datad => VCC,
	combout => \seg[1]~28_combout\,
	cout => \seg[1]~29\);

-- Location: LCFF_X5_Y12_N7
\seg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[1]~28_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(1));

-- Location: LCCOMB_X5_Y12_N8
\seg[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[2]~30_combout\ = (seg(2) & (!\seg[1]~29\)) # (!seg(2) & ((\seg[1]~29\) # (GND)))
-- \seg[2]~31\ = CARRY((!\seg[1]~29\) # (!seg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(2),
	datad => VCC,
	cin => \seg[1]~29\,
	combout => \seg[2]~30_combout\,
	cout => \seg[2]~31\);

-- Location: LCFF_X5_Y12_N9
\seg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[2]~30_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(2));

-- Location: LCCOMB_X5_Y12_N10
\seg[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[3]~32_combout\ = (seg(3) & (\seg[2]~31\ $ (GND))) # (!seg(3) & (!\seg[2]~31\ & VCC))
-- \seg[3]~33\ = CARRY((seg(3) & !\seg[2]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(3),
	datad => VCC,
	cin => \seg[2]~31\,
	combout => \seg[3]~32_combout\,
	cout => \seg[3]~33\);

-- Location: LCFF_X5_Y12_N11
\seg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[3]~32_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(3));

-- Location: LCCOMB_X5_Y12_N12
\seg[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[4]~34_combout\ = (seg(4) & (!\seg[3]~33\)) # (!seg(4) & ((\seg[3]~33\) # (GND)))
-- \seg[4]~35\ = CARRY((!\seg[3]~33\) # (!seg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(4),
	datad => VCC,
	cin => \seg[3]~33\,
	combout => \seg[4]~34_combout\,
	cout => \seg[4]~35\);

-- Location: LCFF_X5_Y12_N13
\seg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[4]~34_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(4));

-- Location: LCCOMB_X5_Y12_N14
\seg[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[5]~36_combout\ = (seg(5) & (\seg[4]~35\ $ (GND))) # (!seg(5) & (!\seg[4]~35\ & VCC))
-- \seg[5]~37\ = CARRY((seg(5) & !\seg[4]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(5),
	datad => VCC,
	cin => \seg[4]~35\,
	combout => \seg[5]~36_combout\,
	cout => \seg[5]~37\);

-- Location: LCFF_X5_Y12_N15
\seg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[5]~36_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(5));

-- Location: LCCOMB_X5_Y12_N16
\seg[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[6]~38_combout\ = (seg(6) & (!\seg[5]~37\)) # (!seg(6) & ((\seg[5]~37\) # (GND)))
-- \seg[6]~39\ = CARRY((!\seg[5]~37\) # (!seg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(6),
	datad => VCC,
	cin => \seg[5]~37\,
	combout => \seg[6]~38_combout\,
	cout => \seg[6]~39\);

-- Location: LCFF_X5_Y12_N17
\seg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[6]~38_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(6));

-- Location: LCCOMB_X5_Y12_N18
\seg[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[7]~40_combout\ = (seg(7) & (\seg[6]~39\ $ (GND))) # (!seg(7) & (!\seg[6]~39\ & VCC))
-- \seg[7]~41\ = CARRY((seg(7) & !\seg[6]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(7),
	datad => VCC,
	cin => \seg[6]~39\,
	combout => \seg[7]~40_combout\,
	cout => \seg[7]~41\);

-- Location: LCFF_X5_Y12_N19
\seg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[7]~40_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(7));

-- Location: LCCOMB_X5_Y12_N20
\seg[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[8]~42_combout\ = (seg(8) & (!\seg[7]~41\)) # (!seg(8) & ((\seg[7]~41\) # (GND)))
-- \seg[8]~43\ = CARRY((!\seg[7]~41\) # (!seg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(8),
	datad => VCC,
	cin => \seg[7]~41\,
	combout => \seg[8]~42_combout\,
	cout => \seg[8]~43\);

-- Location: LCFF_X5_Y12_N21
\seg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[8]~42_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(8));

-- Location: LCCOMB_X5_Y12_N22
\seg[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[9]~44_combout\ = (seg(9) & (\seg[8]~43\ $ (GND))) # (!seg(9) & (!\seg[8]~43\ & VCC))
-- \seg[9]~45\ = CARRY((seg(9) & !\seg[8]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(9),
	datad => VCC,
	cin => \seg[8]~43\,
	combout => \seg[9]~44_combout\,
	cout => \seg[9]~45\);

-- Location: LCFF_X5_Y12_N23
\seg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[9]~44_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(9));

-- Location: LCCOMB_X5_Y12_N24
\seg[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[10]~46_combout\ = (seg(10) & (!\seg[9]~45\)) # (!seg(10) & ((\seg[9]~45\) # (GND)))
-- \seg[10]~47\ = CARRY((!\seg[9]~45\) # (!seg(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(10),
	datad => VCC,
	cin => \seg[9]~45\,
	combout => \seg[10]~46_combout\,
	cout => \seg[10]~47\);

-- Location: LCFF_X5_Y12_N25
\seg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[10]~46_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(10));

-- Location: LCCOMB_X5_Y12_N26
\seg[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[11]~48_combout\ = (seg(11) & (\seg[10]~47\ $ (GND))) # (!seg(11) & (!\seg[10]~47\ & VCC))
-- \seg[11]~49\ = CARRY((seg(11) & !\seg[10]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(11),
	datad => VCC,
	cin => \seg[10]~47\,
	combout => \seg[11]~48_combout\,
	cout => \seg[11]~49\);

-- Location: LCFF_X5_Y12_N27
\seg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[11]~48_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(11));

-- Location: LCCOMB_X5_Y12_N28
\seg[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[12]~50_combout\ = (seg(12) & (!\seg[11]~49\)) # (!seg(12) & ((\seg[11]~49\) # (GND)))
-- \seg[12]~51\ = CARRY((!\seg[11]~49\) # (!seg(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(12),
	datad => VCC,
	cin => \seg[11]~49\,
	combout => \seg[12]~50_combout\,
	cout => \seg[12]~51\);

-- Location: LCFF_X5_Y12_N29
\seg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[12]~50_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(12));

-- Location: LCCOMB_X5_Y12_N30
\seg[13]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[13]~52_combout\ = (seg(13) & (\seg[12]~51\ $ (GND))) # (!seg(13) & (!\seg[12]~51\ & VCC))
-- \seg[13]~53\ = CARRY((seg(13) & !\seg[12]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(13),
	datad => VCC,
	cin => \seg[12]~51\,
	combout => \seg[13]~52_combout\,
	cout => \seg[13]~53\);

-- Location: LCFF_X5_Y12_N31
\seg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[13]~52_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(13));

-- Location: LCCOMB_X5_Y11_N0
\seg[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[14]~54_combout\ = (seg(14) & (!\seg[13]~53\)) # (!seg(14) & ((\seg[13]~53\) # (GND)))
-- \seg[14]~55\ = CARRY((!\seg[13]~53\) # (!seg(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(14),
	datad => VCC,
	cin => \seg[13]~53\,
	combout => \seg[14]~54_combout\,
	cout => \seg[14]~55\);

-- Location: LCFF_X5_Y11_N1
\seg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[14]~54_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(14));

-- Location: LCCOMB_X5_Y11_N2
\seg[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[15]~56_combout\ = (seg(15) & (\seg[14]~55\ $ (GND))) # (!seg(15) & (!\seg[14]~55\ & VCC))
-- \seg[15]~57\ = CARRY((seg(15) & !\seg[14]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(15),
	datad => VCC,
	cin => \seg[14]~55\,
	combout => \seg[15]~56_combout\,
	cout => \seg[15]~57\);

-- Location: LCFF_X5_Y11_N3
\seg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[15]~56_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(15));

-- Location: LCCOMB_X5_Y11_N4
\seg[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[16]~58_combout\ = (seg(16) & (!\seg[15]~57\)) # (!seg(16) & ((\seg[15]~57\) # (GND)))
-- \seg[16]~59\ = CARRY((!\seg[15]~57\) # (!seg(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(16),
	datad => VCC,
	cin => \seg[15]~57\,
	combout => \seg[16]~58_combout\,
	cout => \seg[16]~59\);

-- Location: LCFF_X5_Y11_N5
\seg[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[16]~58_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(16));

-- Location: LCCOMB_X5_Y11_N6
\seg[17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[17]~60_combout\ = (seg(17) & (\seg[16]~59\ $ (GND))) # (!seg(17) & (!\seg[16]~59\ & VCC))
-- \seg[17]~61\ = CARRY((seg(17) & !\seg[16]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(17),
	datad => VCC,
	cin => \seg[16]~59\,
	combout => \seg[17]~60_combout\,
	cout => \seg[17]~61\);

-- Location: LCFF_X5_Y11_N7
\seg[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[17]~60_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(17));

-- Location: LCCOMB_X5_Y11_N8
\seg[18]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[18]~62_combout\ = (seg(18) & (!\seg[17]~61\)) # (!seg(18) & ((\seg[17]~61\) # (GND)))
-- \seg[18]~63\ = CARRY((!\seg[17]~61\) # (!seg(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(18),
	datad => VCC,
	cin => \seg[17]~61\,
	combout => \seg[18]~62_combout\,
	cout => \seg[18]~63\);

-- Location: LCFF_X5_Y11_N9
\seg[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[18]~62_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(18));

-- Location: LCCOMB_X5_Y11_N10
\seg[19]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[19]~64_combout\ = (seg(19) & (\seg[18]~63\ $ (GND))) # (!seg(19) & (!\seg[18]~63\ & VCC))
-- \seg[19]~65\ = CARRY((seg(19) & !\seg[18]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(19),
	datad => VCC,
	cin => \seg[18]~63\,
	combout => \seg[19]~64_combout\,
	cout => \seg[19]~65\);

-- Location: LCFF_X5_Y11_N11
\seg[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[19]~64_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(19));

-- Location: LCCOMB_X5_Y11_N12
\seg[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[20]~66_combout\ = (seg(20) & (!\seg[19]~65\)) # (!seg(20) & ((\seg[19]~65\) # (GND)))
-- \seg[20]~67\ = CARRY((!\seg[19]~65\) # (!seg(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(20),
	datad => VCC,
	cin => \seg[19]~65\,
	combout => \seg[20]~66_combout\,
	cout => \seg[20]~67\);

-- Location: LCFF_X5_Y11_N13
\seg[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[20]~66_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(20));

-- Location: LCCOMB_X5_Y11_N14
\seg[21]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[21]~68_combout\ = (seg(21) & (\seg[20]~67\ $ (GND))) # (!seg(21) & (!\seg[20]~67\ & VCC))
-- \seg[21]~69\ = CARRY((seg(21) & !\seg[20]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(21),
	datad => VCC,
	cin => \seg[20]~67\,
	combout => \seg[21]~68_combout\,
	cout => \seg[21]~69\);

-- Location: LCFF_X5_Y11_N15
\seg[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[21]~68_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(21));

-- Location: LCCOMB_X5_Y11_N16
\seg[22]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[22]~70_combout\ = (seg(22) & (!\seg[21]~69\)) # (!seg(22) & ((\seg[21]~69\) # (GND)))
-- \seg[22]~71\ = CARRY((!\seg[21]~69\) # (!seg(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(22),
	datad => VCC,
	cin => \seg[21]~69\,
	combout => \seg[22]~70_combout\,
	cout => \seg[22]~71\);

-- Location: LCFF_X5_Y11_N17
\seg[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[22]~70_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(22));

-- Location: LCCOMB_X5_Y11_N18
\seg[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[23]~72_combout\ = (seg(23) & (\seg[22]~71\ $ (GND))) # (!seg(23) & (!\seg[22]~71\ & VCC))
-- \seg[23]~73\ = CARRY((seg(23) & !\seg[22]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(23),
	datad => VCC,
	cin => \seg[22]~71\,
	combout => \seg[23]~72_combout\,
	cout => \seg[23]~73\);

-- Location: LCFF_X5_Y11_N19
\seg[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[23]~72_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(23));

-- Location: LCCOMB_X5_Y11_N20
\seg[24]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[24]~74_combout\ = (seg(24) & (!\seg[23]~73\)) # (!seg(24) & ((\seg[23]~73\) # (GND)))
-- \seg[24]~75\ = CARRY((!\seg[23]~73\) # (!seg(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(24),
	datad => VCC,
	cin => \seg[23]~73\,
	combout => \seg[24]~74_combout\,
	cout => \seg[24]~75\);

-- Location: LCFF_X5_Y11_N21
\seg[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[24]~74_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(24));

-- Location: LCCOMB_X5_Y11_N22
\seg[25]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[25]~76_combout\ = (seg(25) & (\seg[24]~75\ $ (GND))) # (!seg(25) & (!\seg[24]~75\ & VCC))
-- \seg[25]~77\ = CARRY((seg(25) & !\seg[24]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg(25),
	datad => VCC,
	cin => \seg[24]~75\,
	combout => \seg[25]~76_combout\,
	cout => \seg[25]~77\);

-- Location: LCFF_X5_Y11_N23
\seg[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[25]~76_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(25));

-- Location: LCCOMB_X5_Y11_N24
\seg[26]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[26]~78_combout\ = (seg(26) & (!\seg[25]~77\)) # (!seg(26) & ((\seg[25]~77\) # (GND)))
-- \seg[26]~79\ = CARRY((!\seg[25]~77\) # (!seg(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg(26),
	datad => VCC,
	cin => \seg[25]~77\,
	combout => \seg[26]~78_combout\,
	cout => \seg[26]~79\);

-- Location: LCFF_X5_Y11_N25
\seg[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[26]~78_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(26));

-- Location: LCCOMB_X5_Y11_N26
\seg[27]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg[27]~80_combout\ = \seg[26]~79\ $ (!seg(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => seg(27),
	cin => \seg[26]~79\,
	combout => \seg[27]~80_combout\);

-- Location: LCFF_X5_Y11_N27
\seg[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \seg[27]~80_combout\,
	ena => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => seg(27));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(0));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(2));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(3));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(4));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(5));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(7));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(8));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(9));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(10));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(11));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(12));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(13));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(14));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(15));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(16));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(17));

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(18));

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(19));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(20));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(21));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(22));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(23));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(24));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(25));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(26));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\count[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => seg(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_count(27));
END structure;


