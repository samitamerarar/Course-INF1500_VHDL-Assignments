--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: top.vhd
-- /___/   /\     Timestamp: Fri Mar 25 21:03:46 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w top.ngc top.vhd 
-- Device	: xc5vlx50tff1136-1
-- Input file	: top.ngc
-- Output file	: top.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: C:\Logiciels\Xilinx\14.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity top is
  port (
    hd44780_en : out STD_LOGIC; 
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    hd44780_rs : out STD_LOGIC; 
    hd44780_rw : out STD_LOGIC; 
    sel : in STD_LOGIC := 'X'; 
    hd44780_db : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    entree : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end top;

architecture STRUCTURE of top is
  signal Dangling_Input_Signal : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count1 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count2 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count3 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count4 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count5 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count6 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez1 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez10 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez11 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez12 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez13 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez14 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez15 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez2 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez3 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez4 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez5 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez6 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez7 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez8 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez9 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N10 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N111 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N13 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N19 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N20 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N22 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N24 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N29 : STD_LOGIC; 
  signal U1_my_hd44780_simple_clk_us_108 : STD_LOGIC; 
  signal U1_my_hd44780_simple_count_cmp_eq0000 : STD_LOGIC; 
  signal U1_my_hd44780_simple_cur_line_0_mux0000 : STD_LOGIC; 
  signal U1_my_hd44780_simple_cur_state_cmp_gt0000 : STD_LOGIC; 
  signal U1_my_hd44780_simple_en_started_0_mux0000 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_1_42_168 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_1_7_169 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_3_16_172 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_3_43_173 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_3_7_174 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_5_105_177 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_5_69_178 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_6_107_180 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_6_73_181 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_7_2_183 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_7_39_184 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_rs_185 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_rs_mux0000 : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_0_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_3_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_4_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_5_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_6_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_7_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_8_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_9_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_0_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_1_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_2_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_3_Q_198 : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_4_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_5_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_6_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_9_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_reset_inv : STD_LOGIC; 
  signal U1_my_hd44780_simple_running_0_rstpot_205 : STD_LOGIC; 
  signal U1_my_hd44780_simple_state2timer_go_206 : STD_LOGIC; 
  signal U1_my_hd44780_simple_state2timer_go_mux0000 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer2state_done_208 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer2state_done_rstpot_209 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_212 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_10_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_11_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_12_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_15_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_3_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_4_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_5_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_6_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_7_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_8_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_0_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_10_Q_225 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_11_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_12_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_3_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_4_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_5_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_7_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_8_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_9_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_valuez_0_rstpot_235 : STD_LOGIC; 
  signal U1_my_hd44780_simple_valuez_cmp_le00002104_251 : STD_LOGIC; 
  signal U1_my_hd44780_simple_valuez_cmp_le0000235_252 : STD_LOGIC; 
  signal U1_my_hd44780_simple_valuez_not0001 : STD_LOGIC; 
  signal U2_NET68 : STD_LOGIC; 
  signal U2_NET734 : STD_LOGIC; 
  signal U2_U1_cout_not0001 : STD_LOGIC; 
  signal U2_U4_N0 : STD_LOGIC; 
  signal U2_U4_NET1584 : STD_LOGIC; 
  signal U2_U4_NET1653 : STD_LOGIC; 
  signal U2_U4_NET16531148_272 : STD_LOGIC; 
  signal U2_U4_NET16531234_273 : STD_LOGIC; 
  signal U2_U4_NET16531334_274 : STD_LOGIC; 
  signal U2_U4_NET1653135_275 : STD_LOGIC; 
  signal U2_U4_NET1653175_276 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT1 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT10 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT11 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT12 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT13 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT14 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT15 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT2 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT3 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT4 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT5 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT6 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT7 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT8 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT9 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_0_rt_310 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_10_rt_312 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_11_rt_314 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_12_rt_316 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_13_rt_318 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_14_rt_320 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_1_rt_322 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_2_rt_324 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_3_rt_326 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_4_rt_328 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_5_rt_330 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_6_rt_332 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_7_rt_334 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_8_rt_336 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_9_rt_338 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_xor_15_rt_339 : STD_LOGIC; 
  signal U2_U4_U1_TC_cmp_eq000014_340 : STD_LOGIC; 
  signal U2_U4_U1_TC_cmp_eq000049_341 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT1 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT10 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT11 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT12 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT13 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT14 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT15 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT2 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT3 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT4 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT5 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT6 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT7 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT8 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT9 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_0_rt_375 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_10_rt_377 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_11_rt_379 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_12_rt_381 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_13_rt_383 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_14_rt_385 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_1_rt_387 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_2_rt_389 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_3_rt_391 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_4_rt_393 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_5_rt_395 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_6_rt_397 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_7_rt_399 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_8_rt_401 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_9_rt_403 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_xor_15_rt_404 : STD_LOGIC; 
  signal clk_BUFGP_406 : STD_LOGIC; 
  signal entree_0_IBUF_411 : STD_LOGIC; 
  signal entree_1_IBUF_412 : STD_LOGIC; 
  signal entree_2_IBUF_413 : STD_LOGIC; 
  signal entree_3_IBUF_414 : STD_LOGIC; 
  signal reset_IBUF_427 : STD_LOGIC; 
  signal sel_IBUF_429 : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_my_hd44780_simple_Mcount_valuez_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U1_my_hd44780_simple_Mcount_valuez_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U1_my_hd44780_simple_count : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U1_my_hd44780_simple_cur_ddram_addr : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U1_my_hd44780_simple_cur_ddram_addr_mux0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal U1_my_hd44780_simple_cur_line : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_my_hd44780_simple_cur_state : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U1_my_hd44780_simple_cur_state_mux0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U1_my_hd44780_simple_en_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U1_my_hd44780_simple_en_count_mux0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U1_my_hd44780_simple_en_started : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_my_hd44780_simple_hd44780_db : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_my_hd44780_simple_hd44780_db_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_my_hd44780_simple_running : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_my_hd44780_simple_valuez : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U2_U1_cout : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U2_U1_cout_mux0003 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U2_U3_COUNT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U2_U4_U1_COUNT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U2_U4_U1_Mcount_COUNT_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U2_U4_U2_COUNT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U2_U4_U2_Mcount_COUNT_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => Dangling_Input_Signal
    );
  U2_U3_COUNT_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_NET734,
      CLR => U2_NET68,
      D => Result(0),
      Q => U2_U3_COUNT(0)
    );
  U2_U3_COUNT_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_NET734,
      CLR => U2_NET68,
      D => Result(1),
      Q => U2_U3_COUNT(1)
    );
  U2_U3_COUNT_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_NET734,
      CLR => U2_NET68,
      D => Result(2),
      Q => U2_U3_COUNT(2)
    );
  U2_U3_COUNT_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_NET734,
      CLR => U2_NET68,
      D => Result(3),
      Q => U2_U3_COUNT(3)
    );
  U1_my_hd44780_simple_cur_state_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_cur_state_mux0000(2),
      Q => U1_my_hd44780_simple_cur_state(2)
    );
  U1_my_hd44780_simple_cur_state_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_406,
      D => U1_my_hd44780_simple_cur_state_mux0000(0),
      PRE => reset_IBUF_427,
      Q => U1_my_hd44780_simple_cur_state(0)
    );
  U1_my_hd44780_simple_cur_state_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_cur_state_mux0000(1),
      Q => U1_my_hd44780_simple_cur_state(1)
    );
  U1_my_hd44780_simple_cur_state_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_cur_state_mux0000(3),
      Q => U1_my_hd44780_simple_cur_state(3)
    );
  U1_my_hd44780_simple_cur_state_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_cur_state_mux0000(4),
      Q => U1_my_hd44780_simple_cur_state(4)
    );
  U1_my_hd44780_simple_cur_state_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_cur_state_mux0000(7),
      Q => U1_my_hd44780_simple_cur_state(7)
    );
  U1_my_hd44780_simple_cur_state_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_cur_state_mux0000(5),
      Q => U1_my_hd44780_simple_cur_state(5)
    );
  U1_my_hd44780_simple_cur_state_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_cur_state_mux0000(6),
      Q => U1_my_hd44780_simple_cur_state(6)
    );
  U1_my_hd44780_simple_cur_state_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_cur_state_mux0000(8),
      Q => U1_my_hd44780_simple_cur_state(8)
    );
  U1_my_hd44780_simple_cur_state_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_cur_state_mux0000(9),
      Q => U1_my_hd44780_simple_cur_state(9)
    );
  U1_my_hd44780_simple_valuez_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez15,
      Q => U1_my_hd44780_simple_valuez(15)
    );
  U1_my_hd44780_simple_valuez_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez14,
      Q => U1_my_hd44780_simple_valuez(14)
    );
  U1_my_hd44780_simple_valuez_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez13,
      Q => U1_my_hd44780_simple_valuez(13)
    );
  U1_my_hd44780_simple_valuez_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez12,
      Q => U1_my_hd44780_simple_valuez(12)
    );
  U1_my_hd44780_simple_valuez_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez11,
      Q => U1_my_hd44780_simple_valuez(11)
    );
  U1_my_hd44780_simple_valuez_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez10,
      Q => U1_my_hd44780_simple_valuez(10)
    );
  U1_my_hd44780_simple_valuez_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez9,
      Q => U1_my_hd44780_simple_valuez(9)
    );
  U1_my_hd44780_simple_valuez_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez8,
      Q => U1_my_hd44780_simple_valuez(8)
    );
  U1_my_hd44780_simple_valuez_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez7,
      Q => U1_my_hd44780_simple_valuez(7)
    );
  U1_my_hd44780_simple_valuez_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez6,
      Q => U1_my_hd44780_simple_valuez(6)
    );
  U1_my_hd44780_simple_valuez_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez5,
      Q => U1_my_hd44780_simple_valuez(5)
    );
  U1_my_hd44780_simple_valuez_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez4,
      Q => U1_my_hd44780_simple_valuez(4)
    );
  U1_my_hd44780_simple_valuez_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez3,
      Q => U1_my_hd44780_simple_valuez(3)
    );
  U1_my_hd44780_simple_valuez_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez2,
      Q => U1_my_hd44780_simple_valuez(2)
    );
  U1_my_hd44780_simple_valuez_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_valuez1,
      Q => U1_my_hd44780_simple_valuez(1)
    );
  U1_my_hd44780_simple_count_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_count6,
      Q => U1_my_hd44780_simple_count(6)
    );
  U1_my_hd44780_simple_count_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_count5,
      Q => U1_my_hd44780_simple_count(5)
    );
  U1_my_hd44780_simple_count_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_count4,
      Q => U1_my_hd44780_simple_count(4)
    );
  U1_my_hd44780_simple_count_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_count3,
      Q => U1_my_hd44780_simple_count(3)
    );
  U1_my_hd44780_simple_count_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_count2,
      Q => U1_my_hd44780_simple_count(2)
    );
  U1_my_hd44780_simple_count_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_count1,
      Q => U1_my_hd44780_simple_count(1)
    );
  U1_my_hd44780_simple_count_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_Mcount_count,
      Q => U1_my_hd44780_simple_count(0)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_15_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(14),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(15),
      O => U1_my_hd44780_simple_Mcount_valuez15
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_15_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_valuez(15),
      I2 => U1_my_hd44780_simple_timer_us_value_15_Q,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(15)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_14_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(13),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(14),
      O => U1_my_hd44780_simple_Mcount_valuez14
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_14_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(13),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(14),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(14)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_14_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_valuez(14),
      I2 => N0,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(14)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_13_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(12),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(13),
      O => U1_my_hd44780_simple_Mcount_valuez13
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_13_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(12),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(13),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(13)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_13_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_valuez(13),
      I2 => N0,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(13)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_12_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(11),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(12),
      O => U1_my_hd44780_simple_Mcount_valuez12
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_12_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(11),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(12),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(12)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_12_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_valuez(12),
      I2 => U1_my_hd44780_simple_timer_us_value_12_Q,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(12)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_11_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(10),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(11),
      O => U1_my_hd44780_simple_Mcount_valuez11
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_11_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(10),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(11),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(11)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_11_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_valuez(11),
      I2 => U1_my_hd44780_simple_timer_us_value_11_Q,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(11)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_10_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(9),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(10),
      O => U1_my_hd44780_simple_Mcount_valuez10
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_10_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(9),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(10),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(10)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_10_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_valuez(10),
      I2 => U1_my_hd44780_simple_timer_us_value_10_Q,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(10)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_9_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(8),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(9),
      O => U1_my_hd44780_simple_Mcount_valuez9
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_9_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(8),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(9),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(9)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_9_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_valuez(9),
      I2 => N0,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(9)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_8_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(7),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(8),
      O => U1_my_hd44780_simple_Mcount_valuez8
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_8_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(7),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(8),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(8)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_8_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_valuez(8),
      I2 => U1_my_hd44780_simple_timer_us_value_8_Q,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(8)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_7_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(6),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(7),
      O => U1_my_hd44780_simple_Mcount_valuez7
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_7_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(6),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(7),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(7)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_7_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_valuez(7),
      I2 => U1_my_hd44780_simple_timer_us_value_7_Q,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(7)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_6_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(5),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(6),
      O => U1_my_hd44780_simple_Mcount_valuez6
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_6_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(5),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(6),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(6)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_6_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_valuez(6),
      I2 => U1_my_hd44780_simple_timer_us_value_6_Q,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(6)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_5_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(4),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(5),
      O => U1_my_hd44780_simple_Mcount_valuez5
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_5_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(4),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(5),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(5)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_5_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_valuez(5),
      I2 => U1_my_hd44780_simple_timer_us_value_5_Q,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(5)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_4_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(3),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(4),
      O => U1_my_hd44780_simple_Mcount_valuez4
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_4_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(3),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(4),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(4)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_4_Q : LUT3
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => U1_my_hd44780_simple_timer_us_value_4_Q,
      I1 => U1_my_hd44780_simple_valuez(4),
      I2 => U1_my_hd44780_simple_state2timer_go_206,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(4)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_3_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(2),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(3),
      O => U1_my_hd44780_simple_Mcount_valuez3
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_3_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(2),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(3),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(3)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_3_Q : LUT3
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => U1_my_hd44780_simple_timer_us_value_3_Q,
      I1 => U1_my_hd44780_simple_valuez(3),
      I2 => U1_my_hd44780_simple_state2timer_go_206,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(3)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_2_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(1),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(2),
      O => U1_my_hd44780_simple_Mcount_valuez2
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_2_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(1),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(2),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(2)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_2_Q : LUT3
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => N0,
      I1 => U1_my_hd44780_simple_valuez(2),
      I2 => U1_my_hd44780_simple_state2timer_go_206,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(2)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_1_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(0),
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(1),
      O => U1_my_hd44780_simple_Mcount_valuez1
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_1_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy(0),
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(1),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(1)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_1_Q : LUT3
    generic map(
      INIT => X"53"
    )
    port map (
      I0 => N0,
      I1 => U1_my_hd44780_simple_valuez(1),
      I2 => U1_my_hd44780_simple_state2timer_go_206,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(1)
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_0_Q : XORCY
    port map (
      CI => U1_my_hd44780_simple_state2timer_go_206,
      LI => U1_my_hd44780_simple_Mcount_valuez_lut(0),
      O => U1_my_hd44780_simple_Mcount_valuez
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_0_Q : MUXCY
    port map (
      CI => U1_my_hd44780_simple_state2timer_go_206,
      DI => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_Mcount_valuez_lut(0),
      O => U1_my_hd44780_simple_Mcount_valuez_cy(0)
    );
  U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In,
      Q => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_212
    );
  U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In,
      Q => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210
    );
  U1_my_hd44780_simple_hd44780_db_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_hd44780_db_mux0000(0),
      Q => U1_my_hd44780_simple_hd44780_db(7)
    );
  U1_my_hd44780_simple_hd44780_db_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_hd44780_db_mux0000(1),
      Q => U1_my_hd44780_simple_hd44780_db(6)
    );
  U1_my_hd44780_simple_hd44780_db_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_hd44780_db_mux0000(2),
      Q => U1_my_hd44780_simple_hd44780_db(5)
    );
  U1_my_hd44780_simple_hd44780_db_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_hd44780_db_mux0000(3),
      Q => U1_my_hd44780_simple_hd44780_db(4)
    );
  U1_my_hd44780_simple_hd44780_db_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_hd44780_db_mux0000(4),
      Q => U1_my_hd44780_simple_hd44780_db(3)
    );
  U1_my_hd44780_simple_hd44780_db_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_hd44780_db_mux0000(5),
      Q => U1_my_hd44780_simple_hd44780_db(2)
    );
  U1_my_hd44780_simple_hd44780_db_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_hd44780_db_mux0000(6),
      Q => U1_my_hd44780_simple_hd44780_db(1)
    );
  U1_my_hd44780_simple_hd44780_db_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_hd44780_db_mux0000(7),
      Q => U1_my_hd44780_simple_hd44780_db(0)
    );
  U1_my_hd44780_simple_cur_ddram_addr_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_cur_ddram_addr_mux0000(1),
      Q => U1_my_hd44780_simple_cur_ddram_addr(2)
    );
  U1_my_hd44780_simple_cur_ddram_addr_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_cur_ddram_addr_mux0000(2),
      Q => U1_my_hd44780_simple_cur_ddram_addr(1)
    );
  U1_my_hd44780_simple_cur_ddram_addr_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_cur_ddram_addr_mux0000(3),
      Q => U1_my_hd44780_simple_cur_ddram_addr(0)
    );
  U1_my_hd44780_simple_en_count_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_en_count_mux0000(0),
      Q => U1_my_hd44780_simple_en_count(4)
    );
  U1_my_hd44780_simple_en_count_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_en_count_mux0000(1),
      Q => U1_my_hd44780_simple_en_count(3)
    );
  U1_my_hd44780_simple_en_count_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_en_count_mux0000(2),
      Q => U1_my_hd44780_simple_en_count(2)
    );
  U1_my_hd44780_simple_en_count_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_en_count_mux0000(3),
      Q => U1_my_hd44780_simple_en_count(1)
    );
  U1_my_hd44780_simple_en_count_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_en_count_mux0000(4),
      Q => U1_my_hd44780_simple_en_count(0)
    );
  U1_my_hd44780_simple_clk_us : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_count_cmp_eq0000,
      Q => U1_my_hd44780_simple_clk_us_108
    );
  U1_my_hd44780_simple_en_started_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_en_started_0_mux0000,
      Q => U1_my_hd44780_simple_en_started(0)
    );
  U1_my_hd44780_simple_state2timer_go : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_state2timer_go_mux0000,
      Q => U1_my_hd44780_simple_state2timer_go_206
    );
  U1_my_hd44780_simple_next_state_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_next_state_mux0000_0_Q,
      Q => U1_my_hd44780_simple_next_state_9_Q
    );
  U1_my_hd44780_simple_next_state_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_next_state_mux0000_1_Q,
      Q => U1_my_hd44780_simple_next_state_8_Q
    );
  U1_my_hd44780_simple_next_state_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_next_state_mux0000_2_Q,
      Q => U1_my_hd44780_simple_next_state_7_Q
    );
  U1_my_hd44780_simple_next_state_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_next_state_mux0000_3_Q_198,
      Q => U1_my_hd44780_simple_next_state_6_Q
    );
  U1_my_hd44780_simple_next_state_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_next_state_mux0000_4_Q,
      Q => U1_my_hd44780_simple_next_state_5_Q
    );
  U1_my_hd44780_simple_next_state_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_next_state_mux0000_5_Q,
      Q => U1_my_hd44780_simple_next_state_4_Q
    );
  U1_my_hd44780_simple_next_state_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_next_state_mux0000_6_Q,
      Q => U1_my_hd44780_simple_next_state_3_Q
    );
  U1_my_hd44780_simple_next_state_0 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_next_state_mux0000_9_Q,
      Q => U1_my_hd44780_simple_next_state_0_Q
    );
  U1_my_hd44780_simple_hd44780_rs : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_hd44780_rs_mux0000,
      Q => U1_my_hd44780_simple_hd44780_rs_185
    );
  U1_my_hd44780_simple_timer_us_value_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_us_value_mux0000_0_Q,
      Q => U1_my_hd44780_simple_timer_us_value_15_Q
    );
  U1_my_hd44780_simple_timer_us_value_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_us_value_mux0000_3_Q,
      Q => U1_my_hd44780_simple_timer_us_value_12_Q
    );
  U1_my_hd44780_simple_timer_us_value_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_us_value_mux0000_4_Q,
      Q => U1_my_hd44780_simple_timer_us_value_11_Q
    );
  U1_my_hd44780_simple_timer_us_value_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_us_value_mux0000_5_Q,
      Q => U1_my_hd44780_simple_timer_us_value_10_Q
    );
  U1_my_hd44780_simple_timer_us_value_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_us_value_mux0000_7_Q,
      Q => U1_my_hd44780_simple_timer_us_value_8_Q
    );
  U1_my_hd44780_simple_timer_us_value_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_us_value_mux0000_8_Q,
      Q => U1_my_hd44780_simple_timer_us_value_7_Q
    );
  U1_my_hd44780_simple_timer_us_value_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_us_value_mux0000_9_Q,
      Q => U1_my_hd44780_simple_timer_us_value_6_Q
    );
  U1_my_hd44780_simple_timer_us_value_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_us_value_mux0000_10_Q_225,
      Q => U1_my_hd44780_simple_timer_us_value_5_Q
    );
  U1_my_hd44780_simple_timer_us_value_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_us_value_mux0000_11_Q,
      Q => U1_my_hd44780_simple_timer_us_value_4_Q
    );
  U1_my_hd44780_simple_timer_us_value_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_timer_us_value_mux0000_12_Q,
      Q => U1_my_hd44780_simple_timer_us_value_3_Q
    );
  U1_my_hd44780_simple_cur_line_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => U1_my_hd44780_simple_reset_inv,
      D => U1_my_hd44780_simple_cur_line_0_mux0000,
      Q => U1_my_hd44780_simple_cur_line(0)
    );
  U2_U1_cout_3 : LD
    port map (
      D => U2_U1_cout_mux0003(3),
      G => U2_U1_cout_not0001,
      Q => U2_U1_cout(3)
    );
  U2_U1_cout_2 : LD
    port map (
      D => U2_U1_cout_mux0003(2),
      G => U2_U1_cout_not0001,
      Q => U2_U1_cout(2)
    );
  U2_U1_cout_1 : LD
    port map (
      D => U2_U1_cout_mux0003(1),
      G => U2_U1_cout_not0001,
      Q => U2_U1_cout(1)
    );
  U2_U1_cout_0 : LD
    port map (
      D => U2_U1_cout_mux0003(0),
      G => U2_U1_cout_not0001,
      Q => U2_U1_cout(0)
    );
  U2_U4_U1_COUNT_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT15,
      Q => U2_U4_U1_COUNT(15)
    );
  U2_U4_U1_COUNT_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT14,
      Q => U2_U4_U1_COUNT(14)
    );
  U2_U4_U1_COUNT_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT13,
      Q => U2_U4_U1_COUNT(13)
    );
  U2_U4_U1_COUNT_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT12,
      Q => U2_U4_U1_COUNT(12)
    );
  U2_U4_U1_COUNT_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT11,
      Q => U2_U4_U1_COUNT(11)
    );
  U2_U4_U1_COUNT_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT10,
      Q => U2_U4_U1_COUNT(10)
    );
  U2_U4_U1_COUNT_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT9,
      Q => U2_U4_U1_COUNT(9)
    );
  U2_U4_U1_COUNT_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT8,
      Q => U2_U4_U1_COUNT(8)
    );
  U2_U4_U1_COUNT_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT7,
      Q => U2_U4_U1_COUNT(7)
    );
  U2_U4_U1_COUNT_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT6,
      Q => U2_U4_U1_COUNT(6)
    );
  U2_U4_U1_COUNT_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT5,
      Q => U2_U4_U1_COUNT(5)
    );
  U2_U4_U1_COUNT_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT4,
      Q => U2_U4_U1_COUNT(4)
    );
  U2_U4_U1_COUNT_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT3,
      Q => U2_U4_U1_COUNT(3)
    );
  U2_U4_U1_COUNT_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT2,
      Q => U2_U4_U1_COUNT(2)
    );
  U2_U4_U1_COUNT_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT1,
      Q => U2_U4_U1_COUNT(1)
    );
  U2_U4_U1_COUNT_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U1_Mcount_COUNT,
      Q => U2_U4_U1_COUNT(0)
    );
  U2_U4_U2_COUNT_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT15,
      Q => U2_U4_U2_COUNT(15)
    );
  U2_U4_U2_COUNT_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT14,
      Q => U2_U4_U2_COUNT(14)
    );
  U2_U4_U2_COUNT_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT13,
      Q => U2_U4_U2_COUNT(13)
    );
  U2_U4_U2_COUNT_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT12,
      Q => U2_U4_U2_COUNT(12)
    );
  U2_U4_U2_COUNT_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT11,
      Q => U2_U4_U2_COUNT(11)
    );
  U2_U4_U2_COUNT_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT10,
      Q => U2_U4_U2_COUNT(10)
    );
  U2_U4_U2_COUNT_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT9,
      Q => U2_U4_U2_COUNT(9)
    );
  U2_U4_U2_COUNT_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT8,
      Q => U2_U4_U2_COUNT(8)
    );
  U2_U4_U2_COUNT_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT7,
      Q => U2_U4_U2_COUNT(7)
    );
  U2_U4_U2_COUNT_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT6,
      Q => U2_U4_U2_COUNT(6)
    );
  U2_U4_U2_COUNT_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT5,
      Q => U2_U4_U2_COUNT(5)
    );
  U2_U4_U2_COUNT_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT4,
      Q => U2_U4_U2_COUNT(4)
    );
  U2_U4_U2_COUNT_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT3,
      Q => U2_U4_U2_COUNT(3)
    );
  U2_U4_U2_COUNT_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT2,
      Q => U2_U4_U2_COUNT(2)
    );
  U2_U4_U2_COUNT_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT1,
      Q => U2_U4_U2_COUNT(1)
    );
  U2_U4_U2_COUNT_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_U4_NET1584,
      CE => Dangling_Input_Signal,
      CLR => U2_U4_NET1653,
      D => U2_U4_U2_Mcount_COUNT,
      Q => U2_U4_U2_COUNT(0)
    );
  U2_U4_U1_Mcount_COUNT_xor_15_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(14),
      LI => U2_U4_U1_Mcount_COUNT_xor_15_rt_339,
      O => U2_U4_U1_Mcount_COUNT15
    );
  U2_U4_U1_Mcount_COUNT_xor_14_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(13),
      LI => U2_U4_U1_Mcount_COUNT_cy_14_rt_320,
      O => U2_U4_U1_Mcount_COUNT14
    );
  U2_U4_U1_Mcount_COUNT_cy_14_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(13),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_14_rt_320,
      O => U2_U4_U1_Mcount_COUNT_cy(14)
    );
  U2_U4_U1_Mcount_COUNT_xor_13_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(12),
      LI => U2_U4_U1_Mcount_COUNT_cy_13_rt_318,
      O => U2_U4_U1_Mcount_COUNT13
    );
  U2_U4_U1_Mcount_COUNT_cy_13_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(12),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_13_rt_318,
      O => U2_U4_U1_Mcount_COUNT_cy(13)
    );
  U2_U4_U1_Mcount_COUNT_xor_12_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(11),
      LI => U2_U4_U1_Mcount_COUNT_cy_12_rt_316,
      O => U2_U4_U1_Mcount_COUNT12
    );
  U2_U4_U1_Mcount_COUNT_cy_12_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(11),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_12_rt_316,
      O => U2_U4_U1_Mcount_COUNT_cy(12)
    );
  U2_U4_U1_Mcount_COUNT_xor_11_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(10),
      LI => U2_U4_U1_Mcount_COUNT_cy_11_rt_314,
      O => U2_U4_U1_Mcount_COUNT11
    );
  U2_U4_U1_Mcount_COUNT_cy_11_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(10),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_11_rt_314,
      O => U2_U4_U1_Mcount_COUNT_cy(11)
    );
  U2_U4_U1_Mcount_COUNT_xor_10_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(9),
      LI => U2_U4_U1_Mcount_COUNT_cy_10_rt_312,
      O => U2_U4_U1_Mcount_COUNT10
    );
  U2_U4_U1_Mcount_COUNT_cy_10_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(9),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_10_rt_312,
      O => U2_U4_U1_Mcount_COUNT_cy(10)
    );
  U2_U4_U1_Mcount_COUNT_xor_9_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(8),
      LI => U2_U4_U1_Mcount_COUNT_cy_9_rt_338,
      O => U2_U4_U1_Mcount_COUNT9
    );
  U2_U4_U1_Mcount_COUNT_cy_9_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(8),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_9_rt_338,
      O => U2_U4_U1_Mcount_COUNT_cy(9)
    );
  U2_U4_U1_Mcount_COUNT_xor_8_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(7),
      LI => U2_U4_U1_Mcount_COUNT_cy_8_rt_336,
      O => U2_U4_U1_Mcount_COUNT8
    );
  U2_U4_U1_Mcount_COUNT_cy_8_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(7),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_8_rt_336,
      O => U2_U4_U1_Mcount_COUNT_cy(8)
    );
  U2_U4_U1_Mcount_COUNT_xor_7_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(6),
      LI => U2_U4_U1_Mcount_COUNT_cy_7_rt_334,
      O => U2_U4_U1_Mcount_COUNT7
    );
  U2_U4_U1_Mcount_COUNT_cy_7_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(6),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_7_rt_334,
      O => U2_U4_U1_Mcount_COUNT_cy(7)
    );
  U2_U4_U1_Mcount_COUNT_xor_6_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(5),
      LI => U2_U4_U1_Mcount_COUNT_cy_6_rt_332,
      O => U2_U4_U1_Mcount_COUNT6
    );
  U2_U4_U1_Mcount_COUNT_cy_6_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(5),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_6_rt_332,
      O => U2_U4_U1_Mcount_COUNT_cy(6)
    );
  U2_U4_U1_Mcount_COUNT_xor_5_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(4),
      LI => U2_U4_U1_Mcount_COUNT_cy_5_rt_330,
      O => U2_U4_U1_Mcount_COUNT5
    );
  U2_U4_U1_Mcount_COUNT_cy_5_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(4),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_5_rt_330,
      O => U2_U4_U1_Mcount_COUNT_cy(5)
    );
  U2_U4_U1_Mcount_COUNT_xor_4_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(3),
      LI => U2_U4_U1_Mcount_COUNT_cy_4_rt_328,
      O => U2_U4_U1_Mcount_COUNT4
    );
  U2_U4_U1_Mcount_COUNT_cy_4_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(3),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_4_rt_328,
      O => U2_U4_U1_Mcount_COUNT_cy(4)
    );
  U2_U4_U1_Mcount_COUNT_xor_3_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(2),
      LI => U2_U4_U1_Mcount_COUNT_cy_3_rt_326,
      O => U2_U4_U1_Mcount_COUNT3
    );
  U2_U4_U1_Mcount_COUNT_cy_3_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(2),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_3_rt_326,
      O => U2_U4_U1_Mcount_COUNT_cy(3)
    );
  U2_U4_U1_Mcount_COUNT_xor_2_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(1),
      LI => U2_U4_U1_Mcount_COUNT_cy_2_rt_324,
      O => U2_U4_U1_Mcount_COUNT2
    );
  U2_U4_U1_Mcount_COUNT_cy_2_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(1),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_2_rt_324,
      O => U2_U4_U1_Mcount_COUNT_cy(2)
    );
  U2_U4_U1_Mcount_COUNT_xor_1_Q : XORCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(0),
      LI => U2_U4_U1_Mcount_COUNT_cy_1_rt_322,
      O => U2_U4_U1_Mcount_COUNT1
    );
  U2_U4_U1_Mcount_COUNT_cy_1_Q : MUXCY
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy(0),
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_1_rt_322,
      O => U2_U4_U1_Mcount_COUNT_cy(1)
    );
  U2_U4_U1_Mcount_COUNT_xor_0_Q : XORCY
    port map (
      CI => Dangling_Input_Signal,
      LI => U2_U4_U1_Mcount_COUNT_cy_0_rt_310,
      O => U2_U4_U1_Mcount_COUNT
    );
  U2_U4_U1_Mcount_COUNT_cy_0_Q : MUXCY
    port map (
      CI => Dangling_Input_Signal,
      DI => N0,
      S => U2_U4_U1_Mcount_COUNT_cy_0_rt_310,
      O => U2_U4_U1_Mcount_COUNT_cy(0)
    );
  U2_U4_U2_Mcount_COUNT_xor_15_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(14),
      LI => U2_U4_U2_Mcount_COUNT_xor_15_rt_404,
      O => U2_U4_U2_Mcount_COUNT15
    );
  U2_U4_U2_Mcount_COUNT_xor_14_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(13),
      LI => U2_U4_U2_Mcount_COUNT_cy_14_rt_385,
      O => U2_U4_U2_Mcount_COUNT14
    );
  U2_U4_U2_Mcount_COUNT_cy_14_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(13),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_14_rt_385,
      O => U2_U4_U2_Mcount_COUNT_cy(14)
    );
  U2_U4_U2_Mcount_COUNT_xor_13_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(12),
      LI => U2_U4_U2_Mcount_COUNT_cy_13_rt_383,
      O => U2_U4_U2_Mcount_COUNT13
    );
  U2_U4_U2_Mcount_COUNT_cy_13_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(12),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_13_rt_383,
      O => U2_U4_U2_Mcount_COUNT_cy(13)
    );
  U2_U4_U2_Mcount_COUNT_xor_12_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(11),
      LI => U2_U4_U2_Mcount_COUNT_cy_12_rt_381,
      O => U2_U4_U2_Mcount_COUNT12
    );
  U2_U4_U2_Mcount_COUNT_cy_12_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(11),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_12_rt_381,
      O => U2_U4_U2_Mcount_COUNT_cy(12)
    );
  U2_U4_U2_Mcount_COUNT_xor_11_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(10),
      LI => U2_U4_U2_Mcount_COUNT_cy_11_rt_379,
      O => U2_U4_U2_Mcount_COUNT11
    );
  U2_U4_U2_Mcount_COUNT_cy_11_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(10),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_11_rt_379,
      O => U2_U4_U2_Mcount_COUNT_cy(11)
    );
  U2_U4_U2_Mcount_COUNT_xor_10_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(9),
      LI => U2_U4_U2_Mcount_COUNT_cy_10_rt_377,
      O => U2_U4_U2_Mcount_COUNT10
    );
  U2_U4_U2_Mcount_COUNT_cy_10_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(9),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_10_rt_377,
      O => U2_U4_U2_Mcount_COUNT_cy(10)
    );
  U2_U4_U2_Mcount_COUNT_xor_9_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(8),
      LI => U2_U4_U2_Mcount_COUNT_cy_9_rt_403,
      O => U2_U4_U2_Mcount_COUNT9
    );
  U2_U4_U2_Mcount_COUNT_cy_9_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(8),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_9_rt_403,
      O => U2_U4_U2_Mcount_COUNT_cy(9)
    );
  U2_U4_U2_Mcount_COUNT_xor_8_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(7),
      LI => U2_U4_U2_Mcount_COUNT_cy_8_rt_401,
      O => U2_U4_U2_Mcount_COUNT8
    );
  U2_U4_U2_Mcount_COUNT_cy_8_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(7),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_8_rt_401,
      O => U2_U4_U2_Mcount_COUNT_cy(8)
    );
  U2_U4_U2_Mcount_COUNT_xor_7_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(6),
      LI => U2_U4_U2_Mcount_COUNT_cy_7_rt_399,
      O => U2_U4_U2_Mcount_COUNT7
    );
  U2_U4_U2_Mcount_COUNT_cy_7_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(6),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_7_rt_399,
      O => U2_U4_U2_Mcount_COUNT_cy(7)
    );
  U2_U4_U2_Mcount_COUNT_xor_6_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(5),
      LI => U2_U4_U2_Mcount_COUNT_cy_6_rt_397,
      O => U2_U4_U2_Mcount_COUNT6
    );
  U2_U4_U2_Mcount_COUNT_cy_6_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(5),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_6_rt_397,
      O => U2_U4_U2_Mcount_COUNT_cy(6)
    );
  U2_U4_U2_Mcount_COUNT_xor_5_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(4),
      LI => U2_U4_U2_Mcount_COUNT_cy_5_rt_395,
      O => U2_U4_U2_Mcount_COUNT5
    );
  U2_U4_U2_Mcount_COUNT_cy_5_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(4),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_5_rt_395,
      O => U2_U4_U2_Mcount_COUNT_cy(5)
    );
  U2_U4_U2_Mcount_COUNT_xor_4_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(3),
      LI => U2_U4_U2_Mcount_COUNT_cy_4_rt_393,
      O => U2_U4_U2_Mcount_COUNT4
    );
  U2_U4_U2_Mcount_COUNT_cy_4_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(3),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_4_rt_393,
      O => U2_U4_U2_Mcount_COUNT_cy(4)
    );
  U2_U4_U2_Mcount_COUNT_xor_3_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(2),
      LI => U2_U4_U2_Mcount_COUNT_cy_3_rt_391,
      O => U2_U4_U2_Mcount_COUNT3
    );
  U2_U4_U2_Mcount_COUNT_cy_3_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(2),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_3_rt_391,
      O => U2_U4_U2_Mcount_COUNT_cy(3)
    );
  U2_U4_U2_Mcount_COUNT_xor_2_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(1),
      LI => U2_U4_U2_Mcount_COUNT_cy_2_rt_389,
      O => U2_U4_U2_Mcount_COUNT2
    );
  U2_U4_U2_Mcount_COUNT_cy_2_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(1),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_2_rt_389,
      O => U2_U4_U2_Mcount_COUNT_cy(2)
    );
  U2_U4_U2_Mcount_COUNT_xor_1_Q : XORCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(0),
      LI => U2_U4_U2_Mcount_COUNT_cy_1_rt_387,
      O => U2_U4_U2_Mcount_COUNT1
    );
  U2_U4_U2_Mcount_COUNT_cy_1_Q : MUXCY
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy(0),
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_1_rt_387,
      O => U2_U4_U2_Mcount_COUNT_cy(1)
    );
  U2_U4_U2_Mcount_COUNT_xor_0_Q : XORCY
    port map (
      CI => Dangling_Input_Signal,
      LI => U2_U4_U2_Mcount_COUNT_cy_0_rt_375,
      O => U2_U4_U2_Mcount_COUNT
    );
  U2_U4_U2_Mcount_COUNT_cy_0_Q : MUXCY
    port map (
      CI => Dangling_Input_Signal,
      DI => N0,
      S => U2_U4_U2_Mcount_COUNT_cy_0_rt_375,
      O => U2_U4_U2_Mcount_COUNT_cy(0)
    );
  U2_U4_s1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U2_U4_U1_COUNT(0),
      I1 => U2_U4_N0,
      O => U2_NET734
    );
  U2_U4_NET16532 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U2_U4_U1_COUNT(0),
      I1 => U2_U4_N0,
      O => U2_U4_NET1653
    );
  U2_NET681_SW0 : LUT4
    generic map(
      INIT => X"CF4D"
    )
    port map (
      I0 => U2_U3_COUNT(0),
      I1 => entree_1_IBUF_412,
      I2 => U2_U3_COUNT(1),
      I3 => entree_0_IBUF_411,
      O => N01
    );
  U2_NET681 : LUT5
    generic map(
      INIT => X"2ABF02AB"
    )
    port map (
      I0 => U2_U3_COUNT(3),
      I1 => N01,
      I2 => entree_2_IBUF_413,
      I3 => entree_3_IBUF_414,
      I4 => U2_U3_COUNT(2),
      O => U2_NET68
    );
  U2_U4_U1_TC_cmp_eq000014 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U2_U4_U1_COUNT(7),
      I1 => U2_U4_U1_COUNT(9),
      I2 => U2_U4_U1_COUNT(14),
      I3 => U2_U4_U1_COUNT(15),
      I4 => U2_U4_U1_COUNT(13),
      I5 => U2_U4_U1_COUNT(8),
      O => U2_U4_U1_TC_cmp_eq000014_340
    );
  U2_U4_U1_TC_cmp_eq000049 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U2_U4_U1_COUNT(2),
      I1 => U2_U4_U1_COUNT(3),
      I2 => U2_U4_U1_COUNT(4),
      I3 => U2_U4_U1_COUNT(5),
      I4 => U2_U4_U1_COUNT(6),
      I5 => U2_U4_U1_TC_cmp_eq000014_340,
      O => U2_U4_U1_TC_cmp_eq000049_341
    );
  U2_U4_U1_TC_cmp_eq0000103 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U2_U4_U1_COUNT(0),
      I1 => U2_U4_U1_COUNT(10),
      I2 => U2_U4_U1_COUNT(11),
      I3 => U2_U4_U1_COUNT(12),
      I4 => U2_U4_U1_COUNT(1),
      I5 => U2_U4_U1_TC_cmp_eq000049_341,
      O => U2_U4_NET1584
    );
  U2_U4_NET1653135 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => U2_U4_U1_COUNT(8),
      I1 => U2_U4_U2_COUNT(8),
      I2 => U2_U4_U1_COUNT(14),
      I3 => U2_U4_U1_COUNT(15),
      I4 => U2_U4_U1_COUNT(13),
      I5 => U2_U4_U2_COUNT(9),
      O => U2_U4_NET1653135_275
    );
  U2_U4_NET1653175 : LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => U2_U4_NET1653135_275,
      I1 => U2_U4_U2_COUNT(4),
      I2 => U2_U4_U2_COUNT(5),
      I3 => U2_U4_U2_COUNT(6),
      I4 => U2_U4_U2_COUNT(7),
      I5 => U2_U4_U2_COUNT(3),
      O => U2_U4_NET1653175_276
    );
  U2_U4_NET16531148 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => U2_U4_U2_COUNT(13),
      I1 => U2_U4_U2_COUNT(14),
      I2 => U2_U4_U2_COUNT(15),
      I3 => U2_U4_NET1653175_276,
      I4 => U2_U4_U2_COUNT(2),
      I5 => U2_U4_U2_COUNT(1),
      O => U2_U4_NET16531148_272
    );
  U2_U4_NET16531234 : LUT6
    generic map(
      INIT => X"0000000800000000"
    )
    port map (
      I0 => U2_U4_U2_COUNT(10),
      I1 => U2_U4_U2_COUNT(0),
      I2 => U2_U4_U1_COUNT(9),
      I3 => U2_U4_U2_COUNT(11),
      I4 => U2_U4_U2_COUNT(12),
      I5 => U2_U4_NET16531148_272,
      O => U2_U4_NET16531234_273
    );
  U2_U4_NET16531334 : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => U2_U4_NET16531234_273,
      I1 => U2_U4_U1_COUNT(3),
      I2 => U2_U4_U1_COUNT(4),
      I3 => U2_U4_U1_COUNT(5),
      I4 => U2_U4_U1_COUNT(6),
      I5 => U2_U4_U1_COUNT(7),
      O => U2_U4_NET16531334_274
    );
  U2_U4_NET16531435 : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => U2_U4_NET16531334_274,
      I1 => U2_U4_U1_COUNT(10),
      I2 => U2_U4_U1_COUNT(11),
      I3 => U2_U4_U1_COUNT(12),
      I4 => U2_U4_U1_COUNT(1),
      I5 => U2_U4_U1_COUNT(2),
      O => U2_U4_N0
    );
  U2_U1_cout_mux0003_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sel_IBUF_429,
      I1 => U2_U3_COUNT(0),
      O => U2_U1_cout_mux0003(0)
    );
  U2_U3_Mcount_COUNT_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_U3_COUNT(1),
      I1 => U2_U3_COUNT(0),
      O => Result(1)
    );
  U1_my_hd44780_simple_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U1_my_hd44780_simple_count(0),
      I1 => U1_my_hd44780_simple_count(1),
      O => U1_my_hd44780_simple_Mcount_count1
    );
  U1_my_hd44780_simple_cur_ddram_addr_mux0000_3_1 : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(9),
      I1 => U1_my_hd44780_simple_cur_ddram_addr(0),
      I2 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_cur_ddram_addr_mux0000(3)
    );
  U2_U3_Mcount_COUNT_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U2_U3_COUNT(0),
      I1 => U2_U3_COUNT(2),
      I2 => U2_U3_COUNT(1),
      O => Result(2)
    );
  U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"0246"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(1),
      I1 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_212,
      I2 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I3 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In
    );
  U2_U3_Mcount_COUNT_xor_3_11 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => U2_U3_COUNT(0),
      I1 => U2_U3_COUNT(3),
      I2 => U2_U3_COUNT(1),
      I3 => U2_U3_COUNT(2),
      O => Result(3)
    );
  U1_my_hd44780_simple_cur_ddram_addr_mux0000_2_1 : LUT4
    generic map(
      INIT => X"286C"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(9),
      I1 => U1_my_hd44780_simple_cur_ddram_addr(1),
      I2 => U1_my_hd44780_simple_cur_ddram_addr(0),
      I3 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_cur_ddram_addr_mux0000(2)
    );
  U1_my_hd44780_simple_Mcount_count_xor_3_12 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => U1_my_hd44780_simple_count(0),
      I1 => U1_my_hd44780_simple_count(3),
      I2 => U1_my_hd44780_simple_count(1),
      I3 => U1_my_hd44780_simple_count(2),
      O => U1_my_hd44780_simple_Mcount_count3
    );
  U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In1 : LUT5
    generic map(
      INIT => X"88A8D8F8"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(1),
      I1 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_212,
      I2 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I3 => U1_my_hd44780_simple_timer2state_done_208,
      I4 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In
    );
  U1_my_hd44780_simple_state2timer_go_mux00001 : LUT5
    generic map(
      INIT => X"080A4C4E"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(1),
      I1 => U1_my_hd44780_simple_state2timer_go_206,
      I2 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_212,
      I3 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I4 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_state2timer_go_mux0000
    );
  U1_my_hd44780_simple_cur_ddram_addr_mux0000_1_1 : LUT5
    generic map(
      INIT => X"28886CCC"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(9),
      I1 => U1_my_hd44780_simple_cur_ddram_addr(2),
      I2 => U1_my_hd44780_simple_cur_ddram_addr(1),
      I3 => U1_my_hd44780_simple_cur_ddram_addr(0),
      I4 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_cur_ddram_addr_mux0000(1)
    );
  U1_my_hd44780_simple_cur_line_0_mux00001 : LUT6
    generic map(
      INIT => X"488888886AAAAAAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_line(0),
      I1 => U1_my_hd44780_simple_cur_state(9),
      I2 => U1_my_hd44780_simple_cur_ddram_addr(2),
      I3 => U1_my_hd44780_simple_cur_ddram_addr(0),
      I4 => U1_my_hd44780_simple_cur_ddram_addr(1),
      I5 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_cur_line_0_mux0000
    );
  U2_U1_cout_not00011 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => sel_IBUF_429,
      I1 => U2_U3_COUNT(0),
      O => U2_U1_cout_not0001
    );
  U1_my_hd44780_simple_Mcount_count_xor_3_111 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U1_my_hd44780_simple_count(0),
      I1 => U1_my_hd44780_simple_count(1),
      O => U1_my_hd44780_simple_N19
    );
  U1_my_hd44780_simple_en_count_mux0000_1_11 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_started(0),
      I1 => U1_my_hd44780_simple_cur_state(2),
      I2 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_N10
    );
  U1_my_hd44780_simple_en_count_mux0000_0_111 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_count(0),
      I1 => U1_my_hd44780_simple_cur_state(2),
      I2 => U1_my_hd44780_simple_en_count(1),
      O => U1_my_hd44780_simple_N20
    );
  U1_my_hd44780_simple_en_started_0_mux00001 : LUT4
    generic map(
      INIT => X"CE46"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_started(0),
      I1 => U1_my_hd44780_simple_cur_state(2),
      I2 => U1_my_hd44780_simple_cur_state(0),
      I3 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_en_started_0_mux0000
    );
  U1_my_hd44780_simple_en_count_mux0000_0_1 : LUT5
    generic map(
      INIT => X"FFFFAAA8"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_count(4),
      I1 => U1_my_hd44780_simple_en_count(2),
      I2 => U1_my_hd44780_simple_en_count(3),
      I3 => U1_my_hd44780_simple_N20,
      I4 => U1_my_hd44780_simple_N10,
      O => U1_my_hd44780_simple_en_count_mux0000(0)
    );
  U1_my_hd44780_simple_en_count_mux0000_4_1 : LUT5
    generic map(
      INIT => X"208064C4"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(2),
      I1 => U1_my_hd44780_simple_en_count(0),
      I2 => U1_my_hd44780_simple_en_started(0),
      I3 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      I4 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_en_count_mux0000(4)
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_12_1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(8),
      I1 => U1_my_hd44780_simple_cur_state(9),
      I2 => U1_my_hd44780_simple_cur_state(7),
      I3 => U1_my_hd44780_simple_timer_us_value_3_Q,
      I4 => U1_my_hd44780_simple_N29,
      I5 => U1_my_hd44780_simple_N111,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_12_Q
    );
  U1_my_hd44780_simple_next_state_mux0000_1_1 : LUT6
    generic map(
      INIT => X"FFCCFFCCFFCEFFCC"
    )
    port map (
      I0 => U1_my_hd44780_simple_next_state_8_Q,
      I1 => U1_my_hd44780_simple_cur_state(7),
      I2 => U1_my_hd44780_simple_cur_state(8),
      I3 => U1_my_hd44780_simple_cur_state(9),
      I4 => U1_my_hd44780_simple_N29,
      I5 => U1_my_hd44780_simple_N111,
      O => U1_my_hd44780_simple_next_state_mux0000_1_Q
    );
  U1_my_hd44780_simple_next_state_mux0000_0_1 : LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(8),
      I1 => U1_my_hd44780_simple_cur_state(9),
      I2 => U1_my_hd44780_simple_next_state_9_Q,
      I3 => U1_my_hd44780_simple_cur_state(7),
      I4 => U1_my_hd44780_simple_N111,
      I5 => U1_my_hd44780_simple_N29,
      O => U1_my_hd44780_simple_next_state_mux0000_0_Q
    );
  U1_my_hd44780_simple_hd44780_rs_mux00001 : LUT6
    generic map(
      INIT => X"AAAAAABAAAAAAAAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(9),
      I1 => U1_my_hd44780_simple_cur_state(8),
      I2 => U1_my_hd44780_simple_hd44780_rs_185,
      I3 => U1_my_hd44780_simple_cur_state(7),
      I4 => U1_my_hd44780_simple_N111,
      I5 => U1_my_hd44780_simple_N29,
      O => U1_my_hd44780_simple_hd44780_rs_mux0000
    );
  U1_my_hd44780_simple_count_cmp_eq00001 : LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => U1_my_hd44780_simple_count(2),
      I1 => U1_my_hd44780_simple_count(3),
      I2 => U1_my_hd44780_simple_count(4),
      I3 => U1_my_hd44780_simple_count(5),
      I4 => U1_my_hd44780_simple_count(6),
      I5 => U1_my_hd44780_simple_N19,
      O => U1_my_hd44780_simple_count_cmp_eq0000
    );
  U1_my_hd44780_simple_Mcount_count_xor_2_11 : LUT6
    generic map(
      INIT => X"9999999999998999"
    )
    port map (
      I0 => U1_my_hd44780_simple_count(2),
      I1 => U1_my_hd44780_simple_N19,
      I2 => U1_my_hd44780_simple_count(5),
      I3 => U1_my_hd44780_simple_count(6),
      I4 => U1_my_hd44780_simple_count(3),
      I5 => U1_my_hd44780_simple_count(4),
      O => U1_my_hd44780_simple_Mcount_count2
    );
  U1_my_hd44780_simple_Mcount_count_xor_5_11 : LUT6
    generic map(
      INIT => X"9AAAAAA89AAAAAAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_count(5),
      I1 => U1_my_hd44780_simple_N19,
      I2 => U1_my_hd44780_simple_count(3),
      I3 => U1_my_hd44780_simple_count(4),
      I4 => U1_my_hd44780_simple_count(2),
      I5 => U1_my_hd44780_simple_count(6),
      O => U1_my_hd44780_simple_Mcount_count5
    );
  U1_my_hd44780_simple_Mcount_count_xor_6_11 : LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAA8A"
    )
    port map (
      I0 => U1_my_hd44780_simple_count(6),
      I1 => U1_my_hd44780_simple_N19,
      I2 => U1_my_hd44780_simple_count(5),
      I3 => U1_my_hd44780_simple_count(2),
      I4 => U1_my_hd44780_simple_count(4),
      I5 => U1_my_hd44780_simple_count(3),
      O => U1_my_hd44780_simple_Mcount_count6
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_10_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(8),
      I1 => U1_my_hd44780_simple_cur_state(7),
      O => N2
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_10_Q : LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFEFE"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(9),
      I1 => N2,
      I2 => U1_my_hd44780_simple_N111,
      I3 => U1_my_hd44780_simple_cur_state(0),
      I4 => U1_my_hd44780_simple_timer_us_value_5_Q,
      I5 => U1_my_hd44780_simple_cur_state(6),
      O => U1_my_hd44780_simple_timer_us_value_mux0000_10_Q_225
    );
  U1_my_hd44780_simple_cur_state_mux0000_1_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      O => N4
    );
  U1_my_hd44780_simple_cur_state_mux0000_1_Q : LUT6
    generic map(
      INIT => X"FFC0FFF0FFC8FFF8"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_started(0),
      I1 => U1_my_hd44780_simple_cur_state(2),
      I2 => U1_my_hd44780_simple_cur_state(1),
      I3 => U1_my_hd44780_simple_cur_state(0),
      I4 => N4,
      I5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(1)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_0_111 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(0),
      I1 => U1_my_hd44780_simple_cur_state(6),
      O => U1_my_hd44780_simple_N29
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_31 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(5),
      I1 => U1_my_hd44780_simple_cur_state(3),
      I2 => U1_my_hd44780_simple_cur_state(4),
      O => U1_my_hd44780_simple_N111
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_9_1 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(0),
      I1 => U1_my_hd44780_simple_cur_state(6),
      I2 => U1_my_hd44780_simple_timer_us_value_6_Q,
      I3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_9_Q
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_8_1 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(6),
      I1 => U1_my_hd44780_simple_timer_us_value_7_Q,
      I2 => U1_my_hd44780_simple_cur_state(0),
      I3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_8_Q
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_7_1 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(6),
      I1 => U1_my_hd44780_simple_timer_us_value_8_Q,
      I2 => U1_my_hd44780_simple_cur_state(0),
      I3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_7_Q
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_5_1 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(0),
      I1 => U1_my_hd44780_simple_cur_state(6),
      I2 => U1_my_hd44780_simple_timer_us_value_10_Q,
      I3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_5_Q
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_4_1 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(0),
      I1 => U1_my_hd44780_simple_timer_us_value_11_Q,
      I2 => U1_my_hd44780_simple_cur_state(6),
      I3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_4_Q
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_3_1 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(0),
      I1 => U1_my_hd44780_simple_timer_us_value_12_Q,
      I2 => U1_my_hd44780_simple_cur_state(6),
      I3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_3_Q
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_11_1 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(6),
      I1 => U1_my_hd44780_simple_timer_us_value_4_Q,
      I2 => U1_my_hd44780_simple_cur_state(0),
      I3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_11_Q
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_0_1 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(0),
      I1 => U1_my_hd44780_simple_timer_us_value_15_Q,
      I2 => U1_my_hd44780_simple_cur_state(6),
      I3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_0_Q
    );
  U1_my_hd44780_simple_next_state_mux0000_9_1 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(6),
      I1 => U1_my_hd44780_simple_next_state_0_Q,
      I2 => U1_my_hd44780_simple_cur_state(0),
      I3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_next_state_mux0000_9_Q
    );
  U1_my_hd44780_simple_next_state_mux0000_6_1 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(0),
      I1 => U1_my_hd44780_simple_next_state_3_Q,
      I2 => U1_my_hd44780_simple_cur_state(6),
      I3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_next_state_mux0000_6_Q
    );
  U1_my_hd44780_simple_next_state_mux0000_5_1 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(3),
      I1 => U1_my_hd44780_simple_next_state_4_Q,
      I2 => U1_my_hd44780_simple_cur_state(4),
      I3 => U1_my_hd44780_simple_N22,
      O => U1_my_hd44780_simple_next_state_mux0000_5_Q
    );
  U1_my_hd44780_simple_next_state_mux0000_4_1 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(4),
      I1 => U1_my_hd44780_simple_next_state_5_Q,
      I2 => U1_my_hd44780_simple_cur_state(3),
      I3 => U1_my_hd44780_simple_N22,
      O => U1_my_hd44780_simple_next_state_mux0000_4_Q
    );
  U1_my_hd44780_simple_next_state_mux0000_2_1 : LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(6),
      I1 => U1_my_hd44780_simple_next_state_7_Q,
      I2 => U1_my_hd44780_simple_cur_state(0),
      I3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_next_state_mux0000_2_Q
    );
  U1_my_hd44780_simple_cur_state_cmp_gt00001 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_count(4),
      I1 => U1_my_hd44780_simple_en_count(0),
      I2 => U1_my_hd44780_simple_en_count(1),
      I3 => U1_my_hd44780_simple_en_count(2),
      I4 => U1_my_hd44780_simple_en_count(3),
      O => U1_my_hd44780_simple_cur_state_cmp_gt0000
    );
  U1_my_hd44780_simple_en_count_mux0000_1_1 : LUT5
    generic map(
      INIT => X"FFFFB9A8"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_count(3),
      I1 => U1_my_hd44780_simple_en_count(2),
      I2 => U1_my_hd44780_simple_N20,
      I3 => U1_my_hd44780_simple_N24,
      I4 => U1_my_hd44780_simple_N10,
      O => U1_my_hd44780_simple_en_count_mux0000(1)
    );
  U1_my_hd44780_simple_next_state_mux0000_3_Q : LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
    port map (
      I0 => U1_my_hd44780_simple_next_state_6_Q,
      I1 => U1_my_hd44780_simple_cur_state(9),
      I2 => U1_my_hd44780_simple_cur_state(8),
      I3 => U1_my_hd44780_simple_cur_state(4),
      I4 => N9,
      I5 => U1_my_hd44780_simple_cur_state(5),
      O => U1_my_hd44780_simple_next_state_mux0000_3_Q_198
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_Q : LUT6
    generic map(
      INIT => X"FFFDBBECEEB9AAA8"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(9),
      I1 => U1_my_hd44780_simple_cur_ddram_addr(2),
      I2 => N15,
      I3 => U1_my_hd44780_simple_cur_line(0),
      I4 => N13,
      I5 => N14,
      O => U1_my_hd44780_simple_hd44780_db_mux0000(4)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_1_42 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db(6),
      I1 => U1_my_hd44780_simple_cur_state(6),
      I2 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_1_42_168
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_1_54 : LUT6
    generic map(
      INIT => X"FFF0FF70F0F07070"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U1_my_hd44780_simple_cur_ddram_addr(0),
      I2 => U1_my_hd44780_simple_cur_state(9),
      I3 => U1_my_hd44780_simple_hd44780_db_mux0000_1_42_168,
      I4 => U1_my_hd44780_simple_hd44780_db_mux0000_1_7_169,
      I5 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_hd44780_db_mux0000(1)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_7_2 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(6),
      I1 => U1_my_hd44780_simple_cur_state(8),
      I2 => U1_my_hd44780_simple_cur_ddram_addr(0),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_7_2_183
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_7_39 : LUT4
    generic map(
      INIT => X"666C"
    )
    port map (
      I0 => U2_U1_cout(3),
      I1 => U2_U1_cout(0),
      I2 => U2_U1_cout(1),
      I3 => U2_U1_cout(2),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_7_39_184
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_6_73 : LUT4
    generic map(
      INIT => X"9A8A"
    )
    port map (
      I0 => U2_U1_cout(1),
      I1 => U2_U1_cout(0),
      I2 => U2_U1_cout(3),
      I3 => U2_U1_cout(2),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_6_73_181
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_6_107 : LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db_mux0000_6_73_181,
      I1 => U1_my_hd44780_simple_cur_ddram_addr(0),
      I2 => U1_my_hd44780_simple_cur_ddram_addr(1),
      I3 => U1_my_hd44780_simple_cur_line(0),
      I4 => U1_my_hd44780_simple_cur_ddram_addr(2),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_6_107_180
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_5_69 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => U2_U1_cout(2),
      I1 => U2_U1_cout(1),
      I2 => U2_U1_cout(3),
      I3 => U2_U1_cout(0),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_5_69_178
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_5_105 : LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db_mux0000_5_69_178,
      I1 => U1_my_hd44780_simple_cur_line(0),
      I2 => U1_my_hd44780_simple_cur_ddram_addr(2),
      I3 => U1_my_hd44780_simple_cur_ddram_addr(1),
      I4 => U1_my_hd44780_simple_cur_ddram_addr(0),
      I5 => U1_my_hd44780_simple_cur_state(9),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_5_105_177
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_3_7 : LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(4),
      I1 => U1_my_hd44780_simple_cur_line(0),
      I2 => U1_my_hd44780_simple_cur_state(8),
      I3 => U1_my_hd44780_simple_cur_ddram_addr(2),
      I4 => U1_my_hd44780_simple_cur_state(3),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_3_7_174
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_3_16 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => U2_U1_cout(3),
      I1 => U2_U1_cout(1),
      I2 => U2_U1_cout(2),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_3_16_172
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_3_43 : LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db_mux0000_3_16_172,
      I1 => U1_my_hd44780_simple_cur_ddram_addr(1),
      I2 => U1_my_hd44780_simple_cur_ddram_addr(0),
      I3 => U1_my_hd44780_simple_cur_line(0),
      I4 => U1_my_hd44780_simple_cur_ddram_addr(2),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_3_43_173
    );
  U1_my_hd44780_simple_valuez_cmp_le0000235 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U1_my_hd44780_simple_valuez(13),
      I1 => U1_my_hd44780_simple_valuez(12),
      I2 => U1_my_hd44780_simple_valuez(14),
      I3 => U1_my_hd44780_simple_valuez(15),
      I4 => U1_my_hd44780_simple_valuez(6),
      I5 => U1_my_hd44780_simple_valuez(7),
      O => U1_my_hd44780_simple_valuez_cmp_le0000235_252
    );
  U1_my_hd44780_simple_valuez_cmp_le00002104 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U1_my_hd44780_simple_valuez(1),
      I1 => U1_my_hd44780_simple_valuez(0),
      I2 => U1_my_hd44780_simple_valuez(2),
      I3 => U1_my_hd44780_simple_valuez(3),
      I4 => U1_my_hd44780_simple_valuez(4),
      I5 => U1_my_hd44780_simple_valuez(5),
      O => U1_my_hd44780_simple_valuez_cmp_le00002104_251
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_427
    );
  sel_IBUF : IBUF
    port map (
      I => sel,
      O => sel_IBUF_429
    );
  entree_3_IBUF : IBUF
    port map (
      I => entree(3),
      O => entree_3_IBUF_414
    );
  entree_2_IBUF : IBUF
    port map (
      I => entree(2),
      O => entree_2_IBUF_413
    );
  entree_1_IBUF : IBUF
    port map (
      I => entree(1),
      O => entree_1_IBUF_412
    );
  entree_0_IBUF : IBUF
    port map (
      I => entree(0),
      O => entree_0_IBUF_411
    );
  hd44780_en_OBUF : OBUF
    port map (
      I => U1_my_hd44780_simple_en_started(0),
      O => hd44780_en
    );
  hd44780_rs_OBUF : OBUF
    port map (
      I => U1_my_hd44780_simple_hd44780_rs_185,
      O => hd44780_rs
    );
  hd44780_rw_OBUF : OBUF
    port map (
      I => N0,
      O => hd44780_rw
    );
  hd44780_db_7_OBUF : OBUF
    port map (
      I => U1_my_hd44780_simple_hd44780_db(7),
      O => hd44780_db(7)
    );
  hd44780_db_6_OBUF : OBUF
    port map (
      I => U1_my_hd44780_simple_hd44780_db(6),
      O => hd44780_db(6)
    );
  hd44780_db_5_OBUF : OBUF
    port map (
      I => U1_my_hd44780_simple_hd44780_db(5),
      O => hd44780_db(5)
    );
  hd44780_db_4_OBUF : OBUF
    port map (
      I => U1_my_hd44780_simple_hd44780_db(4),
      O => hd44780_db(4)
    );
  hd44780_db_3_OBUF : OBUF
    port map (
      I => U1_my_hd44780_simple_hd44780_db(3),
      O => hd44780_db(3)
    );
  hd44780_db_2_OBUF : OBUF
    port map (
      I => U1_my_hd44780_simple_hd44780_db(2),
      O => hd44780_db(2)
    );
  hd44780_db_1_OBUF : OBUF
    port map (
      I => U1_my_hd44780_simple_hd44780_db(1),
      O => hd44780_db(1)
    );
  hd44780_db_0_OBUF : OBUF
    port map (
      I => U1_my_hd44780_simple_hd44780_db(0),
      O => hd44780_db(0)
    );
  U2_U4_U1_Mcount_COUNT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(14),
      O => U2_U4_U1_Mcount_COUNT_cy_14_rt_320
    );
  U2_U4_U1_Mcount_COUNT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(13),
      O => U2_U4_U1_Mcount_COUNT_cy_13_rt_318
    );
  U2_U4_U1_Mcount_COUNT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(12),
      O => U2_U4_U1_Mcount_COUNT_cy_12_rt_316
    );
  U2_U4_U1_Mcount_COUNT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(11),
      O => U2_U4_U1_Mcount_COUNT_cy_11_rt_314
    );
  U2_U4_U1_Mcount_COUNT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(10),
      O => U2_U4_U1_Mcount_COUNT_cy_10_rt_312
    );
  U2_U4_U1_Mcount_COUNT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(9),
      O => U2_U4_U1_Mcount_COUNT_cy_9_rt_338
    );
  U2_U4_U1_Mcount_COUNT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(8),
      O => U2_U4_U1_Mcount_COUNT_cy_8_rt_336
    );
  U2_U4_U1_Mcount_COUNT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(7),
      O => U2_U4_U1_Mcount_COUNT_cy_7_rt_334
    );
  U2_U4_U1_Mcount_COUNT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(6),
      O => U2_U4_U1_Mcount_COUNT_cy_6_rt_332
    );
  U2_U4_U1_Mcount_COUNT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(5),
      O => U2_U4_U1_Mcount_COUNT_cy_5_rt_330
    );
  U2_U4_U1_Mcount_COUNT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(4),
      O => U2_U4_U1_Mcount_COUNT_cy_4_rt_328
    );
  U2_U4_U1_Mcount_COUNT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(3),
      O => U2_U4_U1_Mcount_COUNT_cy_3_rt_326
    );
  U2_U4_U1_Mcount_COUNT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(2),
      O => U2_U4_U1_Mcount_COUNT_cy_2_rt_324
    );
  U2_U4_U1_Mcount_COUNT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(1),
      O => U2_U4_U1_Mcount_COUNT_cy_1_rt_322
    );
  U2_U4_U1_Mcount_COUNT_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(0),
      O => U2_U4_U1_Mcount_COUNT_cy_0_rt_310
    );
  U2_U4_U2_Mcount_COUNT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(14),
      O => U2_U4_U2_Mcount_COUNT_cy_14_rt_385
    );
  U2_U4_U2_Mcount_COUNT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(13),
      O => U2_U4_U2_Mcount_COUNT_cy_13_rt_383
    );
  U2_U4_U2_Mcount_COUNT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(12),
      O => U2_U4_U2_Mcount_COUNT_cy_12_rt_381
    );
  U2_U4_U2_Mcount_COUNT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(11),
      O => U2_U4_U2_Mcount_COUNT_cy_11_rt_379
    );
  U2_U4_U2_Mcount_COUNT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(10),
      O => U2_U4_U2_Mcount_COUNT_cy_10_rt_377
    );
  U2_U4_U2_Mcount_COUNT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(9),
      O => U2_U4_U2_Mcount_COUNT_cy_9_rt_403
    );
  U2_U4_U2_Mcount_COUNT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(8),
      O => U2_U4_U2_Mcount_COUNT_cy_8_rt_401
    );
  U2_U4_U2_Mcount_COUNT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(7),
      O => U2_U4_U2_Mcount_COUNT_cy_7_rt_399
    );
  U2_U4_U2_Mcount_COUNT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(6),
      O => U2_U4_U2_Mcount_COUNT_cy_6_rt_397
    );
  U2_U4_U2_Mcount_COUNT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(5),
      O => U2_U4_U2_Mcount_COUNT_cy_5_rt_395
    );
  U2_U4_U2_Mcount_COUNT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(4),
      O => U2_U4_U2_Mcount_COUNT_cy_4_rt_393
    );
  U2_U4_U2_Mcount_COUNT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(3),
      O => U2_U4_U2_Mcount_COUNT_cy_3_rt_391
    );
  U2_U4_U2_Mcount_COUNT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(2),
      O => U2_U4_U2_Mcount_COUNT_cy_2_rt_389
    );
  U2_U4_U2_Mcount_COUNT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(1),
      O => U2_U4_U2_Mcount_COUNT_cy_1_rt_387
    );
  U2_U4_U2_Mcount_COUNT_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(0),
      O => U2_U4_U2_Mcount_COUNT_cy_0_rt_375
    );
  U2_U4_U1_Mcount_COUNT_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U1_COUNT(15),
      O => U2_U4_U1_Mcount_COUNT_xor_15_rt_339
    );
  U2_U4_U2_Mcount_COUNT_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_U4_U2_COUNT(15),
      O => U2_U4_U2_Mcount_COUNT_xor_15_rt_404
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_3_76 : LUT5
    generic map(
      INIT => X"FFEAFFC0"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db(4),
      I1 => U1_my_hd44780_simple_cur_state(9),
      I2 => U1_my_hd44780_simple_hd44780_db_mux0000_3_43_173,
      I3 => U1_my_hd44780_simple_hd44780_db_mux0000_3_7_174,
      I4 => U1_my_hd44780_simple_N22,
      O => U1_my_hd44780_simple_hd44780_db_mux0000(3)
    );
  U1_my_hd44780_simple_next_state_mux0000_3_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(7),
      I1 => U1_my_hd44780_simple_cur_state(0),
      I2 => U1_my_hd44780_simple_cur_state(6),
      I3 => U1_my_hd44780_simple_cur_state(3),
      O => N9
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_1_11 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(5),
      I1 => U1_my_hd44780_simple_cur_state(4),
      I2 => U1_my_hd44780_simple_cur_state(3),
      I3 => U1_my_hd44780_simple_cur_state(7),
      I4 => U1_my_hd44780_simple_cur_state(8),
      I5 => U1_my_hd44780_simple_cur_state(9),
      O => U1_my_hd44780_simple_N13
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_3_21 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(5),
      I1 => U1_my_hd44780_simple_cur_state(7),
      I2 => U1_my_hd44780_simple_cur_state(8),
      I3 => U1_my_hd44780_simple_cur_state(6),
      I4 => U1_my_hd44780_simple_cur_state(9),
      I5 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_N22
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db(3),
      I1 => U1_my_hd44780_simple_cur_state(8),
      I2 => U1_my_hd44780_simple_cur_state(7),
      I3 => U1_my_hd44780_simple_cur_state(0),
      I4 => U1_my_hd44780_simple_cur_state(6),
      I5 => U1_my_hd44780_simple_N111,
      O => N13
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_SW1 : LUT6
    generic map(
      INIT => X"FFFFFFFFF0F0F0F2"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db(3),
      I1 => U1_my_hd44780_simple_cur_state(7),
      I2 => U1_my_hd44780_simple_cur_state(8),
      I3 => U1_my_hd44780_simple_cur_state(6),
      I4 => U1_my_hd44780_simple_cur_state(0),
      I5 => U1_my_hd44780_simple_N111,
      O => N14
    );
  U1_my_hd44780_simple_timer2state_done : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_timer2state_done_rstpot_209,
      Q => U1_my_hd44780_simple_timer2state_done_208
    );
  U1_my_hd44780_simple_valuez_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_valuez_0_rstpot_235,
      Q => U1_my_hd44780_simple_valuez(0)
    );
  U1_my_hd44780_simple_running_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_406,
      CLR => reset_IBUF_427,
      D => U1_my_hd44780_simple_running_0_rstpot_205,
      Q => U1_my_hd44780_simple_running(0)
    );
  U1_my_hd44780_simple_en_count_mux0000_1_31 : LUT6
    generic map(
      INIT => X"0404040404040400"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_count(0),
      I1 => U1_my_hd44780_simple_cur_state(2),
      I2 => U1_my_hd44780_simple_en_count(1),
      I3 => U1_my_hd44780_simple_en_count(4),
      I4 => U1_my_hd44780_simple_en_count(2),
      I5 => U1_my_hd44780_simple_en_count(3),
      O => U1_my_hd44780_simple_N24
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U1_my_hd44780_simple_valuez(9),
      I1 => U1_my_hd44780_simple_valuez(8),
      I2 => U1_my_hd44780_simple_valuez(11),
      I3 => U1_my_hd44780_simple_valuez(10),
      O => N19
    );
  U1_my_hd44780_simple_valuez_not00011 : LUT6
    generic map(
      INIT => X"F8F0F8F8F8F8F8F8"
    )
    port map (
      I0 => U1_my_hd44780_simple_clk_us_108,
      I1 => U1_my_hd44780_simple_running(0),
      I2 => U1_my_hd44780_simple_state2timer_go_206,
      I3 => N19,
      I4 => U1_my_hd44780_simple_valuez_cmp_le00002104_251,
      I5 => U1_my_hd44780_simple_valuez_cmp_le0000235_252,
      O => U1_my_hd44780_simple_valuez_not0001
    );
  U1_my_hd44780_simple_en_count_mux0000_2_1 : LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFC8CC"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_count(1),
      I1 => U1_my_hd44780_simple_en_count(2),
      I2 => U1_my_hd44780_simple_en_count(0),
      I3 => U1_my_hd44780_simple_cur_state(2),
      I4 => U1_my_hd44780_simple_N10,
      I5 => U1_my_hd44780_simple_N24,
      O => U1_my_hd44780_simple_en_count_mux0000(2)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_31_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U2_U1_cout(2),
      I1 => U2_U1_cout(3),
      I2 => U2_U1_cout(1),
      O => N30
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_SW2 : LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
    port map (
      I0 => N30,
      I1 => U1_my_hd44780_simple_cur_state(5),
      I2 => U1_my_hd44780_simple_cur_state(3),
      I3 => U1_my_hd44780_simple_cur_ddram_addr(1),
      I4 => U1_my_hd44780_simple_cur_state(4),
      I5 => U1_my_hd44780_simple_cur_ddram_addr(0),
      O => N15
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW1 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => U1_my_hd44780_simple_valuez(10),
      I1 => U1_my_hd44780_simple_valuez(11),
      I2 => U1_my_hd44780_simple_clk_us_108,
      I3 => U1_my_hd44780_simple_valuez(8),
      O => N32
    );
  U1_my_hd44780_simple_running_0_rstpot : LUT6
    generic map(
      INIT => X"FCF8FCFCFCFCFCFC"
    )
    port map (
      I0 => U1_my_hd44780_simple_valuez(9),
      I1 => U1_my_hd44780_simple_running(0),
      I2 => U1_my_hd44780_simple_state2timer_go_206,
      I3 => N32,
      I4 => U1_my_hd44780_simple_valuez_cmp_le00002104_251,
      I5 => U1_my_hd44780_simple_valuez_cmp_le0000235_252,
      O => U1_my_hd44780_simple_running_0_rstpot_205
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW2 : LUT5
    generic map(
      INIT => X"00000008"
    )
    port map (
      I0 => U1_my_hd44780_simple_clk_us_108,
      I1 => U1_my_hd44780_simple_running(0),
      I2 => U1_my_hd44780_simple_valuez(8),
      I3 => U1_my_hd44780_simple_valuez(11),
      I4 => U1_my_hd44780_simple_valuez(10),
      O => N34
    );
  U1_my_hd44780_simple_timer2state_done_rstpot : LUT6
    generic map(
      INIT => X"0D0C0C0C0C0C0C0C"
    )
    port map (
      I0 => U1_my_hd44780_simple_valuez(9),
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_state2timer_go_206,
      I3 => N34,
      I4 => U1_my_hd44780_simple_valuez_cmp_le00002104_251,
      I5 => U1_my_hd44780_simple_valuez_cmp_le0000235_252,
      O => U1_my_hd44780_simple_timer2state_done_rstpot_209
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_cur_state(1),
      I3 => U1_my_hd44780_simple_next_state_9_Q,
      O => N36
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW1 : LUT4
    generic map(
      INIT => X"BF00"
    )
    port map (
      I0 => U1_my_hd44780_simple_next_state_9_Q,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I3 => U1_my_hd44780_simple_cur_state(1),
      O => N37
    );
  U1_my_hd44780_simple_cur_state_mux0000_9_1 : LUT6
    generic map(
      INIT => X"FFF0CFC0FFF04F40"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_started(0),
      I1 => U1_my_hd44780_simple_cur_state(2),
      I2 => U1_my_hd44780_simple_cur_state(9),
      I3 => N36,
      I4 => N37,
      I5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(9)
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_cur_state(1),
      I3 => U1_my_hd44780_simple_next_state_8_Q,
      O => N39
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW3 : LUT4
    generic map(
      INIT => X"BF00"
    )
    port map (
      I0 => U1_my_hd44780_simple_next_state_8_Q,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I3 => U1_my_hd44780_simple_cur_state(1),
      O => N40
    );
  U1_my_hd44780_simple_cur_state_mux0000_8_1 : LUT6
    generic map(
      INIT => X"FFF0CFC0FFF04F40"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_started(0),
      I1 => U1_my_hd44780_simple_cur_state(2),
      I2 => U1_my_hd44780_simple_cur_state(8),
      I3 => N39,
      I4 => N40,
      I5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(8)
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW4 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_cur_state(1),
      I3 => U1_my_hd44780_simple_next_state_7_Q,
      O => N42
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW5 : LUT4
    generic map(
      INIT => X"BF00"
    )
    port map (
      I0 => U1_my_hd44780_simple_next_state_7_Q,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I3 => U1_my_hd44780_simple_cur_state(1),
      O => N43
    );
  U1_my_hd44780_simple_cur_state_mux0000_7_1 : LUT6
    generic map(
      INIT => X"FFCCF3C0FFCC7340"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_started(0),
      I1 => U1_my_hd44780_simple_cur_state(7),
      I2 => U1_my_hd44780_simple_cur_state(2),
      I3 => N42,
      I4 => N43,
      I5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(7)
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW6 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_cur_state(1),
      I3 => U1_my_hd44780_simple_next_state_6_Q,
      O => N45
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW7 : LUT4
    generic map(
      INIT => X"BF00"
    )
    port map (
      I0 => U1_my_hd44780_simple_next_state_6_Q,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I3 => U1_my_hd44780_simple_cur_state(1),
      O => N46
    );
  U1_my_hd44780_simple_cur_state_mux0000_6_1 : LUT6
    generic map(
      INIT => X"FFF0CFC0FFF04F40"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_started(0),
      I1 => U1_my_hd44780_simple_cur_state(2),
      I2 => U1_my_hd44780_simple_cur_state(6),
      I3 => N45,
      I4 => N46,
      I5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(6)
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW8 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_cur_state(1),
      I3 => U1_my_hd44780_simple_next_state_5_Q,
      O => N48
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW9 : LUT4
    generic map(
      INIT => X"BF00"
    )
    port map (
      I0 => U1_my_hd44780_simple_next_state_5_Q,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I3 => U1_my_hd44780_simple_cur_state(1),
      O => N49
    );
  U1_my_hd44780_simple_cur_state_mux0000_5_1 : LUT6
    generic map(
      INIT => X"FFAAF5A0FFAA7520"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(5),
      I1 => U1_my_hd44780_simple_en_started(0),
      I2 => U1_my_hd44780_simple_cur_state(2),
      I3 => N48,
      I4 => N49,
      I5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(5)
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW10 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_cur_state(1),
      I3 => U1_my_hd44780_simple_next_state_4_Q,
      O => N51
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW11 : LUT4
    generic map(
      INIT => X"BF00"
    )
    port map (
      I0 => U1_my_hd44780_simple_next_state_4_Q,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I3 => U1_my_hd44780_simple_cur_state(1),
      O => N52
    );
  U1_my_hd44780_simple_cur_state_mux0000_4_1 : LUT6
    generic map(
      INIT => X"FFAAF5A0FFAA7520"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(4),
      I1 => U1_my_hd44780_simple_en_started(0),
      I2 => U1_my_hd44780_simple_cur_state(2),
      I3 => N51,
      I4 => N52,
      I5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(4)
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW12 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_cur_state(1),
      I3 => U1_my_hd44780_simple_next_state_3_Q,
      O => N54
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW13 : LUT4
    generic map(
      INIT => X"BF00"
    )
    port map (
      I0 => U1_my_hd44780_simple_next_state_3_Q,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I3 => U1_my_hd44780_simple_cur_state(1),
      O => N55
    );
  U1_my_hd44780_simple_cur_state_mux0000_3_1 : LUT6
    generic map(
      INIT => X"FFAAF5A0FFAA7520"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(3),
      I1 => U1_my_hd44780_simple_en_started(0),
      I2 => U1_my_hd44780_simple_cur_state(2),
      I3 => N54,
      I4 => N55,
      I5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(3)
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW14 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_cur_state(1),
      I3 => U1_my_hd44780_simple_next_state_0_Q,
      O => N57
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW15 : LUT4
    generic map(
      INIT => X"BF00"
    )
    port map (
      I0 => U1_my_hd44780_simple_next_state_0_Q,
      I1 => U1_my_hd44780_simple_timer2state_done_208,
      I2 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      I3 => U1_my_hd44780_simple_cur_state(1),
      O => N58
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_1 : LUT6
    generic map(
      INIT => X"FFF0CFC0FFF04F40"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_started(0),
      I1 => U1_my_hd44780_simple_cur_state(2),
      I2 => U1_my_hd44780_simple_cur_state(0),
      I3 => N57,
      I4 => N58,
      I5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(0)
    );
  U1_my_hd44780_simple_cur_state_mux0000_2_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(9),
      I1 => U1_my_hd44780_simple_cur_state(8),
      I2 => U1_my_hd44780_simple_cur_state(7),
      I3 => U1_my_hd44780_simple_cur_state(2),
      O => N60
    );
  U1_my_hd44780_simple_cur_state_mux0000_2_Q : LUT6
    generic map(
      INIT => X"FFFCFFFEFFFCFDFC"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_started(0),
      I1 => U1_my_hd44780_simple_cur_state(6),
      I2 => U1_my_hd44780_simple_N111,
      I3 => N60,
      I4 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      I5 => N61,
      O => U1_my_hd44780_simple_cur_state_mux0000(2)
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW3 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => U1_my_hd44780_simple_state2timer_go_206,
      I1 => U1_my_hd44780_simple_running(0),
      I2 => U1_my_hd44780_simple_clk_us_108,
      O => N63
    );
  U1_my_hd44780_simple_valuez_0_rstpot : LUT6
    generic map(
      INIT => X"CCCACACAAACACACA"
    )
    port map (
      I0 => U1_my_hd44780_simple_valuez(0),
      I1 => U1_my_hd44780_simple_Mcount_valuez,
      I2 => N63,
      I3 => U1_my_hd44780_simple_valuez_cmp_le00002104_251,
      I4 => U1_my_hd44780_simple_valuez_cmp_le0000235_252,
      I5 => N64,
      O => U1_my_hd44780_simple_valuez_0_rstpot_235
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_0_Q : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U1_my_hd44780_simple_valuez(0),
      I1 => U1_my_hd44780_simple_state2timer_go_206,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(0)
    );
  U1_my_hd44780_simple_cur_state_mux0000_2_SW0_SW1 : MUXF7
    port map (
      I0 => N66,
      I1 => N67,
      S => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_210,
      O => N61
    );
  U1_my_hd44780_simple_cur_state_mux0000_2_SW0_SW1_F : LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(7),
      I1 => U1_my_hd44780_simple_cur_state(9),
      I2 => U1_my_hd44780_simple_cur_state(2),
      I3 => U1_my_hd44780_simple_cur_state(1),
      I4 => U1_my_hd44780_simple_cur_state(8),
      O => N66
    );
  U1_my_hd44780_simple_cur_state_mux0000_2_SW0_SW1_G : LUT6
    generic map(
      INIT => X"FFFFFFFFFFAEFFAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(7),
      I1 => U1_my_hd44780_simple_cur_state(2),
      I2 => U1_my_hd44780_simple_timer2state_done_208,
      I3 => U1_my_hd44780_simple_cur_state(8),
      I4 => U1_my_hd44780_simple_cur_state(1),
      I5 => U1_my_hd44780_simple_cur_state(9),
      O => N67
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW4 : MUXF7
    port map (
      I0 => N68,
      I1 => Dangling_Input_Signal,
      S => U1_my_hd44780_simple_state2timer_go_206,
      O => N64
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW4_F : LUT6
    generic map(
      INIT => X"8888888888888880"
    )
    port map (
      I0 => U1_my_hd44780_simple_clk_us_108,
      I1 => U1_my_hd44780_simple_running(0),
      I2 => U1_my_hd44780_simple_valuez(9),
      I3 => U1_my_hd44780_simple_valuez(8),
      I4 => U1_my_hd44780_simple_valuez(11),
      I5 => U1_my_hd44780_simple_valuez(10),
      O => N68
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_7_119_SW0 : LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db_mux0000_7_39_184,
      I1 => U1_my_hd44780_simple_cur_line(0),
      I2 => U1_my_hd44780_simple_cur_ddram_addr(1),
      I3 => U1_my_hd44780_simple_cur_ddram_addr(2),
      I4 => U1_my_hd44780_simple_cur_ddram_addr(0),
      O => N70
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_7_119 : LUT6
    generic map(
      INIT => X"FFCEFF0AFFCCFF00"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db(0),
      I1 => U1_my_hd44780_simple_cur_state(9),
      I2 => U1_my_hd44780_simple_cur_state(0),
      I3 => U1_my_hd44780_simple_hd44780_db_mux0000_7_2_183,
      I4 => N70,
      I5 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_hd44780_db_mux0000(7)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_1_7 : LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_ddram_addr(2),
      I1 => U2_U1_cout(3),
      I2 => U2_U1_cout(2),
      I3 => U2_U1_cout(1),
      I4 => U1_my_hd44780_simple_cur_line(0),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_1_7_169
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_2_SW0 : LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(0),
      I1 => U1_my_hd44780_simple_cur_state(5),
      I2 => U1_my_hd44780_simple_cur_state(6),
      I3 => U1_my_hd44780_simple_cur_state(7),
      I4 => U1_my_hd44780_simple_hd44780_db(5),
      O => N72
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_2_Q : LUT6
    generic map(
      INIT => X"FFFFFFFEFEFFFEFE"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(3),
      I1 => U1_my_hd44780_simple_cur_state(4),
      I2 => U1_my_hd44780_simple_cur_state(9),
      I3 => U1_my_hd44780_simple_cur_state(8),
      I4 => N72,
      I5 => U1_my_hd44780_simple_cur_line(0),
      O => U1_my_hd44780_simple_hd44780_db_mux0000(2)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_6_133_SW0 : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db(1),
      I1 => U1_my_hd44780_simple_cur_state(3),
      I2 => U1_my_hd44780_simple_cur_state(4),
      I3 => U1_my_hd44780_simple_cur_state(5),
      I4 => U1_my_hd44780_simple_cur_state(6),
      I5 => U1_my_hd44780_simple_cur_state(0),
      O => N74
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_6_133 : LUT6
    generic map(
      INIT => X"FFFBFFEAEAFBEAEA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(7),
      I1 => U1_my_hd44780_simple_cur_state(9),
      I2 => U1_my_hd44780_simple_hd44780_db_mux0000_6_107_180,
      I3 => U1_my_hd44780_simple_cur_state(8),
      I4 => N74,
      I5 => U1_my_hd44780_simple_cur_ddram_addr(1),
      O => U1_my_hd44780_simple_hd44780_db_mux0000(6)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_5_113_SW0 : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db(2),
      I1 => U1_my_hd44780_simple_cur_state(0),
      I2 => U1_my_hd44780_simple_cur_state(4),
      I3 => U1_my_hd44780_simple_cur_state(6),
      I4 => U1_my_hd44780_simple_cur_state(3),
      I5 => U1_my_hd44780_simple_cur_state(9),
      O => N76
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_5_113 : LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFBFA"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_state(5),
      I1 => U1_my_hd44780_simple_cur_ddram_addr(2),
      I2 => U1_my_hd44780_simple_cur_state(7),
      I3 => U1_my_hd44780_simple_cur_state(8),
      I4 => N76,
      I5 => U1_my_hd44780_simple_hd44780_db_mux0000_5_105_177,
      O => U1_my_hd44780_simple_hd44780_db_mux0000(5)
    );
  U1_my_hd44780_simple_Mcount_count_xor_4_11 : LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => U1_my_hd44780_simple_count(4),
      I1 => U1_my_hd44780_simple_count(0),
      I2 => U1_my_hd44780_simple_count(1),
      I3 => U1_my_hd44780_simple_count(3),
      I4 => U1_my_hd44780_simple_count(2),
      O => U1_my_hd44780_simple_Mcount_count4
    );
  U1_my_hd44780_simple_en_count_mux0000_3_1 : LUT6
    generic map(
      INIT => X"FFAEFFAEFF6EFFAE"
    )
    port map (
      I0 => U1_my_hd44780_simple_en_count(1),
      I1 => U1_my_hd44780_simple_cur_state(2),
      I2 => U1_my_hd44780_simple_en_started(0),
      I3 => U1_my_hd44780_simple_cur_state(0),
      I4 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      I5 => U1_my_hd44780_simple_en_count(0),
      O => U1_my_hd44780_simple_en_count_mux0000(3)
    );
  U2_U1_cout_mux0003_3_1 : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => sel_IBUF_429,
      I1 => U2_U3_COUNT(0),
      I2 => U2_U3_COUNT(3),
      O => U2_U1_cout_mux0003(3)
    );
  U2_U1_cout_mux0003_2_1 : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => sel_IBUF_429,
      I1 => U2_U3_COUNT(0),
      I2 => U2_U3_COUNT(2),
      O => U2_U1_cout_mux0003(2)
    );
  U2_U1_cout_mux0003_1_1 : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => sel_IBUF_429,
      I1 => U2_U3_COUNT(0),
      I2 => U2_U3_COUNT(1),
      O => U2_U1_cout_mux0003(1)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_406
    );
  U1_my_hd44780_simple_reset_inv1_INV_0 : INV
    port map (
      I => reset_IBUF_427,
      O => U1_my_hd44780_simple_reset_inv
    );
  U2_U3_Mcount_COUNT_xor_0_11_INV_0 : INV
    port map (
      I => U2_U3_COUNT(0),
      O => Result(0)
    );
  U1_my_hd44780_simple_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => U1_my_hd44780_simple_count(0),
      O => U1_my_hd44780_simple_Mcount_count
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_0_Q : MUXF7
    port map (
      I0 => N78,
      I1 => N79,
      S => U1_my_hd44780_simple_cur_state(9),
      O => U1_my_hd44780_simple_hd44780_db_mux0000(0)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_0_F : LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
    port map (
      I0 => U1_my_hd44780_simple_hd44780_db(7),
      I1 => U1_my_hd44780_simple_cur_state(0),
      I2 => U1_my_hd44780_simple_cur_state(6),
      I3 => U1_my_hd44780_simple_N111,
      I4 => U1_my_hd44780_simple_cur_state(7),
      I5 => U1_my_hd44780_simple_cur_state(8),
      O => N78
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_0_G : LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
    port map (
      I0 => U1_my_hd44780_simple_cur_ddram_addr(2),
      I1 => U1_my_hd44780_simple_cur_ddram_addr(1),
      I2 => U1_my_hd44780_simple_cur_ddram_addr(0),
      I3 => U1_my_hd44780_simple_cur_line(0),
      I4 => U1_my_hd44780_simple_cur_state(8),
      O => N79
    );

end STRUCTURE;

