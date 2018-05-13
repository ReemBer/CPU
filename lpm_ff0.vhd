-- megafunction wizard: %LPM_FF%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_ff 

-- ============================================================
-- File Name: lpm_ff0.vhd
-- Megafunction Name(s):
-- 			lpm_ff
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 9.1 Build 222 10/21/2009 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2009 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY lpm_ff0 IS
	PORT
	(
		aclr		: IN STD_LOGIC ;
		aset		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC 
	);
END lpm_ff0;


ARCHITECTURE SYN OF lpm_ff0 IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC ;
	SIGNAL sub_wire3	: STD_LOGIC_VECTOR (0 DOWNTO 0);



	COMPONENT lpm_ff
	GENERIC (
		lpm_avalue		: STRING;
		lpm_fftype		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			aclr	: IN STD_LOGIC ;
			clock	: IN STD_LOGIC ;
			q	: OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
			data	: IN STD_LOGIC_VECTOR (0 DOWNTO 0);
			aset	: IN STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	sub_wire1    <= sub_wire0(0);
	q    <= sub_wire1;
	sub_wire2    <= data;
	sub_wire3(0)    <= sub_wire2;

	lpm_ff_component : lpm_ff
	GENERIC MAP (
		lpm_avalue => "1",
		lpm_fftype => "DFF",
		lpm_type => "LPM_FF",
		lpm_width => 1
	)
	PORT MAP (
		aclr => aclr,
		clock => clock,
		data => sub_wire3,
		aset => aset,
		q => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ACLR NUMERIC "1"
-- Retrieval info: PRIVATE: ALOAD NUMERIC "0"
-- Retrieval info: PRIVATE: ASET NUMERIC "1"
-- Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "0"
-- Retrieval info: PRIVATE: CLK_EN NUMERIC "0"
-- Retrieval info: PRIVATE: DFF NUMERIC "1"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
-- Retrieval info: PRIVATE: SCLR NUMERIC "0"
-- Retrieval info: PRIVATE: SLOAD NUMERIC "0"
-- Retrieval info: PRIVATE: SSET NUMERIC "0"
-- Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: UseTFFdataPort NUMERIC "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_AVALUE STRING "1"
-- Retrieval info: CONSTANT: LPM_FFTYPE STRING "DFF"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_FF"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "1"
-- Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL aclr
-- Retrieval info: USED_PORT: aset 0 0 0 0 INPUT NODEFVAL aset
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
-- Retrieval info: USED_PORT: data 0 0 0 0 INPUT NODEFVAL data
-- Retrieval info: USED_PORT: q 0 0 0 0 OUTPUT NODEFVAL q
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 0 0 @q 0 0 1 0
-- Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
-- Retrieval info: CONNECT: @aset 0 0 0 0 aset 0 0 0 0
-- Retrieval info: CONNECT: @data 0 0 1 0 data 0 0 0 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_ff0.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_ff0.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_ff0.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_ff0.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL lpm_ff0_inst.vhd TRUE
-- Retrieval info: LIB_FILE: lpm
