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

-- DATE "02/02/2022 13:52:51"

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

ENTITY 	datapath IS
    PORT (
	clock : IN std_logic;
	DT_UMID : IN std_logic_vector(15 DOWNTO 0);
	DT_TEMP : IN std_logic_vector(15 DOWNTO 0);
	DT_TEMPO : IN std_logic_vector(15 DOWNTO 0);
	LD_TEMPERATURA : IN std_logic;
	CL_TEMPERATURA : IN std_logic;
	LD_UMIDADE : IN std_logic;
	CL_UMIDADE : IN std_logic;
	LD_TEMPO : IN std_logic;
	CL_TEMPO : IN std_logic;
	LD_INTERVALO : IN std_logic;
	CL_INTERVALO : IN std_logic;
	SW1 : IN std_logic;
	SW2 : IN std_logic;
	EN_CONTADOR : IN std_logic;
	RST_CONTADOR : IN std_logic;
	EN_ROM : IN std_logic;
	ADD : IN std_logic_vector(3 DOWNTO 0);
	GT_TEMPORAL : OUT std_logic;
	LT_TEMPORAL : OUT std_logic;
	EQ_TEMPORAL : OUT std_logic;
	GT_SENSORES : OUT std_logic;
	LT_SENSORES : OUT std_logic;
	EQ_SENSORES : OUT std_logic
	);
END datapath;

-- Design Ports Information
-- EN_ROM	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GT_TEMPORAL	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LT_TEMPORAL	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EQ_TEMPORAL	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GT_SENSORES	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LT_SENSORES	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EQ_SENSORES	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW1	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD[1]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD[0]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD[3]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD[2]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW2	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST_CONTADOR	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN_CONTADOR	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CL_INTERVALO	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LD_INTERVALO	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[15]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CL_TEMPO	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LD_TEMPO	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[14]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[13]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[12]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[11]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[10]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[9]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[8]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[7]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[6]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[5]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[4]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[3]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[2]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[1]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[0]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[15]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CL_UMIDADE	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LD_UMIDADE	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[15]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CL_TEMPERATURA	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LD_TEMPERATURA	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[14]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[14]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[13]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[13]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[12]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[12]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[11]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[11]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[10]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[10]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[7]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[7]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[6]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[6]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[5]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[5]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[4]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[4]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[3]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[3]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[2]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[2]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[1]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[1]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[0]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[0]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[9]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[8]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[9]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[8]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF datapath IS
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
SIGNAL ww_DT_UMID : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DT_TEMP : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DT_TEMPO : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_LD_TEMPERATURA : std_logic;
SIGNAL ww_CL_TEMPERATURA : std_logic;
SIGNAL ww_LD_UMIDADE : std_logic;
SIGNAL ww_CL_UMIDADE : std_logic;
SIGNAL ww_LD_TEMPO : std_logic;
SIGNAL ww_CL_TEMPO : std_logic;
SIGNAL ww_LD_INTERVALO : std_logic;
SIGNAL ww_CL_INTERVALO : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_EN_CONTADOR : std_logic;
SIGNAL ww_RST_CONTADOR : std_logic;
SIGNAL ww_EN_ROM : std_logic;
SIGNAL ww_ADD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_GT_TEMPORAL : std_logic;
SIGNAL ww_LT_TEMPORAL : std_logic;
SIGNAL ww_EQ_TEMPORAL : std_logic;
SIGNAL ww_GT_SENSORES : std_logic;
SIGNAL ww_LT_SENSORES : std_logic;
SIGNAL ww_EQ_SENSORES : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CL_TEMPERATURA~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CL_TEMPO~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CL_INTERVALO~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CL_UMIDADE~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \COMP_SENSORES|LessThan0~1_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~3_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~5_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~7_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~9_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~11_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~13_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~14_combout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~2_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~4_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~6_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~8_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~10_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~12_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~13_combout\ : std_logic;
SIGNAL \CNT_T|Add0~12_combout\ : std_logic;
SIGNAL \CNT_T|Add0~20_combout\ : std_logic;
SIGNAL \CNT_T|Add0~26_combout\ : std_logic;
SIGNAL \CNT_T|Add0~30_combout\ : std_logic;
SIGNAL \CNT_T|Add0~34_combout\ : std_logic;
SIGNAL \CNT_T|Add0~40_combout\ : std_logic;
SIGNAL \CNT_T|Add0~53_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[14]~1_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[0]~15_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|Equal0~3_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|Equal0~6_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[13]~2_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[6]~7_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[3]~10_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[1]~12_combout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~16_combout\ : std_logic;
SIGNAL \COMP_SENSORES|Equal0~3_combout\ : std_logic;
SIGNAL \COMP_SENSORES|Equal0~4_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~2_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~7_combout\ : std_logic;
SIGNAL \CNT_T|Add0~68_combout\ : std_logic;
SIGNAL \CNT_T|Add0~71_combout\ : std_logic;
SIGNAL \CNT_T|Add0~73_combout\ : std_logic;
SIGNAL \CNT_T|Add0~79_combout\ : std_logic;
SIGNAL \CNT_T|Add0~80_combout\ : std_logic;
SIGNAL \CNT_T|cnt~3_combout\ : std_logic;
SIGNAL \CNT_T|cnt~11_combout\ : std_logic;
SIGNAL \CNT_T|cnt~12_combout\ : std_logic;
SIGNAL \CNT_T|Add0~82_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \EN_CONTADOR~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \RG_TEMPO|saida_tempo[7]~feeder_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[13]~feeder_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[11]~feeder_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[10]~feeder_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[6]~feeder_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[3]~feeder_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[1]~feeder_combout\ : std_logic;
SIGNAL \RST_CONTADOR~combout\ : std_logic;
SIGNAL \CNT_T|Add0~81_combout\ : std_logic;
SIGNAL \CNT_T|Add0~83_combout\ : std_logic;
SIGNAL \CNT_T|Add0~58_combout\ : std_logic;
SIGNAL \CNT_T|cnt~9_combout\ : std_logic;
SIGNAL \CNT_T|cnt~6_combout\ : std_logic;
SIGNAL \CNT_T|Add0~39\ : std_logic;
SIGNAL \CNT_T|Add0~41\ : std_logic;
SIGNAL \CNT_T|Add0~42_combout\ : std_logic;
SIGNAL \CNT_T|Add0~44_combout\ : std_logic;
SIGNAL \CNT_T|Add0~43\ : std_logic;
SIGNAL \CNT_T|Add0~46\ : std_logic;
SIGNAL \CNT_T|Add0~47_combout\ : std_logic;
SIGNAL \CNT_T|cnt~10_combout\ : std_logic;
SIGNAL \CNT_T|Add0~48\ : std_logic;
SIGNAL \CNT_T|Add0~49_combout\ : std_logic;
SIGNAL \CNT_T|cnt~8_combout\ : std_logic;
SIGNAL \CNT_T|Add0~50\ : std_logic;
SIGNAL \CNT_T|Add0~51_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~10_combout\ : std_logic;
SIGNAL \CNT_T|cnt~5_combout\ : std_logic;
SIGNAL \CNT_T|cnt~1_combout\ : std_logic;
SIGNAL \CNT_T|Add0~0_combout\ : std_logic;
SIGNAL \CNT_T|Add0~67_combout\ : std_logic;
SIGNAL \CNT_T|Add0~1\ : std_logic;
SIGNAL \CNT_T|Add0~3\ : std_logic;
SIGNAL \CNT_T|Add0~4_combout\ : std_logic;
SIGNAL \CNT_T|Add0~69_combout\ : std_logic;
SIGNAL \CNT_T|Add0~5\ : std_logic;
SIGNAL \CNT_T|Add0~6_combout\ : std_logic;
SIGNAL \CNT_T|Add0~70_combout\ : std_logic;
SIGNAL \CNT_T|Add0~7\ : std_logic;
SIGNAL \CNT_T|Add0~9\ : std_logic;
SIGNAL \CNT_T|Add0~10_combout\ : std_logic;
SIGNAL \CNT_T|Add0~72_combout\ : std_logic;
SIGNAL \CNT_T|Add0~11\ : std_logic;
SIGNAL \CNT_T|Add0~13\ : std_logic;
SIGNAL \CNT_T|Add0~14_combout\ : std_logic;
SIGNAL \CNT_T|Add0~74_combout\ : std_logic;
SIGNAL \CNT_T|Add0~15\ : std_logic;
SIGNAL \CNT_T|Add0~16_combout\ : std_logic;
SIGNAL \CNT_T|Add0~75_combout\ : std_logic;
SIGNAL \CNT_T|Add0~17\ : std_logic;
SIGNAL \CNT_T|Add0~18_combout\ : std_logic;
SIGNAL \CNT_T|Add0~76_combout\ : std_logic;
SIGNAL \CNT_T|Add0~19\ : std_logic;
SIGNAL \CNT_T|Add0~21\ : std_logic;
SIGNAL \CNT_T|Add0~22_combout\ : std_logic;
SIGNAL \CNT_T|Add0~77_combout\ : std_logic;
SIGNAL \CNT_T|Add0~23\ : std_logic;
SIGNAL \CNT_T|Add0~24_combout\ : std_logic;
SIGNAL \CNT_T|Add0~78_combout\ : std_logic;
SIGNAL \CNT_T|Add0~25\ : std_logic;
SIGNAL \CNT_T|Add0~27\ : std_logic;
SIGNAL \CNT_T|Add0~29\ : std_logic;
SIGNAL \CNT_T|Add0~31\ : std_logic;
SIGNAL \CNT_T|Add0~32_combout\ : std_logic;
SIGNAL \CNT_T|cnt~4_combout\ : std_logic;
SIGNAL \CNT_T|Add0~33\ : std_logic;
SIGNAL \CNT_T|Add0~35\ : std_logic;
SIGNAL \CNT_T|Add0~36_combout\ : std_logic;
SIGNAL \CNT_T|Add0~45_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~9_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~11_combout\ : std_logic;
SIGNAL \CNT_T|cnt~0_combout\ : std_logic;
SIGNAL \CNT_T|cnt~7_combout\ : std_logic;
SIGNAL \CNT_T|Add0~52\ : std_logic;
SIGNAL \CNT_T|Add0~54\ : std_logic;
SIGNAL \CNT_T|Add0~55_combout\ : std_logic;
SIGNAL \CNT_T|Add0~57_combout\ : std_logic;
SIGNAL \CNT_T|Add0~56\ : std_logic;
SIGNAL \CNT_T|Add0~59\ : std_logic;
SIGNAL \CNT_T|Add0~61\ : std_logic;
SIGNAL \CNT_T|Add0~64\ : std_logic;
SIGNAL \CNT_T|Add0~65_combout\ : std_logic;
SIGNAL \CNT_T|Add0~63_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~8_combout\ : std_logic;
SIGNAL \CNT_T|cnt~2_combout\ : std_logic;
SIGNAL \CNT_T|Add0~37\ : std_logic;
SIGNAL \CNT_T|Add0~38_combout\ : std_logic;
SIGNAL \CNT_T|Add0~28_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~5_combout\ : std_logic;
SIGNAL \CNT_T|Add0~60_combout\ : std_logic;
SIGNAL \CNT_T|Add0~62_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~6_combout\ : std_logic;
SIGNAL \CNT_T|seg[0]~45_combout\ : std_logic;
SIGNAL \CNT_T|seg[0]~46_combout\ : std_logic;
SIGNAL \CNT_T|seg[1]~16\ : std_logic;
SIGNAL \CNT_T|seg[2]~17_combout\ : std_logic;
SIGNAL \CNT_T|Add0~2_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~0_combout\ : std_logic;
SIGNAL \CNT_T|Add0~8_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~1_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~3_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~4_combout\ : std_logic;
SIGNAL \CNT_T|Equal0~12_combout\ : std_logic;
SIGNAL \CNT_T|seg[2]~18\ : std_logic;
SIGNAL \CNT_T|seg[3]~19_combout\ : std_logic;
SIGNAL \CNT_T|seg[3]~20\ : std_logic;
SIGNAL \CNT_T|seg[4]~22\ : std_logic;
SIGNAL \CNT_T|seg[5]~23_combout\ : std_logic;
SIGNAL \CNT_T|seg[5]~24\ : std_logic;
SIGNAL \CNT_T|seg[6]~26\ : std_logic;
SIGNAL \CNT_T|seg[7]~28\ : std_logic;
SIGNAL \CNT_T|seg[8]~29_combout\ : std_logic;
SIGNAL \CNT_T|seg[8]~30\ : std_logic;
SIGNAL \CNT_T|seg[9]~32\ : std_logic;
SIGNAL \CNT_T|seg[10]~33_combout\ : std_logic;
SIGNAL \CNT_T|seg[10]~34\ : std_logic;
SIGNAL \CNT_T|seg[11]~36\ : std_logic;
SIGNAL \CNT_T|seg[12]~37_combout\ : std_logic;
SIGNAL \CNT_T|seg[12]~38\ : std_logic;
SIGNAL \CNT_T|seg[13]~40\ : std_logic;
SIGNAL \CNT_T|seg[14]~41_combout\ : std_logic;
SIGNAL \CNT_T|seg[14]~42\ : std_logic;
SIGNAL \CNT_T|seg[15]~43_combout\ : std_logic;
SIGNAL \SW1~combout\ : std_logic;
SIGNAL \CL_TEMPO~combout\ : std_logic;
SIGNAL \CL_TEMPO~clkctrl_outclk\ : std_logic;
SIGNAL \LD_TEMPO~combout\ : std_logic;
SIGNAL \RM|Mux0~0_combout\ : std_logic;
SIGNAL \RG_INTERVALO|saida_intervalo[15]~feeder_combout\ : std_logic;
SIGNAL \CL_INTERVALO~combout\ : std_logic;
SIGNAL \CL_INTERVALO~clkctrl_outclk\ : std_logic;
SIGNAL \LD_INTERVALO~combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[15]~0_combout\ : std_logic;
SIGNAL \CNT_T|seg[13]~39_combout\ : std_logic;
SIGNAL \RM|Mux3~0_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[12]~3_combout\ : std_logic;
SIGNAL \RM|Mux4~0_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[11]~4_combout\ : std_logic;
SIGNAL \RM|Mux1~1_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[10]~5_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[9]~6_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[8]~7_combout\ : std_logic;
SIGNAL \CNT_T|seg[7]~27_combout\ : std_logic;
SIGNAL \RM|Mux7~0_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[6]~9_combout\ : std_logic;
SIGNAL \RM|Mux8~0_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[5]~10_combout\ : std_logic;
SIGNAL \RM|Mux9~0_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[4]~11_combout\ : std_logic;
SIGNAL \CNT_T|seg[1]~15_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~1_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~3_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~5_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~7_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~9_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~11_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~13_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~15_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~17_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~19_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~21_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~23_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~25_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~27_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~29_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan0~30_combout\ : std_logic;
SIGNAL \RM|Mux0~1_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[13]~2_combout\ : std_logic;
SIGNAL \CNT_T|seg[9]~31_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[7]~8_combout\ : std_logic;
SIGNAL \CNT_T|seg[6]~25_combout\ : std_logic;
SIGNAL \RM|Mux10~0_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[3]~12_combout\ : std_logic;
SIGNAL \RM|Mux11~0_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[2]~13_combout\ : std_logic;
SIGNAL \RM|Mux12~0_combout\ : std_logic;
SIGNAL \M_TEMPORAL|escolha1[1]~14_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~1_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~3_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~5_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~7_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~9_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~11_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~13_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~15_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~17_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~19_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~21_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~23_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~25_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~27_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~29_cout\ : std_logic;
SIGNAL \COMP_TEMPORAL|LessThan1~30_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|Equal0~0_combout\ : std_logic;
SIGNAL \CNT_T|seg[4]~21_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|Equal0~1_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|Equal0~7_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|Equal0~8_combout\ : std_logic;
SIGNAL \CNT_T|seg[11]~35_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|Equal0~5_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|Equal0~9_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|Equal0~2_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|Equal0~4_combout\ : std_logic;
SIGNAL \COMP_TEMPORAL|Equal0~10_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[15]~feeder_combout\ : std_logic;
SIGNAL \CL_TEMPERATURA~combout\ : std_logic;
SIGNAL \CL_TEMPERATURA~clkctrl_outclk\ : std_logic;
SIGNAL \LD_TEMPERATURA~combout\ : std_logic;
SIGNAL \CL_UMIDADE~combout\ : std_logic;
SIGNAL \CL_UMIDADE~clkctrl_outclk\ : std_logic;
SIGNAL \LD_UMIDADE~combout\ : std_logic;
SIGNAL \SW2~combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[15]~0_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[14]~feeder_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[14]~1_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[12]~3_combout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~18_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~20_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~22_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~24_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~26_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~28_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan0~29_combout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~0_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[9]~feeder_combout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~15_combout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~17_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~19_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~21_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~23_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~25_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~27_cout\ : std_logic;
SIGNAL \COMP_SENSORES|LessThan1~28_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[0]~feeder_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[0]~13_combout\ : std_logic;
SIGNAL \COMP_SENSORES|Equal0~8_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[4]~feeder_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[4]~9_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[5]~feeder_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[5]~8_combout\ : std_logic;
SIGNAL \COMP_SENSORES|Equal0~6_combout\ : std_logic;
SIGNAL \RM|Mux1~0_combout\ : std_logic;
SIGNAL \COMP_SENSORES|Equal0~2_combout\ : std_logic;
SIGNAL \RG_TEMPERATURA|saida_temperatura[7]~feeder_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[7]~6_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[2]~11_combout\ : std_logic;
SIGNAL \COMP_SENSORES|Equal0~0_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[10]~5_combout\ : std_logic;
SIGNAL \COMP_SENSORES|Equal0~1_combout\ : std_logic;
SIGNAL \COMP_SENSORES|Equal0~5_combout\ : std_logic;
SIGNAL \M_SENSORES|escolha2[11]~4_combout\ : std_logic;
SIGNAL \COMP_SENSORES|Equal0~7_combout\ : std_logic;
SIGNAL \COMP_SENSORES|Equal0~9_combout\ : std_logic;
SIGNAL \CNT_T|seg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CNT_T|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DT_UMID~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DT_TEMPO~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DT_TEMP~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ADD~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RG_INTERVALO|saida_intervalo\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RG_TEMPERATURA|saida_temperatura\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RG_TEMPO|saida_tempo\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RG_UMIDADE|saida_umidade\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_DT_UMID <= DT_UMID;
ww_DT_TEMP <= DT_TEMP;
ww_DT_TEMPO <= DT_TEMPO;
ww_LD_TEMPERATURA <= LD_TEMPERATURA;
ww_CL_TEMPERATURA <= CL_TEMPERATURA;
ww_LD_UMIDADE <= LD_UMIDADE;
ww_CL_UMIDADE <= CL_UMIDADE;
ww_LD_TEMPO <= LD_TEMPO;
ww_CL_TEMPO <= CL_TEMPO;
ww_LD_INTERVALO <= LD_INTERVALO;
ww_CL_INTERVALO <= CL_INTERVALO;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
ww_EN_CONTADOR <= EN_CONTADOR;
ww_RST_CONTADOR <= RST_CONTADOR;
ww_EN_ROM <= EN_ROM;
ww_ADD <= ADD;
GT_TEMPORAL <= ww_GT_TEMPORAL;
LT_TEMPORAL <= ww_LT_TEMPORAL;
EQ_TEMPORAL <= ww_EQ_TEMPORAL;
GT_SENSORES <= ww_GT_SENSORES;
LT_SENSORES <= ww_LT_SENSORES;
EQ_SENSORES <= ww_EQ_SENSORES;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\CL_TEMPERATURA~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CL_TEMPERATURA~combout\);

\CL_TEMPO~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CL_TEMPO~combout\);

\CL_INTERVALO~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CL_INTERVALO~combout\);

\CL_UMIDADE~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CL_UMIDADE~combout\);

-- Location: LCCOMB_X63_Y29_N16
\COMP_SENSORES|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~1_cout\ = CARRY(\M_SENSORES|escolha2[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M_SENSORES|escolha2[0]~13_combout\,
	datad => VCC,
	cout => \COMP_SENSORES|LessThan0~1_cout\);

-- Location: LCCOMB_X63_Y29_N18
\COMP_SENSORES|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~3_cout\ = CARRY((\RM|Mux12~0_combout\ & ((!\COMP_SENSORES|LessThan0~1_cout\) # (!\M_SENSORES|escolha2[1]~12_combout\))) # (!\RM|Mux12~0_combout\ & (!\M_SENSORES|escolha2[1]~12_combout\ & !\COMP_SENSORES|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux12~0_combout\,
	datab => \M_SENSORES|escolha2[1]~12_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan0~1_cout\,
	cout => \COMP_SENSORES|LessThan0~3_cout\);

-- Location: LCCOMB_X63_Y29_N20
\COMP_SENSORES|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~5_cout\ = CARRY((\RM|Mux11~0_combout\ & (\M_SENSORES|escolha2[2]~11_combout\ & !\COMP_SENSORES|LessThan0~3_cout\)) # (!\RM|Mux11~0_combout\ & ((\M_SENSORES|escolha2[2]~11_combout\) # (!\COMP_SENSORES|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux11~0_combout\,
	datab => \M_SENSORES|escolha2[2]~11_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan0~3_cout\,
	cout => \COMP_SENSORES|LessThan0~5_cout\);

-- Location: LCCOMB_X63_Y29_N22
\COMP_SENSORES|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~7_cout\ = CARRY((\RM|Mux10~0_combout\ & ((!\COMP_SENSORES|LessThan0~5_cout\) # (!\M_SENSORES|escolha2[3]~10_combout\))) # (!\RM|Mux10~0_combout\ & (!\M_SENSORES|escolha2[3]~10_combout\ & !\COMP_SENSORES|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux10~0_combout\,
	datab => \M_SENSORES|escolha2[3]~10_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan0~5_cout\,
	cout => \COMP_SENSORES|LessThan0~7_cout\);

-- Location: LCCOMB_X63_Y29_N24
\COMP_SENSORES|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~9_cout\ = CARRY((\M_SENSORES|escolha2[4]~9_combout\ & ((!\COMP_SENSORES|LessThan0~7_cout\) # (!\RM|Mux9~0_combout\))) # (!\M_SENSORES|escolha2[4]~9_combout\ & (!\RM|Mux9~0_combout\ & !\COMP_SENSORES|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_SENSORES|escolha2[4]~9_combout\,
	datab => \RM|Mux9~0_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan0~7_cout\,
	cout => \COMP_SENSORES|LessThan0~9_cout\);

-- Location: LCCOMB_X63_Y29_N26
\COMP_SENSORES|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~11_cout\ = CARRY((\RM|Mux8~0_combout\ & ((!\COMP_SENSORES|LessThan0~9_cout\) # (!\M_SENSORES|escolha2[5]~8_combout\))) # (!\RM|Mux8~0_combout\ & (!\M_SENSORES|escolha2[5]~8_combout\ & !\COMP_SENSORES|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux8~0_combout\,
	datab => \M_SENSORES|escolha2[5]~8_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan0~9_cout\,
	cout => \COMP_SENSORES|LessThan0~11_cout\);

-- Location: LCCOMB_X63_Y29_N28
\COMP_SENSORES|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~13_cout\ = CARRY((\RM|Mux7~0_combout\ & (\M_SENSORES|escolha2[6]~7_combout\ & !\COMP_SENSORES|LessThan0~11_cout\)) # (!\RM|Mux7~0_combout\ & ((\M_SENSORES|escolha2[6]~7_combout\) # (!\COMP_SENSORES|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux7~0_combout\,
	datab => \M_SENSORES|escolha2[6]~7_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan0~11_cout\,
	cout => \COMP_SENSORES|LessThan0~13_cout\);

-- Location: LCCOMB_X63_Y29_N30
\COMP_SENSORES|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~14_combout\ = (\RM|Mux0~0_combout\ & (\COMP_SENSORES|LessThan0~13_cout\ & \M_SENSORES|escolha2[7]~6_combout\)) # (!\RM|Mux0~0_combout\ & ((\COMP_SENSORES|LessThan0~13_cout\) # (\M_SENSORES|escolha2[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux0~0_combout\,
	datad => \M_SENSORES|escolha2[7]~6_combout\,
	cin => \COMP_SENSORES|LessThan0~13_cout\,
	combout => \COMP_SENSORES|LessThan0~14_combout\);

-- Location: LCCOMB_X63_Y29_N2
\COMP_SENSORES|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~2_cout\ = CARRY((\RM|Mux12~0_combout\ & !\M_SENSORES|escolha2[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux12~0_combout\,
	datab => \M_SENSORES|escolha2[1]~12_combout\,
	datad => VCC,
	cout => \COMP_SENSORES|LessThan1~2_cout\);

-- Location: LCCOMB_X63_Y29_N4
\COMP_SENSORES|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~4_cout\ = CARRY((\RM|Mux11~0_combout\ & (\M_SENSORES|escolha2[2]~11_combout\ & !\COMP_SENSORES|LessThan1~2_cout\)) # (!\RM|Mux11~0_combout\ & ((\M_SENSORES|escolha2[2]~11_combout\) # (!\COMP_SENSORES|LessThan1~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux11~0_combout\,
	datab => \M_SENSORES|escolha2[2]~11_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan1~2_cout\,
	cout => \COMP_SENSORES|LessThan1~4_cout\);

-- Location: LCCOMB_X63_Y29_N6
\COMP_SENSORES|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~6_cout\ = CARRY((\RM|Mux10~0_combout\ & ((!\COMP_SENSORES|LessThan1~4_cout\) # (!\M_SENSORES|escolha2[3]~10_combout\))) # (!\RM|Mux10~0_combout\ & (!\M_SENSORES|escolha2[3]~10_combout\ & !\COMP_SENSORES|LessThan1~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux10~0_combout\,
	datab => \M_SENSORES|escolha2[3]~10_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan1~4_cout\,
	cout => \COMP_SENSORES|LessThan1~6_cout\);

-- Location: LCCOMB_X63_Y29_N8
\COMP_SENSORES|LessThan1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~8_cout\ = CARRY((\M_SENSORES|escolha2[4]~9_combout\ & ((!\COMP_SENSORES|LessThan1~6_cout\) # (!\RM|Mux9~0_combout\))) # (!\M_SENSORES|escolha2[4]~9_combout\ & (!\RM|Mux9~0_combout\ & !\COMP_SENSORES|LessThan1~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_SENSORES|escolha2[4]~9_combout\,
	datab => \RM|Mux9~0_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan1~6_cout\,
	cout => \COMP_SENSORES|LessThan1~8_cout\);

-- Location: LCCOMB_X63_Y29_N10
\COMP_SENSORES|LessThan1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~10_cout\ = CARRY((\RM|Mux8~0_combout\ & ((!\COMP_SENSORES|LessThan1~8_cout\) # (!\M_SENSORES|escolha2[5]~8_combout\))) # (!\RM|Mux8~0_combout\ & (!\M_SENSORES|escolha2[5]~8_combout\ & !\COMP_SENSORES|LessThan1~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux8~0_combout\,
	datab => \M_SENSORES|escolha2[5]~8_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan1~8_cout\,
	cout => \COMP_SENSORES|LessThan1~10_cout\);

-- Location: LCCOMB_X63_Y29_N12
\COMP_SENSORES|LessThan1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~12_cout\ = CARRY((\RM|Mux7~0_combout\ & (\M_SENSORES|escolha2[6]~7_combout\ & !\COMP_SENSORES|LessThan1~10_cout\)) # (!\RM|Mux7~0_combout\ & ((\M_SENSORES|escolha2[6]~7_combout\) # (!\COMP_SENSORES|LessThan1~10_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux7~0_combout\,
	datab => \M_SENSORES|escolha2[6]~7_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan1~10_cout\,
	cout => \COMP_SENSORES|LessThan1~12_cout\);

-- Location: LCCOMB_X63_Y29_N14
\COMP_SENSORES|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~13_combout\ = (\RM|Mux0~0_combout\ & ((!\M_SENSORES|escolha2[7]~6_combout\) # (!\COMP_SENSORES|LessThan1~12_cout\))) # (!\RM|Mux0~0_combout\ & (!\COMP_SENSORES|LessThan1~12_cout\ & !\M_SENSORES|escolha2[7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux0~0_combout\,
	datad => \M_SENSORES|escolha2[7]~6_combout\,
	cin => \COMP_SENSORES|LessThan1~12_cout\,
	combout => \COMP_SENSORES|LessThan1~13_combout\);

-- Location: LCCOMB_X55_Y23_N12
\CNT_T|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~12_combout\ = (\CNT_T|cnt\(6) & (\CNT_T|Add0~11\ $ (GND))) # (!\CNT_T|cnt\(6) & (!\CNT_T|Add0~11\ & VCC))
-- \CNT_T|Add0~13\ = CARRY((\CNT_T|cnt\(6) & !\CNT_T|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|cnt\(6),
	datad => VCC,
	cin => \CNT_T|Add0~11\,
	combout => \CNT_T|Add0~12_combout\,
	cout => \CNT_T|Add0~13\);

-- Location: LCCOMB_X55_Y23_N20
\CNT_T|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~20_combout\ = (\CNT_T|cnt\(10) & (\CNT_T|Add0~19\ $ (GND))) # (!\CNT_T|cnt\(10) & (!\CNT_T|Add0~19\ & VCC))
-- \CNT_T|Add0~21\ = CARRY((\CNT_T|cnt\(10) & !\CNT_T|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(10),
	datad => VCC,
	cin => \CNT_T|Add0~19\,
	combout => \CNT_T|Add0~20_combout\,
	cout => \CNT_T|Add0~21\);

-- Location: LCCOMB_X55_Y23_N26
\CNT_T|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~26_combout\ = (\CNT_T|cnt\(13) & (!\CNT_T|Add0~25\)) # (!\CNT_T|cnt\(13) & ((\CNT_T|Add0~25\) # (GND)))
-- \CNT_T|Add0~27\ = CARRY((!\CNT_T|Add0~25\) # (!\CNT_T|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|cnt\(13),
	datad => VCC,
	cin => \CNT_T|Add0~25\,
	combout => \CNT_T|Add0~26_combout\,
	cout => \CNT_T|Add0~27\);

-- Location: LCCOMB_X55_Y23_N30
\CNT_T|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~30_combout\ = (\CNT_T|cnt\(15) & (!\CNT_T|Add0~29\)) # (!\CNT_T|cnt\(15) & ((\CNT_T|Add0~29\) # (GND)))
-- \CNT_T|Add0~31\ = CARRY((!\CNT_T|Add0~29\) # (!\CNT_T|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(15),
	datad => VCC,
	cin => \CNT_T|Add0~29\,
	combout => \CNT_T|Add0~30_combout\,
	cout => \CNT_T|Add0~31\);

-- Location: LCCOMB_X55_Y22_N2
\CNT_T|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~34_combout\ = (\CNT_T|cnt\(17) & (!\CNT_T|Add0~33\)) # (!\CNT_T|cnt\(17) & ((\CNT_T|Add0~33\) # (GND)))
-- \CNT_T|Add0~35\ = CARRY((!\CNT_T|Add0~33\) # (!\CNT_T|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|cnt\(17),
	datad => VCC,
	cin => \CNT_T|Add0~33\,
	combout => \CNT_T|Add0~34_combout\,
	cout => \CNT_T|Add0~35\);

-- Location: LCCOMB_X55_Y22_N8
\CNT_T|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~40_combout\ = (\CNT_T|cnt\(20) & (\CNT_T|Add0~39\ $ (GND))) # (!\CNT_T|cnt\(20) & (!\CNT_T|Add0~39\ & VCC))
-- \CNT_T|Add0~41\ = CARRY((\CNT_T|cnt\(20) & !\CNT_T|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(20),
	datad => VCC,
	cin => \CNT_T|Add0~39\,
	combout => \CNT_T|Add0~40_combout\,
	cout => \CNT_T|Add0~41\);

-- Location: LCCOMB_X55_Y22_N20
\CNT_T|Add0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~53_combout\ = (\CNT_T|cnt\(26) & (\CNT_T|Add0~52\ $ (GND))) # (!\CNT_T|cnt\(26) & (!\CNT_T|Add0~52\ & VCC))
-- \CNT_T|Add0~54\ = CARRY((\CNT_T|cnt\(26) & !\CNT_T|Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(26),
	datad => VCC,
	cin => \CNT_T|Add0~52\,
	combout => \CNT_T|Add0~53_combout\,
	cout => \CNT_T|Add0~54\);

-- Location: LCFF_X64_Y26_N3
\RG_INTERVALO|saida_intervalo[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \RM|Mux1~0_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(14));

-- Location: LCFF_X64_Y26_N25
\RG_TEMPO|saida_tempo[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(14),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(14));

-- Location: LCCOMB_X64_Y26_N24
\M_TEMPORAL|escolha1[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[14]~1_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(14)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(14),
	datad => \RG_INTERVALO|saida_intervalo\(14),
	combout => \M_TEMPORAL|escolha1[14]~1_combout\);

-- Location: LCFF_X64_Y23_N25
\RG_TEMPO|saida_tempo[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPO|saida_tempo[7]~feeder_combout\,
	aclr => \CL_TEMPO~clkctrl_outclk\,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(7));

-- Location: LCFF_X64_Y23_N9
\RG_TEMPO|saida_tempo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(0),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(0));

-- Location: LCCOMB_X64_Y23_N8
\M_TEMPORAL|escolha1[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[0]~15_combout\ = (!\SW1~combout\ & \RG_TEMPO|saida_tempo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(0),
	combout => \M_TEMPORAL|escolha1[0]~15_combout\);

-- Location: LCCOMB_X64_Y23_N2
\COMP_TEMPORAL|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|Equal0~3_combout\ = \CNT_T|seg\(7) $ (((\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(15)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG_TEMPO|saida_tempo\(7),
	datab => \RG_INTERVALO|saida_intervalo\(15),
	datac => \SW1~combout\,
	datad => \CNT_T|seg\(7),
	combout => \COMP_TEMPORAL|Equal0~3_combout\);

-- Location: LCCOMB_X63_Y23_N12
\COMP_TEMPORAL|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|Equal0~6_combout\ = (\M_TEMPORAL|escolha1[14]~1_combout\ & (\CNT_T|seg\(14) & (\M_TEMPORAL|escolha1[13]~2_combout\ $ (!\CNT_T|seg\(13))))) # (!\M_TEMPORAL|escolha1[14]~1_combout\ & (!\CNT_T|seg\(14) & (\M_TEMPORAL|escolha1[13]~2_combout\ $ 
-- (!\CNT_T|seg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[14]~1_combout\,
	datab => \CNT_T|seg\(14),
	datac => \M_TEMPORAL|escolha1[13]~2_combout\,
	datad => \CNT_T|seg\(13),
	combout => \COMP_TEMPORAL|Equal0~6_combout\);

-- Location: LCFF_X64_Y30_N5
\RG_UMIDADE|saida_umidade[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(13),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(13));

-- Location: LCFF_X64_Y30_N27
\RG_TEMPERATURA|saida_temperatura[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[13]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(13));

-- Location: LCCOMB_X64_Y30_N4
\M_SENSORES|escolha2[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[13]~2_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(13)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(13),
	datac => \RG_UMIDADE|saida_umidade\(13),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[13]~2_combout\);

-- Location: LCFF_X64_Y30_N7
\RG_TEMPERATURA|saida_temperatura[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[11]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(11));

-- Location: LCFF_X64_Y32_N7
\RG_TEMPERATURA|saida_temperatura[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[10]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(10));

-- Location: LCFF_X64_Y29_N21
\RG_UMIDADE|saida_umidade[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(6),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(6));

-- Location: LCFF_X64_Y29_N23
\RG_TEMPERATURA|saida_temperatura[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[6]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(6));

-- Location: LCCOMB_X64_Y29_N20
\M_SENSORES|escolha2[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[6]~7_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(6)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(6),
	datac => \RG_UMIDADE|saida_umidade\(6),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[6]~7_combout\);

-- Location: LCFF_X64_Y32_N29
\RG_UMIDADE|saida_umidade[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(3),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(3));

-- Location: LCFF_X64_Y32_N19
\RG_TEMPERATURA|saida_temperatura[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[3]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(3));

-- Location: LCCOMB_X64_Y32_N28
\M_SENSORES|escolha2[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[3]~10_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(3)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(3),
	datac => \RG_UMIDADE|saida_umidade\(3),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[3]~10_combout\);

-- Location: LCFF_X64_Y30_N17
\RG_UMIDADE|saida_umidade[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(1),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(1));

-- Location: LCFF_X64_Y30_N15
\RG_TEMPERATURA|saida_temperatura[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[1]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(1));

-- Location: LCCOMB_X64_Y30_N16
\M_SENSORES|escolha2[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[1]~12_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(1)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(1),
	datac => \RG_UMIDADE|saida_umidade\(1),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[1]~12_combout\);

-- Location: LCFF_X64_Y29_N11
\RG_TEMPERATURA|saida_temperatura[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMP~combout\(8),
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(8));

-- Location: LCCOMB_X64_Y29_N16
\COMP_SENSORES|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~16_combout\ = (\COMP_SENSORES|LessThan0~14_combout\) # (((\RG_TEMPERATURA|saida_temperatura\(9) & !\SW2~combout\)) # (!\COMP_SENSORES|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_SENSORES|LessThan0~14_combout\,
	datab => \COMP_SENSORES|LessThan1~0_combout\,
	datac => \RG_TEMPERATURA|saida_temperatura\(9),
	datad => \SW2~combout\,
	combout => \COMP_SENSORES|LessThan0~16_combout\);

-- Location: LCCOMB_X63_Y29_N0
\COMP_SENSORES|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|Equal0~3_combout\ = (\RM|Mux12~0_combout\ & (\M_SENSORES|escolha2[1]~12_combout\ & (\M_SENSORES|escolha2[3]~10_combout\ $ (!\RM|Mux10~0_combout\)))) # (!\RM|Mux12~0_combout\ & (!\M_SENSORES|escolha2[1]~12_combout\ & 
-- (\M_SENSORES|escolha2[3]~10_combout\ $ (!\RM|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux12~0_combout\,
	datab => \M_SENSORES|escolha2[3]~10_combout\,
	datac => \M_SENSORES|escolha2[1]~12_combout\,
	datad => \RM|Mux10~0_combout\,
	combout => \COMP_SENSORES|Equal0~3_combout\);

-- Location: LCCOMB_X64_Y29_N6
\COMP_SENSORES|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|Equal0~4_combout\ = (\COMP_SENSORES|Equal0~3_combout\ & (\COMP_SENSORES|LessThan1~0_combout\ & ((\SW2~combout\) # (!\RG_TEMPERATURA|saida_temperatura\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_SENSORES|Equal0~3_combout\,
	datab => \COMP_SENSORES|LessThan1~0_combout\,
	datac => \RG_TEMPERATURA|saida_temperatura\(9),
	datad => \SW2~combout\,
	combout => \COMP_SENSORES|Equal0~4_combout\);

-- Location: LCFF_X55_Y23_N7
\CNT_T|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~68_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(1));

-- Location: LCFF_X55_Y23_N13
\CNT_T|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~71_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(4));

-- Location: LCFF_X55_Y23_N21
\CNT_T|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~73_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(6));

-- Location: LCCOMB_X56_Y23_N6
\CNT_T|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~2_combout\ = (\RST_CONTADOR~combout\) # ((!\CNT_T|Add0~12_combout\ & (!\CNT_T|Add0~16_combout\ & !\CNT_T|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~12_combout\,
	datab => \RST_CONTADOR~combout\,
	datac => \CNT_T|Add0~16_combout\,
	datad => \CNT_T|Add0~14_combout\,
	combout => \CNT_T|Equal0~2_combout\);

-- Location: LCFF_X55_Y23_N11
\CNT_T|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~79_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(13));

-- Location: LCFF_X55_Y23_N25
\CNT_T|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~80_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(14));

-- Location: LCFF_X54_Y22_N31
\CNT_T|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(17));

-- Location: LCFF_X54_Y22_N15
\CNT_T|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(22));

-- Location: LCFF_X56_Y22_N27
\CNT_T|cnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(29));

-- Location: LCFF_X56_Y23_N21
\CNT_T|cnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(28));

-- Location: LCCOMB_X56_Y22_N6
\CNT_T|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~7_combout\ = (\CNT_T|Add0~34_combout\ & (\CNT_T|Add0~20_combout\ & (\CNT_T|Add0~32_combout\ & \CNT_T|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~34_combout\,
	datab => \CNT_T|Add0~20_combout\,
	datac => \CNT_T|Add0~32_combout\,
	datad => \CNT_T|Add0~30_combout\,
	combout => \CNT_T|Equal0~7_combout\);

-- Location: LCFF_X54_Y22_N13
\CNT_T|cnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|Add0~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(30));

-- Location: LCCOMB_X54_Y23_N12
\CNT_T|Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~68_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~2_combout\,
	combout => \CNT_T|Add0~68_combout\);

-- Location: LCCOMB_X56_Y23_N0
\CNT_T|Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~71_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~8_combout\,
	combout => \CNT_T|Add0~71_combout\);

-- Location: LCCOMB_X54_Y23_N6
\CNT_T|Add0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~73_combout\ = (\CNT_T|Add0~12_combout\ & !\RST_CONTADOR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_T|Add0~12_combout\,
	datad => \RST_CONTADOR~combout\,
	combout => \CNT_T|Add0~73_combout\);

-- Location: LCCOMB_X54_Y23_N0
\CNT_T|Add0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~79_combout\ = (\CNT_T|Add0~26_combout\ & !\RST_CONTADOR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_T|Add0~26_combout\,
	datad => \RST_CONTADOR~combout\,
	combout => \CNT_T|Add0~79_combout\);

-- Location: LCCOMB_X54_Y23_N18
\CNT_T|Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~80_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~28_combout\,
	combout => \CNT_T|Add0~80_combout\);

-- Location: LCCOMB_X54_Y22_N30
\CNT_T|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~3_combout\ = (!\RST_CONTADOR~combout\ & (\CNT_T|Add0~34_combout\ & ((!\CNT_T|cnt~0_combout\) # (!\CNT_T|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datab => \CNT_T|Add0~34_combout\,
	datac => \CNT_T|Equal0~8_combout\,
	datad => \CNT_T|cnt~0_combout\,
	combout => \CNT_T|cnt~3_combout\);

-- Location: LCCOMB_X54_Y22_N14
\CNT_T|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~11_combout\ = (!\RST_CONTADOR~combout\ & (\CNT_T|Add0~45_combout\ & ((!\CNT_T|cnt~0_combout\) # (!\CNT_T|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datab => \CNT_T|Add0~45_combout\,
	datac => \CNT_T|Equal0~8_combout\,
	datad => \CNT_T|cnt~0_combout\,
	combout => \CNT_T|cnt~11_combout\);

-- Location: LCCOMB_X56_Y23_N20
\CNT_T|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~12_combout\ = (!\RST_CONTADOR~combout\ & (\CNT_T|Add0~58_combout\ & ((\CNT_T|seg[0]~45_combout\) # (!\CNT_T|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datab => \CNT_T|Add0~58_combout\,
	datac => \CNT_T|Equal0~6_combout\,
	datad => \CNT_T|seg[0]~45_combout\,
	combout => \CNT_T|cnt~12_combout\);

-- Location: LCCOMB_X54_Y22_N12
\CNT_T|Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~82_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~63_combout\,
	combout => \CNT_T|Add0~82_combout\);

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADD[0]~I\ : cycloneii_io
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
	padio => ww_ADD(0),
	combout => \ADD~combout\(0));

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

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN_CONTADOR~I\ : cycloneii_io
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
	padio => ww_EN_CONTADOR,
	combout => \EN_CONTADOR~combout\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[14]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(14),
	combout => \DT_TEMPO~combout\(14));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[7]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(7),
	combout => \DT_TEMPO~combout\(7));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[0]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(0),
	combout => \DT_TEMPO~combout\(0));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[13]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(13),
	combout => \DT_UMID~combout\(13));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[13]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(13),
	combout => \DT_TEMP~combout\(13));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[11]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(11),
	combout => \DT_TEMP~combout\(11));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[10]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(10),
	combout => \DT_TEMP~combout\(10));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[6]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(6),
	combout => \DT_UMID~combout\(6));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[6]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(6),
	combout => \DT_TEMP~combout\(6));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[3]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(3),
	combout => \DT_UMID~combout\(3));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[3]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(3),
	combout => \DT_TEMP~combout\(3));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[1]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(1),
	combout => \DT_UMID~combout\(1));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[1]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(1),
	combout => \DT_TEMP~combout\(1));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[8]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(8),
	combout => \DT_TEMP~combout\(8));

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

-- Location: LCCOMB_X64_Y23_N24
\RG_TEMPO|saida_tempo[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPO|saida_tempo[7]~feeder_combout\ = \DT_TEMPO~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMPO~combout\(7),
	combout => \RG_TEMPO|saida_tempo[7]~feeder_combout\);

-- Location: LCCOMB_X64_Y30_N26
\RG_TEMPERATURA|saida_temperatura[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[13]~feeder_combout\ = \DT_TEMP~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(13),
	combout => \RG_TEMPERATURA|saida_temperatura[13]~feeder_combout\);

-- Location: LCCOMB_X64_Y30_N6
\RG_TEMPERATURA|saida_temperatura[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[11]~feeder_combout\ = \DT_TEMP~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(11),
	combout => \RG_TEMPERATURA|saida_temperatura[11]~feeder_combout\);

-- Location: LCCOMB_X64_Y32_N6
\RG_TEMPERATURA|saida_temperatura[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[10]~feeder_combout\ = \DT_TEMP~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(10),
	combout => \RG_TEMPERATURA|saida_temperatura[10]~feeder_combout\);

-- Location: LCCOMB_X64_Y29_N22
\RG_TEMPERATURA|saida_temperatura[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[6]~feeder_combout\ = \DT_TEMP~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(6),
	combout => \RG_TEMPERATURA|saida_temperatura[6]~feeder_combout\);

-- Location: LCCOMB_X64_Y32_N18
\RG_TEMPERATURA|saida_temperatura[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[3]~feeder_combout\ = \DT_TEMP~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(3),
	combout => \RG_TEMPERATURA|saida_temperatura[3]~feeder_combout\);

-- Location: LCCOMB_X64_Y30_N14
\RG_TEMPERATURA|saida_temperatura[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[1]~feeder_combout\ = \DT_TEMP~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(1),
	combout => \RG_TEMPERATURA|saida_temperatura[1]~feeder_combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RST_CONTADOR~I\ : cycloneii_io
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
	padio => ww_RST_CONTADOR,
	combout => \RST_CONTADOR~combout\);

-- Location: LCCOMB_X54_Y22_N0
\CNT_T|Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~81_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~38_combout\,
	combout => \CNT_T|Add0~81_combout\);

-- Location: LCFF_X55_Y22_N3
\CNT_T|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~81_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(19));

-- Location: LCCOMB_X54_Y22_N10
\CNT_T|Add0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~83_combout\ = (\RST_CONTADOR~combout\) # (!\CNT_T|Add0~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~65_combout\,
	combout => \CNT_T|Add0~83_combout\);

-- Location: LCFF_X54_Y22_N11
\CNT_T|cnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(31));

-- Location: LCCOMB_X55_Y22_N24
\CNT_T|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~58_combout\ = (\CNT_T|cnt\(28) & (\CNT_T|Add0~56\ $ (GND))) # (!\CNT_T|cnt\(28) & (!\CNT_T|Add0~56\ & VCC))
-- \CNT_T|Add0~59\ = CARRY((\CNT_T|cnt\(28) & !\CNT_T|Add0~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|cnt\(28),
	datad => VCC,
	cin => \CNT_T|Add0~56\,
	combout => \CNT_T|Add0~58_combout\,
	cout => \CNT_T|Add0~59\);

-- Location: LCCOMB_X56_Y22_N22
\CNT_T|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~9_combout\ = (!\RST_CONTADOR~combout\ & (\CNT_T|Add0~49_combout\ & ((!\CNT_T|cnt~0_combout\) # (!\CNT_T|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datab => \CNT_T|Add0~49_combout\,
	datac => \CNT_T|Equal0~8_combout\,
	datad => \CNT_T|cnt~0_combout\,
	combout => \CNT_T|cnt~9_combout\);

-- Location: LCFF_X56_Y22_N23
\CNT_T|cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(24));

-- Location: LCCOMB_X56_Y22_N30
\CNT_T|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~6_combout\ = (\CNT_T|Add0~40_combout\ & (!\RST_CONTADOR~combout\ & ((!\CNT_T|cnt~0_combout\) # (!\CNT_T|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~40_combout\,
	datab => \RST_CONTADOR~combout\,
	datac => \CNT_T|Equal0~8_combout\,
	datad => \CNT_T|cnt~0_combout\,
	combout => \CNT_T|cnt~6_combout\);

-- Location: LCFF_X56_Y22_N31
\CNT_T|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(20));

-- Location: LCCOMB_X55_Y22_N6
\CNT_T|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~38_combout\ = (\CNT_T|cnt\(19) & (!\CNT_T|Add0~37\)) # (!\CNT_T|cnt\(19) & ((\CNT_T|Add0~37\) # (GND)))
-- \CNT_T|Add0~39\ = CARRY((!\CNT_T|Add0~37\) # (!\CNT_T|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(19),
	datad => VCC,
	cin => \CNT_T|Add0~37\,
	combout => \CNT_T|Add0~38_combout\,
	cout => \CNT_T|Add0~39\);

-- Location: LCCOMB_X55_Y22_N10
\CNT_T|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~42_combout\ = (\CNT_T|cnt\(21) & (!\CNT_T|Add0~41\)) # (!\CNT_T|cnt\(21) & ((\CNT_T|Add0~41\) # (GND)))
-- \CNT_T|Add0~43\ = CARRY((!\CNT_T|Add0~41\) # (!\CNT_T|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(21),
	datad => VCC,
	cin => \CNT_T|Add0~41\,
	combout => \CNT_T|Add0~42_combout\,
	cout => \CNT_T|Add0~43\);

-- Location: LCCOMB_X56_Y22_N20
\CNT_T|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~44_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~42_combout\,
	combout => \CNT_T|Add0~44_combout\);

-- Location: LCFF_X55_Y22_N31
\CNT_T|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~44_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(21));

-- Location: LCCOMB_X55_Y22_N12
\CNT_T|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~45_combout\ = (\CNT_T|cnt\(22) & (\CNT_T|Add0~43\ $ (GND))) # (!\CNT_T|cnt\(22) & (!\CNT_T|Add0~43\ & VCC))
-- \CNT_T|Add0~46\ = CARRY((\CNT_T|cnt\(22) & !\CNT_T|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|cnt\(22),
	datad => VCC,
	cin => \CNT_T|Add0~43\,
	combout => \CNT_T|Add0~45_combout\,
	cout => \CNT_T|Add0~46\);

-- Location: LCCOMB_X55_Y22_N14
\CNT_T|Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~47_combout\ = (\CNT_T|cnt\(23) & (!\CNT_T|Add0~46\)) # (!\CNT_T|cnt\(23) & ((\CNT_T|Add0~46\) # (GND)))
-- \CNT_T|Add0~48\ = CARRY((!\CNT_T|Add0~46\) # (!\CNT_T|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(23),
	datad => VCC,
	cin => \CNT_T|Add0~46\,
	combout => \CNT_T|Add0~47_combout\,
	cout => \CNT_T|Add0~48\);

-- Location: LCCOMB_X54_Y22_N4
\CNT_T|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~10_combout\ = (!\RST_CONTADOR~combout\ & (\CNT_T|Add0~47_combout\ & ((!\CNT_T|cnt~0_combout\) # (!\CNT_T|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datab => \CNT_T|Add0~47_combout\,
	datac => \CNT_T|Equal0~8_combout\,
	datad => \CNT_T|cnt~0_combout\,
	combout => \CNT_T|cnt~10_combout\);

-- Location: LCFF_X54_Y22_N5
\CNT_T|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(23));

-- Location: LCCOMB_X55_Y22_N16
\CNT_T|Add0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~49_combout\ = (\CNT_T|cnt\(24) & (\CNT_T|Add0~48\ $ (GND))) # (!\CNT_T|cnt\(24) & (!\CNT_T|Add0~48\ & VCC))
-- \CNT_T|Add0~50\ = CARRY((\CNT_T|cnt\(24) & !\CNT_T|Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(24),
	datad => VCC,
	cin => \CNT_T|Add0~48\,
	combout => \CNT_T|Add0~49_combout\,
	cout => \CNT_T|Add0~50\);

-- Location: LCCOMB_X57_Y22_N30
\CNT_T|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~8_combout\ = (!\RST_CONTADOR~combout\ & (\CNT_T|Add0~51_combout\ & ((!\CNT_T|cnt~0_combout\) # (!\CNT_T|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Equal0~8_combout\,
	datab => \RST_CONTADOR~combout\,
	datac => \CNT_T|Add0~51_combout\,
	datad => \CNT_T|cnt~0_combout\,
	combout => \CNT_T|cnt~8_combout\);

-- Location: LCFF_X57_Y22_N31
\CNT_T|cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(25));

-- Location: LCCOMB_X55_Y22_N18
\CNT_T|Add0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~51_combout\ = (\CNT_T|cnt\(25) & (!\CNT_T|Add0~50\)) # (!\CNT_T|cnt\(25) & ((\CNT_T|Add0~50\) # (GND)))
-- \CNT_T|Add0~52\ = CARRY((!\CNT_T|Add0~50\) # (!\CNT_T|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(25),
	datad => VCC,
	cin => \CNT_T|Add0~50\,
	combout => \CNT_T|Add0~51_combout\,
	cout => \CNT_T|Add0~52\);

-- Location: LCCOMB_X56_Y22_N24
\CNT_T|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~10_combout\ = (\CNT_T|Add0~49_combout\ & \CNT_T|Add0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|Add0~49_combout\,
	datad => \CNT_T|Add0~51_combout\,
	combout => \CNT_T|Equal0~10_combout\);

-- Location: LCCOMB_X56_Y23_N30
\CNT_T|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~5_combout\ = (\CNT_T|Add0~30_combout\ & (!\RST_CONTADOR~combout\ & ((!\CNT_T|cnt~0_combout\) # (!\CNT_T|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~30_combout\,
	datab => \RST_CONTADOR~combout\,
	datac => \CNT_T|Equal0~8_combout\,
	datad => \CNT_T|cnt~0_combout\,
	combout => \CNT_T|cnt~5_combout\);

-- Location: LCFF_X56_Y23_N31
\CNT_T|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(15));

-- Location: LCCOMB_X56_Y23_N24
\CNT_T|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~1_combout\ = (\CNT_T|Add0~20_combout\ & (!\RST_CONTADOR~combout\ & ((!\CNT_T|cnt~0_combout\) # (!\CNT_T|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~20_combout\,
	datab => \RST_CONTADOR~combout\,
	datac => \CNT_T|Equal0~8_combout\,
	datad => \CNT_T|cnt~0_combout\,
	combout => \CNT_T|cnt~1_combout\);

-- Location: LCFF_X56_Y23_N25
\CNT_T|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(10));

-- Location: LCCOMB_X55_Y23_N0
\CNT_T|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~0_combout\ = (\EN_CONTADOR~combout\ & (\CNT_T|cnt\(0) $ (GND))) # (!\EN_CONTADOR~combout\ & (!\CNT_T|cnt\(0) & VCC))
-- \CNT_T|Add0~1\ = CARRY((\EN_CONTADOR~combout\ & !\CNT_T|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN_CONTADOR~combout\,
	datab => \CNT_T|cnt\(0),
	datad => VCC,
	combout => \CNT_T|Add0~0_combout\,
	cout => \CNT_T|Add0~1\);

-- Location: LCCOMB_X56_Y23_N28
\CNT_T|Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~67_combout\ = (\RST_CONTADOR~combout\) # (!\CNT_T|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_T|Add0~0_combout\,
	datad => \RST_CONTADOR~combout\,
	combout => \CNT_T|Add0~67_combout\);

-- Location: LCFF_X55_Y23_N1
\CNT_T|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~67_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(0));

-- Location: LCCOMB_X55_Y23_N2
\CNT_T|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~2_combout\ = (\CNT_T|cnt\(1) & (!\CNT_T|Add0~1\)) # (!\CNT_T|cnt\(1) & ((\CNT_T|Add0~1\) # (GND)))
-- \CNT_T|Add0~3\ = CARRY((!\CNT_T|Add0~1\) # (!\CNT_T|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|cnt\(1),
	datad => VCC,
	cin => \CNT_T|Add0~1\,
	combout => \CNT_T|Add0~2_combout\,
	cout => \CNT_T|Add0~3\);

-- Location: LCCOMB_X55_Y23_N4
\CNT_T|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~4_combout\ = (\CNT_T|cnt\(2) & (\CNT_T|Add0~3\ $ (GND))) # (!\CNT_T|cnt\(2) & (!\CNT_T|Add0~3\ & VCC))
-- \CNT_T|Add0~5\ = CARRY((\CNT_T|cnt\(2) & !\CNT_T|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(2),
	datad => VCC,
	cin => \CNT_T|Add0~3\,
	combout => \CNT_T|Add0~4_combout\,
	cout => \CNT_T|Add0~5\);

-- Location: LCCOMB_X54_Y23_N30
\CNT_T|Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~69_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~4_combout\,
	combout => \CNT_T|Add0~69_combout\);

-- Location: LCFF_X55_Y23_N3
\CNT_T|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~69_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(2));

-- Location: LCCOMB_X55_Y23_N6
\CNT_T|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~6_combout\ = (\CNT_T|cnt\(3) & (!\CNT_T|Add0~5\)) # (!\CNT_T|cnt\(3) & ((\CNT_T|Add0~5\) # (GND)))
-- \CNT_T|Add0~7\ = CARRY((!\CNT_T|Add0~5\) # (!\CNT_T|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(3),
	datad => VCC,
	cin => \CNT_T|Add0~5\,
	combout => \CNT_T|Add0~6_combout\,
	cout => \CNT_T|Add0~7\);

-- Location: LCCOMB_X56_Y23_N26
\CNT_T|Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~70_combout\ = (\CNT_T|Add0~6_combout\ & !\RST_CONTADOR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_T|Add0~6_combout\,
	datad => \RST_CONTADOR~combout\,
	combout => \CNT_T|Add0~70_combout\);

-- Location: LCFF_X55_Y23_N31
\CNT_T|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(3));

-- Location: LCCOMB_X55_Y23_N8
\CNT_T|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~8_combout\ = (\CNT_T|cnt\(4) & (\CNT_T|Add0~7\ $ (GND))) # (!\CNT_T|cnt\(4) & (!\CNT_T|Add0~7\ & VCC))
-- \CNT_T|Add0~9\ = CARRY((\CNT_T|cnt\(4) & !\CNT_T|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|cnt\(4),
	datad => VCC,
	cin => \CNT_T|Add0~7\,
	combout => \CNT_T|Add0~8_combout\,
	cout => \CNT_T|Add0~9\);

-- Location: LCCOMB_X55_Y23_N10
\CNT_T|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~10_combout\ = (\CNT_T|cnt\(5) & (!\CNT_T|Add0~9\)) # (!\CNT_T|cnt\(5) & ((\CNT_T|Add0~9\) # (GND)))
-- \CNT_T|Add0~11\ = CARRY((!\CNT_T|Add0~9\) # (!\CNT_T|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(5),
	datad => VCC,
	cin => \CNT_T|Add0~9\,
	combout => \CNT_T|Add0~10_combout\,
	cout => \CNT_T|Add0~11\);

-- Location: LCCOMB_X54_Y23_N20
\CNT_T|Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~72_combout\ = (\CNT_T|Add0~10_combout\ & !\RST_CONTADOR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT_T|Add0~10_combout\,
	datad => \RST_CONTADOR~combout\,
	combout => \CNT_T|Add0~72_combout\);

-- Location: LCFF_X55_Y23_N15
\CNT_T|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~72_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(5));

-- Location: LCCOMB_X55_Y23_N14
\CNT_T|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~14_combout\ = (\CNT_T|cnt\(7) & (!\CNT_T|Add0~13\)) # (!\CNT_T|cnt\(7) & ((\CNT_T|Add0~13\) # (GND)))
-- \CNT_T|Add0~15\ = CARRY((!\CNT_T|Add0~13\) # (!\CNT_T|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(7),
	datad => VCC,
	cin => \CNT_T|Add0~13\,
	combout => \CNT_T|Add0~14_combout\,
	cout => \CNT_T|Add0~15\);

-- Location: LCCOMB_X56_Y23_N14
\CNT_T|Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~74_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~14_combout\,
	combout => \CNT_T|Add0~74_combout\);

-- Location: LCFF_X55_Y23_N5
\CNT_T|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~74_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(7));

-- Location: LCCOMB_X55_Y23_N16
\CNT_T|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~16_combout\ = (\CNT_T|cnt\(8) & (\CNT_T|Add0~15\ $ (GND))) # (!\CNT_T|cnt\(8) & (!\CNT_T|Add0~15\ & VCC))
-- \CNT_T|Add0~17\ = CARRY((\CNT_T|cnt\(8) & !\CNT_T|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(8),
	datad => VCC,
	cin => \CNT_T|Add0~15\,
	combout => \CNT_T|Add0~16_combout\,
	cout => \CNT_T|Add0~17\);

-- Location: LCCOMB_X56_Y23_N12
\CNT_T|Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~75_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datac => \CNT_T|Add0~16_combout\,
	combout => \CNT_T|Add0~75_combout\);

-- Location: LCFF_X55_Y23_N29
\CNT_T|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~75_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(8));

-- Location: LCCOMB_X55_Y23_N18
\CNT_T|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~18_combout\ = (\CNT_T|cnt\(9) & (!\CNT_T|Add0~17\)) # (!\CNT_T|cnt\(9) & ((\CNT_T|Add0~17\) # (GND)))
-- \CNT_T|Add0~19\ = CARRY((!\CNT_T|Add0~17\) # (!\CNT_T|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(9),
	datad => VCC,
	cin => \CNT_T|Add0~17\,
	combout => \CNT_T|Add0~18_combout\,
	cout => \CNT_T|Add0~19\);

-- Location: LCCOMB_X54_Y23_N4
\CNT_T|Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~76_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~18_combout\,
	combout => \CNT_T|Add0~76_combout\);

-- Location: LCFF_X55_Y23_N9
\CNT_T|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(9));

-- Location: LCCOMB_X55_Y23_N22
\CNT_T|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~22_combout\ = (\CNT_T|cnt\(11) & (!\CNT_T|Add0~21\)) # (!\CNT_T|cnt\(11) & ((\CNT_T|Add0~21\) # (GND)))
-- \CNT_T|Add0~23\ = CARRY((!\CNT_T|Add0~21\) # (!\CNT_T|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(11),
	datad => VCC,
	cin => \CNT_T|Add0~21\,
	combout => \CNT_T|Add0~22_combout\,
	cout => \CNT_T|Add0~23\);

-- Location: LCCOMB_X54_Y23_N10
\CNT_T|Add0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~77_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~22_combout\,
	combout => \CNT_T|Add0~77_combout\);

-- Location: LCFF_X55_Y23_N19
\CNT_T|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~77_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(11));

-- Location: LCCOMB_X55_Y23_N24
\CNT_T|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~24_combout\ = (\CNT_T|cnt\(12) & (\CNT_T|Add0~23\ $ (GND))) # (!\CNT_T|cnt\(12) & (!\CNT_T|Add0~23\ & VCC))
-- \CNT_T|Add0~25\ = CARRY((\CNT_T|cnt\(12) & !\CNT_T|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(12),
	datad => VCC,
	cin => \CNT_T|Add0~23\,
	combout => \CNT_T|Add0~24_combout\,
	cout => \CNT_T|Add0~25\);

-- Location: LCCOMB_X56_Y23_N10
\CNT_T|Add0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~78_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~24_combout\,
	combout => \CNT_T|Add0~78_combout\);

-- Location: LCFF_X55_Y23_N23
\CNT_T|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~78_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(12));

-- Location: LCCOMB_X55_Y23_N28
\CNT_T|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~28_combout\ = (\CNT_T|cnt\(14) & (\CNT_T|Add0~27\ $ (GND))) # (!\CNT_T|cnt\(14) & (!\CNT_T|Add0~27\ & VCC))
-- \CNT_T|Add0~29\ = CARRY((\CNT_T|cnt\(14) & !\CNT_T|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|cnt\(14),
	datad => VCC,
	cin => \CNT_T|Add0~27\,
	combout => \CNT_T|Add0~28_combout\,
	cout => \CNT_T|Add0~29\);

-- Location: LCCOMB_X55_Y22_N0
\CNT_T|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~32_combout\ = (\CNT_T|cnt\(16) & (\CNT_T|Add0~31\ $ (GND))) # (!\CNT_T|cnt\(16) & (!\CNT_T|Add0~31\ & VCC))
-- \CNT_T|Add0~33\ = CARRY((\CNT_T|cnt\(16) & !\CNT_T|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(16),
	datad => VCC,
	cin => \CNT_T|Add0~31\,
	combout => \CNT_T|Add0~32_combout\,
	cout => \CNT_T|Add0~33\);

-- Location: LCCOMB_X56_Y22_N18
\CNT_T|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~4_combout\ = (!\RST_CONTADOR~combout\ & (\CNT_T|Add0~32_combout\ & ((!\CNT_T|cnt~0_combout\) # (!\CNT_T|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datab => \CNT_T|Add0~32_combout\,
	datac => \CNT_T|Equal0~8_combout\,
	datad => \CNT_T|cnt~0_combout\,
	combout => \CNT_T|cnt~4_combout\);

-- Location: LCFF_X56_Y22_N19
\CNT_T|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(16));

-- Location: LCCOMB_X55_Y22_N4
\CNT_T|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~36_combout\ = (\CNT_T|cnt\(18) & (\CNT_T|Add0~35\ $ (GND))) # (!\CNT_T|cnt\(18) & (!\CNT_T|Add0~35\ & VCC))
-- \CNT_T|Add0~37\ = CARRY((\CNT_T|cnt\(18) & !\CNT_T|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(18),
	datad => VCC,
	cin => \CNT_T|Add0~35\,
	combout => \CNT_T|Add0~36_combout\,
	cout => \CNT_T|Add0~37\);

-- Location: LCCOMB_X56_Y22_N10
\CNT_T|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~9_combout\ = (\CNT_T|Add0~40_combout\ & (\CNT_T|Add0~36_combout\ & (\CNT_T|Add0~45_combout\ & \CNT_T|Add0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~40_combout\,
	datab => \CNT_T|Add0~36_combout\,
	datac => \CNT_T|Add0~45_combout\,
	datad => \CNT_T|Add0~47_combout\,
	combout => \CNT_T|Equal0~9_combout\);

-- Location: LCCOMB_X56_Y22_N14
\CNT_T|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~11_combout\ = (\CNT_T|Add0~53_combout\ & (\CNT_T|Add0~58_combout\ & (\CNT_T|Equal0~10_combout\ & \CNT_T|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~53_combout\,
	datab => \CNT_T|Add0~58_combout\,
	datac => \CNT_T|Equal0~10_combout\,
	datad => \CNT_T|Equal0~9_combout\,
	combout => \CNT_T|Equal0~11_combout\);

-- Location: LCCOMB_X56_Y22_N2
\CNT_T|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~0_combout\ = (\CNT_T|Equal0~4_combout\ & (\CNT_T|Equal0~11_combout\ & \CNT_T|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Equal0~4_combout\,
	datac => \CNT_T|Equal0~11_combout\,
	datad => \CNT_T|Equal0~6_combout\,
	combout => \CNT_T|cnt~0_combout\);

-- Location: LCCOMB_X56_Y22_N8
\CNT_T|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~7_combout\ = (\CNT_T|Add0~53_combout\ & (!\RST_CONTADOR~combout\ & ((!\CNT_T|cnt~0_combout\) # (!\CNT_T|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~53_combout\,
	datab => \RST_CONTADOR~combout\,
	datac => \CNT_T|Equal0~8_combout\,
	datad => \CNT_T|cnt~0_combout\,
	combout => \CNT_T|cnt~7_combout\);

-- Location: LCFF_X56_Y22_N9
\CNT_T|cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(26));

-- Location: LCCOMB_X55_Y22_N22
\CNT_T|Add0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~55_combout\ = (\CNT_T|cnt\(27) & (!\CNT_T|Add0~54\)) # (!\CNT_T|cnt\(27) & ((\CNT_T|Add0~54\) # (GND)))
-- \CNT_T|Add0~56\ = CARRY((!\CNT_T|Add0~54\) # (!\CNT_T|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|cnt\(27),
	datad => VCC,
	cin => \CNT_T|Add0~54\,
	combout => \CNT_T|Add0~55_combout\,
	cout => \CNT_T|Add0~56\);

-- Location: LCCOMB_X56_Y22_N16
\CNT_T|Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~57_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~55_combout\,
	combout => \CNT_T|Add0~57_combout\);

-- Location: LCFF_X55_Y22_N23
\CNT_T|cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|Add0~57_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(27));

-- Location: LCCOMB_X55_Y22_N26
\CNT_T|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~60_combout\ = (\CNT_T|cnt\(29) & (!\CNT_T|Add0~59\)) # (!\CNT_T|cnt\(29) & ((\CNT_T|Add0~59\) # (GND)))
-- \CNT_T|Add0~61\ = CARRY((!\CNT_T|Add0~59\) # (!\CNT_T|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|cnt\(29),
	datad => VCC,
	cin => \CNT_T|Add0~59\,
	combout => \CNT_T|Add0~60_combout\,
	cout => \CNT_T|Add0~61\);

-- Location: LCCOMB_X55_Y22_N28
\CNT_T|Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~63_combout\ = (\CNT_T|cnt\(30) & (\CNT_T|Add0~61\ $ (GND))) # (!\CNT_T|cnt\(30) & (!\CNT_T|Add0~61\ & VCC))
-- \CNT_T|Add0~64\ = CARRY((\CNT_T|cnt\(30) & !\CNT_T|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|cnt\(30),
	datad => VCC,
	cin => \CNT_T|Add0~61\,
	combout => \CNT_T|Add0~63_combout\,
	cout => \CNT_T|Add0~64\);

-- Location: LCCOMB_X55_Y22_N30
\CNT_T|Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~65_combout\ = \CNT_T|Add0~64\ $ (!\CNT_T|cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CNT_T|cnt\(31),
	cin => \CNT_T|Add0~64\,
	combout => \CNT_T|Add0~65_combout\);

-- Location: LCCOMB_X56_Y22_N12
\CNT_T|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~8_combout\ = (\CNT_T|Equal0~7_combout\ & (!\RST_CONTADOR~combout\ & (!\CNT_T|Add0~65_combout\ & !\CNT_T|Add0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Equal0~7_combout\,
	datab => \RST_CONTADOR~combout\,
	datac => \CNT_T|Add0~65_combout\,
	datad => \CNT_T|Add0~63_combout\,
	combout => \CNT_T|Equal0~8_combout\);

-- Location: LCCOMB_X54_Y22_N16
\CNT_T|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|cnt~2_combout\ = (\CNT_T|Add0~36_combout\ & (!\RST_CONTADOR~combout\ & ((!\CNT_T|cnt~0_combout\) # (!\CNT_T|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~36_combout\,
	datab => \RST_CONTADOR~combout\,
	datac => \CNT_T|Equal0~8_combout\,
	datad => \CNT_T|cnt~0_combout\,
	combout => \CNT_T|cnt~2_combout\);

-- Location: LCFF_X54_Y22_N17
\CNT_T|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|cnt\(18));

-- Location: LCCOMB_X56_Y22_N28
\CNT_T|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~5_combout\ = (\RST_CONTADOR~combout\) # ((!\CNT_T|Add0~26_combout\ & (!\CNT_T|Add0~38_combout\ & !\CNT_T|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~26_combout\,
	datab => \RST_CONTADOR~combout\,
	datac => \CNT_T|Add0~38_combout\,
	datad => \CNT_T|Add0~28_combout\,
	combout => \CNT_T|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y22_N26
\CNT_T|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Add0~62_combout\ = (!\RST_CONTADOR~combout\ & \CNT_T|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_CONTADOR~combout\,
	datad => \CNT_T|Add0~60_combout\,
	combout => \CNT_T|Add0~62_combout\);

-- Location: LCCOMB_X56_Y22_N0
\CNT_T|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~6_combout\ = (!\CNT_T|Add0~44_combout\ & (\CNT_T|Equal0~5_combout\ & (!\CNT_T|Add0~57_combout\ & !\CNT_T|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~44_combout\,
	datab => \CNT_T|Equal0~5_combout\,
	datac => \CNT_T|Add0~57_combout\,
	datad => \CNT_T|Add0~62_combout\,
	combout => \CNT_T|Equal0~6_combout\);

-- Location: LCCOMB_X56_Y23_N18
\CNT_T|seg[0]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[0]~45_combout\ = ((!\CNT_T|Equal0~8_combout\) # (!\CNT_T|Equal0~11_combout\)) # (!\CNT_T|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Equal0~4_combout\,
	datac => \CNT_T|Equal0~11_combout\,
	datad => \CNT_T|Equal0~8_combout\,
	combout => \CNT_T|seg[0]~45_combout\);

-- Location: LCCOMB_X56_Y23_N4
\CNT_T|seg[0]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[0]~46_combout\ = \CNT_T|seg\(0) $ (((\CNT_T|Equal0~6_combout\ & !\CNT_T|seg[0]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|Equal0~6_combout\,
	datac => \CNT_T|seg\(0),
	datad => \CNT_T|seg[0]~45_combout\,
	combout => \CNT_T|seg[0]~46_combout\);

-- Location: LCFF_X56_Y23_N5
\CNT_T|seg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(0));

-- Location: LCCOMB_X57_Y22_N0
\CNT_T|seg[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[1]~15_combout\ = (\CNT_T|seg\(1) & (\CNT_T|seg\(0) $ (VCC))) # (!\CNT_T|seg\(1) & (\CNT_T|seg\(0) & VCC))
-- \CNT_T|seg[1]~16\ = CARRY((\CNT_T|seg\(1) & \CNT_T|seg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(1),
	datab => \CNT_T|seg\(0),
	datad => VCC,
	combout => \CNT_T|seg[1]~15_combout\,
	cout => \CNT_T|seg[1]~16\);

-- Location: LCCOMB_X57_Y22_N2
\CNT_T|seg[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[2]~17_combout\ = (\CNT_T|seg\(2) & (!\CNT_T|seg[1]~16\)) # (!\CNT_T|seg\(2) & ((\CNT_T|seg[1]~16\) # (GND)))
-- \CNT_T|seg[2]~18\ = CARRY((!\CNT_T|seg[1]~16\) # (!\CNT_T|seg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|seg\(2),
	datad => VCC,
	cin => \CNT_T|seg[1]~16\,
	combout => \CNT_T|seg[2]~17_combout\,
	cout => \CNT_T|seg[2]~18\);

-- Location: LCCOMB_X56_Y23_N2
\CNT_T|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~0_combout\ = (\RST_CONTADOR~combout\) # ((!\CNT_T|Add0~4_combout\ & (!\CNT_T|Add0~0_combout\ & !\CNT_T|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datab => \CNT_T|Add0~4_combout\,
	datac => \CNT_T|Add0~0_combout\,
	datad => \CNT_T|Add0~2_combout\,
	combout => \CNT_T|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y23_N8
\CNT_T|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~1_combout\ = (\RST_CONTADOR~combout\) # ((!\CNT_T|Add0~10_combout\ & (!\CNT_T|Add0~6_combout\ & !\CNT_T|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Add0~10_combout\,
	datab => \RST_CONTADOR~combout\,
	datac => \CNT_T|Add0~6_combout\,
	datad => \CNT_T|Add0~8_combout\,
	combout => \CNT_T|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y23_N22
\CNT_T|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~3_combout\ = (\RST_CONTADOR~combout\) # ((!\CNT_T|Add0~24_combout\ & (!\CNT_T|Add0~18_combout\ & !\CNT_T|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_CONTADOR~combout\,
	datab => \CNT_T|Add0~24_combout\,
	datac => \CNT_T|Add0~18_combout\,
	datad => \CNT_T|Add0~22_combout\,
	combout => \CNT_T|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y23_N16
\CNT_T|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~4_combout\ = (\CNT_T|Equal0~2_combout\ & (\CNT_T|Equal0~0_combout\ & (\CNT_T|Equal0~1_combout\ & \CNT_T|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Equal0~2_combout\,
	datab => \CNT_T|Equal0~0_combout\,
	datac => \CNT_T|Equal0~1_combout\,
	datad => \CNT_T|Equal0~3_combout\,
	combout => \CNT_T|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y22_N4
\CNT_T|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|Equal0~12_combout\ = (\CNT_T|Equal0~8_combout\ & (\CNT_T|Equal0~4_combout\ & (\CNT_T|Equal0~11_combout\ & \CNT_T|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|Equal0~8_combout\,
	datab => \CNT_T|Equal0~4_combout\,
	datac => \CNT_T|Equal0~11_combout\,
	datad => \CNT_T|Equal0~6_combout\,
	combout => \CNT_T|Equal0~12_combout\);

-- Location: LCFF_X57_Y22_N3
\CNT_T|seg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[2]~17_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(2));

-- Location: LCCOMB_X57_Y22_N4
\CNT_T|seg[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[3]~19_combout\ = (\CNT_T|seg\(3) & (\CNT_T|seg[2]~18\ $ (GND))) # (!\CNT_T|seg\(3) & (!\CNT_T|seg[2]~18\ & VCC))
-- \CNT_T|seg[3]~20\ = CARRY((\CNT_T|seg\(3) & !\CNT_T|seg[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|seg\(3),
	datad => VCC,
	cin => \CNT_T|seg[2]~18\,
	combout => \CNT_T|seg[3]~19_combout\,
	cout => \CNT_T|seg[3]~20\);

-- Location: LCFF_X57_Y22_N5
\CNT_T|seg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[3]~19_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(3));

-- Location: LCCOMB_X57_Y22_N6
\CNT_T|seg[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[4]~21_combout\ = (\CNT_T|seg\(4) & (!\CNT_T|seg[3]~20\)) # (!\CNT_T|seg\(4) & ((\CNT_T|seg[3]~20\) # (GND)))
-- \CNT_T|seg[4]~22\ = CARRY((!\CNT_T|seg[3]~20\) # (!\CNT_T|seg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(4),
	datad => VCC,
	cin => \CNT_T|seg[3]~20\,
	combout => \CNT_T|seg[4]~21_combout\,
	cout => \CNT_T|seg[4]~22\);

-- Location: LCCOMB_X57_Y22_N8
\CNT_T|seg[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[5]~23_combout\ = (\CNT_T|seg\(5) & (\CNT_T|seg[4]~22\ $ (GND))) # (!\CNT_T|seg\(5) & (!\CNT_T|seg[4]~22\ & VCC))
-- \CNT_T|seg[5]~24\ = CARRY((\CNT_T|seg\(5) & !\CNT_T|seg[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|seg\(5),
	datad => VCC,
	cin => \CNT_T|seg[4]~22\,
	combout => \CNT_T|seg[5]~23_combout\,
	cout => \CNT_T|seg[5]~24\);

-- Location: LCFF_X57_Y22_N9
\CNT_T|seg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[5]~23_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(5));

-- Location: LCCOMB_X57_Y22_N10
\CNT_T|seg[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[6]~25_combout\ = (\CNT_T|seg\(6) & (!\CNT_T|seg[5]~24\)) # (!\CNT_T|seg\(6) & ((\CNT_T|seg[5]~24\) # (GND)))
-- \CNT_T|seg[6]~26\ = CARRY((!\CNT_T|seg[5]~24\) # (!\CNT_T|seg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(6),
	datad => VCC,
	cin => \CNT_T|seg[5]~24\,
	combout => \CNT_T|seg[6]~25_combout\,
	cout => \CNT_T|seg[6]~26\);

-- Location: LCCOMB_X57_Y22_N12
\CNT_T|seg[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[7]~27_combout\ = (\CNT_T|seg\(7) & (\CNT_T|seg[6]~26\ $ (GND))) # (!\CNT_T|seg\(7) & (!\CNT_T|seg[6]~26\ & VCC))
-- \CNT_T|seg[7]~28\ = CARRY((\CNT_T|seg\(7) & !\CNT_T|seg[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(7),
	datad => VCC,
	cin => \CNT_T|seg[6]~26\,
	combout => \CNT_T|seg[7]~27_combout\,
	cout => \CNT_T|seg[7]~28\);

-- Location: LCCOMB_X57_Y22_N14
\CNT_T|seg[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[8]~29_combout\ = (\CNT_T|seg\(8) & (!\CNT_T|seg[7]~28\)) # (!\CNT_T|seg\(8) & ((\CNT_T|seg[7]~28\) # (GND)))
-- \CNT_T|seg[8]~30\ = CARRY((!\CNT_T|seg[7]~28\) # (!\CNT_T|seg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|seg\(8),
	datad => VCC,
	cin => \CNT_T|seg[7]~28\,
	combout => \CNT_T|seg[8]~29_combout\,
	cout => \CNT_T|seg[8]~30\);

-- Location: LCFF_X57_Y22_N15
\CNT_T|seg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[8]~29_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(8));

-- Location: LCCOMB_X57_Y22_N16
\CNT_T|seg[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[9]~31_combout\ = (\CNT_T|seg\(9) & (\CNT_T|seg[8]~30\ $ (GND))) # (!\CNT_T|seg\(9) & (!\CNT_T|seg[8]~30\ & VCC))
-- \CNT_T|seg[9]~32\ = CARRY((\CNT_T|seg\(9) & !\CNT_T|seg[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(9),
	datad => VCC,
	cin => \CNT_T|seg[8]~30\,
	combout => \CNT_T|seg[9]~31_combout\,
	cout => \CNT_T|seg[9]~32\);

-- Location: LCCOMB_X57_Y22_N18
\CNT_T|seg[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[10]~33_combout\ = (\CNT_T|seg\(10) & (!\CNT_T|seg[9]~32\)) # (!\CNT_T|seg\(10) & ((\CNT_T|seg[9]~32\) # (GND)))
-- \CNT_T|seg[10]~34\ = CARRY((!\CNT_T|seg[9]~32\) # (!\CNT_T|seg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|seg\(10),
	datad => VCC,
	cin => \CNT_T|seg[9]~32\,
	combout => \CNT_T|seg[10]~33_combout\,
	cout => \CNT_T|seg[10]~34\);

-- Location: LCFF_X57_Y22_N19
\CNT_T|seg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[10]~33_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(10));

-- Location: LCCOMB_X57_Y22_N20
\CNT_T|seg[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[11]~35_combout\ = (\CNT_T|seg\(11) & (\CNT_T|seg[10]~34\ $ (GND))) # (!\CNT_T|seg\(11) & (!\CNT_T|seg[10]~34\ & VCC))
-- \CNT_T|seg[11]~36\ = CARRY((\CNT_T|seg\(11) & !\CNT_T|seg[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(11),
	datad => VCC,
	cin => \CNT_T|seg[10]~34\,
	combout => \CNT_T|seg[11]~35_combout\,
	cout => \CNT_T|seg[11]~36\);

-- Location: LCCOMB_X57_Y22_N22
\CNT_T|seg[12]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[12]~37_combout\ = (\CNT_T|seg\(12) & (!\CNT_T|seg[11]~36\)) # (!\CNT_T|seg\(12) & ((\CNT_T|seg[11]~36\) # (GND)))
-- \CNT_T|seg[12]~38\ = CARRY((!\CNT_T|seg[11]~36\) # (!\CNT_T|seg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|seg\(12),
	datad => VCC,
	cin => \CNT_T|seg[11]~36\,
	combout => \CNT_T|seg[12]~37_combout\,
	cout => \CNT_T|seg[12]~38\);

-- Location: LCFF_X57_Y22_N23
\CNT_T|seg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[12]~37_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(12));

-- Location: LCCOMB_X57_Y22_N24
\CNT_T|seg[13]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[13]~39_combout\ = (\CNT_T|seg\(13) & (\CNT_T|seg[12]~38\ $ (GND))) # (!\CNT_T|seg\(13) & (!\CNT_T|seg[12]~38\ & VCC))
-- \CNT_T|seg[13]~40\ = CARRY((\CNT_T|seg\(13) & !\CNT_T|seg[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(13),
	datad => VCC,
	cin => \CNT_T|seg[12]~38\,
	combout => \CNT_T|seg[13]~39_combout\,
	cout => \CNT_T|seg[13]~40\);

-- Location: LCCOMB_X57_Y22_N26
\CNT_T|seg[14]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[14]~41_combout\ = (\CNT_T|seg\(14) & (!\CNT_T|seg[13]~40\)) # (!\CNT_T|seg\(14) & ((\CNT_T|seg[13]~40\) # (GND)))
-- \CNT_T|seg[14]~42\ = CARRY((!\CNT_T|seg[13]~40\) # (!\CNT_T|seg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|seg\(14),
	datad => VCC,
	cin => \CNT_T|seg[13]~40\,
	combout => \CNT_T|seg[14]~41_combout\,
	cout => \CNT_T|seg[14]~42\);

-- Location: LCFF_X57_Y22_N27
\CNT_T|seg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[14]~41_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(14));

-- Location: LCCOMB_X57_Y22_N28
\CNT_T|seg[15]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \CNT_T|seg[15]~43_combout\ = \CNT_T|seg[14]~42\ $ (!\CNT_T|seg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CNT_T|seg\(15),
	cin => \CNT_T|seg[14]~42\,
	combout => \CNT_T|seg[15]~43_combout\);

-- Location: LCFF_X57_Y22_N29
\CNT_T|seg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[15]~43_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(15));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW1~I\ : cycloneii_io
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
	padio => ww_SW1,
	combout => \SW1~combout\);

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[15]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(15),
	combout => \DT_TEMPO~combout\(15));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CL_TEMPO~I\ : cycloneii_io
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
	padio => ww_CL_TEMPO,
	combout => \CL_TEMPO~combout\);

-- Location: CLKCTRL_G2
\CL_TEMPO~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CL_TEMPO~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CL_TEMPO~clkctrl_outclk\);

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LD_TEMPO~I\ : cycloneii_io
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
	padio => ww_LD_TEMPO,
	combout => \LD_TEMPO~combout\);

-- Location: LCFF_X64_Y23_N13
\RG_TEMPO|saida_tempo[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(15),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(15));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADD[3]~I\ : cycloneii_io
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
	padio => ww_ADD(3),
	combout => \ADD~combout\(3));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADD[1]~I\ : cycloneii_io
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
	padio => ww_ADD(1),
	combout => \ADD~combout\(1));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADD[2]~I\ : cycloneii_io
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
	padio => ww_ADD(2),
	combout => \ADD~combout\(2));

-- Location: LCCOMB_X64_Y26_N12
\RM|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux0~0_combout\ = (\ADD~combout\(0) & (\ADD~combout\(3) & (\ADD~combout\(1) & !\ADD~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~combout\(0),
	datab => \ADD~combout\(3),
	datac => \ADD~combout\(1),
	datad => \ADD~combout\(2),
	combout => \RM|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y26_N4
\RG_INTERVALO|saida_intervalo[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_INTERVALO|saida_intervalo[15]~feeder_combout\ = \RM|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RM|Mux0~0_combout\,
	combout => \RG_INTERVALO|saida_intervalo[15]~feeder_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CL_INTERVALO~I\ : cycloneii_io
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
	padio => ww_CL_INTERVALO,
	combout => \CL_INTERVALO~combout\);

-- Location: CLKCTRL_G9
\CL_INTERVALO~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CL_INTERVALO~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CL_INTERVALO~clkctrl_outclk\);

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LD_INTERVALO~I\ : cycloneii_io
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
	padio => ww_LD_INTERVALO,
	combout => \LD_INTERVALO~combout\);

-- Location: LCFF_X64_Y26_N5
\RG_INTERVALO|saida_intervalo[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_INTERVALO|saida_intervalo[15]~feeder_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(15));

-- Location: LCCOMB_X64_Y23_N12
\M_TEMPORAL|escolha1[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[15]~0_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(15)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(15),
	datad => \RG_INTERVALO|saida_intervalo\(15),
	combout => \M_TEMPORAL|escolha1[15]~0_combout\);

-- Location: LCFF_X57_Y22_N25
\CNT_T|seg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[13]~39_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(13));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[12]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(12),
	combout => \DT_TEMPO~combout\(12));

-- Location: LCFF_X64_Y23_N31
\RG_TEMPO|saida_tempo[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(12),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(12));

-- Location: LCCOMB_X64_Y26_N30
\RM|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux3~0_combout\ = (\ADD~combout\(3) & (!\ADD~combout\(2) & ((!\ADD~combout\(1)) # (!\ADD~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~combout\(0),
	datab => \ADD~combout\(3),
	datac => \ADD~combout\(1),
	datad => \ADD~combout\(2),
	combout => \RM|Mux3~0_combout\);

-- Location: LCFF_X64_Y26_N31
\RG_INTERVALO|saida_intervalo[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RM|Mux3~0_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(12));

-- Location: LCCOMB_X64_Y23_N30
\M_TEMPORAL|escolha1[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[12]~3_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(12)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(12),
	datad => \RG_INTERVALO|saida_intervalo\(12),
	combout => \M_TEMPORAL|escolha1[12]~3_combout\);

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[11]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(11),
	combout => \DT_TEMPO~combout\(11));

-- Location: LCFF_X64_Y23_N17
\RG_TEMPO|saida_tempo[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(11),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(11));

-- Location: LCCOMB_X64_Y26_N28
\RM|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux4~0_combout\ = (\ADD~combout\(3) & (!\ADD~combout\(2) & ((\ADD~combout\(0)) # (!\ADD~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~combout\(0),
	datab => \ADD~combout\(3),
	datac => \ADD~combout\(1),
	datad => \ADD~combout\(2),
	combout => \RM|Mux4~0_combout\);

-- Location: LCFF_X64_Y26_N29
\RG_INTERVALO|saida_intervalo[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RM|Mux4~0_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(11));

-- Location: LCCOMB_X64_Y23_N16
\M_TEMPORAL|escolha1[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[11]~4_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(11)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(11),
	datad => \RG_INTERVALO|saida_intervalo\(11),
	combout => \M_TEMPORAL|escolha1[11]~4_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[10]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(10),
	combout => \DT_TEMPO~combout\(10));

-- Location: LCFF_X64_Y23_N11
\RG_TEMPO|saida_tempo[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(10),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(10));

-- Location: LCCOMB_X64_Y26_N14
\RM|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux1~1_combout\ = (!\ADD~combout\(0) & (\ADD~combout\(3) & !\ADD~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~combout\(0),
	datab => \ADD~combout\(3),
	datad => \ADD~combout\(2),
	combout => \RM|Mux1~1_combout\);

-- Location: LCFF_X64_Y26_N15
\RG_INTERVALO|saida_intervalo[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RM|Mux1~1_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(10));

-- Location: LCCOMB_X64_Y23_N10
\M_TEMPORAL|escolha1[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[10]~5_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(10)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(10),
	datad => \RG_INTERVALO|saida_intervalo\(10),
	combout => \M_TEMPORAL|escolha1[10]~5_combout\);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[9]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(9),
	combout => \DT_TEMPO~combout\(9));

-- Location: LCFF_X64_Y23_N5
\RG_TEMPO|saida_tempo[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(9),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(9));

-- Location: LCCOMB_X64_Y23_N4
\M_TEMPORAL|escolha1[9]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[9]~6_combout\ = (!\SW1~combout\ & \RG_TEMPO|saida_tempo\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(9),
	combout => \M_TEMPORAL|escolha1[9]~6_combout\);

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[8]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(8),
	combout => \DT_TEMPO~combout\(8));

-- Location: LCFF_X64_Y23_N27
\RG_TEMPO|saida_tempo[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(8),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(8));

-- Location: LCCOMB_X64_Y23_N26
\M_TEMPORAL|escolha1[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[8]~7_combout\ = (!\SW1~combout\ & \RG_TEMPO|saida_tempo\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(8),
	combout => \M_TEMPORAL|escolha1[8]~7_combout\);

-- Location: LCFF_X57_Y22_N13
\CNT_T|seg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[7]~27_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(7));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[6]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(6),
	combout => \DT_TEMPO~combout\(6));

-- Location: LCFF_X64_Y23_N1
\RG_TEMPO|saida_tempo[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(6),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(6));

-- Location: LCCOMB_X64_Y26_N16
\RM|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux7~0_combout\ = (\ADD~combout\(3) & (!\ADD~combout\(2) & ((\ADD~combout\(0)) # (\ADD~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~combout\(0),
	datab => \ADD~combout\(3),
	datac => \ADD~combout\(1),
	datad => \ADD~combout\(2),
	combout => \RM|Mux7~0_combout\);

-- Location: LCFF_X64_Y26_N17
\RG_INTERVALO|saida_intervalo[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RM|Mux7~0_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(6));

-- Location: LCCOMB_X64_Y23_N0
\M_TEMPORAL|escolha1[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[6]~9_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(6)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(6),
	datad => \RG_INTERVALO|saida_intervalo\(6),
	combout => \M_TEMPORAL|escolha1[6]~9_combout\);

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[5]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(5),
	combout => \DT_TEMPO~combout\(5));

-- Location: LCFF_X64_Y23_N23
\RG_TEMPO|saida_tempo[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(5),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(5));

-- Location: LCCOMB_X64_Y26_N6
\RM|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux8~0_combout\ = (\ADD~combout\(3) & (!\ADD~combout\(0) & ((!\ADD~combout\(2))))) # (!\ADD~combout\(3) & (((\ADD~combout\(1) & \ADD~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~combout\(0),
	datab => \ADD~combout\(3),
	datac => \ADD~combout\(1),
	datad => \ADD~combout\(2),
	combout => \RM|Mux8~0_combout\);

-- Location: LCFF_X64_Y26_N7
\RG_INTERVALO|saida_intervalo[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RM|Mux8~0_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(5));

-- Location: LCCOMB_X64_Y23_N22
\M_TEMPORAL|escolha1[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[5]~10_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(5)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(5),
	datad => \RG_INTERVALO|saida_intervalo\(5),
	combout => \M_TEMPORAL|escolha1[5]~10_combout\);

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[4]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(4),
	combout => \DT_TEMPO~combout\(4));

-- Location: LCFF_X64_Y23_N21
\RG_TEMPO|saida_tempo[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(4),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(4));

-- Location: LCCOMB_X64_Y26_N20
\RM|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux9~0_combout\ = (!\ADD~combout\(3) & (\ADD~combout\(2) & ((\ADD~combout\(0)) # (!\ADD~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~combout\(0),
	datab => \ADD~combout\(3),
	datac => \ADD~combout\(1),
	datad => \ADD~combout\(2),
	combout => \RM|Mux9~0_combout\);

-- Location: LCFF_X64_Y26_N21
\RG_INTERVALO|saida_intervalo[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RM|Mux9~0_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(4));

-- Location: LCCOMB_X64_Y23_N20
\M_TEMPORAL|escolha1[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[4]~11_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(4)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(4),
	datad => \RG_INTERVALO|saida_intervalo\(4),
	combout => \M_TEMPORAL|escolha1[4]~11_combout\);

-- Location: LCFF_X56_Y22_N21
\CNT_T|seg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \CNT_T|seg[1]~15_combout\,
	sload => VCC,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(1));

-- Location: LCCOMB_X62_Y23_N0
\COMP_TEMPORAL|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~1_cout\ = CARRY((\M_TEMPORAL|escolha1[0]~15_combout\ & !\CNT_T|seg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[0]~15_combout\,
	datab => \CNT_T|seg\(0),
	datad => VCC,
	cout => \COMP_TEMPORAL|LessThan0~1_cout\);

-- Location: LCCOMB_X62_Y23_N2
\COMP_TEMPORAL|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~3_cout\ = CARRY((\M_TEMPORAL|escolha1[1]~14_combout\ & (\CNT_T|seg\(1) & !\COMP_TEMPORAL|LessThan0~1_cout\)) # (!\M_TEMPORAL|escolha1[1]~14_combout\ & ((\CNT_T|seg\(1)) # (!\COMP_TEMPORAL|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[1]~14_combout\,
	datab => \CNT_T|seg\(1),
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~1_cout\,
	cout => \COMP_TEMPORAL|LessThan0~3_cout\);

-- Location: LCCOMB_X62_Y23_N4
\COMP_TEMPORAL|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~5_cout\ = CARRY((\M_TEMPORAL|escolha1[2]~13_combout\ & ((!\COMP_TEMPORAL|LessThan0~3_cout\) # (!\CNT_T|seg\(2)))) # (!\M_TEMPORAL|escolha1[2]~13_combout\ & (!\CNT_T|seg\(2) & !\COMP_TEMPORAL|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[2]~13_combout\,
	datab => \CNT_T|seg\(2),
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~3_cout\,
	cout => \COMP_TEMPORAL|LessThan0~5_cout\);

-- Location: LCCOMB_X62_Y23_N6
\COMP_TEMPORAL|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~7_cout\ = CARRY((\M_TEMPORAL|escolha1[3]~12_combout\ & (\CNT_T|seg\(3) & !\COMP_TEMPORAL|LessThan0~5_cout\)) # (!\M_TEMPORAL|escolha1[3]~12_combout\ & ((\CNT_T|seg\(3)) # (!\COMP_TEMPORAL|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[3]~12_combout\,
	datab => \CNT_T|seg\(3),
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~5_cout\,
	cout => \COMP_TEMPORAL|LessThan0~7_cout\);

-- Location: LCCOMB_X62_Y23_N8
\COMP_TEMPORAL|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~9_cout\ = CARRY((\CNT_T|seg\(4) & (\M_TEMPORAL|escolha1[4]~11_combout\ & !\COMP_TEMPORAL|LessThan0~7_cout\)) # (!\CNT_T|seg\(4) & ((\M_TEMPORAL|escolha1[4]~11_combout\) # (!\COMP_TEMPORAL|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(4),
	datab => \M_TEMPORAL|escolha1[4]~11_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~7_cout\,
	cout => \COMP_TEMPORAL|LessThan0~9_cout\);

-- Location: LCCOMB_X62_Y23_N10
\COMP_TEMPORAL|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~11_cout\ = CARRY((\CNT_T|seg\(5) & ((!\COMP_TEMPORAL|LessThan0~9_cout\) # (!\M_TEMPORAL|escolha1[5]~10_combout\))) # (!\CNT_T|seg\(5) & (!\M_TEMPORAL|escolha1[5]~10_combout\ & !\COMP_TEMPORAL|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(5),
	datab => \M_TEMPORAL|escolha1[5]~10_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~9_cout\,
	cout => \COMP_TEMPORAL|LessThan0~11_cout\);

-- Location: LCCOMB_X62_Y23_N12
\COMP_TEMPORAL|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~13_cout\ = CARRY((\CNT_T|seg\(6) & (\M_TEMPORAL|escolha1[6]~9_combout\ & !\COMP_TEMPORAL|LessThan0~11_cout\)) # (!\CNT_T|seg\(6) & ((\M_TEMPORAL|escolha1[6]~9_combout\) # (!\COMP_TEMPORAL|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(6),
	datab => \M_TEMPORAL|escolha1[6]~9_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~11_cout\,
	cout => \COMP_TEMPORAL|LessThan0~13_cout\);

-- Location: LCCOMB_X62_Y23_N14
\COMP_TEMPORAL|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~15_cout\ = CARRY((\M_TEMPORAL|escolha1[7]~8_combout\ & (\CNT_T|seg\(7) & !\COMP_TEMPORAL|LessThan0~13_cout\)) # (!\M_TEMPORAL|escolha1[7]~8_combout\ & ((\CNT_T|seg\(7)) # (!\COMP_TEMPORAL|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[7]~8_combout\,
	datab => \CNT_T|seg\(7),
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~13_cout\,
	cout => \COMP_TEMPORAL|LessThan0~15_cout\);

-- Location: LCCOMB_X62_Y23_N16
\COMP_TEMPORAL|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~17_cout\ = CARRY((\CNT_T|seg\(8) & (\M_TEMPORAL|escolha1[8]~7_combout\ & !\COMP_TEMPORAL|LessThan0~15_cout\)) # (!\CNT_T|seg\(8) & ((\M_TEMPORAL|escolha1[8]~7_combout\) # (!\COMP_TEMPORAL|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(8),
	datab => \M_TEMPORAL|escolha1[8]~7_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~15_cout\,
	cout => \COMP_TEMPORAL|LessThan0~17_cout\);

-- Location: LCCOMB_X62_Y23_N18
\COMP_TEMPORAL|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~19_cout\ = CARRY((\CNT_T|seg\(9) & ((!\COMP_TEMPORAL|LessThan0~17_cout\) # (!\M_TEMPORAL|escolha1[9]~6_combout\))) # (!\CNT_T|seg\(9) & (!\M_TEMPORAL|escolha1[9]~6_combout\ & !\COMP_TEMPORAL|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(9),
	datab => \M_TEMPORAL|escolha1[9]~6_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~17_cout\,
	cout => \COMP_TEMPORAL|LessThan0~19_cout\);

-- Location: LCCOMB_X62_Y23_N20
\COMP_TEMPORAL|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~21_cout\ = CARRY((\CNT_T|seg\(10) & (\M_TEMPORAL|escolha1[10]~5_combout\ & !\COMP_TEMPORAL|LessThan0~19_cout\)) # (!\CNT_T|seg\(10) & ((\M_TEMPORAL|escolha1[10]~5_combout\) # (!\COMP_TEMPORAL|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(10),
	datab => \M_TEMPORAL|escolha1[10]~5_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~19_cout\,
	cout => \COMP_TEMPORAL|LessThan0~21_cout\);

-- Location: LCCOMB_X62_Y23_N22
\COMP_TEMPORAL|LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~23_cout\ = CARRY((\CNT_T|seg\(11) & ((!\COMP_TEMPORAL|LessThan0~21_cout\) # (!\M_TEMPORAL|escolha1[11]~4_combout\))) # (!\CNT_T|seg\(11) & (!\M_TEMPORAL|escolha1[11]~4_combout\ & !\COMP_TEMPORAL|LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(11),
	datab => \M_TEMPORAL|escolha1[11]~4_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~21_cout\,
	cout => \COMP_TEMPORAL|LessThan0~23_cout\);

-- Location: LCCOMB_X62_Y23_N24
\COMP_TEMPORAL|LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~25_cout\ = CARRY((\CNT_T|seg\(12) & (\M_TEMPORAL|escolha1[12]~3_combout\ & !\COMP_TEMPORAL|LessThan0~23_cout\)) # (!\CNT_T|seg\(12) & ((\M_TEMPORAL|escolha1[12]~3_combout\) # (!\COMP_TEMPORAL|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(12),
	datab => \M_TEMPORAL|escolha1[12]~3_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~23_cout\,
	cout => \COMP_TEMPORAL|LessThan0~25_cout\);

-- Location: LCCOMB_X62_Y23_N26
\COMP_TEMPORAL|LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~27_cout\ = CARRY((\M_TEMPORAL|escolha1[13]~2_combout\ & (\CNT_T|seg\(13) & !\COMP_TEMPORAL|LessThan0~25_cout\)) # (!\M_TEMPORAL|escolha1[13]~2_combout\ & ((\CNT_T|seg\(13)) # (!\COMP_TEMPORAL|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[13]~2_combout\,
	datab => \CNT_T|seg\(13),
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~25_cout\,
	cout => \COMP_TEMPORAL|LessThan0~27_cout\);

-- Location: LCCOMB_X62_Y23_N28
\COMP_TEMPORAL|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~29_cout\ = CARRY((\M_TEMPORAL|escolha1[14]~1_combout\ & ((!\COMP_TEMPORAL|LessThan0~27_cout\) # (!\CNT_T|seg\(14)))) # (!\M_TEMPORAL|escolha1[14]~1_combout\ & (!\CNT_T|seg\(14) & !\COMP_TEMPORAL|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[14]~1_combout\,
	datab => \CNT_T|seg\(14),
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan0~27_cout\,
	cout => \COMP_TEMPORAL|LessThan0~29_cout\);

-- Location: LCCOMB_X62_Y23_N30
\COMP_TEMPORAL|LessThan0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan0~30_combout\ = (\CNT_T|seg\(15) & (\M_TEMPORAL|escolha1[15]~0_combout\ & \COMP_TEMPORAL|LessThan0~29_cout\)) # (!\CNT_T|seg\(15) & ((\M_TEMPORAL|escolha1[15]~0_combout\) # (\COMP_TEMPORAL|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(15),
	datab => \M_TEMPORAL|escolha1[15]~0_combout\,
	cin => \COMP_TEMPORAL|LessThan0~29_cout\,
	combout => \COMP_TEMPORAL|LessThan0~30_combout\);

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[13]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(13),
	combout => \DT_TEMPO~combout\(13));

-- Location: LCFF_X64_Y26_N9
\RG_TEMPO|saida_tempo[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(13),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(13));

-- Location: LCCOMB_X64_Y26_N22
\RM|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux0~1_combout\ = (\ADD~combout\(0) & (\ADD~combout\(3) & !\ADD~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~combout\(0),
	datab => \ADD~combout\(3),
	datad => \ADD~combout\(2),
	combout => \RM|Mux0~1_combout\);

-- Location: LCFF_X64_Y26_N23
\RG_INTERVALO|saida_intervalo[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RM|Mux0~1_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(13));

-- Location: LCCOMB_X64_Y26_N8
\M_TEMPORAL|escolha1[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[13]~2_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(13)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(13),
	datad => \RG_INTERVALO|saida_intervalo\(13),
	combout => \M_TEMPORAL|escolha1[13]~2_combout\);

-- Location: LCFF_X57_Y22_N17
\CNT_T|seg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[9]~31_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(9));

-- Location: LCCOMB_X64_Y23_N14
\M_TEMPORAL|escolha1[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[7]~8_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(15)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG_TEMPO|saida_tempo\(7),
	datab => \RG_INTERVALO|saida_intervalo\(15),
	datac => \SW1~combout\,
	combout => \M_TEMPORAL|escolha1[7]~8_combout\);

-- Location: LCFF_X57_Y22_N11
\CNT_T|seg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[6]~25_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(6));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[3]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(3),
	combout => \DT_TEMPO~combout\(3));

-- Location: LCFF_X64_Y23_N19
\RG_TEMPO|saida_tempo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(3),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(3));

-- Location: LCCOMB_X64_Y26_N10
\RM|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux10~0_combout\ = (!\ADD~combout\(3) & ((\ADD~combout\(0) & (\ADD~combout\(1) $ (\ADD~combout\(2)))) # (!\ADD~combout\(0) & (\ADD~combout\(1) & \ADD~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~combout\(0),
	datab => \ADD~combout\(3),
	datac => \ADD~combout\(1),
	datad => \ADD~combout\(2),
	combout => \RM|Mux10~0_combout\);

-- Location: LCFF_X64_Y26_N11
\RG_INTERVALO|saida_intervalo[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RM|Mux10~0_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(3));

-- Location: LCCOMB_X64_Y23_N18
\M_TEMPORAL|escolha1[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[3]~12_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(3)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(3),
	datad => \RG_INTERVALO|saida_intervalo\(3),
	combout => \M_TEMPORAL|escolha1[3]~12_combout\);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[2]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(2),
	combout => \DT_TEMPO~combout\(2));

-- Location: LCFF_X64_Y23_N29
\RG_TEMPO|saida_tempo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(2),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(2));

-- Location: LCCOMB_X64_Y26_N0
\RM|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux11~0_combout\ = (!\ADD~combout\(3) & (!\ADD~combout\(1) & \ADD~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD~combout\(3),
	datac => \ADD~combout\(1),
	datad => \ADD~combout\(2),
	combout => \RM|Mux11~0_combout\);

-- Location: LCFF_X64_Y26_N1
\RG_INTERVALO|saida_intervalo[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RM|Mux11~0_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(2));

-- Location: LCCOMB_X64_Y23_N28
\M_TEMPORAL|escolha1[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[2]~13_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(2)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(2),
	datad => \RG_INTERVALO|saida_intervalo\(2),
	combout => \M_TEMPORAL|escolha1[2]~13_combout\);

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMPO[1]~I\ : cycloneii_io
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
	padio => ww_DT_TEMPO(1),
	combout => \DT_TEMPO~combout\(1));

-- Location: LCFF_X64_Y23_N7
\RG_TEMPO|saida_tempo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMPO~combout\(1),
	aclr => \CL_TEMPO~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPO|saida_tempo\(1));

-- Location: LCCOMB_X64_Y26_N18
\RM|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux12~0_combout\ = (\ADD~combout\(0) & (!\ADD~combout\(3) & ((\ADD~combout\(1)) # (\ADD~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~combout\(0),
	datab => \ADD~combout\(3),
	datac => \ADD~combout\(1),
	datad => \ADD~combout\(2),
	combout => \RM|Mux12~0_combout\);

-- Location: LCFF_X64_Y26_N19
\RG_INTERVALO|saida_intervalo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RM|Mux12~0_combout\,
	aclr => \CL_INTERVALO~clkctrl_outclk\,
	ena => \LD_INTERVALO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_INTERVALO|saida_intervalo\(1));

-- Location: LCCOMB_X64_Y23_N6
\M_TEMPORAL|escolha1[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_TEMPORAL|escolha1[1]~14_combout\ = (\SW1~combout\ & ((\RG_INTERVALO|saida_intervalo\(1)))) # (!\SW1~combout\ & (\RG_TEMPO|saida_tempo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~combout\,
	datac => \RG_TEMPO|saida_tempo\(1),
	datad => \RG_INTERVALO|saida_intervalo\(1),
	combout => \M_TEMPORAL|escolha1[1]~14_combout\);

-- Location: LCCOMB_X61_Y23_N0
\COMP_TEMPORAL|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~1_cout\ = CARRY((!\M_TEMPORAL|escolha1[0]~15_combout\ & \CNT_T|seg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[0]~15_combout\,
	datab => \CNT_T|seg\(0),
	datad => VCC,
	cout => \COMP_TEMPORAL|LessThan1~1_cout\);

-- Location: LCCOMB_X61_Y23_N2
\COMP_TEMPORAL|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~3_cout\ = CARRY((\CNT_T|seg\(1) & (\M_TEMPORAL|escolha1[1]~14_combout\ & !\COMP_TEMPORAL|LessThan1~1_cout\)) # (!\CNT_T|seg\(1) & ((\M_TEMPORAL|escolha1[1]~14_combout\) # (!\COMP_TEMPORAL|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(1),
	datab => \M_TEMPORAL|escolha1[1]~14_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~1_cout\,
	cout => \COMP_TEMPORAL|LessThan1~3_cout\);

-- Location: LCCOMB_X61_Y23_N4
\COMP_TEMPORAL|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~5_cout\ = CARRY((\CNT_T|seg\(2) & ((!\COMP_TEMPORAL|LessThan1~3_cout\) # (!\M_TEMPORAL|escolha1[2]~13_combout\))) # (!\CNT_T|seg\(2) & (!\M_TEMPORAL|escolha1[2]~13_combout\ & !\COMP_TEMPORAL|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(2),
	datab => \M_TEMPORAL|escolha1[2]~13_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~3_cout\,
	cout => \COMP_TEMPORAL|LessThan1~5_cout\);

-- Location: LCCOMB_X61_Y23_N6
\COMP_TEMPORAL|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~7_cout\ = CARRY((\CNT_T|seg\(3) & (\M_TEMPORAL|escolha1[3]~12_combout\ & !\COMP_TEMPORAL|LessThan1~5_cout\)) # (!\CNT_T|seg\(3) & ((\M_TEMPORAL|escolha1[3]~12_combout\) # (!\COMP_TEMPORAL|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(3),
	datab => \M_TEMPORAL|escolha1[3]~12_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~5_cout\,
	cout => \COMP_TEMPORAL|LessThan1~7_cout\);

-- Location: LCCOMB_X61_Y23_N8
\COMP_TEMPORAL|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~9_cout\ = CARRY((\CNT_T|seg\(4) & ((!\COMP_TEMPORAL|LessThan1~7_cout\) # (!\M_TEMPORAL|escolha1[4]~11_combout\))) # (!\CNT_T|seg\(4) & (!\M_TEMPORAL|escolha1[4]~11_combout\ & !\COMP_TEMPORAL|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(4),
	datab => \M_TEMPORAL|escolha1[4]~11_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~7_cout\,
	cout => \COMP_TEMPORAL|LessThan1~9_cout\);

-- Location: LCCOMB_X61_Y23_N10
\COMP_TEMPORAL|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~11_cout\ = CARRY((\CNT_T|seg\(5) & (\M_TEMPORAL|escolha1[5]~10_combout\ & !\COMP_TEMPORAL|LessThan1~9_cout\)) # (!\CNT_T|seg\(5) & ((\M_TEMPORAL|escolha1[5]~10_combout\) # (!\COMP_TEMPORAL|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(5),
	datab => \M_TEMPORAL|escolha1[5]~10_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~9_cout\,
	cout => \COMP_TEMPORAL|LessThan1~11_cout\);

-- Location: LCCOMB_X61_Y23_N12
\COMP_TEMPORAL|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~13_cout\ = CARRY((\M_TEMPORAL|escolha1[6]~9_combout\ & (\CNT_T|seg\(6) & !\COMP_TEMPORAL|LessThan1~11_cout\)) # (!\M_TEMPORAL|escolha1[6]~9_combout\ & ((\CNT_T|seg\(6)) # (!\COMP_TEMPORAL|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[6]~9_combout\,
	datab => \CNT_T|seg\(6),
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~11_cout\,
	cout => \COMP_TEMPORAL|LessThan1~13_cout\);

-- Location: LCCOMB_X61_Y23_N14
\COMP_TEMPORAL|LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~15_cout\ = CARRY((\CNT_T|seg\(7) & (\M_TEMPORAL|escolha1[7]~8_combout\ & !\COMP_TEMPORAL|LessThan1~13_cout\)) # (!\CNT_T|seg\(7) & ((\M_TEMPORAL|escolha1[7]~8_combout\) # (!\COMP_TEMPORAL|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(7),
	datab => \M_TEMPORAL|escolha1[7]~8_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~13_cout\,
	cout => \COMP_TEMPORAL|LessThan1~15_cout\);

-- Location: LCCOMB_X61_Y23_N16
\COMP_TEMPORAL|LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~17_cout\ = CARRY((\CNT_T|seg\(8) & ((!\COMP_TEMPORAL|LessThan1~15_cout\) # (!\M_TEMPORAL|escolha1[8]~7_combout\))) # (!\CNT_T|seg\(8) & (!\M_TEMPORAL|escolha1[8]~7_combout\ & !\COMP_TEMPORAL|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(8),
	datab => \M_TEMPORAL|escolha1[8]~7_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~15_cout\,
	cout => \COMP_TEMPORAL|LessThan1~17_cout\);

-- Location: LCCOMB_X61_Y23_N18
\COMP_TEMPORAL|LessThan1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~19_cout\ = CARRY((\M_TEMPORAL|escolha1[9]~6_combout\ & ((!\COMP_TEMPORAL|LessThan1~17_cout\) # (!\CNT_T|seg\(9)))) # (!\M_TEMPORAL|escolha1[9]~6_combout\ & (!\CNT_T|seg\(9) & !\COMP_TEMPORAL|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[9]~6_combout\,
	datab => \CNT_T|seg\(9),
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~17_cout\,
	cout => \COMP_TEMPORAL|LessThan1~19_cout\);

-- Location: LCCOMB_X61_Y23_N20
\COMP_TEMPORAL|LessThan1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~21_cout\ = CARRY((\M_TEMPORAL|escolha1[10]~5_combout\ & (\CNT_T|seg\(10) & !\COMP_TEMPORAL|LessThan1~19_cout\)) # (!\M_TEMPORAL|escolha1[10]~5_combout\ & ((\CNT_T|seg\(10)) # (!\COMP_TEMPORAL|LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[10]~5_combout\,
	datab => \CNT_T|seg\(10),
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~19_cout\,
	cout => \COMP_TEMPORAL|LessThan1~21_cout\);

-- Location: LCCOMB_X61_Y23_N22
\COMP_TEMPORAL|LessThan1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~23_cout\ = CARRY((\CNT_T|seg\(11) & (\M_TEMPORAL|escolha1[11]~4_combout\ & !\COMP_TEMPORAL|LessThan1~21_cout\)) # (!\CNT_T|seg\(11) & ((\M_TEMPORAL|escolha1[11]~4_combout\) # (!\COMP_TEMPORAL|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(11),
	datab => \M_TEMPORAL|escolha1[11]~4_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~21_cout\,
	cout => \COMP_TEMPORAL|LessThan1~23_cout\);

-- Location: LCCOMB_X61_Y23_N24
\COMP_TEMPORAL|LessThan1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~25_cout\ = CARRY((\M_TEMPORAL|escolha1[12]~3_combout\ & (\CNT_T|seg\(12) & !\COMP_TEMPORAL|LessThan1~23_cout\)) # (!\M_TEMPORAL|escolha1[12]~3_combout\ & ((\CNT_T|seg\(12)) # (!\COMP_TEMPORAL|LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[12]~3_combout\,
	datab => \CNT_T|seg\(12),
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~23_cout\,
	cout => \COMP_TEMPORAL|LessThan1~25_cout\);

-- Location: LCCOMB_X61_Y23_N26
\COMP_TEMPORAL|LessThan1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~27_cout\ = CARRY((\CNT_T|seg\(13) & (\M_TEMPORAL|escolha1[13]~2_combout\ & !\COMP_TEMPORAL|LessThan1~25_cout\)) # (!\CNT_T|seg\(13) & ((\M_TEMPORAL|escolha1[13]~2_combout\) # (!\COMP_TEMPORAL|LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT_T|seg\(13),
	datab => \M_TEMPORAL|escolha1[13]~2_combout\,
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~25_cout\,
	cout => \COMP_TEMPORAL|LessThan1~27_cout\);

-- Location: LCCOMB_X61_Y23_N28
\COMP_TEMPORAL|LessThan1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~29_cout\ = CARRY((\M_TEMPORAL|escolha1[14]~1_combout\ & (\CNT_T|seg\(14) & !\COMP_TEMPORAL|LessThan1~27_cout\)) # (!\M_TEMPORAL|escolha1[14]~1_combout\ & ((\CNT_T|seg\(14)) # (!\COMP_TEMPORAL|LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[14]~1_combout\,
	datab => \CNT_T|seg\(14),
	datad => VCC,
	cin => \COMP_TEMPORAL|LessThan1~27_cout\,
	cout => \COMP_TEMPORAL|LessThan1~29_cout\);

-- Location: LCCOMB_X61_Y23_N30
\COMP_TEMPORAL|LessThan1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|LessThan1~30_combout\ = (\CNT_T|seg\(15) & ((\COMP_TEMPORAL|LessThan1~29_cout\) # (!\M_TEMPORAL|escolha1[15]~0_combout\))) # (!\CNT_T|seg\(15) & (\COMP_TEMPORAL|LessThan1~29_cout\ & !\M_TEMPORAL|escolha1[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT_T|seg\(15),
	datad => \M_TEMPORAL|escolha1[15]~0_combout\,
	cin => \COMP_TEMPORAL|LessThan1~29_cout\,
	combout => \COMP_TEMPORAL|LessThan1~30_combout\);

-- Location: LCCOMB_X60_Y23_N12
\COMP_TEMPORAL|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|Equal0~0_combout\ = (\M_TEMPORAL|escolha1[2]~13_combout\ & (\CNT_T|seg\(2) & (\CNT_T|seg\(1) $ (!\M_TEMPORAL|escolha1[1]~14_combout\)))) # (!\M_TEMPORAL|escolha1[2]~13_combout\ & (!\CNT_T|seg\(2) & (\CNT_T|seg\(1) $ 
-- (!\M_TEMPORAL|escolha1[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[2]~13_combout\,
	datab => \CNT_T|seg\(2),
	datac => \CNT_T|seg\(1),
	datad => \M_TEMPORAL|escolha1[1]~14_combout\,
	combout => \COMP_TEMPORAL|Equal0~0_combout\);

-- Location: LCFF_X57_Y22_N7
\CNT_T|seg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[4]~21_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(4));

-- Location: LCCOMB_X63_Y23_N0
\COMP_TEMPORAL|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|Equal0~1_combout\ = (\M_TEMPORAL|escolha1[3]~12_combout\ & (\CNT_T|seg\(3) & (\CNT_T|seg\(4) $ (!\M_TEMPORAL|escolha1[4]~11_combout\)))) # (!\M_TEMPORAL|escolha1[3]~12_combout\ & (!\CNT_T|seg\(3) & (\CNT_T|seg\(4) $ 
-- (!\M_TEMPORAL|escolha1[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[3]~12_combout\,
	datab => \CNT_T|seg\(3),
	datac => \CNT_T|seg\(4),
	datad => \M_TEMPORAL|escolha1[4]~11_combout\,
	combout => \COMP_TEMPORAL|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y23_N18
\COMP_TEMPORAL|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|Equal0~7_combout\ = (\M_TEMPORAL|escolha1[0]~15_combout\ & (\CNT_T|seg\(0) & (\CNT_T|seg\(15) $ (!\M_TEMPORAL|escolha1[15]~0_combout\)))) # (!\M_TEMPORAL|escolha1[0]~15_combout\ & (!\CNT_T|seg\(0) & (\CNT_T|seg\(15) $ 
-- (!\M_TEMPORAL|escolha1[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[0]~15_combout\,
	datab => \CNT_T|seg\(15),
	datac => \CNT_T|seg\(0),
	datad => \M_TEMPORAL|escolha1[15]~0_combout\,
	combout => \COMP_TEMPORAL|Equal0~7_combout\);

-- Location: LCCOMB_X63_Y23_N16
\COMP_TEMPORAL|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|Equal0~8_combout\ = (\M_TEMPORAL|escolha1[9]~6_combout\ & (\CNT_T|seg\(9) & (\M_TEMPORAL|escolha1[8]~7_combout\ $ (!\CNT_T|seg\(8))))) # (!\M_TEMPORAL|escolha1[9]~6_combout\ & (!\CNT_T|seg\(9) & (\M_TEMPORAL|escolha1[8]~7_combout\ $ 
-- (!\CNT_T|seg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[9]~6_combout\,
	datab => \CNT_T|seg\(9),
	datac => \M_TEMPORAL|escolha1[8]~7_combout\,
	datad => \CNT_T|seg\(8),
	combout => \COMP_TEMPORAL|Equal0~8_combout\);

-- Location: LCFF_X57_Y22_N21
\CNT_T|seg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \CNT_T|seg[11]~35_combout\,
	ena => \CNT_T|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CNT_T|seg\(11));

-- Location: LCCOMB_X63_Y23_N6
\COMP_TEMPORAL|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|Equal0~5_combout\ = (\M_TEMPORAL|escolha1[12]~3_combout\ & (\CNT_T|seg\(12) & (\CNT_T|seg\(11) $ (!\M_TEMPORAL|escolha1[11]~4_combout\)))) # (!\M_TEMPORAL|escolha1[12]~3_combout\ & (!\CNT_T|seg\(12) & (\CNT_T|seg\(11) $ 
-- (!\M_TEMPORAL|escolha1[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[12]~3_combout\,
	datab => \CNT_T|seg\(11),
	datac => \CNT_T|seg\(12),
	datad => \M_TEMPORAL|escolha1[11]~4_combout\,
	combout => \COMP_TEMPORAL|Equal0~5_combout\);

-- Location: LCCOMB_X63_Y23_N14
\COMP_TEMPORAL|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|Equal0~9_combout\ = (\COMP_TEMPORAL|Equal0~6_combout\ & (\COMP_TEMPORAL|Equal0~7_combout\ & (\COMP_TEMPORAL|Equal0~8_combout\ & \COMP_TEMPORAL|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_TEMPORAL|Equal0~6_combout\,
	datab => \COMP_TEMPORAL|Equal0~7_combout\,
	datac => \COMP_TEMPORAL|Equal0~8_combout\,
	datad => \COMP_TEMPORAL|Equal0~5_combout\,
	combout => \COMP_TEMPORAL|Equal0~9_combout\);

-- Location: LCCOMB_X63_Y23_N26
\COMP_TEMPORAL|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|Equal0~2_combout\ = (\M_TEMPORAL|escolha1[6]~9_combout\ & (\CNT_T|seg\(6) & (\CNT_T|seg\(5) $ (!\M_TEMPORAL|escolha1[5]~10_combout\)))) # (!\M_TEMPORAL|escolha1[6]~9_combout\ & (!\CNT_T|seg\(6) & (\CNT_T|seg\(5) $ 
-- (!\M_TEMPORAL|escolha1[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_TEMPORAL|escolha1[6]~9_combout\,
	datab => \CNT_T|seg\(6),
	datac => \CNT_T|seg\(5),
	datad => \M_TEMPORAL|escolha1[5]~10_combout\,
	combout => \COMP_TEMPORAL|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y23_N28
\COMP_TEMPORAL|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|Equal0~4_combout\ = (!\COMP_TEMPORAL|Equal0~3_combout\ & (\COMP_TEMPORAL|Equal0~2_combout\ & (\CNT_T|seg\(10) $ (!\M_TEMPORAL|escolha1[10]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_TEMPORAL|Equal0~3_combout\,
	datab => \COMP_TEMPORAL|Equal0~2_combout\,
	datac => \CNT_T|seg\(10),
	datad => \M_TEMPORAL|escolha1[10]~5_combout\,
	combout => \COMP_TEMPORAL|Equal0~4_combout\);

-- Location: LCCOMB_X63_Y23_N24
\COMP_TEMPORAL|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_TEMPORAL|Equal0~10_combout\ = (\COMP_TEMPORAL|Equal0~0_combout\ & (\COMP_TEMPORAL|Equal0~1_combout\ & (\COMP_TEMPORAL|Equal0~9_combout\ & \COMP_TEMPORAL|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_TEMPORAL|Equal0~0_combout\,
	datab => \COMP_TEMPORAL|Equal0~1_combout\,
	datac => \COMP_TEMPORAL|Equal0~9_combout\,
	datad => \COMP_TEMPORAL|Equal0~4_combout\,
	combout => \COMP_TEMPORAL|Equal0~10_combout\);

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[15]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(15),
	combout => \DT_TEMP~combout\(15));

-- Location: LCCOMB_X64_Y30_N22
\RG_TEMPERATURA|saida_temperatura[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[15]~feeder_combout\ = \DT_TEMP~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(15),
	combout => \RG_TEMPERATURA|saida_temperatura[15]~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CL_TEMPERATURA~I\ : cycloneii_io
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
	padio => ww_CL_TEMPERATURA,
	combout => \CL_TEMPERATURA~combout\);

-- Location: CLKCTRL_G1
\CL_TEMPERATURA~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CL_TEMPERATURA~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CL_TEMPERATURA~clkctrl_outclk\);

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LD_TEMPERATURA~I\ : cycloneii_io
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
	padio => ww_LD_TEMPERATURA,
	combout => \LD_TEMPERATURA~combout\);

-- Location: LCFF_X64_Y30_N23
\RG_TEMPERATURA|saida_temperatura[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[15]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(15));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[15]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(15),
	combout => \DT_UMID~combout\(15));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CL_UMIDADE~I\ : cycloneii_io
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
	padio => ww_CL_UMIDADE,
	combout => \CL_UMIDADE~combout\);

-- Location: CLKCTRL_G11
\CL_UMIDADE~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CL_UMIDADE~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CL_UMIDADE~clkctrl_outclk\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LD_UMIDADE~I\ : cycloneii_io
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
	padio => ww_LD_UMIDADE,
	combout => \LD_UMIDADE~combout\);

-- Location: LCFF_X64_Y30_N9
\RG_UMIDADE|saida_umidade[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(15),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(15));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW2~I\ : cycloneii_io
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
	padio => ww_SW2,
	combout => \SW2~combout\);

-- Location: LCCOMB_X64_Y30_N8
\M_SENSORES|escolha2[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[15]~0_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(15)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(15),
	datac => \RG_UMIDADE|saida_umidade\(15),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[15]~0_combout\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[14]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(14),
	combout => \DT_TEMP~combout\(14));

-- Location: LCCOMB_X64_Y32_N26
\RG_TEMPERATURA|saida_temperatura[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[14]~feeder_combout\ = \DT_TEMP~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(14),
	combout => \RG_TEMPERATURA|saida_temperatura[14]~feeder_combout\);

-- Location: LCFF_X64_Y32_N27
\RG_TEMPERATURA|saida_temperatura[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[14]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(14));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[14]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(14),
	combout => \DT_UMID~combout\(14));

-- Location: LCFF_X64_Y32_N5
\RG_UMIDADE|saida_umidade[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(14),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(14));

-- Location: LCCOMB_X64_Y32_N4
\M_SENSORES|escolha2[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[14]~1_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(14)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(14),
	datac => \RG_UMIDADE|saida_umidade\(14),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[14]~1_combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[12]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(12),
	combout => \DT_TEMP~combout\(12));

-- Location: LCFF_X64_Y30_N3
\RG_TEMPERATURA|saida_temperatura[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMP~combout\(12),
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(12));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[12]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(12),
	combout => \DT_UMID~combout\(12));

-- Location: LCFF_X64_Y30_N13
\RG_UMIDADE|saida_umidade[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(12),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(12));

-- Location: LCCOMB_X64_Y30_N12
\M_SENSORES|escolha2[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[12]~3_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(12)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(12),
	datac => \RG_UMIDADE|saida_umidade\(12),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[12]~3_combout\);

-- Location: LCCOMB_X64_Y28_N18
\COMP_SENSORES|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~18_cout\ = CARRY(\COMP_SENSORES|LessThan0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_SENSORES|LessThan0~16_combout\,
	datad => VCC,
	cout => \COMP_SENSORES|LessThan0~18_cout\);

-- Location: LCCOMB_X64_Y28_N20
\COMP_SENSORES|LessThan0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~20_cout\ = CARRY((\M_SENSORES|escolha2[10]~5_combout\ & (\RM|Mux1~1_combout\ & !\COMP_SENSORES|LessThan0~18_cout\)) # (!\M_SENSORES|escolha2[10]~5_combout\ & ((\RM|Mux1~1_combout\) # (!\COMP_SENSORES|LessThan0~18_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_SENSORES|escolha2[10]~5_combout\,
	datab => \RM|Mux1~1_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan0~18_cout\,
	cout => \COMP_SENSORES|LessThan0~20_cout\);

-- Location: LCCOMB_X64_Y28_N22
\COMP_SENSORES|LessThan0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~22_cout\ = CARRY((\M_SENSORES|escolha2[11]~4_combout\ & ((!\COMP_SENSORES|LessThan0~20_cout\) # (!\RM|Mux4~0_combout\))) # (!\M_SENSORES|escolha2[11]~4_combout\ & (!\RM|Mux4~0_combout\ & !\COMP_SENSORES|LessThan0~20_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_SENSORES|escolha2[11]~4_combout\,
	datab => \RM|Mux4~0_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan0~20_cout\,
	cout => \COMP_SENSORES|LessThan0~22_cout\);

-- Location: LCCOMB_X64_Y28_N24
\COMP_SENSORES|LessThan0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~24_cout\ = CARRY((\RM|Mux3~0_combout\ & ((!\COMP_SENSORES|LessThan0~22_cout\) # (!\M_SENSORES|escolha2[12]~3_combout\))) # (!\RM|Mux3~0_combout\ & (!\M_SENSORES|escolha2[12]~3_combout\ & !\COMP_SENSORES|LessThan0~22_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux3~0_combout\,
	datab => \M_SENSORES|escolha2[12]~3_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan0~22_cout\,
	cout => \COMP_SENSORES|LessThan0~24_cout\);

-- Location: LCCOMB_X64_Y28_N26
\COMP_SENSORES|LessThan0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~26_cout\ = CARRY((\M_SENSORES|escolha2[13]~2_combout\ & ((!\COMP_SENSORES|LessThan0~24_cout\) # (!\RM|Mux0~1_combout\))) # (!\M_SENSORES|escolha2[13]~2_combout\ & (!\RM|Mux0~1_combout\ & !\COMP_SENSORES|LessThan0~24_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_SENSORES|escolha2[13]~2_combout\,
	datab => \RM|Mux0~1_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan0~24_cout\,
	cout => \COMP_SENSORES|LessThan0~26_cout\);

-- Location: LCCOMB_X64_Y28_N28
\COMP_SENSORES|LessThan0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~28_cout\ = CARRY((\RM|Mux1~0_combout\ & ((!\COMP_SENSORES|LessThan0~26_cout\) # (!\M_SENSORES|escolha2[14]~1_combout\))) # (!\RM|Mux1~0_combout\ & (!\M_SENSORES|escolha2[14]~1_combout\ & !\COMP_SENSORES|LessThan0~26_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux1~0_combout\,
	datab => \M_SENSORES|escolha2[14]~1_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan0~26_cout\,
	cout => \COMP_SENSORES|LessThan0~28_cout\);

-- Location: LCCOMB_X64_Y28_N30
\COMP_SENSORES|LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan0~29_combout\ = (\RM|Mux0~0_combout\ & (!\COMP_SENSORES|LessThan0~28_cout\ & \M_SENSORES|escolha2[15]~0_combout\)) # (!\RM|Mux0~0_combout\ & ((\M_SENSORES|escolha2[15]~0_combout\) # (!\COMP_SENSORES|LessThan0~28_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux0~0_combout\,
	datad => \M_SENSORES|escolha2[15]~0_combout\,
	cin => \COMP_SENSORES|LessThan0~28_cout\,
	combout => \COMP_SENSORES|LessThan0~29_combout\);

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[9]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(9),
	combout => \DT_UMID~combout\(9));

-- Location: LCFF_X64_Y29_N29
\RG_UMIDADE|saida_umidade[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(9),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(9));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[8]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(8),
	combout => \DT_UMID~combout\(8));

-- Location: LCFF_X64_Y29_N31
\RG_UMIDADE|saida_umidade[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(8),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(8));

-- Location: LCCOMB_X64_Y29_N30
\COMP_SENSORES|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~0_combout\ = (\SW2~combout\ & (((!\RG_UMIDADE|saida_umidade\(9) & !\RG_UMIDADE|saida_umidade\(8))))) # (!\SW2~combout\ & (!\RG_TEMPERATURA|saida_temperatura\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG_TEMPERATURA|saida_temperatura\(8),
	datab => \RG_UMIDADE|saida_umidade\(9),
	datac => \RG_UMIDADE|saida_umidade\(8),
	datad => \SW2~combout\,
	combout => \COMP_SENSORES|LessThan1~0_combout\);

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[9]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(9),
	combout => \DT_TEMP~combout\(9));

-- Location: LCCOMB_X64_Y29_N8
\RG_TEMPERATURA|saida_temperatura[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[9]~feeder_combout\ = \DT_TEMP~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(9),
	combout => \RG_TEMPERATURA|saida_temperatura[9]~feeder_combout\);

-- Location: LCFF_X64_Y29_N9
\RG_TEMPERATURA|saida_temperatura[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[9]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(9));

-- Location: LCCOMB_X64_Y29_N18
\COMP_SENSORES|LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~15_combout\ = (\COMP_SENSORES|LessThan1~13_combout\ & (\COMP_SENSORES|LessThan1~0_combout\ & ((\SW2~combout\) # (!\RG_TEMPERATURA|saida_temperatura\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_SENSORES|LessThan1~13_combout\,
	datab => \COMP_SENSORES|LessThan1~0_combout\,
	datac => \RG_TEMPERATURA|saida_temperatura\(9),
	datad => \SW2~combout\,
	combout => \COMP_SENSORES|LessThan1~15_combout\);

-- Location: LCCOMB_X64_Y28_N2
\COMP_SENSORES|LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~17_cout\ = CARRY(\COMP_SENSORES|LessThan1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMP_SENSORES|LessThan1~15_combout\,
	datad => VCC,
	cout => \COMP_SENSORES|LessThan1~17_cout\);

-- Location: LCCOMB_X64_Y28_N4
\COMP_SENSORES|LessThan1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~19_cout\ = CARRY((\M_SENSORES|escolha2[10]~5_combout\ & ((!\COMP_SENSORES|LessThan1~17_cout\) # (!\RM|Mux1~1_combout\))) # (!\M_SENSORES|escolha2[10]~5_combout\ & (!\RM|Mux1~1_combout\ & !\COMP_SENSORES|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_SENSORES|escolha2[10]~5_combout\,
	datab => \RM|Mux1~1_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan1~17_cout\,
	cout => \COMP_SENSORES|LessThan1~19_cout\);

-- Location: LCCOMB_X64_Y28_N6
\COMP_SENSORES|LessThan1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~21_cout\ = CARRY((\M_SENSORES|escolha2[11]~4_combout\ & (\RM|Mux4~0_combout\ & !\COMP_SENSORES|LessThan1~19_cout\)) # (!\M_SENSORES|escolha2[11]~4_combout\ & ((\RM|Mux4~0_combout\) # (!\COMP_SENSORES|LessThan1~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_SENSORES|escolha2[11]~4_combout\,
	datab => \RM|Mux4~0_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan1~19_cout\,
	cout => \COMP_SENSORES|LessThan1~21_cout\);

-- Location: LCCOMB_X64_Y28_N8
\COMP_SENSORES|LessThan1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~23_cout\ = CARRY((\RM|Mux3~0_combout\ & (\M_SENSORES|escolha2[12]~3_combout\ & !\COMP_SENSORES|LessThan1~21_cout\)) # (!\RM|Mux3~0_combout\ & ((\M_SENSORES|escolha2[12]~3_combout\) # (!\COMP_SENSORES|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux3~0_combout\,
	datab => \M_SENSORES|escolha2[12]~3_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan1~21_cout\,
	cout => \COMP_SENSORES|LessThan1~23_cout\);

-- Location: LCCOMB_X64_Y28_N10
\COMP_SENSORES|LessThan1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~25_cout\ = CARRY((\M_SENSORES|escolha2[13]~2_combout\ & (\RM|Mux0~1_combout\ & !\COMP_SENSORES|LessThan1~23_cout\)) # (!\M_SENSORES|escolha2[13]~2_combout\ & ((\RM|Mux0~1_combout\) # (!\COMP_SENSORES|LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M_SENSORES|escolha2[13]~2_combout\,
	datab => \RM|Mux0~1_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan1~23_cout\,
	cout => \COMP_SENSORES|LessThan1~25_cout\);

-- Location: LCCOMB_X64_Y28_N12
\COMP_SENSORES|LessThan1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~27_cout\ = CARRY((\RM|Mux1~0_combout\ & (\M_SENSORES|escolha2[14]~1_combout\ & !\COMP_SENSORES|LessThan1~25_cout\)) # (!\RM|Mux1~0_combout\ & ((\M_SENSORES|escolha2[14]~1_combout\) # (!\COMP_SENSORES|LessThan1~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux1~0_combout\,
	datab => \M_SENSORES|escolha2[14]~1_combout\,
	datad => VCC,
	cin => \COMP_SENSORES|LessThan1~25_cout\,
	cout => \COMP_SENSORES|LessThan1~27_cout\);

-- Location: LCCOMB_X64_Y28_N14
\COMP_SENSORES|LessThan1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|LessThan1~28_combout\ = (\RM|Mux0~0_combout\ & ((!\M_SENSORES|escolha2[15]~0_combout\) # (!\COMP_SENSORES|LessThan1~27_cout\))) # (!\RM|Mux0~0_combout\ & (!\COMP_SENSORES|LessThan1~27_cout\ & !\M_SENSORES|escolha2[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux0~0_combout\,
	datad => \M_SENSORES|escolha2[15]~0_combout\,
	cin => \COMP_SENSORES|LessThan1~27_cout\,
	combout => \COMP_SENSORES|LessThan1~28_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[0]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(0),
	combout => \DT_TEMP~combout\(0));

-- Location: LCCOMB_X64_Y30_N18
\RG_TEMPERATURA|saida_temperatura[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[0]~feeder_combout\ = \DT_TEMP~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(0),
	combout => \RG_TEMPERATURA|saida_temperatura[0]~feeder_combout\);

-- Location: LCFF_X64_Y30_N19
\RG_TEMPERATURA|saida_temperatura[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[0]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(0));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[0]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(0),
	combout => \DT_UMID~combout\(0));

-- Location: LCFF_X64_Y30_N29
\RG_UMIDADE|saida_umidade[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(0),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(0));

-- Location: LCCOMB_X64_Y30_N28
\M_SENSORES|escolha2[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[0]~13_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(0)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(0),
	datac => \RG_UMIDADE|saida_umidade\(0),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[0]~13_combout\);

-- Location: LCCOMB_X64_Y30_N10
\COMP_SENSORES|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|Equal0~8_combout\ = (!\M_SENSORES|escolha2[0]~13_combout\ & (\M_SENSORES|escolha2[12]~3_combout\ $ (!\RM|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_SENSORES|escolha2[12]~3_combout\,
	datac => \RM|Mux3~0_combout\,
	datad => \M_SENSORES|escolha2[0]~13_combout\,
	combout => \COMP_SENSORES|Equal0~8_combout\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[4]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(4),
	combout => \DT_TEMP~combout\(4));

-- Location: LCCOMB_X64_Y32_N2
\RG_TEMPERATURA|saida_temperatura[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[4]~feeder_combout\ = \DT_TEMP~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(4),
	combout => \RG_TEMPERATURA|saida_temperatura[4]~feeder_combout\);

-- Location: LCFF_X64_Y32_N3
\RG_TEMPERATURA|saida_temperatura[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[4]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(4));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[4]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(4),
	combout => \DT_UMID~combout\(4));

-- Location: LCFF_X64_Y32_N13
\RG_UMIDADE|saida_umidade[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(4),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(4));

-- Location: LCCOMB_X64_Y32_N12
\M_SENSORES|escolha2[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[4]~9_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(4)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(4),
	datac => \RG_UMIDADE|saida_umidade\(4),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[4]~9_combout\);

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[5]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(5),
	combout => \DT_TEMP~combout\(5));

-- Location: LCCOMB_X64_Y32_N22
\RG_TEMPERATURA|saida_temperatura[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[5]~feeder_combout\ = \DT_TEMP~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(5),
	combout => \RG_TEMPERATURA|saida_temperatura[5]~feeder_combout\);

-- Location: LCFF_X64_Y32_N23
\RG_TEMPERATURA|saida_temperatura[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[5]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(5));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[5]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(5),
	combout => \DT_UMID~combout\(5));

-- Location: LCFF_X64_Y32_N9
\RG_UMIDADE|saida_umidade[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(5),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(5));

-- Location: LCCOMB_X64_Y32_N8
\M_SENSORES|escolha2[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[5]~8_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(5)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(5),
	datac => \RG_UMIDADE|saida_umidade\(5),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[5]~8_combout\);

-- Location: LCCOMB_X64_Y30_N0
\COMP_SENSORES|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|Equal0~6_combout\ = (\RM|Mux9~0_combout\ & (\M_SENSORES|escolha2[4]~9_combout\ & (\M_SENSORES|escolha2[5]~8_combout\ $ (!\RM|Mux8~0_combout\)))) # (!\RM|Mux9~0_combout\ & (!\M_SENSORES|escolha2[4]~9_combout\ & 
-- (\M_SENSORES|escolha2[5]~8_combout\ $ (!\RM|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux9~0_combout\,
	datab => \M_SENSORES|escolha2[4]~9_combout\,
	datac => \M_SENSORES|escolha2[5]~8_combout\,
	datad => \RM|Mux8~0_combout\,
	combout => \COMP_SENSORES|Equal0~6_combout\);

-- Location: LCCOMB_X64_Y26_N26
\RM|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RM|Mux1~0_combout\ = (!\ADD~combout\(0) & (\ADD~combout\(3) & (\ADD~combout\(1) & !\ADD~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD~combout\(0),
	datab => \ADD~combout\(3),
	datac => \ADD~combout\(1),
	datad => \ADD~combout\(2),
	combout => \RM|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y28_N16
\COMP_SENSORES|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|Equal0~2_combout\ = (\RM|Mux0~0_combout\ & (\M_SENSORES|escolha2[15]~0_combout\ & (\M_SENSORES|escolha2[14]~1_combout\ $ (!\RM|Mux1~0_combout\)))) # (!\RM|Mux0~0_combout\ & (!\M_SENSORES|escolha2[15]~0_combout\ & 
-- (\M_SENSORES|escolha2[14]~1_combout\ $ (!\RM|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux0~0_combout\,
	datab => \M_SENSORES|escolha2[15]~0_combout\,
	datac => \M_SENSORES|escolha2[14]~1_combout\,
	datad => \RM|Mux1~0_combout\,
	combout => \COMP_SENSORES|Equal0~2_combout\);

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[7]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(7),
	combout => \DT_TEMP~combout\(7));

-- Location: LCCOMB_X64_Y29_N14
\RG_TEMPERATURA|saida_temperatura[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RG_TEMPERATURA|saida_temperatura[7]~feeder_combout\ = \DT_TEMP~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DT_TEMP~combout\(7),
	combout => \RG_TEMPERATURA|saida_temperatura[7]~feeder_combout\);

-- Location: LCFF_X64_Y29_N15
\RG_TEMPERATURA|saida_temperatura[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \RG_TEMPERATURA|saida_temperatura[7]~feeder_combout\,
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(7));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[7]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(7),
	combout => \DT_UMID~combout\(7));

-- Location: LCFF_X64_Y29_N25
\RG_UMIDADE|saida_umidade[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(7),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(7));

-- Location: LCCOMB_X64_Y29_N24
\M_SENSORES|escolha2[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[7]~6_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(7)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(7),
	datac => \RG_UMIDADE|saida_umidade\(7),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[7]~6_combout\);

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_TEMP[2]~I\ : cycloneii_io
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
	padio => ww_DT_TEMP(2),
	combout => \DT_TEMP~combout\(2));

-- Location: LCFF_X64_Y29_N3
\RG_TEMPERATURA|saida_temperatura[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_TEMP~combout\(2),
	aclr => \CL_TEMPERATURA~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_TEMPERATURA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_TEMPERATURA|saida_temperatura\(2));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[2]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(2),
	combout => \DT_UMID~combout\(2));

-- Location: LCFF_X64_Y29_N13
\RG_UMIDADE|saida_umidade[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(2),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(2));

-- Location: LCCOMB_X64_Y29_N12
\M_SENSORES|escolha2[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[2]~11_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(2)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RG_TEMPERATURA|saida_temperatura\(2),
	datac => \RG_UMIDADE|saida_umidade\(2),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[2]~11_combout\);

-- Location: LCCOMB_X64_Y29_N4
\COMP_SENSORES|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|Equal0~0_combout\ = (\RM|Mux0~0_combout\ & (\M_SENSORES|escolha2[7]~6_combout\ & (\RM|Mux11~0_combout\ $ (!\M_SENSORES|escolha2[2]~11_combout\)))) # (!\RM|Mux0~0_combout\ & (!\M_SENSORES|escolha2[7]~6_combout\ & (\RM|Mux11~0_combout\ $ 
-- (!\M_SENSORES|escolha2[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RM|Mux0~0_combout\,
	datab => \RM|Mux11~0_combout\,
	datac => \M_SENSORES|escolha2[7]~6_combout\,
	datad => \M_SENSORES|escolha2[2]~11_combout\,
	combout => \COMP_SENSORES|Equal0~0_combout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[10]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(10),
	combout => \DT_UMID~combout\(10));

-- Location: LCFF_X64_Y32_N25
\RG_UMIDADE|saida_umidade[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(10),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(10));

-- Location: LCCOMB_X64_Y32_N24
\M_SENSORES|escolha2[10]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[10]~5_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(10)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG_TEMPERATURA|saida_temperatura\(10),
	datac => \RG_UMIDADE|saida_umidade\(10),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[10]~5_combout\);

-- Location: LCCOMB_X64_Y28_N0
\COMP_SENSORES|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|Equal0~1_combout\ = (\M_SENSORES|escolha2[13]~2_combout\ & (\RM|Mux0~1_combout\ & (\RM|Mux1~1_combout\ $ (!\M_SENSORES|escolha2[10]~5_combout\)))) # (!\M_SENSORES|escolha2[13]~2_combout\ & (!\RM|Mux0~1_combout\ & (\RM|Mux1~1_combout\ $ 
-- (!\M_SENSORES|escolha2[10]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_SENSORES|escolha2[13]~2_combout\,
	datab => \RM|Mux1~1_combout\,
	datac => \M_SENSORES|escolha2[10]~5_combout\,
	datad => \RM|Mux0~1_combout\,
	combout => \COMP_SENSORES|Equal0~1_combout\);

-- Location: LCCOMB_X64_Y29_N0
\COMP_SENSORES|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|Equal0~5_combout\ = (\COMP_SENSORES|Equal0~4_combout\ & (\COMP_SENSORES|Equal0~2_combout\ & (\COMP_SENSORES|Equal0~0_combout\ & \COMP_SENSORES|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_SENSORES|Equal0~4_combout\,
	datab => \COMP_SENSORES|Equal0~2_combout\,
	datac => \COMP_SENSORES|Equal0~0_combout\,
	datad => \COMP_SENSORES|Equal0~1_combout\,
	combout => \COMP_SENSORES|Equal0~5_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DT_UMID[11]~I\ : cycloneii_io
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
	padio => ww_DT_UMID(11),
	combout => \DT_UMID~combout\(11));

-- Location: LCFF_X64_Y30_N21
\RG_UMIDADE|saida_umidade[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \DT_UMID~combout\(11),
	aclr => \CL_UMIDADE~clkctrl_outclk\,
	sload => VCC,
	ena => \LD_UMIDADE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RG_UMIDADE|saida_umidade\(11));

-- Location: LCCOMB_X64_Y30_N20
\M_SENSORES|escolha2[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M_SENSORES|escolha2[11]~4_combout\ = (\SW2~combout\ & ((\RG_UMIDADE|saida_umidade\(11)))) # (!\SW2~combout\ & (\RG_TEMPERATURA|saida_temperatura\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RG_TEMPERATURA|saida_temperatura\(11),
	datac => \RG_UMIDADE|saida_umidade\(11),
	datad => \SW2~combout\,
	combout => \M_SENSORES|escolha2[11]~4_combout\);

-- Location: LCCOMB_X64_Y29_N26
\COMP_SENSORES|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|Equal0~7_combout\ = (\M_SENSORES|escolha2[6]~7_combout\ & (\RM|Mux7~0_combout\ & (\RM|Mux4~0_combout\ $ (!\M_SENSORES|escolha2[11]~4_combout\)))) # (!\M_SENSORES|escolha2[6]~7_combout\ & (!\RM|Mux7~0_combout\ & (\RM|Mux4~0_combout\ $ 
-- (!\M_SENSORES|escolha2[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M_SENSORES|escolha2[6]~7_combout\,
	datab => \RM|Mux7~0_combout\,
	datac => \RM|Mux4~0_combout\,
	datad => \M_SENSORES|escolha2[11]~4_combout\,
	combout => \COMP_SENSORES|Equal0~7_combout\);

-- Location: LCCOMB_X64_Y30_N24
\COMP_SENSORES|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \COMP_SENSORES|Equal0~9_combout\ = (\COMP_SENSORES|Equal0~8_combout\ & (\COMP_SENSORES|Equal0~6_combout\ & (\COMP_SENSORES|Equal0~5_combout\ & \COMP_SENSORES|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_SENSORES|Equal0~8_combout\,
	datab => \COMP_SENSORES|Equal0~6_combout\,
	datac => \COMP_SENSORES|Equal0~5_combout\,
	datad => \COMP_SENSORES|Equal0~7_combout\,
	combout => \COMP_SENSORES|Equal0~9_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN_ROM~I\ : cycloneii_io
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
	padio => ww_EN_ROM);

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GT_TEMPORAL~I\ : cycloneii_io
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
	datain => \COMP_TEMPORAL|LessThan0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GT_TEMPORAL);

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LT_TEMPORAL~I\ : cycloneii_io
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
	datain => \COMP_TEMPORAL|LessThan1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LT_TEMPORAL);

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EQ_TEMPORAL~I\ : cycloneii_io
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
	datain => \COMP_TEMPORAL|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EQ_TEMPORAL);

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GT_SENSORES~I\ : cycloneii_io
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
	datain => \COMP_SENSORES|LessThan0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GT_SENSORES);

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LT_SENSORES~I\ : cycloneii_io
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
	datain => \COMP_SENSORES|LessThan1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LT_SENSORES);

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EQ_SENSORES~I\ : cycloneii_io
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
	datain => \COMP_SENSORES|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EQ_SENSORES);
END structure;


