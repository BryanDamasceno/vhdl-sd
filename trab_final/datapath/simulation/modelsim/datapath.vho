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

-- DATE "01/28/2022 12:35:11"

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
	DT_UMID : IN std_logic_vector(15 DOWNTO 0);
	DT_TEMP : IN std_logic_vector(15 DOWNTO 0);
	DT_TEMPO : IN std_logic_vector(15 DOWNTO 0);
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
-- clock	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LD_TEMPERATURA	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CL_TEMPERATURA	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LD_UMIDADE	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CL_UMIDADE	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LD_TEMPO	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CL_TEMPO	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LD_INTERVALO	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CL_INTERVALO	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW1	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW2	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN_CONTADOR	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST_CONTADOR	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN_ROM	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[0]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[1]	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[4]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[6]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[8]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[9]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[10]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[11]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[12]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[13]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[14]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_UMID[15]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[0]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[1]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[3]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[5]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[6]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[7]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[8]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[9]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[10]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[11]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[12]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[13]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[14]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMP[15]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[0]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[1]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[2]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[3]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[5]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[6]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[7]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[8]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[9]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[10]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[11]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[12]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[13]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[14]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DT_TEMPO[15]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD[0]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD[1]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD[2]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD[3]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GT_TEMPORAL	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LT_TEMPORAL	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EQ_TEMPORAL	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GT_SENSORES	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LT_SENSORES	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EQ_SENSORES	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA


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
SIGNAL ww_DT_UMID : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DT_TEMP : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DT_TEMPO : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ADD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_GT_TEMPORAL : std_logic;
SIGNAL ww_LT_TEMPORAL : std_logic;
SIGNAL ww_EQ_TEMPORAL : std_logic;
SIGNAL ww_GT_SENSORES : std_logic;
SIGNAL ww_LT_SENSORES : std_logic;
SIGNAL ww_EQ_SENSORES : std_logic;

BEGIN

ww_clock <= clock;
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
ww_DT_UMID <= DT_UMID;
ww_DT_TEMP <= DT_TEMP;
ww_DT_TEMPO <= DT_TEMPO;
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_clock);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_LD_TEMPERATURA);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_CL_TEMPERATURA);

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_LD_UMIDADE);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_CL_UMIDADE);

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_LD_TEMPO);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_CL_TEMPO);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_LD_INTERVALO);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_CL_INTERVALO);

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW1);

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SW2);

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_EN_CONTADOR);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_RST_CONTADOR);

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(0));

-- Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(3));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(4));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(5));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(7));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(8));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(9));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(10));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(11));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(12));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(13));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(14));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_UMID(15));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(0));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(1));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(2));

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(3));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(4));

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(5));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(6));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(7));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(8));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(9));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(10));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(11));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(12));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(13));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(14));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMP(15));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(0));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(1));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(2));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(4));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(5));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(6));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(7));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(8));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(9));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(10));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(11));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(12));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(13));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(14));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_DT_TEMPO(15));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ADD(0));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ADD(1));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ADD(2));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_ADD(3));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GT_TEMPORAL);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LT_TEMPORAL);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EQ_TEMPORAL);

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GT_SENSORES);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LT_SENSORES);

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EQ_SENSORES);
END structure;


