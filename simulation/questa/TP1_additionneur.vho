-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "04/24/2026 11:24:03"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	baseline_c5gx IS
    PORT (
	\CLOCK_125_p(n)\ : IN std_logic := '0';
	ADC_CONVST : OUT std_logic;
	ADC_SCK : OUT std_logic;
	ADC_SDI : OUT std_logic;
	ADC_SDO : IN std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_ADCLRCK : INOUT std_logic;
	AUD_BCLK : INOUT std_logic;
	AUD_DACDAT : OUT std_logic;
	AUD_DACLRCK : INOUT std_logic;
	AUD_XCK : OUT std_logic;
	CLOCK_125_p : IN std_logic;
	CLOCK_50_B5B : IN std_logic;
	CLOCK_50_B6A : IN std_logic;
	CLOCK_50_B7A : IN std_logic;
	CLOCK_50_B8A : IN std_logic;
	CPU_RESET_n : IN std_logic;
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HDMI_TX_CLK : OUT std_logic;
	HDMI_TX_D : OUT std_logic_vector(23 DOWNTO 0);
	HDMI_TX_DE : OUT std_logic;
	HDMI_TX_HS : OUT std_logic;
	HDMI_TX_INT : IN std_logic;
	HDMI_TX_VS : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HSMC_CLKIN0 : IN std_logic;
	HSMC_CLKIN_n : IN std_logic_vector(2 DOWNTO 1);
	HSMC_CLKIN_p : IN std_logic_vector(2 DOWNTO 1);
	HSMC_CLKOUT0 : OUT std_logic;
	HSMC_CLKOUT_n : OUT std_logic_vector(2 DOWNTO 1);
	HSMC_CLKOUT_p : OUT std_logic_vector(2 DOWNTO 1);
	HSMC_D : INOUT std_logic_vector(3 DOWNTO 0);
	HSMC_RX_n : INOUT std_logic_vector(16 DOWNTO 0);
	HSMC_RX_p : INOUT std_logic_vector(16 DOWNTO 0);
	HSMC_TX_n : INOUT std_logic_vector(16 DOWNTO 0);
	HSMC_TX_p : INOUT std_logic_vector(16 DOWNTO 0);
	I2C_SCL : OUT std_logic;
	I2C_SDA : INOUT std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	SD_CLK : OUT std_logic;
	SD_CMD : INOUT std_logic;
	SD_DAT : INOUT std_logic_vector(3 DOWNTO 0);
	SRAM_A : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_CE_n : OUT std_logic;
	SRAM_D : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_LB_n : OUT std_logic;
	SRAM_OE_n : OUT std_logic;
	SRAM_UB_n : OUT std_logic;
	SRAM_WE_n : OUT std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	UART_RX : IN std_logic;
	UART_TX : OUT std_logic
	);
END baseline_c5gx;

-- Design Ports Information
-- ADC_CONVST	=>  Location: PIN_AB22,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- ADC_SCK	=>  Location: PIN_AA21,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- ADC_SDI	=>  Location: PIN_Y10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- ADC_SDO	=>  Location: PIN_W10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_XCK	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_125_p	=>  Location: PIN_U12,	 I/O Standard: LVDS,	 Current Strength: Default
-- CLOCK_50_B5B	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50_B6A	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50_B7A	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50_B8A	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_RESET_n	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_CLK	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[0]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[1]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[2]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[4]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[5]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[6]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[7]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[8]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[9]	=>  Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[10]	=>  Location: PIN_R23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[11]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[12]	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[13]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[14]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[15]	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[16]	=>  Location: PIN_P21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[17]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[18]	=>  Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[19]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[20]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[21]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[22]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_D[23]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_DE	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_HS	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HDMI_TX_INT	=>  Location: PIN_T12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HDMI_TX_VS	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_V19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_V17,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y20,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_Y18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA18,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AD26,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AB19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AE26,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AE25,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AC19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AF24,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKIN_n[1]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKIN_n[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKIN_p[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKIN_p[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKOUT0	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKOUT_n[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKOUT_n[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKOUT_p[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_CLKOUT_p[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SCL	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_CLK	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[0]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[1]	=>  Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[2]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[3]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[4]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[5]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[6]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[7]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[8]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[9]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[10]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[11]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[12]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[13]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[14]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[15]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[16]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_A[17]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_CE_n	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_LB_n	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_OE_n	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_UB_n	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_WE_n	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- UART_RX	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UART_TX	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_D[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_D[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_D[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_D[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[0]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[8]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[11]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[12]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[13]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[14]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[15]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_n[16]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[7]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[8]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[9]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[10]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[11]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[12]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[13]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[14]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[15]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_p[16]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[7]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[10]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[11]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[12]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[13]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[14]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[15]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_n[16]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[5]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[10]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[11]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[12]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[13]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[14]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[15]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_p[16]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SDA	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD_CMD	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SD_DAT[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SD_DAT[1]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SD_DAT[2]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SD_DAT[3]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[0]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[1]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[2]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[3]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[5]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[6]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[7]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[8]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[9]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[10]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[11]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[12]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[13]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[14]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SRAM_D[15]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_125_p(n)	=>  Location: PIN_V12,	 I/O Standard: LVDS,	 Current Strength: Default


ARCHITECTURE structure OF baseline_c5gx IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_CLOCK_125_p(n)\ : std_logic;
SIGNAL ww_ADC_CONVST : std_logic;
SIGNAL ww_ADC_SCK : std_logic;
SIGNAL ww_ADC_SDI : std_logic;
SIGNAL ww_ADC_SDO : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_CLOCK_125_p : std_logic;
SIGNAL ww_CLOCK_50_B5B : std_logic;
SIGNAL ww_CLOCK_50_B6A : std_logic;
SIGNAL ww_CLOCK_50_B7A : std_logic;
SIGNAL ww_CLOCK_50_B8A : std_logic;
SIGNAL ww_CPU_RESET_n : std_logic;
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HDMI_TX_CLK : std_logic;
SIGNAL ww_HDMI_TX_D : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_HDMI_TX_DE : std_logic;
SIGNAL ww_HDMI_TX_HS : std_logic;
SIGNAL ww_HDMI_TX_INT : std_logic;
SIGNAL ww_HDMI_TX_VS : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HSMC_CLKIN0 : std_logic;
SIGNAL ww_HSMC_CLKIN_n : std_logic_vector(2 DOWNTO 1);
SIGNAL ww_HSMC_CLKIN_p : std_logic_vector(2 DOWNTO 1);
SIGNAL ww_HSMC_CLKOUT0 : std_logic;
SIGNAL ww_HSMC_CLKOUT_n : std_logic_vector(2 DOWNTO 1);
SIGNAL ww_HSMC_CLKOUT_p : std_logic_vector(2 DOWNTO 1);
SIGNAL ww_I2C_SCL : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SD_CLK : std_logic;
SIGNAL ww_SRAM_A : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_CE_n : std_logic;
SIGNAL ww_SRAM_LB_n : std_logic;
SIGNAL ww_SRAM_OE_n : std_logic;
SIGNAL ww_SRAM_UB_n : std_logic;
SIGNAL ww_SRAM_WE_n : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_UART_RX : std_logic;
SIGNAL ww_UART_TX : std_logic;
SIGNAL \ADC_SDO~input_o\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \CLOCK_125_p~input_o\ : std_logic;
SIGNAL \CLOCK_50_B5B~input_o\ : std_logic;
SIGNAL \CLOCK_50_B6A~input_o\ : std_logic;
SIGNAL \CLOCK_50_B7A~input_o\ : std_logic;
SIGNAL \CLOCK_50_B8A~input_o\ : std_logic;
SIGNAL \CPU_RESET_n~input_o\ : std_logic;
SIGNAL \HDMI_TX_INT~input_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~input_o\ : std_logic;
SIGNAL \HSMC_CLKIN_n[1]~input_o\ : std_logic;
SIGNAL \HSMC_CLKIN_n[2]~input_o\ : std_logic;
SIGNAL \HSMC_CLKIN_p[1]~input_o\ : std_logic;
SIGNAL \HSMC_CLKIN_p[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \UART_RX~input_o\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \HSMC_D[0]~input_o\ : std_logic;
SIGNAL \HSMC_D[1]~input_o\ : std_logic;
SIGNAL \HSMC_D[2]~input_o\ : std_logic;
SIGNAL \HSMC_D[3]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[0]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[1]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[2]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[3]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[4]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[5]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[6]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[7]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[8]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[9]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[10]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[11]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[12]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[13]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[14]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[15]~input_o\ : std_logic;
SIGNAL \HSMC_RX_n[16]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[0]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[1]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[2]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[3]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[4]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[5]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[6]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[7]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[8]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[9]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[10]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[11]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[12]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[13]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[14]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[15]~input_o\ : std_logic;
SIGNAL \HSMC_RX_p[16]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[0]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[1]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[2]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[3]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[4]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[5]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[6]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[7]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[8]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[9]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[10]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[11]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[12]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[13]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[14]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[15]~input_o\ : std_logic;
SIGNAL \HSMC_TX_n[16]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[0]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[1]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[2]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[3]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[4]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[5]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[6]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[7]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[8]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[9]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[10]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[11]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[12]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[13]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[14]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[15]~input_o\ : std_logic;
SIGNAL \HSMC_TX_p[16]~input_o\ : std_logic;
SIGNAL \I2C_SDA~input_o\ : std_logic;
SIGNAL \SD_CMD~input_o\ : std_logic;
SIGNAL \SD_DAT[0]~input_o\ : std_logic;
SIGNAL \SD_DAT[1]~input_o\ : std_logic;
SIGNAL \SD_DAT[2]~input_o\ : std_logic;
SIGNAL \SD_DAT[3]~input_o\ : std_logic;
SIGNAL \SRAM_D[0]~input_o\ : std_logic;
SIGNAL \SRAM_D[1]~input_o\ : std_logic;
SIGNAL \SRAM_D[2]~input_o\ : std_logic;
SIGNAL \SRAM_D[3]~input_o\ : std_logic;
SIGNAL \SRAM_D[4]~input_o\ : std_logic;
SIGNAL \SRAM_D[5]~input_o\ : std_logic;
SIGNAL \SRAM_D[6]~input_o\ : std_logic;
SIGNAL \SRAM_D[7]~input_o\ : std_logic;
SIGNAL \SRAM_D[8]~input_o\ : std_logic;
SIGNAL \SRAM_D[9]~input_o\ : std_logic;
SIGNAL \SRAM_D[10]~input_o\ : std_logic;
SIGNAL \SRAM_D[11]~input_o\ : std_logic;
SIGNAL \SRAM_D[12]~input_o\ : std_logic;
SIGNAL \SRAM_D[13]~input_o\ : std_logic;
SIGNAL \SRAM_D[14]~input_o\ : std_logic;
SIGNAL \SRAM_D[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

\ww_CLOCK_125_p(n)\ <= \CLOCK_125_p(n)\;
ADC_CONVST <= ww_ADC_CONVST;
ADC_SCK <= ww_ADC_SCK;
ADC_SDI <= ww_ADC_SDI;
ww_ADC_SDO <= ADC_SDO;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_XCK <= ww_AUD_XCK;
ww_CLOCK_125_p <= CLOCK_125_p;
ww_CLOCK_50_B5B <= CLOCK_50_B5B;
ww_CLOCK_50_B6A <= CLOCK_50_B6A;
ww_CLOCK_50_B7A <= CLOCK_50_B7A;
ww_CLOCK_50_B8A <= CLOCK_50_B8A;
ww_CPU_RESET_n <= CPU_RESET_n;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HDMI_TX_CLK <= ww_HDMI_TX_CLK;
HDMI_TX_D <= ww_HDMI_TX_D;
HDMI_TX_DE <= ww_HDMI_TX_DE;
HDMI_TX_HS <= ww_HDMI_TX_HS;
ww_HDMI_TX_INT <= HDMI_TX_INT;
HDMI_TX_VS <= ww_HDMI_TX_VS;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_HSMC_CLKIN0 <= HSMC_CLKIN0;
ww_HSMC_CLKIN_n <= HSMC_CLKIN_n;
ww_HSMC_CLKIN_p <= HSMC_CLKIN_p;
HSMC_CLKOUT0 <= ww_HSMC_CLKOUT0;
HSMC_CLKOUT_n <= ww_HSMC_CLKOUT_n;
HSMC_CLKOUT_p <= ww_HSMC_CLKOUT_p;
I2C_SCL <= ww_I2C_SCL;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
SD_CLK <= ww_SD_CLK;
SRAM_A <= ww_SRAM_A;
SRAM_CE_n <= ww_SRAM_CE_n;
SRAM_LB_n <= ww_SRAM_LB_n;
SRAM_OE_n <= ww_SRAM_OE_n;
SRAM_UB_n <= ww_SRAM_UB_n;
SRAM_WE_n <= ww_SRAM_WE_n;
ww_SW <= SW;
ww_UART_RX <= UART_RX;
UART_TX <= ww_UART_TX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X66_Y0_N36
\ADC_CONVST~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ADC_CONVST);

-- Location: IOOBUF_X66_Y0_N53
\ADC_SCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ADC_SCK);

-- Location: IOOBUF_X15_Y0_N53
\ADC_SDI~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ADC_SDI);

-- Location: IOOBUF_X17_Y61_N42
\AUD_DACDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOOBUF_X18_Y61_N36
\AUD_XCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_AUD_XCK);

-- Location: IOOBUF_X7_Y0_N36
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X7_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X68_Y13_N22
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X68_Y12_N5
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X68_Y10_N62
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X68_Y11_N22
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X68_Y11_N5
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X68_Y13_N56
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X68_Y13_N39
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X68_Y11_N56
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X68_Y11_N39
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X68_Y12_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X68_Y10_N96
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X68_Y10_N79
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X68_Y24_N39
\HDMI_TX_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_CLK);

-- Location: IOOBUF_X68_Y14_N79
\HDMI_TX_D[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(0));

-- Location: IOOBUF_X68_Y22_N96
\HDMI_TX_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(1));

-- Location: IOOBUF_X68_Y26_N39
\HDMI_TX_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(2));

-- Location: IOOBUF_X68_Y26_N56
\HDMI_TX_D[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(3));

-- Location: IOOBUF_X68_Y14_N96
\HDMI_TX_D[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(4));

-- Location: IOOBUF_X68_Y19_N56
\HDMI_TX_D[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(5));

-- Location: IOOBUF_X68_Y19_N39
\HDMI_TX_D[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(6));

-- Location: IOOBUF_X68_Y16_N5
\HDMI_TX_D[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(7));

-- Location: IOOBUF_X68_Y16_N22
\HDMI_TX_D[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(8));

-- Location: IOOBUF_X68_Y24_N5
\HDMI_TX_D[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(9));

-- Location: IOOBUF_X68_Y17_N5
\HDMI_TX_D[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(10));

-- Location: IOOBUF_X68_Y19_N22
\HDMI_TX_D[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(11));

-- Location: IOOBUF_X68_Y26_N22
\HDMI_TX_D[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(12));

-- Location: IOOBUF_X68_Y17_N22
\HDMI_TX_D[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(13));

-- Location: IOOBUF_X68_Y27_N5
\HDMI_TX_D[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(14));

-- Location: IOOBUF_X68_Y27_N22
\HDMI_TX_D[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(15));

-- Location: IOOBUF_X68_Y26_N5
\HDMI_TX_D[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(16));

-- Location: IOOBUF_X68_Y19_N5
\HDMI_TX_D[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(17));

-- Location: IOOBUF_X68_Y24_N22
\HDMI_TX_D[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(18));

-- Location: IOOBUF_X68_Y22_N79
\HDMI_TX_D[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(19));

-- Location: IOOBUF_X68_Y16_N39
\HDMI_TX_D[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(20));

-- Location: IOOBUF_X68_Y16_N56
\HDMI_TX_D[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(21));

-- Location: IOOBUF_X68_Y17_N56
\HDMI_TX_D[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(22));

-- Location: IOOBUF_X68_Y17_N39
\HDMI_TX_D[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_D(23));

-- Location: IOOBUF_X68_Y24_N56
\HDMI_TX_DE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_DE);

-- Location: IOOBUF_X68_Y27_N56
\HDMI_TX_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_HS);

-- Location: IOOBUF_X68_Y27_N39
\HDMI_TX_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMI_TX_VS);

-- Location: IOOBUF_X66_Y0_N2
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X64_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X64_Y0_N19
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X66_Y0_N19
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X65_Y0_N2
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X65_Y0_N19
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X62_Y0_N42
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X62_Y0_N59
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X64_Y0_N36
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X65_Y0_N36
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X64_Y0_N53
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X62_Y0_N76
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X65_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X62_Y0_N93
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X19_Y61_N36
\HSMC_CLKOUT0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_CLKOUT0);

-- Location: IOOBUF_X57_Y61_N53
\HSMC_CLKOUT_n[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_CLKOUT_n(1));

-- Location: IOOBUF_X55_Y61_N93
\HSMC_CLKOUT_n[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_CLKOUT_n(2));

-- Location: IOOBUF_X57_Y61_N36
\HSMC_CLKOUT_p[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_CLKOUT_p(1));

-- Location: IOOBUF_X55_Y61_N76
\HSMC_CLKOUT_p[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_CLKOUT_p(2));

-- Location: IOOBUF_X19_Y61_N53
\I2C_SCL~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_I2C_SCL);

-- Location: IOOBUF_X10_Y61_N42
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X10_Y61_N59
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X10_Y61_N76
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X10_Y61_N93
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X21_Y61_N36
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X21_Y61_N53
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X19_Y61_N2
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X19_Y61_N19
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X14_Y61_N53
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X15_Y61_N36
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X15_Y61_N53
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y61_N36
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X14_Y61_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X12_Y61_N53
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X12_Y61_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X14_Y61_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X12_Y61_N36
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X12_Y61_N19
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X4_Y0_N53
\SD_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SD_CLK);

-- Location: IOOBUF_X68_Y47_N79
\SRAM_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(0));

-- Location: IOOBUF_X68_Y47_N96
\SRAM_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(1));

-- Location: IOOBUF_X68_Y49_N5
\SRAM_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(2));

-- Location: IOOBUF_X68_Y49_N22
\SRAM_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(3));

-- Location: IOOBUF_X68_Y49_N39
\SRAM_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(4));

-- Location: IOOBUF_X68_Y49_N56
\SRAM_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(5));

-- Location: IOOBUF_X68_Y51_N5
\SRAM_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(6));

-- Location: IOOBUF_X68_Y51_N22
\SRAM_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(7));

-- Location: IOOBUF_X68_Y51_N39
\SRAM_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(8));

-- Location: IOOBUF_X68_Y51_N56
\SRAM_A[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(9));

-- Location: IOOBUF_X68_Y52_N5
\SRAM_A[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(10));

-- Location: IOOBUF_X68_Y52_N22
\SRAM_A[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(11));

-- Location: IOOBUF_X68_Y52_N39
\SRAM_A[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(12));

-- Location: IOOBUF_X68_Y52_N56
\SRAM_A[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(13));

-- Location: IOOBUF_X68_Y32_N79
\SRAM_A[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(14));

-- Location: IOOBUF_X68_Y32_N96
\SRAM_A[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(15));

-- Location: IOOBUF_X68_Y33_N5
\SRAM_A[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(16));

-- Location: IOOBUF_X68_Y33_N22
\SRAM_A[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_A(17));

-- Location: IOOBUF_X68_Y35_N5
\SRAM_CE_n~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_CE_n);

-- Location: IOOBUF_X68_Y35_N56
\SRAM_LB_n~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_LB_n);

-- Location: IOOBUF_X68_Y35_N22
\SRAM_OE_n~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_OE_n);

-- Location: IOOBUF_X68_Y37_N5
\SRAM_UB_n~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_UB_n);

-- Location: IOOBUF_X68_Y35_N39
\SRAM_WE_n~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SRAM_WE_n);

-- Location: IOOBUF_X18_Y61_N19
\UART_TX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_UART_TX);

-- Location: IOOBUF_X17_Y61_N93
\AUD_ADCLRCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => AUD_ADCLRCK);

-- Location: IOOBUF_X18_Y61_N53
\AUD_BCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => AUD_BCLK);

-- Location: IOOBUF_X17_Y61_N59
\AUD_DACLRCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => AUD_DACLRCK);

-- Location: IOOBUF_X32_Y61_N76
\HSMC_D[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_D(0));

-- Location: IOOBUF_X53_Y61_N2
\HSMC_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_D(1));

-- Location: IOOBUF_X32_Y61_N93
\HSMC_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_D(2));

-- Location: IOOBUF_X53_Y61_N19
\HSMC_D[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_D(3));

-- Location: IOOBUF_X42_Y61_N19
\HSMC_RX_n[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(0));

-- Location: IOOBUF_X34_Y61_N19
\HSMC_RX_n[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(1));

-- Location: IOOBUF_X64_Y61_N19
\HSMC_RX_n[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(2));

-- Location: IOOBUF_X50_Y61_N19
\HSMC_RX_n[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(3));

-- Location: IOOBUF_X66_Y61_N19
\HSMC_RX_n[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(4));

-- Location: IOOBUF_X57_Y61_N19
\HSMC_RX_n[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(5));

-- Location: IOOBUF_X61_Y61_N19
\HSMC_RX_n[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(6));

-- Location: IOOBUF_X36_Y61_N19
\HSMC_RX_n[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(7));

-- Location: IOOBUF_X51_Y61_N19
\HSMC_RX_n[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(8));

-- Location: IOOBUF_X40_Y61_N59
\HSMC_RX_n[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(9));

-- Location: IOOBUF_X32_Y61_N59
\HSMC_RX_n[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(10));

-- Location: IOOBUF_X48_Y61_N59
\HSMC_RX_n[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(11));

-- Location: IOOBUF_X44_Y61_N19
\HSMC_RX_n[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(12));

-- Location: IOOBUF_X55_Y61_N59
\HSMC_RX_n[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(13));

-- Location: IOOBUF_X59_Y61_N19
\HSMC_RX_n[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(14));

-- Location: IOOBUF_X62_Y61_N59
\HSMC_RX_n[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(15));

-- Location: IOOBUF_X65_Y61_N19
\HSMC_RX_n[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_n(16));

-- Location: IOOBUF_X42_Y61_N2
\HSMC_RX_p[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(0));

-- Location: IOOBUF_X34_Y61_N2
\HSMC_RX_p[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(1));

-- Location: IOOBUF_X64_Y61_N2
\HSMC_RX_p[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(2));

-- Location: IOOBUF_X50_Y61_N2
\HSMC_RX_p[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(3));

-- Location: IOOBUF_X66_Y61_N2
\HSMC_RX_p[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(4));

-- Location: IOOBUF_X57_Y61_N2
\HSMC_RX_p[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(5));

-- Location: IOOBUF_X61_Y61_N2
\HSMC_RX_p[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(6));

-- Location: IOOBUF_X36_Y61_N2
\HSMC_RX_p[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(7));

-- Location: IOOBUF_X51_Y61_N2
\HSMC_RX_p[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(8));

-- Location: IOOBUF_X40_Y61_N42
\HSMC_RX_p[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(9));

-- Location: IOOBUF_X32_Y61_N42
\HSMC_RX_p[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(10));

-- Location: IOOBUF_X48_Y61_N42
\HSMC_RX_p[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(11));

-- Location: IOOBUF_X44_Y61_N2
\HSMC_RX_p[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(12));

-- Location: IOOBUF_X55_Y61_N42
\HSMC_RX_p[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(13));

-- Location: IOOBUF_X59_Y61_N2
\HSMC_RX_p[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(14));

-- Location: IOOBUF_X62_Y61_N42
\HSMC_RX_p[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(15));

-- Location: IOOBUF_X65_Y61_N2
\HSMC_RX_p[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_RX_p(16));

-- Location: IOOBUF_X40_Y61_N93
\HSMC_TX_n[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(0));

-- Location: IOOBUF_X46_Y61_N53
\HSMC_TX_n[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(1));

-- Location: IOOBUF_X44_Y61_N53
\HSMC_TX_n[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(2));

-- Location: IOOBUF_X36_Y61_N53
\HSMC_TX_n[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(3));

-- Location: IOOBUF_X42_Y61_N53
\HSMC_TX_n[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(4));

-- Location: IOOBUF_X61_Y61_N53
\HSMC_TX_n[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(5));

-- Location: IOOBUF_X50_Y61_N53
\HSMC_TX_n[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(6));

-- Location: IOOBUF_X64_Y61_N53
\HSMC_TX_n[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(7));

-- Location: IOOBUF_X34_Y61_N53
\HSMC_TX_n[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(8));

-- Location: IOOBUF_X48_Y61_N93
\HSMC_TX_n[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(9));

-- Location: IOOBUF_X38_Y61_N53
\HSMC_TX_n[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(10));

-- Location: IOOBUF_X66_Y61_N53
\HSMC_TX_n[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(11));

-- Location: IOOBUF_X51_Y61_N53
\HSMC_TX_n[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(12));

-- Location: IOOBUF_X65_Y61_N53
\HSMC_TX_n[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(13));

-- Location: IOOBUF_X53_Y61_N53
\HSMC_TX_n[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(14));

-- Location: IOOBUF_X59_Y61_N53
\HSMC_TX_n[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(15));

-- Location: IOOBUF_X62_Y61_N93
\HSMC_TX_n[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_n(16));

-- Location: IOOBUF_X40_Y61_N76
\HSMC_TX_p[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(0));

-- Location: IOOBUF_X46_Y61_N36
\HSMC_TX_p[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(1));

-- Location: IOOBUF_X44_Y61_N36
\HSMC_TX_p[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(2));

-- Location: IOOBUF_X36_Y61_N36
\HSMC_TX_p[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(3));

-- Location: IOOBUF_X42_Y61_N36
\HSMC_TX_p[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(4));

-- Location: IOOBUF_X61_Y61_N36
\HSMC_TX_p[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(5));

-- Location: IOOBUF_X50_Y61_N36
\HSMC_TX_p[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(6));

-- Location: IOOBUF_X64_Y61_N36
\HSMC_TX_p[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(7));

-- Location: IOOBUF_X34_Y61_N36
\HSMC_TX_p[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(8));

-- Location: IOOBUF_X48_Y61_N76
\HSMC_TX_p[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(9));

-- Location: IOOBUF_X38_Y61_N36
\HSMC_TX_p[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(10));

-- Location: IOOBUF_X66_Y61_N36
\HSMC_TX_p[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(11));

-- Location: IOOBUF_X51_Y61_N36
\HSMC_TX_p[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(12));

-- Location: IOOBUF_X65_Y61_N36
\HSMC_TX_p[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(13));

-- Location: IOOBUF_X53_Y61_N36
\HSMC_TX_p[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(14));

-- Location: IOOBUF_X59_Y61_N36
\HSMC_TX_p[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(15));

-- Location: IOOBUF_X62_Y61_N76
\HSMC_TX_p[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => HSMC_TX_p(16));

-- Location: IOOBUF_X38_Y61_N19
\I2C_SDA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => I2C_SDA);

-- Location: IOOBUF_X4_Y0_N19
\SD_CMD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SD_CMD);

-- Location: IOOBUF_X2_Y0_N93
\SD_DAT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SD_DAT(0));

-- Location: IOOBUF_X2_Y0_N59
\SD_DAT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SD_DAT(1));

-- Location: IOOBUF_X2_Y0_N76
\SD_DAT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SD_DAT(2));

-- Location: IOOBUF_X2_Y0_N42
\SD_DAT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SD_DAT(3));

-- Location: IOOBUF_X68_Y40_N79
\SRAM_D[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(0));

-- Location: IOOBUF_X68_Y40_N96
\SRAM_D[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(1));

-- Location: IOOBUF_X68_Y41_N5
\SRAM_D[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(2));

-- Location: IOOBUF_X68_Y41_N22
\SRAM_D[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(3));

-- Location: IOOBUF_X68_Y41_N39
\SRAM_D[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(4));

-- Location: IOOBUF_X68_Y41_N56
\SRAM_D[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(5));

-- Location: IOOBUF_X68_Y43_N5
\SRAM_D[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(6));

-- Location: IOOBUF_X68_Y43_N22
\SRAM_D[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(7));

-- Location: IOOBUF_X68_Y43_N39
\SRAM_D[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(8));

-- Location: IOOBUF_X68_Y43_N56
\SRAM_D[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(9));

-- Location: IOOBUF_X68_Y45_N5
\SRAM_D[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(10));

-- Location: IOOBUF_X68_Y45_N22
\SRAM_D[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(11));

-- Location: IOOBUF_X68_Y45_N39
\SRAM_D[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(12));

-- Location: IOOBUF_X68_Y45_N56
\SRAM_D[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(13));

-- Location: IOOBUF_X68_Y47_N45
\SRAM_D[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(14));

-- Location: IOOBUF_X68_Y47_N62
\SRAM_D[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => SRAM_D(15));

-- Location: IOIBUF_X15_Y0_N35
\ADC_SDO~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SDO,
	o => \ADC_SDO~input_o\);

-- Location: IOIBUF_X17_Y61_N75
\AUD_ADCDAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\CLOCK_125_p~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_125_p,
	ibar => \ww_CLOCK_125_p(n)\,
	o => \CLOCK_125_p~input_o\);

-- Location: IOIBUF_X68_Y22_N44
\CLOCK_50_B5B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_B5B,
	o => \CLOCK_50_B5B~input_o\);

-- Location: IOIBUF_X68_Y32_N44
\CLOCK_50_B6A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_B6A,
	o => \CLOCK_50_B6A~input_o\);

-- Location: IOIBUF_X38_Y61_N1
\CLOCK_50_B7A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_B7A,
	o => \CLOCK_50_B7A~input_o\);

-- Location: IOIBUF_X21_Y61_N18
\CLOCK_50_B8A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_B8A,
	o => \CLOCK_50_B8A~input_o\);

-- Location: IOIBUF_X68_Y12_N55
\CPU_RESET_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_RESET_n,
	o => \CPU_RESET_n~input_o\);

-- Location: IOIBUF_X15_Y0_N18
\HDMI_TX_INT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HDMI_TX_INT,
	o => \HDMI_TX_INT~input_o\);

-- Location: IOIBUF_X21_Y61_N1
\HSMC_CLKIN0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_CLKIN0,
	o => \HSMC_CLKIN0~input_o\);

-- Location: IOIBUF_X46_Y61_N18
\HSMC_CLKIN_n[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_CLKIN_n(1),
	o => \HSMC_CLKIN_n[1]~input_o\);

-- Location: IOIBUF_X15_Y61_N18
\HSMC_CLKIN_n[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_CLKIN_n(2),
	o => \HSMC_CLKIN_n[2]~input_o\);

-- Location: IOIBUF_X46_Y61_N1
\HSMC_CLKIN_p[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_CLKIN_p(1),
	o => \HSMC_CLKIN_p[1]~input_o\);

-- Location: IOIBUF_X15_Y61_N1
\HSMC_CLKIN_p[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HSMC_CLKIN_p(2),
	o => \HSMC_CLKIN_p[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X50_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X18_Y61_N1
\UART_RX~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RX,
	o => \UART_RX~input_o\);

-- Location: IOIBUF_X17_Y61_N92
\AUD_ADCLRCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_ADCLRCK,
	o => \AUD_ADCLRCK~input_o\);

-- Location: IOIBUF_X18_Y61_N52
\AUD_BCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_BCLK,
	o => \AUD_BCLK~input_o\);

-- Location: IOIBUF_X17_Y61_N58
\AUD_DACLRCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);

-- Location: IOIBUF_X32_Y61_N75
\HSMC_D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(0),
	o => \HSMC_D[0]~input_o\);

-- Location: IOIBUF_X53_Y61_N1
\HSMC_D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(1),
	o => \HSMC_D[1]~input_o\);

-- Location: IOIBUF_X32_Y61_N92
\HSMC_D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(2),
	o => \HSMC_D[2]~input_o\);

-- Location: IOIBUF_X53_Y61_N18
\HSMC_D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_D(3),
	o => \HSMC_D[3]~input_o\);

-- Location: IOIBUF_X42_Y61_N18
\HSMC_RX_n[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(0),
	o => \HSMC_RX_n[0]~input_o\);

-- Location: IOIBUF_X34_Y61_N18
\HSMC_RX_n[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(1),
	o => \HSMC_RX_n[1]~input_o\);

-- Location: IOIBUF_X64_Y61_N18
\HSMC_RX_n[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(2),
	o => \HSMC_RX_n[2]~input_o\);

-- Location: IOIBUF_X50_Y61_N18
\HSMC_RX_n[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(3),
	o => \HSMC_RX_n[3]~input_o\);

-- Location: IOIBUF_X66_Y61_N18
\HSMC_RX_n[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(4),
	o => \HSMC_RX_n[4]~input_o\);

-- Location: IOIBUF_X57_Y61_N18
\HSMC_RX_n[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(5),
	o => \HSMC_RX_n[5]~input_o\);

-- Location: IOIBUF_X61_Y61_N18
\HSMC_RX_n[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(6),
	o => \HSMC_RX_n[6]~input_o\);

-- Location: IOIBUF_X36_Y61_N18
\HSMC_RX_n[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(7),
	o => \HSMC_RX_n[7]~input_o\);

-- Location: IOIBUF_X51_Y61_N18
\HSMC_RX_n[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(8),
	o => \HSMC_RX_n[8]~input_o\);

-- Location: IOIBUF_X40_Y61_N58
\HSMC_RX_n[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(9),
	o => \HSMC_RX_n[9]~input_o\);

-- Location: IOIBUF_X32_Y61_N58
\HSMC_RX_n[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(10),
	o => \HSMC_RX_n[10]~input_o\);

-- Location: IOIBUF_X48_Y61_N58
\HSMC_RX_n[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(11),
	o => \HSMC_RX_n[11]~input_o\);

-- Location: IOIBUF_X44_Y61_N18
\HSMC_RX_n[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(12),
	o => \HSMC_RX_n[12]~input_o\);

-- Location: IOIBUF_X55_Y61_N58
\HSMC_RX_n[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(13),
	o => \HSMC_RX_n[13]~input_o\);

-- Location: IOIBUF_X59_Y61_N18
\HSMC_RX_n[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(14),
	o => \HSMC_RX_n[14]~input_o\);

-- Location: IOIBUF_X62_Y61_N58
\HSMC_RX_n[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(15),
	o => \HSMC_RX_n[15]~input_o\);

-- Location: IOIBUF_X65_Y61_N18
\HSMC_RX_n[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_n(16),
	o => \HSMC_RX_n[16]~input_o\);

-- Location: IOIBUF_X42_Y61_N1
\HSMC_RX_p[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(0),
	o => \HSMC_RX_p[0]~input_o\);

-- Location: IOIBUF_X34_Y61_N1
\HSMC_RX_p[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(1),
	o => \HSMC_RX_p[1]~input_o\);

-- Location: IOIBUF_X64_Y61_N1
\HSMC_RX_p[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(2),
	o => \HSMC_RX_p[2]~input_o\);

-- Location: IOIBUF_X50_Y61_N1
\HSMC_RX_p[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(3),
	o => \HSMC_RX_p[3]~input_o\);

-- Location: IOIBUF_X66_Y61_N1
\HSMC_RX_p[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(4),
	o => \HSMC_RX_p[4]~input_o\);

-- Location: IOIBUF_X57_Y61_N1
\HSMC_RX_p[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(5),
	o => \HSMC_RX_p[5]~input_o\);

-- Location: IOIBUF_X61_Y61_N1
\HSMC_RX_p[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(6),
	o => \HSMC_RX_p[6]~input_o\);

-- Location: IOIBUF_X36_Y61_N1
\HSMC_RX_p[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(7),
	o => \HSMC_RX_p[7]~input_o\);

-- Location: IOIBUF_X51_Y61_N1
\HSMC_RX_p[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(8),
	o => \HSMC_RX_p[8]~input_o\);

-- Location: IOIBUF_X40_Y61_N41
\HSMC_RX_p[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(9),
	o => \HSMC_RX_p[9]~input_o\);

-- Location: IOIBUF_X32_Y61_N41
\HSMC_RX_p[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(10),
	o => \HSMC_RX_p[10]~input_o\);

-- Location: IOIBUF_X48_Y61_N41
\HSMC_RX_p[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(11),
	o => \HSMC_RX_p[11]~input_o\);

-- Location: IOIBUF_X44_Y61_N1
\HSMC_RX_p[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(12),
	o => \HSMC_RX_p[12]~input_o\);

-- Location: IOIBUF_X55_Y61_N41
\HSMC_RX_p[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(13),
	o => \HSMC_RX_p[13]~input_o\);

-- Location: IOIBUF_X59_Y61_N1
\HSMC_RX_p[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(14),
	o => \HSMC_RX_p[14]~input_o\);

-- Location: IOIBUF_X62_Y61_N41
\HSMC_RX_p[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(15),
	o => \HSMC_RX_p[15]~input_o\);

-- Location: IOIBUF_X65_Y61_N1
\HSMC_RX_p[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_RX_p(16),
	o => \HSMC_RX_p[16]~input_o\);

-- Location: IOIBUF_X40_Y61_N92
\HSMC_TX_n[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(0),
	o => \HSMC_TX_n[0]~input_o\);

-- Location: IOIBUF_X46_Y61_N52
\HSMC_TX_n[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(1),
	o => \HSMC_TX_n[1]~input_o\);

-- Location: IOIBUF_X44_Y61_N52
\HSMC_TX_n[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(2),
	o => \HSMC_TX_n[2]~input_o\);

-- Location: IOIBUF_X36_Y61_N52
\HSMC_TX_n[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(3),
	o => \HSMC_TX_n[3]~input_o\);

-- Location: IOIBUF_X42_Y61_N52
\HSMC_TX_n[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(4),
	o => \HSMC_TX_n[4]~input_o\);

-- Location: IOIBUF_X61_Y61_N52
\HSMC_TX_n[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(5),
	o => \HSMC_TX_n[5]~input_o\);

-- Location: IOIBUF_X50_Y61_N52
\HSMC_TX_n[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(6),
	o => \HSMC_TX_n[6]~input_o\);

-- Location: IOIBUF_X64_Y61_N52
\HSMC_TX_n[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(7),
	o => \HSMC_TX_n[7]~input_o\);

-- Location: IOIBUF_X34_Y61_N52
\HSMC_TX_n[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(8),
	o => \HSMC_TX_n[8]~input_o\);

-- Location: IOIBUF_X48_Y61_N92
\HSMC_TX_n[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(9),
	o => \HSMC_TX_n[9]~input_o\);

-- Location: IOIBUF_X38_Y61_N52
\HSMC_TX_n[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(10),
	o => \HSMC_TX_n[10]~input_o\);

-- Location: IOIBUF_X66_Y61_N52
\HSMC_TX_n[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(11),
	o => \HSMC_TX_n[11]~input_o\);

-- Location: IOIBUF_X51_Y61_N52
\HSMC_TX_n[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(12),
	o => \HSMC_TX_n[12]~input_o\);

-- Location: IOIBUF_X65_Y61_N52
\HSMC_TX_n[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(13),
	o => \HSMC_TX_n[13]~input_o\);

-- Location: IOIBUF_X53_Y61_N52
\HSMC_TX_n[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(14),
	o => \HSMC_TX_n[14]~input_o\);

-- Location: IOIBUF_X59_Y61_N52
\HSMC_TX_n[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(15),
	o => \HSMC_TX_n[15]~input_o\);

-- Location: IOIBUF_X62_Y61_N92
\HSMC_TX_n[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_n(16),
	o => \HSMC_TX_n[16]~input_o\);

-- Location: IOIBUF_X40_Y61_N75
\HSMC_TX_p[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(0),
	o => \HSMC_TX_p[0]~input_o\);

-- Location: IOIBUF_X46_Y61_N35
\HSMC_TX_p[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(1),
	o => \HSMC_TX_p[1]~input_o\);

-- Location: IOIBUF_X44_Y61_N35
\HSMC_TX_p[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(2),
	o => \HSMC_TX_p[2]~input_o\);

-- Location: IOIBUF_X36_Y61_N35
\HSMC_TX_p[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(3),
	o => \HSMC_TX_p[3]~input_o\);

-- Location: IOIBUF_X42_Y61_N35
\HSMC_TX_p[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(4),
	o => \HSMC_TX_p[4]~input_o\);

-- Location: IOIBUF_X61_Y61_N35
\HSMC_TX_p[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(5),
	o => \HSMC_TX_p[5]~input_o\);

-- Location: IOIBUF_X50_Y61_N35
\HSMC_TX_p[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(6),
	o => \HSMC_TX_p[6]~input_o\);

-- Location: IOIBUF_X64_Y61_N35
\HSMC_TX_p[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(7),
	o => \HSMC_TX_p[7]~input_o\);

-- Location: IOIBUF_X34_Y61_N35
\HSMC_TX_p[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(8),
	o => \HSMC_TX_p[8]~input_o\);

-- Location: IOIBUF_X48_Y61_N75
\HSMC_TX_p[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(9),
	o => \HSMC_TX_p[9]~input_o\);

-- Location: IOIBUF_X38_Y61_N35
\HSMC_TX_p[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(10),
	o => \HSMC_TX_p[10]~input_o\);

-- Location: IOIBUF_X66_Y61_N35
\HSMC_TX_p[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(11),
	o => \HSMC_TX_p[11]~input_o\);

-- Location: IOIBUF_X51_Y61_N35
\HSMC_TX_p[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(12),
	o => \HSMC_TX_p[12]~input_o\);

-- Location: IOIBUF_X65_Y61_N35
\HSMC_TX_p[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(13),
	o => \HSMC_TX_p[13]~input_o\);

-- Location: IOIBUF_X53_Y61_N35
\HSMC_TX_p[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(14),
	o => \HSMC_TX_p[14]~input_o\);

-- Location: IOIBUF_X59_Y61_N35
\HSMC_TX_p[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(15),
	o => \HSMC_TX_p[15]~input_o\);

-- Location: IOIBUF_X62_Y61_N75
\HSMC_TX_p[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HSMC_TX_p(16),
	o => \HSMC_TX_p[16]~input_o\);

-- Location: IOIBUF_X38_Y61_N18
\I2C_SDA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => I2C_SDA,
	o => \I2C_SDA~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SD_CMD~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_CMD,
	o => \SD_CMD~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\SD_DAT[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(0),
	o => \SD_DAT[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SD_DAT[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(1),
	o => \SD_DAT[1]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\SD_DAT[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(2),
	o => \SD_DAT[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SD_DAT[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SD_DAT(3),
	o => \SD_DAT[3]~input_o\);

-- Location: IOIBUF_X68_Y40_N78
\SRAM_D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(0),
	o => \SRAM_D[0]~input_o\);

-- Location: IOIBUF_X68_Y40_N95
\SRAM_D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(1),
	o => \SRAM_D[1]~input_o\);

-- Location: IOIBUF_X68_Y41_N4
\SRAM_D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(2),
	o => \SRAM_D[2]~input_o\);

-- Location: IOIBUF_X68_Y41_N21
\SRAM_D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(3),
	o => \SRAM_D[3]~input_o\);

-- Location: IOIBUF_X68_Y41_N38
\SRAM_D[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(4),
	o => \SRAM_D[4]~input_o\);

-- Location: IOIBUF_X68_Y41_N55
\SRAM_D[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(5),
	o => \SRAM_D[5]~input_o\);

-- Location: IOIBUF_X68_Y43_N4
\SRAM_D[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(6),
	o => \SRAM_D[6]~input_o\);

-- Location: IOIBUF_X68_Y43_N21
\SRAM_D[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(7),
	o => \SRAM_D[7]~input_o\);

-- Location: IOIBUF_X68_Y43_N38
\SRAM_D[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(8),
	o => \SRAM_D[8]~input_o\);

-- Location: IOIBUF_X68_Y43_N55
\SRAM_D[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(9),
	o => \SRAM_D[9]~input_o\);

-- Location: IOIBUF_X68_Y45_N4
\SRAM_D[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(10),
	o => \SRAM_D[10]~input_o\);

-- Location: IOIBUF_X68_Y45_N21
\SRAM_D[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(11),
	o => \SRAM_D[11]~input_o\);

-- Location: IOIBUF_X68_Y45_N38
\SRAM_D[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(12),
	o => \SRAM_D[12]~input_o\);

-- Location: IOIBUF_X68_Y45_N55
\SRAM_D[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(13),
	o => \SRAM_D[13]~input_o\);

-- Location: IOIBUF_X68_Y47_N44
\SRAM_D[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(14),
	o => \SRAM_D[14]~input_o\);

-- Location: IOIBUF_X68_Y47_N61
\SRAM_D[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_D(15),
	o => \SRAM_D[15]~input_o\);

-- Location: LABCELL_X64_Y27_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


