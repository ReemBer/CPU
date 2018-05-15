-- megafunction wizard: %LPM_COUNTER%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_counter 

-- ============================================================
-- File Name: STACK_POINTER_COUNTER.vhd
-- Megafunction Name(s):
-- 			lpm_counter
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

ENTITY STACK_POINTER_COUNTER IS
	PORT
	(
		aclr		: IN STD_LOGIC ;
		aset		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		updown		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
	);
END STACK_POINTER_COUNTER;


ARCHITECTURE SYN OF stack_pointer_counter IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (2 DOWNTO 0);



	COMPONENT lpm_counter
	GENERIC (
		lpm_avalue		: STRING;
		lpm_direction		: STRING;
		lpm_port_updown		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			aclr	: IN STD_LOGIC ;
			clock	: IN STD_LOGIC ;
			q	: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
			updown	: IN STD_LOGIC ;
			aset	: IN STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	q    <= sub_wire0(2 DOWNTO 0);

	lpm_counter_component : lpm_counter
	GENERIC MAP (
		lpm_avalue => "4",
		lpm_direction => "UNUSED",
		lpm_port_updown => "PORT_USED",
		lpm_type => "LPM_COUNTER",
		lpm_width => 3
	)
	PORT MAP (
		aclr => aclr,
		clock => clock,
		updown => updown,
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
-- Retrieval info: PRIVATE: CNT_EN NUMERIC "0"
-- Retrieval info: PRIVATE: CarryIn NUMERIC "0"
-- Retrieval info: PRIVATE: CarryOut NUMERIC "0"
-- Retrieval info: PRIVATE: Direction NUMERIC "2"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix II"
-- Retrieval info: PRIVATE: ModulusCounter NUMERIC "0"
-- Retrieval info: PRIVATE: ModulusValue NUMERIC "0"
-- Retrieval info: PRIVATE: SCLR NUMERIC "0"
-- Retrieval info: PRIVATE: SLOAD NUMERIC "0"
-- Retrieval info: PRIVATE: SSET NUMERIC "0"
-- Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "3"
-- Retrieval info: CONSTANT: LPM_AVALUE STRING "4"
-- Retrieval info: CONSTANT: LPM_DIRECTION STRING "UNUSED"
-- Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_USED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "3"
-- Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL aclr
-- Retrieval info: USED_PORT: aset 0 0 0 0 INPUT NODEFVAL aset
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
-- Retrieval info: USED_PORT: q 0 0 3 0 OUTPUT NODEFVAL q[2..0]
-- Retrieval info: USED_PORT: updown 0 0 0 0 INPUT NODEFVAL updown
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 3 0 @q 0 0 3 0
-- Retrieval info: CONNECT: @updown 0 0 0 0 updown 0 0 0 0
-- Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
-- Retrieval info: CONNECT: @aset 0 0 0 0 aset 0 0 0 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL STACK_POINTER_COUNTER.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL STACK_POINTER_COUNTER.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL STACK_POINTER_COUNTER.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL STACK_POINTER_COUNTER.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL STACK_POINTER_COUNTER_inst.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL STACK_POINTER_COUNTER_waveforms.html TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL STACK_POINTER_COUNTER_wave*.jpg FALSE
-- Retrieval info: LIB_FILE: lpm
