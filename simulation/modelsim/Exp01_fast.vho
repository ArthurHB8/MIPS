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

-- DATE "10/25/2024 11:35:26"

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

ENTITY 	Exp01 IS
    PORT (
	reset : IN std_logic;
	clock48MHz : IN std_logic;
	LCD_RS : OUT std_logic;
	LCD_E : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_ON : OUT std_logic;
	DATA : INOUT std_logic_vector(7 DOWNTO 0);
	clockPB : IN std_logic
	);
END Exp01;

-- Design Ports Information
-- DATA[0]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[1]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[2]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[3]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[4]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[5]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[6]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA[7]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RS	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_E	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RW	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_ON	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock48MHz	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clockPB	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Exp01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock48MHz : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_clockPB : std_logic;
SIGNAL \IFT|data_memory|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \IFT|data_memory|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \clock48MHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clockPB~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd|state.LINE2~regout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[0]~22_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[2]~26_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[4]~30_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[14]~51\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[15]~52_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[15]~53\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[16]~54_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[16]~55\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[17]~57_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[17]~58\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[18]~59_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[18]~60\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[19]~61_combout\ : std_logic;
SIGNAL \lcd|state.DISPLAY_ON~regout\ : std_logic;
SIGNAL \lcd|state.FUNC_SET~regout\ : std_logic;
SIGNAL \lcd|state.RESET2~regout\ : std_logic;
SIGNAL \lcd|state.RESET3~regout\ : std_logic;
SIGNAL \lcd|next_command.MODE_SET~regout\ : std_logic;
SIGNAL \lcd|next_command.LINE2~regout\ : std_logic;
SIGNAL \lcd|next_command.DISPLAY_ON~regout\ : std_logic;
SIGNAL \lcd|next_command.FUNC_SET~regout\ : std_logic;
SIGNAL \lcd|next_command.RESET3~regout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[11]~20_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~0_combout\ : std_logic;
SIGNAL \lcd|Mux6~10_combout\ : std_logic;
SIGNAL \lcd|Mux2~1_combout\ : std_logic;
SIGNAL \lcd|Equal0~1_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~4_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~5_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~10_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~11_combout\ : std_logic;
SIGNAL \lcd|Selector3~0_combout\ : std_logic;
SIGNAL \lcd|state~31_combout\ : std_logic;
SIGNAL \lcd|state~34_combout\ : std_logic;
SIGNAL \lcd|state~36_combout\ : std_logic;
SIGNAL \lcd|next_command.RESET2~regout\ : std_logic;
SIGNAL \lcd|state~37_combout\ : std_logic;
SIGNAL \lcd|state~38_combout\ : std_logic;
SIGNAL \lcd|Selector14~0_combout\ : std_logic;
SIGNAL \lcd|Selector16~0_combout\ : std_logic;
SIGNAL \lcd|Selector16~1_combout\ : std_logic;
SIGNAL \lcd|Selector17~0_combout\ : std_logic;
SIGNAL \lcd|Selector13~0_combout\ : std_logic;
SIGNAL \lcd|Selector12~0_combout\ : std_logic;
SIGNAL \lcd|next_command~15_combout\ : std_logic;
SIGNAL \lcd|next_command~16_combout\ : std_logic;
SIGNAL \lcd|Selector19~0_combout\ : std_logic;
SIGNAL \clock48MHz~combout\ : std_logic;
SIGNAL \clock48MHz~clkctrl_outclk\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \lcd|state~27_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[0]~23\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[1]~24_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[11]~56_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[1]~25\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[2]~27\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[3]~28_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[3]~29\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[4]~31\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[5]~32_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[5]~33\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[6]~35\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[7]~36_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[7]~37\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[8]~38_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[8]~39\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[9]~40_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[9]~41\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[10]~42_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[10]~43\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[11]~44_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[6]~34_combout\ : std_logic;
SIGNAL \lcd|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd|LessThan0~2_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[11]~45\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[12]~46_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[12]~47\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[13]~49\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[14]~50_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[13]~48_combout\ : std_logic;
SIGNAL \lcd|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd|CLK_COUNT_400HZ[11]~21_combout\ : std_logic;
SIGNAL \lcd|CLK_400HZ_Enable~0_combout\ : std_logic;
SIGNAL \lcd|CLK_400HZ_Enable~regout\ : std_logic;
SIGNAL \lcd|next_command.DISPLAY_OFF~0_combout\ : std_logic;
SIGNAL \lcd|state.DROP_LCD_E~regout\ : std_logic;
SIGNAL \lcd|state~28_combout\ : std_logic;
SIGNAL \lcd|state.HOLD~regout\ : std_logic;
SIGNAL \lcd|Selector20~0_combout\ : std_logic;
SIGNAL \lcd|next_command.DISPLAY_OFF~regout\ : std_logic;
SIGNAL \lcd|state~35_combout\ : std_logic;
SIGNAL \lcd|state.DISPLAY_OFF~regout\ : std_logic;
SIGNAL \lcd|Selector21~0_combout\ : std_logic;
SIGNAL \lcd|next_command.DISPLAY_CLEAR~regout\ : std_logic;
SIGNAL \lcd|state~33_combout\ : std_logic;
SIGNAL \lcd|state.DISPLAY_CLEAR~regout\ : std_logic;
SIGNAL \lcd|Selector9~2_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[0]~5_combout\ : std_logic;
SIGNAL \lcd|state.RESET1~0_combout\ : std_logic;
SIGNAL \lcd|state.RESET1~regout\ : std_logic;
SIGNAL \lcd|Selector26~0_combout\ : std_logic;
SIGNAL \lcd|LCD_RS~0_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[0]~6\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[1]~7_combout\ : std_logic;
SIGNAL \lcd|Selector25~0_combout\ : std_logic;
SIGNAL \lcd|state~29_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[1]~8\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[2]~10\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[3]~11_combout\ : std_logic;
SIGNAL \lcd|Selector23~0_combout\ : std_logic;
SIGNAL \lcd|Equal2~0_combout\ : std_logic;
SIGNAL \lcd|Selector15~0_combout\ : std_logic;
SIGNAL \lcd|Selector15~1_combout\ : std_logic;
SIGNAL \lcd|next_command.Print_String~regout\ : std_logic;
SIGNAL \lcd|state~26_combout\ : std_logic;
SIGNAL \lcd|state.Print_String~regout\ : std_logic;
SIGNAL \lcd|Mux1~1_combout\ : std_logic;
SIGNAL \lcd|Mux1~0_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[2]~9_combout\ : std_logic;
SIGNAL \lcd|Selector24~0_combout\ : std_logic;
SIGNAL \lcd|Mux0~0_combout\ : std_logic;
SIGNAL \lcd|Equal0~0_combout\ : std_logic;
SIGNAL \clockPB~combout\ : std_logic;
SIGNAL \clockPB~clkctrl_outclk\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \IFT|pc_inc[2]~0_combout\ : std_logic;
SIGNAL \IFT|mem_addr[0]~0_combout\ : std_logic;
SIGNAL \IFT|pc_inc[2]~1\ : std_logic;
SIGNAL \IFT|pc_inc[3]~2_combout\ : std_logic;
SIGNAL \IFT|mem_addr[1]~2_combout\ : std_logic;
SIGNAL \IFT|pc_inc[3]~3\ : std_logic;
SIGNAL \IFT|pc_inc[4]~4_combout\ : std_logic;
SIGNAL \IFT|mem_addr[2]~3_combout\ : std_logic;
SIGNAL \IFT|pc_inc[4]~5\ : std_logic;
SIGNAL \IFT|pc_inc[5]~6_combout\ : std_logic;
SIGNAL \IFT|mem_addr[3]~4_combout\ : std_logic;
SIGNAL \IFT|pc_inc[5]~7\ : std_logic;
SIGNAL \IFT|pc_inc[6]~8_combout\ : std_logic;
SIGNAL \IFT|mem_addr[4]~1_combout\ : std_logic;
SIGNAL \IFT|pc_inc[6]~9\ : std_logic;
SIGNAL \IFT|pc_inc[7]~10_combout\ : std_logic;
SIGNAL \IFT|mem_addr[5]~5_combout\ : std_logic;
SIGNAL \IFT|pc_inc[7]~11\ : std_logic;
SIGNAL \IFT|pc_inc[8]~12_combout\ : std_logic;
SIGNAL \IFT|mem_addr[6]~6_combout\ : std_logic;
SIGNAL \IFT|pc_inc[8]~13\ : std_logic;
SIGNAL \IFT|pc_inc[9]~14_combout\ : std_logic;
SIGNAL \IFT|mem_addr[7]~7_combout\ : std_logic;
SIGNAL \lcd|Mux6~12_combout\ : std_logic;
SIGNAL \lcd|Mux6~9_combout\ : std_logic;
SIGNAL \lcd|Mux6~7_combout\ : std_logic;
SIGNAL \lcd|Mux6~8_combout\ : std_logic;
SIGNAL \lcd|Mux6~11_combout\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[3]~12\ : std_logic;
SIGNAL \lcd|CHAR_COUNT[4]~13_combout\ : std_logic;
SIGNAL \lcd|Selector22~0_combout\ : std_logic;
SIGNAL \lcd|Mux2~0_combout\ : std_logic;
SIGNAL \lcd|Mux6~2_combout\ : std_logic;
SIGNAL \lcd|Mux6~0_combout\ : std_logic;
SIGNAL \lcd|Mux6~1_combout\ : std_logic;
SIGNAL \lcd|Mux6~4_combout\ : std_logic;
SIGNAL \lcd|Mux6~5_combout\ : std_logic;
SIGNAL \lcd|Mux6~6_combout\ : std_logic;
SIGNAL \lcd|Mux6~13_combout\ : std_logic;
SIGNAL \lcd|Selector9~5_combout\ : std_logic;
SIGNAL \lcd|Mux4~5_combout\ : std_logic;
SIGNAL \lcd|Mux6~3_combout\ : std_logic;
SIGNAL \lcd|Mux4~0_combout\ : std_logic;
SIGNAL \lcd|Mux4~1_combout\ : std_logic;
SIGNAL \lcd|Mux4~2_combout\ : std_logic;
SIGNAL \lcd|Mux4~3_combout\ : std_logic;
SIGNAL \lcd|Mux4~4_combout\ : std_logic;
SIGNAL \lcd|Mux4~6_combout\ : std_logic;
SIGNAL \lcd|Mux4~7_combout\ : std_logic;
SIGNAL \lcd|Mux4~8_combout\ : std_logic;
SIGNAL \lcd|Mux5~7_combout\ : std_logic;
SIGNAL \lcd|Mux5~6_combout\ : std_logic;
SIGNAL \lcd|Mux5~8_combout\ : std_logic;
SIGNAL \lcd|Mux5~9_combout\ : std_logic;
SIGNAL \lcd|Mux5~2_combout\ : std_logic;
SIGNAL \lcd|Mux5~3_combout\ : std_logic;
SIGNAL \lcd|Mux5~4_combout\ : std_logic;
SIGNAL \lcd|Mux5~5_combout\ : std_logic;
SIGNAL \lcd|Mux5~11_combout\ : std_logic;
SIGNAL \lcd|Mux5~10_combout\ : std_logic;
SIGNAL \lcd|Mux3~5_combout\ : std_logic;
SIGNAL \lcd|Mux3~0_combout\ : std_logic;
SIGNAL \lcd|Mux3~1_combout\ : std_logic;
SIGNAL \lcd|Mux3~2_combout\ : std_logic;
SIGNAL \lcd|Mux3~3_combout\ : std_logic;
SIGNAL \lcd|Mux3~4_combout\ : std_logic;
SIGNAL \lcd|Mux3~6_combout\ : std_logic;
SIGNAL \lcd|Mux3~7_combout\ : std_logic;
SIGNAL \lcd|Mux3~8_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~1_combout\ : std_logic;
SIGNAL \lcd|Selector9~4_combout\ : std_logic;
SIGNAL \lcd|LCD_RW_INT~0_combout\ : std_logic;
SIGNAL \lcd|LCD_RW_INT~regout\ : std_logic;
SIGNAL \lcd|state~30_combout\ : std_logic;
SIGNAL \lcd|state.MODE_SET~regout\ : std_logic;
SIGNAL \lcd|Selector8~0_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~2_combout\ : std_logic;
SIGNAL \lcd|Selector8~1_combout\ : std_logic;
SIGNAL \lcd|Selector8~2_combout\ : std_logic;
SIGNAL \lcd|Selector7~0_combout\ : std_logic;
SIGNAL \lcd|Selector7~1_combout\ : std_logic;
SIGNAL \lcd|Selector7~2_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~3_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~7_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~6_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~8_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE[3]~feeder_combout\ : std_logic;
SIGNAL \lcd|Mux2~2_combout\ : std_logic;
SIGNAL \lcd|Mux2~3_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~9_combout\ : std_logic;
SIGNAL \lcd|Selector9~3_combout\ : std_logic;
SIGNAL \lcd|LessThan1~0_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~12_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~13_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~14_combout\ : std_logic;
SIGNAL \lcd|DATA_BUS_VALUE~15_combout\ : std_logic;
SIGNAL \lcd|Selector3~1_combout\ : std_logic;
SIGNAL \lcd|Selector17~1_combout\ : std_logic;
SIGNAL \lcd|next_command.RETURN_HOME~regout\ : std_logic;
SIGNAL \lcd|state~32_combout\ : std_logic;
SIGNAL \lcd|state.RETURN_HOME~regout\ : std_logic;
SIGNAL \lcd|Selector2~0_combout\ : std_logic;
SIGNAL \lcd|Selector1~0_combout\ : std_logic;
SIGNAL \lcd|LCD_RS~regout\ : std_logic;
SIGNAL \lcd|LCD_E~0_combout\ : std_logic;
SIGNAL \lcd|LCD_E~regout\ : std_logic;
SIGNAL \IFT|data_memory|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IFT|pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \lcd|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_clockPB~clkctrl_outclk\ : std_logic;
SIGNAL \lcd|ALT_INV_state.Print_String~regout\ : std_logic;
SIGNAL \lcd|ALT_INV_LCD_RW_INT~regout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock48MHz <= clock48MHz;
LCD_RS <= ww_LCD_RS;
LCD_E <= ww_LCD_E;
LCD_RW <= ww_LCD_RW;
LCD_ON <= ww_LCD_ON;
ww_clockPB <= clockPB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\IFT|data_memory|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\IFT|mem_addr[7]~7_combout\ & \IFT|mem_addr[6]~6_combout\ & \IFT|mem_addr[5]~5_combout\ & \IFT|mem_addr[4]~1_combout\ & \IFT|mem_addr[3]~4_combout\ & \IFT|mem_addr[2]~3_combout\ & 
\IFT|mem_addr[1]~2_combout\ & \IFT|mem_addr[0]~0_combout\);

\IFT|data_memory|auto_generated|q_a\(0) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\IFT|data_memory|auto_generated|q_a\(1) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\IFT|data_memory|auto_generated|q_a\(2) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\IFT|data_memory|auto_generated|q_a\(4) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\IFT|data_memory|auto_generated|q_a\(6) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\IFT|data_memory|auto_generated|q_a\(8) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\IFT|data_memory|auto_generated|q_a\(9) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\IFT|data_memory|auto_generated|q_a\(10) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\IFT|data_memory|auto_generated|q_a\(12) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\IFT|data_memory|auto_generated|q_a\(14) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\IFT|data_memory|auto_generated|q_a\(16) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\IFT|data_memory|auto_generated|q_a\(18) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\IFT|data_memory|auto_generated|q_a\(20) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\IFT|data_memory|auto_generated|q_a\(22) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\IFT|data_memory|auto_generated|q_a\(24) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\IFT|data_memory|auto_generated|q_a\(26) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\IFT|data_memory|auto_generated|q_a\(28) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\IFT|data_memory|auto_generated|q_a\(30) <= \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\IFT|data_memory|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\IFT|mem_addr[7]~7_combout\ & \IFT|mem_addr[6]~6_combout\ & \IFT|mem_addr[5]~5_combout\ & \IFT|mem_addr[4]~1_combout\ & \IFT|mem_addr[3]~4_combout\ & \IFT|mem_addr[2]~3_combout\ & 
\IFT|mem_addr[1]~2_combout\ & \IFT|mem_addr[0]~0_combout\);

\IFT|data_memory|auto_generated|q_a\(3) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\IFT|data_memory|auto_generated|q_a\(5) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);
\IFT|data_memory|auto_generated|q_a\(7) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(2);
\IFT|data_memory|auto_generated|q_a\(11) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(3);
\IFT|data_memory|auto_generated|q_a\(13) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(4);
\IFT|data_memory|auto_generated|q_a\(15) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(5);
\IFT|data_memory|auto_generated|q_a\(17) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(6);
\IFT|data_memory|auto_generated|q_a\(19) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(7);
\IFT|data_memory|auto_generated|q_a\(21) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(8);
\IFT|data_memory|auto_generated|q_a\(23) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(9);
\IFT|data_memory|auto_generated|q_a\(25) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(10);
\IFT|data_memory|auto_generated|q_a\(27) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(11);
\IFT|data_memory|auto_generated|q_a\(29) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(12);
\IFT|data_memory|auto_generated|q_a\(31) <= \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\(13);

\clock48MHz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock48MHz~combout\);

\clockPB~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clockPB~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_clockPB~clkctrl_outclk\ <= NOT \clockPB~clkctrl_outclk\;
\lcd|ALT_INV_state.Print_String~regout\ <= NOT \lcd|state.Print_String~regout\;
\lcd|ALT_INV_LCD_RW_INT~regout\ <= NOT \lcd|LCD_RW_INT~regout\;

-- Location: LCFF_X46_Y25_N13
\lcd|CLK_COUNT_400HZ[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[16]~54_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(16));

-- Location: LCFF_X46_Y25_N15
\lcd|CLK_COUNT_400HZ[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[17]~57_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(17));

-- Location: LCFF_X46_Y25_N17
\lcd|CLK_COUNT_400HZ[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[18]~59_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(18));

-- Location: LCFF_X46_Y25_N19
\lcd|CLK_COUNT_400HZ[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[19]~61_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(19));

-- Location: LCFF_X46_Y25_N11
\lcd|CLK_COUNT_400HZ[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[15]~52_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(15));

-- Location: LCFF_X51_Y25_N9
\lcd|state.LINE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~31_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.LINE2~regout\);

-- Location: LCFF_X46_Y26_N21
\lcd|CLK_COUNT_400HZ[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[4]~30_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(4));

-- Location: LCFF_X46_Y26_N17
\lcd|CLK_COUNT_400HZ[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[2]~26_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(2));

-- Location: LCFF_X46_Y26_N13
\lcd|CLK_COUNT_400HZ[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[0]~22_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X46_Y26_N12
\lcd|CLK_COUNT_400HZ[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[0]~22_combout\ = \lcd|CLK_COUNT_400HZ\(0) $ (VCC)
-- \lcd|CLK_COUNT_400HZ[0]~23\ = CARRY(\lcd|CLK_COUNT_400HZ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(0),
	datad => VCC,
	combout => \lcd|CLK_COUNT_400HZ[0]~22_combout\,
	cout => \lcd|CLK_COUNT_400HZ[0]~23\);

-- Location: LCCOMB_X46_Y26_N16
\lcd|CLK_COUNT_400HZ[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[2]~26_combout\ = (\lcd|CLK_COUNT_400HZ\(2) & (\lcd|CLK_COUNT_400HZ[1]~25\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(2) & (!\lcd|CLK_COUNT_400HZ[1]~25\ & VCC))
-- \lcd|CLK_COUNT_400HZ[2]~27\ = CARRY((\lcd|CLK_COUNT_400HZ\(2) & !\lcd|CLK_COUNT_400HZ[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(2),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[1]~25\,
	combout => \lcd|CLK_COUNT_400HZ[2]~26_combout\,
	cout => \lcd|CLK_COUNT_400HZ[2]~27\);

-- Location: LCCOMB_X46_Y26_N20
\lcd|CLK_COUNT_400HZ[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[4]~30_combout\ = (\lcd|CLK_COUNT_400HZ\(4) & (\lcd|CLK_COUNT_400HZ[3]~29\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(4) & (!\lcd|CLK_COUNT_400HZ[3]~29\ & VCC))
-- \lcd|CLK_COUNT_400HZ[4]~31\ = CARRY((\lcd|CLK_COUNT_400HZ\(4) & !\lcd|CLK_COUNT_400HZ[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(4),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[3]~29\,
	combout => \lcd|CLK_COUNT_400HZ[4]~30_combout\,
	cout => \lcd|CLK_COUNT_400HZ[4]~31\);

-- Location: LCCOMB_X46_Y25_N8
\lcd|CLK_COUNT_400HZ[14]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[14]~50_combout\ = (\lcd|CLK_COUNT_400HZ\(14) & (\lcd|CLK_COUNT_400HZ[13]~49\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(14) & (!\lcd|CLK_COUNT_400HZ[13]~49\ & VCC))
-- \lcd|CLK_COUNT_400HZ[14]~51\ = CARRY((\lcd|CLK_COUNT_400HZ\(14) & !\lcd|CLK_COUNT_400HZ[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(14),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[13]~49\,
	combout => \lcd|CLK_COUNT_400HZ[14]~50_combout\,
	cout => \lcd|CLK_COUNT_400HZ[14]~51\);

-- Location: LCCOMB_X46_Y25_N10
\lcd|CLK_COUNT_400HZ[15]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[15]~52_combout\ = (\lcd|CLK_COUNT_400HZ\(15) & (!\lcd|CLK_COUNT_400HZ[14]~51\)) # (!\lcd|CLK_COUNT_400HZ\(15) & ((\lcd|CLK_COUNT_400HZ[14]~51\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[15]~53\ = CARRY((!\lcd|CLK_COUNT_400HZ[14]~51\) # (!\lcd|CLK_COUNT_400HZ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(15),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[14]~51\,
	combout => \lcd|CLK_COUNT_400HZ[15]~52_combout\,
	cout => \lcd|CLK_COUNT_400HZ[15]~53\);

-- Location: LCCOMB_X46_Y25_N12
\lcd|CLK_COUNT_400HZ[16]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[16]~54_combout\ = (\lcd|CLK_COUNT_400HZ\(16) & (\lcd|CLK_COUNT_400HZ[15]~53\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(16) & (!\lcd|CLK_COUNT_400HZ[15]~53\ & VCC))
-- \lcd|CLK_COUNT_400HZ[16]~55\ = CARRY((\lcd|CLK_COUNT_400HZ\(16) & !\lcd|CLK_COUNT_400HZ[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(16),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[15]~53\,
	combout => \lcd|CLK_COUNT_400HZ[16]~54_combout\,
	cout => \lcd|CLK_COUNT_400HZ[16]~55\);

-- Location: LCCOMB_X46_Y25_N14
\lcd|CLK_COUNT_400HZ[17]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[17]~57_combout\ = (\lcd|CLK_COUNT_400HZ\(17) & (!\lcd|CLK_COUNT_400HZ[16]~55\)) # (!\lcd|CLK_COUNT_400HZ\(17) & ((\lcd|CLK_COUNT_400HZ[16]~55\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[17]~58\ = CARRY((!\lcd|CLK_COUNT_400HZ[16]~55\) # (!\lcd|CLK_COUNT_400HZ\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(17),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[16]~55\,
	combout => \lcd|CLK_COUNT_400HZ[17]~57_combout\,
	cout => \lcd|CLK_COUNT_400HZ[17]~58\);

-- Location: LCCOMB_X46_Y25_N16
\lcd|CLK_COUNT_400HZ[18]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[18]~59_combout\ = (\lcd|CLK_COUNT_400HZ\(18) & (\lcd|CLK_COUNT_400HZ[17]~58\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(18) & (!\lcd|CLK_COUNT_400HZ[17]~58\ & VCC))
-- \lcd|CLK_COUNT_400HZ[18]~60\ = CARRY((\lcd|CLK_COUNT_400HZ\(18) & !\lcd|CLK_COUNT_400HZ[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(18),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[17]~58\,
	combout => \lcd|CLK_COUNT_400HZ[18]~59_combout\,
	cout => \lcd|CLK_COUNT_400HZ[18]~60\);

-- Location: LCCOMB_X46_Y25_N18
\lcd|CLK_COUNT_400HZ[19]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[19]~61_combout\ = \lcd|CLK_COUNT_400HZ[18]~60\ $ (\lcd|CLK_COUNT_400HZ\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lcd|CLK_COUNT_400HZ\(19),
	cin => \lcd|CLK_COUNT_400HZ[18]~60\,
	combout => \lcd|CLK_COUNT_400HZ[19]~61_combout\);

-- Location: M4K_X52_Y25
\IFT|data_memory|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041FE903FF2100C2400210048000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "program.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Ifetch:IFT|altsyncram:data_memory|altsyncram_tin3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \ALT_INV_clockPB~clkctrl_outclk\,
	portaaddr => \IFT|data_memory|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \IFT|data_memory|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y24
\IFT|data_memory|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004FC17FE00004AA102840",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "program.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Ifetch:IFT|altsyncram:data_memory|altsyncram_tin3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 14,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 14,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \ALT_INV_clockPB~clkctrl_outclk\,
	portaaddr => \IFT|data_memory|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \IFT|data_memory|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCFF_X47_Y25_N1
\lcd|state.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~34_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.DISPLAY_ON~regout\);

-- Location: LCFF_X47_Y25_N9
\lcd|state.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~36_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.FUNC_SET~regout\);

-- Location: LCFF_X47_Y25_N31
\lcd|state.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~37_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.RESET2~regout\);

-- Location: LCFF_X47_Y25_N29
\lcd|state.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~38_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.RESET3~regout\);

-- Location: LCFF_X47_Y25_N7
\lcd|next_command.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector14~0_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|next_command.MODE_SET~regout\);

-- Location: LCFF_X51_Y25_N13
\lcd|next_command.LINE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector16~1_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|next_command.LINE2~regout\);

-- Location: LCFF_X47_Y25_N23
\lcd|next_command.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector13~0_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|next_command.DISPLAY_ON~regout\);

-- Location: LCFF_X47_Y25_N19
\lcd|next_command.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector12~0_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|next_command.FUNC_SET~regout\);

-- Location: LCFF_X47_Y25_N21
\lcd|next_command.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector19~0_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|next_command.RESET3~regout\);

-- Location: LCCOMB_X46_Y25_N24
\lcd|CLK_COUNT_400HZ[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[11]~20_combout\ = (!\lcd|CLK_COUNT_400HZ\(18) & (!\lcd|CLK_COUNT_400HZ\(19) & (!\lcd|CLK_COUNT_400HZ\(17) & !\lcd|CLK_COUNT_400HZ\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(18),
	datab => \lcd|CLK_COUNT_400HZ\(19),
	datac => \lcd|CLK_COUNT_400HZ\(17),
	datad => \lcd|CLK_COUNT_400HZ\(16),
	combout => \lcd|CLK_COUNT_400HZ[11]~20_combout\);

-- Location: LCCOMB_X51_Y25_N16
\lcd|DATA_BUS_VALUE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~0_combout\ = (!\lcd|state.MODE_SET~regout\ & (!\lcd|state.LINE2~regout\ & !\lcd|state.RETURN_HOME~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|state.MODE_SET~regout\,
	datac => \lcd|state.LINE2~regout\,
	datad => \lcd|state.RETURN_HOME~regout\,
	combout => \lcd|DATA_BUS_VALUE~0_combout\);

-- Location: LCCOMB_X51_Y25_N2
\lcd|Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~10_combout\ = (\lcd|CHAR_COUNT\(4) & (((\lcd|CHAR_COUNT\(2) & \IFT|data_memory|auto_generated|q_a\(28))) # (!\lcd|CHAR_COUNT\(0)))) # (!\lcd|CHAR_COUNT\(4) & (!\lcd|CHAR_COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \IFT|data_memory|auto_generated|q_a\(28),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux6~10_combout\);

-- Location: LCCOMB_X49_Y24_N10
\lcd|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux2~1_combout\ = (!\lcd|CHAR_COUNT\(0) & !\lcd|CHAR_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux2~1_combout\);

-- Location: LCCOMB_X49_Y25_N0
\lcd|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Equal0~1_combout\ = (\lcd|Equal0~0_combout\ & !\lcd|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Equal0~0_combout\,
	datad => \lcd|Mux2~3_combout\,
	combout => \lcd|Equal0~1_combout\);

-- Location: LCFF_X53_Y24_N7
\IFT|pc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clockPB~clkctrl_outclk\,
	datain => \IFT|mem_addr[6]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IFT|pc\(8));

-- Location: LCCOMB_X47_Y25_N16
\lcd|DATA_BUS_VALUE~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~4_combout\ = ((\lcd|state.DISPLAY_ON~regout\) # ((\lcd|state.FUNC_SET~regout\) # (\lcd|state.DISPLAY_OFF~regout\))) # (!\lcd|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET1~regout\,
	datab => \lcd|state.DISPLAY_ON~regout\,
	datac => \lcd|state.FUNC_SET~regout\,
	datad => \lcd|state.DISPLAY_OFF~regout\,
	combout => \lcd|DATA_BUS_VALUE~4_combout\);

-- Location: LCCOMB_X48_Y25_N20
\lcd|DATA_BUS_VALUE~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~5_combout\ = (\lcd|CLK_400HZ_Enable~regout\ & ((\lcd|state.RESET3~regout\) # ((\lcd|DATA_BUS_VALUE~4_combout\) # (\lcd|state.RESET2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET3~regout\,
	datab => \lcd|DATA_BUS_VALUE~4_combout\,
	datac => \lcd|state.RESET2~regout\,
	datad => \lcd|CLK_400HZ_Enable~regout\,
	combout => \lcd|DATA_BUS_VALUE~5_combout\);

-- Location: LCCOMB_X47_Y25_N10
\lcd|DATA_BUS_VALUE~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~10_combout\ = (!\lcd|state.DISPLAY_OFF~regout\ & (!\lcd|state.DISPLAY_CLEAR~regout\ & !\lcd|state.DISPLAY_ON~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|state.DISPLAY_OFF~regout\,
	datac => \lcd|state.DISPLAY_CLEAR~regout\,
	datad => \lcd|state.DISPLAY_ON~regout\,
	combout => \lcd|DATA_BUS_VALUE~10_combout\);

-- Location: LCCOMB_X48_Y25_N8
\lcd|DATA_BUS_VALUE~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~11_combout\ = (!\reset~combout\ & (((\lcd|state.Print_String~regout\) # (!\lcd|DATA_BUS_VALUE~0_combout\)) # (!\lcd|DATA_BUS_VALUE~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|DATA_BUS_VALUE~10_combout\,
	datab => \lcd|state.Print_String~regout\,
	datac => \reset~combout\,
	datad => \lcd|DATA_BUS_VALUE~0_combout\,
	combout => \lcd|DATA_BUS_VALUE~11_combout\);

-- Location: LCCOMB_X49_Y25_N16
\lcd|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector3~0_combout\ = (\lcd|state.LINE2~regout\) # ((\lcd|DATA_BUS_VALUE\(6) & ((\lcd|state.DROP_LCD_E~regout\) # (\lcd|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~regout\,
	datab => \lcd|state.HOLD~regout\,
	datac => \lcd|state.LINE2~regout\,
	datad => \lcd|DATA_BUS_VALUE\(6),
	combout => \lcd|Selector3~0_combout\);

-- Location: LCCOMB_X51_Y25_N8
\lcd|state~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~31_combout\ = (\lcd|state.HOLD~regout\ & \lcd|next_command.LINE2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|state.HOLD~regout\,
	datad => \lcd|next_command.LINE2~regout\,
	combout => \lcd|state~31_combout\);

-- Location: LCCOMB_X47_Y25_N0
\lcd|state~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~34_combout\ = (\lcd|next_command.DISPLAY_ON~regout\ & \lcd|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|next_command.DISPLAY_ON~regout\,
	datac => \lcd|state.HOLD~regout\,
	combout => \lcd|state~34_combout\);

-- Location: LCCOMB_X47_Y25_N8
\lcd|state~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~36_combout\ = (\lcd|state.HOLD~regout\ & \lcd|next_command.FUNC_SET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|state.HOLD~regout\,
	datad => \lcd|next_command.FUNC_SET~regout\,
	combout => \lcd|state~36_combout\);

-- Location: LCFF_X48_Y25_N23
\lcd|next_command.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|next_command~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|next_command.RESET2~regout\);

-- Location: LCCOMB_X47_Y25_N30
\lcd|state~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~37_combout\ = (\lcd|state.HOLD~regout\ & !\lcd|next_command.RESET2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|state.HOLD~regout\,
	datad => \lcd|next_command.RESET2~regout\,
	combout => \lcd|state~37_combout\);

-- Location: LCCOMB_X47_Y25_N28
\lcd|state~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~38_combout\ = (\lcd|state.HOLD~regout\ & \lcd|next_command.RESET3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|state.HOLD~regout\,
	datac => \lcd|next_command.RESET3~regout\,
	combout => \lcd|state~38_combout\);

-- Location: LCCOMB_X47_Y25_N6
\lcd|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector14~0_combout\ = (\lcd|state.DISPLAY_ON~regout\) # ((\lcd|next_command.MODE_SET~regout\ & ((\lcd|state.DROP_LCD_E~regout\) # (\lcd|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~regout\,
	datab => \lcd|state.HOLD~regout\,
	datac => \lcd|next_command.MODE_SET~regout\,
	datad => \lcd|state.DISPLAY_ON~regout\,
	combout => \lcd|Selector14~0_combout\);

-- Location: LCCOMB_X51_Y25_N14
\lcd|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector16~0_combout\ = (\lcd|next_command.LINE2~regout\ & ((\lcd|state.DROP_LCD_E~regout\) # (\lcd|state.HOLD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|state.DROP_LCD_E~regout\,
	datac => \lcd|state.HOLD~regout\,
	datad => \lcd|next_command.LINE2~regout\,
	combout => \lcd|Selector16~0_combout\);

-- Location: LCCOMB_X51_Y25_N12
\lcd|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector16~1_combout\ = (\lcd|Selector16~0_combout\) # ((!\lcd|CHAR_COUNT\(4) & (\lcd|Equal2~0_combout\ & \lcd|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|Selector16~0_combout\,
	datac => \lcd|Equal2~0_combout\,
	datad => \lcd|state.Print_String~regout\,
	combout => \lcd|Selector16~1_combout\);

-- Location: LCCOMB_X48_Y25_N12
\lcd|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector17~0_combout\ = (\lcd|next_command.RETURN_HOME~regout\ & ((\lcd|state.HOLD~regout\) # (\lcd|state.DROP_LCD_E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~regout\,
	datac => \lcd|state.DROP_LCD_E~regout\,
	datad => \lcd|next_command.RETURN_HOME~regout\,
	combout => \lcd|Selector17~0_combout\);

-- Location: LCCOMB_X47_Y25_N22
\lcd|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector13~0_combout\ = (\lcd|state.DISPLAY_CLEAR~regout\) # ((\lcd|next_command.DISPLAY_ON~regout\ & ((\lcd|state.HOLD~regout\) # (\lcd|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DISPLAY_CLEAR~regout\,
	datab => \lcd|state.HOLD~regout\,
	datac => \lcd|next_command.DISPLAY_ON~regout\,
	datad => \lcd|state.DROP_LCD_E~regout\,
	combout => \lcd|Selector13~0_combout\);

-- Location: LCCOMB_X47_Y25_N18
\lcd|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector12~0_combout\ = (\lcd|state.RESET3~regout\) # ((\lcd|next_command.FUNC_SET~regout\ & ((\lcd|state.HOLD~regout\) # (\lcd|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET3~regout\,
	datab => \lcd|state.HOLD~regout\,
	datac => \lcd|next_command.FUNC_SET~regout\,
	datad => \lcd|state.DROP_LCD_E~regout\,
	combout => \lcd|Selector12~0_combout\);

-- Location: LCCOMB_X48_Y25_N10
\lcd|next_command~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|next_command~15_combout\ = (!\lcd|next_command.RESET2~regout\ & ((\lcd|state.HOLD~regout\) # ((\lcd|state.DROP_LCD_E~regout\) # (!\lcd|CLK_400HZ_Enable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~regout\,
	datab => \lcd|next_command.RESET2~regout\,
	datac => \lcd|state.DROP_LCD_E~regout\,
	datad => \lcd|CLK_400HZ_Enable~regout\,
	combout => \lcd|next_command~15_combout\);

-- Location: LCCOMB_X48_Y25_N22
\lcd|next_command~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|next_command~16_combout\ = (!\lcd|next_command~15_combout\ & (!\reset~combout\ & ((\lcd|state.RESET1~regout\) # (!\lcd|CLK_400HZ_Enable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|next_command~15_combout\,
	datab => \lcd|CLK_400HZ_Enable~regout\,
	datac => \reset~combout\,
	datad => \lcd|state.RESET1~regout\,
	combout => \lcd|next_command~16_combout\);

-- Location: LCCOMB_X47_Y25_N20
\lcd|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector19~0_combout\ = (\lcd|state.RESET2~regout\) # ((\lcd|next_command.RESET3~regout\ & ((\lcd|state.DROP_LCD_E~regout\) # (\lcd|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~regout\,
	datab => \lcd|state.HOLD~regout\,
	datac => \lcd|next_command.RESET3~regout\,
	datad => \lcd|state.RESET2~regout\,
	combout => \lcd|Selector19~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock48MHz~I\ : cycloneii_io
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
	padio => ww_clock48MHz,
	combout => \clock48MHz~combout\);

-- Location: CLKCTRL_G3
\clock48MHz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock48MHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock48MHz~clkctrl_outclk\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCCOMB_X48_Y25_N14
\lcd|state~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~27_combout\ = (!\reset~combout\ & (!\lcd|state.DROP_LCD_E~regout\ & !\lcd|state.HOLD~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \lcd|state.DROP_LCD_E~regout\,
	datad => \lcd|state.HOLD~regout\,
	combout => \lcd|state~27_combout\);

-- Location: LCCOMB_X46_Y26_N14
\lcd|CLK_COUNT_400HZ[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[1]~24_combout\ = (\lcd|CLK_COUNT_400HZ\(1) & (!\lcd|CLK_COUNT_400HZ[0]~23\)) # (!\lcd|CLK_COUNT_400HZ\(1) & ((\lcd|CLK_COUNT_400HZ[0]~23\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[1]~25\ = CARRY((!\lcd|CLK_COUNT_400HZ[0]~23\) # (!\lcd|CLK_COUNT_400HZ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(1),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[0]~23\,
	combout => \lcd|CLK_COUNT_400HZ[1]~24_combout\,
	cout => \lcd|CLK_COUNT_400HZ[1]~25\);

-- Location: LCCOMB_X46_Y25_N20
\lcd|CLK_COUNT_400HZ[11]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[11]~56_combout\ = (\reset~combout\) # (!\lcd|CLK_COUNT_400HZ[11]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \lcd|CLK_COUNT_400HZ[11]~21_combout\,
	combout => \lcd|CLK_COUNT_400HZ[11]~56_combout\);

-- Location: LCFF_X46_Y26_N15
\lcd|CLK_COUNT_400HZ[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[1]~24_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X46_Y26_N18
\lcd|CLK_COUNT_400HZ[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[3]~28_combout\ = (\lcd|CLK_COUNT_400HZ\(3) & (!\lcd|CLK_COUNT_400HZ[2]~27\)) # (!\lcd|CLK_COUNT_400HZ\(3) & ((\lcd|CLK_COUNT_400HZ[2]~27\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[3]~29\ = CARRY((!\lcd|CLK_COUNT_400HZ[2]~27\) # (!\lcd|CLK_COUNT_400HZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(3),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[2]~27\,
	combout => \lcd|CLK_COUNT_400HZ[3]~28_combout\,
	cout => \lcd|CLK_COUNT_400HZ[3]~29\);

-- Location: LCFF_X46_Y26_N19
\lcd|CLK_COUNT_400HZ[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[3]~28_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X46_Y26_N22
\lcd|CLK_COUNT_400HZ[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[5]~32_combout\ = (\lcd|CLK_COUNT_400HZ\(5) & (!\lcd|CLK_COUNT_400HZ[4]~31\)) # (!\lcd|CLK_COUNT_400HZ\(5) & ((\lcd|CLK_COUNT_400HZ[4]~31\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[5]~33\ = CARRY((!\lcd|CLK_COUNT_400HZ[4]~31\) # (!\lcd|CLK_COUNT_400HZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(5),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[4]~31\,
	combout => \lcd|CLK_COUNT_400HZ[5]~32_combout\,
	cout => \lcd|CLK_COUNT_400HZ[5]~33\);

-- Location: LCFF_X46_Y26_N23
\lcd|CLK_COUNT_400HZ[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[5]~32_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X46_Y26_N24
\lcd|CLK_COUNT_400HZ[6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[6]~34_combout\ = (\lcd|CLK_COUNT_400HZ\(6) & (\lcd|CLK_COUNT_400HZ[5]~33\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(6) & (!\lcd|CLK_COUNT_400HZ[5]~33\ & VCC))
-- \lcd|CLK_COUNT_400HZ[6]~35\ = CARRY((\lcd|CLK_COUNT_400HZ\(6) & !\lcd|CLK_COUNT_400HZ[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(6),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[5]~33\,
	combout => \lcd|CLK_COUNT_400HZ[6]~34_combout\,
	cout => \lcd|CLK_COUNT_400HZ[6]~35\);

-- Location: LCCOMB_X46_Y26_N26
\lcd|CLK_COUNT_400HZ[7]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[7]~36_combout\ = (\lcd|CLK_COUNT_400HZ\(7) & (!\lcd|CLK_COUNT_400HZ[6]~35\)) # (!\lcd|CLK_COUNT_400HZ\(7) & ((\lcd|CLK_COUNT_400HZ[6]~35\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[7]~37\ = CARRY((!\lcd|CLK_COUNT_400HZ[6]~35\) # (!\lcd|CLK_COUNT_400HZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(7),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[6]~35\,
	combout => \lcd|CLK_COUNT_400HZ[7]~36_combout\,
	cout => \lcd|CLK_COUNT_400HZ[7]~37\);

-- Location: LCFF_X46_Y26_N27
\lcd|CLK_COUNT_400HZ[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[7]~36_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X46_Y26_N28
\lcd|CLK_COUNT_400HZ[8]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[8]~38_combout\ = (\lcd|CLK_COUNT_400HZ\(8) & (\lcd|CLK_COUNT_400HZ[7]~37\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(8) & (!\lcd|CLK_COUNT_400HZ[7]~37\ & VCC))
-- \lcd|CLK_COUNT_400HZ[8]~39\ = CARRY((\lcd|CLK_COUNT_400HZ\(8) & !\lcd|CLK_COUNT_400HZ[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(8),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[7]~37\,
	combout => \lcd|CLK_COUNT_400HZ[8]~38_combout\,
	cout => \lcd|CLK_COUNT_400HZ[8]~39\);

-- Location: LCFF_X46_Y26_N29
\lcd|CLK_COUNT_400HZ[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[8]~38_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X46_Y26_N30
\lcd|CLK_COUNT_400HZ[9]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[9]~40_combout\ = (\lcd|CLK_COUNT_400HZ\(9) & (!\lcd|CLK_COUNT_400HZ[8]~39\)) # (!\lcd|CLK_COUNT_400HZ\(9) & ((\lcd|CLK_COUNT_400HZ[8]~39\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[9]~41\ = CARRY((!\lcd|CLK_COUNT_400HZ[8]~39\) # (!\lcd|CLK_COUNT_400HZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(9),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[8]~39\,
	combout => \lcd|CLK_COUNT_400HZ[9]~40_combout\,
	cout => \lcd|CLK_COUNT_400HZ[9]~41\);

-- Location: LCFF_X46_Y26_N31
\lcd|CLK_COUNT_400HZ[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[9]~40_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X46_Y25_N0
\lcd|CLK_COUNT_400HZ[10]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[10]~42_combout\ = (\lcd|CLK_COUNT_400HZ\(10) & (\lcd|CLK_COUNT_400HZ[9]~41\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(10) & (!\lcd|CLK_COUNT_400HZ[9]~41\ & VCC))
-- \lcd|CLK_COUNT_400HZ[10]~43\ = CARRY((\lcd|CLK_COUNT_400HZ\(10) & !\lcd|CLK_COUNT_400HZ[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(10),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[9]~41\,
	combout => \lcd|CLK_COUNT_400HZ[10]~42_combout\,
	cout => \lcd|CLK_COUNT_400HZ[10]~43\);

-- Location: LCFF_X46_Y25_N1
\lcd|CLK_COUNT_400HZ[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[10]~42_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X46_Y25_N2
\lcd|CLK_COUNT_400HZ[11]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[11]~44_combout\ = (\lcd|CLK_COUNT_400HZ\(11) & (!\lcd|CLK_COUNT_400HZ[10]~43\)) # (!\lcd|CLK_COUNT_400HZ\(11) & ((\lcd|CLK_COUNT_400HZ[10]~43\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[11]~45\ = CARRY((!\lcd|CLK_COUNT_400HZ[10]~43\) # (!\lcd|CLK_COUNT_400HZ\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(11),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[10]~43\,
	combout => \lcd|CLK_COUNT_400HZ[11]~44_combout\,
	cout => \lcd|CLK_COUNT_400HZ[11]~45\);

-- Location: LCFF_X46_Y25_N3
\lcd|CLK_COUNT_400HZ[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[11]~44_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(11));

-- Location: LCFF_X46_Y26_N25
\lcd|CLK_COUNT_400HZ[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[6]~34_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(6));

-- Location: LCCOMB_X46_Y26_N0
\lcd|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|LessThan0~1_combout\ = (!\lcd|CLK_COUNT_400HZ\(7) & (!\lcd|CLK_COUNT_400HZ\(8) & ((!\lcd|CLK_COUNT_400HZ\(5)) # (!\lcd|CLK_COUNT_400HZ\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(7),
	datab => \lcd|CLK_COUNT_400HZ\(8),
	datac => \lcd|CLK_COUNT_400HZ\(6),
	datad => \lcd|CLK_COUNT_400HZ\(5),
	combout => \lcd|LessThan0~1_combout\);

-- Location: LCCOMB_X46_Y25_N28
\lcd|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|LessThan0~2_combout\ = ((!\lcd|CLK_COUNT_400HZ\(10) & ((\lcd|LessThan0~1_combout\) # (!\lcd|CLK_COUNT_400HZ\(9))))) # (!\lcd|CLK_COUNT_400HZ\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(9),
	datab => \lcd|CLK_COUNT_400HZ\(11),
	datac => \lcd|LessThan0~1_combout\,
	datad => \lcd|CLK_COUNT_400HZ\(10),
	combout => \lcd|LessThan0~2_combout\);

-- Location: LCCOMB_X46_Y25_N4
\lcd|CLK_COUNT_400HZ[12]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[12]~46_combout\ = (\lcd|CLK_COUNT_400HZ\(12) & (\lcd|CLK_COUNT_400HZ[11]~45\ $ (GND))) # (!\lcd|CLK_COUNT_400HZ\(12) & (!\lcd|CLK_COUNT_400HZ[11]~45\ & VCC))
-- \lcd|CLK_COUNT_400HZ[12]~47\ = CARRY((\lcd|CLK_COUNT_400HZ\(12) & !\lcd|CLK_COUNT_400HZ[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_COUNT_400HZ\(12),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[11]~45\,
	combout => \lcd|CLK_COUNT_400HZ[12]~46_combout\,
	cout => \lcd|CLK_COUNT_400HZ[12]~47\);

-- Location: LCFF_X46_Y25_N5
\lcd|CLK_COUNT_400HZ[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[12]~46_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X46_Y25_N6
\lcd|CLK_COUNT_400HZ[13]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[13]~48_combout\ = (\lcd|CLK_COUNT_400HZ\(13) & (!\lcd|CLK_COUNT_400HZ[12]~47\)) # (!\lcd|CLK_COUNT_400HZ\(13) & ((\lcd|CLK_COUNT_400HZ[12]~47\) # (GND)))
-- \lcd|CLK_COUNT_400HZ[13]~49\ = CARRY((!\lcd|CLK_COUNT_400HZ[12]~47\) # (!\lcd|CLK_COUNT_400HZ\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(13),
	datad => VCC,
	cin => \lcd|CLK_COUNT_400HZ[12]~47\,
	combout => \lcd|CLK_COUNT_400HZ[13]~48_combout\,
	cout => \lcd|CLK_COUNT_400HZ[13]~49\);

-- Location: LCFF_X46_Y25_N9
\lcd|CLK_COUNT_400HZ[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[14]~50_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(14));

-- Location: LCFF_X46_Y25_N7
\lcd|CLK_COUNT_400HZ[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_COUNT_400HZ[13]~48_combout\,
	sclr => \lcd|CLK_COUNT_400HZ[11]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X46_Y25_N26
\lcd|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|LessThan0~0_combout\ = ((!\lcd|CLK_COUNT_400HZ\(13)) # (!\lcd|CLK_COUNT_400HZ\(14))) # (!\lcd|CLK_COUNT_400HZ\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ\(15),
	datac => \lcd|CLK_COUNT_400HZ\(14),
	datad => \lcd|CLK_COUNT_400HZ\(13),
	combout => \lcd|LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y25_N22
\lcd|CLK_COUNT_400HZ[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_COUNT_400HZ[11]~21_combout\ = (\lcd|CLK_COUNT_400HZ[11]~20_combout\ & ((\lcd|LessThan0~0_combout\) # ((\lcd|LessThan0~2_combout\ & !\lcd|CLK_COUNT_400HZ\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CLK_COUNT_400HZ[11]~20_combout\,
	datab => \lcd|LessThan0~2_combout\,
	datac => \lcd|CLK_COUNT_400HZ\(12),
	datad => \lcd|LessThan0~0_combout\,
	combout => \lcd|CLK_COUNT_400HZ[11]~21_combout\);

-- Location: LCCOMB_X48_Y25_N28
\lcd|CLK_400HZ_Enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CLK_400HZ_Enable~0_combout\ = (!\reset~combout\ & !\lcd|CLK_COUNT_400HZ[11]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \lcd|CLK_COUNT_400HZ[11]~21_combout\,
	combout => \lcd|CLK_400HZ_Enable~0_combout\);

-- Location: LCFF_X48_Y25_N29
\lcd|CLK_400HZ_Enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CLK_400HZ_Enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CLK_400HZ_Enable~regout\);

-- Location: LCCOMB_X48_Y25_N6
\lcd|next_command.DISPLAY_OFF~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|next_command.DISPLAY_OFF~0_combout\ = (\reset~combout\) # (\lcd|CLK_400HZ_Enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \lcd|CLK_400HZ_Enable~regout\,
	combout => \lcd|next_command.DISPLAY_OFF~0_combout\);

-- Location: LCFF_X48_Y25_N15
\lcd|state.DROP_LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~27_combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.DROP_LCD_E~regout\);

-- Location: LCCOMB_X47_Y25_N14
\lcd|state~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~28_combout\ = (!\reset~combout\ & \lcd|state.DROP_LCD_E~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \lcd|state.DROP_LCD_E~regout\,
	combout => \lcd|state~28_combout\);

-- Location: LCFF_X47_Y25_N15
\lcd|state.HOLD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~28_combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.HOLD~regout\);

-- Location: LCCOMB_X47_Y25_N24
\lcd|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector20~0_combout\ = (\lcd|state.FUNC_SET~regout\) # ((\lcd|next_command.DISPLAY_OFF~regout\ & ((\lcd|state.HOLD~regout\) # (\lcd|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.FUNC_SET~regout\,
	datab => \lcd|state.HOLD~regout\,
	datac => \lcd|next_command.DISPLAY_OFF~regout\,
	datad => \lcd|state.DROP_LCD_E~regout\,
	combout => \lcd|Selector20~0_combout\);

-- Location: LCFF_X47_Y25_N25
\lcd|next_command.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector20~0_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|next_command.DISPLAY_OFF~regout\);

-- Location: LCCOMB_X47_Y25_N2
\lcd|state~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~35_combout\ = (\lcd|state.HOLD~regout\ & \lcd|next_command.DISPLAY_OFF~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|state.HOLD~regout\,
	datac => \lcd|next_command.DISPLAY_OFF~regout\,
	combout => \lcd|state~35_combout\);

-- Location: LCFF_X47_Y25_N3
\lcd|state.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~35_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.DISPLAY_OFF~regout\);

-- Location: LCCOMB_X47_Y25_N4
\lcd|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector21~0_combout\ = (\lcd|state.DISPLAY_OFF~regout\) # ((\lcd|next_command.DISPLAY_CLEAR~regout\ & ((\lcd|state.DROP_LCD_E~regout\) # (\lcd|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~regout\,
	datab => \lcd|state.HOLD~regout\,
	datac => \lcd|next_command.DISPLAY_CLEAR~regout\,
	datad => \lcd|state.DISPLAY_OFF~regout\,
	combout => \lcd|Selector21~0_combout\);

-- Location: LCFF_X47_Y25_N5
\lcd|next_command.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector21~0_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|next_command.DISPLAY_CLEAR~regout\);

-- Location: LCCOMB_X47_Y25_N26
\lcd|state~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~33_combout\ = (\lcd|state.HOLD~regout\ & \lcd|next_command.DISPLAY_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|state.HOLD~regout\,
	datac => \lcd|next_command.DISPLAY_CLEAR~regout\,
	combout => \lcd|state~33_combout\);

-- Location: LCFF_X47_Y25_N27
\lcd|state.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~33_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.DISPLAY_CLEAR~regout\);

-- Location: LCCOMB_X49_Y25_N2
\lcd|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector9~2_combout\ = (\lcd|state.DISPLAY_CLEAR~regout\) # ((\lcd|DATA_BUS_VALUE\(0) & ((\lcd|state.DROP_LCD_E~regout\) # (\lcd|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DROP_LCD_E~regout\,
	datab => \lcd|state.HOLD~regout\,
	datac => \lcd|state.DISPLAY_CLEAR~regout\,
	datad => \lcd|DATA_BUS_VALUE\(0),
	combout => \lcd|Selector9~2_combout\);

-- Location: LCCOMB_X51_Y24_N0
\lcd|CHAR_COUNT[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[0]~5_combout\ = \lcd|CHAR_COUNT\(0) $ (VCC)
-- \lcd|CHAR_COUNT[0]~6\ = CARRY(\lcd|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(0),
	datad => VCC,
	combout => \lcd|CHAR_COUNT[0]~5_combout\,
	cout => \lcd|CHAR_COUNT[0]~6\);

-- Location: LCCOMB_X49_Y25_N18
\lcd|state.RESET1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state.RESET1~0_combout\ = !\reset~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	combout => \lcd|state.RESET1~0_combout\);

-- Location: LCFF_X49_Y25_N19
\lcd|state.RESET1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state.RESET1~0_combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.RESET1~regout\);

-- Location: LCCOMB_X50_Y24_N30
\lcd|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector26~0_combout\ = (\lcd|CHAR_COUNT\(0) & \lcd|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|state.RESET1~regout\,
	combout => \lcd|Selector26~0_combout\);

-- Location: LCCOMB_X48_Y25_N24
\lcd|LCD_RS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|LCD_RS~0_combout\ = (\lcd|state.DROP_LCD_E~regout\) # (\lcd|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|state.DROP_LCD_E~regout\,
	datad => \lcd|state.HOLD~regout\,
	combout => \lcd|LCD_RS~0_combout\);

-- Location: LCCOMB_X51_Y24_N2
\lcd|CHAR_COUNT[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[1]~7_combout\ = (\lcd|CHAR_COUNT\(1) & (!\lcd|CHAR_COUNT[0]~6\)) # (!\lcd|CHAR_COUNT\(1) & ((\lcd|CHAR_COUNT[0]~6\) # (GND)))
-- \lcd|CHAR_COUNT[1]~8\ = CARRY((!\lcd|CHAR_COUNT[0]~6\) # (!\lcd|CHAR_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(1),
	datad => VCC,
	cin => \lcd|CHAR_COUNT[0]~6\,
	combout => \lcd|CHAR_COUNT[1]~7_combout\,
	cout => \lcd|CHAR_COUNT[1]~8\);

-- Location: LCCOMB_X49_Y24_N12
\lcd|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector25~0_combout\ = (\lcd|CHAR_COUNT\(1) & \lcd|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(1),
	datad => \lcd|state.RESET1~regout\,
	combout => \lcd|Selector25~0_combout\);

-- Location: LCCOMB_X48_Y25_N16
\lcd|state~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~29_combout\ = (!\reset~combout\ & \lcd|CLK_400HZ_Enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \lcd|CLK_400HZ_Enable~regout\,
	combout => \lcd|state~29_combout\);

-- Location: LCFF_X51_Y24_N3
\lcd|CHAR_COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CHAR_COUNT[1]~7_combout\,
	sdata => \lcd|Selector25~0_combout\,
	sload => \lcd|ALT_INV_state.Print_String~regout\,
	ena => \lcd|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CHAR_COUNT\(1));

-- Location: LCCOMB_X51_Y24_N4
\lcd|CHAR_COUNT[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[2]~9_combout\ = (\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT[1]~8\ $ (GND))) # (!\lcd|CHAR_COUNT\(2) & (!\lcd|CHAR_COUNT[1]~8\ & VCC))
-- \lcd|CHAR_COUNT[2]~10\ = CARRY((\lcd|CHAR_COUNT\(2) & !\lcd|CHAR_COUNT[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datad => VCC,
	cin => \lcd|CHAR_COUNT[1]~8\,
	combout => \lcd|CHAR_COUNT[2]~9_combout\,
	cout => \lcd|CHAR_COUNT[2]~10\);

-- Location: LCCOMB_X51_Y24_N6
\lcd|CHAR_COUNT[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[3]~11_combout\ = (\lcd|CHAR_COUNT\(3) & (!\lcd|CHAR_COUNT[2]~10\)) # (!\lcd|CHAR_COUNT\(3) & ((\lcd|CHAR_COUNT[2]~10\) # (GND)))
-- \lcd|CHAR_COUNT[3]~12\ = CARRY((!\lcd|CHAR_COUNT[2]~10\) # (!\lcd|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(3),
	datad => VCC,
	cin => \lcd|CHAR_COUNT[2]~10\,
	combout => \lcd|CHAR_COUNT[3]~11_combout\,
	cout => \lcd|CHAR_COUNT[3]~12\);

-- Location: LCCOMB_X50_Y24_N20
\lcd|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector23~0_combout\ = (\lcd|state.RESET1~regout\ & \lcd|CHAR_COUNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET1~regout\,
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Selector23~0_combout\);

-- Location: LCFF_X51_Y24_N7
\lcd|CHAR_COUNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CHAR_COUNT[3]~11_combout\,
	sdata => \lcd|Selector23~0_combout\,
	sload => \lcd|ALT_INV_state.Print_String~regout\,
	ena => \lcd|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CHAR_COUNT\(3));

-- Location: LCCOMB_X49_Y24_N16
\lcd|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Equal2~0_combout\ = (\lcd|CHAR_COUNT\(2) & (\lcd|CHAR_COUNT\(3) & (\lcd|CHAR_COUNT\(0) & \lcd|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(3),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Equal2~0_combout\);

-- Location: LCCOMB_X51_Y25_N10
\lcd|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector15~0_combout\ = (!\lcd|Equal2~0_combout\ & \lcd|state.Print_String~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Equal2~0_combout\,
	datad => \lcd|state.Print_String~regout\,
	combout => \lcd|Selector15~0_combout\);

-- Location: LCCOMB_X51_Y25_N4
\lcd|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector15~1_combout\ = ((\lcd|Selector15~0_combout\) # ((\lcd|LCD_RS~0_combout\ & \lcd|next_command.Print_String~regout\))) # (!\lcd|DATA_BUS_VALUE~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|DATA_BUS_VALUE~0_combout\,
	datab => \lcd|LCD_RS~0_combout\,
	datac => \lcd|next_command.Print_String~regout\,
	datad => \lcd|Selector15~0_combout\,
	combout => \lcd|Selector15~1_combout\);

-- Location: LCFF_X51_Y25_N5
\lcd|next_command.Print_String\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector15~1_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|next_command.Print_String~regout\);

-- Location: LCCOMB_X51_Y25_N6
\lcd|state~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~26_combout\ = (\lcd|next_command.Print_String~regout\ & \lcd|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|next_command.Print_String~regout\,
	datac => \lcd|state.HOLD~regout\,
	combout => \lcd|state~26_combout\);

-- Location: LCFF_X51_Y25_N7
\lcd|state.Print_String\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~26_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.Print_String~regout\);

-- Location: LCFF_X51_Y24_N1
\lcd|CHAR_COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CHAR_COUNT[0]~5_combout\,
	sdata => \lcd|Selector26~0_combout\,
	sload => \lcd|ALT_INV_state.Print_String~regout\,
	ena => \lcd|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CHAR_COUNT\(0));

-- Location: LCCOMB_X49_Y24_N26
\lcd|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux1~1_combout\ = (\lcd|CHAR_COUNT\(4) & (!\lcd|CHAR_COUNT\(3) & ((\lcd|CHAR_COUNT\(0)) # (\lcd|CHAR_COUNT\(1))))) # (!\lcd|CHAR_COUNT\(4) & (!\lcd|CHAR_COUNT\(0) & (!\lcd|CHAR_COUNT\(1) & \lcd|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(1),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux1~1_combout\);

-- Location: LCCOMB_X49_Y24_N4
\lcd|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux1~0_combout\ = (\lcd|CHAR_COUNT\(1) & (((!\lcd|CHAR_COUNT\(3))))) # (!\lcd|CHAR_COUNT\(1) & (\lcd|CHAR_COUNT\(4) & (\lcd|CHAR_COUNT\(0) $ (\lcd|CHAR_COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(1),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y24_N14
\lcd|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector24~0_combout\ = (\lcd|state.RESET1~regout\ & \lcd|CHAR_COUNT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET1~regout\,
	datac => \lcd|CHAR_COUNT\(2),
	combout => \lcd|Selector24~0_combout\);

-- Location: LCFF_X51_Y24_N5
\lcd|CHAR_COUNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CHAR_COUNT[2]~9_combout\,
	sdata => \lcd|Selector24~0_combout\,
	sload => \lcd|ALT_INV_state.Print_String~regout\,
	ena => \lcd|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CHAR_COUNT\(2));

-- Location: LCCOMB_X49_Y24_N22
\lcd|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux0~0_combout\ = (\lcd|CHAR_COUNT\(3)) # ((\lcd|CHAR_COUNT\(2) & ((\lcd|CHAR_COUNT\(4)) # (!\lcd|CHAR_COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|CHAR_COUNT\(2),
	combout => \lcd|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y24_N0
\lcd|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Equal0~0_combout\ = (\lcd|Mux0~0_combout\ & ((\lcd|CHAR_COUNT\(2) & ((\lcd|Mux1~0_combout\))) # (!\lcd|CHAR_COUNT\(2) & (!\lcd|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|Mux1~1_combout\,
	datac => \lcd|Mux1~0_combout\,
	datad => \lcd|Mux0~0_combout\,
	combout => \lcd|Equal0~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clockPB~I\ : cycloneii_io
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
	padio => ww_clockPB,
	combout => \clockPB~combout\);

-- Location: CLKCTRL_G1
\clockPB~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockPB~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockPB~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X53_Y24_N1
\IFT|pc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clockPB~clkctrl_outclk\,
	datain => \IFT|mem_addr[0]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IFT|pc\(2));

-- Location: LCCOMB_X53_Y24_N12
\IFT|pc_inc[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|pc_inc[2]~0_combout\ = \IFT|pc\(2) $ (VCC)
-- \IFT|pc_inc[2]~1\ = CARRY(\IFT|pc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IFT|pc\(2),
	datad => VCC,
	combout => \IFT|pc_inc[2]~0_combout\,
	cout => \IFT|pc_inc[2]~1\);

-- Location: LCCOMB_X53_Y24_N0
\IFT|mem_addr[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|mem_addr[0]~0_combout\ = (!\reset~combout\ & \IFT|pc_inc[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \IFT|pc_inc[2]~0_combout\,
	combout => \IFT|mem_addr[0]~0_combout\);

-- Location: LCFF_X53_Y24_N29
\IFT|pc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clockPB~clkctrl_outclk\,
	datain => \IFT|mem_addr[1]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IFT|pc\(3));

-- Location: LCCOMB_X53_Y24_N14
\IFT|pc_inc[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|pc_inc[3]~2_combout\ = (\IFT|pc\(3) & (!\IFT|pc_inc[2]~1\)) # (!\IFT|pc\(3) & ((\IFT|pc_inc[2]~1\) # (GND)))
-- \IFT|pc_inc[3]~3\ = CARRY((!\IFT|pc_inc[2]~1\) # (!\IFT|pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IFT|pc\(3),
	datad => VCC,
	cin => \IFT|pc_inc[2]~1\,
	combout => \IFT|pc_inc[3]~2_combout\,
	cout => \IFT|pc_inc[3]~3\);

-- Location: LCCOMB_X53_Y24_N28
\IFT|mem_addr[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|mem_addr[1]~2_combout\ = (!\reset~combout\ & \IFT|pc_inc[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \IFT|pc_inc[3]~2_combout\,
	combout => \IFT|mem_addr[1]~2_combout\);

-- Location: LCFF_X53_Y24_N5
\IFT|pc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clockPB~clkctrl_outclk\,
	datain => \IFT|mem_addr[2]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IFT|pc\(4));

-- Location: LCCOMB_X53_Y24_N16
\IFT|pc_inc[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|pc_inc[4]~4_combout\ = (\IFT|pc\(4) & (\IFT|pc_inc[3]~3\ $ (GND))) # (!\IFT|pc\(4) & (!\IFT|pc_inc[3]~3\ & VCC))
-- \IFT|pc_inc[4]~5\ = CARRY((\IFT|pc\(4) & !\IFT|pc_inc[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IFT|pc\(4),
	datad => VCC,
	cin => \IFT|pc_inc[3]~3\,
	combout => \IFT|pc_inc[4]~4_combout\,
	cout => \IFT|pc_inc[4]~5\);

-- Location: LCCOMB_X53_Y24_N4
\IFT|mem_addr[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|mem_addr[2]~3_combout\ = (!\reset~combout\ & \IFT|pc_inc[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \IFT|pc_inc[4]~4_combout\,
	combout => \IFT|mem_addr[2]~3_combout\);

-- Location: LCFF_X53_Y24_N9
\IFT|pc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clockPB~clkctrl_outclk\,
	datain => \IFT|mem_addr[3]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IFT|pc\(5));

-- Location: LCCOMB_X53_Y24_N18
\IFT|pc_inc[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|pc_inc[5]~6_combout\ = (\IFT|pc\(5) & (!\IFT|pc_inc[4]~5\)) # (!\IFT|pc\(5) & ((\IFT|pc_inc[4]~5\) # (GND)))
-- \IFT|pc_inc[5]~7\ = CARRY((!\IFT|pc_inc[4]~5\) # (!\IFT|pc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IFT|pc\(5),
	datad => VCC,
	cin => \IFT|pc_inc[4]~5\,
	combout => \IFT|pc_inc[5]~6_combout\,
	cout => \IFT|pc_inc[5]~7\);

-- Location: LCCOMB_X53_Y24_N8
\IFT|mem_addr[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|mem_addr[3]~4_combout\ = (!\reset~combout\ & \IFT|pc_inc[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \IFT|pc_inc[5]~6_combout\,
	combout => \IFT|mem_addr[3]~4_combout\);

-- Location: LCFF_X53_Y24_N3
\IFT|pc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clockPB~clkctrl_outclk\,
	datain => \IFT|mem_addr[4]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IFT|pc\(6));

-- Location: LCCOMB_X53_Y24_N20
\IFT|pc_inc[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|pc_inc[6]~8_combout\ = (\IFT|pc\(6) & (\IFT|pc_inc[5]~7\ $ (GND))) # (!\IFT|pc\(6) & (!\IFT|pc_inc[5]~7\ & VCC))
-- \IFT|pc_inc[6]~9\ = CARRY((\IFT|pc\(6) & !\IFT|pc_inc[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IFT|pc\(6),
	datad => VCC,
	cin => \IFT|pc_inc[5]~7\,
	combout => \IFT|pc_inc[6]~8_combout\,
	cout => \IFT|pc_inc[6]~9\);

-- Location: LCCOMB_X53_Y24_N2
\IFT|mem_addr[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|mem_addr[4]~1_combout\ = (!\reset~combout\ & \IFT|pc_inc[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \IFT|pc_inc[6]~8_combout\,
	combout => \IFT|mem_addr[4]~1_combout\);

-- Location: LCFF_X53_Y24_N31
\IFT|pc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clockPB~clkctrl_outclk\,
	datain => \IFT|mem_addr[5]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IFT|pc\(7));

-- Location: LCCOMB_X53_Y24_N22
\IFT|pc_inc[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|pc_inc[7]~10_combout\ = (\IFT|pc\(7) & (!\IFT|pc_inc[6]~9\)) # (!\IFT|pc\(7) & ((\IFT|pc_inc[6]~9\) # (GND)))
-- \IFT|pc_inc[7]~11\ = CARRY((!\IFT|pc_inc[6]~9\) # (!\IFT|pc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \IFT|pc\(7),
	datad => VCC,
	cin => \IFT|pc_inc[6]~9\,
	combout => \IFT|pc_inc[7]~10_combout\,
	cout => \IFT|pc_inc[7]~11\);

-- Location: LCCOMB_X53_Y24_N30
\IFT|mem_addr[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|mem_addr[5]~5_combout\ = (!\reset~combout\ & \IFT|pc_inc[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \IFT|pc_inc[7]~10_combout\,
	combout => \IFT|mem_addr[5]~5_combout\);

-- Location: LCCOMB_X53_Y24_N24
\IFT|pc_inc[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|pc_inc[8]~12_combout\ = (\IFT|pc\(8) & (\IFT|pc_inc[7]~11\ $ (GND))) # (!\IFT|pc\(8) & (!\IFT|pc_inc[7]~11\ & VCC))
-- \IFT|pc_inc[8]~13\ = CARRY((\IFT|pc\(8) & !\IFT|pc_inc[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|pc\(8),
	datad => VCC,
	cin => \IFT|pc_inc[7]~11\,
	combout => \IFT|pc_inc[8]~12_combout\,
	cout => \IFT|pc_inc[8]~13\);

-- Location: LCCOMB_X53_Y24_N6
\IFT|mem_addr[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|mem_addr[6]~6_combout\ = (!\reset~combout\ & \IFT|pc_inc[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \IFT|pc_inc[8]~12_combout\,
	combout => \IFT|mem_addr[6]~6_combout\);

-- Location: LCFF_X53_Y24_N11
\IFT|pc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clockPB~clkctrl_outclk\,
	datain => \IFT|mem_addr[7]~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IFT|pc\(9));

-- Location: LCCOMB_X53_Y24_N26
\IFT|pc_inc[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|pc_inc[9]~14_combout\ = \IFT|pc_inc[8]~13\ $ (\IFT|pc\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \IFT|pc\(9),
	cin => \IFT|pc_inc[8]~13\,
	combout => \IFT|pc_inc[9]~14_combout\);

-- Location: LCCOMB_X53_Y24_N10
\IFT|mem_addr[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \IFT|mem_addr[7]~7_combout\ = (!\reset~combout\ & \IFT|pc_inc[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \IFT|pc_inc[9]~14_combout\,
	combout => \IFT|mem_addr[7]~7_combout\);

-- Location: LCCOMB_X49_Y24_N24
\lcd|Mux6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~12_combout\ = ((\lcd|CHAR_COUNT\(2) & \IFT|data_memory|auto_generated|q_a\(20))) # (!\lcd|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \IFT|data_memory|auto_generated|q_a\(20),
	combout => \lcd|Mux6~12_combout\);

-- Location: LCCOMB_X50_Y24_N2
\lcd|Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~9_combout\ = (\lcd|CHAR_COUNT\(1) & !\lcd|CHAR_COUNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(1),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux6~9_combout\);

-- Location: LCCOMB_X50_Y24_N16
\lcd|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~7_combout\ = (\lcd|CHAR_COUNT\(3)) # ((\lcd|CHAR_COUNT\(1) & \lcd|CHAR_COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(3),
	combout => \lcd|Mux6~7_combout\);

-- Location: LCCOMB_X49_Y24_N18
\lcd|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~8_combout\ = (\lcd|CHAR_COUNT\(4) & ((\IFT|data_memory|auto_generated|q_a\(24)) # (!\lcd|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \IFT|data_memory|auto_generated|q_a\(24),
	combout => \lcd|Mux6~8_combout\);

-- Location: LCCOMB_X50_Y24_N24
\lcd|Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~11_combout\ = (\lcd|Mux6~9_combout\ & (((\lcd|Mux6~7_combout\) # (\lcd|Mux6~8_combout\)))) # (!\lcd|Mux6~9_combout\ & (\lcd|Mux6~10_combout\ & (!\lcd|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~10_combout\,
	datab => \lcd|Mux6~9_combout\,
	datac => \lcd|Mux6~7_combout\,
	datad => \lcd|Mux6~8_combout\,
	combout => \lcd|Mux6~11_combout\);

-- Location: LCCOMB_X51_Y24_N8
\lcd|CHAR_COUNT[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|CHAR_COUNT[4]~13_combout\ = \lcd|CHAR_COUNT\(4) $ (!\lcd|CHAR_COUNT[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(4),
	cin => \lcd|CHAR_COUNT[3]~12\,
	combout => \lcd|CHAR_COUNT[4]~13_combout\);

-- Location: LCCOMB_X49_Y24_N8
\lcd|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector22~0_combout\ = (\lcd|state.RESET1~regout\ & \lcd|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.RESET1~regout\,
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Selector22~0_combout\);

-- Location: LCFF_X51_Y24_N9
\lcd|CHAR_COUNT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|CHAR_COUNT[4]~13_combout\,
	sdata => \lcd|Selector22~0_combout\,
	sload => \lcd|ALT_INV_state.Print_String~regout\,
	ena => \lcd|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|CHAR_COUNT\(4));

-- Location: LCCOMB_X50_Y24_N4
\lcd|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux2~0_combout\ = (!\lcd|CHAR_COUNT\(4) & !\lcd|CHAR_COUNT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(2),
	combout => \lcd|Mux2~0_combout\);

-- Location: LCCOMB_X51_Y24_N26
\lcd|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~2_combout\ = (\lcd|CHAR_COUNT\(4) & (((!\lcd|CHAR_COUNT\(0) & !\lcd|CHAR_COUNT\(1))) # (!\lcd|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(0),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux6~2_combout\);

-- Location: LCCOMB_X51_Y24_N18
\lcd|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~0_combout\ = (\lcd|CHAR_COUNT\(0) & (((\lcd|CHAR_COUNT\(1)) # (\IFT|data_memory|auto_generated|q_a\(12))))) # (!\lcd|CHAR_COUNT\(0) & (\IFT|data_memory|auto_generated|q_a\(16) & (!\lcd|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|data_memory|auto_generated|q_a\(16),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(1),
	datad => \IFT|data_memory|auto_generated|q_a\(12),
	combout => \lcd|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y24_N20
\lcd|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~1_combout\ = (\lcd|CHAR_COUNT\(1) & ((\lcd|Mux6~0_combout\ & ((\IFT|data_memory|auto_generated|q_a\(4)))) # (!\lcd|Mux6~0_combout\ & (\IFT|data_memory|auto_generated|q_a\(8))))) # (!\lcd|CHAR_COUNT\(1) & (((\lcd|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|data_memory|auto_generated|q_a\(8),
	datab => \IFT|data_memory|auto_generated|q_a\(4),
	datac => \lcd|CHAR_COUNT\(1),
	datad => \lcd|Mux6~0_combout\,
	combout => \lcd|Mux6~1_combout\);

-- Location: LCCOMB_X50_Y24_N6
\lcd|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~4_combout\ = (\lcd|Mux6~3_combout\ & (\IFT|data_memory|auto_generated|q_a\(0) & (\lcd|Mux6~2_combout\))) # (!\lcd|Mux6~3_combout\ & (((\lcd|Mux6~1_combout\) # (!\lcd|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~3_combout\,
	datab => \IFT|data_memory|auto_generated|q_a\(0),
	datac => \lcd|Mux6~2_combout\,
	datad => \lcd|Mux6~1_combout\,
	combout => \lcd|Mux6~4_combout\);

-- Location: LCCOMB_X50_Y24_N12
\lcd|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~5_combout\ = (\lcd|Mux2~0_combout\ & ((\lcd|Mux6~4_combout\ & ((\IFT|pc\(6)))) # (!\lcd|Mux6~4_combout\ & (\IFT|pc\(2))))) # (!\lcd|Mux2~0_combout\ & (((\lcd|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|pc\(2),
	datab => \IFT|pc\(6),
	datac => \lcd|Mux2~0_combout\,
	datad => \lcd|Mux6~4_combout\,
	combout => \lcd|Mux6~5_combout\);

-- Location: LCCOMB_X50_Y24_N10
\lcd|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~6_combout\ = (\lcd|CHAR_COUNT\(1) & (((\lcd|Mux6~5_combout\)))) # (!\lcd|CHAR_COUNT\(1) & ((\lcd|Mux2~0_combout\ & (!\lcd|CHAR_COUNT\(0))) # (!\lcd|Mux2~0_combout\ & ((\lcd|Mux6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(1),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|Mux2~0_combout\,
	datad => \lcd|Mux6~5_combout\,
	combout => \lcd|Mux6~6_combout\);

-- Location: LCCOMB_X50_Y24_N18
\lcd|Mux6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~13_combout\ = (\lcd|Mux6~7_combout\ & ((\lcd|Mux6~11_combout\ & (\lcd|Mux6~12_combout\)) # (!\lcd|Mux6~11_combout\ & ((\lcd|Mux6~6_combout\))))) # (!\lcd|Mux6~7_combout\ & (((\lcd|Mux6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~7_combout\,
	datab => \lcd|Mux6~12_combout\,
	datac => \lcd|Mux6~11_combout\,
	datad => \lcd|Mux6~6_combout\,
	combout => \lcd|Mux6~13_combout\);

-- Location: LCCOMB_X49_Y25_N30
\lcd|Selector9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector9~5_combout\ = (\lcd|state.Print_String~regout\ & (\lcd|Mux6~13_combout\ & ((\lcd|Mux2~3_combout\) # (!\lcd|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux2~3_combout\,
	datab => \lcd|Equal0~0_combout\,
	datac => \lcd|state.Print_String~regout\,
	datad => \lcd|Mux6~13_combout\,
	combout => \lcd|Selector9~5_combout\);

-- Location: LCCOMB_X51_Y25_N30
\lcd|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux4~5_combout\ = (\lcd|CHAR_COUNT\(0) & (\lcd|CHAR_COUNT\(4) & ((\IFT|data_memory|auto_generated|q_a\(30)) # (!\lcd|CHAR_COUNT\(2))))) # (!\lcd|CHAR_COUNT\(0) & (\lcd|CHAR_COUNT\(4) $ ((!\lcd|CHAR_COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \IFT|data_memory|auto_generated|q_a\(30),
	combout => \lcd|Mux4~5_combout\);

-- Location: LCCOMB_X51_Y24_N16
\lcd|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux6~3_combout\ = (\lcd|CHAR_COUNT\(2)) # ((!\lcd|CHAR_COUNT\(4) & \lcd|CHAR_COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(4),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux6~3_combout\);

-- Location: LCCOMB_X51_Y25_N24
\lcd|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux4~0_combout\ = (\lcd|CHAR_COUNT\(0) & ((\IFT|data_memory|auto_generated|q_a\(14)) # ((\lcd|CHAR_COUNT\(1))))) # (!\lcd|CHAR_COUNT\(0) & (((\IFT|data_memory|auto_generated|q_a\(18) & !\lcd|CHAR_COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|data_memory|auto_generated|q_a\(14),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \IFT|data_memory|auto_generated|q_a\(18),
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux4~0_combout\);

-- Location: LCCOMB_X50_Y25_N4
\lcd|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux4~1_combout\ = (\lcd|CHAR_COUNT\(1) & ((\lcd|Mux4~0_combout\ & (\IFT|data_memory|auto_generated|q_a\(6))) # (!\lcd|Mux4~0_combout\ & ((\IFT|data_memory|auto_generated|q_a\(10)))))) # (!\lcd|CHAR_COUNT\(1) & (((\lcd|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|data_memory|auto_generated|q_a\(6),
	datab => \IFT|data_memory|auto_generated|q_a\(10),
	datac => \lcd|CHAR_COUNT\(1),
	datad => \lcd|Mux4~0_combout\,
	combout => \lcd|Mux4~1_combout\);

-- Location: LCCOMB_X50_Y25_N6
\lcd|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux4~2_combout\ = (\lcd|Mux6~2_combout\ & ((\lcd|Mux6~3_combout\ & ((\IFT|data_memory|auto_generated|q_a\(2)))) # (!\lcd|Mux6~3_combout\ & (\lcd|Mux4~1_combout\)))) # (!\lcd|Mux6~2_combout\ & (!\lcd|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~2_combout\,
	datab => \lcd|Mux6~3_combout\,
	datac => \lcd|Mux4~1_combout\,
	datad => \IFT|data_memory|auto_generated|q_a\(2),
	combout => \lcd|Mux4~2_combout\);

-- Location: LCCOMB_X50_Y25_N8
\lcd|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux4~3_combout\ = (\lcd|Mux2~0_combout\ & ((\lcd|Mux4~2_combout\ & (\IFT|pc\(8))) # (!\lcd|Mux4~2_combout\ & ((\IFT|pc\(4)))))) # (!\lcd|Mux2~0_combout\ & (((\lcd|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|pc\(8),
	datab => \IFT|pc\(4),
	datac => \lcd|Mux2~0_combout\,
	datad => \lcd|Mux4~2_combout\,
	combout => \lcd|Mux4~3_combout\);

-- Location: LCCOMB_X50_Y25_N26
\lcd|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux4~4_combout\ = (\lcd|Mux2~0_combout\ & ((\lcd|CHAR_COUNT\(1) & ((\lcd|Mux4~3_combout\))) # (!\lcd|CHAR_COUNT\(1) & (!\lcd|CHAR_COUNT\(0))))) # (!\lcd|Mux2~0_combout\ & (((\lcd|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux2~0_combout\,
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|Mux4~3_combout\,
	datad => \lcd|CHAR_COUNT\(1),
	combout => \lcd|Mux4~4_combout\);

-- Location: LCCOMB_X50_Y25_N24
\lcd|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux4~6_combout\ = (\lcd|Mux6~9_combout\ & (((\lcd|Mux6~7_combout\)))) # (!\lcd|Mux6~9_combout\ & ((\lcd|Mux6~7_combout\ & ((\lcd|Mux4~4_combout\))) # (!\lcd|Mux6~7_combout\ & (\lcd|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~9_combout\,
	datab => \lcd|Mux4~5_combout\,
	datac => \lcd|Mux6~7_combout\,
	datad => \lcd|Mux4~4_combout\,
	combout => \lcd|Mux4~6_combout\);

-- Location: LCCOMB_X50_Y25_N12
\lcd|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux4~7_combout\ = (\lcd|CHAR_COUNT\(4) & ((\lcd|CHAR_COUNT\(2) & ((\IFT|data_memory|auto_generated|q_a\(22)) # (!\lcd|Mux4~6_combout\))) # (!\lcd|CHAR_COUNT\(2) & (\lcd|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|Mux4~6_combout\,
	datad => \IFT|data_memory|auto_generated|q_a\(22),
	combout => \lcd|Mux4~7_combout\);

-- Location: LCCOMB_X50_Y25_N14
\lcd|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux4~8_combout\ = (\lcd|Mux6~9_combout\ & (\lcd|Mux4~7_combout\ & ((\IFT|data_memory|auto_generated|q_a\(26)) # (\lcd|Mux4~6_combout\)))) # (!\lcd|Mux6~9_combout\ & (((\lcd|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~9_combout\,
	datab => \IFT|data_memory|auto_generated|q_a\(26),
	datac => \lcd|Mux4~6_combout\,
	datad => \lcd|Mux4~7_combout\,
	combout => \lcd|Mux4~8_combout\);

-- Location: LCCOMB_X50_Y24_N8
\lcd|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux5~7_combout\ = (\lcd|CHAR_COUNT\(0) & (\lcd|CHAR_COUNT\(4) & ((\IFT|data_memory|auto_generated|q_a\(29)) # (!\lcd|CHAR_COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \IFT|data_memory|auto_generated|q_a\(29),
	combout => \lcd|Mux5~7_combout\);

-- Location: LCCOMB_X50_Y24_N22
\lcd|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux5~6_combout\ = (\lcd|CHAR_COUNT\(4) & ((\IFT|data_memory|auto_generated|q_a\(25)) # (!\lcd|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CHAR_COUNT\(4),
	datac => \IFT|data_memory|auto_generated|q_a\(25),
	datad => \lcd|CHAR_COUNT\(2),
	combout => \lcd|Mux5~6_combout\);

-- Location: LCCOMB_X50_Y24_N14
\lcd|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux5~8_combout\ = (\lcd|Mux6~7_combout\ & (\lcd|Mux6~9_combout\)) # (!\lcd|Mux6~7_combout\ & ((\lcd|Mux6~9_combout\ & ((\lcd|Mux5~6_combout\))) # (!\lcd|Mux6~9_combout\ & (\lcd|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~7_combout\,
	datab => \lcd|Mux6~9_combout\,
	datac => \lcd|Mux5~7_combout\,
	datad => \lcd|Mux5~6_combout\,
	combout => \lcd|Mux5~8_combout\);

-- Location: LCCOMB_X49_Y24_N20
\lcd|Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux5~9_combout\ = ((\lcd|CHAR_COUNT\(2) & \IFT|data_memory|auto_generated|q_a\(21))) # (!\lcd|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \IFT|data_memory|auto_generated|q_a\(21),
	combout => \lcd|Mux5~9_combout\);

-- Location: LCCOMB_X51_Y24_N22
\lcd|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux5~2_combout\ = (\lcd|CHAR_COUNT\(1) & (((\lcd|CHAR_COUNT\(0))))) # (!\lcd|CHAR_COUNT\(1) & ((\lcd|CHAR_COUNT\(0) & (\IFT|data_memory|auto_generated|q_a\(13))) # (!\lcd|CHAR_COUNT\(0) & ((\IFT|data_memory|auto_generated|q_a\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|data_memory|auto_generated|q_a\(13),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \IFT|data_memory|auto_generated|q_a\(17),
	datad => \lcd|CHAR_COUNT\(0),
	combout => \lcd|Mux5~2_combout\);

-- Location: LCCOMB_X51_Y24_N24
\lcd|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux5~3_combout\ = (\lcd|CHAR_COUNT\(1) & ((\lcd|Mux5~2_combout\ & (\IFT|data_memory|auto_generated|q_a\(5))) # (!\lcd|Mux5~2_combout\ & ((\IFT|data_memory|auto_generated|q_a\(9)))))) # (!\lcd|CHAR_COUNT\(1) & (((\lcd|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|data_memory|auto_generated|q_a\(5),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \IFT|data_memory|auto_generated|q_a\(9),
	datad => \lcd|Mux5~2_combout\,
	combout => \lcd|Mux5~3_combout\);

-- Location: LCCOMB_X51_Y24_N30
\lcd|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux5~4_combout\ = (\lcd|Mux6~3_combout\ & (\lcd|Mux6~2_combout\ & ((\IFT|data_memory|auto_generated|q_a\(1))))) # (!\lcd|Mux6~3_combout\ & (((\lcd|Mux5~3_combout\)) # (!\lcd|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~3_combout\,
	datab => \lcd|Mux6~2_combout\,
	datac => \lcd|Mux5~3_combout\,
	datad => \IFT|data_memory|auto_generated|q_a\(1),
	combout => \lcd|Mux5~4_combout\);

-- Location: LCCOMB_X50_Y24_N28
\lcd|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux5~5_combout\ = (\lcd|Mux2~0_combout\ & ((\lcd|Mux5~4_combout\ & ((\IFT|pc\(7)))) # (!\lcd|Mux5~4_combout\ & (\IFT|pc\(3))))) # (!\lcd|Mux2~0_combout\ & (((\lcd|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|pc\(3),
	datab => \IFT|pc\(7),
	datac => \lcd|Mux2~0_combout\,
	datad => \lcd|Mux5~4_combout\,
	combout => \lcd|Mux5~5_combout\);

-- Location: LCCOMB_X50_Y24_N26
\lcd|Mux5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux5~11_combout\ = (\lcd|Mux5~5_combout\ & ((\lcd|CHAR_COUNT\(2)) # ((\lcd|CHAR_COUNT\(1)) # (\lcd|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(2),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(4),
	datad => \lcd|Mux5~5_combout\,
	combout => \lcd|Mux5~11_combout\);

-- Location: LCCOMB_X50_Y24_N0
\lcd|Mux5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux5~10_combout\ = (\lcd|Mux6~7_combout\ & ((\lcd|Mux5~8_combout\ & (\lcd|Mux5~9_combout\)) # (!\lcd|Mux5~8_combout\ & ((\lcd|Mux5~11_combout\))))) # (!\lcd|Mux6~7_combout\ & (\lcd|Mux5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~7_combout\,
	datab => \lcd|Mux5~8_combout\,
	datac => \lcd|Mux5~9_combout\,
	datad => \lcd|Mux5~11_combout\,
	combout => \lcd|Mux5~10_combout\);

-- Location: LCCOMB_X51_Y25_N20
\lcd|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux3~5_combout\ = ((\lcd|CHAR_COUNT\(4) & ((\IFT|data_memory|auto_generated|q_a\(31)) # (!\lcd|CHAR_COUNT\(0))))) # (!\lcd|CHAR_COUNT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(0),
	datac => \lcd|CHAR_COUNT\(2),
	datad => \IFT|data_memory|auto_generated|q_a\(31),
	combout => \lcd|Mux3~5_combout\);

-- Location: LCCOMB_X51_Y24_N12
\lcd|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux3~0_combout\ = (\lcd|CHAR_COUNT\(0) & ((\lcd|CHAR_COUNT\(1)) # ((\IFT|data_memory|auto_generated|q_a\(15))))) # (!\lcd|CHAR_COUNT\(0) & (!\lcd|CHAR_COUNT\(1) & (\IFT|data_memory|auto_generated|q_a\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(0),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \IFT|data_memory|auto_generated|q_a\(19),
	datad => \IFT|data_memory|auto_generated|q_a\(15),
	combout => \lcd|Mux3~0_combout\);

-- Location: LCCOMB_X51_Y24_N10
\lcd|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux3~1_combout\ = (\lcd|CHAR_COUNT\(1) & ((\lcd|Mux3~0_combout\ & ((\IFT|data_memory|auto_generated|q_a\(7)))) # (!\lcd|Mux3~0_combout\ & (\IFT|data_memory|auto_generated|q_a\(11))))) # (!\lcd|CHAR_COUNT\(1) & (((\lcd|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|data_memory|auto_generated|q_a\(11),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \IFT|data_memory|auto_generated|q_a\(7),
	datad => \lcd|Mux3~0_combout\,
	combout => \lcd|Mux3~1_combout\);

-- Location: LCCOMB_X51_Y24_N28
\lcd|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux3~2_combout\ = (\lcd|Mux6~2_combout\ & ((\lcd|Mux6~3_combout\ & (\IFT|data_memory|auto_generated|q_a\(3))) # (!\lcd|Mux6~3_combout\ & ((\lcd|Mux3~1_combout\))))) # (!\lcd|Mux6~2_combout\ & (((!\lcd|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|data_memory|auto_generated|q_a\(3),
	datab => \lcd|Mux6~2_combout\,
	datac => \lcd|Mux6~3_combout\,
	datad => \lcd|Mux3~1_combout\,
	combout => \lcd|Mux3~2_combout\);

-- Location: LCCOMB_X51_Y24_N14
\lcd|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux3~3_combout\ = (\lcd|Mux2~0_combout\ & ((\lcd|Mux3~2_combout\ & (\IFT|pc\(9))) # (!\lcd|Mux3~2_combout\ & ((\IFT|pc\(5)))))) # (!\lcd|Mux2~0_combout\ & (((\lcd|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IFT|pc\(9),
	datab => \IFT|pc\(5),
	datac => \lcd|Mux2~0_combout\,
	datad => \lcd|Mux3~2_combout\,
	combout => \lcd|Mux3~3_combout\);

-- Location: LCCOMB_X50_Y25_N2
\lcd|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux3~4_combout\ = (\lcd|CHAR_COUNT\(1) & (((\lcd|Mux3~3_combout\)))) # (!\lcd|CHAR_COUNT\(1) & ((\lcd|Mux2~0_combout\ & (!\lcd|CHAR_COUNT\(0))) # (!\lcd|Mux2~0_combout\ & ((\lcd|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(0),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|Mux2~0_combout\,
	datad => \lcd|Mux3~3_combout\,
	combout => \lcd|Mux3~4_combout\);

-- Location: LCCOMB_X50_Y25_N28
\lcd|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux3~6_combout\ = (\lcd|Mux6~9_combout\ & (((\lcd|Mux6~7_combout\)))) # (!\lcd|Mux6~9_combout\ & ((\lcd|Mux6~7_combout\ & ((\lcd|Mux3~4_combout\))) # (!\lcd|Mux6~7_combout\ & (\lcd|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~9_combout\,
	datab => \lcd|Mux3~5_combout\,
	datac => \lcd|Mux6~7_combout\,
	datad => \lcd|Mux3~4_combout\,
	combout => \lcd|Mux3~6_combout\);

-- Location: LCCOMB_X50_Y25_N0
\lcd|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux3~7_combout\ = (\lcd|CHAR_COUNT\(4) & (\lcd|CHAR_COUNT\(2) & ((\IFT|data_memory|auto_generated|q_a\(27)) # (\lcd|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(2),
	datac => \IFT|data_memory|auto_generated|q_a\(27),
	datad => \lcd|Mux3~6_combout\,
	combout => \lcd|Mux3~7_combout\);

-- Location: LCCOMB_X50_Y25_N30
\lcd|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux3~8_combout\ = (\lcd|Mux6~9_combout\ & (\lcd|Mux3~7_combout\ & ((\IFT|data_memory|auto_generated|q_a\(23)) # (!\lcd|Mux3~6_combout\)))) # (!\lcd|Mux6~9_combout\ & (\lcd|Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~9_combout\,
	datab => \lcd|Mux3~6_combout\,
	datac => \IFT|data_memory|auto_generated|q_a\(23),
	datad => \lcd|Mux3~7_combout\,
	combout => \lcd|Mux3~8_combout\);

-- Location: LCCOMB_X49_Y25_N26
\lcd|DATA_BUS_VALUE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~1_combout\ = \lcd|Mux6~13_combout\ $ (((\lcd|Mux3~8_combout\ & ((\lcd|Mux4~8_combout\) # (\lcd|Mux5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux6~13_combout\,
	datab => \lcd|Mux4~8_combout\,
	datac => \lcd|Mux5~10_combout\,
	datad => \lcd|Mux3~8_combout\,
	combout => \lcd|DATA_BUS_VALUE~1_combout\);

-- Location: LCCOMB_X49_Y25_N28
\lcd|Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector9~4_combout\ = (\lcd|Selector9~2_combout\) # ((\lcd|Selector9~5_combout\) # ((\lcd|Selector9~3_combout\ & \lcd|DATA_BUS_VALUE~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector9~3_combout\,
	datab => \lcd|Selector9~2_combout\,
	datac => \lcd|Selector9~5_combout\,
	datad => \lcd|DATA_BUS_VALUE~1_combout\,
	combout => \lcd|Selector9~4_combout\);

-- Location: LCFF_X49_Y25_N29
\lcd|DATA_BUS_VALUE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector9~4_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X48_Y25_N30
\lcd|LCD_RW_INT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|LCD_RW_INT~0_combout\ = (\lcd|LCD_RW_INT~regout\ & ((\lcd|state.HOLD~regout\) # ((\lcd|state.DROP_LCD_E~regout\) # (!\lcd|CLK_400HZ_Enable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~regout\,
	datab => \lcd|state.DROP_LCD_E~regout\,
	datac => \lcd|LCD_RW_INT~regout\,
	datad => \lcd|CLK_400HZ_Enable~regout\,
	combout => \lcd|LCD_RW_INT~0_combout\);

-- Location: LCFF_X48_Y25_N31
\lcd|LCD_RW_INT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|LCD_RW_INT~0_combout\,
	sdata => VCC,
	sload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|LCD_RW_INT~regout\);

-- Location: LCCOMB_X47_Y25_N12
\lcd|state~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~30_combout\ = (\lcd|next_command.MODE_SET~regout\ & \lcd|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|next_command.MODE_SET~regout\,
	datac => \lcd|state.HOLD~regout\,
	combout => \lcd|state~30_combout\);

-- Location: LCFF_X47_Y25_N13
\lcd|state.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~30_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.MODE_SET~regout\);

-- Location: LCCOMB_X51_Y25_N18
\lcd|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector8~0_combout\ = (\lcd|state.MODE_SET~regout\) # ((\lcd|DATA_BUS_VALUE\(1) & ((\lcd|state.HOLD~regout\) # (\lcd|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~regout\,
	datab => \lcd|state.DROP_LCD_E~regout\,
	datac => \lcd|state.MODE_SET~regout\,
	datad => \lcd|DATA_BUS_VALUE\(1),
	combout => \lcd|Selector8~0_combout\);

-- Location: LCCOMB_X50_Y25_N22
\lcd|DATA_BUS_VALUE~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~2_combout\ = (\lcd|Equal0~1_combout\ & (\lcd|Mux3~8_combout\ & ((\lcd|Mux5~10_combout\) # (\lcd|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal0~1_combout\,
	datab => \lcd|Mux5~10_combout\,
	datac => \lcd|Mux4~8_combout\,
	datad => \lcd|Mux3~8_combout\,
	combout => \lcd|DATA_BUS_VALUE~2_combout\);

-- Location: LCCOMB_X50_Y25_N20
\lcd|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector8~1_combout\ = (\lcd|Mux6~13_combout\) # (!\lcd|DATA_BUS_VALUE~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd|Mux6~13_combout\,
	datad => \lcd|DATA_BUS_VALUE~2_combout\,
	combout => \lcd|Selector8~1_combout\);

-- Location: LCCOMB_X50_Y25_N16
\lcd|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector8~2_combout\ = (\lcd|Selector8~0_combout\) # ((\lcd|state.Print_String~regout\ & (\lcd|Selector8~1_combout\ $ (!\lcd|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~regout\,
	datab => \lcd|Selector8~0_combout\,
	datac => \lcd|Selector8~1_combout\,
	datad => \lcd|Mux5~10_combout\,
	combout => \lcd|Selector8~2_combout\);

-- Location: LCFF_X50_Y25_N17
\lcd|DATA_BUS_VALUE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector8~2_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X51_Y25_N0
\lcd|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector7~0_combout\ = (\lcd|state.DISPLAY_ON~regout\) # ((\lcd|state.MODE_SET~regout\) # ((\lcd|LCD_RS~0_combout\ & \lcd|DATA_BUS_VALUE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.DISPLAY_ON~regout\,
	datab => \lcd|LCD_RS~0_combout\,
	datac => \lcd|state.MODE_SET~regout\,
	datad => \lcd|DATA_BUS_VALUE\(2),
	combout => \lcd|Selector7~0_combout\);

-- Location: LCCOMB_X50_Y25_N10
\lcd|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector7~1_combout\ = (!\lcd|Mux5~10_combout\ & (!\lcd|Mux6~13_combout\ & \lcd|DATA_BUS_VALUE~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Mux5~10_combout\,
	datac => \lcd|Mux6~13_combout\,
	datad => \lcd|DATA_BUS_VALUE~2_combout\,
	combout => \lcd|Selector7~1_combout\);

-- Location: LCCOMB_X50_Y25_N18
\lcd|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector7~2_combout\ = (\lcd|Selector7~0_combout\) # ((\lcd|state.Print_String~regout\ & (\lcd|Mux4~8_combout\ $ (\lcd|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~regout\,
	datab => \lcd|Mux4~8_combout\,
	datac => \lcd|Selector7~0_combout\,
	datad => \lcd|Selector7~1_combout\,
	combout => \lcd|Selector7~2_combout\);

-- Location: LCFF_X50_Y25_N19
\lcd|DATA_BUS_VALUE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector7~2_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X48_Y25_N26
\lcd|DATA_BUS_VALUE~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~3_combout\ = (\lcd|DATA_BUS_VALUE\(3) & ((\lcd|state.HOLD~regout\) # ((\lcd|state.DROP_LCD_E~regout\) # (!\lcd|CLK_400HZ_Enable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~regout\,
	datab => \lcd|CLK_400HZ_Enable~regout\,
	datac => \lcd|state.DROP_LCD_E~regout\,
	datad => \lcd|DATA_BUS_VALUE\(3),
	combout => \lcd|DATA_BUS_VALUE~3_combout\);

-- Location: LCCOMB_X49_Y25_N14
\lcd|DATA_BUS_VALUE~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~7_combout\ = (\lcd|CLK_400HZ_Enable~regout\ & (\lcd|state.Print_String~regout\ & \lcd|Mux3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|CLK_400HZ_Enable~regout\,
	datac => \lcd|state.Print_String~regout\,
	datad => \lcd|Mux3~8_combout\,
	combout => \lcd|DATA_BUS_VALUE~7_combout\);

-- Location: LCCOMB_X49_Y25_N24
\lcd|DATA_BUS_VALUE~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~6_combout\ = (((!\lcd|Mux5~10_combout\ & !\lcd|Mux4~8_combout\)) # (!\lcd|Mux3~8_combout\)) # (!\lcd|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Equal0~1_combout\,
	datab => \lcd|Mux5~10_combout\,
	datac => \lcd|Mux4~8_combout\,
	datad => \lcd|Mux3~8_combout\,
	combout => \lcd|DATA_BUS_VALUE~6_combout\);

-- Location: LCCOMB_X48_Y25_N2
\lcd|DATA_BUS_VALUE~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~8_combout\ = (\lcd|DATA_BUS_VALUE~5_combout\) # ((\lcd|DATA_BUS_VALUE~3_combout\) # ((\lcd|DATA_BUS_VALUE~7_combout\ & \lcd|DATA_BUS_VALUE~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|DATA_BUS_VALUE~5_combout\,
	datab => \lcd|DATA_BUS_VALUE~3_combout\,
	datac => \lcd|DATA_BUS_VALUE~7_combout\,
	datad => \lcd|DATA_BUS_VALUE~6_combout\,
	combout => \lcd|DATA_BUS_VALUE~8_combout\);

-- Location: LCCOMB_X48_Y25_N0
\lcd|DATA_BUS_VALUE[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE[3]~feeder_combout\ = \lcd|DATA_BUS_VALUE~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd|DATA_BUS_VALUE~8_combout\,
	combout => \lcd|DATA_BUS_VALUE[3]~feeder_combout\);

-- Location: LCFF_X48_Y25_N1
\lcd|DATA_BUS_VALUE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|DATA_BUS_VALUE[3]~feeder_combout\,
	sdata => VCC,
	sload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X49_Y24_N28
\lcd|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux2~2_combout\ = (\lcd|CHAR_COUNT\(2) & (!\lcd|CHAR_COUNT\(0) & (\lcd|CHAR_COUNT\(4) $ (\lcd|CHAR_COUNT\(1))))) # (!\lcd|CHAR_COUNT\(2) & (((\lcd|CHAR_COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|CHAR_COUNT\(4),
	datab => \lcd|CHAR_COUNT\(1),
	datac => \lcd|CHAR_COUNT\(0),
	datad => \lcd|CHAR_COUNT\(2),
	combout => \lcd|Mux2~2_combout\);

-- Location: LCCOMB_X49_Y24_N2
\lcd|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Mux2~3_combout\ = (\lcd|CHAR_COUNT\(3) & (\lcd|Mux2~1_combout\ & ((\lcd|Mux2~0_combout\)))) # (!\lcd|CHAR_COUNT\(3) & (((\lcd|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux2~1_combout\,
	datab => \lcd|Mux2~2_combout\,
	datac => \lcd|CHAR_COUNT\(3),
	datad => \lcd|Mux2~0_combout\,
	combout => \lcd|Mux2~3_combout\);

-- Location: LCCOMB_X49_Y25_N8
\lcd|DATA_BUS_VALUE~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~9_combout\ = (\lcd|state.Print_String~regout\ & \lcd|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|state.Print_String~regout\,
	datad => \lcd|Mux2~3_combout\,
	combout => \lcd|DATA_BUS_VALUE~9_combout\);

-- Location: LCCOMB_X49_Y25_N20
\lcd|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector9~3_combout\ = (!\lcd|Mux2~3_combout\ & (\lcd|state.Print_String~regout\ & \lcd|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Mux2~3_combout\,
	datab => \lcd|state.Print_String~regout\,
	datad => \lcd|Equal0~0_combout\,
	combout => \lcd|Selector9~3_combout\);

-- Location: LCCOMB_X49_Y25_N22
\lcd|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|LessThan1~0_combout\ = (\lcd|Mux3~8_combout\ & ((\lcd|Mux4~8_combout\) # (\lcd|Mux5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|Mux4~8_combout\,
	datac => \lcd|Mux5~10_combout\,
	datad => \lcd|Mux3~8_combout\,
	combout => \lcd|LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y25_N6
\lcd|DATA_BUS_VALUE~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~12_combout\ = ((\lcd|DATA_BUS_VALUE~9_combout\) # ((\lcd|Selector9~3_combout\ & !\lcd|LessThan1~0_combout\))) # (!\lcd|DATA_BUS_VALUE~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|DATA_BUS_VALUE~11_combout\,
	datab => \lcd|DATA_BUS_VALUE~9_combout\,
	datac => \lcd|Selector9~3_combout\,
	datad => \lcd|LessThan1~0_combout\,
	combout => \lcd|DATA_BUS_VALUE~12_combout\);

-- Location: LCCOMB_X48_Y25_N18
\lcd|DATA_BUS_VALUE~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~13_combout\ = (\reset~combout\) # ((!\lcd|state.HOLD~regout\ & (!\lcd|state.DROP_LCD_E~regout\ & \lcd|CLK_400HZ_Enable~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~regout\,
	datab => \reset~combout\,
	datac => \lcd|state.DROP_LCD_E~regout\,
	datad => \lcd|CLK_400HZ_Enable~regout\,
	combout => \lcd|DATA_BUS_VALUE~13_combout\);

-- Location: LCFF_X49_Y25_N7
\lcd|DATA_BUS_VALUE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|DATA_BUS_VALUE~12_combout\,
	ena => \lcd|DATA_BUS_VALUE~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X49_Y24_N30
\lcd|DATA_BUS_VALUE~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~14_combout\ = (\lcd|state.Print_String~regout\ & ((\lcd|CHAR_COUNT\(2) & (!\lcd|Mux1~0_combout\)) # (!\lcd|CHAR_COUNT\(2) & ((\lcd|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.Print_String~regout\,
	datab => \lcd|CHAR_COUNT\(2),
	datac => \lcd|Mux1~0_combout\,
	datad => \lcd|Mux1~1_combout\,
	combout => \lcd|DATA_BUS_VALUE~14_combout\);

-- Location: LCCOMB_X49_Y25_N12
\lcd|DATA_BUS_VALUE~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|DATA_BUS_VALUE~15_combout\ = ((\lcd|DATA_BUS_VALUE~14_combout\) # ((\lcd|Selector9~3_combout\ & !\lcd|LessThan1~0_combout\))) # (!\lcd|DATA_BUS_VALUE~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|DATA_BUS_VALUE~11_combout\,
	datab => \lcd|DATA_BUS_VALUE~14_combout\,
	datac => \lcd|Selector9~3_combout\,
	datad => \lcd|LessThan1~0_combout\,
	combout => \lcd|DATA_BUS_VALUE~15_combout\);

-- Location: LCFF_X49_Y25_N13
\lcd|DATA_BUS_VALUE[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|DATA_BUS_VALUE~15_combout\,
	ena => \lcd|DATA_BUS_VALUE~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X49_Y25_N10
\lcd|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector3~1_combout\ = (\lcd|Selector3~0_combout\) # ((\lcd|state.Print_String~regout\ & ((\lcd|DATA_BUS_VALUE~2_combout\) # (!\lcd|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector3~0_combout\,
	datab => \lcd|Mux0~0_combout\,
	datac => \lcd|state.Print_String~regout\,
	datad => \lcd|DATA_BUS_VALUE~2_combout\,
	combout => \lcd|Selector3~1_combout\);

-- Location: LCFF_X49_Y25_N11
\lcd|DATA_BUS_VALUE[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector3~1_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X49_Y25_N4
\lcd|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector17~1_combout\ = (\lcd|Selector17~0_combout\) # ((\lcd|Equal2~0_combout\ & (\lcd|state.Print_String~regout\ & \lcd|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|Selector17~0_combout\,
	datab => \lcd|Equal2~0_combout\,
	datac => \lcd|state.Print_String~regout\,
	datad => \lcd|CHAR_COUNT\(4),
	combout => \lcd|Selector17~1_combout\);

-- Location: LCFF_X49_Y25_N5
\lcd|next_command.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector17~1_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|next_command.RETURN_HOME~regout\);

-- Location: LCCOMB_X51_Y25_N22
\lcd|state~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|state~32_combout\ = (\lcd|next_command.RETURN_HOME~regout\ & \lcd|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd|next_command.RETURN_HOME~regout\,
	datac => \lcd|state.HOLD~regout\,
	combout => \lcd|state~32_combout\);

-- Location: LCFF_X51_Y25_N23
\lcd|state.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|state~32_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|state.RETURN_HOME~regout\);

-- Location: LCCOMB_X51_Y25_N26
\lcd|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector2~0_combout\ = (\lcd|state.LINE2~regout\) # ((\lcd|state.RETURN_HOME~regout\) # ((\lcd|LCD_RS~0_combout\ & \lcd|DATA_BUS_VALUE\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.LINE2~regout\,
	datab => \lcd|LCD_RS~0_combout\,
	datac => \lcd|DATA_BUS_VALUE\(7),
	datad => \lcd|state.RETURN_HOME~regout\,
	combout => \lcd|Selector2~0_combout\);

-- Location: LCFF_X51_Y25_N27
\lcd|DATA_BUS_VALUE[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector2~0_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|DATA_BUS_VALUE\(7));

-- Location: LCCOMB_X51_Y25_N28
\lcd|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|Selector1~0_combout\ = (\lcd|state.Print_String~regout\) # ((\lcd|LCD_RS~regout\ & ((\lcd|state.HOLD~regout\) # (\lcd|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~regout\,
	datab => \lcd|state.DROP_LCD_E~regout\,
	datac => \lcd|LCD_RS~regout\,
	datad => \lcd|state.Print_String~regout\,
	combout => \lcd|Selector1~0_combout\);

-- Location: LCFF_X51_Y25_N29
\lcd|LCD_RS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|Selector1~0_combout\,
	sclr => \reset~combout\,
	ena => \lcd|next_command.DISPLAY_OFF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|LCD_RS~regout\);

-- Location: LCCOMB_X48_Y25_N4
\lcd|LCD_E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd|LCD_E~0_combout\ = (\lcd|state.HOLD~regout\ & (((\lcd|LCD_E~regout\)))) # (!\lcd|state.HOLD~regout\ & ((\lcd|CLK_400HZ_Enable~regout\ & (!\lcd|state.DROP_LCD_E~regout\)) # (!\lcd|CLK_400HZ_Enable~regout\ & ((\lcd|LCD_E~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd|state.HOLD~regout\,
	datab => \lcd|state.DROP_LCD_E~regout\,
	datac => \lcd|LCD_E~regout\,
	datad => \lcd|CLK_400HZ_Enable~regout\,
	combout => \lcd|LCD_E~0_combout\);

-- Location: LCFF_X48_Y25_N5
\lcd|LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock48MHz~clkctrl_outclk\,
	datain => \lcd|LCD_E~0_combout\,
	sdata => VCC,
	sload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd|LCD_E~regout\);

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[0]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd|DATA_BUS_VALUE\(0),
	oe => \lcd|ALT_INV_LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DATA(0));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[1]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd|DATA_BUS_VALUE\(1),
	oe => \lcd|ALT_INV_LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DATA(1));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[2]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd|DATA_BUS_VALUE\(2),
	oe => \lcd|ALT_INV_LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DATA(2));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[3]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd|DATA_BUS_VALUE\(3),
	oe => \lcd|ALT_INV_LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DATA(3));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd|DATA_BUS_VALUE\(4),
	oe => \lcd|ALT_INV_LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DATA(4));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[5]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd|DATA_BUS_VALUE\(5),
	oe => \lcd|ALT_INV_LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DATA(5));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd|DATA_BUS_VALUE\(6),
	oe => \lcd|ALT_INV_LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DATA(6));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA[7]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \lcd|DATA_BUS_VALUE\(7),
	oe => \lcd|ALT_INV_LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DATA(7));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RS~I\ : cycloneii_io
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
	datain => \lcd|LCD_RS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RS);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_E~I\ : cycloneii_io
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
	datain => \lcd|LCD_E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_E);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RW~I\ : cycloneii_io
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
	datain => \lcd|LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RW);

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_ON~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_ON);
END structure;


