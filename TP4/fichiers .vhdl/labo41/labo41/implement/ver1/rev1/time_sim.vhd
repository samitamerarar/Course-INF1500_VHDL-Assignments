--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Fri Mar 25 21:06:41 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf top.pcf -tpw 0 -rpw 100 -s 2 -ar Structure -insert_pp_buffers true top.ncd time_sim.vhd 
-- Device	: 5vlx50tff1136-1 (PRODUCTION 1.73 2012-12-04)
-- Input file	: top.ncd
-- Output file	: time_sim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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

architecture Structure of top is
  signal U1_my_hd44780_simple_reset_inv : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_4_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_N22 : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_5_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_7_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_N13 : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_8_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_N29 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N111 : STD_LOGIC; 
  signal U2_NET734 : STD_LOGIC; 
  signal U2_NET68 : STD_LOGIC; 
  signal U2_U1_cout_not0001 : STD_LOGIC; 
  signal sel_IBUF_1375 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1381 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer2state_done_1383 : STD_LOGIC; 
  signal U1_my_hd44780_simple_state2timer_go_1384 : STD_LOGIC; 
  signal U1_my_hd44780_simple_cur_state_cmp_gt0000 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N20 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N24 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N10 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal U1_my_hd44780_simple_valuez_cmp_le00002104_1398 : STD_LOGIC; 
  signal U1_my_hd44780_simple_valuez_cmp_le0000235_1399 : STD_LOGIC; 
  signal reset_IBUF_1400 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_3_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_4_Q : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_5_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_6_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_7_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_8_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_10_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_11_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_12_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_15_Q : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_rs_1415 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61_0 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez_0 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal U1_my_hd44780_simple_N19 : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_0_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_1_42_1444 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_1_7_1445 : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_3_Q : STD_LOGIC; 
  signal U2_U4_NET16531148_1448 : STD_LOGIC; 
  signal U2_U4_NET1653135_1454 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_7_2_1467 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal U2_U4_NET16531334_1470 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_3_7_1481 : STD_LOGIC; 
  signal U2_U4_NET1653 : STD_LOGIC; 
  signal U2_U4_N0 : STD_LOGIC; 
  signal U1_my_hd44780_simple_valuez_not0001 : STD_LOGIC; 
  signal U1_my_hd44780_simple_clk_us_1491 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_3_43_1499 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_9_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_6_Q : STD_LOGIC; 
  signal U2_U4_U1_TC_cmp_eq000014_1505 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_5_69_1512 : STD_LOGIC; 
  signal U2_U4_NET1584 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_6_107_1517 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez_cy_3_Q_1526 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez_cy_7_Q_1528 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez_cy_11_Q_1529 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_3_Q_1530 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_7_Q_1531 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT_cy_11_Q_1532 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_3_Q_1533 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_7_Q_1534 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT_cy_11_Q_1535 : STD_LOGIC; 
  signal U2_U4_NET1653175_1539 : STD_LOGIC; 
  signal U2_U4_U1_TC_cmp_eq000049_1540 : STD_LOGIC; 
  signal U2_U4_NET16531234_1541 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_3_16_1547 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_6_73_1548 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_7_39_1551 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_db_mux0000_5_105_1553 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez4 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez5 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez7 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez6 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez1 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez3 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez2 : STD_LOGIC; 
  signal entree_0_IBUF_1595 : STD_LOGIC; 
  signal entree_1_IBUF_1598 : STD_LOGIC; 
  signal reset_IBUF_1586 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_2_rt_270 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT3 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT : STD_LOGIC; 
  signal U2_U4_U1_COUNT_1_rt_262 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_0_rt_260 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT1 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT2 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_3_rt_248 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT14 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT13 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_12_rt_238 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT12 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_13_rt_231 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_15_rt_230 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_14_rt_227 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT15 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_9_rt_215 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT11 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_8_rt_211 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT9 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT8 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT10 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_10_rt_203 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_11_rt_197 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT14 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT13 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_12_rt_347 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT12 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_13_rt_340 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_15_rt_339 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_14_rt_336 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT15 : STD_LOGIC; 
  signal entree_3_IBUF_1561 : STD_LOGIC; 
  signal entree_2_IBUF_1558 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_5_rt_296 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT7 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_4_rt_292 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT5 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT4 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT6 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_6_rt_284 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_7_rt_278 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_9_rt_324 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT11 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_8_rt_320 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT9 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT8 : STD_LOGIC; 
  signal U2_U4_U1_Mcount_COUNT10 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_10_rt_312 : STD_LOGIC; 
  signal U2_U4_U1_COUNT_11_rt_306 : STD_LOGIC; 
  signal clk_IBUF : STD_LOGIC; 
  signal sel_IBUF_1569 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_0_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_3_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_7_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_8_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_5_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_4_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_state2timer_go_mux0000 : STD_LOGIC; 
  signal N64_pack_6 : STD_LOGIC; 
  signal U1_my_hd44780_simple_valuez_0_rstpot_538 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer2state_done_rstpot_693 : STD_LOGIC; 
  signal U1_my_hd44780_simple_running_0_rstpot_674 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez15 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez12 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez13 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez14 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez11 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez9 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez8 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_valuez10 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_2_rt_161 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT3 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT : STD_LOGIC; 
  signal U2_U4_U2_COUNT_1_rt_153 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_0_rt_151 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT1 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT2 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_3_rt_139 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_5_rt_187 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT7 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_4_rt_183 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT5 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT4 : STD_LOGIC; 
  signal U2_U4_U2_Mcount_COUNT6 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_6_rt_175 : STD_LOGIC; 
  signal U2_U4_U2_COUNT_7_rt_169 : STD_LOGIC; 
  signal U1_my_hd44780_simple_en_started_0_mux0000 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count6 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count4 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count5 : STD_LOGIC; 
  signal U1_my_hd44780_simple_count_cmp_eq0000 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count3 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count2 : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count : STD_LOGIC; 
  signal U1_my_hd44780_simple_Mcount_count1 : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_9_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_11_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_12_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_timer_us_value_mux0000_10_Q_761 : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_0_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_2_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_3_Q_1048 : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_1_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_5_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_4_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_6_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_next_state_mux0000_9_Q : STD_LOGIC; 
  signal U1_my_hd44780_simple_hd44780_rs_mux0000 : STD_LOGIC; 
  signal U1_my_hd44780_simple_cur_line_0_mux0000 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_rs_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_U2_U3_COUNT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U3_COUNT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U3_COUNT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U3_COUNT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U1_COUNT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_en_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_en_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_en_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_en_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_en_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_en_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_state2timer_go_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_running_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer2state_done_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_state_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_state_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_state_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_state_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_valuez_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U4_U2_COUNT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_en_started_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_state_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_state_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_state_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_state_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_clk_us_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U1_cout_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U1_cout_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U1_cout_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_U1_cout_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_next_state_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_next_state_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_next_state_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_next_state_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_next_state_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_next_state_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_next_state_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_next_state_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_hd44780_rs_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_state_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_state_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_ddram_addr_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_ddram_addr_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_ddram_addr_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_cur_line_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_7_CLK : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_8_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_9_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_10_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_11_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_12_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_13_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_14_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_15_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_N0_12_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp84_CYINITVCC_1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_13_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_14_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_15_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_16_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_17_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_18_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_19_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_20_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_21_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_22_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_2_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_9_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_10_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_11_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U1_Mcount_COUNT_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_5_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_6_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_20_SLICEL_A6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_2_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_3_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_4_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_my_hd44780_simple_Mcount_valuez_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_5_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_6_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Dangling_Input_Signal_7_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_27_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp84_CYINITVCC_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_28_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_29_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_30_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_23_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_U4_U2_Mcount_COUNT_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_24_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_25_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_26_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal U1_my_hd44780_simple_cur_state : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_U3_COUNT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_my_hd44780_simple_cur_ddram_addr : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U1_my_hd44780_simple_cur_line : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_U1_cout : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_my_hd44780_simple_en_started : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_my_hd44780_simple_en_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U1_my_hd44780_simple_valuez : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U1_my_hd44780_simple_running : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_my_hd44780_simple_count : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U1_my_hd44780_simple_hd44780_db : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U2_U4_U2_COUNT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U2_U4_U1_COUNT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U1_my_hd44780_simple_Mcount_valuez_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_my_hd44780_simple_en_count_mux0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U1_my_hd44780_simple_cur_state_mux0000 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U2_U1_cout_mux0003 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_my_hd44780_simple_hd44780_db_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_my_hd44780_simple_cur_ddram_addr_mux0000 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  U1_my_hd44780_simple_valuez_7 : X_FF
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_7_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez7,
      O => U1_my_hd44780_simple_valuez(7),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => X"303F303F303F303F"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR3 => U1_my_hd44780_simple_valuez(7),
      ADR1 => U1_my_hd44780_simple_timer_us_value_7_Q,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(7)
    );
  Dangling_Input_Signal_8_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_8_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_6 : X_FF
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_6_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez6,
      O => U1_my_hd44780_simple_valuez(6),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y53"
    )
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy_3_Q_1526,
      CYINIT => '0',
      CO(3) => U1_my_hd44780_simple_Mcount_valuez_cy_7_Q_1528,
      CO(2) => NLW_U1_my_hd44780_simple_Mcount_valuez_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_my_hd44780_simple_Mcount_valuez_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_my_hd44780_simple_Mcount_valuez_cy_7_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => U1_my_hd44780_simple_Mcount_valuez7,
      O(2) => U1_my_hd44780_simple_Mcount_valuez6,
      O(1) => U1_my_hd44780_simple_Mcount_valuez5,
      O(0) => U1_my_hd44780_simple_Mcount_valuez4,
      S(3) => U1_my_hd44780_simple_Mcount_valuez_lut(7),
      S(2) => U1_my_hd44780_simple_Mcount_valuez_lut(6),
      S(1) => U1_my_hd44780_simple_Mcount_valuez_lut(5),
      S(0) => U1_my_hd44780_simple_Mcount_valuez_lut(4)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => X"000FF0FF000FF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR3 => U1_my_hd44780_simple_valuez(6),
      ADR4 => U1_my_hd44780_simple_timer_us_value_6_Q,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(6)
    );
  Dangling_Input_Signal_9_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_9_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_5 : X_FF
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_5_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez5,
      O => U1_my_hd44780_simple_valuez(5),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => X"0033CCFF0033CCFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR3 => U1_my_hd44780_simple_valuez(5),
      ADR4 => U1_my_hd44780_simple_timer_us_value_5_Q,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(5)
    );
  Dangling_Input_Signal_10_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_10_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_4 : X_FF
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_4_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez4,
      O => U1_my_hd44780_simple_valuez(4),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => X"00FF0F0F00FF0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => U1_my_hd44780_simple_timer_us_value_4_Q,
      ADR2 => U1_my_hd44780_simple_valuez(4),
      ADR4 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(4)
    );
  Dangling_Input_Signal_11_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y53",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_11_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_3_U1_my_hd44780_simple_valuez_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U1_my_hd44780_simple_Mcount_valuez,
      O => U1_my_hd44780_simple_Mcount_valuez_0
    );
  U1_my_hd44780_simple_valuez_3 : X_FF
    generic map(
      LOC => "SLICE_X30Y52",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_3_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez3,
      O => U1_my_hd44780_simple_valuez(3),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y52",
      INIT => X"303F303F303F303F"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => U1_my_hd44780_simple_timer_us_value_3_Q,
      ADR3 => U1_my_hd44780_simple_valuez(3),
      ADR2 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(3)
    );
  Dangling_Input_Signal_12_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y52",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_12_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_2 : X_FF
    generic map(
      LOC => "SLICE_X30Y52",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_2_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez2,
      O => U1_my_hd44780_simple_valuez(2),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y52"
    )
    port map (
      CI => '0',
      CYINIT => U1_my_hd44780_simple_state2timer_go_1384,
      CO(3) => U1_my_hd44780_simple_Mcount_valuez_cy_3_Q_1526,
      CO(2) => NLW_U1_my_hd44780_simple_Mcount_valuez_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_my_hd44780_simple_Mcount_valuez_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_my_hd44780_simple_Mcount_valuez_cy_3_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => U1_my_hd44780_simple_Mcount_valuez3,
      O(2) => U1_my_hd44780_simple_Mcount_valuez2,
      O(1) => U1_my_hd44780_simple_Mcount_valuez1,
      O(0) => U1_my_hd44780_simple_Mcount_valuez,
      S(3) => U1_my_hd44780_simple_Mcount_valuez_lut(3),
      S(2) => U1_my_hd44780_simple_Mcount_valuez_lut(2),
      S(1) => U1_my_hd44780_simple_Mcount_valuez_lut(1),
      S(0) => U1_my_hd44780_simple_Mcount_valuez_lut(0)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y52",
      INIT => X"CCFFCCFFCCFFCCFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => U1_my_hd44780_simple_valuez(2),
      ADR1 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(2)
    );
  Dangling_Input_Signal_13_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y52",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_13_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_1 : X_FF
    generic map(
      LOC => "SLICE_X30Y52",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_1_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez1,
      O => U1_my_hd44780_simple_valuez(1),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y52",
      INIT => X"FF00FFFFFF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U1_my_hd44780_simple_valuez(1),
      ADR3 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(1)
    );
  Dangling_Input_Signal_14_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y52",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_14_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y52",
      INIT => X"FF33FF33FF33FF33"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U1_my_hd44780_simple_valuez(0),
      ADR3 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(0)
    );
  Dangling_Input_Signal_15_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y52",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_15_SLICEL_A5LUT_O_UNCONNECTED
    );
  U2_U4_s1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y83",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U2_U4_U1_COUNT(0),
      ADR5 => U2_U4_N0,
      O => U2_NET734
    );
  U2_U4_NET16531435 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y83",
      INIT => X"0000000000000100"
    )
    port map (
      ADR3 => U2_U4_NET16531334_1470,
      ADR1 => U2_U4_U1_COUNT(10),
      ADR4 => U2_U4_U1_COUNT(11),
      ADR2 => U2_U4_U1_COUNT(12),
      ADR0 => U2_U4_U1_COUNT(1),
      ADR5 => U2_U4_U1_COUNT(2),
      O => U2_U4_N0
    );
  U2_U4_NET1653135 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y85",
      INIT => X"0080000000000000"
    )
    port map (
      ADR2 => U2_U4_U1_COUNT(8),
      ADR1 => U2_U4_U2_COUNT(8),
      ADR5 => U2_U4_U1_COUNT(14),
      ADR0 => U2_U4_U1_COUNT(15),
      ADR4 => U2_U4_U1_COUNT(13),
      ADR3 => U2_U4_U2_COUNT(9),
      O => U2_U4_NET1653135_1454
    );
  U2_NET681_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y81",
      INIT => X"8ECF8ECF8ECF8ECF"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => U2_U3_COUNT(0),
      ADR1 => entree_1_IBUF_1598,
      ADR2 => U2_U3_COUNT(1),
      ADR0 => entree_0_IBUF_1595,
      O => N01
    );
  U2_NET681 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y81",
      INIT => X"4D44DD4D4D44DD4D"
    )
    port map (
      ADR5 => '1',
      ADR1 => U2_U3_COUNT(3),
      ADR4 => N01,
      ADR2 => entree_2_IBUF_1558,
      ADR0 => entree_3_IBUF_1561,
      ADR3 => U2_U3_COUNT(2),
      O => U2_NET68
    );
  U2_U4_U1_TC_cmp_eq000014 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y85",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => U2_U4_U1_COUNT(7),
      ADR3 => U2_U4_U1_COUNT(9),
      ADR5 => U2_U4_U1_COUNT(14),
      ADR0 => U2_U4_U1_COUNT(15),
      ADR4 => U2_U4_U1_COUNT(13),
      ADR2 => U2_U4_U1_COUNT(8),
      O => U2_U4_U1_TC_cmp_eq000014_1505
    );
  hd44780_db_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y72"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_7_OBUF_I,
      O => hd44780_db(7)
    );
  entree_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y172",
      PATHPULSE => 343 ps
    )
    port map (
      I => entree(0),
      O => entree_0_IBUF_1595
    );
  hd44780_db_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y77"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_4_OBUF_I,
      O => hd44780_db(4)
    );
  hd44780_db_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y74"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_2_OBUF_I,
      O => hd44780_db(2)
    );
  hd44780_db_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y73"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_6_OBUF_I,
      O => hd44780_db(6)
    );
  hd44780_rs_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y56"
    )
    port map (
      I => NlwBufferSignal_hd44780_rs_OBUF_I,
      O => hd44780_rs
    );
  entree_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y176",
      PATHPULSE => 343 ps
    )
    port map (
      I => entree(1),
      O => entree_1_IBUF_1598
    );
  U2_U4_NET16532 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y83",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_U4_U1_COUNT(0),
      ADR0 => U2_U4_N0,
      O => U2_U4_NET1653
    );
  U2_U4_U1_TC_cmp_eq000049 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y83",
      INIT => X"8000000000000000"
    )
    port map (
      ADR2 => U2_U4_U1_COUNT(2),
      ADR0 => U2_U4_U1_COUNT(3),
      ADR3 => U2_U4_U1_COUNT(4),
      ADR5 => U2_U4_U1_COUNT(5),
      ADR4 => U2_U4_U1_COUNT(6),
      ADR1 => U2_U4_U1_TC_cmp_eq000014_1505,
      O => U2_U4_U1_TC_cmp_eq000049_1540
    );
  U2_U4_U1_TC_cmp_eq0000103 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y83",
      INIT => X"8000000000000000"
    )
    port map (
      ADR3 => U2_U4_U1_COUNT(0),
      ADR1 => U2_U4_U1_COUNT(10),
      ADR5 => U2_U4_U1_COUNT(11),
      ADR2 => U2_U4_U1_COUNT(12),
      ADR0 => U2_U4_U1_COUNT(1),
      ADR4 => U2_U4_U1_TC_cmp_eq000049_1540,
      O => U2_U4_NET1584
    );
  U2_U4_NET16531234 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y82",
      INIT => X"0000000000004000"
    )
    port map (
      ADR1 => U2_U4_U2_COUNT(10),
      ADR3 => U2_U4_U2_COUNT(0),
      ADR5 => U2_U4_U1_COUNT(9),
      ADR0 => U2_U4_U2_COUNT(11),
      ADR4 => U2_U4_U2_COUNT(12),
      ADR2 => U2_U4_NET16531148_1448,
      O => U2_U4_NET16531234_1541
    );
  U2_U4_NET16531334 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y82",
      INIT => X"0000000000010000"
    )
    port map (
      ADR4 => U2_U4_NET16531234_1541,
      ADR2 => U2_U4_U1_COUNT(3),
      ADR5 => U2_U4_U1_COUNT(4),
      ADR3 => U2_U4_U1_COUNT(5),
      ADR1 => U2_U4_U1_COUNT(6),
      ADR0 => U2_U4_U1_COUNT(7),
      O => U2_U4_NET16531334_1470
    );
  U2_U3_COUNT_3 : X_FF
    generic map(
      LOC => "SLICE_X29Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U3_COUNT_3_CLK,
      I => Result(3),
      O => U2_U3_COUNT(3),
      SET => GND,
      RST => U2_NET68
    );
  U2_U3_Mcount_COUNT_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y81",
      INIT => X"7788FF007788FF00"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR0 => U2_U3_COUNT(0),
      ADR3 => U2_U3_COUNT(3),
      ADR1 => U2_U3_COUNT(1),
      ADR4 => U2_U3_COUNT(2),
      O => Result(3)
    );
  U2_U3_COUNT_2 : X_FF
    generic map(
      LOC => "SLICE_X29Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U3_COUNT_2_CLK,
      I => Result(2),
      O => U2_U3_COUNT(2),
      SET => GND,
      RST => U2_NET68
    );
  U2_U3_Mcount_COUNT_xor_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y81",
      INIT => X"33CCFF0033CCFF00"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => U2_U3_COUNT(2),
      ADR1 => U2_U3_COUNT(0),
      ADR4 => U2_U3_COUNT(1),
      O => Result(2)
    );
  U2_U3_COUNT_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U3_COUNT_1_CLK,
      I => Result(1),
      O => U2_U3_COUNT(1),
      SET => GND,
      RST => U2_NET68
    );
  U2_U3_Mcount_COUNT_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y81",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U3_COUNT(1),
      ADR4 => '1',
      ADR5 => U2_U3_COUNT(0),
      O => Result(1)
    );
  U2_U3_COUNT_0 : X_FF
    generic map(
      LOC => "SLICE_X29Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U3_COUNT_0_CLK,
      I => Result(0),
      O => U2_U3_COUNT(0),
      SET => GND,
      RST => U2_NET68
    );
  U2_U3_Mcount_COUNT_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y81",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U3_COUNT(0),
      ADR4 => '1',
      ADR5 => '1',
      O => Result(0)
    );
  reset_IMUX : X_BUF
    generic map(
      LOC => "IOB_X2Y125",
      PATHPULSE => 343 ps
    )
    port map (
      I => reset_IBUF_1586,
      O => reset_IBUF_1400
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y125",
      PATHPULSE => 343 ps
    )
    port map (
      I => reset,
      O => reset_IBUF_1586
    );
  hd44780_db_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y79"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_3_OBUF_I,
      O => hd44780_db(3)
    );
  hd44780_db_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y78"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_5_OBUF_I,
      O => hd44780_db(5)
    );
  hd44780_rw_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y63"
    )
    port map (
      I => '0',
      O => hd44780_rw
    );
  U2_U4_NET1653175 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y82",
      INIT => X"4000000000000000"
    )
    port map (
      ADR3 => U2_U4_NET1653135_1454,
      ADR5 => U2_U4_U2_COUNT(4),
      ADR2 => U2_U4_U2_COUNT(5),
      ADR4 => U2_U4_U2_COUNT(6),
      ADR1 => U2_U4_U2_COUNT(7),
      ADR0 => U2_U4_U2_COUNT(3),
      O => U2_U4_NET1653175_1539
    );
  U2_U4_NET16531148 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y82",
      INIT => X"0000000000100000"
    )
    port map (
      ADR5 => U2_U4_U2_COUNT(13),
      ADR0 => U2_U4_U2_COUNT(14),
      ADR1 => U2_U4_U2_COUNT(15),
      ADR4 => U2_U4_NET1653175_1539,
      ADR2 => U2_U4_U2_COUNT(2),
      ADR3 => U2_U4_U2_COUNT(1),
      O => U2_U4_NET16531148_1448
    );
  hd44780_db_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y71"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_0_OBUF_I,
      O => hd44780_db(0)
    );
  hd44780_db_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y76"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_1_OBUF_I,
      O => hd44780_db(1)
    );
  U2_U4_U1_COUNT_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_3_CLK,
      I => U2_U4_U1_Mcount_COUNT3,
      O => U2_U4_U1_COUNT(3),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(3),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_3_rt_248
    );
  N0_12_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_12_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp84_CYINITVCC_1 : X_ONE
    generic map(
      LOC => "SLICE_X18Y81"
    )
    port map (
      O => NLW_ProtoComp84_CYINITVCC_1_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_2_CLK,
      I => U2_U4_U1_Mcount_COUNT2,
      O => U2_U4_U1_COUNT(2),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_Mcount_COUNT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y81"
    )
    port map (
      CI => '0',
      CYINIT => '1',
      CO(3) => U2_U4_U1_Mcount_COUNT_cy_3_Q_1533,
      CO(2) => NLW_U2_U4_U1_Mcount_COUNT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_U4_U1_Mcount_COUNT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_U4_U1_Mcount_COUNT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U2_U4_U1_Mcount_COUNT3,
      O(2) => U2_U4_U1_Mcount_COUNT2,
      O(1) => U2_U4_U1_Mcount_COUNT1,
      O(0) => U2_U4_U1_Mcount_COUNT,
      S(3) => U2_U4_U1_COUNT_3_rt_248,
      S(2) => U2_U4_U1_COUNT_2_rt_270,
      S(1) => U2_U4_U1_COUNT_1_rt_262,
      S(0) => U2_U4_U1_COUNT_0_rt_260
    );
  U2_U4_U1_COUNT_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(2),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_2_rt_270
    );
  N0_13_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_13_SLICEL_C5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_1 : X_FF
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_1_CLK,
      I => U2_U4_U1_Mcount_COUNT1,
      O => U2_U4_U1_COUNT(1),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(1),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_1_rt_262
    );
  N0_14_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_14_SLICEL_B5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_0 : X_FF
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_0_CLK,
      I => U2_U4_U1_Mcount_COUNT,
      O => U2_U4_U1_COUNT(0),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(0),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_0_rt_260
    );
  N0_15_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_15_SLICEL_A5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_15 : X_FF
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_15_CLK,
      I => U2_U4_U2_Mcount_COUNT15,
      O => U2_U4_U2_COUNT(15),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(15),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_15_rt_230
    );
  U2_U4_U2_COUNT_14 : X_FF
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_14_CLK,
      I => U2_U4_U2_Mcount_COUNT14,
      O => U2_U4_U2_COUNT(14),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_Mcount_COUNT_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X19Y84"
    )
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy_11_Q_1532,
      CYINIT => '0',
      CO(3) => NLW_U2_U4_U2_Mcount_COUNT_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_U2_U4_U2_Mcount_COUNT_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_U4_U2_Mcount_COUNT_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_U4_U2_Mcount_COUNT_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_U2_U4_U2_Mcount_COUNT_xor_15_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U2_U4_U2_Mcount_COUNT15,
      O(2) => U2_U4_U2_Mcount_COUNT14,
      O(1) => U2_U4_U2_Mcount_COUNT13,
      O(0) => U2_U4_U2_Mcount_COUNT12,
      S(3) => U2_U4_U2_COUNT_15_rt_230,
      S(2) => U2_U4_U2_COUNT_14_rt_227,
      S(1) => U2_U4_U2_COUNT_13_rt_231,
      S(0) => U2_U4_U2_COUNT_12_rt_238
    );
  U2_U4_U2_COUNT_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(14),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_14_rt_227
    );
  N0_16_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_16_SLICEL_C5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_13 : X_FF
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_13_CLK,
      I => U2_U4_U2_Mcount_COUNT13,
      O => U2_U4_U2_COUNT(13),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(13),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_13_rt_231
    );
  N0_17_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_17_SLICEL_B5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_12 : X_FF
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_12_CLK,
      I => U2_U4_U2_Mcount_COUNT12,
      O => U2_U4_U2_COUNT(12),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(12),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_12_rt_238
    );
  N0_18_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_18_SLICEL_A5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_11 : X_FF
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_11_CLK,
      I => U2_U4_U2_Mcount_COUNT11,
      O => U2_U4_U2_COUNT(11),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(11),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_11_rt_197
    );
  N0_19_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_19_SLICEL_D5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_10 : X_FF
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_10_CLK,
      I => U2_U4_U2_Mcount_COUNT10,
      O => U2_U4_U2_COUNT(10),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_Mcount_COUNT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X19Y83"
    )
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy_7_Q_1531,
      CYINIT => '0',
      CO(3) => U2_U4_U2_Mcount_COUNT_cy_11_Q_1532,
      CO(2) => NLW_U2_U4_U2_Mcount_COUNT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_U4_U2_Mcount_COUNT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_U4_U2_Mcount_COUNT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U2_U4_U2_Mcount_COUNT11,
      O(2) => U2_U4_U2_Mcount_COUNT10,
      O(1) => U2_U4_U2_Mcount_COUNT9,
      O(0) => U2_U4_U2_Mcount_COUNT8,
      S(3) => U2_U4_U2_COUNT_11_rt_197,
      S(2) => U2_U4_U2_COUNT_10_rt_203,
      S(1) => U2_U4_U2_COUNT_9_rt_215,
      S(0) => U2_U4_U2_COUNT_8_rt_211
    );
  U2_U4_U2_COUNT_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(10),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_10_rt_203
    );
  N0_20_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_20_SLICEL_C5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_9 : X_FF
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_9_CLK,
      I => U2_U4_U2_Mcount_COUNT9,
      O => U2_U4_U2_COUNT(9),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(9),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_9_rt_215
    );
  N0_21_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_21_SLICEL_B5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_8 : X_FF
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_8_CLK,
      I => U2_U4_U2_Mcount_COUNT8,
      O => U2_U4_U2_COUNT(8),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(8),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_8_rt_211
    );
  N0_22_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_22_SLICEL_A5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_15 : X_FF
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_15_CLK,
      I => U2_U4_U1_Mcount_COUNT15,
      O => U2_U4_U1_COUNT(15),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(15),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_15_rt_339
    );
  U2_U4_U1_COUNT_14 : X_FF
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_14_CLK,
      I => U2_U4_U1_Mcount_COUNT14,
      O => U2_U4_U1_COUNT(14),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_Mcount_COUNT_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y84"
    )
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy_11_Q_1535,
      CYINIT => '0',
      CO(3) => NLW_U2_U4_U1_Mcount_COUNT_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_U2_U4_U1_Mcount_COUNT_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_U4_U1_Mcount_COUNT_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_U4_U1_Mcount_COUNT_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_U2_U4_U1_Mcount_COUNT_xor_15_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U2_U4_U1_Mcount_COUNT15,
      O(2) => U2_U4_U1_Mcount_COUNT14,
      O(1) => U2_U4_U1_Mcount_COUNT13,
      O(0) => U2_U4_U1_Mcount_COUNT12,
      S(3) => U2_U4_U1_COUNT_15_rt_339,
      S(2) => U2_U4_U1_COUNT_14_rt_336,
      S(1) => U2_U4_U1_COUNT_13_rt_340,
      S(0) => U2_U4_U1_COUNT_12_rt_347
    );
  U2_U4_U1_COUNT_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(14),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_14_rt_336
    );
  N0_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_SLICEL_C5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_13 : X_FF
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_13_CLK,
      I => U2_U4_U1_Mcount_COUNT13,
      O => U2_U4_U1_COUNT(13),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(13),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_13_rt_340
    );
  N0_2_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_2_SLICEL_B5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_12 : X_FF
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_12_CLK,
      I => U2_U4_U1_Mcount_COUNT12,
      O => U2_U4_U1_COUNT(12),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(12),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_12_rt_347
    );
  N0_3_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_SLICEL_A5LUT_O_UNCONNECTED
    );
  entree_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y178",
      PATHPULSE => 343 ps
    )
    port map (
      I => entree(3),
      O => entree_3_IBUF_1561
    );
  entree_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y173",
      PATHPULSE => 343 ps
    )
    port map (
      I => entree(2),
      O => entree_2_IBUF_1558
    );
  U2_U4_U1_COUNT_7 : X_FF
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_7_CLK,
      I => U2_U4_U1_Mcount_COUNT7,
      O => U2_U4_U1_COUNT(7),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(7),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_7_rt_278
    );
  N0_8_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_8_SLICEL_D5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_6 : X_FF
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_6_CLK,
      I => U2_U4_U1_Mcount_COUNT6,
      O => U2_U4_U1_COUNT(6),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_Mcount_COUNT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y82"
    )
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy_3_Q_1533,
      CYINIT => '0',
      CO(3) => U2_U4_U1_Mcount_COUNT_cy_7_Q_1534,
      CO(2) => NLW_U2_U4_U1_Mcount_COUNT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_U4_U1_Mcount_COUNT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_U4_U1_Mcount_COUNT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U2_U4_U1_Mcount_COUNT7,
      O(2) => U2_U4_U1_Mcount_COUNT6,
      O(1) => U2_U4_U1_Mcount_COUNT5,
      O(0) => U2_U4_U1_Mcount_COUNT4,
      S(3) => U2_U4_U1_COUNT_7_rt_278,
      S(2) => U2_U4_U1_COUNT_6_rt_284,
      S(1) => U2_U4_U1_COUNT_5_rt_296,
      S(0) => U2_U4_U1_COUNT_4_rt_292
    );
  U2_U4_U1_COUNT_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(6),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_6_rt_284
    );
  N0_9_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_9_SLICEL_C5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_5 : X_FF
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_5_CLK,
      I => U2_U4_U1_Mcount_COUNT5,
      O => U2_U4_U1_COUNT(5),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(5),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_5_rt_296
    );
  N0_10_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_10_SLICEL_B5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_4 : X_FF
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_4_CLK,
      I => U2_U4_U1_Mcount_COUNT4,
      O => U2_U4_U1_COUNT(4),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(4),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_4_rt_292
    );
  N0_11_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_11_SLICEL_A5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_11 : X_FF
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_11_CLK,
      I => U2_U4_U1_Mcount_COUNT11,
      O => U2_U4_U1_COUNT(11),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(11),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_11_rt_306
    );
  N0_4_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_SLICEL_D5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_10 : X_FF
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_10_CLK,
      I => U2_U4_U1_Mcount_COUNT10,
      O => U2_U4_U1_COUNT(10),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_Mcount_COUNT_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y83"
    )
    port map (
      CI => U2_U4_U1_Mcount_COUNT_cy_7_Q_1534,
      CYINIT => '0',
      CO(3) => U2_U4_U1_Mcount_COUNT_cy_11_Q_1535,
      CO(2) => NLW_U2_U4_U1_Mcount_COUNT_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_U4_U1_Mcount_COUNT_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_U4_U1_Mcount_COUNT_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U2_U4_U1_Mcount_COUNT11,
      O(2) => U2_U4_U1_Mcount_COUNT10,
      O(1) => U2_U4_U1_Mcount_COUNT9,
      O(0) => U2_U4_U1_Mcount_COUNT8,
      S(3) => U2_U4_U1_COUNT_11_rt_306,
      S(2) => U2_U4_U1_COUNT_10_rt_312,
      S(1) => U2_U4_U1_COUNT_9_rt_324,
      S(0) => U2_U4_U1_COUNT_8_rt_320
    );
  U2_U4_U1_COUNT_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(10),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_10_rt_312
    );
  N0_5_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_5_SLICEL_C5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_9 : X_FF
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_9_CLK,
      I => U2_U4_U1_Mcount_COUNT9,
      O => U2_U4_U1_COUNT(9),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(9),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_9_rt_324
    );
  N0_6_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_SLICEL_B5LUT_O_UNCONNECTED
    );
  U2_U4_U1_COUNT_8 : X_FF
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U1_COUNT_8_CLK,
      I => U2_U4_U1_Mcount_COUNT8,
      O => U2_U4_U1_COUNT(8),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U1_COUNT_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U1_COUNT(8),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U1_COUNT_8_rt_320
    );
  N0_7_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_SLICEL_A5LUT_O_UNCONNECTED
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IOB_X1Y67",
      PATHPULSE => 343 ps
    )
    port map (
      I => clk,
      O => clk_IBUF
    );
  sel_IMUX : X_BUF
    generic map(
      LOC => "IOB_X1Y177",
      PATHPULSE => 343 ps
    )
    port map (
      I => sel_IBUF_1569,
      O => sel_IBUF_1375
    );
  sel_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y177",
      PATHPULSE => 343 ps
    )
    port map (
      I => sel,
      O => sel_IBUF_1569
    );
  hd44780_en_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y75"
    )
    port map (
      I => NlwBufferSignal_hd44780_en_OBUF_I,
      O => hd44780_en
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"FCCCFCCCFCCCFCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR1 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR3 => U1_my_hd44780_simple_running(0),
      ADR2 => U1_my_hd44780_simple_clk_us_1491,
      O => N63
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"FFFFFFFFFFFFCFCF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => U1_my_hd44780_simple_valuez(10),
      ADR4 => U1_my_hd44780_simple_valuez(11),
      ADR2 => U1_my_hd44780_simple_clk_us_1491,
      ADR1 => U1_my_hd44780_simple_valuez(8),
      O => N32
    );
  U1_my_hd44780_simple_timer_us_value_15 : X_FF
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_15_CLK,
      I => U1_my_hd44780_simple_timer_us_value_mux0000_0_Q,
      O => U1_my_hd44780_simple_timer_us_value_15_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"AAAAAAAAFAAAFAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => U1_my_hd44780_simple_cur_state(0),
      ADR3 => U1_my_hd44780_simple_timer_us_value_15_Q,
      ADR5 => U1_my_hd44780_simple_cur_state(6),
      ADR2 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_0_Q
    );
  U1_my_hd44780_simple_timer_us_value_12 : X_FF
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_12_CLK,
      I => U1_my_hd44780_simple_timer_us_value_mux0000_3_Q,
      O => U1_my_hd44780_simple_timer_us_value_12_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y54",
      INIT => X"AAAAAAAAFAAAFAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => U1_my_hd44780_simple_cur_state(0),
      ADR3 => U1_my_hd44780_simple_timer_us_value_12_Q,
      ADR5 => U1_my_hd44780_simple_cur_state(6),
      ADR2 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_3_Q
    );
  U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X33Y52",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_CLK,
      I => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In,
      O => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1381,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y52",
      INIT => X"00000F0000FF0F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U1_my_hd44780_simple_cur_state(1),
      ADR3 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1381,
      ADR5 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In
    );
  U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X33Y52",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_CLK,
      I => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In,
      O => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y52",
      INIT => X"AAAA0F00FFAA0F00"
    )
    port map (
      ADR1 => '1',
      ADR4 => U1_my_hd44780_simple_cur_state(1),
      ADR0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1381,
      ADR3 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR5 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In
    );
  U1_my_hd44780_simple_en_count_3 : X_FF
    generic map(
      LOC => "SLICE_X32Y45",
      INIT => '1'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_en_count_3_CLK,
      I => U1_my_hd44780_simple_en_count_mux0000(1),
      O => U1_my_hd44780_simple_en_count(3),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_en_count_mux0000_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y45",
      INIT => X"FEF5FEF5FEF0FEF0"
    )
    port map (
      ADR4 => '1',
      ADR0 => U1_my_hd44780_simple_en_count(2),
      ADR1 => U1_my_hd44780_simple_N20,
      ADR3 => U1_my_hd44780_simple_en_count(3),
      ADR5 => U1_my_hd44780_simple_N24,
      ADR2 => U1_my_hd44780_simple_N10,
      O => U1_my_hd44780_simple_en_count_mux0000(1)
    );
  U1_my_hd44780_simple_en_count_mux0000_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y45",
      INIT => X"FFFF0C0CFFFF0C0C"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U1_my_hd44780_simple_en_started(0),
      ADR1 => U1_my_hd44780_simple_cur_state(2),
      ADR4 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_N10
    );
  U1_my_hd44780_simple_en_count_4 : X_FF
    generic map(
      LOC => "SLICE_X32Y45",
      INIT => '1'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_en_count_4_CLK,
      I => U1_my_hd44780_simple_en_count_mux0000(0),
      O => U1_my_hd44780_simple_en_count(4),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_en_count_mux0000_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y45",
      INIT => X"FFFFAAAAFFFFAA88"
    )
    port map (
      ADR2 => '1',
      ADR5 => U1_my_hd44780_simple_en_count(2),
      ADR1 => U1_my_hd44780_simple_en_count(3),
      ADR0 => U1_my_hd44780_simple_en_count(4),
      ADR3 => U1_my_hd44780_simple_N20,
      ADR4 => U1_my_hd44780_simple_N10,
      O => U1_my_hd44780_simple_en_count_mux0000(0)
    );
  U1_my_hd44780_simple_timer_us_value_11 : X_FF
    generic map(
      LOC => "SLICE_X31Y53",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_11_CLK,
      I => U1_my_hd44780_simple_timer_us_value_mux0000_4_Q,
      O => U1_my_hd44780_simple_timer_us_value_11_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y53",
      INIT => X"DDCCCCCCDDCCCCCC"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => U1_my_hd44780_simple_cur_state(0),
      ADR3 => U1_my_hd44780_simple_timer_us_value_11_Q,
      ADR0 => U1_my_hd44780_simple_cur_state(6),
      ADR4 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_4_Q
    );
  U1_my_hd44780_simple_timer_us_value_10 : X_FF
    generic map(
      LOC => "SLICE_X31Y53",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_10_CLK,
      I => U1_my_hd44780_simple_timer_us_value_mux0000_5_Q,
      O => U1_my_hd44780_simple_timer_us_value_10_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y53",
      INIT => X"FFEEEEEEFFEEEEEE"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U1_my_hd44780_simple_cur_state(0),
      ADR3 => U1_my_hd44780_simple_timer_us_value_10_Q,
      ADR0 => U1_my_hd44780_simple_cur_state(6),
      ADR4 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_5_Q
    );
  U1_my_hd44780_simple_timer_us_value_8 : X_FF
    generic map(
      LOC => "SLICE_X31Y53",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_8_CLK,
      I => U1_my_hd44780_simple_timer_us_value_mux0000_7_Q,
      O => U1_my_hd44780_simple_timer_us_value_8_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y53",
      INIT => X"FFFFFFFF00A000A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => U1_my_hd44780_simple_cur_state(6),
      ADR0 => U1_my_hd44780_simple_timer_us_value_8_Q,
      ADR3 => U1_my_hd44780_simple_cur_state(0),
      ADR2 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_7_Q
    );
  U1_my_hd44780_simple_timer_us_value_7 : X_FF
    generic map(
      LOC => "SLICE_X31Y53",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_7_CLK,
      I => U1_my_hd44780_simple_timer_us_value_mux0000_8_Q,
      O => U1_my_hd44780_simple_timer_us_value_7_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y53",
      INIT => X"FFFFFFFF00A000A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => U1_my_hd44780_simple_cur_state(6),
      ADR0 => U1_my_hd44780_simple_timer_us_value_7_Q,
      ADR3 => U1_my_hd44780_simple_cur_state(0),
      ADR2 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_8_Q
    );
  U2_U1_cout_not00011 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"AAAAAAAA55555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => sel_IBUF_1375,
      ADR0 => U2_U3_COUNT(0),
      O => U2_U1_cout_not0001
    );
  U1_my_hd44780_simple_en_count_mux0000_0_111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y44",
      INIT => X"EEEEFFFFEEEEFFFF"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U1_my_hd44780_simple_en_count(0),
      ADR4 => U1_my_hd44780_simple_cur_state(2),
      ADR0 => U1_my_hd44780_simple_en_count(1),
      O => U1_my_hd44780_simple_N20
    );
  U1_my_hd44780_simple_valuez_cmp_le00002104 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y52",
      INIT => X"0000000000000001"
    )
    port map (
      ADR4 => U1_my_hd44780_simple_valuez(1),
      ADR1 => U1_my_hd44780_simple_valuez(0),
      ADR0 => U1_my_hd44780_simple_valuez(2),
      ADR2 => U1_my_hd44780_simple_valuez(3),
      ADR5 => U1_my_hd44780_simple_valuez(4),
      ADR3 => U1_my_hd44780_simple_valuez(5),
      O => U1_my_hd44780_simple_valuez_cmp_le00002104_1398
    );
  U1_my_hd44780_simple_en_count_1 : X_FF
    generic map(
      LOC => "SLICE_X33Y45",
      INIT => '1'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_en_count_1_CLK,
      I => U1_my_hd44780_simple_en_count_mux0000(3),
      O => U1_my_hd44780_simple_en_count(1),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_en_count_mux0000_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y45",
      INIT => X"FBF4FFFFFFF0FFF0"
    )
    port map (
      ADR5 => U1_my_hd44780_simple_cur_state(2),
      ADR4 => U1_my_hd44780_simple_en_started(0),
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      ADR3 => U1_my_hd44780_simple_en_count(1),
      ADR1 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      ADR0 => U1_my_hd44780_simple_en_count(0),
      O => U1_my_hd44780_simple_en_count_mux0000(3)
    );
  U1_my_hd44780_simple_en_count_0 : X_FF
    generic map(
      LOC => "SLICE_X33Y45",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_en_count_0_CLK,
      I => U1_my_hd44780_simple_en_count_mux0000(4),
      O => U1_my_hd44780_simple_en_count(0),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_en_count_mux0000_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y45",
      INIT => X"660A000A660A000A"
    )
    port map (
      ADR5 => '1',
      ADR3 => U1_my_hd44780_simple_cur_state(2),
      ADR4 => U1_my_hd44780_simple_en_started(0),
      ADR0 => U1_my_hd44780_simple_en_count(0),
      ADR1 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_en_count_mux0000(4)
    );
  U1_my_hd44780_simple_en_count_mux0000_1_31 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y45",
      INIT => X"0000505000005040"
    )
    port map (
      ADR4 => U1_my_hd44780_simple_en_count(0),
      ADR2 => U1_my_hd44780_simple_cur_state(2),
      ADR0 => U1_my_hd44780_simple_en_count(1),
      ADR3 => U1_my_hd44780_simple_en_count(4),
      ADR5 => U1_my_hd44780_simple_en_count(2),
      ADR1 => U1_my_hd44780_simple_en_count(3),
      O => U1_my_hd44780_simple_N24
    );
  U1_my_hd44780_simple_en_count_2 : X_FF
    generic map(
      LOC => "SLICE_X33Y45",
      INIT => '1'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_en_count_2_CLK,
      I => U1_my_hd44780_simple_en_count_mux0000(2),
      O => U1_my_hd44780_simple_en_count(2),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_en_count_mux0000_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y45",
      INIT => X"FFFFFFAAEFFFEFAA"
    )
    port map (
      ADR1 => U1_my_hd44780_simple_en_count(1),
      ADR5 => U1_my_hd44780_simple_en_count(0),
      ADR2 => U1_my_hd44780_simple_cur_state(2),
      ADR3 => U1_my_hd44780_simple_en_count(2),
      ADR0 => U1_my_hd44780_simple_N10,
      ADR4 => U1_my_hd44780_simple_N24,
      O => U1_my_hd44780_simple_en_count_mux0000(2)
    );
  U1_my_hd44780_simple_state2timer_go : X_FF
    generic map(
      LOC => "SLICE_X32Y52",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_state2timer_go_CLK,
      I => U1_my_hd44780_simple_state2timer_go_mux0000,
      O => U1_my_hd44780_simple_state2timer_go_1384,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_state2timer_go_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y52",
      INIT => X"55000F0055550F00"
    )
    port map (
      ADR1 => '1',
      ADR4 => U1_my_hd44780_simple_cur_state(1),
      ADR0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1381,
      ADR3 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR5 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_state2timer_go_mux0000
    );
  U1_my_hd44780_simple_valuez_0_U1_my_hd44780_simple_valuez_0_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => N64_pack_6,
      O => N64
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW4 : X_MUX2
    generic map(
      LOC => "SLICE_X31Y54"
    )
    port map (
      IA => N68,
      IB => '1',
      O => N64_pack_6,
      SEL => U1_my_hd44780_simple_state2timer_go_1384
    );
  U1_my_hd44780_simple_valuez_0 : X_FF
    generic map(
      LOC => "SLICE_X31Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_0_CLK,
      I => U1_my_hd44780_simple_valuez_0_rstpot_538,
      O => U1_my_hd44780_simple_valuez(0),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_valuez_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X31Y54",
      INIT => X"FFFF1D55E2AA0000"
    )
    port map (
      ADR4 => U1_my_hd44780_simple_Mcount_valuez_0,
      ADR0 => N63,
      ADR1 => U1_my_hd44780_simple_valuez_cmp_le00002104_1398,
      ADR5 => U1_my_hd44780_simple_valuez(0),
      ADR3 => U1_my_hd44780_simple_valuez_cmp_le0000235_1399,
      ADR2 => N64,
      O => U1_my_hd44780_simple_valuez_0_rstpot_538
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y54",
      INIT => X"FFFFFFFFFFFFFFCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => U1_my_hd44780_simple_valuez(9),
      ADR5 => U1_my_hd44780_simple_valuez(8),
      ADR4 => U1_my_hd44780_simple_valuez(11),
      ADR3 => U1_my_hd44780_simple_valuez(10),
      O => N19
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW4_F : X_LUT6
    generic map(
      LOC => "SLICE_X31Y54",
      INIT => X"A0A0A0A0A0A0A080"
    )
    port map (
      ADR0 => U1_my_hd44780_simple_clk_us_1491,
      ADR2 => U1_my_hd44780_simple_running(0),
      ADR4 => U1_my_hd44780_simple_valuez(9),
      ADR5 => U1_my_hd44780_simple_valuez(8),
      ADR3 => U1_my_hd44780_simple_valuez(11),
      ADR1 => U1_my_hd44780_simple_valuez(10),
      O => N68
    );
  Dangling_Input_Signal_20_SLICEL_A6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X31Y54",
      INIT => X"FFFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_Dangling_Input_Signal_20_SLICEL_A6LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_running_0 : X_FF
    generic map(
      LOC => "SLICE_X33Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_running_0_CLK,
      I => U1_my_hd44780_simple_running_0_rstpot_674,
      O => U1_my_hd44780_simple_running(0),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_running_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X33Y54",
      INIT => X"FFFFFFFFFB00FF00"
    )
    port map (
      ADR0 => U1_my_hd44780_simple_valuez(9),
      ADR5 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR2 => N32,
      ADR3 => U1_my_hd44780_simple_running(0),
      ADR1 => U1_my_hd44780_simple_valuez_cmp_le00002104_1398,
      ADR4 => U1_my_hd44780_simple_valuez_cmp_le0000235_1399,
      O => U1_my_hd44780_simple_running_0_rstpot_674
    );
  U1_my_hd44780_simple_timer2state_done : X_FF
    generic map(
      LOC => "SLICE_X33Y54",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer2state_done_CLK,
      I => U1_my_hd44780_simple_timer2state_done_rstpot_693,
      O => U1_my_hd44780_simple_timer2state_done_1383,
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_timer2state_done_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X33Y54",
      INIT => X"5555100055550000"
    )
    port map (
      ADR1 => U1_my_hd44780_simple_valuez(9),
      ADR0 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR5 => N34,
      ADR4 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR3 => U1_my_hd44780_simple_valuez_cmp_le00002104_1398,
      ADR2 => U1_my_hd44780_simple_valuez_cmp_le0000235_1399,
      O => U1_my_hd44780_simple_timer2state_done_rstpot_693
    );
  U1_my_hd44780_simple_valuez_cmp_le00002106_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y54",
      INIT => X"0004000000040000"
    )
    port map (
      ADR5 => '1',
      ADR4 => U1_my_hd44780_simple_clk_us_1491,
      ADR1 => U1_my_hd44780_simple_running(0),
      ADR3 => U1_my_hd44780_simple_valuez(8),
      ADR2 => U1_my_hd44780_simple_valuez(11),
      ADR0 => U1_my_hd44780_simple_valuez(10),
      O => N34
    );
  U1_my_hd44780_simple_valuez_cmp_le0000235 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y55",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => U1_my_hd44780_simple_valuez(13),
      ADR0 => U1_my_hd44780_simple_valuez(12),
      ADR1 => U1_my_hd44780_simple_valuez(14),
      ADR4 => U1_my_hd44780_simple_valuez(15),
      ADR3 => U1_my_hd44780_simple_valuez(6),
      ADR2 => U1_my_hd44780_simple_valuez(7),
      O => U1_my_hd44780_simple_valuez_cmp_le0000235_1399
    );
  U1_my_hd44780_simple_valuez_not00011 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y55",
      INIT => X"FFFFFFFF80888888"
    )
    port map (
      ADR1 => U1_my_hd44780_simple_clk_us_1491,
      ADR0 => U1_my_hd44780_simple_running(0),
      ADR5 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR2 => N19,
      ADR3 => U1_my_hd44780_simple_valuez_cmp_le00002104_1398,
      ADR4 => U1_my_hd44780_simple_valuez_cmp_le0000235_1399,
      O => U1_my_hd44780_simple_valuez_not0001
    );
  N58_N58_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => N61,
      O => N61_0
    );
  U1_my_hd44780_simple_cur_state_mux0000_2_SW0_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X34Y45"
    )
    port map (
      IA => N66,
      IB => N67,
      O => N61,
      SEL => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW15 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y45",
      INIT => X"C4C4CCCCC4C4CCCC"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U1_my_hd44780_simple_next_state_0_Q,
      ADR4 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR1 => U1_my_hd44780_simple_cur_state(1),
      O => N58
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW14 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y45",
      INIT => X"8080000080800000"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR4 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR1 => U1_my_hd44780_simple_cur_state(1),
      ADR2 => U1_my_hd44780_simple_next_state_0_Q,
      O => N57
    );
  U1_my_hd44780_simple_cur_state_mux0000_2_SW0_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X34Y45",
      INIT => X"FFFFFFFFFFFFEECC"
    )
    port map (
      ADR2 => '1',
      ADR1 => U1_my_hd44780_simple_cur_state(7),
      ADR4 => U1_my_hd44780_simple_cur_state(9),
      ADR0 => U1_my_hd44780_simple_cur_state(2),
      ADR3 => U1_my_hd44780_simple_cur_state(1),
      ADR5 => U1_my_hd44780_simple_cur_state(8),
      O => N66
    );
  U1_my_hd44780_simple_cur_state_mux0000_2_SW0_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X34Y45",
      INIT => X"FFFFFFFFFFFFCECC"
    )
    port map (
      ADR1 => U1_my_hd44780_simple_cur_state(7),
      ADR0 => U1_my_hd44780_simple_cur_state(2),
      ADR2 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR5 => U1_my_hd44780_simple_cur_state(8),
      ADR3 => U1_my_hd44780_simple_cur_state(1),
      ADR4 => U1_my_hd44780_simple_cur_state(9),
      O => N67
    );
  U1_my_hd44780_simple_cur_state_3 : X_FF
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_state_3_CLK,
      I => U1_my_hd44780_simple_cur_state_mux0000(3),
      O => U1_my_hd44780_simple_cur_state(3),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_cur_state_mux0000_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => X"EEFFAEFFEE00AE00"
    )
    port map (
      ADR2 => U1_my_hd44780_simple_en_started(0),
      ADR1 => U1_my_hd44780_simple_cur_state(2),
      ADR5 => N54,
      ADR3 => U1_my_hd44780_simple_cur_state(3),
      ADR0 => N55,
      ADR4 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(3)
    );
  U1_my_hd44780_simple_cur_state_2 : X_FF
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_state_2_CLK,
      I => U1_my_hd44780_simple_cur_state_mux0000(2),
      O => U1_my_hd44780_simple_cur_state(2),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_cur_state_mux0000_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => X"FFFFFFFFFBFAF8FA"
    )
    port map (
      ADR3 => U1_my_hd44780_simple_en_started(0),
      ADR2 => U1_my_hd44780_simple_cur_state(6),
      ADR5 => U1_my_hd44780_simple_N111,
      ADR0 => N60,
      ADR1 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      ADR4 => N61_0,
      O => U1_my_hd44780_simple_cur_state_mux0000(2)
    );
  U1_my_hd44780_simple_cur_state_1 : X_FF
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_state_1_CLK,
      I => U1_my_hd44780_simple_cur_state_mux0000(1),
      O => U1_my_hd44780_simple_cur_state(1),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_cur_state_mux0000_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => X"FFFFFF0CFFFF5500"
    )
    port map (
      ADR1 => U1_my_hd44780_simple_en_started(0),
      ADR5 => U1_my_hd44780_simple_cur_state(2),
      ADR4 => U1_my_hd44780_simple_cur_state(0),
      ADR3 => U1_my_hd44780_simple_cur_state(1),
      ADR0 => N4,
      ADR2 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(1)
    );
  U1_my_hd44780_simple_cur_state_0 : X_FF
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_state_0_CLK,
      I => U1_my_hd44780_simple_cur_state_mux0000(0),
      O => U1_my_hd44780_simple_cur_state(0),
      RST => GND,
      SET => reset_IBUF_1400
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y46",
      INIT => X"EFE0EFE0AFA0EFE0"
    )
    port map (
      ADR4 => U1_my_hd44780_simple_en_started(0),
      ADR1 => U1_my_hd44780_simple_cur_state(2),
      ADR3 => N57,
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      ADR0 => N58,
      ADR5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(0)
    );
  U1_my_hd44780_simple_valuez_15 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_15_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez15,
      O => U1_my_hd44780_simple_valuez(15),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"4477447744774477"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => U1_my_hd44780_simple_valuez(15),
      ADR1 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR0 => U1_my_hd44780_simple_timer_us_value_15_Q,
      O => U1_my_hd44780_simple_Mcount_valuez_lut(15)
    );
  U1_my_hd44780_simple_valuez_14 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_14_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez14,
      O => U1_my_hd44780_simple_valuez(14),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y55"
    )
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy_11_Q_1529,
      CYINIT => '0',
      CO(3) => NLW_U1_my_hd44780_simple_Mcount_valuez_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_U1_my_hd44780_simple_Mcount_valuez_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_my_hd44780_simple_Mcount_valuez_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_my_hd44780_simple_Mcount_valuez_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_U1_my_hd44780_simple_Mcount_valuez_xor_15_DI_3_UNCONNECTED,
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => U1_my_hd44780_simple_Mcount_valuez15,
      O(2) => U1_my_hd44780_simple_Mcount_valuez14,
      O(1) => U1_my_hd44780_simple_Mcount_valuez13,
      O(0) => U1_my_hd44780_simple_Mcount_valuez12,
      S(3) => U1_my_hd44780_simple_Mcount_valuez_lut(15),
      S(2) => U1_my_hd44780_simple_Mcount_valuez_lut(14),
      S(1) => U1_my_hd44780_simple_Mcount_valuez_lut(13),
      S(0) => U1_my_hd44780_simple_Mcount_valuez_lut(12)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"CCFFCCFFCCFFCCFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => U1_my_hd44780_simple_valuez(14),
      ADR1 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(14)
    );
  Dangling_Input_Signal_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_13 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_13_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez13,
      O => U1_my_hd44780_simple_valuez(13),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FF0FFF0FFF0FFF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => U1_my_hd44780_simple_valuez(13),
      ADR3 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(13)
    );
  Dangling_Input_Signal_2_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_2_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_12 : X_FF
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_12_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez12,
      O => U1_my_hd44780_simple_valuez(12),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"0055FF550055FF55"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR0 => U1_my_hd44780_simple_valuez(12),
      ADR4 => U1_my_hd44780_simple_timer_us_value_12_Q,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(12)
    );
  Dangling_Input_Signal_3_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y55",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_3_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_11 : X_FF
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_11_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez11,
      O => U1_my_hd44780_simple_valuez(11),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"4477447744774477"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR3 => U1_my_hd44780_simple_valuez(11),
      ADR0 => U1_my_hd44780_simple_timer_us_value_11_Q,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(11)
    );
  Dangling_Input_Signal_4_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_4_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_10 : X_FF
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_10_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez10,
      O => U1_my_hd44780_simple_valuez(10),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y54"
    )
    port map (
      CI => U1_my_hd44780_simple_Mcount_valuez_cy_7_Q_1528,
      CYINIT => '0',
      CO(3) => U1_my_hd44780_simple_Mcount_valuez_cy_11_Q_1529,
      CO(2) => NLW_U1_my_hd44780_simple_Mcount_valuez_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_my_hd44780_simple_Mcount_valuez_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_my_hd44780_simple_Mcount_valuez_cy_11_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => U1_my_hd44780_simple_Mcount_valuez11,
      O(2) => U1_my_hd44780_simple_Mcount_valuez10,
      O(1) => U1_my_hd44780_simple_Mcount_valuez9,
      O(0) => U1_my_hd44780_simple_Mcount_valuez8,
      S(3) => U1_my_hd44780_simple_Mcount_valuez_lut(11),
      S(2) => U1_my_hd44780_simple_Mcount_valuez_lut(10),
      S(1) => U1_my_hd44780_simple_Mcount_valuez_lut(9),
      S(0) => U1_my_hd44780_simple_Mcount_valuez_lut(8)
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"0033CCFF0033CCFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR3 => U1_my_hd44780_simple_valuez(10),
      ADR4 => U1_my_hd44780_simple_timer_us_value_10_Q,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(10)
    );
  Dangling_Input_Signal_5_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_5_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_9 : X_FF
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_9_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez9,
      O => U1_my_hd44780_simple_valuez(9),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"FF00FFFFFF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U1_my_hd44780_simple_valuez(9),
      ADR3 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(9)
    );
  Dangling_Input_Signal_6_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_6_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_valuez_8 : X_FF
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_valuez_8_CLK,
      I => U1_my_hd44780_simple_Mcount_valuez8,
      O => U1_my_hd44780_simple_valuez(8),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_valuez_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"505F505F505F505F"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => U1_my_hd44780_simple_state2timer_go_1384,
      ADR3 => U1_my_hd44780_simple_valuez(8),
      ADR0 => U1_my_hd44780_simple_timer_us_value_8_Q,
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_valuez_lut(8)
    );
  Dangling_Input_Signal_7_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y54",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Dangling_Input_Signal_7_SLICEL_A5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_3 : X_FF
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_3_CLK,
      I => U2_U4_U2_Mcount_COUNT3,
      O => U2_U4_U2_COUNT(3),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(3),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_3_rt_139
    );
  N0_27_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_27_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp84_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X19Y81"
    )
    port map (
      O => NLW_ProtoComp84_CYINITVCC_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_2 : X_FF
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_2_CLK,
      I => U2_U4_U2_Mcount_COUNT2,
      O => U2_U4_U2_COUNT(2),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_Mcount_COUNT_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X19Y81"
    )
    port map (
      CI => '0',
      CYINIT => '1',
      CO(3) => U2_U4_U2_Mcount_COUNT_cy_3_Q_1530,
      CO(2) => NLW_U2_U4_U2_Mcount_COUNT_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_U4_U2_Mcount_COUNT_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_U4_U2_Mcount_COUNT_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U2_U4_U2_Mcount_COUNT3,
      O(2) => U2_U4_U2_Mcount_COUNT2,
      O(1) => U2_U4_U2_Mcount_COUNT1,
      O(0) => U2_U4_U2_Mcount_COUNT,
      S(3) => U2_U4_U2_COUNT_3_rt_139,
      S(2) => U2_U4_U2_COUNT_2_rt_161,
      S(1) => U2_U4_U2_COUNT_1_rt_153,
      S(0) => U2_U4_U2_COUNT_0_rt_151
    );
  U2_U4_U2_COUNT_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(2),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_2_rt_161
    );
  N0_28_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_28_SLICEL_C5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_1 : X_FF
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_1_CLK,
      I => U2_U4_U2_Mcount_COUNT1,
      O => U2_U4_U2_COUNT(1),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(1),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_1_rt_153
    );
  N0_29_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_29_SLICEL_B5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_0 : X_FF
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_0_CLK,
      I => U2_U4_U2_Mcount_COUNT,
      O => U2_U4_U2_COUNT(0),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(0),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_0_rt_151
    );
  N0_30_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y81",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_30_SLICEL_A5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_7 : X_FF
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_7_CLK,
      I => U2_U4_U2_Mcount_COUNT7,
      O => U2_U4_U2_COUNT(7),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(7),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_7_rt_169
    );
  N0_23_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_23_SLICEL_D5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_6 : X_FF
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_6_CLK,
      I => U2_U4_U2_Mcount_COUNT6,
      O => U2_U4_U2_COUNT(6),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_Mcount_COUNT_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X19Y82"
    )
    port map (
      CI => U2_U4_U2_Mcount_COUNT_cy_3_Q_1530,
      CYINIT => '0',
      CO(3) => U2_U4_U2_Mcount_COUNT_cy_7_Q_1531,
      CO(2) => NLW_U2_U4_U2_Mcount_COUNT_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_U4_U2_Mcount_COUNT_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_U4_U2_Mcount_COUNT_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U2_U4_U2_Mcount_COUNT7,
      O(2) => U2_U4_U2_Mcount_COUNT6,
      O(1) => U2_U4_U2_Mcount_COUNT5,
      O(0) => U2_U4_U2_Mcount_COUNT4,
      S(3) => U2_U4_U2_COUNT_7_rt_169,
      S(2) => U2_U4_U2_COUNT_6_rt_175,
      S(1) => U2_U4_U2_COUNT_5_rt_187,
      S(0) => U2_U4_U2_COUNT_4_rt_183
    );
  U2_U4_U2_COUNT_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(6),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_6_rt_175
    );
  N0_24_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_24_SLICEL_C5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_5 : X_FF
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_5_CLK,
      I => U2_U4_U2_Mcount_COUNT5,
      O => U2_U4_U2_COUNT(5),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(5),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_5_rt_187
    );
  N0_25_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_25_SLICEL_B5LUT_O_UNCONNECTED
    );
  U2_U4_U2_COUNT_4 : X_FF
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_U4_U2_COUNT_4_CLK,
      I => U2_U4_U2_Mcount_COUNT4,
      O => U2_U4_U2_COUNT(4),
      SET => GND,
      RST => U2_U4_NET1653
    );
  U2_U4_U2_COUNT_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_U4_U2_COUNT(4),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_U4_U2_COUNT_4_rt_183
    );
  N0_26_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X19Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_26_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW10 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y45",
      INIT => X"F000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR4 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR5 => U1_my_hd44780_simple_cur_state(1),
      ADR2 => U1_my_hd44780_simple_next_state_4_Q,
      O => N51
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW11 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y45",
      INIT => X"F0FFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U1_my_hd44780_simple_next_state_4_Q,
      ADR4 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR3 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR5 => U1_my_hd44780_simple_cur_state(1),
      O => N52
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW8 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y46",
      INIT => X"F000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR4 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR3 => U1_my_hd44780_simple_cur_state(1),
      ADR2 => U1_my_hd44780_simple_next_state_5_Q,
      O => N48
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW13 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y46",
      INIT => X"AA00FF00FF00FF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => U1_my_hd44780_simple_next_state_3_Q,
      ADR4 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR5 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR3 => U1_my_hd44780_simple_cur_state(1),
      O => N55
    );
  U1_my_hd44780_simple_cur_state_mux0000_2_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y45",
      INIT => X"FFFFFFFFFFFAFFFA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => U1_my_hd44780_simple_cur_state(9),
      ADR0 => U1_my_hd44780_simple_cur_state(8),
      ADR3 => U1_my_hd44780_simple_cur_state(7),
      ADR5 => U1_my_hd44780_simple_cur_state(2),
      O => N60
    );
  U1_my_hd44780_simple_en_started_0 : X_FF
    generic map(
      LOC => "SLICE_X35Y45",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_en_started_0_CLK,
      I => U1_my_hd44780_simple_en_started_0_mux0000,
      O => U1_my_hd44780_simple_en_started(0),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_en_started_0_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y45",
      INIT => X"F0FFF0FF0000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => U1_my_hd44780_simple_cur_state(2),
      ADR3 => U1_my_hd44780_simple_en_started(0),
      ADR4 => U1_my_hd44780_simple_cur_state(0),
      ADR2 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_en_started_0_mux0000
    );
  U1_my_hd44780_simple_cur_state_cmp_gt00001 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y45",
      INIT => X"FFFFFFFEFFFFFFFE"
    )
    port map (
      ADR5 => '1',
      ADR3 => U1_my_hd44780_simple_en_count(4),
      ADR4 => U1_my_hd44780_simple_en_count(0),
      ADR1 => U1_my_hd44780_simple_en_count(1),
      ADR2 => U1_my_hd44780_simple_en_count(2),
      ADR0 => U1_my_hd44780_simple_en_count(3),
      O => U1_my_hd44780_simple_cur_state_cmp_gt0000
    );
  U1_my_hd44780_simple_count_6 : X_FF
    generic map(
      LOC => "SLICE_X35Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_count_6_CLK,
      I => U1_my_hd44780_simple_Mcount_count6,
      O => U1_my_hd44780_simple_count(6),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_count_xor_6_11 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y57",
      INIT => X"FF00FF007E80FF00"
    )
    port map (
      ADR5 => U1_my_hd44780_simple_N19,
      ADR4 => U1_my_hd44780_simple_count(5),
      ADR0 => U1_my_hd44780_simple_count(2),
      ADR3 => U1_my_hd44780_simple_count(6),
      ADR1 => U1_my_hd44780_simple_count(4),
      ADR2 => U1_my_hd44780_simple_count(3),
      O => U1_my_hd44780_simple_Mcount_count6
    );
  U1_my_hd44780_simple_count_5 : X_FF
    generic map(
      LOC => "SLICE_X35Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_count_5_CLK,
      I => U1_my_hd44780_simple_Mcount_count5,
      O => U1_my_hd44780_simple_count(5),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_count_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y57",
      INIT => X"F708FE00F708FF00"
    )
    port map (
      ADR2 => U1_my_hd44780_simple_N19,
      ADR0 => U1_my_hd44780_simple_count(3),
      ADR4 => U1_my_hd44780_simple_count(4),
      ADR3 => U1_my_hd44780_simple_count(5),
      ADR1 => U1_my_hd44780_simple_count(2),
      ADR5 => U1_my_hd44780_simple_count(6),
      O => U1_my_hd44780_simple_Mcount_count5
    );
  U1_my_hd44780_simple_count_4 : X_FF
    generic map(
      LOC => "SLICE_X35Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_count_4_CLK,
      I => U1_my_hd44780_simple_Mcount_count4,
      O => U1_my_hd44780_simple_count(4),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_count_xor_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y57",
      INIT => X"66AAAAAAAAAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR3 => U1_my_hd44780_simple_count(0),
      ADR5 => U1_my_hd44780_simple_count(1),
      ADR0 => U1_my_hd44780_simple_count(4),
      ADR4 => U1_my_hd44780_simple_count(3),
      ADR1 => U1_my_hd44780_simple_count(2),
      O => U1_my_hd44780_simple_Mcount_count4
    );
  U1_my_hd44780_simple_cur_state_7 : X_FF
    generic map(
      LOC => "SLICE_X36Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_state_7_CLK,
      I => U1_my_hd44780_simple_cur_state_mux0000(7),
      O => U1_my_hd44780_simple_cur_state(7),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_cur_state_mux0000_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y46",
      INIT => X"FFCCAACCFFCC0ACC"
    )
    port map (
      ADR2 => U1_my_hd44780_simple_en_started(0),
      ADR0 => U1_my_hd44780_simple_cur_state(2),
      ADR1 => N42,
      ADR3 => U1_my_hd44780_simple_cur_state(7),
      ADR4 => N43,
      ADR5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(7)
    );
  U1_my_hd44780_simple_cur_state_6 : X_FF
    generic map(
      LOC => "SLICE_X36Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_state_6_CLK,
      I => U1_my_hd44780_simple_cur_state_mux0000(6),
      O => U1_my_hd44780_simple_cur_state(6),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_cur_state_mux0000_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y46",
      INIT => X"FBC8FBC8F3C0FBC8"
    )
    port map (
      ADR4 => U1_my_hd44780_simple_en_started(0),
      ADR0 => U1_my_hd44780_simple_cur_state(2),
      ADR3 => N45,
      ADR1 => U1_my_hd44780_simple_cur_state(6),
      ADR2 => N46,
      ADR5 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(6)
    );
  U1_my_hd44780_simple_cur_state_5 : X_FF
    generic map(
      LOC => "SLICE_X36Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_state_5_CLK,
      I => U1_my_hd44780_simple_cur_state_mux0000(5),
      O => U1_my_hd44780_simple_cur_state(5),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_cur_state_mux0000_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y46",
      INIT => X"EFFFEF00CCFFCC00"
    )
    port map (
      ADR2 => U1_my_hd44780_simple_en_started(0),
      ADR5 => U1_my_hd44780_simple_cur_state(2),
      ADR4 => N48,
      ADR3 => U1_my_hd44780_simple_cur_state(5),
      ADR1 => N49,
      ADR0 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(5)
    );
  U1_my_hd44780_simple_cur_state_4 : X_FF
    generic map(
      LOC => "SLICE_X36Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_state_4_CLK,
      I => U1_my_hd44780_simple_cur_state_mux0000(4),
      O => U1_my_hd44780_simple_cur_state(4),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_cur_state_mux0000_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y46",
      INIT => X"FF88FFCCF0F0F0F0"
    )
    port map (
      ADR4 => U1_my_hd44780_simple_en_started(0),
      ADR1 => U1_my_hd44780_simple_cur_state(2),
      ADR2 => N51,
      ADR5 => U1_my_hd44780_simple_cur_state(4),
      ADR3 => N52,
      ADR0 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(4)
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y47",
      INIT => X"8888000000000000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR4 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR5 => U1_my_hd44780_simple_cur_state(1),
      ADR0 => U1_my_hd44780_simple_next_state_6_Q,
      O => N45
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y47",
      INIT => X"F3F3FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => U1_my_hd44780_simple_next_state_7_Q,
      ADR4 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR1 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR5 => U1_my_hd44780_simple_cur_state(1),
      O => N43
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW7 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y47",
      INIT => X"AAAAAAAA0AAA0AAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => U1_my_hd44780_simple_next_state_6_Q,
      ADR2 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR3 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR0 => U1_my_hd44780_simple_cur_state(1),
      O => N46
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW9 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y47",
      INIT => X"AAAAAAAA0AAA0AAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => U1_my_hd44780_simple_next_state_5_Q,
      ADR2 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR3 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR0 => U1_my_hd44780_simple_cur_state(1),
      O => N49
    );
  U1_my_hd44780_simple_Mcount_count_xor_3_111 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y57",
      INIT => X"7777777777777777"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U1_my_hd44780_simple_count(0),
      ADR0 => U1_my_hd44780_simple_count(1),
      O => U1_my_hd44780_simple_N19
    );
  U1_my_hd44780_simple_clk_us : X_FF
    generic map(
      LOC => "SLICE_X34Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_clk_us_CLK,
      I => U1_my_hd44780_simple_count_cmp_eq0000,
      O => U1_my_hd44780_simple_clk_us_1491,
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_count_cmp_eq00001 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y57",
      INIT => X"0000000001000000"
    )
    port map (
      ADR0 => U1_my_hd44780_simple_count(2),
      ADR2 => U1_my_hd44780_simple_count(3),
      ADR1 => U1_my_hd44780_simple_count(4),
      ADR4 => U1_my_hd44780_simple_count(5),
      ADR3 => U1_my_hd44780_simple_count(6),
      ADR5 => U1_my_hd44780_simple_N19,
      O => U1_my_hd44780_simple_count_cmp_eq0000
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_10_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y49",
      INIT => X"FFFFCCCCFFFFCCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_my_hd44780_simple_cur_state(8),
      ADR1 => U1_my_hd44780_simple_cur_state(7),
      O => N2
    );
  U1_my_hd44780_simple_cur_state_mux0000_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y46",
      INIT => X"8888888888888888"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR1 => U1_my_hd44780_simple_timer2state_done_1383,
      O => N4
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW12 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y46",
      INIT => X"AA00000000000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR3 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR0 => U1_my_hd44780_simple_cur_state(1),
      ADR4 => U1_my_hd44780_simple_next_state_3_Q,
      O => N54
    );
  U1_my_hd44780_simple_count_3 : X_FF
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_count_3_CLK,
      I => U1_my_hd44780_simple_Mcount_count3,
      O => U1_my_hd44780_simple_count(3),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_count_xor_3_12 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"33CCFF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => U1_my_hd44780_simple_count(0),
      ADR3 => U1_my_hd44780_simple_count(3),
      ADR1 => U1_my_hd44780_simple_count(1),
      ADR4 => U1_my_hd44780_simple_count(2),
      O => U1_my_hd44780_simple_Mcount_count3
    );
  U1_my_hd44780_simple_count_2 : X_FF
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_count_2_CLK,
      I => U1_my_hd44780_simple_Mcount_count2,
      O => U1_my_hd44780_simple_count(2),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_count_xor_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"FF0000FDFF0000FF"
    )
    port map (
      ADR3 => U1_my_hd44780_simple_N19,
      ADR0 => U1_my_hd44780_simple_count(5),
      ADR5 => U1_my_hd44780_simple_count(6),
      ADR4 => U1_my_hd44780_simple_count(2),
      ADR2 => U1_my_hd44780_simple_count(3),
      ADR1 => U1_my_hd44780_simple_count(4),
      O => U1_my_hd44780_simple_Mcount_count2
    );
  U1_my_hd44780_simple_count_1 : X_FF
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_count_1_CLK,
      I => U1_my_hd44780_simple_Mcount_count1,
      O => U1_my_hd44780_simple_count(1),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_count_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"55AA55AA55AA55AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U1_my_hd44780_simple_count(1),
      ADR4 => '1',
      ADR0 => U1_my_hd44780_simple_count(0),
      O => U1_my_hd44780_simple_Mcount_count1
    );
  U1_my_hd44780_simple_count_0 : X_FF
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_count_0_CLK,
      I => U1_my_hd44780_simple_Mcount_count,
      O => U1_my_hd44780_simple_count(0),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_Mcount_count_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y57",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U1_my_hd44780_simple_count(0),
      ADR4 => '1',
      ADR5 => '1',
      O => U1_my_hd44780_simple_Mcount_count
    );
  U2_U1_cout_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_U2_U1_cout_3_CLK,
      I => U2_U1_cout_mux0003(3),
      O => U2_U1_cout(3),
      SET => GND,
      RST => GND
    );
  U2_U1_cout_mux0003_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"CC33CC3300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => sel_IBUF_1375,
      ADR1 => U2_U3_COUNT(0),
      ADR5 => U2_U3_COUNT(3),
      O => U2_U1_cout_mux0003(3)
    );
  U2_U1_cout_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_U2_U1_cout_2_CLK,
      I => U2_U1_cout_mux0003(2),
      O => U2_U1_cout(2),
      SET => GND,
      RST => GND
    );
  U2_U1_cout_mux0003_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"CC330000CC330000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => sel_IBUF_1375,
      ADR1 => U2_U3_COUNT(0),
      ADR4 => U2_U3_COUNT(2),
      O => U2_U1_cout_mux0003(2)
    );
  U2_U1_cout_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_U2_U1_cout_1_CLK,
      I => U2_U1_cout_mux0003(1),
      O => U2_U1_cout(1),
      SET => GND,
      RST => GND
    );
  U2_U1_cout_mux0003_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"CC330000CC330000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => sel_IBUF_1375,
      ADR3 => U2_U3_COUNT(0),
      ADR4 => U2_U3_COUNT(1),
      O => U2_U1_cout_mux0003(1)
    );
  U2_U1_cout_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_U2_U1_cout_0_CLK,
      I => U2_U1_cout_mux0003(0),
      O => U2_U1_cout(0),
      SET => GND,
      RST => GND
    );
  U2_U1_cout_mux0003_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y68",
      INIT => X"CC00CC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => sel_IBUF_1375,
      ADR3 => U2_U3_COUNT(0),
      O => U2_U1_cout_mux0003(0)
    );
  U1_my_hd44780_simple_timer_us_value_6 : X_FF
    generic map(
      LOC => "SLICE_X34Y49",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_6_CLK,
      I => U1_my_hd44780_simple_timer_us_value_mux0000_9_Q,
      O => U1_my_hd44780_simple_timer_us_value_6_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y49",
      INIT => X"FFFCFCFCFFFCFCFC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      ADR4 => U1_my_hd44780_simple_timer_us_value_6_Q,
      ADR1 => U1_my_hd44780_simple_cur_state(6),
      ADR3 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_9_Q
    );
  U1_my_hd44780_simple_timer_us_value_5 : X_FF
    generic map(
      LOC => "SLICE_X34Y49",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_5_CLK,
      I => U1_my_hd44780_simple_timer_us_value_mux0000_10_Q_761,
      O => U1_my_hd44780_simple_timer_us_value_5_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X34Y49",
      INIT => X"FFFFFFFFFFFFEFEE"
    )
    port map (
      ADR5 => U1_my_hd44780_simple_cur_state(9),
      ADR0 => N2,
      ADR4 => U1_my_hd44780_simple_N111,
      ADR3 => U1_my_hd44780_simple_timer_us_value_5_Q,
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      ADR1 => U1_my_hd44780_simple_cur_state(6),
      O => U1_my_hd44780_simple_timer_us_value_mux0000_10_Q_761
    );
  U1_my_hd44780_simple_timer_us_value_4 : X_FF
    generic map(
      LOC => "SLICE_X34Y49",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_4_CLK,
      I => U1_my_hd44780_simple_timer_us_value_mux0000_11_Q,
      O => U1_my_hd44780_simple_timer_us_value_4_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y49",
      INIT => X"F0F0FCF0F0F0FCF0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => U1_my_hd44780_simple_cur_state(6),
      ADR3 => U1_my_hd44780_simple_timer_us_value_4_Q,
      ADR4 => U1_my_hd44780_simple_cur_state(0),
      ADR1 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_11_Q
    );
  U1_my_hd44780_simple_timer_us_value_3 : X_FF
    generic map(
      LOC => "SLICE_X34Y49",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_3_CLK,
      I => U1_my_hd44780_simple_timer_us_value_mux0000_12_Q,
      O => U1_my_hd44780_simple_timer_us_value_3_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_timer_us_value_mux0000_12_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y49",
      INIT => X"FFFFFFFFFFFFFEFC"
    )
    port map (
      ADR4 => U1_my_hd44780_simple_cur_state(8),
      ADR5 => U1_my_hd44780_simple_cur_state(9),
      ADR1 => U1_my_hd44780_simple_cur_state(7),
      ADR3 => U1_my_hd44780_simple_timer_us_value_3_Q,
      ADR0 => U1_my_hd44780_simple_N29,
      ADR2 => U1_my_hd44780_simple_N111,
      O => U1_my_hd44780_simple_timer_us_value_mux0000_12_Q
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_3_7 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y45",
      INIT => X"FFFFFF88FFFFFF00"
    )
    port map (
      ADR2 => '1',
      ADR4 => U1_my_hd44780_simple_cur_state(4),
      ADR1 => U1_my_hd44780_simple_cur_line(0),
      ADR0 => U1_my_hd44780_simple_cur_state(8),
      ADR5 => U1_my_hd44780_simple_cur_ddram_addr(2),
      ADR3 => U1_my_hd44780_simple_cur_state(3),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_3_7_1481
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_5_113_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y48",
      INIT => X"0000000000000100"
    )
    port map (
      ADR3 => U1_my_hd44780_simple_hd44780_db(2),
      ADR0 => U1_my_hd44780_simple_cur_state(0),
      ADR2 => U1_my_hd44780_simple_cur_state(4),
      ADR1 => U1_my_hd44780_simple_cur_state(6),
      ADR4 => U1_my_hd44780_simple_cur_state(3),
      ADR5 => U1_my_hd44780_simple_cur_state(9),
      O => N76
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_31 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y48",
      INIT => X"FFFFFAFAFFFFFAFA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR0 => U1_my_hd44780_simple_cur_state(5),
      ADR2 => U1_my_hd44780_simple_cur_state(3),
      ADR4 => U1_my_hd44780_simple_cur_state(4),
      O => U1_my_hd44780_simple_N111
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y48",
      INIT => X"FFFF0000FFFF0004"
    )
    port map (
      ADR1 => U1_my_hd44780_simple_hd44780_db(3),
      ADR0 => U1_my_hd44780_simple_cur_state(8),
      ADR2 => U1_my_hd44780_simple_cur_state(7),
      ADR5 => U1_my_hd44780_simple_cur_state(0),
      ADR3 => U1_my_hd44780_simple_cur_state(6),
      ADR4 => U1_my_hd44780_simple_N111,
      O => N13
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_1_42 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y45",
      INIT => X"000F000F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => U1_my_hd44780_simple_hd44780_db(6),
      ADR3 => U1_my_hd44780_simple_cur_state(6),
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_1_42_1444
    );
  U1_my_hd44780_simple_hd44780_db_3 : X_FF
    generic map(
      LOC => "SLICE_X41Y48",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_3_CLK,
      I => U1_my_hd44780_simple_hd44780_db_mux0000(4),
      O => U1_my_hd44780_simple_hd44780_db(3),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X41Y48",
      INIT => X"FEFBF2F8FECBF2C8"
    )
    port map (
      ADR2 => U1_my_hd44780_simple_cur_state(9),
      ADR1 => U1_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => N15,
      ADR3 => U1_my_hd44780_simple_cur_line(0),
      ADR4 => N13,
      ADR0 => N14,
      O => U1_my_hd44780_simple_hd44780_db_mux0000(4)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y48",
      INIT => X"FFFFFFFFF0F0F1F0"
    )
    port map (
      ADR3 => U1_my_hd44780_simple_hd44780_db(3),
      ADR4 => U1_my_hd44780_simple_cur_state(7),
      ADR2 => U1_my_hd44780_simple_cur_state(8),
      ADR1 => U1_my_hd44780_simple_cur_state(6),
      ADR0 => U1_my_hd44780_simple_cur_state(0),
      ADR5 => U1_my_hd44780_simple_N111,
      O => N14
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_5_105 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y48",
      INIT => X"F0F0F0D0F0F0F0F0"
    )
    port map (
      ADR1 => U1_my_hd44780_simple_hd44780_db_mux0000_5_69_1512,
      ADR4 => U1_my_hd44780_simple_cur_line(0),
      ADR3 => U1_my_hd44780_simple_cur_ddram_addr(2),
      ADR0 => U1_my_hd44780_simple_cur_ddram_addr(1),
      ADR5 => U1_my_hd44780_simple_cur_ddram_addr(0),
      ADR2 => U1_my_hd44780_simple_cur_state(9),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_5_105_1553
    );
  U1_my_hd44780_simple_hd44780_db_2 : X_FF
    generic map(
      LOC => "SLICE_X41Y48",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_2_CLK,
      I => U1_my_hd44780_simple_hd44780_db_mux0000(5),
      O => U1_my_hd44780_simple_hd44780_db(2),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_5_113 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y48",
      INIT => X"FFFFFFFFFFFFBAFE"
    )
    port map (
      ADR0 => U1_my_hd44780_simple_cur_state(5),
      ADR3 => U1_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => U1_my_hd44780_simple_cur_state(7),
      ADR1 => U1_my_hd44780_simple_cur_state(8),
      ADR2 => N76,
      ADR4 => U1_my_hd44780_simple_hd44780_db_mux0000_5_105_1553,
      O => U1_my_hd44780_simple_hd44780_db_mux0000(5)
    );
  U1_my_hd44780_simple_hd44780_db_4 : X_FF
    generic map(
      LOC => "SLICE_X40Y45",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_4_CLK,
      I => U1_my_hd44780_simple_hd44780_db_mux0000(3),
      O => U1_my_hd44780_simple_hd44780_db(4),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_3_76 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y45",
      INIT => X"FFFFFFFFFCF0CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => U1_my_hd44780_simple_cur_state(9),
      ADR4 => U1_my_hd44780_simple_hd44780_db_mux0000_3_43_1499,
      ADR3 => U1_my_hd44780_simple_hd44780_db(4),
      ADR5 => U1_my_hd44780_simple_hd44780_db_mux0000_3_7_1481,
      ADR1 => U1_my_hd44780_simple_N22,
      O => U1_my_hd44780_simple_hd44780_db_mux0000(3)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_3_21 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y45",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => U1_my_hd44780_simple_cur_state(5),
      ADR5 => U1_my_hd44780_simple_cur_state(7),
      ADR0 => U1_my_hd44780_simple_cur_state(8),
      ADR3 => U1_my_hd44780_simple_cur_state(6),
      ADR2 => U1_my_hd44780_simple_cur_state(9),
      ADR4 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_N22
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y45",
      INIT => X"0001000000010000"
    )
    port map (
      ADR5 => '1',
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      ADR3 => U1_my_hd44780_simple_cur_state(5),
      ADR1 => U1_my_hd44780_simple_cur_state(6),
      ADR0 => U1_my_hd44780_simple_cur_state(7),
      ADR4 => U1_my_hd44780_simple_hd44780_db(5),
      O => N72
    );
  U1_my_hd44780_simple_hd44780_db_5 : X_FF
    generic map(
      LOC => "SLICE_X40Y45",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_5_CLK,
      I => U1_my_hd44780_simple_hd44780_db_mux0000(2),
      O => U1_my_hd44780_simple_hd44780_db(5),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X40Y45",
      INIT => X"FFFEFFFEFFFFFEFE"
    )
    port map (
      ADR1 => U1_my_hd44780_simple_cur_state(3),
      ADR2 => U1_my_hd44780_simple_cur_state(4),
      ADR0 => U1_my_hd44780_simple_cur_state(9),
      ADR5 => U1_my_hd44780_simple_cur_state(8),
      ADR4 => N72,
      ADR3 => U1_my_hd44780_simple_cur_line(0),
      O => U1_my_hd44780_simple_hd44780_db_mux0000(2)
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y47",
      INIT => X"8000800080008000"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR2 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR1 => U1_my_hd44780_simple_cur_state(1),
      ADR0 => U1_my_hd44780_simple_next_state_7_Q,
      O => N42
    );
  U1_my_hd44780_simple_reset_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y48",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => reset_IBUF_1400,
      O => U1_my_hd44780_simple_reset_inv
    );
  U1_my_hd44780_simple_hd44780_db_6 : X_FF
    generic map(
      LOC => "SLICE_X38Y45",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_6_CLK,
      I => U1_my_hd44780_simple_hd44780_db_mux0000(1),
      O => U1_my_hd44780_simple_hd44780_db(6),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_1_54 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y45",
      INIT => X"FFA0B3A0FFA0FFA0"
    )
    port map (
      ADR5 => U1_my_hd44780_simple_cur_ddram_addr(1),
      ADR1 => U1_my_hd44780_simple_cur_ddram_addr(0),
      ADR3 => U1_my_hd44780_simple_cur_state(9),
      ADR2 => U1_my_hd44780_simple_hd44780_db_mux0000_1_42_1444,
      ADR4 => U1_my_hd44780_simple_hd44780_db_mux0000_1_7_1445,
      ADR0 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_hd44780_db_mux0000(1)
    );
  U1_my_hd44780_simple_next_state_9 : X_FF
    generic map(
      LOC => "SLICE_X38Y45",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_next_state_9_CLK,
      I => U1_my_hd44780_simple_next_state_mux0000_0_Q,
      O => U1_my_hd44780_simple_next_state_9_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_next_state_mux0000_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y45",
      INIT => X"F0F0F1F0F0F0F0F0"
    )
    port map (
      ADR2 => U1_my_hd44780_simple_cur_state(8),
      ADR4 => U1_my_hd44780_simple_cur_state(9),
      ADR0 => U1_my_hd44780_simple_cur_state(7),
      ADR3 => U1_my_hd44780_simple_next_state_9_Q,
      ADR1 => U1_my_hd44780_simple_N111,
      ADR5 => U1_my_hd44780_simple_N29,
      O => U1_my_hd44780_simple_next_state_mux0000_0_Q
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_0_111 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y45",
      INIT => X"1111111111111111"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_my_hd44780_simple_cur_state(0),
      ADR1 => U1_my_hd44780_simple_cur_state(6),
      O => U1_my_hd44780_simple_N29
    );
  U1_my_hd44780_simple_next_state_8 : X_FF
    generic map(
      LOC => "SLICE_X38Y47",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_next_state_8_CLK,
      I => U1_my_hd44780_simple_next_state_mux0000_1_Q,
      O => U1_my_hd44780_simple_next_state_8_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_next_state_mux0000_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y47",
      INIT => X"FFFFFFFFFFFF0400"
    )
    port map (
      ADR4 => U1_my_hd44780_simple_cur_state(7),
      ADR0 => U1_my_hd44780_simple_cur_state(8),
      ADR5 => U1_my_hd44780_simple_cur_state(9),
      ADR3 => U1_my_hd44780_simple_next_state_8_Q,
      ADR1 => U1_my_hd44780_simple_N29,
      ADR2 => U1_my_hd44780_simple_N111,
      O => U1_my_hd44780_simple_next_state_mux0000_1_Q
    );
  U1_my_hd44780_simple_next_state_7 : X_FF
    generic map(
      LOC => "SLICE_X38Y47",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_next_state_7_CLK,
      I => U1_my_hd44780_simple_next_state_mux0000_2_Q,
      O => U1_my_hd44780_simple_next_state_7_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_next_state_mux0000_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y47",
      INIT => X"CCCCEECCCCCCEECC"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => U1_my_hd44780_simple_cur_state(6),
      ADR3 => U1_my_hd44780_simple_next_state_7_Q,
      ADR4 => U1_my_hd44780_simple_cur_state(0),
      ADR0 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_next_state_mux0000_2_Q
    );
  U1_my_hd44780_simple_next_state_6 : X_FF
    generic map(
      LOC => "SLICE_X38Y47",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_next_state_6_CLK,
      I => U1_my_hd44780_simple_next_state_mux0000_3_Q_1048,
      O => U1_my_hd44780_simple_next_state_6_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_next_state_mux0000_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X38Y47",
      INIT => X"F0F0F0F0F0F0F1F0"
    )
    port map (
      ADR4 => U1_my_hd44780_simple_cur_state(9),
      ADR1 => U1_my_hd44780_simple_cur_state(8),
      ADR0 => U1_my_hd44780_simple_cur_state(4),
      ADR3 => U1_my_hd44780_simple_next_state_6_Q,
      ADR5 => N9,
      ADR2 => U1_my_hd44780_simple_cur_state(5),
      O => U1_my_hd44780_simple_next_state_mux0000_3_Q_1048
    );
  U1_my_hd44780_simple_next_state_mux0000_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y47",
      INIT => X"FFFFFFFFFFFAFFFA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => U1_my_hd44780_simple_cur_state(7),
      ADR5 => U1_my_hd44780_simple_cur_state(0),
      ADR3 => U1_my_hd44780_simple_cur_state(6),
      ADR0 => U1_my_hd44780_simple_cur_state(3),
      O => N9
    );
  U1_my_hd44780_simple_next_state_5 : X_FF
    generic map(
      LOC => "SLICE_X39Y45",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_next_state_5_CLK,
      I => U1_my_hd44780_simple_next_state_mux0000_4_Q,
      O => U1_my_hd44780_simple_next_state_5_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_next_state_mux0000_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y45",
      INIT => X"FFFF00CCFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => U1_my_hd44780_simple_cur_state(4),
      ADR5 => U1_my_hd44780_simple_next_state_5_Q,
      ADR3 => U1_my_hd44780_simple_cur_state(3),
      ADR1 => U1_my_hd44780_simple_N22,
      O => U1_my_hd44780_simple_next_state_mux0000_4_Q
    );
  U1_my_hd44780_simple_next_state_4 : X_FF
    generic map(
      LOC => "SLICE_X39Y45",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_next_state_4_CLK,
      I => U1_my_hd44780_simple_next_state_mux0000_5_Q,
      O => U1_my_hd44780_simple_next_state_4_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_next_state_mux0000_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y45",
      INIT => X"FF00FFC0FF00FFC0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => U1_my_hd44780_simple_cur_state(3),
      ADR2 => U1_my_hd44780_simple_next_state_4_Q,
      ADR4 => U1_my_hd44780_simple_cur_state(4),
      ADR1 => U1_my_hd44780_simple_N22,
      O => U1_my_hd44780_simple_next_state_mux0000_5_Q
    );
  U1_my_hd44780_simple_next_state_3 : X_FF
    generic map(
      LOC => "SLICE_X39Y45",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_next_state_3_CLK,
      I => U1_my_hd44780_simple_next_state_mux0000_6_Q,
      O => U1_my_hd44780_simple_next_state_3_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_next_state_mux0000_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y45",
      INIT => X"BBAABBAAAAAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => U1_my_hd44780_simple_cur_state(0),
      ADR3 => U1_my_hd44780_simple_next_state_3_Q,
      ADR1 => U1_my_hd44780_simple_cur_state(6),
      ADR5 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_next_state_mux0000_6_Q
    );
  U1_my_hd44780_simple_next_state_0 : X_FF
    generic map(
      LOC => "SLICE_X39Y45",
      INIT => '1'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_next_state_0_CLK,
      I => U1_my_hd44780_simple_next_state_mux0000_9_Q,
      O => U1_my_hd44780_simple_next_state_0_Q,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_next_state_mux0000_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y45",
      INIT => X"1100110000000000"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U1_my_hd44780_simple_cur_state(6),
      ADR3 => U1_my_hd44780_simple_next_state_0_Q,
      ADR0 => U1_my_hd44780_simple_cur_state(0),
      ADR5 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_next_state_mux0000_9_Q
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_3_16 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y51",
      INIT => X"3333333333FF33FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U2_U1_cout(3),
      ADR3 => U2_U1_cout(1),
      ADR5 => U2_U1_cout(2),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_3_16_1547
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_3_43 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y51",
      INIT => X"FFFFFFBFFFFFFFBF"
    )
    port map (
      ADR5 => '1',
      ADR0 => U1_my_hd44780_simple_hd44780_db_mux0000_3_16_1547,
      ADR1 => U1_my_hd44780_simple_cur_ddram_addr(1),
      ADR2 => U1_my_hd44780_simple_cur_ddram_addr(0),
      ADR3 => U1_my_hd44780_simple_cur_line(0),
      ADR4 => U1_my_hd44780_simple_cur_ddram_addr(2),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_3_43_1499
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y46",
      INIT => X"A0A0000000000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR4 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR2 => U1_my_hd44780_simple_cur_state(1),
      ADR5 => U1_my_hd44780_simple_next_state_8_Q,
      O => N39
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y46",
      INIT => X"A000A00000000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR2 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR0 => U1_my_hd44780_simple_cur_state(1),
      ADR3 => U1_my_hd44780_simple_next_state_9_Q,
      O => N36
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y46",
      INIT => X"AA0AAA0AAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => U1_my_hd44780_simple_next_state_9_Q,
      ADR2 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR5 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR0 => U1_my_hd44780_simple_cur_state(1),
      O => N37
    );
  U1_my_hd44780_simple_hd44780_rs : X_FF
    generic map(
      LOC => "SLICE_X39Y44",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_hd44780_rs_CLK,
      I => U1_my_hd44780_simple_hd44780_rs_mux0000,
      O => U1_my_hd44780_simple_hd44780_rs_1415,
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_hd44780_rs_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y44",
      INIT => X"FFFF0004FFFF0000"
    )
    port map (
      ADR4 => U1_my_hd44780_simple_cur_state(9),
      ADR0 => U1_my_hd44780_simple_cur_state(8),
      ADR3 => U1_my_hd44780_simple_cur_state(7),
      ADR5 => U1_my_hd44780_simple_hd44780_rs_1415,
      ADR2 => U1_my_hd44780_simple_N111,
      ADR1 => U1_my_hd44780_simple_N29,
      O => U1_my_hd44780_simple_hd44780_rs_mux0000
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_5_69 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y55",
      INIT => X"FCFCFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => U2_U1_cout(2),
      ADR1 => U2_U1_cout(1),
      ADR4 => U2_U1_cout(3),
      ADR2 => U2_U1_cout(0),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_5_69_1512
    );
  U1_my_hd44780_simple_cur_state_9 : X_FF
    generic map(
      LOC => "SLICE_X39Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_state_9_CLK,
      I => U1_my_hd44780_simple_cur_state_mux0000(9),
      O => U1_my_hd44780_simple_cur_state(9),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_cur_state_mux0000_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y46",
      INIT => X"EFFFAAFFEF00AA00"
    )
    port map (
      ADR2 => U1_my_hd44780_simple_en_started(0),
      ADR4 => U1_my_hd44780_simple_cur_state(2),
      ADR5 => N36,
      ADR3 => U1_my_hd44780_simple_cur_state(9),
      ADR0 => N37,
      ADR1 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(9)
    );
  U1_my_hd44780_simple_cur_state_8 : X_FF
    generic map(
      LOC => "SLICE_X39Y46",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_state_8_CLK,
      I => U1_my_hd44780_simple_cur_state_mux0000(8),
      O => U1_my_hd44780_simple_cur_state(8),
      SET => GND,
      RST => reset_IBUF_1400
    );
  U1_my_hd44780_simple_cur_state_mux0000_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y46",
      INIT => X"FCDCFFFFFCDC0000"
    )
    port map (
      ADR0 => U1_my_hd44780_simple_en_started(0),
      ADR2 => U1_my_hd44780_simple_cur_state(2),
      ADR5 => N39,
      ADR4 => U1_my_hd44780_simple_cur_state(8),
      ADR1 => N40,
      ADR3 => U1_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U1_my_hd44780_simple_cur_state_mux0000(8)
    );
  U1_my_hd44780_simple_cur_state_mux0000_0_11_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y46",
      INIT => X"8C8C8C8CCCCCCCCC"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => U1_my_hd44780_simple_next_state_8_Q,
      ADR2 => U1_my_hd44780_simple_timer2state_done_1383,
      ADR5 => U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1382,
      ADR1 => U1_my_hd44780_simple_cur_state(1),
      O => N40
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_6_73 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y53",
      INIT => X"FF0000CCFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => U2_U1_cout(1),
      ADR4 => U2_U1_cout(0),
      ADR5 => U2_U1_cout(3),
      ADR1 => U2_U1_cout(2),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_6_73_1548
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_6_107 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y53",
      INIT => X"FFFBFFFFFFFBFFFF"
    )
    port map (
      ADR5 => '1',
      ADR0 => U1_my_hd44780_simple_hd44780_db_mux0000_6_73_1548,
      ADR1 => U1_my_hd44780_simple_cur_ddram_addr(0),
      ADR4 => U1_my_hd44780_simple_cur_ddram_addr(1),
      ADR2 => U1_my_hd44780_simple_cur_line(0),
      ADR3 => U1_my_hd44780_simple_cur_ddram_addr(2),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_6_107_1517
    );
  U1_my_hd44780_simple_cur_ddram_addr_2 : X_FF
    generic map(
      LOC => "SLICE_X38Y44",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_ddram_addr_2_CLK,
      I => U1_my_hd44780_simple_cur_ddram_addr_mux0000(1),
      O => U1_my_hd44780_simple_cur_ddram_addr(2),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_cur_ddram_addr_mux0000_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y44",
      INIT => X"70807F8070807F80"
    )
    port map (
      ADR5 => '1',
      ADR2 => U1_my_hd44780_simple_cur_state(9),
      ADR0 => U1_my_hd44780_simple_cur_ddram_addr(1),
      ADR3 => U1_my_hd44780_simple_cur_ddram_addr(2),
      ADR1 => U1_my_hd44780_simple_cur_ddram_addr(0),
      ADR4 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_cur_ddram_addr_mux0000(1)
    );
  U1_my_hd44780_simple_cur_ddram_addr_1 : X_FF
    generic map(
      LOC => "SLICE_X38Y44",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_ddram_addr_1_CLK,
      I => U1_my_hd44780_simple_cur_ddram_addr_mux0000(2),
      O => U1_my_hd44780_simple_cur_ddram_addr(1),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_cur_ddram_addr_mux0000_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y44",
      INIT => X"55AA0F0055AA0F00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => U1_my_hd44780_simple_cur_state(9),
      ADR3 => U1_my_hd44780_simple_cur_ddram_addr(1),
      ADR0 => U1_my_hd44780_simple_cur_ddram_addr(0),
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_cur_ddram_addr_mux0000(2)
    );
  U1_my_hd44780_simple_cur_ddram_addr_0 : X_FF
    generic map(
      LOC => "SLICE_X38Y44",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_ddram_addr_0_CLK,
      I => U1_my_hd44780_simple_cur_ddram_addr_mux0000(3),
      O => U1_my_hd44780_simple_cur_ddram_addr(0),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_cur_ddram_addr_mux0000_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y44",
      INIT => X"00FF0F0000FF0F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => U1_my_hd44780_simple_cur_ddram_addr(0),
      ADR4 => U1_my_hd44780_simple_cur_state(9),
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_cur_ddram_addr_mux0000(3)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_6_133_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y49",
      INIT => X"0000000000000100"
    )
    port map (
      ADR3 => U1_my_hd44780_simple_hd44780_db(1),
      ADR1 => U1_my_hd44780_simple_cur_state(3),
      ADR0 => U1_my_hd44780_simple_cur_state(4),
      ADR4 => U1_my_hd44780_simple_cur_state(5),
      ADR2 => U1_my_hd44780_simple_cur_state(6),
      ADR5 => U1_my_hd44780_simple_cur_state(0),
      O => N74
    );
  U1_my_hd44780_simple_hd44780_db_1 : X_FF
    generic map(
      LOC => "SLICE_X38Y49",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_1_CLK,
      I => U1_my_hd44780_simple_hd44780_db_mux0000(6),
      O => U1_my_hd44780_simple_hd44780_db(1),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_6_133 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y49",
      INIT => X"FEFFFEFCFAF3FAF0"
    )
    port map (
      ADR2 => U1_my_hd44780_simple_cur_state(7),
      ADR1 => U1_my_hd44780_simple_cur_state(9),
      ADR5 => U1_my_hd44780_simple_hd44780_db_mux0000_6_107_1517,
      ADR3 => U1_my_hd44780_simple_cur_state(8),
      ADR4 => N74,
      ADR0 => U1_my_hd44780_simple_cur_ddram_addr(1),
      O => U1_my_hd44780_simple_hd44780_db_mux0000(6)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y49",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => U1_my_hd44780_simple_cur_state(5),
      ADR4 => U1_my_hd44780_simple_cur_state(4),
      ADR3 => U1_my_hd44780_simple_cur_state(3),
      ADR0 => U1_my_hd44780_simple_cur_state(7),
      ADR1 => U1_my_hd44780_simple_cur_state(8),
      ADR5 => U1_my_hd44780_simple_cur_state(9),
      O => U1_my_hd44780_simple_N13
    );
  U1_my_hd44780_simple_hd44780_db_0 : X_FF
    generic map(
      LOC => "SLICE_X38Y49",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_0_CLK,
      I => U1_my_hd44780_simple_hd44780_db_mux0000(7),
      O => U1_my_hd44780_simple_hd44780_db(0),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_7_119 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y49",
      INIT => X"FFFFFFFFCE0ACC00"
    )
    port map (
      ADR3 => U1_my_hd44780_simple_cur_state(9),
      ADR2 => U1_my_hd44780_simple_cur_state(0),
      ADR5 => U1_my_hd44780_simple_hd44780_db_mux0000_7_2_1467,
      ADR0 => U1_my_hd44780_simple_hd44780_db(0),
      ADR1 => N70,
      ADR4 => U1_my_hd44780_simple_N13,
      O => U1_my_hd44780_simple_hd44780_db_mux0000(7)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_7_2 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y49",
      INIT => X"F8F8F8F8F8F8F8F8"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_my_hd44780_simple_cur_state(6),
      ADR1 => U1_my_hd44780_simple_cur_state(8),
      ADR0 => U1_my_hd44780_simple_cur_ddram_addr(0),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_7_2_1467
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_1_7 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y51",
      INIT => X"FEFEFEFEFEFCFEFC"
    )
    port map (
      ADR4 => '1',
      ADR2 => U1_my_hd44780_simple_cur_ddram_addr(2),
      ADR0 => U2_U1_cout(3),
      ADR5 => U2_U1_cout(2),
      ADR3 => U2_U1_cout(1),
      ADR1 => U1_my_hd44780_simple_cur_line(0),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_1_7_1445
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_31_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y51",
      INIT => X"EEFFEEFFEEFFEEFF"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR0 => U2_U1_cout(2),
      ADR3 => U2_U1_cout(3),
      ADR1 => U2_U1_cout(1),
      O => N30
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_4_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y51",
      INIT => X"FFFFFFFFEFFFFFFF"
    )
    port map (
      ADR4 => N30,
      ADR0 => U1_my_hd44780_simple_cur_state(5),
      ADR5 => U1_my_hd44780_simple_cur_state(3),
      ADR3 => U1_my_hd44780_simple_cur_ddram_addr(1),
      ADR1 => U1_my_hd44780_simple_cur_state(4),
      ADR2 => U1_my_hd44780_simple_cur_ddram_addr(0),
      O => N15
    );
  U1_my_hd44780_simple_cur_line_0 : X_FF
    generic map(
      LOC => "SLICE_X39Y47",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_cur_line_0_CLK,
      I => U1_my_hd44780_simple_cur_line_0_mux0000,
      O => U1_my_hd44780_simple_cur_line(0),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_cur_line_0_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y47",
      INIT => X"2A80AA007F80FF00"
    )
    port map (
      ADR0 => U1_my_hd44780_simple_cur_state(9),
      ADR2 => U1_my_hd44780_simple_cur_ddram_addr(2),
      ADR4 => U1_my_hd44780_simple_cur_ddram_addr(0),
      ADR3 => U1_my_hd44780_simple_cur_line(0),
      ADR1 => U1_my_hd44780_simple_cur_ddram_addr(1),
      ADR5 => U1_my_hd44780_simple_cur_state(0),
      O => U1_my_hd44780_simple_cur_line_0_mux0000
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_7_39 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y53",
      INIT => X"0033FFCCFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => U2_U1_cout(3),
      ADR4 => U2_U1_cout(0),
      ADR3 => U2_U1_cout(1),
      ADR1 => U2_U1_cout(2),
      O => U1_my_hd44780_simple_hd44780_db_mux0000_7_39_1551
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_7_119_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y53",
      INIT => X"FFFFFFFFFFF3FFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => U1_my_hd44780_simple_hd44780_db_mux0000_7_39_1551,
      ADR2 => U1_my_hd44780_simple_cur_line(0),
      ADR4 => U1_my_hd44780_simple_cur_ddram_addr(1),
      ADR3 => U1_my_hd44780_simple_cur_ddram_addr(2),
      ADR1 => U1_my_hd44780_simple_cur_ddram_addr(0),
      O => N70
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_0_Q : X_MUX2
    generic map(
      LOC => "SLICE_X40Y44"
    )
    port map (
      IA => N78,
      IB => N79,
      O => U1_my_hd44780_simple_hd44780_db_mux0000(0),
      SEL => U1_my_hd44780_simple_cur_state(9)
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_0_F : X_LUT6
    generic map(
      LOC => "SLICE_X40Y44",
      INIT => X"FF00FF01FF00FF00"
    )
    port map (
      ADR5 => U1_my_hd44780_simple_hd44780_db(7),
      ADR4 => U1_my_hd44780_simple_cur_state(0),
      ADR0 => U1_my_hd44780_simple_cur_state(6),
      ADR2 => U1_my_hd44780_simple_N111,
      ADR1 => U1_my_hd44780_simple_cur_state(7),
      ADR3 => U1_my_hd44780_simple_cur_state(8),
      O => N78
    );
  U1_my_hd44780_simple_hd44780_db_7 : X_FF
    generic map(
      LOC => "SLICE_X40Y44",
      INIT => '0'
    )
    port map (
      CE => U1_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_7_CLK,
      I => U1_my_hd44780_simple_hd44780_db_mux0000(0),
      O => U1_my_hd44780_simple_hd44780_db(7),
      SET => GND,
      RST => GND
    );
  U1_my_hd44780_simple_hd44780_db_mux0000_0_G : X_LUT6
    generic map(
      LOC => "SLICE_X40Y44",
      INIT => X"FFEFFFEFFFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR1 => U1_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => U1_my_hd44780_simple_cur_ddram_addr(1),
      ADR2 => U1_my_hd44780_simple_cur_ddram_addr(0),
      ADR0 => U1_my_hd44780_simple_cur_line(0),
      ADR3 => U1_my_hd44780_simple_cur_state(8),
      O => N79
    );
  clk_BUFGP_BUFG_BUF : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y0",
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_IBUF,
      O => clk_BUFGP
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_7_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_7_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_6_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_6_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_5_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_5_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_4_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_4_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_3_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_3_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_2_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_2_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_1_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_1_CLK
    );
  NlwBufferBlock_hd44780_db_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U1_my_hd44780_simple_hd44780_db(7),
      O => NlwBufferSignal_hd44780_db_7_OBUF_I
    );
  NlwBufferBlock_hd44780_db_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U1_my_hd44780_simple_hd44780_db(4),
      O => NlwBufferSignal_hd44780_db_4_OBUF_I
    );
  NlwBufferBlock_hd44780_db_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U1_my_hd44780_simple_hd44780_db(2),
      O => NlwBufferSignal_hd44780_db_2_OBUF_I
    );
  NlwBufferBlock_hd44780_db_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U1_my_hd44780_simple_hd44780_db(6),
      O => NlwBufferSignal_hd44780_db_6_OBUF_I
    );
  NlwBufferBlock_hd44780_rs_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U1_my_hd44780_simple_hd44780_rs_1415,
      O => NlwBufferSignal_hd44780_rs_OBUF_I
    );
  NlwBufferBlock_U2_U3_COUNT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_NET734,
      O => NlwBufferSignal_U2_U3_COUNT_3_CLK
    );
  NlwBufferBlock_U2_U3_COUNT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_NET734,
      O => NlwBufferSignal_U2_U3_COUNT_2_CLK
    );
  NlwBufferBlock_U2_U3_COUNT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_NET734,
      O => NlwBufferSignal_U2_U3_COUNT_1_CLK
    );
  NlwBufferBlock_U2_U3_COUNT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_NET734,
      O => NlwBufferSignal_U2_U3_COUNT_0_CLK
    );
  NlwBufferBlock_hd44780_db_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U1_my_hd44780_simple_hd44780_db(3),
      O => NlwBufferSignal_hd44780_db_3_OBUF_I
    );
  NlwBufferBlock_hd44780_db_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U1_my_hd44780_simple_hd44780_db(5),
      O => NlwBufferSignal_hd44780_db_5_OBUF_I
    );
  NlwBufferBlock_hd44780_db_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U1_my_hd44780_simple_hd44780_db(0),
      O => NlwBufferSignal_hd44780_db_0_OBUF_I
    );
  NlwBufferBlock_hd44780_db_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U1_my_hd44780_simple_hd44780_db(1),
      O => NlwBufferSignal_hd44780_db_1_OBUF_I
    );
  NlwBufferBlock_U2_U4_U1_COUNT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_3_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_2_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_1_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_0_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_15_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_14_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_13_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_12_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_11_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_10_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_9_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_8_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_15_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_14_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_13_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_12_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_7_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_6_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_5_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_4_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_11_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_10_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_9_CLK
    );
  NlwBufferBlock_U2_U4_U1_COUNT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_U4_U1_COUNT_8_CLK
    );
  NlwBufferBlock_hd44780_en_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U1_my_hd44780_simple_en_started(0),
      O => NlwBufferSignal_hd44780_en_OBUF_I
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_us_value_15_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_15_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_us_value_12_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_12_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_called_cnt_FSM_FFd2_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_called_cnt_FSM_FFd1_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_en_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_en_count_3_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_en_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_en_count_4_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_us_value_11_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_11_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_us_value_10_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_10_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_us_value_8_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_8_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_us_value_7_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_7_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_en_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_en_count_1_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_en_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_en_count_0_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_en_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_en_count_2_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_state2timer_go_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_state2timer_go_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_0_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_running_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_running_0_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer2state_done_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer2state_done_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_state_3_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_state_3_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_state_2_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_state_2_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_state_1_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_state_1_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_state_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_state_0_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_15_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_15_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_14_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_14_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_13_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_13_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_12_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_12_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_11_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_11_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_10_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_10_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_9_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_9_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_valuez_8_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_valuez_8_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_3_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_2_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_1_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_0_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_7_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_6_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_5_CLK
    );
  NlwBufferBlock_U2_U4_U2_COUNT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U4_NET1584,
      O => NlwBufferSignal_U2_U4_U2_COUNT_4_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_en_started_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_en_started_0_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_count_6_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_count_5_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_count_4_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_state_7_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_state_7_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_state_6_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_state_6_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_state_5_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_state_5_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_state_4_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_state_4_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_clk_us_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_clk_us_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_count_3_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_count_2_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_count_1_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_count_0_CLK
    );
  NlwBufferBlock_U2_U1_cout_3_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U1_cout_not0001,
      O => NlwBufferSignal_U2_U1_cout_3_CLK
    );
  NlwBufferBlock_U2_U1_cout_2_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U1_cout_not0001,
      O => NlwBufferSignal_U2_U1_cout_2_CLK
    );
  NlwBufferBlock_U2_U1_cout_1_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U1_cout_not0001,
      O => NlwBufferSignal_U2_U1_cout_1_CLK
    );
  NlwBufferBlock_U2_U1_cout_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => U2_U1_cout_not0001,
      O => NlwBufferSignal_U2_U1_cout_0_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_us_value_6_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_6_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_us_value_5_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_5_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_us_value_4_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_4_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_timer_us_value_3_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_timer_us_value_3_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_hd44780_db_3_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_3_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_hd44780_db_2_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_2_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_hd44780_db_4_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_4_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_hd44780_db_5_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_5_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_hd44780_db_6_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_6_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_next_state_9_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_next_state_9_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_next_state_8_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_next_state_8_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_next_state_7_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_next_state_7_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_next_state_6_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_next_state_6_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_next_state_5_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_next_state_5_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_next_state_4_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_next_state_4_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_next_state_3_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_next_state_3_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_next_state_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_next_state_0_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_hd44780_rs_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_hd44780_rs_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_state_9_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_state_9_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_state_8_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_state_8_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_ddram_addr_2_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_ddram_addr_2_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_ddram_addr_1_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_ddram_addr_1_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_ddram_addr_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_ddram_addr_0_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_hd44780_db_1_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_1_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_hd44780_db_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_0_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_cur_line_0_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_cur_line_0_CLK
    );
  NlwBufferBlock_U1_my_hd44780_simple_hd44780_db_7_CLK : X_BUF
    generic map(
      PATHPULSE => 343 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_my_hd44780_simple_hd44780_db_7_CLK
    );
  NlwBlock_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

