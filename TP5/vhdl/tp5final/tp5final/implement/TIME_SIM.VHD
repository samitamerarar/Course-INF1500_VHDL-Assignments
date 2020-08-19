--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Fri Apr 08 22:07:43 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf top.pcf -tpw 0 -rpw 100 -s 1 -ar Structure -insert_pp_buffers true top.ncd time_sim.vhd 
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
    ovenout : out STD_LOGIC; 
    rst : in STD_LOGIC := 'X'; 
    settingtimerout : out STD_LOGIC; 
    hd44780_rs : out STD_LOGIC; 
    hd44780_rw : out STD_LOGIC; 
    pb_settime : in STD_LOGIC := 'X'; 
    pb_hour : in STD_LOGIC := 'X'; 
    settingtimeout : out STD_LOGIC; 
    pb_settimer : in STD_LOGIC := 'X'; 
    pb_canceltimer : in STD_LOGIC := 'X'; 
    pb_min : in STD_LOGIC := 'X'; 
    buzzerleds : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    hd44780_db : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal U18_Result_0_0 : STD_LOGIC; 
  signal U18_Result_1_0 : STD_LOGIC; 
  signal U18_Result_2_0 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_3_Q_4332 : STD_LOGIC; 
  signal U18_Result_3_0 : STD_LOGIC; 
  signal U18_Result_4_0 : STD_LOGIC; 
  signal U18_Result_5_0 : STD_LOGIC; 
  signal U18_Result_6_0 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_7_Q_4342 : STD_LOGIC; 
  signal U18_Result_7_0 : STD_LOGIC; 
  signal U18_Result_8_0 : STD_LOGIC; 
  signal U18_Result_9_0 : STD_LOGIC; 
  signal U18_Result_10_0 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_11_Q_4351 : STD_LOGIC; 
  signal U18_Result_11_0 : STD_LOGIC; 
  signal U18_Result_12_0 : STD_LOGIC; 
  signal U18_Result_13_0 : STD_LOGIC; 
  signal U18_Result_14_0 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_15_Q_4360 : STD_LOGIC; 
  signal U18_Result_15_0 : STD_LOGIC; 
  signal U18_Result_16_0 : STD_LOGIC; 
  signal U18_Result_17_0 : STD_LOGIC; 
  signal U18_Result_18_0 : STD_LOGIC; 
  signal U18_Result_19_0 : STD_LOGIC; 
  signal U1_Result_0_0 : STD_LOGIC; 
  signal U1_Result_1_0 : STD_LOGIC; 
  signal U1_Result_2_0 : STD_LOGIC; 
  signal U1_Mcount_count_cy_3_Q_4377 : STD_LOGIC; 
  signal U1_Result_3_0 : STD_LOGIC; 
  signal U1_Result_4_0 : STD_LOGIC; 
  signal U1_Result_5_0 : STD_LOGIC; 
  signal U1_Result_6_0 : STD_LOGIC; 
  signal U1_Mcount_count_cy_7_Q_4386 : STD_LOGIC; 
  signal U1_Result_7_0 : STD_LOGIC; 
  signal U1_Result_8_0 : STD_LOGIC; 
  signal U1_Result_9_0 : STD_LOGIC; 
  signal U1_Result_10_0 : STD_LOGIC; 
  signal U1_Mcount_count_cy_11_Q_4395 : STD_LOGIC; 
  signal U1_Result_11_0 : STD_LOGIC; 
  signal U1_Result_12_0 : STD_LOGIC; 
  signal U1_Result_13_0 : STD_LOGIC; 
  signal U1_Result_14_0 : STD_LOGIC; 
  signal U1_Mcount_count_cy_15_Q_4404 : STD_LOGIC; 
  signal U1_Result_15_0 : STD_LOGIC; 
  signal U1_Result_16_0 : STD_LOGIC; 
  signal U1_Result_17_0 : STD_LOGIC; 
  signal U1_Result_18_0 : STD_LOGIC; 
  signal U1_Mcount_count_cy_19_Q_4413 : STD_LOGIC; 
  signal U1_Result_19_0 : STD_LOGIC; 
  signal U1_Result_20_0 : STD_LOGIC; 
  signal U1_Result_21_0 : STD_LOGIC; 
  signal U1_Result_22_0 : STD_LOGIC; 
  signal U1_Mcount_count_cy_23_Q_4422 : STD_LOGIC; 
  signal U1_Result_23_0 : STD_LOGIC; 
  signal U1_Result_24_0 : STD_LOGIC; 
  signal U1_Result_25_0 : STD_LOGIC; 
  signal U1_Result_26_0 : STD_LOGIC; 
  signal U1_Mcount_count_cy_27_Q_4431 : STD_LOGIC; 
  signal U1_Result_27_0 : STD_LOGIC; 
  signal U1_Result_28_0 : STD_LOGIC; 
  signal U1_Result_29_0 : STD_LOGIC; 
  signal U1_Result_30_0 : STD_LOGIC; 
  signal U1_Result_31_0 : STD_LOGIC; 
  signal U1_count_add0000_0_0 : STD_LOGIC; 
  signal U1_count_add0000_1_0 : STD_LOGIC; 
  signal U1_count_add0000_2_0 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_3_Q_4445 : STD_LOGIC; 
  signal U1_count_add0000_3_0 : STD_LOGIC; 
  signal U1_count_add0000_4_0 : STD_LOGIC; 
  signal U1_count_add0000_5_0 : STD_LOGIC; 
  signal U1_count_add0000_6_0 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_7_Q_4450 : STD_LOGIC; 
  signal U1_count_add0000_7_0 : STD_LOGIC; 
  signal U1_count_add0000_8_0 : STD_LOGIC; 
  signal U1_count_add0000_9_0 : STD_LOGIC; 
  signal U1_count_add0000_10_0 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_11_Q_4455 : STD_LOGIC; 
  signal U1_count_add0000_11_0 : STD_LOGIC; 
  signal U1_count_add0000_12_0 : STD_LOGIC; 
  signal U1_count_add0000_13_0 : STD_LOGIC; 
  signal U1_count_add0000_14_0 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_15_Q_4460 : STD_LOGIC; 
  signal U1_count_add0000_15_0 : STD_LOGIC; 
  signal U1_count_add0000_16_0 : STD_LOGIC; 
  signal U1_count_add0000_17_0 : STD_LOGIC; 
  signal U1_count_add0000_18_0 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_19_Q_4465 : STD_LOGIC; 
  signal U1_count_add0000_19_0 : STD_LOGIC; 
  signal U1_count_add0000_20_0 : STD_LOGIC; 
  signal U1_count_add0000_21_0 : STD_LOGIC; 
  signal U1_count_add0000_22_0 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_23_Q_4470 : STD_LOGIC; 
  signal U1_count_add0000_23_0 : STD_LOGIC; 
  signal U1_count_add0000_24_0 : STD_LOGIC; 
  signal U1_count_add0000_25_0 : STD_LOGIC; 
  signal U1_count_add0000_26_0 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_27_Q_4475 : STD_LOGIC; 
  signal U1_count_add0000_27_0 : STD_LOGIC; 
  signal U1_count_add0000_28_0 : STD_LOGIC; 
  signal U1_count_add0000_29_0 : STD_LOGIC; 
  signal U1_count_add0000_30_0 : STD_LOGIC; 
  signal U1_count_add0000_31_0 : STD_LOGIC; 
  signal U22_Result_0_0 : STD_LOGIC; 
  signal U22_Result_1_0 : STD_LOGIC; 
  signal U22_Result_2_0 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_3_Q_4487 : STD_LOGIC; 
  signal U22_Result_3_0 : STD_LOGIC; 
  signal U22_Result_4_0 : STD_LOGIC; 
  signal U22_Result_5_0 : STD_LOGIC; 
  signal U22_Result_6_0 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_7_Q_4496 : STD_LOGIC; 
  signal U22_Result_7_0 : STD_LOGIC; 
  signal U22_Result_8_0 : STD_LOGIC; 
  signal U22_Result_9_0 : STD_LOGIC; 
  signal U22_Result_10_0 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_11_Q_4505 : STD_LOGIC; 
  signal U22_Result_11_0 : STD_LOGIC; 
  signal U22_Result_12_0 : STD_LOGIC; 
  signal U22_Result_13_0 : STD_LOGIC; 
  signal U22_Result_14_0 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_15_Q_4514 : STD_LOGIC; 
  signal U22_Result_15_0 : STD_LOGIC; 
  signal U22_Result_16_0 : STD_LOGIC; 
  signal U22_Result_17_0 : STD_LOGIC; 
  signal U22_Result_18_0 : STD_LOGIC; 
  signal U22_Result_19_0 : STD_LOGIC; 
  signal U34_o_0_add0000_0_0 : STD_LOGIC; 
  signal U34_o_0_add0000_1_0 : STD_LOGIC; 
  signal U34_o_0_add0000_2_0 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_3_Q_4531 : STD_LOGIC; 
  signal U34_o_0_add0000_3_0 : STD_LOGIC; 
  signal U34_o_0_add0000_4_0 : STD_LOGIC; 
  signal U34_o_0_add0000_5_0 : STD_LOGIC; 
  signal U34_o_0_add0000_6_0 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_7_Q_4540 : STD_LOGIC; 
  signal U34_o_0_add0000_7_0 : STD_LOGIC; 
  signal U34_o_0_add0000_8_0 : STD_LOGIC; 
  signal U34_o_0_add0000_9_0 : STD_LOGIC; 
  signal U34_o_0_add0000_10_0 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_11_Q_4549 : STD_LOGIC; 
  signal U34_o_0_add0000_11_0 : STD_LOGIC; 
  signal U34_o_0_add0000_12_0 : STD_LOGIC; 
  signal U34_o_0_add0000_13_0 : STD_LOGIC; 
  signal U34_o_0_add0000_14_0 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_15_Q_4558 : STD_LOGIC; 
  signal U34_o_0_add0000_15_0 : STD_LOGIC; 
  signal U34_o_0_add0000_16_0 : STD_LOGIC; 
  signal U34_o_0_add0000_17_0 : STD_LOGIC; 
  signal U34_o_0_add0000_18_0 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_19_Q_4567 : STD_LOGIC; 
  signal U34_o_0_add0000_19_0 : STD_LOGIC; 
  signal U34_o_0_add0000_20_0 : STD_LOGIC; 
  signal U34_o_0_add0000_21_0 : STD_LOGIC; 
  signal U34_o_0_add0000_22_0 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_23_Q_4576 : STD_LOGIC; 
  signal U34_o_0_add0000_23_0 : STD_LOGIC; 
  signal U34_o_0_add0000_24_0 : STD_LOGIC; 
  signal U34_o_0_add0000_25_0 : STD_LOGIC; 
  signal U34_o_0_add0000_26_0 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_27_Q_4585 : STD_LOGIC; 
  signal U34_o_0_add0000_27_0 : STD_LOGIC; 
  signal U34_o_0_add0000_28_0 : STD_LOGIC; 
  signal U34_o_0_add0000_29_0 : STD_LOGIC; 
  signal U34_o_0_add0000_30_0 : STD_LOGIC; 
  signal U34_o_0_add0000_31_0 : STD_LOGIC; 
  signal U30_my_hd44780_simple_state2timer_go_4596 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_2_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_valuez_not0001 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez_cy_3_Q_4604 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_3_Q : STD_LOGIC; 
  signal rst_IBUF_4607 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_5_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_6_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez_cy_7_Q_4614 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_7_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_8_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_9_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez_cy_11_Q_4622 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_11_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_13_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_15_Q : STD_LOGIC; 
  signal U34_Result_0_0 : STD_LOGIC; 
  signal U34_Result_1_0 : STD_LOGIC; 
  signal U34_Result_2_0 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_3_Q_4634 : STD_LOGIC; 
  signal U34_Result_3_0 : STD_LOGIC; 
  signal U34_Result_4_0 : STD_LOGIC; 
  signal U34_Result_5_0 : STD_LOGIC; 
  signal U34_Result_6_0 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_7_Q_4639 : STD_LOGIC; 
  signal U34_Result_7_0 : STD_LOGIC; 
  signal U34_Result_8_0 : STD_LOGIC; 
  signal U34_Result_9_0 : STD_LOGIC; 
  signal U34_Result_10_0 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_11_Q_4644 : STD_LOGIC; 
  signal U34_Result_11_0 : STD_LOGIC; 
  signal U34_Result_12_0 : STD_LOGIC; 
  signal U34_Result_13_0 : STD_LOGIC; 
  signal U34_Result_14_0 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_15_Q_4649 : STD_LOGIC; 
  signal U34_Result_15_0 : STD_LOGIC; 
  signal U34_Result_16_0 : STD_LOGIC; 
  signal U34_Result_17_0 : STD_LOGIC; 
  signal U34_Result_18_0 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_19_Q_4654 : STD_LOGIC; 
  signal U34_Result_19_0 : STD_LOGIC; 
  signal U34_Result_20_0 : STD_LOGIC; 
  signal U34_Result_21_0 : STD_LOGIC; 
  signal U34_Result_22_0 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_23_Q_4659 : STD_LOGIC; 
  signal U34_Result_23_0 : STD_LOGIC; 
  signal U34_Result_24_0 : STD_LOGIC; 
  signal U34_Result_25_0 : STD_LOGIC; 
  signal U34_Result_26_0 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_27_Q_4664 : STD_LOGIC; 
  signal U34_Result_27_0 : STD_LOGIC; 
  signal U34_Result_28_0 : STD_LOGIC; 
  signal U34_Result_29_0 : STD_LOGIC; 
  signal U34_Result_30_0 : STD_LOGIC; 
  signal U34_Result_31_0 : STD_LOGIC; 
  signal U20_Result_0_0 : STD_LOGIC; 
  signal U20_Result_1_0 : STD_LOGIC; 
  signal U20_Result_2_0 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_3_Q_4676 : STD_LOGIC; 
  signal U20_Result_3_0 : STD_LOGIC; 
  signal U20_Result_4_0 : STD_LOGIC; 
  signal U20_Result_5_0 : STD_LOGIC; 
  signal U20_Result_6_0 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_7_Q_4685 : STD_LOGIC; 
  signal U20_Result_7_0 : STD_LOGIC; 
  signal U20_Result_8_0 : STD_LOGIC; 
  signal U20_Result_9_0 : STD_LOGIC; 
  signal U20_Result_10_0 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_11_Q_4694 : STD_LOGIC; 
  signal U20_Result_11_0 : STD_LOGIC; 
  signal U20_Result_12_0 : STD_LOGIC; 
  signal U20_Result_13_0 : STD_LOGIC; 
  signal U20_Result_14_0 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_15_Q_4703 : STD_LOGIC; 
  signal U20_Result_15_0 : STD_LOGIC; 
  signal U20_Result_16_0 : STD_LOGIC; 
  signal U20_Result_17_0 : STD_LOGIC; 
  signal U20_Result_18_0 : STD_LOGIC; 
  signal U20_Result_19_0 : STD_LOGIC; 
  signal U16_Result_0_0 : STD_LOGIC; 
  signal U16_Result_1_0 : STD_LOGIC; 
  signal U16_Result_2_0 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_3_Q_4720 : STD_LOGIC; 
  signal U16_Result_3_0 : STD_LOGIC; 
  signal U16_Result_4_0 : STD_LOGIC; 
  signal U16_Result_5_0 : STD_LOGIC; 
  signal U16_Result_6_0 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_7_Q_4729 : STD_LOGIC; 
  signal U16_Result_7_0 : STD_LOGIC; 
  signal U16_Result_8_0 : STD_LOGIC; 
  signal U16_Result_9_0 : STD_LOGIC; 
  signal U16_Result_10_0 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_11_Q_4738 : STD_LOGIC; 
  signal U16_Result_11_0 : STD_LOGIC; 
  signal U16_Result_12_0 : STD_LOGIC; 
  signal U16_Result_13_0 : STD_LOGIC; 
  signal U16_Result_14_0 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_15_Q_4747 : STD_LOGIC; 
  signal U16_Result_15_0 : STD_LOGIC; 
  signal U16_Result_16_0 : STD_LOGIC; 
  signal U16_Result_17_0 : STD_LOGIC; 
  signal U16_Result_18_0 : STD_LOGIC; 
  signal U16_Result_19_0 : STD_LOGIC; 
  signal U24_Result_0_0 : STD_LOGIC; 
  signal U24_Result_1_0 : STD_LOGIC; 
  signal U24_Result_2_0 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_3_Q_4764 : STD_LOGIC; 
  signal U24_Result_3_0 : STD_LOGIC; 
  signal U24_Result_4_0 : STD_LOGIC; 
  signal U24_Result_5_0 : STD_LOGIC; 
  signal U24_Result_6_0 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_7_Q_4773 : STD_LOGIC; 
  signal U24_Result_7_0 : STD_LOGIC; 
  signal U24_Result_8_0 : STD_LOGIC; 
  signal U24_Result_9_0 : STD_LOGIC; 
  signal U24_Result_10_0 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_11_Q_4782 : STD_LOGIC; 
  signal U24_Result_11_0 : STD_LOGIC; 
  signal U24_Result_12_0 : STD_LOGIC; 
  signal U24_Result_13_0 : STD_LOGIC; 
  signal U24_Result_14_0 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_15_Q_4791 : STD_LOGIC; 
  signal U24_Result_15_0 : STD_LOGIC; 
  signal U24_Result_16_0 : STD_LOGIC; 
  signal U24_Result_17_0 : STD_LOGIC; 
  signal U24_Result_18_0 : STD_LOGIC; 
  signal U24_Result_19_0 : STD_LOGIC; 
  signal U37_set_time_4802 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_1_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_2_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_3_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_5_Q : STD_LOGIC; 
  signal U37_set_timer_4810 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_7_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_rs_4818 : STD_LOGIC; 
  signal pb_hour_IBUF_4819 : STD_LOGIC; 
  signal U37_oven_4820 : STD_LOGIC; 
  signal pb_min_IBUF_4821 : STD_LOGIC; 
  signal pb_settimer_IBUF_4822 : STD_LOGIC; 
  signal pb_canceltimer_IBUF_4823 : STD_LOGIC; 
  signal pb_settime_IBUF_4824 : STD_LOGIC; 
  signal U21_pulse_4825 : STD_LOGIC; 
  signal U19_pulse_4826 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd3_4827 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd2_4828 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd1_4829 : STD_LOGIC; 
  signal U23_pulse_4830 : STD_LOGIC; 
  signal U37_cur_state_FSM_N3 : STD_LOGIC; 
  signal U30_my_hd44780_simple_cur_state_cmp_gt0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_4836 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer2state_done_4837 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_4838 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_1224_0 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_0 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_1687_4850 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1045_0 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N37 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_0 : STD_LOGIC; 
  signal U30_my_hd44780_simple_reset_inv : STD_LOGIC; 
  signal U30_my_hd44780_simple_N11 : STD_LOGIC; 
  signal U2_ch_not0001 : STD_LOGIC; 
  signal U37_reset_time_4872 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N8 : STD_LOGIC; 
  signal U1_N3 : STD_LOGIC; 
  signal U1_N2 : STD_LOGIC; 
  signal U1_N11 : STD_LOGIC; 
  signal U1_count_and0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N18 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N111 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N3 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N62 : STD_LOGIC; 
  signal U30_my_hd44780_simple_count_cmp_eq0000_4891 : STD_LOGIC; 
  signal U16_count_per_cmp_eq0000 : STD_LOGIC; 
  signal U24_count_per_cmp_eq0000 : STD_LOGIC; 
  signal U34_cnt_or0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N0 : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_cur_state_or0000 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_3_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_5_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_6_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_7_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_8_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_10_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_11_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_12_Q : STD_LOGIC; 
  signal U20_count_per_cmp_eq0000 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal U20_clk_deb_4918 : STD_LOGIC; 
  signal U18_count_per_cmp_eq0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_running_0_not0001 : STD_LOGIC; 
  signal U22_count_per_cmp_eq0000 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal U22_clk_deb_4923 : STD_LOGIC; 
  signal U1_clk_1hz_4924 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal U16_clk_deb_4926 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal U24_clk_deb_4928 : STD_LOGIC; 
  signal U37_reset_timer_4929 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal U18_clk_deb_4931 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal U30_my_hd44780_simple_clk_us_4933 : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_9_Q : STD_LOGIC; 
  signal U22_pb_deb_4935 : STD_LOGIC; 
  signal U16_pb_deb_4937 : STD_LOGIC; 
  signal U15_pulse_4939 : STD_LOGIC; 
  signal U24_pb_deb_4940 : STD_LOGIC; 
  signal U18_pb_deb_4942 : STD_LOGIC; 
  signal U17_pulse_4944 : STD_LOGIC; 
  signal U20_pb_deb_4945 : STD_LOGIC; 
  signal U36_cm_not0002 : STD_LOGIC; 
  signal U36_N29 : STD_LOGIC; 
  signal U36_N3 : STD_LOGIC; 
  signal U36_N10 : STD_LOGIC; 
  signal U36_N13 : STD_LOGIC; 
  signal U36_N16 : STD_LOGIC; 
  signal U36_cs_not0003 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal U36_N14 : STD_LOGIC; 
  signal U2_cm_not0002_4969 : STD_LOGIC; 
  signal U2_N19 : STD_LOGIC; 
  signal U2_cs_not0001 : STD_LOGIC; 
  signal U2_N20 : STD_LOGIC; 
  signal U30_my_hd44780_simple_valuez_cmp_le00002104_4976 : STD_LOGIC; 
  signal U30_my_hd44780_simple_valuez_cmp_le0000235_4977 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_12_4978 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N34 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_111_4980 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_34_4981 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_82_4982 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N30 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_426_4986 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_484_4987 : STD_LOGIC; 
  signal U18_count_per_cmp_eq000068_4988 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_14_4990 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N9 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_58_4992 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_4_27_4994 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_2217_4995 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_1798_4997 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_772_4998 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_253_4999 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_725_5000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_636_5001 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1872_5002 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_705_5003 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1131_5004 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1313_5005 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1098_5006 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1477_5007 : STD_LOGIC; 
  signal U6_bcd10_0_bdd0 : STD_LOGIC; 
  signal U6_bcd10_0_bdd1 : STD_LOGIC; 
  signal U34_o_0_cmp_eq000026_5010 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal U20_pb_deb_not0001 : STD_LOGIC; 
  signal U20_pb_sampled_5013 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_91_0 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_179_5016 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_253_0 : STD_LOGIC; 
  signal U3_bcd10_0_bdd0 : STD_LOGIC; 
  signal U3_bcd10_0_bdd1 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_389_5021 : STD_LOGIC; 
  signal U5_bcd10_0_bdd0 : STD_LOGIC; 
  signal U5_bcd10_0_bdd1 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_424_5024 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_586_5025 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_251_5026 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_4_57_5028 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N33 : STD_LOGIC; 
  signal U34_o_0_cmp_eq0000107_5030 : STD_LOGIC; 
  signal U2_N8 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal U15_btn_inv : STD_LOGIC; 
  signal U23_btn_inv : STD_LOGIC; 
  signal U14_bcd10_0_bdd1 : STD_LOGIC; 
  signal U14_bcd10_0_bdd0 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal U22_pb_deb_not0001 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal U16_pb_deb_not0001 : STD_LOGIC; 
  signal U24_pb_deb_not0001 : STD_LOGIC; 
  signal U34_buzz_inv : STD_LOGIC; 
  signal U18_pb_deb_not0001 : STD_LOGIC; 
  signal U22_pb_sampled_5050 : STD_LOGIC; 
  signal U34_o_0_cmp_eq000040_5051 : STD_LOGIC; 
  signal U19_btn_inv : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal U16_pb_sampled_5054 : STD_LOGIC; 
  signal U24_pb_sampled_5055 : STD_LOGIC; 
  signal U20_count_per_cmp_eq000068_5057 : STD_LOGIC; 
  signal U16_count_per_cmp_eq000068_5058 : STD_LOGIC; 
  signal U24_count_per_cmp_eq000068_5059 : STD_LOGIC; 
  signal U18_pb_sampled_5060 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal U37_buzz_5062 : STD_LOGIC; 
  signal U1_clk_1hz_cmp_eq0000116_5063 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal U1_clk_1hz_cmp_eq0000169_5065 : STD_LOGIC; 
  signal U1_clk_1hz_cmp_eq0000138_5066 : STD_LOGIC; 
  signal U21_btn_inv : STD_LOGIC; 
  signal U27_bcd10_0_bdd1 : STD_LOGIC; 
  signal U27_bcd10_0_bdd0 : STD_LOGIC; 
  signal U34_o_0_cmp_eq0000 : STD_LOGIC; 
  signal U34_o_0_cmp_eq0000185_5071 : STD_LOGIC; 
  signal U34_o_0_cmp_eq0000138_5072 : STD_LOGIC; 
  signal U17_btn_inv : STD_LOGIC; 
  signal U36_N15 : STD_LOGIC; 
  signal U22_count_per_cmp_eq000068_5076 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal U36_N7 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal U2_N17 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_150_5087 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1458_5088 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd1_In184_5090 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1661_5091 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_691_5092 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_256_5094 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_270_5095 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_2274_5099 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_465_5100 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_7_5103 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1143_5106 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_4_113_5107 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N2 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_28_5109 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal U30_my_hd44780_simple_valuez_cmp_le0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_5_2_5118 : STD_LOGIC; 
  signal U18_count_per_2_rt_15 : STD_LOGIC; 
  signal U18_count_per_3_rt_10 : STD_LOGIC; 
  signal U18_count_per_1_rt_0 : STD_LOGIC; 
  signal U1_count_5_rt_143 : STD_LOGIC; 
  signal U1_count_6_rt_141 : STD_LOGIC; 
  signal U1_count_7_rt_135 : STD_LOGIC; 
  signal U1_count_4_rt_132 : STD_LOGIC; 
  signal U1_count_2_rt_122 : STD_LOGIC; 
  signal U1_count_3_rt_117 : STD_LOGIC; 
  signal U1_count_1_rt_107 : STD_LOGIC; 
  signal U1_count_9_rt_165 : STD_LOGIC; 
  signal U1_count_10_rt_163 : STD_LOGIC; 
  signal U1_count_11_rt_157 : STD_LOGIC; 
  signal U1_count_8_rt_154 : STD_LOGIC; 
  signal U18_count_per_9_rt_58 : STD_LOGIC; 
  signal U18_count_per_10_rt_56 : STD_LOGIC; 
  signal U18_count_per_11_rt_50 : STD_LOGIC; 
  signal U18_count_per_8_rt_47 : STD_LOGIC; 
  signal U18_count_per_5_rt_36 : STD_LOGIC; 
  signal U18_count_per_6_rt_34 : STD_LOGIC; 
  signal U18_count_per_7_rt_28 : STD_LOGIC; 
  signal U18_count_per_4_rt_25 : STD_LOGIC; 
  signal U18_count_per_17_rt_98 : STD_LOGIC; 
  signal U18_count_per_16_rt_97 : STD_LOGIC; 
  signal U18_count_per_19_rt_93 : STD_LOGIC; 
  signal U18_count_per_18_rt_89 : STD_LOGIC; 
  signal U18_count_per_13_rt_80 : STD_LOGIC; 
  signal U18_count_per_14_rt_78 : STD_LOGIC; 
  signal U18_count_per_15_rt_72 : STD_LOGIC; 
  signal U18_count_per_12_rt_69 : STD_LOGIC; 
  signal U1_count_25_rt_253 : STD_LOGIC; 
  signal U1_count_26_rt_251 : STD_LOGIC; 
  signal U1_count_27_rt_245 : STD_LOGIC; 
  signal U1_count_24_rt_242 : STD_LOGIC; 
  signal U1_count_17_rt_209 : STD_LOGIC; 
  signal U1_count_18_rt_207 : STD_LOGIC; 
  signal U1_count_19_rt_201 : STD_LOGIC; 
  signal U1_count_16_rt_198 : STD_LOGIC; 
  signal U1_count_13_rt_187 : STD_LOGIC; 
  signal U1_count_14_rt_185 : STD_LOGIC; 
  signal U1_count_15_rt_179 : STD_LOGIC; 
  signal U1_count_12_rt_176 : STD_LOGIC; 
  signal U1_count_21_rt_231 : STD_LOGIC; 
  signal U1_count_22_rt_229 : STD_LOGIC; 
  signal U1_count_23_rt_223 : STD_LOGIC; 
  signal U1_count_20_rt_220 : STD_LOGIC; 
  signal U1_count_29_rt_271 : STD_LOGIC; 
  signal U1_count_28_rt_270 : STD_LOGIC; 
  signal U1_count_31_rt_266 : STD_LOGIC; 
  signal U1_count_30_rt_262 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_11_U1_count_9_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_11_U1_count_10_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_11_U1_count_11_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_11_U1_count_8_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_3_U1_count_2_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_3_U1_count_3_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_3_U1_count_1_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_7_U1_count_5_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_7_U1_count_6_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_7_U1_count_7_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_7_U1_count_4_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_15_U1_count_13_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_15_U1_count_14_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_15_U1_count_15_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_15_U1_count_12_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_19_U1_count_17_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_19_U1_count_18_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_19_U1_count_19_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_19_U1_count_16_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_23_U1_count_21_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_23_U1_count_22_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_23_U1_count_23_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_23_U1_count_20_rt : STD_LOGIC; 
  signal U22_count_per_2_rt_468 : STD_LOGIC; 
  signal U22_count_per_3_rt_463 : STD_LOGIC; 
  signal U22_count_per_1_rt_453 : STD_LOGIC; 
  signal U22_count_per_9_rt_511 : STD_LOGIC; 
  signal U22_count_per_10_rt_509 : STD_LOGIC; 
  signal U22_count_per_11_rt_503 : STD_LOGIC; 
  signal U22_count_per_8_rt_500 : STD_LOGIC; 
  signal U1_count_add0000_31_U1_count_29_rt : STD_LOGIC; 
  signal U1_count_add0000_31_U1_count_28_rt : STD_LOGIC; 
  signal U1_count_add0000_31_U1_count_31_rt : STD_LOGIC; 
  signal U1_count_add0000_31_U1_count_30_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_27_U1_count_25_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_27_U1_count_26_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_27_U1_count_27_rt : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_27_U1_count_24_rt : STD_LOGIC; 
  signal U22_count_per_13_rt_533 : STD_LOGIC; 
  signal U22_count_per_14_rt_531 : STD_LOGIC; 
  signal U22_count_per_15_rt_525 : STD_LOGIC; 
  signal U22_count_per_12_rt_522 : STD_LOGIC; 
  signal U22_count_per_5_rt_489 : STD_LOGIC; 
  signal U22_count_per_6_rt_487 : STD_LOGIC; 
  signal U22_count_per_7_rt_481 : STD_LOGIC; 
  signal U22_count_per_4_rt_478 : STD_LOGIC; 
  signal U22_count_per_17_rt_551 : STD_LOGIC; 
  signal U22_count_per_16_rt_550 : STD_LOGIC; 
  signal U22_count_per_19_rt_546 : STD_LOGIC; 
  signal U22_count_per_18_rt_542 : STD_LOGIC; 
  signal U34_cnt_21_rt_684 : STD_LOGIC; 
  signal U34_cnt_22_rt_682 : STD_LOGIC; 
  signal U34_cnt_23_rt_676 : STD_LOGIC; 
  signal U34_cnt_20_rt_673 : STD_LOGIC; 
  signal U34_cnt_2_rt_575 : STD_LOGIC; 
  signal U34_cnt_3_rt_570 : STD_LOGIC; 
  signal U34_cnt_1_rt_560 : STD_LOGIC; 
  signal U34_cnt_9_rt_618 : STD_LOGIC; 
  signal U34_cnt_10_rt_616 : STD_LOGIC; 
  signal U34_cnt_11_rt_610 : STD_LOGIC; 
  signal U34_cnt_8_rt_607 : STD_LOGIC; 
  signal U34_cnt_13_rt_640 : STD_LOGIC; 
  signal U34_cnt_14_rt_638 : STD_LOGIC; 
  signal U34_cnt_15_rt_632 : STD_LOGIC; 
  signal U34_cnt_12_rt_629 : STD_LOGIC; 
  signal U34_cnt_5_rt_596 : STD_LOGIC; 
  signal U34_cnt_6_rt_594 : STD_LOGIC; 
  signal U34_cnt_7_rt_588 : STD_LOGIC; 
  signal U34_cnt_4_rt_585 : STD_LOGIC; 
  signal U34_cnt_17_rt_662 : STD_LOGIC; 
  signal U34_cnt_18_rt_660 : STD_LOGIC; 
  signal U34_cnt_19_rt_654 : STD_LOGIC; 
  signal U34_cnt_16_rt_651 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez8 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez9 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez11 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez10 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez1 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez2 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez3 : STD_LOGIC; 
  signal U34_cnt_25_rt_706 : STD_LOGIC; 
  signal U34_cnt_26_rt_704 : STD_LOGIC; 
  signal U34_cnt_27_rt_698 : STD_LOGIC; 
  signal U34_cnt_24_rt_695 : STD_LOGIC; 
  signal U34_cnt_29_rt_724 : STD_LOGIC; 
  signal U34_cnt_28_rt_723 : STD_LOGIC; 
  signal U34_cnt_31_rt_719 : STD_LOGIC; 
  signal U34_cnt_30_rt_715 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez4 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez5 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez6 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez7 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez12 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez13 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez15 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez14 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_23_U34_cnt_21_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_23_U34_cnt_22_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_23_U34_cnt_23_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_23_U34_cnt_20_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_11_U34_cnt_9_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_11_U34_cnt_10_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_11_U34_cnt_11_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_11_U34_cnt_8_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_15_U34_cnt_13_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_15_U34_cnt_14_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_15_U34_cnt_15_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_15_U34_cnt_12_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_3_U34_cnt_2_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_3_U34_cnt_3_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_3_U34_cnt_1_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_19_U34_cnt_17_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_19_U34_cnt_18_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_19_U34_cnt_19_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_19_U34_cnt_16_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_7_U34_cnt_5_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_7_U34_cnt_6_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_7_U34_cnt_7_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_7_U34_cnt_4_rt : STD_LOGIC; 
  signal U20_count_per_5_rt_1083 : STD_LOGIC; 
  signal U20_count_per_6_rt_1081 : STD_LOGIC; 
  signal U20_count_per_7_rt_1075 : STD_LOGIC; 
  signal U20_count_per_4_rt_1072 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_27_U34_cnt_25_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_27_U34_cnt_26_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_27_U34_cnt_27_rt : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_27_U34_cnt_24_rt : STD_LOGIC; 
  signal U34_Result_31_U34_cnt_29_rt : STD_LOGIC; 
  signal U34_Result_31_U34_cnt_28_rt : STD_LOGIC; 
  signal U34_Result_31_U34_cnt_31_rt : STD_LOGIC; 
  signal U34_Result_31_U34_cnt_30_rt : STD_LOGIC; 
  signal U20_count_per_9_rt_1105 : STD_LOGIC; 
  signal U20_count_per_10_rt_1103 : STD_LOGIC; 
  signal U20_count_per_11_rt_1097 : STD_LOGIC; 
  signal U20_count_per_8_rt_1094 : STD_LOGIC; 
  signal U20_count_per_2_rt_1062 : STD_LOGIC; 
  signal U20_count_per_3_rt_1057 : STD_LOGIC; 
  signal U20_count_per_1_rt_1047 : STD_LOGIC; 
  signal U20_count_per_13_rt_1127 : STD_LOGIC; 
  signal U20_count_per_14_rt_1125 : STD_LOGIC; 
  signal U20_count_per_15_rt_1119 : STD_LOGIC; 
  signal U20_count_per_12_rt_1116 : STD_LOGIC; 
  signal U20_count_per_17_rt_1145 : STD_LOGIC; 
  signal U20_count_per_16_rt_1144 : STD_LOGIC; 
  signal U20_count_per_19_rt_1140 : STD_LOGIC; 
  signal U20_count_per_18_rt_1136 : STD_LOGIC; 
  signal U16_count_per_13_rt_1234 : STD_LOGIC; 
  signal U16_count_per_14_rt_1232 : STD_LOGIC; 
  signal U16_count_per_15_rt_1226 : STD_LOGIC; 
  signal U16_count_per_12_rt_1223 : STD_LOGIC; 
  signal U16_count_per_9_rt_1212 : STD_LOGIC; 
  signal U16_count_per_10_rt_1210 : STD_LOGIC; 
  signal U16_count_per_11_rt_1204 : STD_LOGIC; 
  signal U16_count_per_8_rt_1201 : STD_LOGIC; 
  signal U16_count_per_17_rt_1252 : STD_LOGIC; 
  signal U16_count_per_16_rt_1251 : STD_LOGIC; 
  signal U16_count_per_19_rt_1247 : STD_LOGIC; 
  signal U16_count_per_18_rt_1243 : STD_LOGIC; 
  signal U24_count_per_2_rt_1276 : STD_LOGIC; 
  signal U24_count_per_3_rt_1271 : STD_LOGIC; 
  signal U24_count_per_1_rt_1261 : STD_LOGIC; 
  signal U16_count_per_5_rt_1190 : STD_LOGIC; 
  signal U16_count_per_6_rt_1188 : STD_LOGIC; 
  signal U16_count_per_7_rt_1182 : STD_LOGIC; 
  signal U16_count_per_4_rt_1179 : STD_LOGIC; 
  signal U16_count_per_2_rt_1169 : STD_LOGIC; 
  signal U16_count_per_3_rt_1164 : STD_LOGIC; 
  signal U16_count_per_1_rt_1154 : STD_LOGIC; 
  signal U24_count_per_13_rt_1341 : STD_LOGIC; 
  signal U24_count_per_14_rt_1339 : STD_LOGIC; 
  signal U24_count_per_15_rt_1333 : STD_LOGIC; 
  signal U24_count_per_12_rt_1330 : STD_LOGIC; 
  signal U24_count_per_17_rt_1359 : STD_LOGIC; 
  signal U24_count_per_16_rt_1358 : STD_LOGIC; 
  signal U24_count_per_19_rt_1354 : STD_LOGIC; 
  signal U24_count_per_18_rt_1350 : STD_LOGIC; 
  signal U24_count_per_5_rt_1297 : STD_LOGIC; 
  signal U24_count_per_6_rt_1295 : STD_LOGIC; 
  signal U24_count_per_7_rt_1289 : STD_LOGIC; 
  signal U24_count_per_4_rt_1286 : STD_LOGIC; 
  signal U24_count_per_9_rt_1319 : STD_LOGIC; 
  signal U24_count_per_10_rt_1317 : STD_LOGIC; 
  signal U24_count_per_11_rt_1311 : STD_LOGIC; 
  signal U24_count_per_8_rt_1308 : STD_LOGIC; 
  signal rst_IBUF_5373 : STD_LOGIC; 
  signal clk_IBUF : STD_LOGIC; 
  signal pb_canceltimer_IBUF_5401 : STD_LOGIC; 
  signal U1_count_1_rstpot1_1441 : STD_LOGIC; 
  signal U1_count_0_rstpot1_1430 : STD_LOGIC; 
  signal U1_count_3_rstpot1_1424 : STD_LOGIC; 
  signal U1_count_2_rstpot1_1422 : STD_LOGIC; 
  signal pb_min_IBUF_5395 : STD_LOGIC; 
  signal U1_count_10_rstpot_1492 : STD_LOGIC; 
  signal U1_count_9_rstpot_1487 : STD_LOGIC; 
  signal U1_count_8_rstpot_1486 : STD_LOGIC; 
  signal U1_count_11_rstpot_1475 : STD_LOGIC; 
  signal U1_count_16_rstpot1_1538 : STD_LOGIC; 
  signal U1_count_17_rstpot_1537 : STD_LOGIC; 
  signal U1_count_18_rstpot1_1535 : STD_LOGIC; 
  signal U1_count_19_rstpot_1521 : STD_LOGIC; 
  signal pb_settime_IBUF_5404 : STD_LOGIC; 
  signal U1_count_5_rstpot1_1466 : STD_LOGIC; 
  signal U1_count_4_rstpot1_1455 : STD_LOGIC; 
  signal U1_count_7_rstpot1_1449 : STD_LOGIC; 
  signal U1_count_6_rstpot1_1447 : STD_LOGIC; 
  signal U1_count_12_rstpot_1518 : STD_LOGIC; 
  signal U1_count_13_rstpot1_1508 : STD_LOGIC; 
  signal U1_count_14_rstpot1_1507 : STD_LOGIC; 
  signal U1_count_15_rstpot1_1504 : STD_LOGIC; 
  signal pb_hour_IBUF_5390 : STD_LOGIC; 
  signal pb_settimer_IBUF_5398 : STD_LOGIC; 
  signal U1_count_31_rstpot_1668 : STD_LOGIC; 
  signal U1_count_24_rstpot1_1591 : STD_LOGIC; 
  signal U1_count_26_rstpot1_1588 : STD_LOGIC; 
  signal U1_count_25_rstpot_1572 : STD_LOGIC; 
  signal U1_count_21_rstpot1_1566 : STD_LOGIC; 
  signal U1_count_20_rstpot1_1555 : STD_LOGIC; 
  signal U1_count_23_rstpot1_1549 : STD_LOGIC; 
  signal U1_count_22_rstpot1_1547 : STD_LOGIC; 
  signal U1_clk_1hz_rstpot_1652 : STD_LOGIC; 
  signal U1_count_29_rstpot_1618 : STD_LOGIC; 
  signal U1_count_28_rstpot_1613 : STD_LOGIC; 
  signal U1_count_27_rstpot_1612 : STD_LOGIC; 
  signal U1_count_30_rstpot_1601 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_2 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_0 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_3 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_1 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_2 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_0 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_3 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_1 : STD_LOGIC; 
  signal U36_Mcount_cs3 : STD_LOGIC; 
  signal U36_Mcount_cs2 : STD_LOGIC; 
  signal U36_Mcount_cs4 : STD_LOGIC; 
  signal U36_Mcount_cs : STD_LOGIC; 
  signal U36_Mcount_cs1 : STD_LOGIC; 
  signal U21_pulse_mux0000 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_9 : STD_LOGIC; 
  signal U17_pulse_mux0000 : STD_LOGIC; 
  signal U36_Mcount_cs5 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_18 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_17 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_19 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_6 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_4 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_7 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_5 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_9 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_2 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_0 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_3 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_1 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_15 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_13 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_16 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_14 : STD_LOGIC; 
  signal U15_pulse_mux0000 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_11_1917 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_8 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_12 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_10 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_18 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_17 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_19 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_15 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_13 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_16 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_14 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_15 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_13 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_16 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_14 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_11_2402 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_8 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_12 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_10 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_9 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_6 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_4 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_7 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_5 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_11_2484 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_8 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_12 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_10 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_6 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_4 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_7 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_5 : STD_LOGIC; 
  signal U2_Mcount_cs : STD_LOGIC; 
  signal U2_Mcount_cs2 : STD_LOGIC; 
  signal U2_Mcount_cs1 : STD_LOGIC; 
  signal U2_Mcount_cs3 : STD_LOGIC; 
  signal U2_Mcount_cs4 : STD_LOGIC; 
  signal U2_Mcount_cs5 : STD_LOGIC; 
  signal U2_Mcount_cs6 : STD_LOGIC; 
  signal U34_cnt_0_rstpot_2676 : STD_LOGIC; 
  signal U34_cnt_1_rstpot_2672 : STD_LOGIC; 
  signal U34_cnt_3_rstpot_2668 : STD_LOGIC; 
  signal U34_cnt_2_rstpot_2664 : STD_LOGIC; 
  signal U37_cur_state_cmp_eq0002 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_18 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_17 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_19 : STD_LOGIC; 
  signal U37_cur_state_cmp_eq0004 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_2554 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd1_In : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd3_In : STD_LOGIC; 
  signal U34_cnt_16_rstpot_2744 : STD_LOGIC; 
  signal U34_cnt_17_rstpot_2740 : STD_LOGIC; 
  signal U34_cnt_19_rstpot_2736 : STD_LOGIC; 
  signal U34_cnt_18_rstpot_2732 : STD_LOGIC; 
  signal U34_cnt_12_rstpot_2727 : STD_LOGIC; 
  signal U34_cnt_13_rstpot_2723 : STD_LOGIC; 
  signal U34_cnt_15_rstpot_2719 : STD_LOGIC; 
  signal U34_cnt_14_rstpot_2715 : STD_LOGIC; 
  signal U34_cnt_8_rstpot_2710 : STD_LOGIC; 
  signal U34_cnt_9_rstpot_2706 : STD_LOGIC; 
  signal U34_cnt_11_rstpot_2702 : STD_LOGIC; 
  signal U34_cnt_10_rstpot_2698 : STD_LOGIC; 
  signal U34_cnt_20_rstpot_2761 : STD_LOGIC; 
  signal U34_cnt_21_rstpot_2757 : STD_LOGIC; 
  signal U34_cnt_23_rstpot_2753 : STD_LOGIC; 
  signal U34_cnt_22_rstpot_2749 : STD_LOGIC; 
  signal U34_cnt_4_rstpot_2693 : STD_LOGIC; 
  signal U34_cnt_5_rstpot_2689 : STD_LOGIC; 
  signal U34_cnt_7_rstpot_2685 : STD_LOGIC; 
  signal U34_cnt_6_rstpot_2681 : STD_LOGIC; 
  signal U34_cnt_24_rstpot_2778 : STD_LOGIC; 
  signal U34_cnt_25_rstpot_2774 : STD_LOGIC; 
  signal U34_cnt_27_rstpot_2770 : STD_LOGIC; 
  signal U34_cnt_26_rstpot_2766 : STD_LOGIC; 
  signal U34_cnt_29_rstpot_2790 : STD_LOGIC; 
  signal U34_cnt_28_rstpot_2788 : STD_LOGIC; 
  signal U34_cnt_30_rstpot_2785 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_91_2873 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_1224_2909 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_253_2973 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal U2_ch_mux0001_6_1_2865 : STD_LOGIC; 
  signal U2_ch_mux0001_6_2_2859 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1045_2980 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd2_In_2829 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal U37_cur_state_cmp_eq0003 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_2837 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_Q : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_9 : STD_LOGIC; 
  signal U34_cnt_31_rstpot_3060 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_Q : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_15 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_13 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_16 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_14 : STD_LOGIC; 
  signal U23_pulse_mux0000 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_18 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_17 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_19 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_6 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_4 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_7 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_5 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_2 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_0 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_3 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_1 : STD_LOGIC; 
  signal U19_pulse_mux0000 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_11_3422 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_8 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_12 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_10 : STD_LOGIC; 
  signal U30_my_hd44780_simple_cur_line_0_mux0000_3518 : STD_LOGIC; 
  signal U30_my_hd44780_simple_state2timer_go_mux0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_10_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_11_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_12_Q : STD_LOGIC; 
  signal U37_mux0001 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_15_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_13_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_cur_state_mux0000_1_2_3614 : STD_LOGIC; 
  signal U30_my_hd44780_simple_cur_state_mux0000_1_1_3607 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer2state_done_mux0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_3_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_5_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_en_started_0_mux0000 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_9 : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_7_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_6_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_9_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_8_Q : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_5_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_6_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_8_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_7_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_11_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_9_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_rs_mux0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_2_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_3_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count2 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count3 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count4 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count1 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count5 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count6 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_5_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_7_Q : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_2 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_0 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_3 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_1 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_11_4266 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_8 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_12 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_10 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_15 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_13 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_16 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_14 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_18 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_17 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_19 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_6 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_4 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_7 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_5 : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_valuez_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_settingtimeout_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_db_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_settingtimerout_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_buzzerleds_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ovenout_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_clk_1hz_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_count_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_pb_deb_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_pb_deb_IN : STD_LOGIC; 
  signal NlwBufferSignal_U16_pb_sampled_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_pb_sampled_IN : STD_LOGIC; 
  signal NlwBufferSignal_U22_pb_deb_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_pb_deb_IN : STD_LOGIC; 
  signal NlwBufferSignal_U22_pb_sampled_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_pb_sampled_IN : STD_LOGIC; 
  signal NlwBufferSignal_buzzerleds_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_rs_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_buzzerleds_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_buzzerleds_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hd44780_en_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cm_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cm_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cm_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cm_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cs_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cs_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cs_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cs_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cs_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U21_pulse_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_clk_deb_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U17_pulse_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U17_state_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cs_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U15_state_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_pb_sampled_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_pb_sampled_IN : STD_LOGIC; 
  signal NlwBufferSignal_U18_pb_deb_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_pb_deb_IN : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_clk_deb_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U15_pulse_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U22_count_per_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U21_state_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_clk_deb_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U16_count_per_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cs_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cs_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cs_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_ch_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_ch_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_ch_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cm_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cm_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cm_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cs_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cs_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cs_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cs_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cm_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cm_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U36_cm_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U37_reset_time_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cm_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U37_reset_timer_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_ch_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_ch_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_ch_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U18_count_per_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cm_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cm_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_cm_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U37_set_timer_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U37_cur_state_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U37_cur_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_ch_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U37_cur_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U37_set_time_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_clk_deb_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_cnt_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U19_state_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U37_buzz_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U37_buzz_IN : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U23_pulse_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U23_state_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U19_pulse_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_count_per_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_ddram_addr_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_ddram_addr_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_ddram_addr_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_line_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_pb_deb_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_pb_deb_IN : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_en_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_en_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_state2timer_go_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_o_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_o_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_U34_o_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_o_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_U34_o_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_o_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_o_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_next_state_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_next_state_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_next_state_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U37_oven_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_pb_sampled_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U20_pb_sampled_IN : STD_LOGIC; 
  signal NlwBufferSignal_U34_leds_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_leds_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_leds_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U34_leds_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer2state_done_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_next_state_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_next_state_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_next_state_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_next_state_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_en_started_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_clk_deb_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_next_state_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_next_state_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_next_state_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_next_state_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_en_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_pb_sampled_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_pb_sampled_IN : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_hd44780_rs_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_en_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_en_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_clk_us_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_cur_state_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_running_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_running_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_pb_deb_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_pb_deb_IN : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U24_count_per_4_CLK : STD_LOGIC; 
  signal NLW_BUS2432_6_140_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_141_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_142_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_11_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_24_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_25_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_26_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_27_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_28_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_CYINITGND_1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_29_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_30_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_6_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_20_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_21_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_22_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_23_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_132_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_133_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_134_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_135_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_136_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_137_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_138_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_139_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_125_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_126_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_127_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_128_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U18_Mcount_count_per_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_129_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_130_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_131_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_4_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_5_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_6_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_7_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_12_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_13_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_14_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_15_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_16_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_17_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_18_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_19_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_8_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_9_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_10_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_11_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Mcount_count_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_2_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_3_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_52_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_53_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_54_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_55_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_60_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_CYINITGND_2_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_61_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_62_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_7_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_56_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_57_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_58_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_59_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_48_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_49_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_50_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_51_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_44_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_45_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_46_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_47_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_40_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_41_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_42_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_43_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_100_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_CYINITGND_3_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_101_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_102_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_9_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_92_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_93_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_94_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_95_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_33_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_34_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_35_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_36_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_Madd_count_add0000_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_37_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_38_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_39_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_88_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_89_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_90_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_91_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_96_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_97_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_98_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_99_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U22_Mcount_count_per_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_85_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_86_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_87_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_204_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_205_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_206_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_207_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_224_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_CYINITGND_4_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_225_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_226_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_14_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_216_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_217_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_218_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_219_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_212_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_213_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_214_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_215_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_220_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_221_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_222_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_223_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_208_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_209_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_210_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_211_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_BUS2432_5_18_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_19_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_20_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_21_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_26_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_27_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_28_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_29_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_200_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_201_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_202_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_203_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Madd_o_0_add0000_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_197_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_198_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_199_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_22_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_23_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_24_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_25_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_xor_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_xor_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_xor_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_xor_15_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U30_my_hd44780_simple_Mcount_valuez_xor_15_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_15_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_16_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_17_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_172_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_173_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_174_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_175_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_184_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_185_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_186_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_187_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_180_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_181_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_182_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_183_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_192_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_CYINITGND_5_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_193_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_194_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_13_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_176_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_177_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_178_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_179_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_188_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_189_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_190_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_191_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_116_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_117_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_118_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_119_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_168_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_169_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_170_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_171_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U34_Mcount_cnt_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_165_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_166_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_167_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_112_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_113_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_114_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_115_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_120_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_CYINITGND_6_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_121_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_122_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_10_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_108_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_109_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_110_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_111_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U20_Mcount_count_per_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_105_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_106_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_107_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_148_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_149_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_150_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_151_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_152_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_153_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_154_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_155_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_145_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_146_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_147_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_80_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_CYINITGND_8_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_81_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_82_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_8_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_156_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_157_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_158_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_159_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_160_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp0_CYINITGND_7_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U16_Mcount_count_per_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_161_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_162_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_5_12_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_68_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_69_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_70_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_71_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_xor_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_xor_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_xor_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_xor_19_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_xor_19_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_65_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_66_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_67_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_76_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_77_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_78_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_79_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_72_SLICEL_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U24_Mcount_count_per_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_73_SLICEL_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_74_SLICEL_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_75_SLICEL_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_BUS2432_6_233_SLICEL_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_BUS2432_6_232_SLICEL_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal U18_count_per : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U1_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U22_count_per : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U34_cnt : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U30_my_hd44780_simple_valuez : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U20_count_per : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U16_count_per : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U24_count_per : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U34_leds : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U30_my_hd44780_simple_en_started : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U30_my_hd44780_simple_cur_state : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal U2_cs : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U30_my_hd44780_simple_Madd_cur_ddram_addr_addsub0000_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal U30_my_hd44780_simple_cur_ddram_addr : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U2_ch : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U2_cm : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U30_my_hd44780_simple_en_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U30_my_hd44780_simple_count : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U21_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U15_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U23_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U17_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U19_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U36_cm : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U36_cs : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal U30_my_hd44780_simple_cur_line : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BUS1989 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal BUS2432 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal U34_o : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U36_Mcount_cs_lut : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal U30_my_hd44780_simple_running : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U30_my_hd44780_simple_Mcount_count_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U18_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U18_Mcount_count_per_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U1_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_count_add0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U1_Madd_count_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U22_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U22_Mcount_count_per_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U34_o_0_add0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U34_Madd_o_0_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U30_my_hd44780_simple_Mcount_valuez_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U34_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U34_Mcount_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U20_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U20_Mcount_count_per_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U16_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U24_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U24_Mcount_count_per_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U16_Mcount_count_per_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U36_cm_mux0002 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U2_ch_mux0001 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U2_cm_mux0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U30_my_hd44780_simple_cur_ddram_addr_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U30_my_hd44780_simple_en_count_mux0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U30_my_hd44780_simple_cur_state_mux0000 : STD_LOGIC_VECTOR ( 12 downto 0 ); 
begin
  U18_Mcount_count_per_cy_3_U18_Mcount_count_per_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(3),
      O => U18_Result_3_0
    );
  U18_Mcount_count_per_cy_3_U18_Mcount_count_per_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(2),
      O => U18_Result_2_0
    );
  U18_Mcount_count_per_cy_3_U18_Mcount_count_per_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(1),
      O => U18_Result_1_0
    );
  U18_Mcount_count_per_cy_3_U18_Mcount_count_per_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(0),
      O => U18_Result_0_0
    );
  U18_count_per_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y82",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U18_count_per(3),
      ADR5 => '1',
      O => U18_count_per_3_rt_10
    );
  BUS2432_6_140_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_140_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp0_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X34Y82"
    )
    port map (
      O => NLW_ProtoComp0_CYINITGND_O_UNCONNECTED
    );
  U18_Mcount_count_per_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y82"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U18_Mcount_count_per_cy_3_Q_4332,
      CO(2) => NLW_U18_Mcount_count_per_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U18_Mcount_count_per_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U18_Mcount_count_per_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => U18_Result(3),
      O(2) => U18_Result(2),
      O(1) => U18_Result(1),
      O(0) => U18_Result(0),
      S(3) => U18_count_per_3_rt_10,
      S(2) => U18_count_per_2_rt_15,
      S(1) => U18_count_per_1_rt_0,
      S(0) => U18_Mcount_count_per_lut(0)
    );
  U18_count_per_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y82",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U18_count_per(2),
      ADR5 => '1',
      O => U18_count_per_2_rt_15
    );
  BUS2432_6_141_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_141_SLICEL_C5LUT_O_UNCONNECTED
    );
  U18_count_per_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y82",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U18_count_per(1),
      ADR5 => '1',
      O => U18_count_per_1_rt_0
    );
  BUS2432_6_142_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y82",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_142_SLICEL_B5LUT_O_UNCONNECTED
    );
  U18_Mcount_count_per_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y82",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U18_count_per(0),
      ADR5 => '1',
      O => U18_Mcount_count_per_lut(0)
    );
  BUS2432_5_11_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y82",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_11_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_7_U1_Mcount_count_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(7),
      O => U1_Result_7_0
    );
  U1_Mcount_count_cy_7_U1_Mcount_count_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(6),
      O => U1_Result_6_0
    );
  U1_Mcount_count_cy_7_U1_Mcount_count_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(5),
      O => U1_Result_5_0
    );
  U1_Mcount_count_cy_7_U1_Mcount_count_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(4),
      O => U1_Result_4_0
    );
  U1_count_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(7),
      ADR5 => '1',
      O => U1_count_7_rt_135
    );
  BUS2432_6_24_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_24_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y30"
    )
    port map (
      CI => U1_Mcount_count_cy_3_Q_4377,
      CYINIT => '0',
      CO(3) => U1_Mcount_count_cy_7_Q_4386,
      CO(2) => NLW_U1_Mcount_count_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Mcount_count_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Mcount_count_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_Result(7),
      O(2) => U1_Result(6),
      O(1) => U1_Result(5),
      O(0) => U1_Result(4),
      S(3) => U1_count_7_rt_135,
      S(2) => U1_count_6_rt_141,
      S(1) => U1_count_5_rt_143,
      S(0) => U1_count_4_rt_132
    );
  U1_count_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(6),
      ADR5 => '1',
      O => U1_count_6_rt_141
    );
  BUS2432_6_25_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_25_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(5),
      ADR5 => '1',
      O => U1_count_5_rt_143
    );
  BUS2432_6_26_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_26_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(4),
      ADR5 => '1',
      O => U1_count_4_rt_132
    );
  BUS2432_6_27_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_27_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_3_U1_Mcount_count_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(3),
      O => U1_Result_3_0
    );
  U1_Mcount_count_cy_3_U1_Mcount_count_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(2),
      O => U1_Result_2_0
    );
  U1_Mcount_count_cy_3_U1_Mcount_count_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(1),
      O => U1_Result_1_0
    );
  U1_Mcount_count_cy_3_U1_Mcount_count_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(0),
      O => U1_Result_0_0
    );
  U1_count_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(3),
      ADR5 => '1',
      O => U1_count_3_rt_117
    );
  BUS2432_6_28_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_28_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp0_CYINITGND_1 : X_ZERO
    generic map(
      LOC => "SLICE_X18Y29"
    )
    port map (
      O => NLW_ProtoComp0_CYINITGND_1_O_UNCONNECTED
    );
  U1_Mcount_count_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y29"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U1_Mcount_count_cy_3_Q_4377,
      CO(2) => NLW_U1_Mcount_count_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Mcount_count_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Mcount_count_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => U1_Result(3),
      O(2) => U1_Result(2),
      O(1) => U1_Result(1),
      O(0) => U1_Result(0),
      S(3) => U1_count_3_rt_117,
      S(2) => U1_count_2_rt_122,
      S(1) => U1_count_1_rt_107,
      S(0) => U1_Mcount_count_lut(0)
    );
  U1_count_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(2),
      ADR5 => '1',
      O => U1_count_2_rt_122
    );
  BUS2432_6_29_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_29_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(1),
      ADR5 => '1',
      O => U1_count_1_rt_107
    );
  BUS2432_6_30_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_30_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"5555555555555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(0),
      ADR5 => '1',
      O => U1_Mcount_count_lut(0)
    );
  BUS2432_5_6_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y29",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_6_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_11_U1_Mcount_count_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(11),
      O => U1_Result_11_0
    );
  U1_Mcount_count_cy_11_U1_Mcount_count_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(10),
      O => U1_Result_10_0
    );
  U1_Mcount_count_cy_11_U1_Mcount_count_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(9),
      O => U1_Result_9_0
    );
  U1_Mcount_count_cy_11_U1_Mcount_count_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(8),
      O => U1_Result_8_0
    );
  U1_count_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y31",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(11),
      ADR5 => '1',
      O => U1_count_11_rt_157
    );
  BUS2432_6_20_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_20_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y31"
    )
    port map (
      CI => U1_Mcount_count_cy_7_Q_4386,
      CYINIT => '0',
      CO(3) => U1_Mcount_count_cy_11_Q_4395,
      CO(2) => NLW_U1_Mcount_count_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Mcount_count_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Mcount_count_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_Result(11),
      O(2) => U1_Result(10),
      O(1) => U1_Result(9),
      O(0) => U1_Result(8),
      S(3) => U1_count_11_rt_157,
      S(2) => U1_count_10_rt_163,
      S(1) => U1_count_9_rt_165,
      S(0) => U1_count_8_rt_154
    );
  U1_count_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y31",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(10),
      ADR5 => '1',
      O => U1_count_10_rt_163
    );
  BUS2432_6_21_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_21_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y31",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(9),
      ADR5 => '1',
      O => U1_count_9_rt_165
    );
  BUS2432_6_22_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_22_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y31",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(8),
      ADR5 => '1',
      O => U1_count_8_rt_154
    );
  BUS2432_6_23_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_23_SLICEL_A5LUT_O_UNCONNECTED
    );
  U18_Mcount_count_per_cy_11_U18_Mcount_count_per_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(11),
      O => U18_Result_11_0
    );
  U18_Mcount_count_per_cy_11_U18_Mcount_count_per_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(10),
      O => U18_Result_10_0
    );
  U18_Mcount_count_per_cy_11_U18_Mcount_count_per_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(9),
      O => U18_Result_9_0
    );
  U18_Mcount_count_per_cy_11_U18_Mcount_count_per_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(8),
      O => U18_Result_8_0
    );
  U18_count_per_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U18_count_per(11),
      ADR5 => '1',
      O => U18_count_per_11_rt_50
    );
  BUS2432_6_132_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_132_SLICEL_D5LUT_O_UNCONNECTED
    );
  U18_Mcount_count_per_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y84"
    )
    port map (
      CI => U18_Mcount_count_per_cy_7_Q_4342,
      CYINIT => '0',
      CO(3) => U18_Mcount_count_per_cy_11_Q_4351,
      CO(2) => NLW_U18_Mcount_count_per_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U18_Mcount_count_per_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U18_Mcount_count_per_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U18_Result(11),
      O(2) => U18_Result(10),
      O(1) => U18_Result(9),
      O(0) => U18_Result(8),
      S(3) => U18_count_per_11_rt_50,
      S(2) => U18_count_per_10_rt_56,
      S(1) => U18_count_per_9_rt_58,
      S(0) => U18_count_per_8_rt_47
    );
  U18_count_per_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y84",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U18_count_per(10),
      ADR5 => '1',
      O => U18_count_per_10_rt_56
    );
  BUS2432_6_133_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_133_SLICEL_C5LUT_O_UNCONNECTED
    );
  U18_count_per_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y84",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U18_count_per(9),
      ADR5 => '1',
      O => U18_count_per_9_rt_58
    );
  BUS2432_6_134_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_134_SLICEL_B5LUT_O_UNCONNECTED
    );
  U18_count_per_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y84",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U18_count_per(8),
      ADR5 => '1',
      O => U18_count_per_8_rt_47
    );
  BUS2432_6_135_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y84",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_135_SLICEL_A5LUT_O_UNCONNECTED
    );
  U18_Mcount_count_per_cy_7_U18_Mcount_count_per_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(7),
      O => U18_Result_7_0
    );
  U18_Mcount_count_per_cy_7_U18_Mcount_count_per_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(6),
      O => U18_Result_6_0
    );
  U18_Mcount_count_per_cy_7_U18_Mcount_count_per_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(5),
      O => U18_Result_5_0
    );
  U18_Mcount_count_per_cy_7_U18_Mcount_count_per_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(4),
      O => U18_Result_4_0
    );
  U18_count_per_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y83",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U18_count_per(7),
      ADR5 => '1',
      O => U18_count_per_7_rt_28
    );
  BUS2432_6_136_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_136_SLICEL_D5LUT_O_UNCONNECTED
    );
  U18_Mcount_count_per_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y83"
    )
    port map (
      CI => U18_Mcount_count_per_cy_3_Q_4332,
      CYINIT => '0',
      CO(3) => U18_Mcount_count_per_cy_7_Q_4342,
      CO(2) => NLW_U18_Mcount_count_per_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U18_Mcount_count_per_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U18_Mcount_count_per_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U18_Result(7),
      O(2) => U18_Result(6),
      O(1) => U18_Result(5),
      O(0) => U18_Result(4),
      S(3) => U18_count_per_7_rt_28,
      S(2) => U18_count_per_6_rt_34,
      S(1) => U18_count_per_5_rt_36,
      S(0) => U18_count_per_4_rt_25
    );
  U18_count_per_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y83",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U18_count_per(6),
      ADR5 => '1',
      O => U18_count_per_6_rt_34
    );
  BUS2432_6_137_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_137_SLICEL_C5LUT_O_UNCONNECTED
    );
  U18_count_per_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y83",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U18_count_per(5),
      ADR5 => '1',
      O => U18_count_per_5_rt_36
    );
  BUS2432_6_138_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_138_SLICEL_B5LUT_O_UNCONNECTED
    );
  U18_count_per_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y83",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U18_count_per(4),
      ADR5 => '1',
      O => U18_count_per_4_rt_25
    );
  BUS2432_6_139_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y83",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_139_SLICEL_A5LUT_O_UNCONNECTED
    );
  U18_Result_19_U18_Result_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(19),
      O => U18_Result_19_0
    );
  U18_Result_19_U18_Result_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(18),
      O => U18_Result_18_0
    );
  U18_Result_19_U18_Result_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(17),
      O => U18_Result_17_0
    );
  U18_Result_19_U18_Result_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(16),
      O => U18_Result_16_0
    );
  U18_count_per_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => U18_count_per(19),
      O => U18_count_per_19_rt_93
    );
  U18_Mcount_count_per_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y86"
    )
    port map (
      CI => U18_Mcount_count_per_cy_15_Q_4360,
      CYINIT => '0',
      CO(3) => NLW_U18_Mcount_count_per_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_U18_Mcount_count_per_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_U18_Mcount_count_per_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_U18_Mcount_count_per_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_U18_Mcount_count_per_xor_19_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U18_Result(19),
      O(2) => U18_Result(18),
      O(1) => U18_Result(17),
      O(0) => U18_Result(16),
      S(3) => U18_count_per_19_rt_93,
      S(2) => U18_count_per_18_rt_89,
      S(1) => U18_count_per_17_rt_98,
      S(0) => U18_count_per_16_rt_97
    );
  U18_count_per_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U18_count_per(18),
      ADR5 => '1',
      O => U18_count_per_18_rt_89
    );
  BUS2432_6_125_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_125_SLICEL_C5LUT_O_UNCONNECTED
    );
  U18_count_per_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U18_count_per(17),
      ADR5 => '1',
      O => U18_count_per_17_rt_98
    );
  BUS2432_6_126_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_126_SLICEL_B5LUT_O_UNCONNECTED
    );
  U18_count_per_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U18_count_per(16),
      ADR5 => '1',
      O => U18_count_per_16_rt_97
    );
  BUS2432_6_127_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y86",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_127_SLICEL_A5LUT_O_UNCONNECTED
    );
  U18_Mcount_count_per_cy_15_U18_Mcount_count_per_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(15),
      O => U18_Result_15_0
    );
  U18_Mcount_count_per_cy_15_U18_Mcount_count_per_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(14),
      O => U18_Result_14_0
    );
  U18_Mcount_count_per_cy_15_U18_Mcount_count_per_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(13),
      O => U18_Result_13_0
    );
  U18_Mcount_count_per_cy_15_U18_Mcount_count_per_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U18_Result(12),
      O => U18_Result_12_0
    );
  U18_count_per_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U18_count_per(15),
      ADR5 => '1',
      O => U18_count_per_15_rt_72
    );
  BUS2432_6_128_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_128_SLICEL_D5LUT_O_UNCONNECTED
    );
  U18_Mcount_count_per_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y85"
    )
    port map (
      CI => U18_Mcount_count_per_cy_11_Q_4351,
      CYINIT => '0',
      CO(3) => U18_Mcount_count_per_cy_15_Q_4360,
      CO(2) => NLW_U18_Mcount_count_per_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U18_Mcount_count_per_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U18_Mcount_count_per_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U18_Result(15),
      O(2) => U18_Result(14),
      O(1) => U18_Result(13),
      O(0) => U18_Result(12),
      S(3) => U18_count_per_15_rt_72,
      S(2) => U18_count_per_14_rt_78,
      S(1) => U18_count_per_13_rt_80,
      S(0) => U18_count_per_12_rt_69
    );
  U18_count_per_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U18_count_per(14),
      ADR5 => '1',
      O => U18_count_per_14_rt_78
    );
  BUS2432_6_129_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_129_SLICEL_C5LUT_O_UNCONNECTED
    );
  U18_count_per_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U18_count_per(13),
      ADR5 => '1',
      O => U18_count_per_13_rt_80
    );
  BUS2432_6_130_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_130_SLICEL_B5LUT_O_UNCONNECTED
    );
  U18_count_per_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U18_count_per(12),
      ADR5 => '1',
      O => U18_count_per_12_rt_69
    );
  BUS2432_6_131_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y85",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_131_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_27_U1_Mcount_count_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(27),
      O => U1_Result_27_0
    );
  U1_Mcount_count_cy_27_U1_Mcount_count_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(26),
      O => U1_Result_26_0
    );
  U1_Mcount_count_cy_27_U1_Mcount_count_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(25),
      O => U1_Result_25_0
    );
  U1_Mcount_count_cy_27_U1_Mcount_count_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(24),
      O => U1_Result_24_0
    );
  U1_count_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U1_count(27),
      ADR5 => '1',
      O => U1_count_27_rt_245
    );
  BUS2432_6_4_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_4_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y35"
    )
    port map (
      CI => U1_Mcount_count_cy_23_Q_4422,
      CYINIT => '0',
      CO(3) => U1_Mcount_count_cy_27_Q_4431,
      CO(2) => NLW_U1_Mcount_count_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Mcount_count_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Mcount_count_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_Result(27),
      O(2) => U1_Result(26),
      O(1) => U1_Result(25),
      O(0) => U1_Result(24),
      S(3) => U1_count_27_rt_245,
      S(2) => U1_count_26_rt_251,
      S(1) => U1_count_25_rt_253,
      S(0) => U1_count_24_rt_242
    );
  U1_count_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(26),
      ADR5 => '1',
      O => U1_count_26_rt_251
    );
  BUS2432_6_5_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_5_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U1_count(25),
      ADR5 => '1',
      O => U1_count_25_rt_253
    );
  BUS2432_6_6_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_6_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_count(24),
      ADR5 => '1',
      O => U1_count_24_rt_242
    );
  BUS2432_6_7_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_7_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_19_U1_Mcount_count_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(19),
      O => U1_Result_19_0
    );
  U1_Mcount_count_cy_19_U1_Mcount_count_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(18),
      O => U1_Result_18_0
    );
  U1_Mcount_count_cy_19_U1_Mcount_count_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(17),
      O => U1_Result_17_0
    );
  U1_Mcount_count_cy_19_U1_Mcount_count_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(16),
      O => U1_Result_16_0
    );
  U1_count_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y33",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(19),
      ADR5 => '1',
      O => U1_count_19_rt_201
    );
  BUS2432_6_12_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_12_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y33"
    )
    port map (
      CI => U1_Mcount_count_cy_15_Q_4404,
      CYINIT => '0',
      CO(3) => U1_Mcount_count_cy_19_Q_4413,
      CO(2) => NLW_U1_Mcount_count_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Mcount_count_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Mcount_count_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_Result(19),
      O(2) => U1_Result(18),
      O(1) => U1_Result(17),
      O(0) => U1_Result(16),
      S(3) => U1_count_19_rt_201,
      S(2) => U1_count_18_rt_207,
      S(1) => U1_count_17_rt_209,
      S(0) => U1_count_16_rt_198
    );
  U1_count_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y33",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(18),
      ADR5 => '1',
      O => U1_count_18_rt_207
    );
  BUS2432_6_13_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_13_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y33",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(17),
      ADR5 => '1',
      O => U1_count_17_rt_209
    );
  BUS2432_6_14_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_14_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y33",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(16),
      ADR5 => '1',
      O => U1_count_16_rt_198
    );
  BUS2432_6_15_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_15_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_15_U1_Mcount_count_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(15),
      O => U1_Result_15_0
    );
  U1_Mcount_count_cy_15_U1_Mcount_count_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(14),
      O => U1_Result_14_0
    );
  U1_Mcount_count_cy_15_U1_Mcount_count_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(13),
      O => U1_Result_13_0
    );
  U1_Mcount_count_cy_15_U1_Mcount_count_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(12),
      O => U1_Result_12_0
    );
  U1_count_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(15),
      ADR5 => '1',
      O => U1_count_15_rt_179
    );
  BUS2432_6_16_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_16_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y32"
    )
    port map (
      CI => U1_Mcount_count_cy_11_Q_4395,
      CYINIT => '0',
      CO(3) => U1_Mcount_count_cy_15_Q_4404,
      CO(2) => NLW_U1_Mcount_count_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Mcount_count_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Mcount_count_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_Result(15),
      O(2) => U1_Result(14),
      O(1) => U1_Result(13),
      O(0) => U1_Result(12),
      S(3) => U1_count_15_rt_179,
      S(2) => U1_count_14_rt_185,
      S(1) => U1_count_13_rt_187,
      S(0) => U1_count_12_rt_176
    );
  U1_count_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(14),
      ADR5 => '1',
      O => U1_count_14_rt_185
    );
  BUS2432_6_17_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_17_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(13),
      ADR5 => '1',
      O => U1_count_13_rt_187
    );
  BUS2432_6_18_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_18_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(12),
      ADR5 => '1',
      O => U1_count_12_rt_176
    );
  BUS2432_6_19_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_19_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_23_U1_Mcount_count_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(23),
      O => U1_Result_23_0
    );
  U1_Mcount_count_cy_23_U1_Mcount_count_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(22),
      O => U1_Result_22_0
    );
  U1_Mcount_count_cy_23_U1_Mcount_count_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(21),
      O => U1_Result_21_0
    );
  U1_Mcount_count_cy_23_U1_Mcount_count_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(20),
      O => U1_Result_20_0
    );
  U1_count_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(23),
      ADR5 => '1',
      O => U1_count_23_rt_223
    );
  BUS2432_6_8_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_8_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Mcount_count_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y34"
    )
    port map (
      CI => U1_Mcount_count_cy_19_Q_4413,
      CYINIT => '0',
      CO(3) => U1_Mcount_count_cy_23_Q_4422,
      CO(2) => NLW_U1_Mcount_count_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Mcount_count_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Mcount_count_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_Result(23),
      O(2) => U1_Result(22),
      O(1) => U1_Result(21),
      O(0) => U1_Result(20),
      S(3) => U1_count_23_rt_223,
      S(2) => U1_count_22_rt_229,
      S(1) => U1_count_21_rt_231,
      S(0) => U1_count_20_rt_220
    );
  U1_count_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(22),
      ADR5 => '1',
      O => U1_count_22_rt_229
    );
  BUS2432_6_9_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_9_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(21),
      ADR5 => '1',
      O => U1_count_21_rt_231
    );
  BUS2432_6_10_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_10_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(20),
      ADR5 => '1',
      O => U1_count_20_rt_220
    );
  BUS2432_6_11_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_11_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Result_31_U1_Result_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(31),
      O => U1_Result_31_0
    );
  U1_Result_31_U1_Result_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(30),
      O => U1_Result_30_0
    );
  U1_Result_31_U1_Result_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(29),
      O => U1_Result_29_0
    );
  U1_Result_31_U1_Result_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_Result(28),
      O => U1_Result_28_0
    );
  U1_count_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => U1_count(31),
      O => U1_count_31_rt_266
    );
  U1_Mcount_count_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X18Y36"
    )
    port map (
      CI => U1_Mcount_count_cy_27_Q_4431,
      CYINIT => '0',
      CO(3) => NLW_U1_Mcount_count_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_U1_Mcount_count_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Mcount_count_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Mcount_count_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_U1_Mcount_count_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_Result(31),
      O(2) => U1_Result(30),
      O(1) => U1_Result(29),
      O(0) => U1_Result(28),
      S(3) => U1_count_31_rt_266,
      S(2) => U1_count_30_rt_262,
      S(1) => U1_count_29_rt_271,
      S(0) => U1_count_28_rt_270
    );
  U1_count_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(30),
      ADR5 => '1',
      O => U1_count_30_rt_262
    );
  BUS2432_6_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U1_count(29),
      ADR5 => '1',
      O => U1_count_29_rt_271
    );
  BUS2432_6_2_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_2_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(28),
      ADR5 => '1',
      O => U1_count_28_rt_270
    );
  BUS2432_6_3_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X18Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_3_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_11_U1_Madd_count_add0000_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(11),
      O => U1_count_add0000_11_0
    );
  U1_Madd_count_add0000_cy_11_U1_Madd_count_add0000_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(10),
      O => U1_count_add0000_10_0
    );
  U1_Madd_count_add0000_cy_11_U1_Madd_count_add0000_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(9),
      O => U1_count_add0000_9_0
    );
  U1_Madd_count_add0000_cy_11_U1_Madd_count_add0000_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(8),
      O => U1_count_add0000_8_0
    );
  U1_count_11_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(11),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_11_U1_count_11_rt
    );
  BUS2432_6_52_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_52_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y31"
    )
    port map (
      CI => U1_Madd_count_add0000_cy_7_Q_4450,
      CYINIT => '0',
      CO(3) => U1_Madd_count_add0000_cy_11_Q_4455,
      CO(2) => NLW_U1_Madd_count_add0000_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Madd_count_add0000_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Madd_count_add0000_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_count_add0000(11),
      O(2) => U1_count_add0000(10),
      O(1) => U1_count_add0000(9),
      O(0) => U1_count_add0000(8),
      S(3) => U1_Madd_count_add0000_cy_11_U1_count_11_rt,
      S(2) => U1_Madd_count_add0000_cy_11_U1_count_10_rt,
      S(1) => U1_Madd_count_add0000_cy_11_U1_count_9_rt,
      S(0) => U1_Madd_count_add0000_cy_11_U1_count_8_rt
    );
  U1_count_10_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(10),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_11_U1_count_10_rt
    );
  BUS2432_6_53_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_53_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_9_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_count(9),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_11_U1_count_9_rt
    );
  BUS2432_6_54_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_54_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_8_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(8),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_11_U1_count_8_rt
    );
  BUS2432_6_55_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y31",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_55_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_3_U1_Madd_count_add0000_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(3),
      O => U1_count_add0000_3_0
    );
  U1_Madd_count_add0000_cy_3_U1_Madd_count_add0000_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(2),
      O => U1_count_add0000_2_0
    );
  U1_Madd_count_add0000_cy_3_U1_Madd_count_add0000_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(1),
      O => U1_count_add0000_1_0
    );
  U1_Madd_count_add0000_cy_3_U1_Madd_count_add0000_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(0),
      O => U1_count_add0000_0_0
    );
  U1_count_3_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(3),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_3_U1_count_3_rt
    );
  BUS2432_6_60_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_60_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp0_CYINITGND_2 : X_ZERO
    generic map(
      LOC => "SLICE_X20Y29"
    )
    port map (
      O => NLW_ProtoComp0_CYINITGND_2_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y29"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U1_Madd_count_add0000_cy_3_Q_4445,
      CO(2) => NLW_U1_Madd_count_add0000_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Madd_count_add0000_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Madd_count_add0000_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => U1_count_add0000(3),
      O(2) => U1_count_add0000(2),
      O(1) => U1_count_add0000(1),
      O(0) => U1_count_add0000(0),
      S(3) => U1_Madd_count_add0000_cy_3_U1_count_3_rt,
      S(2) => U1_Madd_count_add0000_cy_3_U1_count_2_rt,
      S(1) => U1_Madd_count_add0000_cy_3_U1_count_1_rt,
      S(0) => U1_Madd_count_add0000_lut(0)
    );
  U1_count_2_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(2),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_3_U1_count_2_rt
    );
  BUS2432_6_61_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_61_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_1_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_count(1),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_3_U1_count_1_rt
    );
  BUS2432_6_62_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_62_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(0),
      ADR5 => '1',
      O => U1_Madd_count_add0000_lut(0)
    );
  BUS2432_5_7_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y29",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_7_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_7_U1_Madd_count_add0000_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(7),
      O => U1_count_add0000_7_0
    );
  U1_Madd_count_add0000_cy_7_U1_Madd_count_add0000_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(6),
      O => U1_count_add0000_6_0
    );
  U1_Madd_count_add0000_cy_7_U1_Madd_count_add0000_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(5),
      O => U1_count_add0000_5_0
    );
  U1_Madd_count_add0000_cy_7_U1_Madd_count_add0000_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(4),
      O => U1_count_add0000_4_0
    );
  U1_count_7_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(7),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_7_U1_count_7_rt
    );
  BUS2432_6_56_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_56_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y30"
    )
    port map (
      CI => U1_Madd_count_add0000_cy_3_Q_4445,
      CYINIT => '0',
      CO(3) => U1_Madd_count_add0000_cy_7_Q_4450,
      CO(2) => NLW_U1_Madd_count_add0000_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Madd_count_add0000_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Madd_count_add0000_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_count_add0000(7),
      O(2) => U1_count_add0000(6),
      O(1) => U1_count_add0000(5),
      O(0) => U1_count_add0000(4),
      S(3) => U1_Madd_count_add0000_cy_7_U1_count_7_rt,
      S(2) => U1_Madd_count_add0000_cy_7_U1_count_6_rt,
      S(1) => U1_Madd_count_add0000_cy_7_U1_count_5_rt,
      S(0) => U1_Madd_count_add0000_cy_7_U1_count_4_rt
    );
  U1_count_6_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(6),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_7_U1_count_6_rt
    );
  BUS2432_6_57_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_57_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_5_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_count(5),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_7_U1_count_5_rt
    );
  BUS2432_6_58_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_58_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_4_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(4),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_7_U1_count_4_rt
    );
  BUS2432_6_59_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y30",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_59_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_15_U1_Madd_count_add0000_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(15),
      O => U1_count_add0000_15_0
    );
  U1_Madd_count_add0000_cy_15_U1_Madd_count_add0000_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(14),
      O => U1_count_add0000_14_0
    );
  U1_Madd_count_add0000_cy_15_U1_Madd_count_add0000_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(13),
      O => U1_count_add0000_13_0
    );
  U1_Madd_count_add0000_cy_15_U1_Madd_count_add0000_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(12),
      O => U1_count_add0000_12_0
    );
  U1_count_15_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(15),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_15_U1_count_15_rt
    );
  BUS2432_6_48_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_48_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y32"
    )
    port map (
      CI => U1_Madd_count_add0000_cy_11_Q_4455,
      CYINIT => '0',
      CO(3) => U1_Madd_count_add0000_cy_15_Q_4460,
      CO(2) => NLW_U1_Madd_count_add0000_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Madd_count_add0000_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Madd_count_add0000_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_count_add0000(15),
      O(2) => U1_count_add0000(14),
      O(1) => U1_count_add0000(13),
      O(0) => U1_count_add0000(12),
      S(3) => U1_Madd_count_add0000_cy_15_U1_count_15_rt,
      S(2) => U1_Madd_count_add0000_cy_15_U1_count_14_rt,
      S(1) => U1_Madd_count_add0000_cy_15_U1_count_13_rt,
      S(0) => U1_Madd_count_add0000_cy_15_U1_count_12_rt
    );
  U1_count_14_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(14),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_15_U1_count_14_rt
    );
  BUS2432_6_49_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_49_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_13_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_count(13),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_15_U1_count_13_rt
    );
  BUS2432_6_50_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_50_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_12_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(12),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_15_U1_count_12_rt
    );
  BUS2432_6_51_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y32",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_51_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_19_U1_Madd_count_add0000_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(19),
      O => U1_count_add0000_19_0
    );
  U1_Madd_count_add0000_cy_19_U1_Madd_count_add0000_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(18),
      O => U1_count_add0000_18_0
    );
  U1_Madd_count_add0000_cy_19_U1_Madd_count_add0000_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(17),
      O => U1_count_add0000_17_0
    );
  U1_Madd_count_add0000_cy_19_U1_Madd_count_add0000_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(16),
      O => U1_count_add0000_16_0
    );
  U1_count_19_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(19),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_19_U1_count_19_rt
    );
  BUS2432_6_44_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_44_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y33"
    )
    port map (
      CI => U1_Madd_count_add0000_cy_15_Q_4460,
      CYINIT => '0',
      CO(3) => U1_Madd_count_add0000_cy_19_Q_4465,
      CO(2) => NLW_U1_Madd_count_add0000_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Madd_count_add0000_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Madd_count_add0000_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_count_add0000(19),
      O(2) => U1_count_add0000(18),
      O(1) => U1_count_add0000(17),
      O(0) => U1_count_add0000(16),
      S(3) => U1_Madd_count_add0000_cy_19_U1_count_19_rt,
      S(2) => U1_Madd_count_add0000_cy_19_U1_count_18_rt,
      S(1) => U1_Madd_count_add0000_cy_19_U1_count_17_rt,
      S(0) => U1_Madd_count_add0000_cy_19_U1_count_16_rt
    );
  U1_count_18_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(18),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_19_U1_count_18_rt
    );
  BUS2432_6_45_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_45_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_17_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_count(17),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_19_U1_count_17_rt
    );
  BUS2432_6_46_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_46_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_16_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(16),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_19_U1_count_16_rt
    );
  BUS2432_6_47_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y33",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_47_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_23_U1_Madd_count_add0000_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(23),
      O => U1_count_add0000_23_0
    );
  U1_Madd_count_add0000_cy_23_U1_Madd_count_add0000_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(22),
      O => U1_count_add0000_22_0
    );
  U1_Madd_count_add0000_cy_23_U1_Madd_count_add0000_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(21),
      O => U1_count_add0000_21_0
    );
  U1_Madd_count_add0000_cy_23_U1_Madd_count_add0000_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(20),
      O => U1_count_add0000_20_0
    );
  U1_count_23_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(23),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_23_U1_count_23_rt
    );
  BUS2432_6_40_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_40_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y34"
    )
    port map (
      CI => U1_Madd_count_add0000_cy_19_Q_4465,
      CYINIT => '0',
      CO(3) => U1_Madd_count_add0000_cy_23_Q_4470,
      CO(2) => NLW_U1_Madd_count_add0000_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Madd_count_add0000_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Madd_count_add0000_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_count_add0000(23),
      O(2) => U1_count_add0000(22),
      O(1) => U1_count_add0000(21),
      O(0) => U1_count_add0000(20),
      S(3) => U1_Madd_count_add0000_cy_23_U1_count_23_rt,
      S(2) => U1_Madd_count_add0000_cy_23_U1_count_22_rt,
      S(1) => U1_Madd_count_add0000_cy_23_U1_count_21_rt,
      S(0) => U1_Madd_count_add0000_cy_23_U1_count_20_rt
    );
  U1_count_22_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count(22),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_23_U1_count_22_rt
    );
  BUS2432_6_41_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_41_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_21_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_count(21),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_23_U1_count_21_rt
    );
  BUS2432_6_42_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_42_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_20_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(20),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_23_U1_count_20_rt
    );
  BUS2432_6_43_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y34",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_43_SLICEL_A5LUT_O_UNCONNECTED
    );
  U22_Mcount_count_per_cy_3_U22_Mcount_count_per_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(3),
      O => U22_Result_3_0
    );
  U22_Mcount_count_per_cy_3_U22_Mcount_count_per_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(2),
      O => U22_Result_2_0
    );
  U22_Mcount_count_per_cy_3_U22_Mcount_count_per_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(1),
      O => U22_Result_1_0
    );
  U22_Mcount_count_per_cy_3_U22_Mcount_count_per_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(0),
      O => U22_Result_0_0
    );
  U22_count_per_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U22_count_per(3),
      ADR5 => '1',
      O => U22_count_per_3_rt_463
    );
  BUS2432_6_100_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_100_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp0_CYINITGND_3 : X_ZERO
    generic map(
      LOC => "SLICE_X30Y66"
    )
    port map (
      O => NLW_ProtoComp0_CYINITGND_3_O_UNCONNECTED
    );
  U22_Mcount_count_per_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y66"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U22_Mcount_count_per_cy_3_Q_4487,
      CO(2) => NLW_U22_Mcount_count_per_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U22_Mcount_count_per_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U22_Mcount_count_per_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => U22_Result(3),
      O(2) => U22_Result(2),
      O(1) => U22_Result(1),
      O(0) => U22_Result(0),
      S(3) => U22_count_per_3_rt_463,
      S(2) => U22_count_per_2_rt_468,
      S(1) => U22_count_per_1_rt_453,
      S(0) => U22_Mcount_count_per_lut(0)
    );
  U22_count_per_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U22_count_per(2),
      ADR5 => '1',
      O => U22_count_per_2_rt_468
    );
  BUS2432_6_101_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_101_SLICEL_C5LUT_O_UNCONNECTED
    );
  U22_count_per_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U22_count_per(1),
      ADR5 => '1',
      O => U22_count_per_1_rt_453
    );
  BUS2432_6_102_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_102_SLICEL_B5LUT_O_UNCONNECTED
    );
  U22_Mcount_count_per_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"5555555555555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U22_count_per(0),
      ADR5 => '1',
      O => U22_Mcount_count_per_lut(0)
    );
  BUS2432_5_9_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y66",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_9_SLICEL_A5LUT_O_UNCONNECTED
    );
  U22_Mcount_count_per_cy_11_U22_Mcount_count_per_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(11),
      O => U22_Result_11_0
    );
  U22_Mcount_count_per_cy_11_U22_Mcount_count_per_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(10),
      O => U22_Result_10_0
    );
  U22_Mcount_count_per_cy_11_U22_Mcount_count_per_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(9),
      O => U22_Result_9_0
    );
  U22_Mcount_count_per_cy_11_U22_Mcount_count_per_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(8),
      O => U22_Result_8_0
    );
  U22_count_per_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U22_count_per(11),
      ADR5 => '1',
      O => U22_count_per_11_rt_503
    );
  BUS2432_6_92_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_92_SLICEL_D5LUT_O_UNCONNECTED
    );
  U22_Mcount_count_per_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y68"
    )
    port map (
      CI => U22_Mcount_count_per_cy_7_Q_4496,
      CYINIT => '0',
      CO(3) => U22_Mcount_count_per_cy_11_Q_4505,
      CO(2) => NLW_U22_Mcount_count_per_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U22_Mcount_count_per_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U22_Mcount_count_per_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U22_Result(11),
      O(2) => U22_Result(10),
      O(1) => U22_Result(9),
      O(0) => U22_Result(8),
      S(3) => U22_count_per_11_rt_503,
      S(2) => U22_count_per_10_rt_509,
      S(1) => U22_count_per_9_rt_511,
      S(0) => U22_count_per_8_rt_500
    );
  U22_count_per_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U22_count_per(10),
      ADR5 => '1',
      O => U22_count_per_10_rt_509
    );
  BUS2432_6_93_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_93_SLICEL_C5LUT_O_UNCONNECTED
    );
  U22_count_per_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U22_count_per(9),
      ADR5 => '1',
      O => U22_count_per_9_rt_511
    );
  BUS2432_6_94_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_94_SLICEL_B5LUT_O_UNCONNECTED
    );
  U22_count_per_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U22_count_per(8),
      ADR5 => '1',
      O => U22_count_per_8_rt_500
    );
  BUS2432_6_95_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_95_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_count_add0000_31_U1_count_add0000_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(31),
      O => U1_count_add0000_31_0
    );
  U1_count_add0000_31_U1_count_add0000_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(30),
      O => U1_count_add0000_30_0
    );
  U1_count_add0000_31_U1_count_add0000_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(29),
      O => U1_count_add0000_29_0
    );
  U1_count_add0000_31_U1_count_add0000_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(28),
      O => U1_count_add0000_28_0
    );
  U1_count_31_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => U1_count(31),
      O => U1_count_add0000_31_U1_count_31_rt
    );
  U1_Madd_count_add0000_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y36"
    )
    port map (
      CI => U1_Madd_count_add0000_cy_27_Q_4475,
      CYINIT => '0',
      CO(3) => NLW_U1_Madd_count_add0000_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_U1_Madd_count_add0000_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Madd_count_add0000_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Madd_count_add0000_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_U1_Madd_count_add0000_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_count_add0000(31),
      O(2) => U1_count_add0000(30),
      O(1) => U1_count_add0000(29),
      O(0) => U1_count_add0000(28),
      S(3) => U1_count_add0000_31_U1_count_31_rt,
      S(2) => U1_count_add0000_31_U1_count_30_rt,
      S(1) => U1_count_add0000_31_U1_count_29_rt,
      S(0) => U1_count_add0000_31_U1_count_28_rt
    );
  U1_count_30_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(30),
      ADR5 => '1',
      O => U1_count_add0000_31_U1_count_30_rt
    );
  BUS2432_6_33_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_33_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_29_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_count(29),
      ADR5 => '1',
      O => U1_count_add0000_31_U1_count_29_rt
    );
  BUS2432_6_34_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_34_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_28_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U1_count(28),
      ADR5 => '1',
      O => U1_count_add0000_31_U1_count_28_rt
    );
  BUS2432_6_35_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_35_SLICEL_A5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_27_U1_Madd_count_add0000_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(27),
      O => U1_count_add0000_27_0
    );
  U1_Madd_count_add0000_cy_27_U1_Madd_count_add0000_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(26),
      O => U1_count_add0000_26_0
    );
  U1_Madd_count_add0000_cy_27_U1_Madd_count_add0000_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(25),
      O => U1_count_add0000_25_0
    );
  U1_Madd_count_add0000_cy_27_U1_Madd_count_add0000_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U1_count_add0000(24),
      O => U1_count_add0000_24_0
    );
  U1_count_27_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U1_count(27),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_27_U1_count_27_rt
    );
  BUS2432_6_36_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_36_SLICEL_D5LUT_O_UNCONNECTED
    );
  U1_Madd_count_add0000_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y35"
    )
    port map (
      CI => U1_Madd_count_add0000_cy_23_Q_4470,
      CYINIT => '0',
      CO(3) => U1_Madd_count_add0000_cy_27_Q_4475,
      CO(2) => NLW_U1_Madd_count_add0000_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_Madd_count_add0000_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_Madd_count_add0000_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U1_count_add0000(27),
      O(2) => U1_count_add0000(26),
      O(1) => U1_count_add0000(25),
      O(0) => U1_count_add0000(24),
      S(3) => U1_Madd_count_add0000_cy_27_U1_count_27_rt,
      S(2) => U1_Madd_count_add0000_cy_27_U1_count_26_rt,
      S(1) => U1_Madd_count_add0000_cy_27_U1_count_25_rt,
      S(0) => U1_Madd_count_add0000_cy_27_U1_count_24_rt
    );
  U1_count_26_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U1_count(26),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_27_U1_count_26_rt
    );
  BUS2432_6_37_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_37_SLICEL_C5LUT_O_UNCONNECTED
    );
  U1_count_25_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U1_count(25),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_27_U1_count_25_rt
    );
  BUS2432_6_38_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_38_SLICEL_B5LUT_O_UNCONNECTED
    );
  U1_count_24_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_count(24),
      ADR5 => '1',
      O => U1_Madd_count_add0000_cy_27_U1_count_24_rt
    );
  BUS2432_6_39_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X20Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_39_SLICEL_A5LUT_O_UNCONNECTED
    );
  U22_Mcount_count_per_cy_15_U22_Mcount_count_per_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(15),
      O => U22_Result_15_0
    );
  U22_Mcount_count_per_cy_15_U22_Mcount_count_per_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(14),
      O => U22_Result_14_0
    );
  U22_Mcount_count_per_cy_15_U22_Mcount_count_per_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(13),
      O => U22_Result_13_0
    );
  U22_Mcount_count_per_cy_15_U22_Mcount_count_per_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(12),
      O => U22_Result_12_0
    );
  U22_count_per_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U22_count_per(15),
      ADR5 => '1',
      O => U22_count_per_15_rt_525
    );
  BUS2432_6_88_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_88_SLICEL_D5LUT_O_UNCONNECTED
    );
  U22_Mcount_count_per_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y69"
    )
    port map (
      CI => U22_Mcount_count_per_cy_11_Q_4505,
      CYINIT => '0',
      CO(3) => U22_Mcount_count_per_cy_15_Q_4514,
      CO(2) => NLW_U22_Mcount_count_per_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U22_Mcount_count_per_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U22_Mcount_count_per_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U22_Result(15),
      O(2) => U22_Result(14),
      O(1) => U22_Result(13),
      O(0) => U22_Result(12),
      S(3) => U22_count_per_15_rt_525,
      S(2) => U22_count_per_14_rt_531,
      S(1) => U22_count_per_13_rt_533,
      S(0) => U22_count_per_12_rt_522
    );
  U22_count_per_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U22_count_per(14),
      ADR5 => '1',
      O => U22_count_per_14_rt_531
    );
  BUS2432_6_89_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_89_SLICEL_C5LUT_O_UNCONNECTED
    );
  U22_count_per_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U22_count_per(13),
      ADR5 => '1',
      O => U22_count_per_13_rt_533
    );
  BUS2432_6_90_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_90_SLICEL_B5LUT_O_UNCONNECTED
    );
  U22_count_per_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U22_count_per(12),
      ADR5 => '1',
      O => U22_count_per_12_rt_522
    );
  BUS2432_6_91_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y69",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_91_SLICEL_A5LUT_O_UNCONNECTED
    );
  U22_Mcount_count_per_cy_7_U22_Mcount_count_per_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(7),
      O => U22_Result_7_0
    );
  U22_Mcount_count_per_cy_7_U22_Mcount_count_per_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(6),
      O => U22_Result_6_0
    );
  U22_Mcount_count_per_cy_7_U22_Mcount_count_per_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(5),
      O => U22_Result_5_0
    );
  U22_Mcount_count_per_cy_7_U22_Mcount_count_per_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(4),
      O => U22_Result_4_0
    );
  U22_count_per_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U22_count_per(7),
      ADR5 => '1',
      O => U22_count_per_7_rt_481
    );
  BUS2432_6_96_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_96_SLICEL_D5LUT_O_UNCONNECTED
    );
  U22_Mcount_count_per_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y67"
    )
    port map (
      CI => U22_Mcount_count_per_cy_3_Q_4487,
      CYINIT => '0',
      CO(3) => U22_Mcount_count_per_cy_7_Q_4496,
      CO(2) => NLW_U22_Mcount_count_per_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U22_Mcount_count_per_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U22_Mcount_count_per_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U22_Result(7),
      O(2) => U22_Result(6),
      O(1) => U22_Result(5),
      O(0) => U22_Result(4),
      S(3) => U22_count_per_7_rt_481,
      S(2) => U22_count_per_6_rt_487,
      S(1) => U22_count_per_5_rt_489,
      S(0) => U22_count_per_4_rt_478
    );
  U22_count_per_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U22_count_per(6),
      ADR5 => '1',
      O => U22_count_per_6_rt_487
    );
  BUS2432_6_97_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_97_SLICEL_C5LUT_O_UNCONNECTED
    );
  U22_count_per_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U22_count_per(5),
      ADR5 => '1',
      O => U22_count_per_5_rt_489
    );
  BUS2432_6_98_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_98_SLICEL_B5LUT_O_UNCONNECTED
    );
  U22_count_per_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U22_count_per(4),
      ADR5 => '1',
      O => U22_count_per_4_rt_478
    );
  BUS2432_6_99_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_99_SLICEL_A5LUT_O_UNCONNECTED
    );
  U22_Result_19_U22_Result_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(19),
      O => U22_Result_19_0
    );
  U22_Result_19_U22_Result_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(18),
      O => U22_Result_18_0
    );
  U22_Result_19_U22_Result_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(17),
      O => U22_Result_17_0
    );
  U22_Result_19_U22_Result_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U22_Result(16),
      O => U22_Result_16_0
    );
  U22_count_per_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => U22_count_per(19),
      O => U22_count_per_19_rt_546
    );
  U22_Mcount_count_per_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X30Y70"
    )
    port map (
      CI => U22_Mcount_count_per_cy_15_Q_4514,
      CYINIT => '0',
      CO(3) => NLW_U22_Mcount_count_per_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_U22_Mcount_count_per_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_U22_Mcount_count_per_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_U22_Mcount_count_per_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_U22_Mcount_count_per_xor_19_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U22_Result(19),
      O(2) => U22_Result(18),
      O(1) => U22_Result(17),
      O(0) => U22_Result(16),
      S(3) => U22_count_per_19_rt_546,
      S(2) => U22_count_per_18_rt_542,
      S(1) => U22_count_per_17_rt_551,
      S(0) => U22_count_per_16_rt_550
    );
  U22_count_per_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U22_count_per(18),
      ADR5 => '1',
      O => U22_count_per_18_rt_542
    );
  BUS2432_6_85_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_85_SLICEL_C5LUT_O_UNCONNECTED
    );
  U22_count_per_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U22_count_per(17),
      ADR5 => '1',
      O => U22_count_per_17_rt_551
    );
  BUS2432_6_86_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_86_SLICEL_B5LUT_O_UNCONNECTED
    );
  U22_count_per_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U22_count_per(16),
      ADR5 => '1',
      O => U22_count_per_16_rt_550
    );
  BUS2432_6_87_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X30Y70",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_87_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_23_U34_Madd_o_0_add0000_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(23),
      O => U34_o_0_add0000_23_0
    );
  U34_Madd_o_0_add0000_cy_23_U34_Madd_o_0_add0000_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(22),
      O => U34_o_0_add0000_22_0
    );
  U34_Madd_o_0_add0000_cy_23_U34_Madd_o_0_add0000_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(21),
      O => U34_o_0_add0000_21_0
    );
  U34_Madd_o_0_add0000_cy_23_U34_Madd_o_0_add0000_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(20),
      O => U34_o_0_add0000_20_0
    );
  U34_cnt_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y8",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(23),
      ADR5 => '1',
      O => U34_cnt_23_rt_676
    );
  BUS2432_6_204_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_204_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y8"
    )
    port map (
      CI => U34_Madd_o_0_add0000_cy_19_Q_4567,
      CYINIT => '0',
      CO(3) => U34_Madd_o_0_add0000_cy_23_Q_4576,
      CO(2) => NLW_U34_Madd_o_0_add0000_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Madd_o_0_add0000_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Madd_o_0_add0000_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_o_0_add0000(23),
      O(2) => U34_o_0_add0000(22),
      O(1) => U34_o_0_add0000(21),
      O(0) => U34_o_0_add0000(20),
      S(3) => U34_cnt_23_rt_676,
      S(2) => U34_cnt_22_rt_682,
      S(1) => U34_cnt_21_rt_684,
      S(0) => U34_cnt_20_rt_673
    );
  U34_cnt_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y8",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(22),
      ADR5 => '1',
      O => U34_cnt_22_rt_682
    );
  BUS2432_6_205_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_205_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y8",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_cnt(21),
      ADR5 => '1',
      O => U34_cnt_21_rt_684
    );
  BUS2432_6_206_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_206_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y8",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(20),
      ADR5 => '1',
      O => U34_cnt_20_rt_673
    );
  BUS2432_6_207_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_207_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_3_U34_Madd_o_0_add0000_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(3),
      O => U34_o_0_add0000_3_0
    );
  U34_Madd_o_0_add0000_cy_3_U34_Madd_o_0_add0000_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(2),
      O => U34_o_0_add0000_2_0
    );
  U34_Madd_o_0_add0000_cy_3_U34_Madd_o_0_add0000_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(1),
      O => U34_o_0_add0000_1_0
    );
  U34_Madd_o_0_add0000_cy_3_U34_Madd_o_0_add0000_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(0),
      O => U34_o_0_add0000_0_0
    );
  U34_cnt_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y3",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(3),
      ADR5 => '1',
      O => U34_cnt_3_rt_570
    );
  BUS2432_6_224_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y3",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_224_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp0_CYINITGND_4 : X_ZERO
    generic map(
      LOC => "SLICE_X38Y3"
    )
    port map (
      O => NLW_ProtoComp0_CYINITGND_4_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y3"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U34_Madd_o_0_add0000_cy_3_Q_4531,
      CO(2) => NLW_U34_Madd_o_0_add0000_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Madd_o_0_add0000_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Madd_o_0_add0000_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => U34_o_0_add0000(3),
      O(2) => U34_o_0_add0000(2),
      O(1) => U34_o_0_add0000(1),
      O(0) => U34_o_0_add0000(0),
      S(3) => U34_cnt_3_rt_570,
      S(2) => U34_cnt_2_rt_575,
      S(1) => U34_cnt_1_rt_560,
      S(0) => U34_Madd_o_0_add0000_lut(0)
    );
  U34_cnt_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y3",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(2),
      ADR5 => '1',
      O => U34_cnt_2_rt_575
    );
  BUS2432_6_225_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y3",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_225_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y3",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_cnt(1),
      ADR5 => '1',
      O => U34_cnt_1_rt_560
    );
  BUS2432_6_226_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y3",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_226_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y3",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(0),
      ADR5 => '1',
      O => U34_Madd_o_0_add0000_lut(0)
    );
  BUS2432_5_14_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y3",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_14_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_11_U34_Madd_o_0_add0000_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(11),
      O => U34_o_0_add0000_11_0
    );
  U34_Madd_o_0_add0000_cy_11_U34_Madd_o_0_add0000_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(10),
      O => U34_o_0_add0000_10_0
    );
  U34_Madd_o_0_add0000_cy_11_U34_Madd_o_0_add0000_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(9),
      O => U34_o_0_add0000_9_0
    );
  U34_Madd_o_0_add0000_cy_11_U34_Madd_o_0_add0000_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(8),
      O => U34_o_0_add0000_8_0
    );
  U34_cnt_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y5",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(11),
      ADR5 => '1',
      O => U34_cnt_11_rt_610
    );
  BUS2432_6_216_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_216_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y5"
    )
    port map (
      CI => U34_Madd_o_0_add0000_cy_7_Q_4540,
      CYINIT => '0',
      CO(3) => U34_Madd_o_0_add0000_cy_11_Q_4549,
      CO(2) => NLW_U34_Madd_o_0_add0000_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Madd_o_0_add0000_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Madd_o_0_add0000_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_o_0_add0000(11),
      O(2) => U34_o_0_add0000(10),
      O(1) => U34_o_0_add0000(9),
      O(0) => U34_o_0_add0000(8),
      S(3) => U34_cnt_11_rt_610,
      S(2) => U34_cnt_10_rt_616,
      S(1) => U34_cnt_9_rt_618,
      S(0) => U34_cnt_8_rt_607
    );
  U34_cnt_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y5",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(10),
      ADR5 => '1',
      O => U34_cnt_10_rt_616
    );
  BUS2432_6_217_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_217_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y5",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_cnt(9),
      ADR5 => '1',
      O => U34_cnt_9_rt_618
    );
  BUS2432_6_218_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_218_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y5",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(8),
      ADR5 => '1',
      O => U34_cnt_8_rt_607
    );
  BUS2432_6_219_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_219_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_15_U34_Madd_o_0_add0000_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(15),
      O => U34_o_0_add0000_15_0
    );
  U34_Madd_o_0_add0000_cy_15_U34_Madd_o_0_add0000_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(14),
      O => U34_o_0_add0000_14_0
    );
  U34_Madd_o_0_add0000_cy_15_U34_Madd_o_0_add0000_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(13),
      O => U34_o_0_add0000_13_0
    );
  U34_Madd_o_0_add0000_cy_15_U34_Madd_o_0_add0000_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(12),
      O => U34_o_0_add0000_12_0
    );
  U34_cnt_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y6",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(15),
      ADR5 => '1',
      O => U34_cnt_15_rt_632
    );
  BUS2432_6_212_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_212_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y6"
    )
    port map (
      CI => U34_Madd_o_0_add0000_cy_11_Q_4549,
      CYINIT => '0',
      CO(3) => U34_Madd_o_0_add0000_cy_15_Q_4558,
      CO(2) => NLW_U34_Madd_o_0_add0000_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Madd_o_0_add0000_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Madd_o_0_add0000_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_o_0_add0000(15),
      O(2) => U34_o_0_add0000(14),
      O(1) => U34_o_0_add0000(13),
      O(0) => U34_o_0_add0000(12),
      S(3) => U34_cnt_15_rt_632,
      S(2) => U34_cnt_14_rt_638,
      S(1) => U34_cnt_13_rt_640,
      S(0) => U34_cnt_12_rt_629
    );
  U34_cnt_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y6",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(14),
      ADR5 => '1',
      O => U34_cnt_14_rt_638
    );
  BUS2432_6_213_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_213_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y6",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_cnt(13),
      ADR5 => '1',
      O => U34_cnt_13_rt_640
    );
  BUS2432_6_214_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_214_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y6",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(12),
      ADR5 => '1',
      O => U34_cnt_12_rt_629
    );
  BUS2432_6_215_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_215_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_7_U34_Madd_o_0_add0000_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(7),
      O => U34_o_0_add0000_7_0
    );
  U34_Madd_o_0_add0000_cy_7_U34_Madd_o_0_add0000_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(6),
      O => U34_o_0_add0000_6_0
    );
  U34_Madd_o_0_add0000_cy_7_U34_Madd_o_0_add0000_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(5),
      O => U34_o_0_add0000_5_0
    );
  U34_Madd_o_0_add0000_cy_7_U34_Madd_o_0_add0000_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(4),
      O => U34_o_0_add0000_4_0
    );
  U34_cnt_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y4",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(7),
      ADR5 => '1',
      O => U34_cnt_7_rt_588
    );
  BUS2432_6_220_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_220_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y4"
    )
    port map (
      CI => U34_Madd_o_0_add0000_cy_3_Q_4531,
      CYINIT => '0',
      CO(3) => U34_Madd_o_0_add0000_cy_7_Q_4540,
      CO(2) => NLW_U34_Madd_o_0_add0000_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Madd_o_0_add0000_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Madd_o_0_add0000_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_o_0_add0000(7),
      O(2) => U34_o_0_add0000(6),
      O(1) => U34_o_0_add0000(5),
      O(0) => U34_o_0_add0000(4),
      S(3) => U34_cnt_7_rt_588,
      S(2) => U34_cnt_6_rt_594,
      S(1) => U34_cnt_5_rt_596,
      S(0) => U34_cnt_4_rt_585
    );
  U34_cnt_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y4",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(6),
      ADR5 => '1',
      O => U34_cnt_6_rt_594
    );
  BUS2432_6_221_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_221_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y4",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_cnt(5),
      ADR5 => '1',
      O => U34_cnt_5_rt_596
    );
  BUS2432_6_222_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_222_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y4",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(4),
      ADR5 => '1',
      O => U34_cnt_4_rt_585
    );
  BUS2432_6_223_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_223_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_19_U34_Madd_o_0_add0000_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(19),
      O => U34_o_0_add0000_19_0
    );
  U34_Madd_o_0_add0000_cy_19_U34_Madd_o_0_add0000_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(18),
      O => U34_o_0_add0000_18_0
    );
  U34_Madd_o_0_add0000_cy_19_U34_Madd_o_0_add0000_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(17),
      O => U34_o_0_add0000_17_0
    );
  U34_Madd_o_0_add0000_cy_19_U34_Madd_o_0_add0000_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(16),
      O => U34_o_0_add0000_16_0
    );
  U34_cnt_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y7",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(19),
      ADR5 => '1',
      O => U34_cnt_19_rt_654
    );
  BUS2432_6_208_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_208_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y7"
    )
    port map (
      CI => U34_Madd_o_0_add0000_cy_15_Q_4558,
      CYINIT => '0',
      CO(3) => U34_Madd_o_0_add0000_cy_19_Q_4567,
      CO(2) => NLW_U34_Madd_o_0_add0000_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Madd_o_0_add0000_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Madd_o_0_add0000_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_o_0_add0000(19),
      O(2) => U34_o_0_add0000(18),
      O(1) => U34_o_0_add0000(17),
      O(0) => U34_o_0_add0000(16),
      S(3) => U34_cnt_19_rt_654,
      S(2) => U34_cnt_18_rt_660,
      S(1) => U34_cnt_17_rt_662,
      S(0) => U34_cnt_16_rt_651
    );
  U34_cnt_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y7",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(18),
      ADR5 => '1',
      O => U34_cnt_18_rt_660
    );
  BUS2432_6_209_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_209_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y7",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_cnt(17),
      ADR5 => '1',
      O => U34_cnt_17_rt_662
    );
  BUS2432_6_210_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_210_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y7",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(16),
      ADR5 => '1',
      O => U34_cnt_16_rt_651
    );
  BUS2432_6_211_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_211_SLICEL_A5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_11 : X_FF
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_11_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez11,
      O => U30_my_hd44780_simple_valuez(11),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => X"555500FF555500FF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR3 => U30_my_hd44780_simple_valuez(11),
      ADR0 => U30_my_hd44780_simple_timer_us_value_11_Q,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(11)
    );
  BUS2432_5_18_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_18_SLICEL_D5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_10 : X_FF
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_10_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez10,
      O => U30_my_hd44780_simple_valuez(10),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y35"
    )
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy_7_Q_4614,
      CYINIT => '0',
      CO(3) => U30_my_hd44780_simple_Mcount_valuez_cy_11_Q_4622,
      CO(2) => NLW_U30_my_hd44780_simple_Mcount_valuez_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U30_my_hd44780_simple_Mcount_valuez_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U30_my_hd44780_simple_Mcount_valuez_cy_11_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => U30_my_hd44780_simple_Mcount_valuez11,
      O(2) => U30_my_hd44780_simple_Mcount_valuez10,
      O(1) => U30_my_hd44780_simple_Mcount_valuez9,
      O(0) => U30_my_hd44780_simple_Mcount_valuez8,
      S(3) => U30_my_hd44780_simple_Mcount_valuez_lut(11),
      S(2) => U30_my_hd44780_simple_Mcount_valuez_lut(10),
      S(1) => U30_my_hd44780_simple_Mcount_valuez_lut(9),
      S(0) => U30_my_hd44780_simple_Mcount_valuez_lut(8)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => X"FFFF00FFFFFF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_valuez(10),
      ADR4 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(10)
    );
  BUS2432_5_19_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_19_SLICEL_C5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_9 : X_FF
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_9_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez9,
      O => U30_my_hd44780_simple_valuez(9),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => X"303F303F303F303F"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR3 => U30_my_hd44780_simple_valuez(9),
      ADR1 => U30_my_hd44780_simple_timer_us_value_9_Q,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(9)
    );
  BUS2432_5_20_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_20_SLICEL_B5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_8 : X_FF
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_8_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez8,
      O => U30_my_hd44780_simple_valuez(8),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => X"0A5F0A5F0A5F0A5F"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR3 => U30_my_hd44780_simple_valuez(8),
      ADR2 => U30_my_hd44780_simple_timer_us_value_8_Q,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(8)
    );
  BUS2432_5_21_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_21_SLICEL_A5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_3 : X_FF
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_3_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez3,
      O => U30_my_hd44780_simple_valuez(3),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => X"0F0F00FF0F0F00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR3 => U30_my_hd44780_simple_valuez(3),
      ADR2 => U30_my_hd44780_simple_timer_us_value_3_Q,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(3)
    );
  BUS2432_5_26_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_26_SLICEL_D5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_2 : X_FF
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_2_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez2,
      O => U30_my_hd44780_simple_valuez(2),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y33"
    )
    port map (
      CI => '0',
      CYINIT => U30_my_hd44780_simple_state2timer_go_4596,
      CO(3) => U30_my_hd44780_simple_Mcount_valuez_cy_3_Q_4604,
      CO(2) => NLW_U30_my_hd44780_simple_Mcount_valuez_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U30_my_hd44780_simple_Mcount_valuez_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U30_my_hd44780_simple_Mcount_valuez_cy_3_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => U30_my_hd44780_simple_Mcount_valuez3,
      O(2) => U30_my_hd44780_simple_Mcount_valuez2,
      O(1) => U30_my_hd44780_simple_Mcount_valuez1,
      O(0) => U30_my_hd44780_simple_Mcount_valuez,
      S(3) => U30_my_hd44780_simple_Mcount_valuez_lut(3),
      S(2) => U30_my_hd44780_simple_Mcount_valuez_lut(2),
      S(1) => U30_my_hd44780_simple_Mcount_valuez_lut(1),
      S(0) => U30_my_hd44780_simple_Mcount_valuez_lut(0)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => X"333300FF333300FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR3 => U30_my_hd44780_simple_valuez(2),
      ADR1 => U30_my_hd44780_simple_timer_us_value_2_Q,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(2)
    );
  BUS2432_5_27_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_27_SLICEL_C5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_1 : X_FF
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_1_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez1,
      O => U30_my_hd44780_simple_valuez(1),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => X"AAFFAAFFAAFFAAFF"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_valuez(1),
      ADR0 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(1)
    );
  BUS2432_5_28_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_28_SLICEL_B5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_0_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez,
      O => U30_my_hd44780_simple_valuez(0),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => X"0055AAFF0055AAFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR3 => U30_my_hd44780_simple_valuez(0),
      ADR4 => U30_my_hd44780_simple_timer_us_value_0_Q,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(0)
    );
  BUS2432_5_29_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y33",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_29_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_27_U34_Madd_o_0_add0000_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(27),
      O => U34_o_0_add0000_27_0
    );
  U34_Madd_o_0_add0000_cy_27_U34_Madd_o_0_add0000_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(26),
      O => U34_o_0_add0000_26_0
    );
  U34_Madd_o_0_add0000_cy_27_U34_Madd_o_0_add0000_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(25),
      O => U34_o_0_add0000_25_0
    );
  U34_Madd_o_0_add0000_cy_27_U34_Madd_o_0_add0000_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(24),
      O => U34_o_0_add0000_24_0
    );
  U34_cnt_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y9",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(27),
      ADR5 => '1',
      O => U34_cnt_27_rt_698
    );
  BUS2432_6_200_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_200_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Madd_o_0_add0000_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y9"
    )
    port map (
      CI => U34_Madd_o_0_add0000_cy_23_Q_4576,
      CYINIT => '0',
      CO(3) => U34_Madd_o_0_add0000_cy_27_Q_4585,
      CO(2) => NLW_U34_Madd_o_0_add0000_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Madd_o_0_add0000_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Madd_o_0_add0000_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_o_0_add0000(27),
      O(2) => U34_o_0_add0000(26),
      O(1) => U34_o_0_add0000(25),
      O(0) => U34_o_0_add0000(24),
      S(3) => U34_cnt_27_rt_698,
      S(2) => U34_cnt_26_rt_704,
      S(1) => U34_cnt_25_rt_706,
      S(0) => U34_cnt_24_rt_695
    );
  U34_cnt_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(26),
      ADR5 => '1',
      O => U34_cnt_26_rt_704
    );
  BUS2432_6_201_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_201_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y9",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(25),
      ADR5 => '1',
      O => U34_cnt_25_rt_706
    );
  BUS2432_6_202_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_202_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y9",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_cnt(24),
      ADR5 => '1',
      O => U34_cnt_24_rt_695
    );
  BUS2432_6_203_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_203_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_o_0_add0000_31_U34_o_0_add0000_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(31),
      O => U34_o_0_add0000_31_0
    );
  U34_o_0_add0000_31_U34_o_0_add0000_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(30),
      O => U34_o_0_add0000_30_0
    );
  U34_o_0_add0000_31_U34_o_0_add0000_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(29),
      O => U34_o_0_add0000_29_0
    );
  U34_o_0_add0000_31_U34_o_0_add0000_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o_0_add0000(28),
      O => U34_o_0_add0000_28_0
    );
  U34_cnt_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y10",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => U34_cnt(31),
      O => U34_cnt_31_rt_719
    );
  U34_Madd_o_0_add0000_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X38Y10"
    )
    port map (
      CI => U34_Madd_o_0_add0000_cy_27_Q_4585,
      CYINIT => '0',
      CO(3) => NLW_U34_Madd_o_0_add0000_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_U34_Madd_o_0_add0000_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Madd_o_0_add0000_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Madd_o_0_add0000_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_U34_Madd_o_0_add0000_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_o_0_add0000(31),
      O(2) => U34_o_0_add0000(30),
      O(1) => U34_o_0_add0000(29),
      O(0) => U34_o_0_add0000(28),
      S(3) => U34_cnt_31_rt_719,
      S(2) => U34_cnt_30_rt_715,
      S(1) => U34_cnt_29_rt_724,
      S(0) => U34_cnt_28_rt_723
    );
  U34_cnt_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(30),
      ADR5 => '1',
      O => U34_cnt_30_rt_715
    );
  BUS2432_6_197_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_197_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y10",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(29),
      ADR5 => '1',
      O => U34_cnt_29_rt_724
    );
  BUS2432_6_198_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_198_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X38Y10",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_cnt(28),
      ADR5 => '1',
      O => U34_cnt_28_rt_723
    );
  BUS2432_6_199_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X38Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_199_SLICEL_A5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_7 : X_FF
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_7_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez7,
      O => U30_my_hd44780_simple_valuez(7),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => X"333300FF333300FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR3 => U30_my_hd44780_simple_valuez(7),
      ADR1 => U30_my_hd44780_simple_timer_us_value_7_Q,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(7)
    );
  BUS2432_5_22_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_22_SLICEL_D5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_6 : X_FF
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_6_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez6,
      O => U30_my_hd44780_simple_valuez(6),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y34"
    )
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy_3_Q_4604,
      CYINIT => '0',
      CO(3) => U30_my_hd44780_simple_Mcount_valuez_cy_7_Q_4614,
      CO(2) => NLW_U30_my_hd44780_simple_Mcount_valuez_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U30_my_hd44780_simple_Mcount_valuez_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U30_my_hd44780_simple_Mcount_valuez_cy_7_CO_0_UNCONNECTED,
      DI(3) => '1',
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => U30_my_hd44780_simple_Mcount_valuez7,
      O(2) => U30_my_hd44780_simple_Mcount_valuez6,
      O(1) => U30_my_hd44780_simple_Mcount_valuez5,
      O(0) => U30_my_hd44780_simple_Mcount_valuez4,
      S(3) => U30_my_hd44780_simple_Mcount_valuez_lut(7),
      S(2) => U30_my_hd44780_simple_Mcount_valuez_lut(6),
      S(1) => U30_my_hd44780_simple_Mcount_valuez_lut(5),
      S(0) => U30_my_hd44780_simple_Mcount_valuez_lut(4)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => X"333300FF333300FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR3 => U30_my_hd44780_simple_valuez(6),
      ADR1 => U30_my_hd44780_simple_timer_us_value_6_Q,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(6)
    );
  BUS2432_5_23_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_23_SLICEL_C5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_5 : X_FF
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_5_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez5,
      O => U30_my_hd44780_simple_valuez(5),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => X"0A5F0A5F0A5F0A5F"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR3 => U30_my_hd44780_simple_valuez(5),
      ADR2 => U30_my_hd44780_simple_timer_us_value_5_Q,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(5)
    );
  BUS2432_5_24_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_24_SLICEL_B5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_4 : X_FF
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_4_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez4,
      O => U30_my_hd44780_simple_valuez(4),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => X"0A5F0A5F0A5F0A5F"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR3 => U30_my_hd44780_simple_valuez(4),
      ADR2 => U30_my_hd44780_simple_timer_us_value_4_Q,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(4)
    );
  BUS2432_5_25_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y34",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_25_SLICEL_A5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_15 : X_FF
    generic map(
      LOC => "SLICE_X50Y36",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_15_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez15,
      O => U30_my_hd44780_simple_valuez(15),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y36",
      INIT => X"3333333300FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_valuez(15),
      ADR5 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR1 => U30_my_hd44780_simple_timer_us_value_15_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(15)
    );
  U30_my_hd44780_simple_valuez_14 : X_FF
    generic map(
      LOC => "SLICE_X50Y36",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_14_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez14,
      O => U30_my_hd44780_simple_valuez(14),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y36"
    )
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy_11_Q_4622,
      CYINIT => '0',
      CO(3) => NLW_U30_my_hd44780_simple_Mcount_valuez_xor_15_CO_3_UNCONNECTED,
      CO(2) => NLW_U30_my_hd44780_simple_Mcount_valuez_xor_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U30_my_hd44780_simple_Mcount_valuez_xor_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U30_my_hd44780_simple_Mcount_valuez_xor_15_CO_0_UNCONNECTED,
      DI(3) => NLW_U30_my_hd44780_simple_Mcount_valuez_xor_15_DI_3_UNCONNECTED,
      DI(2) => '1',
      DI(1) => '1',
      DI(0) => '1',
      O(3) => U30_my_hd44780_simple_Mcount_valuez15,
      O(2) => U30_my_hd44780_simple_Mcount_valuez14,
      O(1) => U30_my_hd44780_simple_Mcount_valuez13,
      O(0) => U30_my_hd44780_simple_Mcount_valuez12,
      S(3) => U30_my_hd44780_simple_Mcount_valuez_lut(15),
      S(2) => U30_my_hd44780_simple_Mcount_valuez_lut(14),
      S(1) => U30_my_hd44780_simple_Mcount_valuez_lut(13),
      S(0) => U30_my_hd44780_simple_Mcount_valuez_lut(12)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y36",
      INIT => X"FFFF00FFFFFF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_valuez(14),
      ADR4 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(14)
    );
  BUS2432_5_15_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y36",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_15_SLICEL_C5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_13 : X_FF
    generic map(
      LOC => "SLICE_X50Y36",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_13_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez13,
      O => U30_my_hd44780_simple_valuez(13),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y36",
      INIT => X"0A5F0A5F0A5F0A5F"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR3 => U30_my_hd44780_simple_valuez(13),
      ADR2 => U30_my_hd44780_simple_timer_us_value_13_Q,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(13)
    );
  BUS2432_5_16_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y36",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_16_SLICEL_B5LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_valuez_12 : X_FF
    generic map(
      LOC => "SLICE_X50Y36",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_valuez_12_CLK,
      I => U30_my_hd44780_simple_Mcount_valuez12,
      O => U30_my_hd44780_simple_valuez(12),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y36",
      INIT => X"AAFFAAFFAAFFAAFF"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_valuez(12),
      ADR0 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_valuez_lut(12)
    );
  BUS2432_5_17_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y36",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_17_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_23_U34_Mcount_cnt_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(23),
      O => U34_Result_23_0
    );
  U34_Mcount_cnt_cy_23_U34_Mcount_cnt_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(22),
      O => U34_Result_22_0
    );
  U34_Mcount_cnt_cy_23_U34_Mcount_cnt_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(21),
      O => U34_Result_21_0
    );
  U34_Mcount_cnt_cy_23_U34_Mcount_cnt_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(20),
      O => U34_Result_20_0
    );
  U34_cnt_23_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y8",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(23),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_23_U34_cnt_23_rt
    );
  BUS2432_6_172_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_172_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y8"
    )
    port map (
      CI => U34_Mcount_cnt_cy_19_Q_4654,
      CYINIT => '0',
      CO(3) => U34_Mcount_cnt_cy_23_Q_4659,
      CO(2) => NLW_U34_Mcount_cnt_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Mcount_cnt_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Mcount_cnt_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_Result(23),
      O(2) => U34_Result(22),
      O(1) => U34_Result(21),
      O(0) => U34_Result(20),
      S(3) => U34_Mcount_cnt_cy_23_U34_cnt_23_rt,
      S(2) => U34_Mcount_cnt_cy_23_U34_cnt_22_rt,
      S(1) => U34_Mcount_cnt_cy_23_U34_cnt_21_rt,
      S(0) => U34_Mcount_cnt_cy_23_U34_cnt_20_rt
    );
  U34_cnt_22_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y8",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(22),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_23_U34_cnt_22_rt
    );
  BUS2432_6_173_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_173_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_21_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y8",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(21),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_23_U34_cnt_21_rt
    );
  BUS2432_6_174_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_174_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_20_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y8",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U34_cnt(20),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_23_U34_cnt_20_rt
    );
  BUS2432_6_175_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_175_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_11_U34_Mcount_cnt_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(11),
      O => U34_Result_11_0
    );
  U34_Mcount_cnt_cy_11_U34_Mcount_cnt_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(10),
      O => U34_Result_10_0
    );
  U34_Mcount_cnt_cy_11_U34_Mcount_cnt_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(9),
      O => U34_Result_9_0
    );
  U34_Mcount_cnt_cy_11_U34_Mcount_cnt_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(8),
      O => U34_Result_8_0
    );
  U34_cnt_11_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y5",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(11),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_11_U34_cnt_11_rt
    );
  BUS2432_6_184_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_184_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y5"
    )
    port map (
      CI => U34_Mcount_cnt_cy_7_Q_4639,
      CYINIT => '0',
      CO(3) => U34_Mcount_cnt_cy_11_Q_4644,
      CO(2) => NLW_U34_Mcount_cnt_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Mcount_cnt_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Mcount_cnt_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_Result(11),
      O(2) => U34_Result(10),
      O(1) => U34_Result(9),
      O(0) => U34_Result(8),
      S(3) => U34_Mcount_cnt_cy_11_U34_cnt_11_rt,
      S(2) => U34_Mcount_cnt_cy_11_U34_cnt_10_rt,
      S(1) => U34_Mcount_cnt_cy_11_U34_cnt_9_rt,
      S(0) => U34_Mcount_cnt_cy_11_U34_cnt_8_rt
    );
  U34_cnt_10_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y5",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(10),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_11_U34_cnt_10_rt
    );
  BUS2432_6_185_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_185_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_9_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y5",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(9),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_11_U34_cnt_9_rt
    );
  BUS2432_6_186_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_186_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_8_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y5",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U34_cnt(8),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_11_U34_cnt_8_rt
    );
  BUS2432_6_187_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_187_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_15_U34_Mcount_cnt_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(15),
      O => U34_Result_15_0
    );
  U34_Mcount_cnt_cy_15_U34_Mcount_cnt_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(14),
      O => U34_Result_14_0
    );
  U34_Mcount_cnt_cy_15_U34_Mcount_cnt_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(13),
      O => U34_Result_13_0
    );
  U34_Mcount_cnt_cy_15_U34_Mcount_cnt_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(12),
      O => U34_Result_12_0
    );
  U34_cnt_15_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y6",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(15),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_15_U34_cnt_15_rt
    );
  BUS2432_6_180_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_180_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y6"
    )
    port map (
      CI => U34_Mcount_cnt_cy_11_Q_4644,
      CYINIT => '0',
      CO(3) => U34_Mcount_cnt_cy_15_Q_4649,
      CO(2) => NLW_U34_Mcount_cnt_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Mcount_cnt_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Mcount_cnt_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_Result(15),
      O(2) => U34_Result(14),
      O(1) => U34_Result(13),
      O(0) => U34_Result(12),
      S(3) => U34_Mcount_cnt_cy_15_U34_cnt_15_rt,
      S(2) => U34_Mcount_cnt_cy_15_U34_cnt_14_rt,
      S(1) => U34_Mcount_cnt_cy_15_U34_cnt_13_rt,
      S(0) => U34_Mcount_cnt_cy_15_U34_cnt_12_rt
    );
  U34_cnt_14_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y6",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(14),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_15_U34_cnt_14_rt
    );
  BUS2432_6_181_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_181_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_13_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y6",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(13),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_15_U34_cnt_13_rt
    );
  BUS2432_6_182_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_182_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_12_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y6",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U34_cnt(12),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_15_U34_cnt_12_rt
    );
  BUS2432_6_183_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_183_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_3_U34_Mcount_cnt_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(3),
      O => U34_Result_3_0
    );
  U34_Mcount_cnt_cy_3_U34_Mcount_cnt_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(2),
      O => U34_Result_2_0
    );
  U34_Mcount_cnt_cy_3_U34_Mcount_cnt_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(1),
      O => U34_Result_1_0
    );
  U34_Mcount_cnt_cy_3_U34_Mcount_cnt_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(0),
      O => U34_Result_0_0
    );
  U34_cnt_3_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y3",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(3),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_3_U34_cnt_3_rt
    );
  BUS2432_6_192_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y3",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_192_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp0_CYINITGND_5 : X_ZERO
    generic map(
      LOC => "SLICE_X36Y3"
    )
    port map (
      O => NLW_ProtoComp0_CYINITGND_5_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y3"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U34_Mcount_cnt_cy_3_Q_4634,
      CO(2) => NLW_U34_Mcount_cnt_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Mcount_cnt_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Mcount_cnt_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => U34_Result(3),
      O(2) => U34_Result(2),
      O(1) => U34_Result(1),
      O(0) => U34_Result(0),
      S(3) => U34_Mcount_cnt_cy_3_U34_cnt_3_rt,
      S(2) => U34_Mcount_cnt_cy_3_U34_cnt_2_rt,
      S(1) => U34_Mcount_cnt_cy_3_U34_cnt_1_rt,
      S(0) => U34_Mcount_cnt_lut(0)
    );
  U34_cnt_2_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y3",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(2),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_3_U34_cnt_2_rt
    );
  BUS2432_6_193_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y3",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_193_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_1_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y3",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(1),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_3_U34_cnt_1_rt
    );
  BUS2432_6_194_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y3",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_194_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y3",
      INIT => X"5555555555555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U34_cnt(0),
      ADR5 => '1',
      O => U34_Mcount_cnt_lut(0)
    );
  BUS2432_5_13_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y3",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_13_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_19_U34_Mcount_cnt_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(19),
      O => U34_Result_19_0
    );
  U34_Mcount_cnt_cy_19_U34_Mcount_cnt_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(18),
      O => U34_Result_18_0
    );
  U34_Mcount_cnt_cy_19_U34_Mcount_cnt_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(17),
      O => U34_Result_17_0
    );
  U34_Mcount_cnt_cy_19_U34_Mcount_cnt_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(16),
      O => U34_Result_16_0
    );
  U34_cnt_19_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y7",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(19),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_19_U34_cnt_19_rt
    );
  BUS2432_6_176_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_176_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y7"
    )
    port map (
      CI => U34_Mcount_cnt_cy_15_Q_4649,
      CYINIT => '0',
      CO(3) => U34_Mcount_cnt_cy_19_Q_4654,
      CO(2) => NLW_U34_Mcount_cnt_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Mcount_cnt_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Mcount_cnt_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_Result(19),
      O(2) => U34_Result(18),
      O(1) => U34_Result(17),
      O(0) => U34_Result(16),
      S(3) => U34_Mcount_cnt_cy_19_U34_cnt_19_rt,
      S(2) => U34_Mcount_cnt_cy_19_U34_cnt_18_rt,
      S(1) => U34_Mcount_cnt_cy_19_U34_cnt_17_rt,
      S(0) => U34_Mcount_cnt_cy_19_U34_cnt_16_rt
    );
  U34_cnt_18_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y7",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(18),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_19_U34_cnt_18_rt
    );
  BUS2432_6_177_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_177_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_17_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y7",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(17),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_19_U34_cnt_17_rt
    );
  BUS2432_6_178_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_178_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_16_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y7",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U34_cnt(16),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_19_U34_cnt_16_rt
    );
  BUS2432_6_179_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_179_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_7_U34_Mcount_cnt_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(7),
      O => U34_Result_7_0
    );
  U34_Mcount_cnt_cy_7_U34_Mcount_cnt_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(6),
      O => U34_Result_6_0
    );
  U34_Mcount_cnt_cy_7_U34_Mcount_cnt_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(5),
      O => U34_Result_5_0
    );
  U34_Mcount_cnt_cy_7_U34_Mcount_cnt_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(4),
      O => U34_Result_4_0
    );
  U34_cnt_7_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y4",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(7),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_7_U34_cnt_7_rt
    );
  BUS2432_6_188_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_188_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y4"
    )
    port map (
      CI => U34_Mcount_cnt_cy_3_Q_4634,
      CYINIT => '0',
      CO(3) => U34_Mcount_cnt_cy_7_Q_4639,
      CO(2) => NLW_U34_Mcount_cnt_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Mcount_cnt_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Mcount_cnt_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_Result(7),
      O(2) => U34_Result(6),
      O(1) => U34_Result(5),
      O(0) => U34_Result(4),
      S(3) => U34_Mcount_cnt_cy_7_U34_cnt_7_rt,
      S(2) => U34_Mcount_cnt_cy_7_U34_cnt_6_rt,
      S(1) => U34_Mcount_cnt_cy_7_U34_cnt_5_rt,
      S(0) => U34_Mcount_cnt_cy_7_U34_cnt_4_rt
    );
  U34_cnt_6_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y4",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(6),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_7_U34_cnt_6_rt
    );
  BUS2432_6_189_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_189_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_5_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y4",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(5),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_7_U34_cnt_5_rt
    );
  BUS2432_6_190_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_190_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_4_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y4",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U34_cnt(4),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_7_U34_cnt_4_rt
    );
  BUS2432_6_191_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_191_SLICEL_A5LUT_O_UNCONNECTED
    );
  U20_Mcount_count_per_cy_7_U20_Mcount_count_per_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(7),
      O => U20_Result_7_0
    );
  U20_Mcount_count_per_cy_7_U20_Mcount_count_per_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(6),
      O => U20_Result_6_0
    );
  U20_Mcount_count_per_cy_7_U20_Mcount_count_per_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(5),
      O => U20_Result_5_0
    );
  U20_Mcount_count_per_cy_7_U20_Mcount_count_per_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(4),
      O => U20_Result_4_0
    );
  U20_count_per_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y58",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U20_count_per(7),
      ADR5 => '1',
      O => U20_count_per_7_rt_1075
    );
  BUS2432_6_116_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_116_SLICEL_D5LUT_O_UNCONNECTED
    );
  U20_Mcount_count_per_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X42Y58"
    )
    port map (
      CI => U20_Mcount_count_per_cy_3_Q_4676,
      CYINIT => '0',
      CO(3) => U20_Mcount_count_per_cy_7_Q_4685,
      CO(2) => NLW_U20_Mcount_count_per_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U20_Mcount_count_per_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U20_Mcount_count_per_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U20_Result(7),
      O(2) => U20_Result(6),
      O(1) => U20_Result(5),
      O(0) => U20_Result(4),
      S(3) => U20_count_per_7_rt_1075,
      S(2) => U20_count_per_6_rt_1081,
      S(1) => U20_count_per_5_rt_1083,
      S(0) => U20_count_per_4_rt_1072
    );
  U20_count_per_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y58",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U20_count_per(6),
      ADR5 => '1',
      O => U20_count_per_6_rt_1081
    );
  BUS2432_6_117_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_117_SLICEL_C5LUT_O_UNCONNECTED
    );
  U20_count_per_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y58",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U20_count_per(5),
      ADR5 => '1',
      O => U20_count_per_5_rt_1083
    );
  BUS2432_6_118_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_118_SLICEL_B5LUT_O_UNCONNECTED
    );
  U20_count_per_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y58",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U20_count_per(4),
      ADR5 => '1',
      O => U20_count_per_4_rt_1072
    );
  BUS2432_6_119_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y58",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_119_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_27_U34_Mcount_cnt_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(27),
      O => U34_Result_27_0
    );
  U34_Mcount_cnt_cy_27_U34_Mcount_cnt_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(26),
      O => U34_Result_26_0
    );
  U34_Mcount_cnt_cy_27_U34_Mcount_cnt_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(25),
      O => U34_Result_25_0
    );
  U34_Mcount_cnt_cy_27_U34_Mcount_cnt_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(24),
      O => U34_Result_24_0
    );
  U34_cnt_27_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y9",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(27),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_27_U34_cnt_27_rt
    );
  BUS2432_6_168_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_168_SLICEL_D5LUT_O_UNCONNECTED
    );
  U34_Mcount_cnt_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y9"
    )
    port map (
      CI => U34_Mcount_cnt_cy_23_Q_4659,
      CYINIT => '0',
      CO(3) => U34_Mcount_cnt_cy_27_Q_4664,
      CO(2) => NLW_U34_Mcount_cnt_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Mcount_cnt_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Mcount_cnt_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_Result(27),
      O(2) => U34_Result(26),
      O(1) => U34_Result(25),
      O(0) => U34_Result(24),
      S(3) => U34_Mcount_cnt_cy_27_U34_cnt_27_rt,
      S(2) => U34_Mcount_cnt_cy_27_U34_cnt_26_rt,
      S(1) => U34_Mcount_cnt_cy_27_U34_cnt_25_rt,
      S(0) => U34_Mcount_cnt_cy_27_U34_cnt_24_rt
    );
  U34_cnt_26_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(26),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_27_U34_cnt_26_rt
    );
  BUS2432_6_169_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_169_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_25_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y9",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U34_cnt(25),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_27_U34_cnt_25_rt
    );
  BUS2432_6_170_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_170_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_24_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y9",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(24),
      ADR5 => '1',
      O => U34_Mcount_cnt_cy_27_U34_cnt_24_rt
    );
  BUS2432_6_171_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_171_SLICEL_A5LUT_O_UNCONNECTED
    );
  U34_Result_31_U34_Result_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(31),
      O => U34_Result_31_0
    );
  U34_Result_31_U34_Result_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(30),
      O => U34_Result_30_0
    );
  U34_Result_31_U34_Result_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(29),
      O => U34_Result_29_0
    );
  U34_Result_31_U34_Result_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_Result(28),
      O => U34_Result_28_0
    );
  U34_cnt_31_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y10",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => U34_cnt(31),
      O => U34_Result_31_U34_cnt_31_rt
    );
  U34_Mcount_cnt_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X36Y10"
    )
    port map (
      CI => U34_Mcount_cnt_cy_27_Q_4664,
      CYINIT => '0',
      CO(3) => NLW_U34_Mcount_cnt_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_U34_Mcount_cnt_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_U34_Mcount_cnt_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_U34_Mcount_cnt_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_U34_Mcount_cnt_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U34_Result(31),
      O(2) => U34_Result(30),
      O(1) => U34_Result(29),
      O(0) => U34_Result(28),
      S(3) => U34_Result_31_U34_cnt_31_rt,
      S(2) => U34_Result_31_U34_cnt_30_rt,
      S(1) => U34_Result_31_U34_cnt_29_rt,
      S(0) => U34_Result_31_U34_cnt_28_rt
    );
  U34_cnt_30_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U34_cnt(30),
      ADR5 => '1',
      O => U34_Result_31_U34_cnt_30_rt
    );
  BUS2432_6_165_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_165_SLICEL_C5LUT_O_UNCONNECTED
    );
  U34_cnt_29_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y10",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U34_cnt(29),
      ADR5 => '1',
      O => U34_Result_31_U34_cnt_29_rt
    );
  BUS2432_6_166_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_166_SLICEL_B5LUT_O_UNCONNECTED
    );
  U34_cnt_28_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y10",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U34_cnt(28),
      ADR5 => '1',
      O => U34_Result_31_U34_cnt_28_rt
    );
  BUS2432_6_167_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X36Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_167_SLICEL_A5LUT_O_UNCONNECTED
    );
  U20_Mcount_count_per_cy_11_U20_Mcount_count_per_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(11),
      O => U20_Result_11_0
    );
  U20_Mcount_count_per_cy_11_U20_Mcount_count_per_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(10),
      O => U20_Result_10_0
    );
  U20_Mcount_count_per_cy_11_U20_Mcount_count_per_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(9),
      O => U20_Result_9_0
    );
  U20_Mcount_count_per_cy_11_U20_Mcount_count_per_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(8),
      O => U20_Result_8_0
    );
  U20_count_per_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y59",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U20_count_per(11),
      ADR5 => '1',
      O => U20_count_per_11_rt_1097
    );
  BUS2432_6_112_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_112_SLICEL_D5LUT_O_UNCONNECTED
    );
  U20_Mcount_count_per_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X42Y59"
    )
    port map (
      CI => U20_Mcount_count_per_cy_7_Q_4685,
      CYINIT => '0',
      CO(3) => U20_Mcount_count_per_cy_11_Q_4694,
      CO(2) => NLW_U20_Mcount_count_per_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U20_Mcount_count_per_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U20_Mcount_count_per_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U20_Result(11),
      O(2) => U20_Result(10),
      O(1) => U20_Result(9),
      O(0) => U20_Result(8),
      S(3) => U20_count_per_11_rt_1097,
      S(2) => U20_count_per_10_rt_1103,
      S(1) => U20_count_per_9_rt_1105,
      S(0) => U20_count_per_8_rt_1094
    );
  U20_count_per_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y59",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U20_count_per(10),
      ADR5 => '1',
      O => U20_count_per_10_rt_1103
    );
  BUS2432_6_113_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_113_SLICEL_C5LUT_O_UNCONNECTED
    );
  U20_count_per_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y59",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U20_count_per(9),
      ADR5 => '1',
      O => U20_count_per_9_rt_1105
    );
  BUS2432_6_114_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_114_SLICEL_B5LUT_O_UNCONNECTED
    );
  U20_count_per_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y59",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U20_count_per(8),
      ADR5 => '1',
      O => U20_count_per_8_rt_1094
    );
  BUS2432_6_115_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y59",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_115_SLICEL_A5LUT_O_UNCONNECTED
    );
  U20_Mcount_count_per_cy_3_U20_Mcount_count_per_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(3),
      O => U20_Result_3_0
    );
  U20_Mcount_count_per_cy_3_U20_Mcount_count_per_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(2),
      O => U20_Result_2_0
    );
  U20_Mcount_count_per_cy_3_U20_Mcount_count_per_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(1),
      O => U20_Result_1_0
    );
  U20_Mcount_count_per_cy_3_U20_Mcount_count_per_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(0),
      O => U20_Result_0_0
    );
  U20_count_per_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y57",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U20_count_per(3),
      ADR5 => '1',
      O => U20_count_per_3_rt_1057
    );
  BUS2432_6_120_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_120_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp0_CYINITGND_6 : X_ZERO
    generic map(
      LOC => "SLICE_X42Y57"
    )
    port map (
      O => NLW_ProtoComp0_CYINITGND_6_O_UNCONNECTED
    );
  U20_Mcount_count_per_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X42Y57"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U20_Mcount_count_per_cy_3_Q_4676,
      CO(2) => NLW_U20_Mcount_count_per_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U20_Mcount_count_per_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U20_Mcount_count_per_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => U20_Result(3),
      O(2) => U20_Result(2),
      O(1) => U20_Result(1),
      O(0) => U20_Result(0),
      S(3) => U20_count_per_3_rt_1057,
      S(2) => U20_count_per_2_rt_1062,
      S(1) => U20_count_per_1_rt_1047,
      S(0) => U20_Mcount_count_per_lut(0)
    );
  U20_count_per_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y57",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U20_count_per(2),
      ADR5 => '1',
      O => U20_count_per_2_rt_1062
    );
  BUS2432_6_121_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_121_SLICEL_C5LUT_O_UNCONNECTED
    );
  U20_count_per_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y57",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U20_count_per(1),
      ADR5 => '1',
      O => U20_count_per_1_rt_1047
    );
  BUS2432_6_122_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y57",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_122_SLICEL_B5LUT_O_UNCONNECTED
    );
  U20_Mcount_count_per_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y57",
      INIT => X"5555555555555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U20_count_per(0),
      ADR5 => '1',
      O => U20_Mcount_count_per_lut(0)
    );
  BUS2432_5_10_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y57",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_10_SLICEL_A5LUT_O_UNCONNECTED
    );
  U20_Mcount_count_per_cy_15_U20_Mcount_count_per_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(15),
      O => U20_Result_15_0
    );
  U20_Mcount_count_per_cy_15_U20_Mcount_count_per_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(14),
      O => U20_Result_14_0
    );
  U20_Mcount_count_per_cy_15_U20_Mcount_count_per_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(13),
      O => U20_Result_13_0
    );
  U20_Mcount_count_per_cy_15_U20_Mcount_count_per_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(12),
      O => U20_Result_12_0
    );
  U20_count_per_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y60",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U20_count_per(15),
      ADR5 => '1',
      O => U20_count_per_15_rt_1119
    );
  BUS2432_6_108_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_108_SLICEL_D5LUT_O_UNCONNECTED
    );
  U20_Mcount_count_per_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X42Y60"
    )
    port map (
      CI => U20_Mcount_count_per_cy_11_Q_4694,
      CYINIT => '0',
      CO(3) => U20_Mcount_count_per_cy_15_Q_4703,
      CO(2) => NLW_U20_Mcount_count_per_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U20_Mcount_count_per_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U20_Mcount_count_per_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U20_Result(15),
      O(2) => U20_Result(14),
      O(1) => U20_Result(13),
      O(0) => U20_Result(12),
      S(3) => U20_count_per_15_rt_1119,
      S(2) => U20_count_per_14_rt_1125,
      S(1) => U20_count_per_13_rt_1127,
      S(0) => U20_count_per_12_rt_1116
    );
  U20_count_per_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y60",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U20_count_per(14),
      ADR5 => '1',
      O => U20_count_per_14_rt_1125
    );
  BUS2432_6_109_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_109_SLICEL_C5LUT_O_UNCONNECTED
    );
  U20_count_per_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y60",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U20_count_per(13),
      ADR5 => '1',
      O => U20_count_per_13_rt_1127
    );
  BUS2432_6_110_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_110_SLICEL_B5LUT_O_UNCONNECTED
    );
  U20_count_per_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y60",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U20_count_per(12),
      ADR5 => '1',
      O => U20_count_per_12_rt_1116
    );
  BUS2432_6_111_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y60",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_111_SLICEL_A5LUT_O_UNCONNECTED
    );
  U20_Result_19_U20_Result_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(19),
      O => U20_Result_19_0
    );
  U20_Result_19_U20_Result_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(18),
      O => U20_Result_18_0
    );
  U20_Result_19_U20_Result_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(17),
      O => U20_Result_17_0
    );
  U20_Result_19_U20_Result_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U20_Result(16),
      O => U20_Result_16_0
    );
  U20_count_per_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y61",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => U20_count_per(19),
      O => U20_count_per_19_rt_1140
    );
  U20_Mcount_count_per_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X42Y61"
    )
    port map (
      CI => U20_Mcount_count_per_cy_15_Q_4703,
      CYINIT => '0',
      CO(3) => NLW_U20_Mcount_count_per_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_U20_Mcount_count_per_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_U20_Mcount_count_per_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_U20_Mcount_count_per_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_U20_Mcount_count_per_xor_19_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U20_Result(19),
      O(2) => U20_Result(18),
      O(1) => U20_Result(17),
      O(0) => U20_Result(16),
      S(3) => U20_count_per_19_rt_1140,
      S(2) => U20_count_per_18_rt_1136,
      S(1) => U20_count_per_17_rt_1145,
      S(0) => U20_count_per_16_rt_1144
    );
  U20_count_per_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y61",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U20_count_per(18),
      ADR5 => '1',
      O => U20_count_per_18_rt_1136
    );
  BUS2432_6_105_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_105_SLICEL_C5LUT_O_UNCONNECTED
    );
  U20_count_per_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y61",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U20_count_per(17),
      ADR5 => '1',
      O => U20_count_per_17_rt_1145
    );
  BUS2432_6_106_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_106_SLICEL_B5LUT_O_UNCONNECTED
    );
  U20_count_per_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X42Y61",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U20_count_per(16),
      ADR5 => '1',
      O => U20_count_per_16_rt_1144
    );
  BUS2432_6_107_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X42Y61",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_107_SLICEL_A5LUT_O_UNCONNECTED
    );
  U16_Mcount_count_per_cy_15_U16_Mcount_count_per_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(15),
      O => U16_Result_15_0
    );
  U16_Mcount_count_per_cy_15_U16_Mcount_count_per_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(14),
      O => U16_Result_14_0
    );
  U16_Mcount_count_per_cy_15_U16_Mcount_count_per_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(13),
      O => U16_Result_13_0
    );
  U16_Mcount_count_per_cy_15_U16_Mcount_count_per_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(12),
      O => U16_Result_12_0
    );
  U16_count_per_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y78",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U16_count_per(15),
      ADR5 => '1',
      O => U16_count_per_15_rt_1226
    );
  BUS2432_6_148_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_148_SLICEL_D5LUT_O_UNCONNECTED
    );
  U16_Mcount_count_per_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y78"
    )
    port map (
      CI => U16_Mcount_count_per_cy_11_Q_4738,
      CYINIT => '0',
      CO(3) => U16_Mcount_count_per_cy_15_Q_4747,
      CO(2) => NLW_U16_Mcount_count_per_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U16_Mcount_count_per_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U16_Mcount_count_per_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U16_Result(15),
      O(2) => U16_Result(14),
      O(1) => U16_Result(13),
      O(0) => U16_Result(12),
      S(3) => U16_count_per_15_rt_1226,
      S(2) => U16_count_per_14_rt_1232,
      S(1) => U16_count_per_13_rt_1234,
      S(0) => U16_count_per_12_rt_1223
    );
  U16_count_per_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y78",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U16_count_per(14),
      ADR5 => '1',
      O => U16_count_per_14_rt_1232
    );
  BUS2432_6_149_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_149_SLICEL_C5LUT_O_UNCONNECTED
    );
  U16_count_per_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y78",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U16_count_per(13),
      ADR5 => '1',
      O => U16_count_per_13_rt_1234
    );
  BUS2432_6_150_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_150_SLICEL_B5LUT_O_UNCONNECTED
    );
  U16_count_per_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y78",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U16_count_per(12),
      ADR5 => '1',
      O => U16_count_per_12_rt_1223
    );
  BUS2432_6_151_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_151_SLICEL_A5LUT_O_UNCONNECTED
    );
  U16_Mcount_count_per_cy_11_U16_Mcount_count_per_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(11),
      O => U16_Result_11_0
    );
  U16_Mcount_count_per_cy_11_U16_Mcount_count_per_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(10),
      O => U16_Result_10_0
    );
  U16_Mcount_count_per_cy_11_U16_Mcount_count_per_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(9),
      O => U16_Result_9_0
    );
  U16_Mcount_count_per_cy_11_U16_Mcount_count_per_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(8),
      O => U16_Result_8_0
    );
  U16_count_per_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y77",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U16_count_per(11),
      ADR5 => '1',
      O => U16_count_per_11_rt_1204
    );
  BUS2432_6_152_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_152_SLICEL_D5LUT_O_UNCONNECTED
    );
  U16_Mcount_count_per_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y77"
    )
    port map (
      CI => U16_Mcount_count_per_cy_7_Q_4729,
      CYINIT => '0',
      CO(3) => U16_Mcount_count_per_cy_11_Q_4738,
      CO(2) => NLW_U16_Mcount_count_per_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U16_Mcount_count_per_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U16_Mcount_count_per_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U16_Result(11),
      O(2) => U16_Result(10),
      O(1) => U16_Result(9),
      O(0) => U16_Result(8),
      S(3) => U16_count_per_11_rt_1204,
      S(2) => U16_count_per_10_rt_1210,
      S(1) => U16_count_per_9_rt_1212,
      S(0) => U16_count_per_8_rt_1201
    );
  U16_count_per_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y77",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U16_count_per(10),
      ADR5 => '1',
      O => U16_count_per_10_rt_1210
    );
  BUS2432_6_153_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_153_SLICEL_C5LUT_O_UNCONNECTED
    );
  U16_count_per_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y77",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U16_count_per(9),
      ADR5 => '1',
      O => U16_count_per_9_rt_1212
    );
  BUS2432_6_154_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_154_SLICEL_B5LUT_O_UNCONNECTED
    );
  U16_count_per_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y77",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U16_count_per(8),
      ADR5 => '1',
      O => U16_count_per_8_rt_1201
    );
  BUS2432_6_155_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_155_SLICEL_A5LUT_O_UNCONNECTED
    );
  U16_Result_19_U16_Result_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(19),
      O => U16_Result_19_0
    );
  U16_Result_19_U16_Result_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(18),
      O => U16_Result_18_0
    );
  U16_Result_19_U16_Result_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(17),
      O => U16_Result_17_0
    );
  U16_Result_19_U16_Result_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(16),
      O => U16_Result_16_0
    );
  U16_count_per_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y79",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => U16_count_per(19),
      O => U16_count_per_19_rt_1247
    );
  U16_Mcount_count_per_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y79"
    )
    port map (
      CI => U16_Mcount_count_per_cy_15_Q_4747,
      CYINIT => '0',
      CO(3) => NLW_U16_Mcount_count_per_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_U16_Mcount_count_per_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_U16_Mcount_count_per_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_U16_Mcount_count_per_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_U16_Mcount_count_per_xor_19_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U16_Result(19),
      O(2) => U16_Result(18),
      O(1) => U16_Result(17),
      O(0) => U16_Result(16),
      S(3) => U16_count_per_19_rt_1247,
      S(2) => U16_count_per_18_rt_1243,
      S(1) => U16_count_per_17_rt_1252,
      S(0) => U16_count_per_16_rt_1251
    );
  U16_count_per_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y79",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U16_count_per(18),
      ADR5 => '1',
      O => U16_count_per_18_rt_1243
    );
  BUS2432_6_145_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_145_SLICEL_C5LUT_O_UNCONNECTED
    );
  U16_count_per_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y79",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U16_count_per(17),
      ADR5 => '1',
      O => U16_count_per_17_rt_1252
    );
  BUS2432_6_146_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_146_SLICEL_B5LUT_O_UNCONNECTED
    );
  U16_count_per_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y79",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U16_count_per(16),
      ADR5 => '1',
      O => U16_count_per_16_rt_1251
    );
  BUS2432_6_147_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y79",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_147_SLICEL_A5LUT_O_UNCONNECTED
    );
  U24_Mcount_count_per_cy_3_U24_Mcount_count_per_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(3),
      O => U24_Result_3_0
    );
  U24_Mcount_count_per_cy_3_U24_Mcount_count_per_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(2),
      O => U24_Result_2_0
    );
  U24_Mcount_count_per_cy_3_U24_Mcount_count_per_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(1),
      O => U24_Result_1_0
    );
  U24_Mcount_count_per_cy_3_U24_Mcount_count_per_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(0),
      O => U24_Result_0_0
    );
  U24_count_per_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U24_count_per(3),
      ADR5 => '1',
      O => U24_count_per_3_rt_1271
    );
  BUS2432_6_80_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_80_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp0_CYINITGND_8 : X_ZERO
    generic map(
      LOC => "SLICE_X50Y64"
    )
    port map (
      O => NLW_ProtoComp0_CYINITGND_8_O_UNCONNECTED
    );
  U24_Mcount_count_per_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y64"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U24_Mcount_count_per_cy_3_Q_4764,
      CO(2) => NLW_U24_Mcount_count_per_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U24_Mcount_count_per_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U24_Mcount_count_per_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => U24_Result(3),
      O(2) => U24_Result(2),
      O(1) => U24_Result(1),
      O(0) => U24_Result(0),
      S(3) => U24_count_per_3_rt_1271,
      S(2) => U24_count_per_2_rt_1276,
      S(1) => U24_count_per_1_rt_1261,
      S(0) => U24_Mcount_count_per_lut(0)
    );
  U24_count_per_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U24_count_per(2),
      ADR5 => '1',
      O => U24_count_per_2_rt_1276
    );
  BUS2432_6_81_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_81_SLICEL_C5LUT_O_UNCONNECTED
    );
  U24_count_per_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U24_count_per(1),
      ADR5 => '1',
      O => U24_count_per_1_rt_1261
    );
  BUS2432_6_82_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_82_SLICEL_B5LUT_O_UNCONNECTED
    );
  U24_Mcount_count_per_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"5555555555555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U24_count_per(0),
      ADR5 => '1',
      O => U24_Mcount_count_per_lut(0)
    );
  BUS2432_5_8_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y64",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_8_SLICEL_A5LUT_O_UNCONNECTED
    );
  U16_Mcount_count_per_cy_7_U16_Mcount_count_per_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(7),
      O => U16_Result_7_0
    );
  U16_Mcount_count_per_cy_7_U16_Mcount_count_per_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(6),
      O => U16_Result_6_0
    );
  U16_Mcount_count_per_cy_7_U16_Mcount_count_per_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(5),
      O => U16_Result_5_0
    );
  U16_Mcount_count_per_cy_7_U16_Mcount_count_per_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(4),
      O => U16_Result_4_0
    );
  U16_count_per_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y76",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U16_count_per(7),
      ADR5 => '1',
      O => U16_count_per_7_rt_1182
    );
  BUS2432_6_156_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y76",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_156_SLICEL_D5LUT_O_UNCONNECTED
    );
  U16_Mcount_count_per_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y76"
    )
    port map (
      CI => U16_Mcount_count_per_cy_3_Q_4720,
      CYINIT => '0',
      CO(3) => U16_Mcount_count_per_cy_7_Q_4729,
      CO(2) => NLW_U16_Mcount_count_per_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U16_Mcount_count_per_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U16_Mcount_count_per_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U16_Result(7),
      O(2) => U16_Result(6),
      O(1) => U16_Result(5),
      O(0) => U16_Result(4),
      S(3) => U16_count_per_7_rt_1182,
      S(2) => U16_count_per_6_rt_1188,
      S(1) => U16_count_per_5_rt_1190,
      S(0) => U16_count_per_4_rt_1179
    );
  U16_count_per_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y76",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U16_count_per(6),
      ADR5 => '1',
      O => U16_count_per_6_rt_1188
    );
  BUS2432_6_157_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y76",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_157_SLICEL_C5LUT_O_UNCONNECTED
    );
  U16_count_per_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y76",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U16_count_per(5),
      ADR5 => '1',
      O => U16_count_per_5_rt_1190
    );
  BUS2432_6_158_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y76",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_158_SLICEL_B5LUT_O_UNCONNECTED
    );
  U16_count_per_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y76",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U16_count_per(4),
      ADR5 => '1',
      O => U16_count_per_4_rt_1179
    );
  BUS2432_6_159_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y76",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_159_SLICEL_A5LUT_O_UNCONNECTED
    );
  U16_Mcount_count_per_cy_3_U16_Mcount_count_per_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(3),
      O => U16_Result_3_0
    );
  U16_Mcount_count_per_cy_3_U16_Mcount_count_per_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(2),
      O => U16_Result_2_0
    );
  U16_Mcount_count_per_cy_3_U16_Mcount_count_per_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(1),
      O => U16_Result_1_0
    );
  U16_Mcount_count_per_cy_3_U16_Mcount_count_per_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U16_Result(0),
      O => U16_Result_0_0
    );
  U16_count_per_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y75",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U16_count_per(3),
      ADR5 => '1',
      O => U16_count_per_3_rt_1164
    );
  BUS2432_6_160_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y75",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_160_SLICEL_D5LUT_O_UNCONNECTED
    );
  ProtoComp0_CYINITGND_7 : X_ZERO
    generic map(
      LOC => "SLICE_X34Y75"
    )
    port map (
      O => NLW_ProtoComp0_CYINITGND_7_O_UNCONNECTED
    );
  U16_Mcount_count_per_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X34Y75"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U16_Mcount_count_per_cy_3_Q_4720,
      CO(2) => NLW_U16_Mcount_count_per_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U16_Mcount_count_per_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U16_Mcount_count_per_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => U16_Result(3),
      O(2) => U16_Result(2),
      O(1) => U16_Result(1),
      O(0) => U16_Result(0),
      S(3) => U16_count_per_3_rt_1164,
      S(2) => U16_count_per_2_rt_1169,
      S(1) => U16_count_per_1_rt_1154,
      S(0) => U16_Mcount_count_per_lut(0)
    );
  U16_count_per_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y75",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U16_count_per(2),
      ADR5 => '1',
      O => U16_count_per_2_rt_1169
    );
  BUS2432_6_161_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y75",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_161_SLICEL_C5LUT_O_UNCONNECTED
    );
  U16_count_per_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X34Y75",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U16_count_per(1),
      ADR5 => '1',
      O => U16_count_per_1_rt_1154
    );
  BUS2432_6_162_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y75",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_162_SLICEL_B5LUT_O_UNCONNECTED
    );
  U16_Mcount_count_per_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y75",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U16_count_per(0),
      ADR5 => '1',
      O => U16_Mcount_count_per_lut(0)
    );
  BUS2432_5_12_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X34Y75",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_5_12_SLICEL_A5LUT_O_UNCONNECTED
    );
  U24_Mcount_count_per_cy_15_U24_Mcount_count_per_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(15),
      O => U24_Result_15_0
    );
  U24_Mcount_count_per_cy_15_U24_Mcount_count_per_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(14),
      O => U24_Result_14_0
    );
  U24_Mcount_count_per_cy_15_U24_Mcount_count_per_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(13),
      O => U24_Result_13_0
    );
  U24_Mcount_count_per_cy_15_U24_Mcount_count_per_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(12),
      O => U24_Result_12_0
    );
  U24_count_per_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y67",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U24_count_per(15),
      ADR5 => '1',
      O => U24_count_per_15_rt_1333
    );
  BUS2432_6_68_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_68_SLICEL_D5LUT_O_UNCONNECTED
    );
  U24_Mcount_count_per_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y67"
    )
    port map (
      CI => U24_Mcount_count_per_cy_11_Q_4782,
      CYINIT => '0',
      CO(3) => U24_Mcount_count_per_cy_15_Q_4791,
      CO(2) => NLW_U24_Mcount_count_per_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U24_Mcount_count_per_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U24_Mcount_count_per_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U24_Result(15),
      O(2) => U24_Result(14),
      O(1) => U24_Result(13),
      O(0) => U24_Result(12),
      S(3) => U24_count_per_15_rt_1333,
      S(2) => U24_count_per_14_rt_1339,
      S(1) => U24_count_per_13_rt_1341,
      S(0) => U24_count_per_12_rt_1330
    );
  U24_count_per_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y67",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U24_count_per(14),
      ADR5 => '1',
      O => U24_count_per_14_rt_1339
    );
  BUS2432_6_69_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_69_SLICEL_C5LUT_O_UNCONNECTED
    );
  U24_count_per_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y67",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U24_count_per(13),
      ADR5 => '1',
      O => U24_count_per_13_rt_1341
    );
  BUS2432_6_70_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_70_SLICEL_B5LUT_O_UNCONNECTED
    );
  U24_count_per_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y67",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U24_count_per(12),
      ADR5 => '1',
      O => U24_count_per_12_rt_1330
    );
  BUS2432_6_71_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y67",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_71_SLICEL_A5LUT_O_UNCONNECTED
    );
  U24_Result_19_U24_Result_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(19),
      O => U24_Result_19_0
    );
  U24_Result_19_U24_Result_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(18),
      O => U24_Result_18_0
    );
  U24_Result_19_U24_Result_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(17),
      O => U24_Result_17_0
    );
  U24_Result_19_U24_Result_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(16),
      O => U24_Result_16_0
    );
  U24_count_per_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y68",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => U24_count_per(19),
      O => U24_count_per_19_rt_1354
    );
  U24_Mcount_count_per_xor_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y68"
    )
    port map (
      CI => U24_Mcount_count_per_cy_15_Q_4791,
      CYINIT => '0',
      CO(3) => NLW_U24_Mcount_count_per_xor_19_CO_3_UNCONNECTED,
      CO(2) => NLW_U24_Mcount_count_per_xor_19_CO_2_UNCONNECTED,
      CO(1) => NLW_U24_Mcount_count_per_xor_19_CO_1_UNCONNECTED,
      CO(0) => NLW_U24_Mcount_count_per_xor_19_CO_0_UNCONNECTED,
      DI(3) => NLW_U24_Mcount_count_per_xor_19_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U24_Result(19),
      O(2) => U24_Result(18),
      O(1) => U24_Result(17),
      O(0) => U24_Result(16),
      S(3) => U24_count_per_19_rt_1354,
      S(2) => U24_count_per_18_rt_1350,
      S(1) => U24_count_per_17_rt_1359,
      S(0) => U24_count_per_16_rt_1358
    );
  U24_count_per_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y68",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U24_count_per(18),
      ADR5 => '1',
      O => U24_count_per_18_rt_1350
    );
  BUS2432_6_65_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_65_SLICEL_C5LUT_O_UNCONNECTED
    );
  U24_count_per_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y68",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U24_count_per(17),
      ADR5 => '1',
      O => U24_count_per_17_rt_1359
    );
  BUS2432_6_66_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_66_SLICEL_B5LUT_O_UNCONNECTED
    );
  U24_count_per_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y68",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U24_count_per(16),
      ADR5 => '1',
      O => U24_count_per_16_rt_1358
    );
  BUS2432_6_67_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y68",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_67_SLICEL_A5LUT_O_UNCONNECTED
    );
  settingtimeout_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y3"
    )
    port map (
      I => NlwBufferSignal_settingtimeout_OBUF_I,
      O => settingtimeout
    );
  hd44780_db_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y74"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_2_OBUF_I,
      O => hd44780_db(2)
    );
  hd44780_db_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y76"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_1_OBUF_I,
      O => hd44780_db(1)
    );
  U24_Mcount_count_per_cy_7_U24_Mcount_count_per_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(7),
      O => U24_Result_7_0
    );
  U24_Mcount_count_per_cy_7_U24_Mcount_count_per_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(6),
      O => U24_Result_6_0
    );
  U24_Mcount_count_per_cy_7_U24_Mcount_count_per_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(5),
      O => U24_Result_5_0
    );
  U24_Mcount_count_per_cy_7_U24_Mcount_count_per_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(4),
      O => U24_Result_4_0
    );
  U24_count_per_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y65",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U24_count_per(7),
      ADR5 => '1',
      O => U24_count_per_7_rt_1289
    );
  BUS2432_6_76_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_76_SLICEL_D5LUT_O_UNCONNECTED
    );
  U24_Mcount_count_per_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y65"
    )
    port map (
      CI => U24_Mcount_count_per_cy_3_Q_4764,
      CYINIT => '0',
      CO(3) => U24_Mcount_count_per_cy_7_Q_4773,
      CO(2) => NLW_U24_Mcount_count_per_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U24_Mcount_count_per_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U24_Mcount_count_per_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U24_Result(7),
      O(2) => U24_Result(6),
      O(1) => U24_Result(5),
      O(0) => U24_Result(4),
      S(3) => U24_count_per_7_rt_1289,
      S(2) => U24_count_per_6_rt_1295,
      S(1) => U24_count_per_5_rt_1297,
      S(0) => U24_count_per_4_rt_1286
    );
  U24_count_per_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y65",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U24_count_per(6),
      ADR5 => '1',
      O => U24_count_per_6_rt_1295
    );
  BUS2432_6_77_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_77_SLICEL_C5LUT_O_UNCONNECTED
    );
  U24_count_per_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y65",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U24_count_per(5),
      ADR5 => '1',
      O => U24_count_per_5_rt_1297
    );
  BUS2432_6_78_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_78_SLICEL_B5LUT_O_UNCONNECTED
    );
  U24_count_per_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y65",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U24_count_per(4),
      ADR5 => '1',
      O => U24_count_per_4_rt_1286
    );
  BUS2432_6_79_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y65",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_79_SLICEL_A5LUT_O_UNCONNECTED
    );
  hd44780_db_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y77"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_4_OBUF_I,
      O => hd44780_db(4)
    );
  hd44780_db_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y79"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_3_OBUF_I,
      O => hd44780_db(3)
    );
  hd44780_db_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y71"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_0_OBUF_I,
      O => hd44780_db(0)
    );
  hd44780_db_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y78"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_5_OBUF_I,
      O => hd44780_db(5)
    );
  U24_Mcount_count_per_cy_11_U24_Mcount_count_per_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(11),
      O => U24_Result_11_0
    );
  U24_Mcount_count_per_cy_11_U24_Mcount_count_per_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(10),
      O => U24_Result_10_0
    );
  U24_Mcount_count_per_cy_11_U24_Mcount_count_per_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(9),
      O => U24_Result_9_0
    );
  U24_Mcount_count_per_cy_11_U24_Mcount_count_per_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U24_Result(8),
      O => U24_Result_8_0
    );
  U24_count_per_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y66",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U24_count_per(11),
      ADR5 => '1',
      O => U24_count_per_11_rt_1311
    );
  BUS2432_6_72_SLICEL_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_72_SLICEL_D5LUT_O_UNCONNECTED
    );
  U24_Mcount_count_per_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X50Y66"
    )
    port map (
      CI => U24_Mcount_count_per_cy_7_Q_4773,
      CYINIT => '0',
      CO(3) => U24_Mcount_count_per_cy_11_Q_4782,
      CO(2) => NLW_U24_Mcount_count_per_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U24_Mcount_count_per_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U24_Mcount_count_per_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => U24_Result(11),
      O(2) => U24_Result(10),
      O(1) => U24_Result(9),
      O(0) => U24_Result(8),
      S(3) => U24_count_per_11_rt_1311,
      S(2) => U24_count_per_10_rt_1317,
      S(1) => U24_count_per_9_rt_1319,
      S(0) => U24_count_per_8_rt_1308
    );
  U24_count_per_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y66",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U24_count_per(10),
      ADR5 => '1',
      O => U24_count_per_10_rt_1317
    );
  BUS2432_6_73_SLICEL_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_73_SLICEL_C5LUT_O_UNCONNECTED
    );
  U24_count_per_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y66",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U24_count_per(9),
      ADR5 => '1',
      O => U24_count_per_9_rt_1319
    );
  BUS2432_6_74_SLICEL_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_74_SLICEL_B5LUT_O_UNCONNECTED
    );
  U24_count_per_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X50Y66",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U24_count_per(8),
      ADR5 => '1',
      O => U24_count_per_8_rt_1308
    );
  BUS2432_6_75_SLICEL_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X50Y66",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_BUS2432_6_75_SLICEL_A5LUT_O_UNCONNECTED
    );
  hd44780_db_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y72"
    )
    port map (
      I => NlwBufferSignal_hd44780_db_7_OBUF_I,
      O => hd44780_db(7)
    );
  settingtimerout_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y2"
    )
    port map (
      I => NlwBufferSignal_settingtimerout_OBUF_I,
      O => settingtimerout
    );
  rst_IMUX : X_BUF
    generic map(
      LOC => "IOB_X2Y125",
      PATHPULSE => 368 ps
    )
    port map (
      I => rst_IBUF_5373,
      O => rst_IBUF_4607
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y125",
      PATHPULSE => 368 ps
    )
    port map (
      I => rst,
      O => rst_IBUF_5373
    );
  buzzerleds_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y4"
    )
    port map (
      I => NlwBufferSignal_buzzerleds_0_OBUF_I,
      O => buzzerleds(0)
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IOB_X1Y67",
      PATHPULSE => 368 ps
    )
    port map (
      I => clk,
      O => clk_IBUF
    );
  hd44780_db_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y73"
    )
    port map (
      I => '0',
      O => hd44780_db(6)
    );
  pb_canceltimer_IMUX : X_BUF
    generic map(
      LOC => "IOB_X2Y124",
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_canceltimer_IBUF_5401,
      O => pb_canceltimer_IBUF_4823
    );
  pb_canceltimer_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y124",
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_canceltimer,
      O => pb_canceltimer_IBUF_5401
    );
  U1_count_3 : X_FF
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_3_CLK,
      I => U1_count_3_rstpot1_1424,
      O => U1_count(3),
      SET => GND,
      RST => GND
    );
  U1_count_3_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => X"3232323230303030"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_Result_3_0,
      ADR0 => U1_N2,
      ADR5 => U1_N11,
      ADR1 => U1_count_and0000,
      O => U1_count_3_rstpot1_1424
    );
  U1_count_2 : X_FF
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_2_CLK,
      I => U1_count_2_rstpot1_1422,
      O => U1_count(2),
      SET => GND,
      RST => GND
    );
  U1_count_2_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => X"3232323230303030"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U1_Result_2_0,
      ADR0 => U1_N2,
      ADR5 => U1_N11,
      ADR1 => U1_count_and0000,
      O => U1_count_2_rstpot1_1422
    );
  U1_count_1 : X_FF
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_1_CLK,
      I => U1_count_1_rstpot1_1441,
      O => U1_count(1),
      SET => GND,
      RST => GND
    );
  U1_count_1_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => X"00EE00EE00CC00CC"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U1_Result_1_0,
      ADR5 => U1_N2,
      ADR0 => U1_N11,
      ADR3 => U1_count_and0000,
      O => U1_count_1_rstpot1_1441
    );
  U1_count_0 : X_FF
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_0_CLK,
      I => U1_count_0_rstpot1_1430,
      O => U1_count(0),
      SET => GND,
      RST => GND
    );
  U1_count_0_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y29",
      INIT => X"00EE00EE00CC00CC"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U1_Result_0_0,
      ADR5 => U1_N2,
      ADR0 => U1_N11,
      ADR3 => U1_count_and0000,
      O => U1_count_0_rstpot1_1430
    );
  pb_min_IMUX : X_BUF
    generic map(
      LOC => "IOB_X1Y170",
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_min_IBUF_5395,
      O => pb_min_IBUF_4821
    );
  pb_min_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y170",
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_min,
      O => pb_min_IBUF_5395
    );
  U1_count_11 : X_FF
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_11_CLK,
      I => U1_count_11_rstpot_1475,
      O => U1_count(11),
      SET => GND,
      RST => GND
    );
  U1_count_11_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => X"00AA0AAA00AA0AAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => U1_Result_11_0,
      ADR2 => U1_N3,
      ADR4 => U1_N2,
      ADR3 => U1_N11,
      O => U1_count_11_rstpot_1475
    );
  U1_count_10 : X_FF
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_10_CLK,
      I => U1_count_10_rstpot_1492,
      O => U1_count(10),
      SET => GND,
      RST => GND
    );
  U1_count_10_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => X"00CC0CCC00CC0CCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => U1_Result_10_0,
      ADR2 => U1_N3,
      ADR4 => U1_N2,
      ADR3 => U1_N11,
      O => U1_count_10_rstpot_1492
    );
  U1_count_9 : X_FF
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_9_CLK,
      I => U1_count_9_rstpot_1487,
      O => U1_count(9),
      SET => GND,
      RST => GND
    );
  U1_count_9_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => X"22222A2A22222A2A"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => U1_Result_9_0,
      ADR4 => U1_N3,
      ADR2 => U1_N2,
      ADR1 => U1_N11,
      O => U1_count_9_rstpot_1487
    );
  U1_count_8 : X_FF
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_8_CLK,
      I => U1_count_8_rstpot_1486,
      O => U1_count(8),
      SET => GND,
      RST => GND
    );
  U1_count_8_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y31",
      INIT => X"22222A2A22222A2A"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => U1_Result_8_0,
      ADR4 => U1_N3,
      ADR2 => U1_N2,
      ADR1 => U1_N11,
      O => U1_count_8_rstpot_1486
    );
  U1_count_19 : X_FF
    generic map(
      LOC => "SLICE_X19Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_19_CLK,
      I => U1_count_19_rstpot_1521,
      O => U1_count(19),
      SET => GND,
      RST => GND
    );
  U1_count_19_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y33",
      INIT => X"00F000F000F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U1_Result_19_0,
      ADR4 => U1_N3,
      ADR5 => U1_N2,
      ADR3 => U1_N11,
      O => U1_count_19_rstpot_1521
    );
  U1_count_18 : X_FF
    generic map(
      LOC => "SLICE_X19Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_18_CLK,
      I => U1_count_18_rstpot1_1535,
      O => U1_count(18),
      SET => GND,
      RST => GND
    );
  U1_count_18_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y33",
      INIT => X"5550555050505050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => U1_Result_18_0,
      ADR5 => U1_N2,
      ADR3 => U1_N11,
      ADR0 => U1_count_and0000,
      O => U1_count_18_rstpot1_1535
    );
  U1_count_17 : X_FF
    generic map(
      LOC => "SLICE_X19Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_17_CLK,
      I => U1_count_17_rstpot_1537,
      O => U1_count(17),
      SET => GND,
      RST => GND
    );
  U1_count_17_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y33",
      INIT => X"0404CCCC0404CCCC"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR1 => U1_Result_17_0,
      ADR2 => U1_N3,
      ADR0 => U1_N2,
      ADR4 => U1_N11,
      O => U1_count_17_rstpot_1537
    );
  U1_count_16 : X_FF
    generic map(
      LOC => "SLICE_X19Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_16_CLK,
      I => U1_count_16_rstpot1_1538,
      O => U1_count(16),
      SET => GND,
      RST => GND
    );
  U1_count_16_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y33",
      INIT => X"00000000EEEECCCC"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U1_Result_16_0,
      ADR0 => U1_N2,
      ADR4 => U1_N11,
      ADR5 => U1_count_and0000,
      O => U1_count_16_rstpot1_1538
    );
  pb_settime_IMUX : X_BUF
    generic map(
      LOC => "IOB_X2Y121",
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_settime_IBUF_5404,
      O => pb_settime_IBUF_4824
    );
  pb_settime_IBUF : X_BUF
    generic map(
      LOC => "IOB_X2Y121",
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_settime,
      O => pb_settime_IBUF_5404
    );
  ovenout_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y5"
    )
    port map (
      I => NlwBufferSignal_ovenout_OBUF_I,
      O => ovenout
    );
  U1_count_7 : X_FF
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_7_CLK,
      I => U1_count_7_rstpot1_1449,
      O => U1_count(7),
      SET => GND,
      RST => GND
    );
  U1_count_7_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => X"3232303032323030"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => U1_Result_7_0,
      ADR4 => U1_N2,
      ADR0 => U1_N11,
      ADR1 => U1_count_and0000,
      O => U1_count_7_rstpot1_1449
    );
  U1_count_6 : X_FF
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_6_CLK,
      I => U1_count_6_rstpot1_1447,
      O => U1_count(6),
      SET => GND,
      RST => GND
    );
  U1_count_6_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => X"3232303032323030"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U1_Result_6_0,
      ADR4 => U1_N2,
      ADR0 => U1_N11,
      ADR1 => U1_count_and0000,
      O => U1_count_6_rstpot1_1447
    );
  U1_count_5 : X_FF
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_5_CLK,
      I => U1_count_5_rstpot1_1466,
      O => U1_count(5),
      SET => GND,
      RST => GND
    );
  U1_count_5_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => X"00FC00FC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => U1_Result_5_0,
      ADR2 => U1_N2,
      ADR5 => U1_N11,
      ADR3 => U1_count_and0000,
      O => U1_count_5_rstpot1_1466
    );
  U1_count_4 : X_FF
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_4_CLK,
      I => U1_count_4_rstpot1_1455,
      O => U1_count(4),
      SET => GND,
      RST => GND
    );
  U1_count_4_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y30",
      INIT => X"00FC00FC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => U1_Result_4_0,
      ADR2 => U1_N2,
      ADR5 => U1_N11,
      ADR3 => U1_count_and0000,
      O => U1_count_4_rstpot1_1455
    );
  U1_count_15 : X_FF
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_15_CLK,
      I => U1_count_15_rstpot1_1504,
      O => U1_count(15),
      SET => GND,
      RST => GND
    );
  U1_count_15_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => X"3232303032323030"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => U1_Result_15_0,
      ADR4 => U1_N2,
      ADR0 => U1_N11,
      ADR1 => U1_count_and0000,
      O => U1_count_15_rstpot1_1504
    );
  U1_count_14 : X_FF
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_14_CLK,
      I => U1_count_14_rstpot1_1507,
      O => U1_count(14),
      SET => GND,
      RST => GND
    );
  U1_count_14_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => X"3232303032323030"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U1_Result_14_0,
      ADR4 => U1_N2,
      ADR0 => U1_N11,
      ADR1 => U1_count_and0000,
      O => U1_count_14_rstpot1_1507
    );
  U1_count_13 : X_FF
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_13_CLK,
      I => U1_count_13_rstpot1_1508,
      O => U1_count(13),
      SET => GND,
      RST => GND
    );
  U1_count_13_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => X"00FC00CC00FC00CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => U1_Result_13_0,
      ADR2 => U1_N2,
      ADR4 => U1_N11,
      ADR3 => U1_count_and0000,
      O => U1_count_13_rstpot1_1508
    );
  U1_count_12 : X_FF
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_12_CLK,
      I => U1_count_12_rstpot_1518,
      O => U1_count(12),
      SET => GND,
      RST => GND
    );
  U1_count_12_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y32",
      INIT => X"000CCCCC000CCCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => U1_Result_12_0,
      ADR3 => U1_N3,
      ADR2 => U1_N2,
      ADR4 => U1_N11,
      O => U1_count_12_rstpot_1518
    );
  pb_hour_IMUX : X_BUF
    generic map(
      LOC => "IOB_X1Y168",
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_hour_IBUF_5390,
      O => pb_hour_IBUF_4819
    );
  pb_hour_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y168",
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_hour,
      O => pb_hour_IBUF_5390
    );
  pb_settimer_IMUX : X_BUF
    generic map(
      LOC => "IOB_X1Y166",
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_settimer_IBUF_5398,
      O => pb_settimer_IBUF_4822
    );
  pb_settimer_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y166",
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_settimer,
      O => pb_settimer_IBUF_5398
    );
  U1_clk_1hz_cmp_eq0000194_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y34",
      INIT => X"FFFFFFF3FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U1_count_add0000_15_0,
      ADR5 => U1_count_add0000_16_0,
      ADR4 => U1_count_add0000_27_0,
      ADR2 => U1_count_add0000_28_0,
      ADR3 => U1_count_add0000_29_0,
      O => N50
    );
  U1_clk_1hz_cmp_eq0000169 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y34",
      INIT => X"1000000000000000"
    )
    port map (
      ADR0 => U1_count_add0000_17_0,
      ADR4 => U1_count_add0000_18_0,
      ADR1 => U1_count_add0000_19_0,
      ADR3 => U1_count_add0000_20_0,
      ADR5 => U1_count_add0000_21_0,
      ADR2 => U1_count_add0000_22_0,
      O => U1_clk_1hz_cmp_eq0000169_5065
    );
  U1_count_31 : X_FF
    generic map(
      LOC => "SLICE_X21Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_31_CLK,
      I => U1_count_31_rstpot_1668,
      O => U1_count(31),
      SET => GND,
      RST => GND
    );
  U1_count_31_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y34",
      INIT => X"03000300FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => U1_Result_31_0,
      ADR2 => U1_N3,
      ADR1 => U1_N2,
      ADR5 => U1_N11,
      O => U1_count_31_rstpot_1668
    );
  U1_clk_1hz_cmp_eq00001112 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y34",
      INIT => X"0000100000000000"
    )
    port map (
      ADR1 => U1_count_add0000_30_0,
      ADR4 => U1_count_add0000_31_0,
      ADR2 => U1_clk_1hz_cmp_eq0000116_5063,
      ADR3 => U1_clk_1hz_cmp_eq0000138_5066,
      ADR0 => N50,
      ADR5 => U1_clk_1hz_cmp_eq0000169_5065,
      O => U1_N11
    );
  U1_count_25 : X_FF
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_25_CLK,
      I => U1_count_25_rstpot_1572,
      O => U1_count(25),
      SET => GND,
      RST => GND
    );
  U1_count_25_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => X"3377337700000000"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => U1_Result_25_0,
      ADR3 => U1_N3,
      ADR0 => U1_N2,
      ADR1 => U1_N11,
      O => U1_count_25_rstpot_1572
    );
  U1_count_24 : X_FF
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_24_CLK,
      I => U1_count_24_rstpot1_1591,
      O => U1_count(24),
      SET => GND,
      RST => GND
    );
  U1_count_24_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => X"0F080F080F080F08"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => U1_Result_24_0,
      ADR0 => U1_N2,
      ADR1 => U1_N11,
      ADR2 => U1_count_and0000,
      O => U1_count_24_rstpot1_1591
    );
  U1_count_and00001 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => X"0000000008000000"
    )
    port map (
      ADR3 => U1_clk_1hz_cmp_eq0000116_5063,
      ADR5 => N52,
      ADR1 => U1_N3,
      ADR4 => U1_clk_1hz_cmp_eq0000169_5065,
      ADR0 => U1_clk_1hz_cmp_eq0000138_5066,
      ADR2 => N50,
      O => U1_count_and0000
    );
  U1_count_26 : X_FF
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_26_CLK,
      I => U1_count_26_rstpot1_1588,
      O => U1_count(26),
      SET => GND,
      RST => GND
    );
  U1_count_26_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y35",
      INIT => X"0000FFAA0000AAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => U1_Result_26_0,
      ADR5 => U1_N2,
      ADR3 => U1_N11,
      ADR4 => U1_count_and0000,
      O => U1_count_26_rstpot1_1588
    );
  U1_count_23 : X_FF
    generic map(
      LOC => "SLICE_X19Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_23_CLK,
      I => U1_count_23_rstpot1_1549,
      O => U1_count(23),
      SET => GND,
      RST => GND
    );
  U1_count_23_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y34",
      INIT => X"5454545450505050"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => U1_Result_23_0,
      ADR5 => U1_N2,
      ADR1 => U1_N11,
      ADR0 => U1_count_and0000,
      O => U1_count_23_rstpot1_1549
    );
  U1_count_22 : X_FF
    generic map(
      LOC => "SLICE_X19Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_22_CLK,
      I => U1_count_22_rstpot1_1547,
      O => U1_count(22),
      SET => GND,
      RST => GND
    );
  U1_count_22_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y34",
      INIT => X"5454545450505050"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => U1_Result_22_0,
      ADR5 => U1_N2,
      ADR1 => U1_N11,
      ADR0 => U1_count_and0000,
      O => U1_count_22_rstpot1_1547
    );
  U1_count_21 : X_FF
    generic map(
      LOC => "SLICE_X19Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_21_CLK,
      I => U1_count_21_rstpot1_1566,
      O => U1_count(21),
      SET => GND,
      RST => GND
    );
  U1_count_21_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y34",
      INIT => X"00000000EECCEECC"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U1_Result_21_0,
      ADR0 => U1_N2,
      ADR3 => U1_N11,
      ADR5 => U1_count_and0000,
      O => U1_count_21_rstpot1_1566
    );
  U1_count_20 : X_FF
    generic map(
      LOC => "SLICE_X19Y34",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_20_CLK,
      I => U1_count_20_rstpot1_1555,
      O => U1_count(20),
      SET => GND,
      RST => GND
    );
  U1_count_20_rstpot1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y34",
      INIT => X"00000000EECCEECC"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR1 => U1_Result_20_0,
      ADR0 => U1_N2,
      ADR3 => U1_N11,
      ADR5 => U1_count_and0000,
      O => U1_count_20_rstpot1_1555
    );
  U1_clk_1hz : X_FF
    generic map(
      LOC => "SLICE_X21Y33",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_clk_1hz_CLK,
      I => U1_clk_1hz_rstpot_1652,
      O => U1_clk_1hz_4924,
      SET => GND,
      RST => GND
    );
  U1_clk_1hz_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X21Y33",
      INIT => X"FFCC3300FFCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => U1_N3,
      ADR3 => U1_clk_1hz_4924,
      ADR4 => U1_N2,
      ADR1 => U1_N11,
      O => U1_clk_1hz_rstpot_1652
    );
  U1_count_30 : X_FF
    generic map(
      LOC => "SLICE_X19Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_30_CLK,
      I => U1_count_30_rstpot_1601,
      O => U1_count(30),
      SET => GND,
      RST => GND
    );
  U1_count_30_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y36",
      INIT => X"0F0F5F5F00000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => U1_Result_30_0,
      ADR4 => U1_N3,
      ADR0 => U1_N2,
      ADR2 => U1_N11,
      O => U1_count_30_rstpot_1601
    );
  U1_count_29 : X_FF
    generic map(
      LOC => "SLICE_X19Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_29_CLK,
      I => U1_count_29_rstpot_1618,
      O => U1_count(29),
      SET => GND,
      RST => GND
    );
  U1_count_29_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y36",
      INIT => X"0F0F5F5F00000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => U1_Result_29_0,
      ADR4 => U1_N3,
      ADR0 => U1_N2,
      ADR2 => U1_N11,
      O => U1_count_29_rstpot_1618
    );
  U1_count_28 : X_FF
    generic map(
      LOC => "SLICE_X19Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_28_CLK,
      I => U1_count_28_rstpot_1613,
      O => U1_count(28),
      SET => GND,
      RST => GND
    );
  U1_count_28_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y36",
      INIT => X"0000AAAA0A0AAAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => U1_Result_28_0,
      ADR2 => U1_N3,
      ADR5 => U1_N2,
      ADR4 => U1_N11,
      O => U1_count_28_rstpot_1613
    );
  U1_count_27 : X_FF
    generic map(
      LOC => "SLICE_X19Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_count_27_CLK,
      I => U1_count_27_rstpot_1612,
      O => U1_count(27),
      SET => GND,
      RST => GND
    );
  U1_count_27_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X19Y36",
      INIT => X"0000FF000F00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => U1_Result_27_0,
      ADR2 => U1_N3,
      ADR5 => U1_N2,
      ADR4 => U1_N11,
      O => U1_count_27_rstpot_1612
    );
  U1_clk_1hz_cmp_eq0000116 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y32",
      INIT => X"0002000000020000"
    )
    port map (
      ADR5 => '1',
      ADR2 => U1_count_add0000_10_0,
      ADR3 => U1_count_add0000_11_0,
      ADR1 => U1_count_add0000_12_0,
      ADR0 => U1_count_add0000_13_0,
      ADR4 => U1_count_add0000_14_0,
      O => U1_clk_1hz_cmp_eq0000116_5063
    );
  U16_pb_deb : X_FF
    generic map(
      LOC => "SLICE_X28Y76",
      INIT => '0'
    )
    port map (
      CE => U16_pb_deb_not0001,
      CLK => NlwBufferSignal_U16_pb_deb_CLK,
      I => NlwBufferSignal_U16_pb_deb_IN,
      O => U16_pb_deb_4937,
      SET => GND,
      RST => GND
    );
  U22_count_per_cmp_eq000090_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y68",
      INIT => X"FFFFFFFF3FFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U22_count_per(4),
      ADR5 => U22_count_per(8),
      ADR3 => U22_count_per(5),
      ADR2 => U22_count_per(9),
      ADR4 => U22_count_per_cmp_eq000068_5076,
      O => N86
    );
  U22_count_per_cmp_eq000090_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y68",
      INIT => X"0000080000000000"
    )
    port map (
      ADR5 => U22_count_per(18),
      ADR1 => U22_count_per(16),
      ADR3 => U22_count_per(17),
      ADR2 => U22_count_per(10),
      ADR0 => U22_count_per(19),
      ADR4 => N86,
      O => N62
    );
  U1_Mcount_count_val11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y30",
      INIT => X"8080000080800000"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => U1_count_add0000_0_0,
      ADR0 => U1_count_add0000_1_0,
      ADR1 => U1_count_add0000_2_0,
      ADR2 => U1_count_add0000_3_0,
      O => N40
    );
  U1_Mcount_count_val11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y30",
      INIT => X"0000800000000000"
    )
    port map (
      ADR4 => U1_count_add0000_8_0,
      ADR2 => U1_count_add0000_7_0,
      ADR0 => U1_count_add0000_6_0,
      ADR5 => U1_count_add0000_5_0,
      ADR3 => U1_count_add0000_4_0,
      ADR1 => N40,
      O => U1_N2
    );
  U1_Mcount_count_val12_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y30",
      INIT => X"FFFFFFFFFFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U1_count_add0000_0_0,
      ADR5 => U1_count_add0000_1_0,
      ADR3 => U1_count_add0000_2_0,
      ADR4 => U1_count_add0000_3_0,
      O => N42
    );
  U1_Mcount_count_val12 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y30",
      INIT => X"0000000000000002"
    )
    port map (
      ADR0 => U1_count_add0000_8_0,
      ADR3 => U1_count_add0000_7_0,
      ADR5 => U1_count_add0000_6_0,
      ADR2 => U1_count_add0000_5_0,
      ADR1 => U1_count_add0000_4_0,
      ADR4 => N42,
      O => U1_N3
    );
  U1_clk_1hz_cmp_eq00001112_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y36",
      INIT => X"FFFFFFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_count_add0000_30_0,
      ADR5 => U1_count_add0000_31_0,
      O => N52
    );
  U18_pb_deb_not00011 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y77",
      INIT => X"F000F0000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => pb_min_IBUF_4821,
      ADR2 => U18_pb_sampled_5060,
      ADR3 => U18_clk_deb_4931,
      O => U18_pb_deb_not0001
    );
  U16_pb_sampled : X_FF
    generic map(
      LOC => "SLICE_X28Y77",
      INIT => '0'
    )
    port map (
      CE => U16_clk_deb_4926,
      CLK => NlwBufferSignal_U16_pb_sampled_CLK,
      I => NlwBufferSignal_U16_pb_sampled_IN,
      O => U16_pb_sampled_5054,
      SET => GND,
      RST => GND
    );
  U22_pb_deb_not00011 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y69",
      INIT => X"A0A0A0A050505050"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => pb_settimer_IBUF_4822,
      ADR5 => U22_pb_sampled_5050,
      ADR2 => U22_clk_deb_4923,
      O => U22_pb_deb_not0001
    );
  U22_pb_deb : X_FF
    generic map(
      LOC => "SLICE_X28Y69",
      INIT => '0'
    )
    port map (
      CE => U22_pb_deb_not0001,
      CLK => NlwBufferSignal_U22_pb_deb_CLK,
      I => NlwBufferSignal_U22_pb_deb_IN,
      O => U22_pb_deb_4935,
      SET => GND,
      RST => GND
    );
  U22_pb_sampled : X_FF
    generic map(
      LOC => "SLICE_X29Y71",
      INIT => '0'
    )
    port map (
      CE => U22_clk_deb_4923,
      CLK => NlwBufferSignal_U22_pb_sampled_CLK,
      I => NlwBufferSignal_U22_pb_sampled_IN,
      O => U22_pb_sampled_5050,
      SET => GND,
      RST => GND
    );
  U1_clk_1hz_cmp_eq0000138 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y35",
      INIT => X"0400000004000000"
    )
    port map (
      ADR5 => '1',
      ADR2 => U1_count_add0000_9_0,
      ADR3 => U1_count_add0000_23_0,
      ADR1 => U1_count_add0000_24_0,
      ADR0 => U1_count_add0000_25_0,
      ADR4 => U1_count_add0000_26_0,
      O => U1_clk_1hz_cmp_eq0000138_5066
    );
  buzzerleds_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y7"
    )
    port map (
      I => NlwBufferSignal_buzzerleds_2_OBUF_I,
      O => buzzerleds(2)
    );
  hd44780_rs_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y56"
    )
    port map (
      I => NlwBufferSignal_hd44780_rs_OBUF_I,
      O => hd44780_rs
    );
  hd44780_rw_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y63"
    )
    port map (
      I => '0',
      O => hd44780_rw
    );
  buzzerleds_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y6"
    )
    port map (
      I => NlwBufferSignal_buzzerleds_3_OBUF_I,
      O => buzzerleds(3)
    );
  buzzerleds_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y0"
    )
    port map (
      I => NlwBufferSignal_buzzerleds_1_OBUF_I,
      O => buzzerleds(1)
    );
  hd44780_en_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X2Y75"
    )
    port map (
      I => NlwBufferSignal_hd44780_en_OBUF_I,
      O => hd44780_en
    );
  U18_count_per_3 : X_FF
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_3_CLK,
      I => U18_Mcount_count_per_eqn_3,
      O => U18_count_per(3),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_31 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U18_Result_3_0,
      ADR2 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_3
    );
  U18_count_per_2 : X_FF
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_2_CLK,
      I => U18_Mcount_count_per_eqn_2,
      O => U18_count_per(2),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_21 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => U18_Result_2_0,
      ADR2 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_2
    );
  U18_count_per_1 : X_FF
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_1_CLK,
      I => U18_Mcount_count_per_eqn_1,
      O => U18_count_per(1),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U18_Result_1_0,
      ADR5 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_1
    );
  U18_count_per_0 : X_FF
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_0_CLK,
      I => U18_Mcount_count_per_eqn_0,
      O => U18_count_per(0),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_01 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y82",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U18_Result_0_0,
      ADR5 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_0
    );
  U36_cm_3 : X_FF
    generic map(
      LOC => "SLICE_X34Y32",
      INIT => '0'
    )
    port map (
      CE => U36_cm_not0002,
      CLK => NlwBufferSignal_U36_cm_3_CLK,
      I => U36_cm_mux0002(3),
      O => U36_cm(3),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_cm_mux0002_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y32",
      INIT => X"7080F000F000E010"
    )
    port map (
      ADR2 => U36_N10,
      ADR0 => U37_set_timer_4810,
      ADR5 => U36_cm(2),
      ADR3 => U36_cm(3),
      ADR1 => U36_cm(1),
      ADR4 => U36_cm(0),
      O => U36_cm_mux0002(3)
    );
  U36_cm_2 : X_FF
    generic map(
      LOC => "SLICE_X34Y32",
      INIT => '0'
    )
    port map (
      CE => U36_cm_not0002,
      CLK => NlwBufferSignal_U36_cm_2_CLK,
      I => U36_cm_mux0002(4),
      O => U36_cm(2),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_cm_mux0002_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y32",
      INIT => X"7E547E4481018100"
    )
    port map (
      ADR0 => U37_set_timer_4810,
      ADR2 => U36_cm(1),
      ADR1 => U36_cm(0),
      ADR5 => U36_cm(2),
      ADR3 => U36_N29,
      ADR4 => U36_N3,
      O => U36_cm_mux0002(4)
    );
  U36_cm_1 : X_FF
    generic map(
      LOC => "SLICE_X34Y32",
      INIT => '0'
    )
    port map (
      CE => U36_cm_not0002,
      CLK => NlwBufferSignal_U36_cm_1_CLK,
      I => U36_cm_mux0002(5),
      O => U36_cm(1),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_cm_mux0002_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y32",
      INIT => X"00FFCC00FFCC00FC"
    )
    port map (
      ADR0 => '1',
      ADR4 => U36_cm(0),
      ADR5 => U37_set_timer_4810,
      ADR3 => U36_cm(1),
      ADR1 => U36_N29,
      ADR2 => U36_N3,
      O => U36_cm_mux0002(5)
    );
  U36_cm_0 : X_FF
    generic map(
      LOC => "SLICE_X34Y32",
      INIT => '0'
    )
    port map (
      CE => U36_cm_not0002,
      CLK => NlwBufferSignal_U36_cm_0_CLK,
      I => U36_cm_mux0002(6),
      O => U36_cm(0),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_cm_mux0002_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y32",
      INIT => X"00CC00CCCCF0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => U37_set_timer_4810,
      ADR3 => U36_cm(0),
      ADR1 => U36_N29,
      ADR2 => U36_N3,
      O => U36_cm_mux0002(6)
    );
  U18_count_per_cmp_eq000090_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"FFFF3FFFFFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => U18_count_per(4),
      ADR4 => U18_count_per(8),
      ADR3 => U18_count_per(5),
      ADR1 => U18_count_per(9),
      ADR5 => U18_count_per_cmp_eq000068_4988,
      O => N90
    );
  U18_count_per_cmp_eq000090_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y84",
      INIT => X"0000008000000000"
    )
    port map (
      ADR2 => U18_count_per(18),
      ADR1 => U18_count_per(16),
      ADR5 => U18_count_per(17),
      ADR3 => U18_count_per(10),
      ADR0 => U18_count_per(19),
      ADR4 => N90,
      O => N66
    );
  U22_count_per_cmp_eq000068 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y68",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => U22_count_per(6),
      ADR0 => U22_count_per(7),
      ADR4 => U22_count_per(15),
      ADR3 => U22_count_per(13),
      ADR5 => U22_count_per(12),
      ADR1 => U22_count_per(11),
      O => U22_count_per_cmp_eq000068_5076
    );
  U16_count_per_3 : X_FF
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_3_CLK,
      I => U16_Mcount_count_per_eqn_3,
      O => U16_count_per(3),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_31 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U16_Result_3_0,
      ADR1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_3
    );
  U16_count_per_2 : X_FF
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_2_CLK,
      I => U16_Mcount_count_per_eqn_2,
      O => U16_count_per(2),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_21 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"2222222222222222"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U16_Result_2_0,
      ADR1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_2
    );
  U16_count_per_1 : X_FF
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_1_CLK,
      I => U16_Mcount_count_per_eqn_1,
      O => U16_count_per(1),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => U16_Result_1_0,
      ADR3 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_1
    );
  U16_count_per_0 : X_FF
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_0_CLK,
      I => U16_Mcount_count_per_eqn_0,
      O => U16_count_per(0),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_01 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y75",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => U16_Result_0_0,
      ADR3 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_0
    );
  U16_count_per_cmp_eq000090_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y77",
      INIT => X"F7FFFFFFF7FFFFFF"
    )
    port map (
      ADR5 => '1',
      ADR3 => U16_count_per(4),
      ADR2 => U16_count_per(8),
      ADR1 => U16_count_per(5),
      ADR4 => U16_count_per(9),
      ADR0 => U16_count_per_cmp_eq000068_5058,
      O => N92
    );
  U16_count_per_cmp_eq000090_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y77",
      INIT => X"0000000040000000"
    )
    port map (
      ADR4 => U16_count_per(18),
      ADR3 => U16_count_per(16),
      ADR1 => U16_count_per(17),
      ADR0 => U16_count_per(10),
      ADR2 => U16_count_per(19),
      ADR5 => N92,
      O => N68
    );
  U36_cs_4 : X_FF
    generic map(
      LOC => "SLICE_X33Y32",
      INIT => '0'
    )
    port map (
      CE => U36_cs_not0003,
      CLK => NlwBufferSignal_U36_cs_4_CLK,
      I => U36_Mcount_cs4,
      O => U36_cs(4),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_Mcount_cs_xor_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y32",
      INIT => X"FF00FFFE0000FEFE"
    )
    port map (
      ADR5 => N4,
      ADR4 => U36_N14,
      ADR2 => U36_N3,
      ADR3 => U36_cs(4),
      ADR1 => U36_cs(5),
      ADR0 => U36_cm(0),
      O => U36_Mcount_cs4
    );
  U36_cs_2 : X_FF
    generic map(
      LOC => "SLICE_X33Y32",
      INIT => '0'
    )
    port map (
      CE => U36_cs_not0003,
      CLK => NlwBufferSignal_U36_cs_2_CLK,
      I => U36_Mcount_cs2,
      O => U36_cs(2),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_Mcount_cs_xor_2_12 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y32",
      INIT => X"FAFA0505FAFA0504"
    )
    port map (
      ADR0 => U36_cs(0),
      ADR2 => U36_cs(1),
      ADR1 => U36_cs(3),
      ADR4 => U36_cs(2),
      ADR3 => U36_cs(4),
      ADR5 => U36_cs(5),
      O => U36_Mcount_cs2
    );
  U36_Mcount_cs_xor_3_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y32",
      INIT => X"0000040400000405"
    )
    port map (
      ADR1 => U36_N14,
      ADR0 => U36_cs(5),
      ADR2 => U36_cs(4),
      ADR4 => U36_cs(1),
      ADR5 => U36_cm(0),
      ADR3 => U36_N3,
      O => N36
    );
  U36_cs_3 : X_FF
    generic map(
      LOC => "SLICE_X33Y32",
      INIT => '0'
    )
    port map (
      CE => U36_cs_not0003,
      CLK => NlwBufferSignal_U36_cs_3_CLK,
      I => U36_Mcount_cs3,
      O => U36_cs(3),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_Mcount_cs_xor_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y32",
      INIT => X"FFFDFFFFFD00FD02"
    )
    port map (
      ADR2 => U36_cs(0),
      ADR1 => U36_cs(2),
      ADR0 => U36_Mcount_cs_lut(1),
      ADR3 => U36_cs(3),
      ADR5 => N35,
      ADR4 => N36,
      O => U36_Mcount_cs3
    );
  U36_cs_1 : X_FF
    generic map(
      LOC => "SLICE_X33Y33",
      INIT => '0'
    )
    port map (
      CE => U36_cs_not0003,
      CLK => NlwBufferSignal_U36_cs_1_CLK,
      I => U36_Mcount_cs1,
      O => U36_cs(1),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_Mcount_cs_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y33",
      INIT => X"3333CFCF3322CFCF"
    )
    port map (
      ADR1 => U36_cs(0),
      ADR4 => U36_Mcount_cs_lut(1),
      ADR0 => U36_N7,
      ADR3 => U36_cs(1),
      ADR5 => U36_cs(2),
      ADR2 => U36_N15,
      O => U36_Mcount_cs1
    );
  U36_Mcount_cs_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X33Y33",
      INIT => X"00FF00FF00FB00FA"
    )
    port map (
      ADR3 => U36_cs(1),
      ADR0 => U36_cs(0),
      ADR2 => U36_N7,
      ADR1 => U36_cm(6),
      ADR4 => N38,
      ADR5 => U36_cs(2),
      O => U36_Mcount_cs_lut(1)
    );
  U36_cs_0 : X_FF
    generic map(
      LOC => "SLICE_X33Y33",
      INIT => '0'
    )
    port map (
      CE => U36_cs_not0003,
      CLK => NlwBufferSignal_U36_cs_0_CLK,
      I => U36_Mcount_cs,
      O => U36_cs(0),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_Mcount_cs_xor_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y33",
      INIT => X"0000FFFF0000FFFE"
    )
    port map (
      ADR2 => U36_cm(0),
      ADR1 => U36_cs(1),
      ADR0 => U36_cs(2),
      ADR4 => U36_cs(0),
      ADR3 => U36_N3,
      ADR5 => U36_N7,
      O => U36_Mcount_cs
    );
  U36_Mcount_cs_xor_2_111 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y33",
      INIT => X"FFFFFFFFFFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => U36_cs(3),
      ADR5 => U36_cs(4),
      ADR3 => U36_cs(5),
      O => U36_N7
    );
  U21_pulse : X_FF
    generic map(
      LOC => "SLICE_X33Y52",
      INIT => '0'
    )
    port map (
      CE => U22_pb_deb_4935,
      CLK => NlwBufferSignal_U21_pulse_CLK,
      I => U21_pulse_mux0000,
      O => U21_pulse_4825,
      SET => GND,
      RST => GND
    );
  U21_pulse_mux00001_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y52",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => U21_state(0),
      O => U21_pulse_mux0000
    );
  U16_count_per_9 : X_FF
    generic map(
      LOC => "SLICE_X33Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_9_CLK,
      I => U16_Mcount_count_per_eqn_9,
      O => U16_count_per(9),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_91 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y76",
      INIT => X"00000000CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U16_Result_9_0,
      ADR5 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_9
    );
  U16_clk_deb : X_FF
    generic map(
      LOC => "SLICE_X33Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_clk_deb_CLK,
      I => U16_count_per_cmp_eq0000,
      O => U16_clk_deb_4926,
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_count_per_cmp_eq000090 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y76",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => U16_count_per(0),
      ADR3 => U16_count_per(1),
      ADR2 => U16_count_per(14),
      ADR5 => U16_count_per(2),
      ADR1 => U16_count_per(3),
      ADR0 => N68,
      O => U16_count_per_cmp_eq0000
    );
  U17_pulse : X_FF
    generic map(
      LOC => "SLICE_X33Y58",
      INIT => '0'
    )
    port map (
      CE => U18_pb_deb_4942,
      CLK => NlwBufferSignal_U17_pulse_CLK,
      I => U17_pulse_mux0000,
      O => U17_pulse_4944,
      SET => GND,
      RST => GND
    );
  U17_pulse_mux00001_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y58",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => U17_state(0),
      O => U17_pulse_mux0000
    );
  U21_btn_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X33Y55",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => U22_pb_deb_4935,
      O => U21_btn_inv
    );
  U17_state_0 : X_SFF
    generic map(
      LOC => "SLICE_X31Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U17_state_0_CLK,
      I => '1',
      O => U17_state(0),
      SSET => GND,
      SRST => U17_btn_inv,
      SET => GND,
      RST => GND
    );
  U36_cs_not00031 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => X"0F000F000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => U1_clk_1hz_4924,
      ADR2 => U37_set_timer_4810,
      O => U36_cs_not0003
    );
  U36_Mcount_cs_lut_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => U36_cm(4),
      ADR3 => U36_cm(5),
      ADR4 => U36_cm(3),
      ADR5 => U36_cm(2),
      ADR2 => U36_cm(1),
      ADR0 => U36_cm(0),
      O => N38
    );
  U36_cs_5 : X_FF
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => '0'
    )
    port map (
      CE => U36_cs_not0003,
      CLK => NlwBufferSignal_U36_cs_5_CLK,
      I => U36_Mcount_cs5,
      O => U36_cs(5),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_Mcount_cs_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => X"FF05FF0405050404"
    )
    port map (
      ADR0 => U36_cs(0),
      ADR1 => U36_N3,
      ADR2 => U36_N15,
      ADR3 => U36_cs(5),
      ADR4 => U36_cm(0),
      ADR5 => U36_N14,
      O => U36_Mcount_cs5
    );
  U36_Mcount_cs_xor_3_131 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y33",
      INIT => X"FFFFFFFFFFFEFFFE"
    )
    port map (
      ADR4 => '1',
      ADR2 => U36_cs(3),
      ADR5 => U36_cs(4),
      ADR3 => U36_cs(0),
      ADR0 => U36_cs(2),
      ADR1 => U36_cs(1),
      O => U36_N14
    );
  U15_btn_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y62",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => U16_pb_deb_4937,
      O => U15_btn_inv
    );
  U22_count_per_19 : X_FF
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_19_CLK,
      I => U22_Mcount_count_per_eqn_19,
      O => U22_count_per(19),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_191 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U22_Result_19_0,
      ADR4 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_19
    );
  U22_count_per_18 : X_FF
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_18_CLK,
      I => U22_Mcount_count_per_eqn_18,
      O => U22_count_per(18),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_181 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U22_Result_18_0,
      ADR2 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_18
    );
  U22_count_per_17 : X_FF
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_17_CLK,
      I => U22_Mcount_count_per_eqn_17,
      O => U22_count_per(17),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_171 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y70",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => U22_Result_17_0,
      ADR2 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_17
    );
  U15_state_0 : X_SFF
    generic map(
      LOC => "SLICE_X31Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U15_state_0_CLK,
      I => '1',
      O => U15_state(0),
      SSET => GND,
      SRST => U15_btn_inv,
      SET => GND,
      RST => GND
    );
  U22_count_per_7 : X_FF
    generic map(
      LOC => "SLICE_X31Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_7_CLK,
      I => U22_Mcount_count_per_eqn_7,
      O => U22_count_per(7),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_71 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y67",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => U22_Result_7_0,
      ADR2 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_7
    );
  U22_count_per_6 : X_FF
    generic map(
      LOC => "SLICE_X31Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_6_CLK,
      I => U22_Mcount_count_per_eqn_6,
      O => U22_count_per(6),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_61 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y67",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U22_Result_6_0,
      ADR2 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_6
    );
  U22_count_per_5 : X_FF
    generic map(
      LOC => "SLICE_X31Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_5_CLK,
      I => U22_Mcount_count_per_eqn_5,
      O => U22_count_per(5),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_51 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y67",
      INIT => X"0000CCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U22_Result_5_0,
      ADR4 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_5
    );
  U22_count_per_4 : X_FF
    generic map(
      LOC => "SLICE_X31Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_4_CLK,
      I => U22_Mcount_count_per_eqn_4,
      O => U22_count_per(4),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_41 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y67",
      INIT => X"0000CCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U22_Result_4_0,
      ADR4 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_4
    );
  U17_btn_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y59",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => U18_pb_deb_4942,
      O => U17_btn_inv
    );
  U18_pb_sampled : X_FF
    generic map(
      LOC => "SLICE_X29Y79",
      INIT => '0'
    )
    port map (
      CE => U18_clk_deb_4931,
      CLK => NlwBufferSignal_U18_pb_sampled_CLK,
      I => NlwBufferSignal_U18_pb_sampled_IN,
      O => U18_pb_sampled_5060,
      SET => GND,
      RST => GND
    );
  U18_pb_deb : X_FF
    generic map(
      LOC => "SLICE_X29Y77",
      INIT => '0'
    )
    port map (
      CE => U18_pb_deb_not0001,
      CLK => NlwBufferSignal_U18_pb_deb_CLK,
      I => NlwBufferSignal_U18_pb_deb_IN,
      O => U18_pb_deb_4942,
      SET => GND,
      RST => GND
    );
  U16_pb_deb_not00011 : X_LUT6
    generic map(
      LOC => "SLICE_X29Y76",
      INIT => X"C0C0C0C030303030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => pb_hour_IBUF_4819,
      ADR1 => U16_pb_sampled_5054,
      ADR2 => U16_clk_deb_4926,
      O => U16_pb_deb_not0001
    );
  U22_count_per_9 : X_FF
    generic map(
      LOC => "SLICE_X31Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_9_CLK,
      I => U22_Mcount_count_per_eqn_9,
      O => U22_count_per(9),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_91 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y68",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => U22_Result_9_0,
      ADR4 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_9
    );
  U22_clk_deb : X_FF
    generic map(
      LOC => "SLICE_X31Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_clk_deb_CLK,
      I => U22_count_per_cmp_eq0000,
      O => U22_clk_deb_4923,
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_count_per_cmp_eq000090 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y68",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => U22_count_per(0),
      ADR2 => U22_count_per(1),
      ADR0 => U22_count_per(14),
      ADR5 => U22_count_per(2),
      ADR3 => U22_count_per(3),
      ADR1 => N62,
      O => U22_count_per_cmp_eq0000
    );
  U22_count_per_3 : X_FF
    generic map(
      LOC => "SLICE_X31Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_3_CLK,
      I => U22_Mcount_count_per_eqn_3,
      O => U22_count_per(3),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_31 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y66",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => U22_Result_3_0,
      ADR2 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_3
    );
  U22_count_per_2 : X_FF
    generic map(
      LOC => "SLICE_X31Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_2_CLK,
      I => U22_Mcount_count_per_eqn_2,
      O => U22_count_per(2),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_21 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y66",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U22_Result_2_0,
      ADR2 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_2
    );
  U22_count_per_1 : X_FF
    generic map(
      LOC => "SLICE_X31Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_1_CLK,
      I => U22_Mcount_count_per_eqn_1,
      O => U22_count_per(1),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_11 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y66",
      INIT => X"0000CCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U22_Result_1_0,
      ADR4 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_1
    );
  U22_count_per_0 : X_FF
    generic map(
      LOC => "SLICE_X31Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_0_CLK,
      I => U22_Mcount_count_per_eqn_0,
      O => U22_count_per(0),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_01 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y66",
      INIT => X"0000CCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U22_Result_0_0,
      ADR4 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_0
    );
  U22_count_per_16 : X_FF
    generic map(
      LOC => "SLICE_X31Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_16_CLK,
      I => U22_Mcount_count_per_eqn_16,
      O => U22_count_per(16),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_161 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y69",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => U22_Result_16_0,
      ADR4 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_16
    );
  U22_count_per_15 : X_FF
    generic map(
      LOC => "SLICE_X31Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_15_CLK,
      I => U22_Mcount_count_per_eqn_15,
      O => U22_count_per(15),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y69",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U22_Result_15_0,
      ADR4 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_15
    );
  U22_count_per_14 : X_FF
    generic map(
      LOC => "SLICE_X31Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_14_CLK,
      I => U22_Mcount_count_per_eqn_14,
      O => U22_count_per(14),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y69",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U22_Result_14_0,
      ADR2 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_14
    );
  U22_count_per_13 : X_FF
    generic map(
      LOC => "SLICE_X31Y69",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_13_CLK,
      I => U22_Mcount_count_per_eqn_13,
      O => U22_count_per(13),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_131 : X_LUT6
    generic map(
      LOC => "SLICE_X31Y69",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => U22_Result_13_0,
      ADR2 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_13
    );
  U36_Mcount_cs_xor_4_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y32",
      INIT => X"FFFEFFFEFFFEFFFE"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR1 => U36_cs(3),
      ADR3 => U36_cs(2),
      ADR2 => U36_cs(1),
      ADR0 => U36_cs(0),
      O => N4
    );
  U36_Mcount_cs_xor_1_121 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y32",
      INIT => X"FFFFFFFEFFFFFFFE"
    )
    port map (
      ADR5 => '1',
      ADR2 => U36_cs(1),
      ADR4 => U36_cs(2),
      ADR0 => U36_cs(3),
      ADR3 => U36_cs(4),
      ADR1 => U36_cs(5),
      O => U36_N15
    );
  U36_cm_mux0002_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y32",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR5 => U36_cm(1),
      ADR3 => U36_cm(2),
      ADR4 => U36_cm(3),
      ADR1 => U36_cm(4),
      ADR0 => U36_cm(5),
      ADR2 => U36_cm(6),
      O => U36_N3
    );
  U36_Mcount_cs_xor_3_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y32",
      INIT => X"0033003300330000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR5 => U36_cm(0),
      ADR1 => U36_N14,
      ADR3 => U36_cs(5),
      ADR4 => U36_N3,
      O => N35
    );
  U15_pulse : X_FF
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => '0'
    )
    port map (
      CE => U16_pb_deb_4937,
      CLK => NlwBufferSignal_U15_pulse_CLK,
      I => U15_pulse_mux0000,
      O => U15_pulse_4939,
      SET => GND,
      RST => GND
    );
  U15_pulse_mux00001_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y61",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => U15_state(0),
      O => U15_pulse_mux0000
    );
  U36_cm_not00021 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y34",
      INIT => X"C0C0C0CAC0C0C0CA"
    )
    port map (
      ADR5 => '1',
      ADR2 => U37_set_timer_4810,
      ADR0 => U1_clk_1hz_4924,
      ADR4 => U36_cs(5),
      ADR3 => U36_N14,
      ADR1 => U17_pulse_4944,
      O => U36_cm_not0002
    );
  U22_count_per_12 : X_FF
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_12_CLK,
      I => U22_Mcount_count_per_eqn_12,
      O => U22_count_per(12),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_121 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U22_Result_12_0,
      ADR5 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_12
    );
  U22_count_per_11 : X_FF
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_11_CLK,
      I => U22_Mcount_count_per_eqn_11_1917,
      O => U22_count_per(11),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_111 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"00000000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U22_Result_11_0,
      ADR5 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_11_1917
    );
  U22_count_per_10 : X_FF
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_10_CLK,
      I => U22_Mcount_count_per_eqn_10,
      O => U22_count_per(10),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_101 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"5500550055005500"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U22_Result_10_0,
      ADR0 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_10
    );
  U22_count_per_8 : X_FF
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U22_count_per_8_CLK,
      I => U22_Mcount_count_per_eqn_8,
      O => U22_count_per(8),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U22_Mcount_count_per_eqn_81 : X_LUT6
    generic map(
      LOC => "SLICE_X32Y68",
      INIT => X"5050505050505050"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U22_Result_8_0,
      ADR0 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_8
    );
  U21_state_0 : X_SFF
    generic map(
      LOC => "SLICE_X32Y52",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U21_state_0_CLK,
      I => '1',
      O => U21_state(0),
      SSET => GND,
      SRST => U21_btn_inv,
      SET => GND,
      RST => GND
    );
  U16_count_per_19 : X_FF
    generic map(
      LOC => "SLICE_X35Y79",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_19_CLK,
      I => U16_Mcount_count_per_eqn_19,
      O => U16_count_per(19),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_191 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y79",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U16_Result_19_0,
      ADR4 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_19
    );
  U16_count_per_18 : X_FF
    generic map(
      LOC => "SLICE_X35Y79",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_18_CLK,
      I => U16_Mcount_count_per_eqn_18,
      O => U16_count_per(18),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_181 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y79",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U16_Result_18_0,
      ADR2 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_18
    );
  U16_count_per_17 : X_FF
    generic map(
      LOC => "SLICE_X35Y79",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_17_CLK,
      I => U16_Mcount_count_per_eqn_17,
      O => U16_count_per(17),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_171 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y79",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => U16_Result_17_0,
      ADR2 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_17
    );
  U16_count_per_16 : X_FF
    generic map(
      LOC => "SLICE_X35Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_16_CLK,
      I => U16_Mcount_count_per_eqn_16,
      O => U16_count_per(16),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_161 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y78",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => U16_Result_16_0,
      ADR4 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_16
    );
  U16_count_per_15 : X_FF
    generic map(
      LOC => "SLICE_X35Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_15_CLK,
      I => U16_Mcount_count_per_eqn_15,
      O => U16_count_per(15),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y78",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U16_Result_15_0,
      ADR4 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_15
    );
  U16_count_per_14 : X_FF
    generic map(
      LOC => "SLICE_X35Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_14_CLK,
      I => U16_Mcount_count_per_eqn_14,
      O => U16_count_per(14),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y78",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U16_Result_14_0,
      ADR2 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_14
    );
  U16_count_per_13 : X_FF
    generic map(
      LOC => "SLICE_X35Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_13_CLK,
      I => U16_Mcount_count_per_eqn_13,
      O => U16_count_per(13),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_131 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y78",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => U16_Result_13_0,
      ADR2 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_13
    );
  U18_count_per_16 : X_FF
    generic map(
      LOC => "SLICE_X35Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_16_CLK,
      I => U18_Mcount_count_per_eqn_16,
      O => U18_count_per(16),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_161 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y85",
      INIT => X"5555555500000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => U18_Result_16_0,
      ADR0 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_16
    );
  U18_count_per_15 : X_FF
    generic map(
      LOC => "SLICE_X35Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_15_CLK,
      I => U18_Mcount_count_per_eqn_15,
      O => U18_count_per(15),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y85",
      INIT => X"5050505050505050"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U18_Result_15_0,
      ADR0 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_15
    );
  U18_count_per_14 : X_FF
    generic map(
      LOC => "SLICE_X35Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_14_CLK,
      I => U18_Mcount_count_per_eqn_14,
      O => U18_count_per(14),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y85",
      INIT => X"00000000AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U18_Result_14_0,
      ADR5 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_14
    );
  U18_count_per_13 : X_FF
    generic map(
      LOC => "SLICE_X35Y85",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_13_CLK,
      I => U18_Mcount_count_per_eqn_13,
      O => U18_count_per(13),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_131 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y85",
      INIT => X"00000000AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U18_Result_13_0,
      ADR5 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_13
    );
  U16_count_per_12 : X_FF
    generic map(
      LOC => "SLICE_X35Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_12_CLK,
      I => U16_Mcount_count_per_eqn_12,
      O => U16_count_per(12),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_121 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y77",
      INIT => X"3333333300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => U16_Result_12_0,
      ADR1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_12
    );
  U16_count_per_11 : X_FF
    generic map(
      LOC => "SLICE_X35Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_11_CLK,
      I => U16_Mcount_count_per_eqn_11_2402,
      O => U16_count_per(11),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_111 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y77",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U16_Result_11_0,
      ADR1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_11_2402
    );
  U16_count_per_10 : X_FF
    generic map(
      LOC => "SLICE_X35Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_10_CLK,
      I => U16_Mcount_count_per_eqn_10,
      O => U16_count_per(10),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_101 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y77",
      INIT => X"00FF00FF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => U16_Result_10_0,
      ADR3 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_10
    );
  U16_count_per_8 : X_FF
    generic map(
      LOC => "SLICE_X35Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_8_CLK,
      I => U16_Mcount_count_per_eqn_8,
      O => U16_count_per(8),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_81 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y77",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U16_Result_8_0,
      ADR3 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_8
    );
  U18_count_per_9 : X_FF
    generic map(
      LOC => "SLICE_X35Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_9_CLK,
      I => U18_Mcount_count_per_eqn_9,
      O => U18_count_per(9),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_91 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y82",
      INIT => X"00000000CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U18_Result_9_0,
      ADR5 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_9
    );
  U18_clk_deb : X_FF
    generic map(
      LOC => "SLICE_X35Y82",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_clk_deb_CLK,
      I => U18_count_per_cmp_eq0000,
      O => U18_clk_deb_4931,
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_count_per_cmp_eq000090 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y82",
      INIT => X"8000000000000000"
    )
    port map (
      ADR3 => U18_count_per(0),
      ADR2 => U18_count_per(1),
      ADR5 => U18_count_per(14),
      ADR4 => U18_count_per(2),
      ADR0 => U18_count_per(3),
      ADR1 => N66,
      O => U18_count_per_cmp_eq0000
    );
  U18_count_per_7 : X_FF
    generic map(
      LOC => "SLICE_X35Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_7_CLK,
      I => U18_Mcount_count_per_eqn_7,
      O => U18_count_per(7),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_71 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y83",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U18_Result_7_0,
      ADR1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_7
    );
  U18_count_per_6 : X_FF
    generic map(
      LOC => "SLICE_X35Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_6_CLK,
      I => U18_Mcount_count_per_eqn_6,
      O => U18_count_per(6),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_61 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y83",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U18_Result_6_0,
      ADR1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_6
    );
  U18_count_per_5 : X_FF
    generic map(
      LOC => "SLICE_X35Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_5_CLK,
      I => U18_Mcount_count_per_eqn_5,
      O => U18_count_per(5),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_51 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y83",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U18_Result_5_0,
      ADR3 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_5
    );
  U18_count_per_4 : X_FF
    generic map(
      LOC => "SLICE_X35Y83",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_4_CLK,
      I => U18_Mcount_count_per_eqn_4,
      O => U18_count_per(4),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_41 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y83",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U18_Result_4_0,
      ADR3 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_4
    );
  U18_count_per_12 : X_FF
    generic map(
      LOC => "SLICE_X35Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_12_CLK,
      I => U18_Mcount_count_per_eqn_12,
      O => U18_count_per(12),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_121 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y84",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U18_Result_12_0,
      ADR5 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_12
    );
  U18_count_per_11 : X_FF
    generic map(
      LOC => "SLICE_X35Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_11_CLK,
      I => U18_Mcount_count_per_eqn_11_2484,
      O => U18_count_per(11),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_111 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y84",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U18_Result_11_0,
      ADR5 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_11_2484
    );
  U18_count_per_10 : X_FF
    generic map(
      LOC => "SLICE_X35Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_10_CLK,
      I => U18_Mcount_count_per_eqn_10,
      O => U18_count_per(10),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_101 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y84",
      INIT => X"5555555500000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => U18_Result_10_0,
      ADR0 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_10
    );
  U18_count_per_8 : X_FF
    generic map(
      LOC => "SLICE_X35Y84",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_8_CLK,
      I => U18_Mcount_count_per_eqn_8,
      O => U18_count_per(8),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_81 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y84",
      INIT => X"4444444444444444"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U18_Result_8_0,
      ADR0 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_8
    );
  U16_count_per_7 : X_FF
    generic map(
      LOC => "SLICE_X35Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_7_CLK,
      I => U16_Mcount_count_per_eqn_7,
      O => U16_count_per(7),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_71 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y76",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U16_Result_7_0,
      ADR1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_7
    );
  U16_count_per_6 : X_FF
    generic map(
      LOC => "SLICE_X35Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_6_CLK,
      I => U16_Mcount_count_per_eqn_6,
      O => U16_count_per(6),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_61 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y76",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U16_Result_6_0,
      ADR1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_6
    );
  U16_count_per_5 : X_FF
    generic map(
      LOC => "SLICE_X35Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_5_CLK,
      I => U16_Mcount_count_per_eqn_5,
      O => U16_count_per(5),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_51 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y76",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U16_Result_5_0,
      ADR3 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_5
    );
  U16_count_per_4 : X_FF
    generic map(
      LOC => "SLICE_X35Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U16_count_per_4_CLK,
      I => U16_Mcount_count_per_eqn_4,
      O => U16_count_per(4),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U16_Mcount_count_per_eqn_41 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y76",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U16_Result_4_0,
      ADR3 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_4
    );
  U2_cs_1 : X_FF
    generic map(
      LOC => "SLICE_X35Y39",
      INIT => '0'
    )
    port map (
      CE => U2_cs_not0001,
      CLK => NlwBufferSignal_U2_cs_1_CLK,
      I => U2_Mcount_cs1,
      O => U2_cs(1),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_Mcount_cs_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y39",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_cs(1),
      ADR5 => '1',
      ADR4 => U2_cs(0),
      O => U2_Mcount_cs1
    );
  U2_cs_0 : X_FF
    generic map(
      LOC => "SLICE_X35Y39",
      INIT => '0'
    )
    port map (
      CE => U2_cs_not0001,
      CLK => NlwBufferSignal_U2_cs_0_CLK,
      I => U2_Mcount_cs,
      O => U2_cs(0),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_Mcount_cs_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y39",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_cs(0),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_Mcount_cs
    );
  U2_cs_2 : X_FF
    generic map(
      LOC => "SLICE_X35Y39",
      INIT => '0'
    )
    port map (
      CE => U2_cs_not0001,
      CLK => NlwBufferSignal_U2_cs_2_CLK,
      I => U2_Mcount_cs2,
      O => U2_cs(2),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_Mcount_cs_xor_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y39",
      INIT => X"FF00FF0000BF00FF"
    )
    port map (
      ADR5 => U2_N20,
      ADR0 => U2_cs(6),
      ADR2 => U2_cs(3),
      ADR3 => U2_cs(2),
      ADR4 => U2_cs(4),
      ADR1 => U2_cs(5),
      O => U2_Mcount_cs2
    );
  U2_Mcount_cs_xor_2_121 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y39",
      INIT => X"3F3F3F3F3F3F3F3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U2_cs(0),
      ADR2 => U2_cs(1),
      O => U2_N20
    );
  U2_cm_not0002_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y41",
      INIT => X"2222000000000000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => U1_clk_1hz_4924,
      ADR5 => U2_cs(3),
      ADR0 => U2_cs(5),
      ADR1 => U2_cs(2),
      O => N16
    );
  U2_cs_not00011 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y38",
      INIT => X"0000CCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U1_clk_1hz_4924,
      ADR4 => U37_set_time_4802,
      O => U2_cs_not0001
    );
  U2_ch_5 : X_FF
    generic map(
      LOC => "SLICE_X34Y42",
      INIT => '0'
    )
    port map (
      CE => U2_ch_not0001,
      CLK => NlwBufferSignal_U2_ch_5_CLK,
      I => U2_ch_mux0001(5),
      O => U2_ch(5),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_ch_mux0001_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y42",
      INIT => X"7F80FF00FF00FF00"
    )
    port map (
      ADR1 => U2_ch(0),
      ADR0 => U2_ch(1),
      ADR2 => U2_ch(2),
      ADR3 => U2_ch(5),
      ADR4 => U2_ch(3),
      ADR5 => U2_ch(4),
      O => U2_ch_mux0001(5)
    );
  U2_ch_4 : X_FF
    generic map(
      LOC => "SLICE_X34Y42",
      INIT => '0'
    )
    port map (
      CE => U2_ch_not0001,
      CLK => NlwBufferSignal_U2_ch_4_CLK,
      I => U2_ch_mux0001(4),
      O => U2_ch(4),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_ch_mux0001_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y42",
      INIT => X"7588FF00FF00FF00"
    )
    port map (
      ADR5 => U2_ch(0),
      ADR0 => U2_ch(1),
      ADR4 => U2_ch(2),
      ADR3 => U2_ch(4),
      ADR1 => U2_ch(3),
      ADR2 => U2_N17,
      O => U2_ch_mux0001(4)
    );
  U2_ch_mux0001_4_131 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y42",
      INIT => X"FFFFCCCCFFFFECCC"
    )
    port map (
      ADR1 => U2_ch(5),
      ADR5 => U2_cm(2),
      ADR3 => U37_set_time_4802,
      ADR0 => U2_N8,
      ADR2 => U17_pulse_4944,
      ADR4 => U2_ch(6),
      O => U2_N17
    );
  U2_ch_3 : X_FF
    generic map(
      LOC => "SLICE_X34Y42",
      INIT => '0'
    )
    port map (
      CE => U2_ch_not0001,
      CLK => NlwBufferSignal_U2_ch_3_CLK,
      I => U2_ch_mux0001(3),
      O => U2_ch(3),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_ch_mux0001_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y42",
      INIT => X"5FA05F20FF00FF00"
    )
    port map (
      ADR0 => U2_ch(0),
      ADR5 => U2_ch(1),
      ADR2 => U2_ch(2),
      ADR3 => U2_ch(3),
      ADR1 => U2_ch(4),
      ADR4 => U2_N17,
      O => U2_ch_mux0001(3)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1313 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y40",
      INIT => X"3373B73B3B333373"
    )
    port map (
      ADR3 => U2_cs(2),
      ADR4 => U2_cs(3),
      ADR5 => U2_cs(5),
      ADR2 => U2_cs(4),
      ADR0 => U2_cs(6),
      ADR1 => U2_cs(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1313_5005
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_424 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y33",
      INIT => X"333BB73373333B73"
    )
    port map (
      ADR5 => U36_cm(2),
      ADR4 => U36_cm(3),
      ADR3 => U36_cm(5),
      ADR2 => U36_cm(4),
      ADR0 => U36_cm(6),
      ADR1 => U36_cm(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_424_5024
    );
  U2_cm_1 : X_FF
    generic map(
      LOC => "SLICE_X34Y43",
      INIT => '0'
    )
    port map (
      CE => U2_cm_not0002_4969,
      CLK => NlwBufferSignal_U2_cm_1_CLK,
      I => U2_cm_mux0000(5),
      O => U2_cm(1),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_cm_mux0000_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y43",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_cm(1),
      ADR4 => '1',
      ADR5 => U2_cm(0),
      O => U2_cm_mux0000(5)
    );
  U2_cm_0 : X_FF
    generic map(
      LOC => "SLICE_X34Y43",
      INIT => '0'
    )
    port map (
      CE => U2_cm_not0002_4969,
      CLK => NlwBufferSignal_U2_cm_0_CLK,
      I => U2_cm_mux0000(6),
      O => U2_cm(0),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_cm_mux0000_6_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y43",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_cm(0),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_cm_mux0000(6)
    );
  U2_cm_2 : X_FF
    generic map(
      LOC => "SLICE_X34Y43",
      INIT => '0'
    )
    port map (
      CE => U2_cm_not0002_4969,
      CLK => NlwBufferSignal_U2_cm_2_CLK,
      I => U2_cm_mux0000(4),
      O => U2_cm(2),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_cm_mux0000_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y43",
      INIT => X"FF00FF0000F700FF"
    )
    port map (
      ADR5 => U2_N19,
      ADR2 => U2_cm(6),
      ADR1 => U2_cm(3),
      ADR3 => U2_cm(2),
      ADR0 => U2_cm(4),
      ADR4 => U2_cm(5),
      O => U2_cm_mux0000(4)
    );
  U2_cm_mux0000_4_21 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y43",
      INIT => X"3F3F3F3F3F3F3F3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U2_cm(0),
      ADR2 => U2_cm(1),
      O => U2_N19
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_150 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y34",
      INIT => X"2410FFFF2410FFFF"
    )
    port map (
      ADR5 => '1',
      ADR1 => U36_cs(2),
      ADR0 => U36_cs(3),
      ADR3 => U36_cs(5),
      ADR2 => U36_cs(4),
      ADR4 => U36_cs(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_150_5087
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_636 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y34",
      INIT => X"AE000C00AA000000"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_N34,
      ADR5 => U30_my_hd44780_simple_hd44780_db_mux0000_3_424_5024,
      ADR1 => U30_my_hd44780_simple_hd44780_db_mux0000_3_586_5025,
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR0 => U30_my_hd44780_simple_hd44780_db_mux0000_3_251_5026,
      ADR4 => U30_my_hd44780_simple_hd44780_db_mux0000_3_150_5087,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_636_5001
    );
  U36_cm_mux0002_5_5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y33",
      INIT => X"FFFFAAFFFFFFAAFF"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => U36_cm(2),
      ADR3 => U36_cm(1),
      ADR4 => U36_cm(0),
      O => N33
    );
  U36_cm_mux0002_5_5 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y33",
      INIT => X"FF00BF00FF00FF00"
    )
    port map (
      ADR3 => U37_set_timer_4810,
      ADR0 => U36_cm(5),
      ADR5 => U36_cm(6),
      ADR1 => U36_cm(4),
      ADR2 => U36_cm(3),
      ADR4 => N33,
      O => U36_N29
    );
  U2_cs_6 : X_FF
    generic map(
      LOC => "SLICE_X34Y39",
      INIT => '0'
    )
    port map (
      CE => U2_cs_not0001,
      CLK => NlwBufferSignal_U2_cs_6_CLK,
      I => U2_Mcount_cs6,
      O => U2_cs(6),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_Mcount_cs_xor_6_11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y39",
      INIT => X"FF007F80FF00FF00"
    )
    port map (
      ADR4 => U2_N20,
      ADR5 => U2_cs(5),
      ADR2 => U2_cs(4),
      ADR3 => U2_cs(6),
      ADR0 => U2_cs(3),
      ADR1 => U2_cs(2),
      O => U2_Mcount_cs6
    );
  U2_cs_5 : X_FF
    generic map(
      LOC => "SLICE_X34Y39",
      INIT => '0'
    )
    port map (
      CE => U2_cs_not0001,
      CLK => NlwBufferSignal_U2_cs_5_CLK,
      I => U2_Mcount_cs5,
      O => U2_cs(5),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_Mcount_cs_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y39",
      INIT => X"BF40FF00AF40FF00"
    )
    port map (
      ADR0 => U2_N20,
      ADR4 => U2_cs(3),
      ADR2 => U2_cs(4),
      ADR3 => U2_cs(5),
      ADR1 => U2_cs(2),
      ADR5 => U2_cs(6),
      O => U2_Mcount_cs5
    );
  U2_cs_4 : X_FF
    generic map(
      LOC => "SLICE_X34Y39",
      INIT => '0'
    )
    port map (
      CE => U2_cs_not0001,
      CLK => NlwBufferSignal_U2_cs_4_CLK,
      I => U2_Mcount_cs4,
      O => U2_cs(4),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_Mcount_cs_xor_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y39",
      INIT => X"F0FD0F00FFFF0000"
    )
    port map (
      ADR2 => U2_N20,
      ADR5 => U2_cs(3),
      ADR3 => U2_cs(2),
      ADR4 => U2_cs(4),
      ADR1 => U2_cs(6),
      ADR0 => U2_cs(5),
      O => U2_Mcount_cs4
    );
  U2_cs_3 : X_FF
    generic map(
      LOC => "SLICE_X34Y39",
      INIT => '0'
    )
    port map (
      CE => U2_cs_not0001,
      CLK => NlwBufferSignal_U2_cs_3_CLK,
      I => U2_Mcount_cs3,
      O => U2_cs(3),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_Mcount_cs_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y39",
      INIT => X"F0F0F0F00FB00FF0"
    )
    port map (
      ADR5 => U2_N20,
      ADR3 => U2_cs(2),
      ADR0 => U2_cs(6),
      ADR2 => U2_cs(3),
      ADR4 => U2_cs(4),
      ADR1 => U2_cs(5),
      O => U2_Mcount_cs3
    );
  U36_cm_6 : X_FF
    generic map(
      LOC => "SLICE_X35Y32",
      INIT => '0'
    )
    port map (
      CE => U36_cm_not0002,
      CLK => NlwBufferSignal_U36_cm_6_CLK,
      I => U36_cm_mux0002(0),
      O => U36_cm(6),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_cm_mux0002_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y32",
      INIT => X"A505A5045A505A40"
    )
    port map (
      ADR0 => U37_set_timer_4810,
      ADR2 => U36_N16,
      ADR1 => U36_cm(0),
      ADR5 => U36_cm(6),
      ADR4 => U36_N3,
      ADR3 => U36_N29,
      O => U36_cm_mux0002(0)
    );
  U36_cm_4 : X_FF
    generic map(
      LOC => "SLICE_X35Y32",
      INIT => '0'
    )
    port map (
      CE => U36_cm_not0002,
      CLK => NlwBufferSignal_U36_cm_4_CLK,
      I => U36_cm_mux0002(2),
      O => U36_cm(4),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_cm_mux0002_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y32",
      INIT => X"6941694169416900"
    )
    port map (
      ADR0 => U37_set_timer_4810,
      ADR1 => U36_N13,
      ADR5 => U36_cm(0),
      ADR2 => U36_cm(4),
      ADR3 => U36_N29,
      ADR4 => U36_N3,
      O => U36_cm_mux0002(2)
    );
  U36_cm_mux0002_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y32",
      INIT => X"CCCCCCCCFFFCFFFC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => U37_set_timer_4810,
      ADR3 => U36_cm(0),
      ADR2 => U36_N3,
      ADR1 => U36_N29,
      O => U36_N10
    );
  U36_cm_5 : X_FF
    generic map(
      LOC => "SLICE_X35Y32",
      INIT => '0'
    )
    port map (
      CE => U36_cm_not0002,
      CLK => NlwBufferSignal_U36_cm_5_CLK,
      I => U36_cm_mux0002(1),
      O => U36_cm(5),
      SET => GND,
      RST => U37_reset_timer_4929
    );
  U36_cm_mux0002_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y32",
      INIT => X"3FC00000FC030000"
    )
    port map (
      ADR0 => '1',
      ADR4 => U36_N10,
      ADR5 => U37_set_timer_4810,
      ADR3 => U36_cm(5),
      ADR2 => U36_cm(4),
      ADR1 => U36_N13,
      O => U36_cm_mux0002(1)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_251 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y34",
      INIT => X"FFFF108200000000"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR1 => U36_cs(2),
      ADR0 => U36_cs(3),
      ADR3 => U36_cs(5),
      ADR2 => U36_cs(4),
      ADR4 => U36_cs(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_251_5026
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_586 : X_LUT6
    generic map(
      LOC => "SLICE_X34Y34",
      INIT => X"FFFF0218FFFF8402"
    )
    port map (
      ADR1 => U36_cm(2),
      ADR0 => U36_cm(3),
      ADR2 => U36_cm(5),
      ADR5 => U36_cm(4),
      ADR3 => U36_cm(6),
      ADR4 => U36_cm(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_586_5025
    );
  U2_ch_not00011 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y42",
      INIT => X"A0ECA0ECA0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR0 => U15_pulse_4939,
      ADR2 => U37_set_time_4802,
      ADR3 => U2_cm(2),
      ADR1 => U2_N8,
      ADR5 => U2_cm_not0002_4969,
      O => U2_ch_not0001
    );
  U2_cm_not0002 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y42",
      INIT => X"F0F01100F0F00000"
    )
    port map (
      ADR2 => U17_pulse_4944,
      ADR4 => U37_set_time_4802,
      ADR3 => U2_cs(4),
      ADR0 => U2_cs(6),
      ADR1 => U2_N20,
      ADR5 => N16,
      O => U2_cm_not0002_4969
    );
  U2_ch_mux0001_4_121 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y43",
      INIT => X"0000800000000000"
    )
    port map (
      ADR4 => U2_cm(6),
      ADR0 => U2_cm(4),
      ADR2 => U2_cm(5),
      ADR1 => U2_cm(3),
      ADR3 => U2_cm(0),
      ADR5 => U2_cm(1),
      O => U2_N8
    );
  U37_reset_time : X_FF
    generic map(
      LOC => "SLICE_X35Y43",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U37_reset_time_CLK,
      I => '0',
      O => U37_reset_time_4872,
      RST => GND,
      SET => rst_IBUF_4607
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1458 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y40",
      INIT => X"1010848442421010"
    )
    port map (
      ADR3 => '1',
      ADR1 => U2_cs(2),
      ADR2 => U2_cs(3),
      ADR0 => U2_cs(5),
      ADR4 => U2_cs(4),
      ADR5 => U2_cs(6),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1458_5088
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1477 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y40",
      INIT => X"AAAAAAAAAAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U2_cs(1),
      ADR0 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR5 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1458_5088,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1477_5007
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1687 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y41",
      INIT => X"9949269292996426"
    )
    port map (
      ADR5 => U2_cm(5),
      ADR4 => U2_cm(6),
      ADR3 => U2_cm(3),
      ADR1 => U2_cm(4),
      ADR0 => U2_cm(2),
      ADR2 => U2_cm(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_1687_4850
    );
  U2_cm_mux0000_0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y41",
      INIT => X"C0C00000C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U2_cm(3),
      ADR4 => U2_cm(1),
      ADR1 => U2_cm(0),
      O => N10
    );
  U2_cm_6 : X_FF
    generic map(
      LOC => "SLICE_X35Y41",
      INIT => '0'
    )
    port map (
      CE => U2_cm_not0002_4969,
      CLK => NlwBufferSignal_U2_cm_6_CLK,
      I => U2_cm_mux0000(0),
      O => U2_cm(6),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_cm_mux0000_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X35Y41",
      INIT => X"DCFCFCFCF0F0F0F0"
    )
    port map (
      ADR1 => U2_N8,
      ADR5 => U2_cm(2),
      ADR3 => U2_cm(4),
      ADR2 => U2_cm(6),
      ADR0 => U2_cm(5),
      ADR4 => N10,
      O => U2_cm_mux0000(0)
    );
  U16_count_per_cmp_eq000068 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y77",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => U16_count_per(6),
      ADR3 => U16_count_per(7),
      ADR4 => U16_count_per(15),
      ADR5 => U16_count_per(13),
      ADR1 => U16_count_per(12),
      ADR0 => U16_count_per(11),
      O => U16_count_per_cmp_eq000068_5058
    );
  U34_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X37Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_3_CLK,
      I => U34_cnt_3_rstpot_2668,
      O => U34_cnt(3),
      SET => GND,
      RST => GND
    );
  U34_cnt_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y3",
      INIT => X"5050505050505050"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_3_0,
      ADR0 => U34_cnt_or0000,
      O => U34_cnt_3_rstpot_2668
    );
  U34_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X37Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_2_CLK,
      I => U34_cnt_2_rstpot_2664,
      O => U34_cnt(2),
      SET => GND,
      RST => GND
    );
  U34_cnt_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y3",
      INIT => X"5050505050505050"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_2_0,
      ADR0 => U34_cnt_or0000,
      O => U34_cnt_2_rstpot_2664
    );
  U34_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X37Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_1_CLK,
      I => U34_cnt_1_rstpot_2672,
      O => U34_cnt(1),
      SET => GND,
      RST => GND
    );
  U34_cnt_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y3",
      INIT => X"00000000CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_1_0,
      ADR5 => U34_cnt_or0000,
      O => U34_cnt_1_rstpot_2672
    );
  U34_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X37Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_0_CLK,
      I => U34_cnt_0_rstpot_2676,
      O => U34_cnt(0),
      SET => GND,
      RST => GND
    );
  U34_cnt_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y3",
      INIT => X"00000000CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_0_0,
      ADR5 => U34_cnt_or0000,
      O => U34_cnt_0_rstpot_2676
    );
  U37_reset_timer : X_FF
    generic map(
      LOC => "SLICE_X36Y32",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U37_reset_timer_CLK,
      I => U37_cur_state_cmp_eq0002,
      O => U37_reset_timer_4929,
      RST => GND,
      SET => rst_IBUF_4607
    );
  U37_cur_state_FSM_Out01 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y32",
      INIT => X"0000333300003333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U37_cur_state_FSM_FFd3_4827,
      ADR4 => U37_cur_state_FSM_FFd2_4828,
      O => U37_cur_state_cmp_eq0002
    );
  U27_bcd10_0_71 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y34",
      INIT => X"F5F50A0AAFAFF5F5"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => U36_cs(2),
      ADR4 => U36_cs(3),
      ADR0 => U36_cs(4),
      ADR5 => U36_cs(5),
      O => U27_bcd10_0_bdd1
    );
  U2_ch_2 : X_FF
    generic map(
      LOC => "SLICE_X36Y42",
      INIT => '0'
    )
    port map (
      CE => U2_ch_not0001,
      CLK => NlwBufferSignal_U2_ch_2_CLK,
      I => U2_ch_mux0001(2),
      O => U2_ch(2),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_ch_mux0001_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y42",
      INIT => X"3FC03FC03FC03FC0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => U2_ch(2),
      ADR1 => U2_ch(0),
      ADR2 => U2_ch(1),
      O => U2_ch_mux0001(2)
    );
  U2_ch_1 : X_FF
    generic map(
      LOC => "SLICE_X36Y42",
      INIT => '0'
    )
    port map (
      CE => U2_ch_not0001,
      CLK => NlwBufferSignal_U2_ch_1_CLK,
      I => U2_ch_mux0001(1),
      O => U2_ch(1),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_ch_mux0001_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y42",
      INIT => X"55AA55AA55AA55AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_ch(1),
      ADR4 => '1',
      ADR0 => U2_ch(0),
      O => U2_ch_mux0001(1)
    );
  U2_ch_0 : X_FF
    generic map(
      LOC => "SLICE_X36Y42",
      INIT => '0'
    )
    port map (
      CE => U2_ch_not0001,
      CLK => NlwBufferSignal_U2_ch_0_CLK,
      I => U2_ch_mux0001(0),
      O => U2_ch(0),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_ch_mux0001_0_1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y42",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U2_ch(0),
      ADR4 => '1',
      ADR5 => '1',
      O => U2_ch_mux0001(0)
    );
  U18_count_per_19 : X_FF
    generic map(
      LOC => "SLICE_X35Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_19_CLK,
      I => U18_Mcount_count_per_eqn_19,
      O => U18_count_per(19),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_191 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y86",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U18_Result_19_0,
      ADR4 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_19
    );
  U18_count_per_18 : X_FF
    generic map(
      LOC => "SLICE_X35Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_18_CLK,
      I => U18_Mcount_count_per_eqn_18,
      O => U18_count_per(18),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_181 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y86",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U18_Result_18_0,
      ADR2 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_18
    );
  U18_count_per_17 : X_FF
    generic map(
      LOC => "SLICE_X35Y86",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U18_count_per_17_CLK,
      I => U18_Mcount_count_per_eqn_17,
      O => U18_count_per(17),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U18_Mcount_count_per_eqn_171 : X_LUT6
    generic map(
      LOC => "SLICE_X35Y86",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => U18_Result_17_0,
      ADR2 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_17
    );
  U2_cm_5 : X_FF
    generic map(
      LOC => "SLICE_X36Y43",
      INIT => '0'
    )
    port map (
      CE => U2_cm_not0002_4969,
      CLK => NlwBufferSignal_U2_cm_5_CLK,
      I => U2_cm_mux0000(1),
      O => U2_cm(5),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_cm_mux0000_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y43",
      INIT => X"FF00FF007F803F80"
    )
    port map (
      ADR5 => U2_N19,
      ADR1 => U2_cm(3),
      ADR2 => U2_cm(4),
      ADR3 => U2_cm(5),
      ADR0 => U2_cm(2),
      ADR4 => U2_cm(6),
      O => U2_cm_mux0000(1)
    );
  U2_cm_4 : X_FF
    generic map(
      LOC => "SLICE_X36Y43",
      INIT => '0'
    )
    port map (
      CE => U2_cm_not0002_4969,
      CLK => NlwBufferSignal_U2_cm_4_CLK,
      I => U2_cm_mux0000(2),
      O => U2_cm(4),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_cm_mux0000_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y43",
      INIT => X"AA55FF00FB00FF00"
    )
    port map (
      ADR0 => U2_N19,
      ADR4 => U2_cm(3),
      ADR5 => U2_cm(2),
      ADR3 => U2_cm(4),
      ADR2 => U2_cm(6),
      ADR1 => U2_cm(5),
      O => U2_cm_mux0000(2)
    );
  U2_cm_3 : X_FF
    generic map(
      LOC => "SLICE_X36Y43",
      INIT => '0'
    )
    port map (
      CE => U2_cm_not0002_4969,
      CLK => NlwBufferSignal_U2_cm_3_CLK,
      I => U2_cm_mux0000(3),
      O => U2_cm(3),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_cm_mux0000_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y43",
      INIT => X"AA55AA55FB00FF00"
    )
    port map (
      ADR0 => U2_N19,
      ADR5 => U2_cm(2),
      ADR2 => U2_cm(6),
      ADR3 => U2_cm(3),
      ADR4 => U2_cm(4),
      ADR1 => U2_cm(5),
      O => U2_cm_mux0000(3)
    );
  U18_count_per_cmp_eq000068 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y84",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => U18_count_per(6),
      ADR0 => U18_count_per(7),
      ADR5 => U18_count_per(15),
      ADR3 => U18_count_per(13),
      ADR1 => U18_count_per(12),
      ADR4 => U18_count_per(11),
      O => U18_count_per_cmp_eq000068_4988
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1661 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y40",
      INIT => X"1F0F8F2F0F8F2F4F"
    )
    port map (
      ADR3 => U2_cm(2),
      ADR4 => U2_cm(3),
      ADR0 => U2_cm(5),
      ADR1 => U2_cm(4),
      ADR5 => U2_cm(6),
      ADR2 => U2_cm(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1661_5091
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1872 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y40",
      INIT => X"CC808080CC808080"
    )
    port map (
      ADR5 => '1',
      ADR1 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR0 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1313_5005,
      ADR2 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1477_5007,
      ADR3 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1661_5091,
      ADR4 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_0,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1872_5002
    );
  U37_set_timer : X_FF
    generic map(
      LOC => "SLICE_X36Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U37_set_timer_CLK,
      I => U37_cur_state_cmp_eq0004,
      O => U37_set_timer_4810,
      SET => GND,
      RST => GND
    );
  U37_cur_state_FSM_Out21 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y33",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => U37_cur_state_FSM_FFd3_4827,
      ADR4 => U37_cur_state_FSM_FFd2_4828,
      O => U37_cur_state_cmp_eq0004
    );
  U6_bcd10_0_bdd0_U6_bcd10_0_bdd0_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_2554,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_0
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1723 : X_MUX2
    generic map(
      LOC => "SLICE_X36Y38"
    )
    port map (
      IA => N106,
      IB => N107,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_2554,
      SEL => U30_my_hd44780_simple_hd44780_db_mux0000_2_1687_4850
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_F : X_LUT6
    generic map(
      LOC => "SLICE_X36Y38",
      INIT => X"000000000030E000"
    )
    port map (
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR3 => U2_cs(5),
      ADR4 => U2_cs(6),
      ADR1 => U2_cs(4),
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR0 => U2_cs(3),
      O => N106
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_G : X_LUT6
    generic map(
      LOC => "SLICE_X36Y38",
      INIT => X"000000000F3FEF0F"
    )
    port map (
      ADR3 => U2_cs(5),
      ADR4 => U2_cs(6),
      ADR1 => U2_cs(4),
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR0 => U2_cs(3),
      O => N107
    );
  U6_bcd10_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y38",
      INIT => X"C94CC94C32933293"
    )
    port map (
      ADR4 => '1',
      ADR2 => U2_cs(2),
      ADR5 => U2_cs(3),
      ADR1 => U2_cs(5),
      ADR0 => U2_cs(6),
      ADR3 => U2_cs(4),
      O => U6_bcd10_0_bdd0
    );
  U37_cur_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X36Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U37_cur_state_FSM_FFd3_CLK,
      I => U37_cur_state_FSM_FFd3_In,
      O => U37_cur_state_FSM_FFd3_4827,
      SET => GND,
      RST => rst_IBUF_4607
    );
  U37_cur_state_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y39",
      INIT => X"050000FF0500FFAA"
    )
    port map (
      ADR1 => '1',
      ADR4 => U37_cur_state_FSM_FFd2_4828,
      ADR5 => U19_pulse_4826,
      ADR3 => U37_cur_state_FSM_FFd3_4827,
      ADR0 => U21_pulse_4825,
      ADR2 => U23_pulse_4830,
      O => U37_cur_state_FSM_FFd3_In
    );
  U37_cur_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X36Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U37_cur_state_FSM_FFd1_CLK,
      I => U37_cur_state_FSM_FFd1_In,
      O => U37_cur_state_FSM_FFd1_4829,
      SET => GND,
      RST => rst_IBUF_4607
    );
  U37_cur_state_FSM_FFd1_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y39",
      INIT => X"CCCCFFCC0000FF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => U37_cur_state_FSM_FFd2_4828,
      ADR3 => U37_cur_state_FSM_FFd1_4829,
      ADR5 => U37_cur_state_FSM_N3,
      ADR4 => U23_pulse_4830,
      O => U37_cur_state_FSM_FFd1_In
    );
  U37_cur_state_FSM_FFd1_In1101 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y39",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => U36_cm(0),
      ADR4 => U36_cm(1),
      ADR3 => U36_cm(2),
      ADR0 => U36_cm(3),
      ADR5 => U36_cm(4),
      ADR2 => N76,
      O => U37_cur_state_FSM_N3
    );
  U37_cur_state_FSM_FFd1_In184 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y35",
      INIT => X"0000000000000011"
    )
    port map (
      ADR2 => '1',
      ADR1 => U36_cs(4),
      ADR0 => U36_cs(5),
      ADR5 => U36_cs(3),
      ADR3 => U36_cs(2),
      ADR4 => U36_cs(1),
      O => U37_cur_state_FSM_FFd1_In184_5090
    );
  U37_cur_state_FSM_FFd1_In1101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X36Y35",
      INIT => X"FFFFFFFEFFFFFFFF"
    )
    port map (
      ADR3 => U37_cur_state_FSM_FFd1_4829,
      ADR1 => U36_cm(6),
      ADR0 => U36_cs(0),
      ADR5 => U37_cur_state_FSM_FFd1_In184_5090,
      ADR4 => U36_cm(5),
      ADR2 => U37_cur_state_FSM_FFd3_4827,
      O => N76
    );
  U34_cnt_19 : X_FF
    generic map(
      LOC => "SLICE_X37Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_19_CLK,
      I => U34_cnt_19_rstpot_2736,
      O => U34_cnt(19),
      SET => GND,
      RST => GND
    );
  U34_cnt_19_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y7",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_19_0,
      ADR4 => U34_cnt_or0000,
      O => U34_cnt_19_rstpot_2736
    );
  U34_cnt_18 : X_FF
    generic map(
      LOC => "SLICE_X37Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_18_CLK,
      I => U34_cnt_18_rstpot_2732,
      O => U34_cnt(18),
      SET => GND,
      RST => GND
    );
  U34_cnt_18_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y7",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_18_0,
      ADR4 => U34_cnt_or0000,
      O => U34_cnt_18_rstpot_2732
    );
  U34_cnt_17 : X_FF
    generic map(
      LOC => "SLICE_X37Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_17_CLK,
      I => U34_cnt_17_rstpot_2740,
      O => U34_cnt(17),
      SET => GND,
      RST => GND
    );
  U34_cnt_17_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y7",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_17_0,
      ADR2 => U34_cnt_or0000,
      O => U34_cnt_17_rstpot_2740
    );
  U34_cnt_16 : X_FF
    generic map(
      LOC => "SLICE_X37Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_16_CLK,
      I => U34_cnt_16_rstpot_2744,
      O => U34_cnt(16),
      SET => GND,
      RST => GND
    );
  U34_cnt_16_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y7",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_16_0,
      ADR2 => U34_cnt_or0000,
      O => U34_cnt_16_rstpot_2744
    );
  U34_cnt_15 : X_FF
    generic map(
      LOC => "SLICE_X37Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_15_CLK,
      I => U34_cnt_15_rstpot_2719,
      O => U34_cnt(15),
      SET => GND,
      RST => GND
    );
  U34_cnt_15_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y6",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_15_0,
      ADR4 => U34_cnt_or0000,
      O => U34_cnt_15_rstpot_2719
    );
  U34_cnt_14 : X_FF
    generic map(
      LOC => "SLICE_X37Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_14_CLK,
      I => U34_cnt_14_rstpot_2715,
      O => U34_cnt(14),
      SET => GND,
      RST => GND
    );
  U34_cnt_14_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y6",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_14_0,
      ADR4 => U34_cnt_or0000,
      O => U34_cnt_14_rstpot_2715
    );
  U34_cnt_13 : X_FF
    generic map(
      LOC => "SLICE_X37Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_13_CLK,
      I => U34_cnt_13_rstpot_2723,
      O => U34_cnt(13),
      SET => GND,
      RST => GND
    );
  U34_cnt_13_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y6",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_13_0,
      ADR2 => U34_cnt_or0000,
      O => U34_cnt_13_rstpot_2723
    );
  U34_cnt_12 : X_FF
    generic map(
      LOC => "SLICE_X37Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_12_CLK,
      I => U34_cnt_12_rstpot_2727,
      O => U34_cnt(12),
      SET => GND,
      RST => GND
    );
  U34_cnt_12_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y6",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_12_0,
      ADR2 => U34_cnt_or0000,
      O => U34_cnt_12_rstpot_2727
    );
  U34_cnt_11 : X_FF
    generic map(
      LOC => "SLICE_X37Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_11_CLK,
      I => U34_cnt_11_rstpot_2702,
      O => U34_cnt(11),
      SET => GND,
      RST => GND
    );
  U34_cnt_11_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y5",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_11_0,
      ADR4 => U34_cnt_or0000,
      O => U34_cnt_11_rstpot_2702
    );
  U34_cnt_10 : X_FF
    generic map(
      LOC => "SLICE_X37Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_10_CLK,
      I => U34_cnt_10_rstpot_2698,
      O => U34_cnt(10),
      SET => GND,
      RST => GND
    );
  U34_cnt_10_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y5",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_10_0,
      ADR4 => U34_cnt_or0000,
      O => U34_cnt_10_rstpot_2698
    );
  U34_cnt_9 : X_FF
    generic map(
      LOC => "SLICE_X37Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_9_CLK,
      I => U34_cnt_9_rstpot_2706,
      O => U34_cnt(9),
      SET => GND,
      RST => GND
    );
  U34_cnt_9_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y5",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_9_0,
      ADR2 => U34_cnt_or0000,
      O => U34_cnt_9_rstpot_2706
    );
  U34_cnt_8 : X_FF
    generic map(
      LOC => "SLICE_X37Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_8_CLK,
      I => U34_cnt_8_rstpot_2710,
      O => U34_cnt(8),
      SET => GND,
      RST => GND
    );
  U34_cnt_8_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y5",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_8_0,
      ADR2 => U34_cnt_or0000,
      O => U34_cnt_8_rstpot_2710
    );
  U34_cnt_23 : X_FF
    generic map(
      LOC => "SLICE_X37Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_23_CLK,
      I => U34_cnt_23_rstpot_2753,
      O => U34_cnt(23),
      SET => GND,
      RST => GND
    );
  U34_cnt_23_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y8",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => U34_Result_23_0,
      ADR2 => U34_cnt_or0000,
      O => U34_cnt_23_rstpot_2753
    );
  U34_cnt_22 : X_FF
    generic map(
      LOC => "SLICE_X37Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_22_CLK,
      I => U34_cnt_22_rstpot_2749,
      O => U34_cnt(22),
      SET => GND,
      RST => GND
    );
  U34_cnt_22_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y8",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_22_0,
      ADR2 => U34_cnt_or0000,
      O => U34_cnt_22_rstpot_2749
    );
  U34_cnt_21 : X_FF
    generic map(
      LOC => "SLICE_X37Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_21_CLK,
      I => U34_cnt_21_rstpot_2757,
      O => U34_cnt(21),
      SET => GND,
      RST => GND
    );
  U34_cnt_21_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y8",
      INIT => X"0000CCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_21_0,
      ADR4 => U34_cnt_or0000,
      O => U34_cnt_21_rstpot_2757
    );
  U34_cnt_20 : X_FF
    generic map(
      LOC => "SLICE_X37Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_20_CLK,
      I => U34_cnt_20_rstpot_2761,
      O => U34_cnt(20),
      SET => GND,
      RST => GND
    );
  U34_cnt_20_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y8",
      INIT => X"0000CCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_20_0,
      ADR4 => U34_cnt_or0000,
      O => U34_cnt_20_rstpot_2761
    );
  U34_cnt_7 : X_FF
    generic map(
      LOC => "SLICE_X37Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_7_CLK,
      I => U34_cnt_7_rstpot_2685,
      O => U34_cnt(7),
      SET => GND,
      RST => GND
    );
  U34_cnt_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y4",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_7_0,
      ADR4 => U34_cnt_or0000,
      O => U34_cnt_7_rstpot_2685
    );
  U34_cnt_6 : X_FF
    generic map(
      LOC => "SLICE_X37Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_6_CLK,
      I => U34_cnt_6_rstpot_2681,
      O => U34_cnt(6),
      SET => GND,
      RST => GND
    );
  U34_cnt_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y4",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_6_0,
      ADR4 => U34_cnt_or0000,
      O => U34_cnt_6_rstpot_2681
    );
  U34_cnt_5 : X_FF
    generic map(
      LOC => "SLICE_X37Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_5_CLK,
      I => U34_cnt_5_rstpot_2689,
      O => U34_cnt(5),
      SET => GND,
      RST => GND
    );
  U34_cnt_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y4",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_5_0,
      ADR2 => U34_cnt_or0000,
      O => U34_cnt_5_rstpot_2689
    );
  U34_cnt_4 : X_FF
    generic map(
      LOC => "SLICE_X37Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_4_CLK,
      I => U34_cnt_4_rstpot_2693,
      O => U34_cnt(4),
      SET => GND,
      RST => GND
    );
  U34_cnt_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y4",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U34_Result_4_0,
      ADR2 => U34_cnt_or0000,
      O => U34_cnt_4_rstpot_2693
    );
  U34_cnt_27 : X_FF
    generic map(
      LOC => "SLICE_X37Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_27_CLK,
      I => U34_cnt_27_rstpot_2770,
      O => U34_cnt(27),
      SET => GND,
      RST => GND
    );
  U34_cnt_27_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y9",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_27_0,
      ADR1 => U34_cnt_or0000,
      O => U34_cnt_27_rstpot_2770
    );
  U34_cnt_26 : X_FF
    generic map(
      LOC => "SLICE_X37Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_26_CLK,
      I => U34_cnt_26_rstpot_2766,
      O => U34_cnt(26),
      SET => GND,
      RST => GND
    );
  U34_cnt_26_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y9",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_26_0,
      ADR1 => U34_cnt_or0000,
      O => U34_cnt_26_rstpot_2766
    );
  U34_cnt_25 : X_FF
    generic map(
      LOC => "SLICE_X37Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_25_CLK,
      I => U34_cnt_25_rstpot_2774,
      O => U34_cnt(25),
      SET => GND,
      RST => GND
    );
  U34_cnt_25_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y9",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U34_Result_25_0,
      ADR3 => U34_cnt_or0000,
      O => U34_cnt_25_rstpot_2774
    );
  U34_cnt_24 : X_FF
    generic map(
      LOC => "SLICE_X37Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_24_CLK,
      I => U34_cnt_24_rstpot_2778,
      O => U34_cnt(24),
      SET => GND,
      RST => GND
    );
  U34_cnt_24_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y9",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U34_Result_24_0,
      ADR3 => U34_cnt_or0000,
      O => U34_cnt_24_rstpot_2778
    );
  U34_cnt_30 : X_FF
    generic map(
      LOC => "SLICE_X37Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_30_CLK,
      I => U34_cnt_30_rstpot_2785,
      O => U34_cnt(30),
      SET => GND,
      RST => GND
    );
  U34_cnt_30_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y10",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_30_0,
      ADR1 => U34_cnt_or0000,
      O => U34_cnt_30_rstpot_2785
    );
  U34_cnt_29 : X_FF
    generic map(
      LOC => "SLICE_X37Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_29_CLK,
      I => U34_cnt_29_rstpot_2790,
      O => U34_cnt(29),
      SET => GND,
      RST => GND
    );
  U34_cnt_29_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y10",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U34_Result_29_0,
      ADR3 => U34_cnt_or0000,
      O => U34_cnt_29_rstpot_2790
    );
  U34_cnt_28 : X_FF
    generic map(
      LOC => "SLICE_X37Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_28_CLK,
      I => U34_cnt_28_rstpot_2788,
      O => U34_cnt(28),
      SET => GND,
      RST => GND
    );
  U34_cnt_28_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X37Y10",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U34_Result_28_0,
      ADR3 => U34_cnt_or0000,
      O => U34_cnt_28_rstpot_2788
    );
  U5_bcd10_0_71 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y41",
      INIT => X"FFBB44DD2244FFBB"
    )
    port map (
      ADR2 => '1',
      ADR3 => U2_cm(2),
      ADR5 => U2_cm(3),
      ADR1 => U2_cm(4),
      ADR0 => U2_cm(6),
      ADR4 => U2_cm(5),
      O => U5_bcd10_0_bdd1
    );
  U14_bcd10_0_bdd1_U14_bcd10_0_bdd1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_mux0000_0_91_2873,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_91_0
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_91 : X_MUX2
    generic map(
      LOC => "SLICE_X38Y34"
    )
    port map (
      IA => N108,
      IB => N109,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_91_2873,
      SEL => U30_my_hd44780_simple_cur_ddram_addr(0)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_91_F : X_LUT6
    generic map(
      LOC => "SLICE_X38Y34",
      INIT => X"0C00AA003F00AA00"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR1 => U36_cs(1),
      ADR5 => U27_bcd10_0_bdd1,
      ADR2 => U27_bcd10_0_bdd0,
      ADR0 => U36_cm(0),
      O => N108
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_91_G : X_LUT6
    generic map(
      LOC => "SLICE_X38Y34",
      INIT => X"CC0FCC5500000000"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR4 => U36_cm(1),
      ADR2 => U14_bcd10_0_bdd0,
      ADR1 => U36_cs(0),
      ADR0 => U14_bcd10_0_bdd1,
      O => N109
    );
  U14_bcd10_0_71 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y34",
      INIT => X"F50FF0AFAF5AF50F"
    )
    port map (
      ADR1 => '1',
      ADR0 => U36_cm(2),
      ADR3 => U36_cm(3),
      ADR4 => U36_cm(4),
      ADR5 => U36_cm(6),
      ADR2 => U36_cm(5),
      O => U14_bcd10_0_bdd1
    );
  U6_bcd10_0_71 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y38",
      INIT => X"DBCDDBCD36B336B3"
    )
    port map (
      ADR4 => '1',
      ADR2 => U2_cs(2),
      ADR5 => U2_cs(3),
      ADR3 => U2_cs(4),
      ADR0 => U2_cs(6),
      ADR1 => U2_cs(5),
      O => U6_bcd10_0_bdd1
    );
  U36_Maddsub_cm_share0000_xor_6_111 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y32",
      INIT => X"5050F0F0F0F0F5F5"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => U36_cm(5),
      ADR5 => U36_cm(4),
      ADR4 => U36_N13,
      ADR2 => U37_set_timer_4810,
      O => U36_N16
    );
  U36_Maddsub_cm_share0000_xor_4_131 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y32",
      INIT => X"CF0F0F0F0F0F0F0C"
    )
    port map (
      ADR0 => '1',
      ADR2 => U37_set_timer_4810,
      ADR5 => U36_cm(2),
      ADR3 => U36_cm(0),
      ADR1 => U36_cm(1),
      ADR4 => U36_cm(3),
      O => U36_N13
    );
  N56_N56_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_mux0000_2_1224_2909,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_1224_0
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1224 : X_MUX2
    generic map(
      LOC => "SLICE_X38Y38"
    )
    port map (
      IA => '0',
      IB => N105,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_1224_2909,
      SEL => U30_my_hd44780_simple_Madd_cur_ddram_addr_addsub0000_cy(1)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_179_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y38",
      INIT => X"FFFFCCCC0000CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => U2_cs(1),
      ADR5 => U6_bcd10_0_bdd0,
      ADR1 => U6_bcd10_0_bdd1,
      O => N56
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_179 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y38",
      INIT => X"C0200020F0203020"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => N56,
      ADR0 => U2_cm(0),
      ADR4 => U2_cs(0),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_179_5016
    );
  BUS2432_6_233_SLICEL_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X38Y38",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_BUS2432_6_233_SLICEL_B6LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1224_G : X_LUT6
    generic map(
      LOC => "SLICE_X38Y38",
      INIT => X"C16883C13C16683C"
    )
    port map (
      ADR4 => U2_cs(5),
      ADR1 => U2_cs(6),
      ADR3 => U2_cs(3),
      ADR5 => U2_cs(4),
      ADR2 => U2_cs(2),
      ADR0 => U2_cs(1),
      O => N105
    );
  U3_bcd10_0_bdd1_U3_bcd10_0_bdd1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_mux0000_0_253_2973,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_253_0
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_253 : X_MUX2
    generic map(
      LOC => "SLICE_X38Y40"
    )
    port map (
      IA => N110,
      IB => N111,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_253_2973,
      SEL => U30_my_hd44780_simple_cur_ddram_addr(0)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_253_F : X_LUT6
    generic map(
      LOC => "SLICE_X38Y40",
      INIT => X"0000040400001515"
    )
    port map (
      ADR3 => '1',
      ADR1 => U2_ch(1),
      ADR2 => U3_bcd10_0_bdd0,
      ADR0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => U3_bcd10_0_bdd1,
      O => N110
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_253_G : X_LUT6
    generic map(
      LOC => "SLICE_X38Y40",
      INIT => X"000000005702F7A2"
    )
    port map (
      ADR0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR2 => U2_cm(1),
      ADR1 => U5_bcd10_0_bdd1,
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR4 => U5_bcd10_0_bdd0,
      ADR3 => U2_ch(0),
      O => N111
    );
  U3_bcd10_0_71 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y40",
      INIT => X"F42FF42FBD4BBD4B"
    )
    port map (
      ADR4 => '1',
      ADR0 => U2_ch(2),
      ADR3 => U2_ch(3),
      ADR1 => U2_ch(4),
      ADR5 => U2_ch(6),
      ADR2 => U2_ch(5),
      O => U3_bcd10_0_bdd1
    );
  U5_bcd10_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y40",
      INIT => X"A05AF00FF00F5A05"
    )
    port map (
      ADR1 => '1',
      ADR5 => U2_cm(2),
      ADR3 => U2_cm(3),
      ADR2 => U2_cm(5),
      ADR4 => U2_cm(6),
      ADR0 => U2_cm(4),
      O => U5_bcd10_0_bdd0
    );
  U2_ch_mux0001_6_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y42"
    )
    port map (
      IA => U2_ch_mux0001_6_2_2859,
      IB => U2_ch_mux0001_6_1_2865,
      O => U2_ch_mux0001(6),
      SEL => U2_ch(6)
    );
  U2_ch_mux0001_6_2 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => U2_ch(4),
      ADR2 => U2_ch(5),
      ADR5 => U2_ch(3),
      ADR1 => U2_ch(2),
      ADR4 => U2_ch(1),
      ADR3 => U2_ch(0),
      O => U2_ch_mux0001_6_2_2859
    );
  U2_ch_6 : X_FF
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => '0'
    )
    port map (
      CE => U2_ch_not0001,
      CLK => NlwBufferSignal_U2_ch_6_CLK,
      I => U2_ch_mux0001(6),
      O => U2_ch(6),
      SET => GND,
      RST => U37_reset_time_4872
    );
  U2_ch_mux0001_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y42",
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      ADR0 => U2_ch(4),
      ADR2 => U2_ch(5),
      ADR5 => U2_ch(3),
      ADR1 => U2_ch(2),
      ADR3 => U2_ch(1),
      ADR4 => U2_ch(0),
      O => U2_ch_mux0001_6_1_2865
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_691 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y35",
      INIT => X"8968918966166866"
    )
    port map (
      ADR2 => U36_cm(5),
      ADR0 => U36_cm(6),
      ADR3 => U36_cm(3),
      ADR5 => U36_cm(4),
      ADR1 => U36_cm(2),
      ADR4 => U36_cm(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_691_5092
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_725 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y35",
      INIT => X"5050550040405500"
    )
    port map (
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR3 => U30_my_hd44780_simple_hd44780_db_mux0000_2_691_5092,
      ADR0 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR5 => U36_cs(3),
      ADR2 => U36_cs(5),
      ADR1 => U36_cs(4),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_725_5000
    );
  BUS2432_2_BUS2432_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_mux0000_3_1045_2980,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1045_0
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1045 : X_MUX2
    generic map(
      LOC => "SLICE_X38Y41"
    )
    port map (
      IA => '0',
      IB => N103,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1045_2980,
      SEL => U30_my_hd44780_simple_N37
    );
  U3_scratch_12_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y41",
      INIT => X"333000CC333000CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => U2_ch(5),
      ADR3 => U2_ch(4),
      ADR1 => U2_ch(6),
      ADR2 => U2_ch(3),
      O => BUS2432(2)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1098 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y41",
      INIT => X"0000FFFF11110000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => U2_cm(4),
      ADR4 => U2_cm(5),
      ADR0 => U2_cm(2),
      ADR1 => U2_cm(3),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1098_5006
    );
  BUS2432_6_232_SLICEL_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X38Y41",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_BUS2432_6_232_SLICEL_B6LUT_O_UNCONNECTED
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1045_G : X_LUT6
    generic map(
      LOC => "SLICE_X38Y41",
      INIT => X"0240902424090240"
    )
    port map (
      ADR5 => U2_ch(1),
      ADR0 => U2_ch(2),
      ADR4 => U2_ch(3),
      ADR2 => U2_ch(5),
      ADR1 => U2_ch(4),
      ADR3 => U2_ch(6),
      O => N103
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_426 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y39",
      INIT => X"FFFFAEAEFFFFAFAE"
    )
    port map (
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR3 => BUS2432(1),
      ADR1 => U30_my_hd44780_simple_hd44780_db_mux0000_1_389_5021,
      ADR0 => U30_my_hd44780_simple_hd44780_db_mux0000_1_256_5094,
      ADR4 => U30_my_hd44780_simple_hd44780_db_mux0000_1_270_5095,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_426_4986
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_270 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y39",
      INIT => X"08080B0B00000000"
    )
    port map (
      ADR3 => '1',
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR1 => U2_ch(1),
      ADR0 => U3_bcd10_0_bdd0,
      ADR4 => U3_bcd10_0_bdd1,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_270_5095
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_5_117 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y39",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(0),
      O => U30_my_hd44780_simple_N33
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_256 : X_LUT6
    generic map(
      LOC => "SLICE_X38Y39",
      INIT => X"D922000010660000"
    )
    port map (
      ADR2 => U2_cs(2),
      ADR5 => U2_cs(3),
      ADR0 => U2_cs(6),
      ADR3 => U2_cs(4),
      ADR1 => U2_cs(5),
      ADR4 => U30_my_hd44780_simple_N33,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_256_5094
    );
  U37_cur_state_FSM_FFd2_In : X_MUX2
    generic map(
      LOC => "SLICE_X37Y39"
    )
    port map (
      IA => N100,
      IB => N101,
      O => U37_cur_state_FSM_FFd2_In_2829,
      SEL => U37_cur_state_FSM_N3
    );
  U37_cur_state_FSM_FFd2_In_F : X_LUT6
    generic map(
      LOC => "SLICE_X37Y39",
      INIT => X"A0FC00FCA0FC0AFE"
    )
    port map (
      ADR3 => U23_pulse_4830,
      ADR2 => U37_cur_state_FSM_FFd2_4828,
      ADR0 => U21_pulse_4825,
      ADR4 => U37_cur_state_FSM_FFd3_4827,
      ADR5 => U19_pulse_4826,
      ADR1 => U37_cur_state_FSM_FFd1_4829,
      O => N100
    );
  U37_cur_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X37Y39",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U37_cur_state_FSM_FFd2_CLK,
      I => U37_cur_state_FSM_FFd2_In_2829,
      O => U37_cur_state_FSM_FFd2_4828,
      SET => GND,
      RST => rst_IBUF_4607
    );
  U37_cur_state_FSM_FFd2_In_G : X_LUT6
    generic map(
      LOC => "SLICE_X37Y39",
      INIT => X"FF0CFF0CFF0CFFAE"
    )
    port map (
      ADR0 => U21_pulse_4825,
      ADR5 => U19_pulse_4826,
      ADR4 => U37_cur_state_FSM_FFd3_4827,
      ADR3 => U37_cur_state_FSM_FFd2_4828,
      ADR1 => U37_cur_state_FSM_FFd1_4829,
      ADR2 => U23_pulse_4830,
      O => N101
    );
  U37_set_time : X_FF
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U37_set_time_CLK,
      I => U37_cur_state_cmp_eq0003,
      O => U37_set_time_4802,
      SET => GND,
      RST => GND
    );
  U37_cur_state_FSM_Out11 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y34",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U37_cur_state_FSM_FFd3_4827,
      ADR3 => U37_cur_state_FSM_FFd2_4828,
      O => U37_cur_state_cmp_eq0003
    );
  U34_o_0_cmp_eq0000107_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y4",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR0 => U34_o_0_add0000_0_0,
      ADR4 => U34_o_0_add0000_2_0,
      ADR3 => U34_o_0_add0000_3_0,
      ADR2 => U34_o_0_add0000_4_0,
      ADR1 => U34_o_0_add0000_5_0,
      ADR5 => U34_o_0_add0000_6_0,
      O => N44
    );
  U34_o_0_cmp_eq0000107 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y4",
      INIT => X"0004000000000000"
    )
    port map (
      ADR4 => U34_o_0_add0000_12_0,
      ADR1 => U34_o_0_add0000_7_0,
      ADR5 => U34_o_0_add0000_15_0,
      ADR0 => U34_o_0_add0000_17_0,
      ADR2 => U34_o_0_add0000_16_0,
      ADR3 => N44,
      O => U34_o_0_cmp_eq0000107_5030
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_2837,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_0
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1828 : X_MUX2
    generic map(
      LOC => "SLICE_X37Y40"
    )
    port map (
      IA => N96,
      IB => N97,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_2837,
      SEL => U2_cm(1)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_F : X_LUT6
    generic map(
      LOC => "SLICE_X37Y40",
      INIT => X"0000000021404018"
    )
    port map (
      ADR1 => U2_cm(4),
      ADR0 => U2_cm(5),
      ADR2 => U2_cm(3),
      ADR4 => U2_cm(6),
      ADR3 => U2_cm(2),
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(1),
      O => N96
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_G_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X37Y40",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(1),
      O => N97
    );
  U3_scratch_13_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y40",
      INIT => X"0A000A000A200A20"
    )
    port map (
      ADR4 => '1',
      ADR0 => U2_ch(6),
      ADR2 => U2_ch(5),
      ADR3 => U2_ch(4),
      ADR1 => U2_ch(3),
      ADR5 => U2_ch(2),
      O => BUS2432(3)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1131 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y40",
      INIT => X"00B3003300A00000"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR4 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1098_5006,
      ADR0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR2 => U2_cm(6),
      ADR5 => BUS2432(3),
      ADR1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1131_5004
    );
  U3_bcd10_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y40",
      INIT => X"DD2200DDBB0044BB"
    )
    port map (
      ADR2 => '1',
      ADR0 => U2_ch(2),
      ADR3 => U2_ch(3),
      ADR4 => U2_ch(5),
      ADR5 => U2_ch(6),
      ADR1 => U2_ch(4),
      O => U3_bcd10_0_bdd0
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_113_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y40",
      INIT => X"FFFCFFFFFFFDFFFD"
    )
    port map (
      ADR5 => U2_ch(1),
      ADR1 => BUS2432(2),
      ADR2 => BUS2432(3),
      ADR3 => BUS2432(1),
      ADR0 => U3_bcd10_0_bdd1,
      ADR4 => U3_bcd10_0_bdd0,
      O => N70
    );
  U14_bcd10_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y35",
      INIT => X"A550A5A5A5A50AA5"
    )
    port map (
      ADR1 => '1',
      ADR5 => U36_cm(2),
      ADR0 => U36_cm(3),
      ADR2 => U36_cm(5),
      ADR4 => U36_cm(6),
      ADR3 => U36_cm(4),
      O => U14_bcd10_0_bdd0
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_111 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y35",
      INIT => X"0000F0550000F055"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => U36_cm(1),
      ADR0 => U14_bcd10_0_bdd1,
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR2 => U14_bcd10_0_bdd0,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_111_4980
    );
  U14_scratch_11_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y35",
      INIT => X"C83CC83C03380338"
    )
    port map (
      ADR4 => '1',
      ADR1 => U36_cm(4),
      ADR2 => U36_cm(6),
      ADR5 => U36_cm(3),
      ADR3 => U36_cm(5),
      ADR0 => U36_cm(2),
      O => BUS1989(1)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_5_122 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y41",
      INIT => X"0F000F000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      O => U30_my_hd44780_simple_N37
    );
  U34_o_0_cmp_eq000040 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y10",
      INIT => X"0000000000003333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U34_o_0_add0000_29_0,
      ADR5 => U34_o_0_add0000_30_0,
      ADR4 => U34_o_0_add0000_31_0,
      O => U34_o_0_cmp_eq000040_5051
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_2356 : X_MUX2
    generic map(
      LOC => "SLICE_X39Y36"
    )
    port map (
      IA => N94,
      IB => N95,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_Q,
      SEL => U30_my_hd44780_simple_cur_line(0)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_2356_F : X_LUT6
    generic map(
      LOC => "SLICE_X39Y36",
      INIT => X"FFA8FFAAFFA8FF00"
    )
    port map (
      ADR0 => U30_my_hd44780_simple_cur_state(12),
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR1 => U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_0,
      ADR2 => U30_my_hd44780_simple_hd44780_db_mux0000_2_1224_0,
      ADR5 => U30_my_hd44780_simple_hd44780_db_mux0000_2_2274_5099,
      ADR3 => U30_my_hd44780_simple_hd44780_db_mux0000_2_14_4990,
      O => N94
    );
  U30_my_hd44780_simple_hd44780_db_2 : X_FF
    generic map(
      LOC => "SLICE_X39Y36",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_2_CLK,
      I => U30_my_hd44780_simple_hd44780_db_mux0000_2_Q,
      O => U30_my_hd44780_simple_hd44780_db_2_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_2356_G : X_LUT6
    generic map(
      LOC => "SLICE_X39Y36",
      INIT => X"FFAAFFA0FFA8FFA0"
    )
    port map (
      ADR2 => U30_my_hd44780_simple_hd44780_db_mux0000_2_772_4998,
      ADR0 => U30_my_hd44780_simple_cur_state(12),
      ADR1 => U30_my_hd44780_simple_hd44780_db_mux0000_2_253_4999,
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => U30_my_hd44780_simple_hd44780_db_mux0000_2_725_5000,
      ADR3 => U30_my_hd44780_simple_hd44780_db_mux0000_2_14_4990,
      O => N95
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_2274 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y36",
      INIT => X"AEAEAEAE0F000F00"
    )
    port map (
      ADR4 => '1',
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR1 => U30_my_hd44780_simple_hd44780_db_mux0000_2_2217_4995,
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR3 => BUS2432(2),
      ADR0 => U30_my_hd44780_simple_hd44780_db_mux0000_2_1798_4997,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_2274_5099
    );
  U20_count_per_cmp_eq000068 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y59",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => U20_count_per(6),
      ADR2 => U20_count_per(7),
      ADR0 => U20_count_per(15),
      ADR3 => U20_count_per(13),
      ADR5 => U20_count_per(12),
      ADR4 => U20_count_per(11),
      O => U20_count_per_cmp_eq000068_5057
    );
  U20_count_per_9 : X_FF
    generic map(
      LOC => "SLICE_X40Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_9_CLK,
      I => U20_Mcount_count_per_eqn_9,
      O => U20_count_per(9),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_91 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y59",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U20_Result_9_0,
      ADR5 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_9
    );
  U20_clk_deb : X_FF
    generic map(
      LOC => "SLICE_X40Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_clk_deb_CLK,
      I => U20_count_per_cmp_eq0000,
      O => U20_clk_deb_4918,
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_count_per_cmp_eq000090 : X_LUT6
    generic map(
      LOC => "SLICE_X40Y59",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => U20_count_per(0),
      ADR0 => U20_count_per(1),
      ADR4 => U20_count_per(14),
      ADR3 => U20_count_per(2),
      ADR2 => U20_count_per(3),
      ADR5 => N64,
      O => U20_count_per_cmp_eq0000
    );
  U34_o_0_cmp_eq0000185 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y6",
      INIT => X"0000000000000008"
    )
    port map (
      ADR4 => U34_o_0_add0000_8_0,
      ADR0 => U34_o_0_add0000_9_0,
      ADR1 => U34_o_0_add0000_10_0,
      ADR2 => U34_o_0_add0000_11_0,
      ADR3 => U34_o_0_add0000_13_0,
      ADR5 => U34_o_0_add0000_14_0,
      O => U34_o_0_cmp_eq0000185_5071
    );
  U34_o_0_cmp_eq0000185_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y6",
      INIT => X"F0F0F0F0FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U34_o_0_add0000_8_0,
      ADR5 => U34_o_0_add0000_9_0,
      O => N54
    );
  U34_o_0_cmp_eq0000221_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y6",
      INIT => X"FFFFFFFFFFFFFEFF"
    )
    port map (
      ADR1 => U34_o_0_add0000_11_0,
      ADR0 => U34_o_0_add0000_14_0,
      ADR5 => U34_o_0_add0000_13_0,
      ADR3 => U34_o_0_add0000_10_0,
      ADR2 => U34_o_0_add0000_24_0,
      ADR4 => N54,
      O => N46
    );
  U14_scratch_12_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y35",
      INIT => X"0000F0F00F0FC0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => U36_cm(5),
      ADR5 => U36_cm(4),
      ADR4 => U36_cm(6),
      ADR1 => U36_cm(3),
      O => BUS1989(2)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_772 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y35",
      INIT => X"00AA000000000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR5 => BUS1989(2),
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR0 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR3 => U30_my_hd44780_simple_cur_ddram_addr(2),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_772_4998
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_121 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y35",
      INIT => X"F0F0F0F000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(0),
      O => U30_my_hd44780_simple_Madd_cur_ddram_addr_addsub0000_cy(1)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_253 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y35",
      INIT => X"42B400000BD00000"
    )
    port map (
      ADR3 => U36_cs(4),
      ADR2 => U36_cs(2),
      ADR0 => U36_cs(3),
      ADR1 => U36_cs(1),
      ADR4 => U30_my_hd44780_simple_Madd_cur_ddram_addr_addsub0000_cy(1),
      ADR5 => U36_cs(5),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_253_4999
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_2217 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y41",
      INIT => X"C6318C6318C6318C"
    )
    port map (
      ADR4 => U2_ch(5),
      ADR1 => U2_ch(6),
      ADR2 => U2_ch(3),
      ADR3 => U2_ch(4),
      ADR5 => U2_ch(2),
      ADR0 => U2_ch(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_2217_4995
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_389 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y41",
      INIT => X"8488044884080440"
    )
    port map (
      ADR1 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR2 => U2_cm(5),
      ADR0 => U2_cm(4),
      ADR3 => U2_cm(6),
      ADR4 => U2_cm(3),
      ADR5 => U2_cm(2),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_389_5021
    );
  U3_scratch_11_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y41",
      INIT => X"C38C0338C38C0338"
    )
    port map (
      ADR5 => '1',
      ADR1 => U2_ch(4),
      ADR3 => U2_ch(6),
      ADR4 => U2_ch(3),
      ADR2 => U2_ch(5),
      ADR0 => U2_ch(2),
      O => BUS2432(1)
    );
  U34_o_0_cmp_eq0000221 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y8",
      INIT => X"2000000000000000"
    )
    port map (
      ADR1 => U34_o_0_add0000_24_0,
      ADR3 => U34_o_0_cmp_eq0000185_5071,
      ADR2 => U34_o_0_cmp_eq0000138_5072,
      ADR0 => U34_o_0_cmp_eq000040_5051,
      ADR4 => U34_o_0_cmp_eq000026_5010,
      ADR5 => U34_o_0_cmp_eq0000107_5030,
      O => U34_o_0_cmp_eq0000
    );
  U34_o_0_cmp_eq000013_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y8",
      INIT => X"FFFFF0F0FFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => U34_o_0_add0000_1_0,
      ADR2 => U34_o_0_add0000_18_0,
      O => N48
    );
  U34_o_0_cmp_eq000026 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y8",
      INIT => X"0000000000004000"
    )
    port map (
      ADR3 => U34_o_0_add0000_19_0,
      ADR1 => U34_o_0_add0000_20_0,
      ADR0 => U34_o_0_add0000_21_0,
      ADR5 => U34_o_0_add0000_22_0,
      ADR2 => U34_o_0_add0000_23_0,
      ADR4 => N48,
      O => U34_o_0_cmp_eq000026_5010
    );
  U34_o_0_cmp_eq0000138 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y9",
      INIT => X"0000000000050005"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => U34_o_0_add0000_25_0,
      ADR0 => U34_o_0_add0000_26_0,
      ADR2 => U34_o_0_add0000_27_0,
      ADR5 => U34_o_0_add0000_28_0,
      O => U34_o_0_cmp_eq0000138_5072
    );
  U34_cnt_or00001 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y9",
      INIT => X"3B33333333333333"
    )
    port map (
      ADR1 => U37_buzz_5062,
      ADR2 => N46,
      ADR4 => U34_o_0_cmp_eq0000138_5072,
      ADR5 => U34_o_0_cmp_eq000040_5051,
      ADR3 => U34_o_0_cmp_eq000026_5010,
      ADR0 => U34_o_0_cmp_eq0000107_5030,
      O => U34_cnt_or0000
    );
  U34_cnt_31 : X_FF
    generic map(
      LOC => "SLICE_X39Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_cnt_31_CLK,
      I => U34_cnt_31_rstpot_3060,
      O => U34_cnt(31),
      SET => GND,
      RST => GND
    );
  U34_cnt_31_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X39Y9",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U34_Result_31_0,
      ADR4 => U34_cnt_or0000,
      O => U34_cnt_31_rstpot_3060
    );
  U14_scratch_13_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y34",
      INIT => X"00FF000011000000"
    )
    port map (
      ADR2 => '1',
      ADR4 => U36_cm(6),
      ADR3 => U36_cm(5),
      ADR5 => U36_cm(4),
      ADR1 => U36_cm(3),
      ADR0 => U36_cm(2),
      O => BUS1989(3)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_82 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y34",
      INIT => X"000091C800000000"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR1 => U36_cs(4),
      ADR3 => U36_cs(5),
      ADR2 => U36_cs(2),
      ADR0 => U36_cs(3),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_82_4982
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_71 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y34",
      INIT => X"F000F00000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => U30_my_hd44780_simple_cur_state(12),
      ADR3 => U30_my_hd44780_simple_cur_line(0),
      O => U30_my_hd44780_simple_N34
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_465 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y38",
      INIT => X"4455001144550011"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U2_cm(1),
      ADR0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR4 => U5_bcd10_0_bdd0,
      ADR3 => U5_bcd10_0_bdd1,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_465_5100
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_484 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y38",
      INIT => X"CCCC808CCCCC0000"
    )
    port map (
      ADR2 => U2_cs(1),
      ADR1 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR0 => U6_bcd10_0_bdd0,
      ADR3 => U6_bcd10_0_bdd1,
      ADR4 => U30_my_hd44780_simple_hd44780_db_mux0000_1_465_5100,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_484_4987
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_34 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y34",
      INIT => X"80808080A2A2A2A2"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR0 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR1 => U36_cs(1),
      ADR5 => U27_bcd10_0_bdd1,
      ADR2 => U27_bcd10_0_bdd0,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_34_4981
    );
  U27_bcd10_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y34",
      INIT => X"CC334499CC334499"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => U36_cs(2),
      ADR1 => U36_cs(3),
      ADR3 => U36_cs(5),
      ADR0 => U36_cs(4),
      O => U27_bcd10_0_bdd0
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1798 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y39",
      INIT => X"332200CC00000000"
    )
    port map (
      ADR2 => '1',
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR4 => U2_cm(5),
      ADR0 => U2_cm(3),
      ADR1 => U2_cm(6),
      ADR3 => U2_cm(4),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_1798_4997
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_705 : X_LUT6
    generic map(
      LOC => "SLICE_X39Y39",
      INIT => X"2200000022080000"
    )
    port map (
      ADR2 => U2_cs(2),
      ADR5 => U2_cs(3),
      ADR1 => U2_cs(5),
      ADR3 => U2_cs(4),
      ADR4 => U2_cs(6),
      ADR0 => U30_my_hd44780_simple_N33,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_705_5003
    );
  U20_count_per_cmp_eq000090_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y59",
      INIT => X"F5FFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => U20_count_per(4),
      ADR2 => U20_count_per(8),
      ADR3 => U20_count_per(5),
      ADR0 => U20_count_per(9),
      ADR5 => U20_count_per_cmp_eq000068_5057,
      O => N88
    );
  U20_count_per_cmp_eq000090_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y59",
      INIT => X"0000000000008000"
    )
    port map (
      ADR2 => U20_count_per(18),
      ADR1 => U20_count_per(16),
      ADR3 => U20_count_per(17),
      ADR5 => U20_count_per(10),
      ADR0 => U20_count_per(19),
      ADR4 => N88,
      O => N64
    );
  U30_my_hd44780_simple_hd44780_db_4 : X_FF
    generic map(
      LOC => "SLICE_X43Y38",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_4_CLK,
      I => U30_my_hd44780_simple_hd44780_db_mux0000_4_Q,
      O => U30_my_hd44780_simple_hd44780_db_4_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_135 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y38",
      INIT => X"FF30FF00FF30FF00"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => U30_my_hd44780_simple_cur_line(0),
      ADR2 => U30_my_hd44780_simple_cur_state(12),
      ADR3 => U30_my_hd44780_simple_hd44780_db_mux0000_4_57_5028,
      ADR4 => U30_my_hd44780_simple_hd44780_db_mux0000_4_113_5107,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_4_Q
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_113 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y38",
      INIT => X"FFFFFFFFFFFFFCFC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR1 => N70,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_4_113_5107
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1143 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y38",
      INIT => X"FFFAFFFAFFFAFFFA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR0 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1045_0,
      ADR3 => U30_my_hd44780_simple_hd44780_db_mux0000_3_705_5003,
      ADR2 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1131_5004,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1143_5106
    );
  U30_my_hd44780_simple_hd44780_db_3 : X_FF
    generic map(
      LOC => "SLICE_X43Y38",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_3_CLK,
      I => U30_my_hd44780_simple_hd44780_db_mux0000_3_Q,
      O => U30_my_hd44780_simple_hd44780_db_3_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1911 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y38",
      INIT => X"FFFFFFFFF0FCF0F8"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_line(0),
      ADR1 => U30_my_hd44780_simple_cur_state(12),
      ADR2 => U30_my_hd44780_simple_hd44780_db_mux0000_3_636_5001,
      ADR5 => U30_my_hd44780_simple_hd44780_db_mux0000_3_58_4992,
      ADR0 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1872_5002,
      ADR4 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1143_5106,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_Q
    );
  U30_my_hd44780_simple_hd44780_db_0 : X_FF
    generic map(
      LOC => "SLICE_X41Y35",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_0_CLK,
      I => U30_my_hd44780_simple_hd44780_db_mux0000_0_Q,
      O => U30_my_hd44780_simple_hd44780_db_0_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_326 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y35",
      INIT => X"FFFFFFFF8A8A8A80"
    )
    port map (
      ADR0 => U30_my_hd44780_simple_cur_state(12),
      ADR2 => U30_my_hd44780_simple_cur_line(0),
      ADR1 => U30_my_hd44780_simple_hd44780_db_mux0000_0_91_0,
      ADR4 => U30_my_hd44780_simple_hd44780_db_mux0000_0_179_5016,
      ADR3 => U30_my_hd44780_simple_hd44780_db_mux0000_0_253_0,
      ADR5 => U30_my_hd44780_simple_hd44780_db_mux0000_0_7_5103,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_Q
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_7 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y35",
      INIT => X"FFFFFFFFFECCFA00"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_hd44780_db_0_Q,
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR5 => U30_my_hd44780_simple_cur_state(8),
      ADR1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR4 => U30_my_hd44780_simple_cur_state(11),
      ADR0 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_7_5103
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_520_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y35",
      INIT => X"F0FE00EEF0F00000"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_line(0),
      ADR5 => U30_my_hd44780_simple_cur_state(12),
      ADR2 => BUS1989(1),
      ADR4 => U30_my_hd44780_simple_N30,
      ADR0 => U30_my_hd44780_simple_hd44780_db_mux0000_1_426_4986,
      ADR1 => U30_my_hd44780_simple_hd44780_db_mux0000_1_484_4987,
      O => N74
    );
  U30_my_hd44780_simple_hd44780_db_1 : X_FF
    generic map(
      LOC => "SLICE_X41Y35",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_1_CLK,
      I => U30_my_hd44780_simple_hd44780_db_mux0000_1_Q,
      O => U30_my_hd44780_simple_hd44780_db_1_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_520 : X_LUT6
    generic map(
      LOC => "SLICE_X41Y35",
      INIT => X"FFFFFFFFFFFFCCC8"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_hd44780_db_mux0000_1_12_4978,
      ADR1 => U30_my_hd44780_simple_N34,
      ADR0 => U30_my_hd44780_simple_hd44780_db_mux0000_1_111_4980,
      ADR2 => U30_my_hd44780_simple_hd44780_db_mux0000_1_34_4981,
      ADR3 => U30_my_hd44780_simple_hd44780_db_mux0000_1_82_4982,
      ADR4 => N74,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_Q
    );
  U23_btn_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y49",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => U24_pb_deb_4940,
      O => U23_btn_inv
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_61 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y35",
      INIT => X"0000808000000000"
    )
    port map (
      ADR3 => '1',
      ADR0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR2 => U30_my_hd44780_simple_cur_state(12),
      ADR5 => U30_my_hd44780_simple_cur_line(0),
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(2),
      O => U30_my_hd44780_simple_N30
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_57_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y35",
      INIT => X"FFFAFFFFFFFBFFFB"
    )
    port map (
      ADR5 => U36_cm(1),
      ADR0 => BUS1989(2),
      ADR2 => BUS1989(3),
      ADR1 => U14_bcd10_0_bdd1,
      ADR4 => U14_bcd10_0_bdd0,
      ADR3 => BUS1989(1),
      O => N72
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_57 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y35",
      INIT => X"FFFFFFFFFFECFFA0"
    )
    port map (
      ADR0 => U30_my_hd44780_simple_hd44780_db_4_Q,
      ADR2 => U30_my_hd44780_simple_N3,
      ADR3 => U30_my_hd44780_simple_N9,
      ADR1 => U30_my_hd44780_simple_N30,
      ADR5 => U30_my_hd44780_simple_hd44780_db_mux0000_4_27_4994,
      ADR4 => N72,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_4_57_5028
    );
  U19_state_0 : X_SFF
    generic map(
      LOC => "SLICE_X42Y47",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U19_state_0_CLK,
      I => '1',
      O => U19_state(0),
      SSET => GND,
      SRST => U19_btn_inv,
      SET => GND,
      RST => GND
    );
  U34_buzz_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y9",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => U37_buzz_5062,
      O => U34_buzz_inv
    );
  U19_btn_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X42Y48",
      INIT => X"5555555555555555"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => U20_pb_deb_4945,
      O => U19_btn_inv
    );
  U37_buzz : X_FF
    generic map(
      LOC => "SLICE_X43Y16",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U37_buzz_CLK,
      I => NlwBufferSignal_U37_buzz_IN,
      O => U37_buzz_5062,
      SET => GND,
      RST => GND
    );
  U20_count_per_16 : X_FF
    generic map(
      LOC => "SLICE_X43Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_16_CLK,
      I => U20_Mcount_count_per_eqn_16,
      O => U20_count_per(16),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_161 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y60",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => U20_Result_16_0,
      ADR4 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_16
    );
  U20_count_per_15 : X_FF
    generic map(
      LOC => "SLICE_X43Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_15_CLK,
      I => U20_Mcount_count_per_eqn_15,
      O => U20_count_per(15),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y60",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U20_Result_15_0,
      ADR4 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_15
    );
  U20_count_per_14 : X_FF
    generic map(
      LOC => "SLICE_X43Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_14_CLK,
      I => U20_Mcount_count_per_eqn_14,
      O => U20_count_per(14),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y60",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U20_Result_14_0,
      ADR2 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_14
    );
  U20_count_per_13 : X_FF
    generic map(
      LOC => "SLICE_X43Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_13_CLK,
      I => U20_Mcount_count_per_eqn_13,
      O => U20_count_per(13),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_131 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y60",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => U20_Result_13_0,
      ADR2 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_13
    );
  U23_pulse : X_FF
    generic map(
      LOC => "SLICE_X43Y46",
      INIT => '0'
    )
    port map (
      CE => U24_pb_deb_4940,
      CLK => NlwBufferSignal_U23_pulse_CLK,
      I => U23_pulse_mux0000,
      O => U23_pulse_4830,
      SET => GND,
      RST => GND
    );
  U23_pulse_mux00001_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y46",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => U23_state(0),
      O => U23_pulse_mux0000
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_28 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y35",
      INIT => X"FFFDFFFEFFFCFFFC"
    )
    port map (
      ADR1 => U30_my_hd44780_simple_cur_state(6),
      ADR3 => U30_my_hd44780_simple_cur_state(10),
      ADR5 => U30_my_hd44780_simple_cur_state(11),
      ADR0 => U30_my_hd44780_simple_cur_line(0),
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR2 => U30_my_hd44780_simple_cur_state(7),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_28_5109
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_58 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y35",
      INIT => X"FFFFFEFCFFFFFAF0"
    )
    port map (
      ADR4 => U30_my_hd44780_simple_N9,
      ADR5 => U30_my_hd44780_simple_hd44780_db_3_Q,
      ADR1 => U30_my_hd44780_simple_N3,
      ADR0 => BUS1989(3),
      ADR3 => U30_my_hd44780_simple_N30,
      ADR2 => U30_my_hd44780_simple_hd44780_db_mux0000_3_28_5109,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_58_4992
    );
  U20_count_per_19 : X_FF
    generic map(
      LOC => "SLICE_X43Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_19_CLK,
      I => U20_Mcount_count_per_eqn_19,
      O => U20_count_per(19),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_191 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y61",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => U20_Result_19_0,
      ADR3 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_19
    );
  U20_count_per_18 : X_FF
    generic map(
      LOC => "SLICE_X43Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_18_CLK,
      I => U20_Mcount_count_per_eqn_18,
      O => U20_count_per(18),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_181 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y61",
      INIT => X"3333333300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => U20_Result_18_0,
      ADR1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_18
    );
  U20_count_per_17 : X_FF
    generic map(
      LOC => "SLICE_X43Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_17_CLK,
      I => U20_Mcount_count_per_eqn_17,
      O => U20_count_per(17),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_171 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y61",
      INIT => X"2222222222222222"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U20_Result_17_0,
      ADR1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_17
    );
  U20_count_per_7 : X_FF
    generic map(
      LOC => "SLICE_X43Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_7_CLK,
      I => U20_Mcount_count_per_eqn_7,
      O => U20_count_per(7),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_71 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y58",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U20_Result_7_0,
      ADR5 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_7
    );
  U20_count_per_6 : X_FF
    generic map(
      LOC => "SLICE_X43Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_6_CLK,
      I => U20_Mcount_count_per_eqn_6,
      O => U20_count_per(6),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_61 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y58",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U20_Result_6_0,
      ADR5 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_6
    );
  U20_count_per_5 : X_FF
    generic map(
      LOC => "SLICE_X43Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_5_CLK,
      I => U20_Mcount_count_per_eqn_5,
      O => U20_count_per(5),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_51 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y58",
      INIT => X"4444444444444444"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U20_Result_5_0,
      ADR0 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_5
    );
  U20_count_per_4 : X_FF
    generic map(
      LOC => "SLICE_X43Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_4_CLK,
      I => U20_Mcount_count_per_eqn_4,
      O => U20_count_per(4),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_41 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y58",
      INIT => X"4444444444444444"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U20_Result_4_0,
      ADR0 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_4
    );
  U23_state_0 : X_SFF
    generic map(
      LOC => "SLICE_X43Y49",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U23_state_0_CLK,
      I => '1',
      O => U23_state(0),
      SSET => GND,
      SRST => U23_btn_inv,
      SET => GND,
      RST => GND
    );
  U20_count_per_3 : X_FF
    generic map(
      LOC => "SLICE_X43Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_3_CLK,
      I => U20_Mcount_count_per_eqn_3,
      O => U20_count_per(3),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_31 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y57",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => U20_Result_3_0,
      ADR3 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_3
    );
  U20_count_per_2 : X_FF
    generic map(
      LOC => "SLICE_X43Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_2_CLK,
      I => U20_Mcount_count_per_eqn_2,
      O => U20_count_per(2),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_21 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y57",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => U20_Result_2_0,
      ADR3 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_2
    );
  U20_count_per_1 : X_FF
    generic map(
      LOC => "SLICE_X43Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_1_CLK,
      I => U20_Mcount_count_per_eqn_1,
      O => U20_count_per(1),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_11 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y57",
      INIT => X"2222222222222222"
    )
    port map (
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U20_Result_1_0,
      ADR1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_1
    );
  U20_count_per_0 : X_FF
    generic map(
      LOC => "SLICE_X43Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_0_CLK,
      I => U20_Mcount_count_per_eqn_0,
      O => U20_count_per(0),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_01 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y57",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U20_Result_0_0,
      ADR1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_0
    );
  U19_pulse : X_FF
    generic map(
      LOC => "SLICE_X43Y47",
      INIT => '0'
    )
    port map (
      CE => U20_pb_deb_4945,
      CLK => NlwBufferSignal_U19_pulse_CLK,
      I => U19_pulse_mux0000,
      O => U19_pulse_4826,
      SET => GND,
      RST => GND
    );
  U19_pulse_mux00001_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y47",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => U19_state(0),
      O => U19_pulse_mux0000
    );
  U20_pb_deb_not00011 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y58",
      INIT => X"A0A05050A0A05050"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => pb_settime_IBUF_4824,
      ADR0 => U20_pb_sampled_5013,
      ADR2 => U20_clk_deb_4918,
      O => U20_pb_deb_not0001
    );
  U20_count_per_12 : X_FF
    generic map(
      LOC => "SLICE_X43Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_12_CLK,
      I => U20_Mcount_count_per_eqn_12,
      O => U20_count_per(12),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_121 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y59",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U20_Result_12_0,
      ADR5 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_12
    );
  U20_count_per_11 : X_FF
    generic map(
      LOC => "SLICE_X43Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_11_CLK,
      I => U20_Mcount_count_per_eqn_11_3422,
      O => U20_count_per(11),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_111 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y59",
      INIT => X"00000000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U20_Result_11_0,
      ADR5 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_11_3422
    );
  U20_count_per_10 : X_FF
    generic map(
      LOC => "SLICE_X43Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_10_CLK,
      I => U20_Mcount_count_per_eqn_10,
      O => U20_count_per(10),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_101 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y59",
      INIT => X"5555555500000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => U20_Result_10_0,
      ADR0 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_10
    );
  U20_count_per_8 : X_FF
    generic map(
      LOC => "SLICE_X43Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U20_count_per_8_CLK,
      I => U20_Mcount_count_per_eqn_8,
      O => U20_count_per(8),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U20_Mcount_count_per_eqn_81 : X_LUT6
    generic map(
      LOC => "SLICE_X43Y59",
      INIT => X"4444444444444444"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => U20_Result_8_0,
      ADR0 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_8
    );
  U30_my_hd44780_simple_cur_ddram_addr_2 : X_FF
    generic map(
      LOC => "SLICE_X44Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_ddram_addr_2_CLK,
      I => U30_my_hd44780_simple_cur_ddram_addr_mux0000(2),
      O => U30_my_hd44780_simple_cur_ddram_addr(2),
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_cur_ddram_addr_mux0000_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y34",
      INIT => X"BBCCFF00AA00AA00"
    )
    port map (
      ADR2 => '1',
      ADR5 => U30_my_hd44780_simple_cur_state(12),
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR3 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR0 => U30_my_hd44780_simple_N2,
      O => U30_my_hd44780_simple_cur_ddram_addr_mux0000(2)
    );
  U30_my_hd44780_simple_cur_ddram_addr_1 : X_FF
    generic map(
      LOC => "SLICE_X44Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_ddram_addr_1_CLK,
      I => U30_my_hd44780_simple_cur_ddram_addr_mux0000(1),
      O => U30_my_hd44780_simple_cur_ddram_addr(1),
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_cur_ddram_addr_mux0000_1_2 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y34",
      INIT => X"FFA00AA0FFA00AA0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => U30_my_hd44780_simple_cur_state(12),
      ADR3 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR4 => U30_my_hd44780_simple_N2,
      O => U30_my_hd44780_simple_cur_ddram_addr_mux0000(1)
    );
  U30_my_hd44780_simple_cur_ddram_addr_0 : X_FF
    generic map(
      LOC => "SLICE_X44Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_ddram_addr_0_CLK,
      I => U30_my_hd44780_simple_cur_ddram_addr_mux0000(0),
      O => U30_my_hd44780_simple_cur_ddram_addr(0),
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_cur_ddram_addr_mux0000_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y34",
      INIT => X"FFAAFFAA00AA00AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR5 => U30_my_hd44780_simple_N2,
      ADR0 => U30_my_hd44780_simple_cur_state(12),
      O => U30_my_hd44780_simple_cur_ddram_addr_mux0000(0)
    );
  U30_my_hd44780_simple_cur_ddram_addr_mux0000_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X44Y34",
      INIT => X"FFFFFFFFFFFFFFFA"
    )
    port map (
      ADR1 => '1',
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_cur_state(2),
      ADR4 => U30_my_hd44780_simple_cur_state(3),
      ADR0 => U30_my_hd44780_simple_cur_state(8),
      ADR5 => U30_my_hd44780_simple_N111,
      O => U30_my_hd44780_simple_N2
    );
  U30_my_hd44780_simple_cur_line_0_mux0000_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y34",
      INIT => X"FFFFFFFFFFFFEEEE"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U30_my_hd44780_simple_cur_state(2),
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR5 => U30_my_hd44780_simple_cur_state(8),
      ADR0 => U30_my_hd44780_simple_N111,
      O => N12
    );
  U30_my_hd44780_simple_cur_line_0 : X_FF
    generic map(
      LOC => "SLICE_X45Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_line_0_CLK,
      I => U30_my_hd44780_simple_cur_line_0_mux0000_3518,
      O => U30_my_hd44780_simple_cur_line(0),
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_cur_line_0_mux0000 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y34",
      INIT => X"FAF0F0F0CAE0E0E0"
    )
    port map (
      ADR1 => U30_my_hd44780_simple_cur_state(3),
      ADR4 => U30_my_hd44780_simple_Madd_cur_ddram_addr_addsub0000_cy(1),
      ADR0 => U30_my_hd44780_simple_cur_state(12),
      ADR2 => U30_my_hd44780_simple_cur_line(0),
      ADR3 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => N12,
      O => U30_my_hd44780_simple_cur_line_0_mux0000_3518
    );
  U20_pb_deb : X_FF
    generic map(
      LOC => "SLICE_X45Y57",
      INIT => '0'
    )
    port map (
      CE => U20_pb_deb_not0001,
      CLK => NlwBufferSignal_U20_pb_deb_CLK,
      I => NlwBufferSignal_U20_pb_deb_IN,
      O => U20_pb_deb_4945,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_en_count_mux0000_2_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y30",
      INIT => X"FAF0FAF0FFF0FFF0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => U30_my_hd44780_simple_cur_state(0),
      ADR3 => U30_my_hd44780_simple_cur_state(2),
      ADR0 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      ADR5 => U30_my_hd44780_simple_en_started(0),
      O => N24
    );
  U30_my_hd44780_simple_en_count_0 : X_FF
    generic map(
      LOC => "SLICE_X48Y30",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_en_count_0_CLK,
      I => U30_my_hd44780_simple_en_count_mux0000(4),
      O => U30_my_hd44780_simple_en_count(0),
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_en_count_mux0000_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y30",
      INIT => X"FAFACC00FEFA0000"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_state(2),
      ADR1 => U30_my_hd44780_simple_en_started(0),
      ADR5 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      ADR4 => U30_my_hd44780_simple_en_count(0),
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR0 => U30_my_hd44780_simple_N8,
      O => U30_my_hd44780_simple_en_count_mux0000(4)
    );
  U30_my_hd44780_simple_en_count_2 : X_FF
    generic map(
      LOC => "SLICE_X48Y30",
      INIT => '1'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_en_count_2_CLK,
      I => U30_my_hd44780_simple_en_count_mux0000(2),
      O => U30_my_hd44780_simple_en_count(2),
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_en_count_mux0000_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X48Y30",
      INIT => X"FFABFFA8FEAB02A8"
    )
    port map (
      ADR2 => U30_my_hd44780_simple_en_count(0),
      ADR4 => N24,
      ADR0 => N25,
      ADR3 => U30_my_hd44780_simple_en_count(2),
      ADR1 => U30_my_hd44780_simple_en_count(1),
      ADR5 => U30_my_hd44780_simple_N11,
      O => U30_my_hd44780_simple_en_count_mux0000(2)
    );
  U30_my_hd44780_simple_en_count_mux0000_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y30",
      INIT => X"FFFFFFFFFFFFFFF4"
    )
    port map (
      ADR1 => U30_my_hd44780_simple_cur_state(2),
      ADR0 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR5 => U30_my_hd44780_simple_cur_state(8),
      ADR3 => U30_my_hd44780_simple_N18,
      ADR4 => U30_my_hd44780_simple_N62,
      O => U30_my_hd44780_simple_N11
    );
  U30_my_hd44780_simple_valuez_cmp_le00002104 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y33",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_valuez(1),
      ADR1 => U30_my_hd44780_simple_valuez(0),
      ADR3 => U30_my_hd44780_simple_valuez(2),
      ADR4 => U30_my_hd44780_simple_valuez(3),
      ADR2 => U30_my_hd44780_simple_valuez(4),
      ADR0 => U30_my_hd44780_simple_valuez(5),
      O => U30_my_hd44780_simple_valuez_cmp_le00002104_4976
    );
  U30_my_hd44780_simple_state2timer_go : X_FF
    generic map(
      LOC => "SLICE_X48Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_state2timer_go_CLK,
      I => U30_my_hd44780_simple_state2timer_go_mux0000,
      O => U30_my_hd44780_simple_state2timer_go_4596,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_state2timer_go_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y33",
      INIT => X"EFEFEEEE000F0000"
    )
    port map (
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_4838,
      ADR2 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_4836,
      ADR5 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR0 => U30_my_hd44780_simple_cur_state(2),
      ADR1 => U30_my_hd44780_simple_N8,
      O => U30_my_hd44780_simple_state2timer_go_mux0000
    );
  U30_my_hd44780_simple_cur_line_0_mux000011_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y33",
      INIT => X"FFFFFFFFF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U30_my_hd44780_simple_cur_state(11),
      ADR2 => U30_my_hd44780_simple_cur_state(10),
      O => N8
    );
  U30_my_hd44780_simple_cur_line_0_mux000011 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y33",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR2 => U30_my_hd44780_simple_cur_state(9),
      ADR5 => U30_my_hd44780_simple_cur_state(7),
      ADR0 => U30_my_hd44780_simple_cur_state(6),
      ADR3 => U30_my_hd44780_simple_cur_state(5),
      ADR1 => U30_my_hd44780_simple_cur_state(4),
      ADR4 => N8,
      O => U30_my_hd44780_simple_N111
    );
  U34_o_3 : X_SFF
    generic map(
      LOC => "SLICE_X46Y3",
      INIT => '0'
    )
    port map (
      CE => U34_o_0_cmp_eq0000,
      CLK => NlwBufferSignal_U34_o_3_CLK,
      I => NlwBufferSignal_U34_o_3_IN,
      O => U34_o(3),
      SSET => GND,
      SRST => U34_buzz_inv,
      SET => GND,
      RST => GND
    );
  U34_o_2 : X_SFF
    generic map(
      LOC => "SLICE_X46Y3",
      INIT => '0'
    )
    port map (
      CE => U34_o_0_cmp_eq0000,
      CLK => NlwBufferSignal_U34_o_2_CLK,
      I => NlwBufferSignal_U34_o_2_IN,
      O => U34_o(2),
      SSET => GND,
      SRST => U34_buzz_inv,
      SET => GND,
      RST => GND
    );
  U34_o_1 : X_SFF
    generic map(
      LOC => "SLICE_X46Y3",
      INIT => '1'
    )
    port map (
      CE => U34_o_0_cmp_eq0000,
      CLK => NlwBufferSignal_U34_o_1_CLK,
      I => U34_o(0),
      O => U34_o(1),
      SRST => GND,
      SSET => U34_buzz_inv,
      SET => GND,
      RST => GND
    );
  U34_o_0 : X_SFF
    generic map(
      LOC => "SLICE_X46Y3",
      INIT => '1'
    )
    port map (
      CE => U34_o_0_cmp_eq0000,
      CLK => NlwBufferSignal_U34_o_0_CLK,
      I => NlwBufferSignal_U34_o_0_IN,
      O => U34_o(0),
      SRST => GND,
      SSET => U34_buzz_inv,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y35",
      INIT => X"FFFFCCCCFFFFCCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR1 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_N3
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_14 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y35",
      INIT => X"FFEEFFFEFFCCFFFC"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_state(10),
      ADR2 => U30_my_hd44780_simple_cur_state(11),
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR0 => U30_my_hd44780_simple_hd44780_db_2_Q,
      ADR5 => U30_my_hd44780_simple_N3,
      ADR1 => U30_my_hd44780_simple_cur_state(9),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_14_4990
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_12 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y35",
      INIT => X"FFFFFFFFFFECFFA0"
    )
    port map (
      ADR1 => U30_my_hd44780_simple_hd44780_db_1_Q,
      ADR3 => U30_my_hd44780_simple_cur_state(9),
      ADR0 => U30_my_hd44780_simple_cur_state(11),
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      ADR4 => U30_my_hd44780_simple_N3,
      ADR5 => U30_my_hd44780_simple_N9,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_12_4978
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_21 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y35",
      INIT => X"00000500F0000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => U30_my_hd44780_simple_cur_line(0),
      ADR3 => U30_my_hd44780_simple_cur_state(12),
      ADR2 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR4 => U30_my_hd44780_simple_cur_ddram_addr(0),
      ADR5 => U30_my_hd44780_simple_cur_ddram_addr(1),
      O => U30_my_hd44780_simple_N9
    );
  U37_rst_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y32",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => rst_IBUF_4607,
      O => U30_my_hd44780_simple_reset_inv
    );
  U30_my_hd44780_simple_next_state_12 : X_FF
    generic map(
      LOC => "SLICE_X48Y32",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_next_state_12_CLK,
      I => U30_my_hd44780_simple_next_state_mux0000_12_Q,
      O => U30_my_hd44780_simple_next_state_12_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_next_state_mux0000_12_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y32",
      INIT => X"FFFFFFAAFF00FF00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR5 => U30_my_hd44780_simple_next_state_12_Q,
      ADR3 => U30_my_hd44780_simple_cur_state(11),
      ADR0 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_12_Q
    );
  U30_my_hd44780_simple_next_state_11 : X_FF
    generic map(
      LOC => "SLICE_X48Y32",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_next_state_11_CLK,
      I => U30_my_hd44780_simple_next_state_mux0000_11_Q,
      O => U30_my_hd44780_simple_next_state_11_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_next_state_mux0000_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y32",
      INIT => X"FFEEFFEEFEEEFEEE"
    )
    port map (
      ADR4 => '1',
      ADR1 => U30_my_hd44780_simple_cur_state(10),
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_next_state_11_Q,
      ADR5 => U30_my_hd44780_simple_cur_state(2),
      ADR0 => U30_my_hd44780_simple_cur_state(12),
      O => U30_my_hd44780_simple_next_state_mux0000_11_Q
    );
  U30_my_hd44780_simple_next_state_10 : X_FF
    generic map(
      LOC => "SLICE_X48Y32",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_next_state_10_CLK,
      I => U30_my_hd44780_simple_next_state_mux0000_10_Q,
      O => U30_my_hd44780_simple_next_state_10_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_next_state_mux0000_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y32",
      INIT => X"FFAAFFAAFFA0FFA0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR0 => U30_my_hd44780_simple_next_state_10_Q,
      ADR3 => U30_my_hd44780_simple_cur_state(9),
      ADR5 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_10_Q
    );
  U37_oven : X_FF
    generic map(
      LOC => "SLICE_X45Y16",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U37_oven_CLK,
      I => U37_mux0001,
      O => U37_oven_4820,
      SET => GND,
      RST => GND
    );
  U37_cur_state_FSM_Out41 : X_LUT6
    generic map(
      LOC => "SLICE_X45Y16",
      INIT => X"0033003300FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => U37_cur_state_FSM_FFd3_4827,
      ADR5 => U37_cur_state_FSM_FFd1_4829,
      ADR1 => U37_cur_state_FSM_FFd2_4828,
      O => U37_mux0001
    );
  U30_my_hd44780_simple_timer_us_value_15 : X_FF
    generic map(
      LOC => "SLICE_X48Y36",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_15_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_15_Q,
      O => U30_my_hd44780_simple_timer_us_value_15_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_15_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y36",
      INIT => X"FFFFFFAAFFFFFFA0"
    )
    port map (
      ADR1 => '1',
      ADR4 => U30_my_hd44780_simple_cur_state(0),
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR0 => U30_my_hd44780_simple_timer_us_value_15_Q,
      ADR5 => U30_my_hd44780_simple_cur_state(2),
      ADR3 => U30_my_hd44780_simple_cur_state(3),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_15_Q
    );
  U30_my_hd44780_simple_timer_us_value_13 : X_FF
    generic map(
      LOC => "SLICE_X48Y36",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_13_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_13_Q,
      O => U30_my_hd44780_simple_timer_us_value_13_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_13_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y36",
      INIT => X"FFFFFFAAFFFFFFA0"
    )
    port map (
      ADR1 => '1',
      ADR4 => U30_my_hd44780_simple_cur_state(0),
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR0 => U30_my_hd44780_simple_timer_us_value_13_Q,
      ADR5 => U30_my_hd44780_simple_cur_state(2),
      ADR3 => U30_my_hd44780_simple_cur_state(3),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_13_Q
    );
  U30_my_hd44780_simple_cur_state_mux0000_1_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X48Y31"
    )
    port map (
      IA => U30_my_hd44780_simple_cur_state_mux0000_1_2_3614,
      IB => U30_my_hd44780_simple_cur_state_mux0000_1_1_3607,
      O => U30_my_hd44780_simple_cur_state_mux0000(1),
      SEL => U30_my_hd44780_simple_cur_state(2)
    );
  U30_my_hd44780_simple_cur_state_mux0000_1_2 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y31",
      INIT => X"FFFFAA2AFFFFAA2A"
    )
    port map (
      ADR5 => '1',
      ADR0 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_4836,
      ADR1 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR2 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_4838,
      ADR4 => U30_my_hd44780_simple_cur_state(0),
      O => U30_my_hd44780_simple_cur_state_mux0000_1_2_3614
    );
  U30_my_hd44780_simple_cur_state_1 : X_FF
    generic map(
      LOC => "SLICE_X48Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_1_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(1),
      O => U30_my_hd44780_simple_cur_state(1),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y31",
      INIT => X"FFAAFFEEFFAAFFEE"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_cur_state(0),
      ADR0 => U30_my_hd44780_simple_cur_state(1),
      ADR1 => U30_my_hd44780_simple_en_started(0),
      ADR4 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U30_my_hd44780_simple_cur_state_mux0000_1_1_3607
    );
  U20_pb_sampled : X_FF
    generic map(
      LOC => "SLICE_X45Y58",
      INIT => '0'
    )
    port map (
      CE => U20_clk_deb_4918,
      CLK => NlwBufferSignal_U20_pb_sampled_CLK,
      I => NlwBufferSignal_U20_pb_sampled_IN,
      O => U20_pb_sampled_5013,
      SET => GND,
      RST => GND
    );
  U34_leds_3 : X_SFF
    generic map(
      LOC => "SLICE_X47Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_leds_3_CLK,
      I => U34_o(3),
      O => U34_leds(3),
      SSET => GND,
      SRST => U34_buzz_inv,
      SET => GND,
      RST => GND
    );
  U34_leds_2 : X_SFF
    generic map(
      LOC => "SLICE_X47Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_leds_2_CLK,
      I => U34_o(2),
      O => U34_leds(2),
      SSET => GND,
      SRST => U34_buzz_inv,
      SET => GND,
      RST => GND
    );
  U34_leds_1 : X_SFF
    generic map(
      LOC => "SLICE_X47Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_leds_1_CLK,
      I => U34_o(1),
      O => U34_leds(1),
      SSET => GND,
      SRST => U34_buzz_inv,
      SET => GND,
      RST => GND
    );
  U34_leds_0 : X_SFF
    generic map(
      LOC => "SLICE_X47Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U34_leds_0_CLK,
      I => U34_o(0),
      O => U34_leds(0),
      SSET => GND,
      SRST => U34_buzz_inv,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer2state_done : X_FF
    generic map(
      LOC => "SLICE_X48Y35",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_running_0_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer2state_done_CLK,
      I => U30_my_hd44780_simple_timer2state_done_mux0000,
      O => U30_my_hd44780_simple_timer2state_done_4837,
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_timer2state_done_mux00001_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y35",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => U30_my_hd44780_simple_state2timer_go_4596,
      O => U30_my_hd44780_simple_timer2state_done_mux0000
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_31 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y35",
      INIT => X"FFFFFFF0FFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => U30_my_hd44780_simple_cur_state(3),
      ADR2 => U30_my_hd44780_simple_cur_state(4),
      ADR4 => U30_my_hd44780_simple_cur_state(5),
      O => U30_my_hd44780_simple_N62
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_27 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y35",
      INIT => X"FFFFFAF8FFFFF0F0"
    )
    port map (
      ADR0 => U30_my_hd44780_simple_cur_ddram_addr(2),
      ADR5 => U30_my_hd44780_simple_cur_line(0),
      ADR1 => U30_my_hd44780_simple_cur_state(11),
      ADR3 => U30_my_hd44780_simple_cur_state(12),
      ADR4 => U30_my_hd44780_simple_N62,
      ADR2 => U30_my_hd44780_simple_cur_state(6),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_4_27_4994
    );
  U24_count_per_cmp_eq000090_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y66",
      INIT => X"AFFFFFFFFFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR5 => U24_count_per(4),
      ADR0 => U24_count_per(8),
      ADR4 => U24_count_per(5),
      ADR3 => U24_count_per(9),
      ADR2 => U24_count_per_cmp_eq000068_5059,
      O => N84
    );
  U24_count_per_cmp_eq000090_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X48Y66",
      INIT => X"0000008000000000"
    )
    port map (
      ADR2 => U24_count_per(18),
      ADR5 => U24_count_per(16),
      ADR1 => U24_count_per(17),
      ADR3 => U24_count_per(10),
      ADR0 => U24_count_per(19),
      ADR4 => N84,
      O => N60
    );
  U30_my_hd44780_simple_next_state_5 : X_FF
    generic map(
      LOC => "SLICE_X50Y30",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_next_state_5_CLK,
      I => U30_my_hd44780_simple_next_state_mux0000_5_Q,
      O => U30_my_hd44780_simple_next_state_5_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_next_state_mux0000_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y30",
      INIT => X"FFFFFFFFFF00AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_next_state_5_Q,
      ADR5 => U30_my_hd44780_simple_cur_state(4),
      ADR0 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_5_Q
    );
  U30_my_hd44780_simple_next_state_4 : X_FF
    generic map(
      LOC => "SLICE_X50Y30",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_next_state_4_CLK,
      I => U30_my_hd44780_simple_next_state_mux0000_4_Q,
      O => U30_my_hd44780_simple_next_state_4_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_next_state_mux0000_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y30",
      INIT => X"FFF0FAF0FFF0FAF0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_next_state_4_Q,
      ADR2 => U30_my_hd44780_simple_cur_state(3),
      ADR0 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_4_Q
    );
  U30_my_hd44780_simple_next_state_3 : X_FF
    generic map(
      LOC => "SLICE_X50Y30",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_next_state_3_CLK,
      I => U30_my_hd44780_simple_next_state_mux0000_3_Q,
      O => U30_my_hd44780_simple_next_state_3_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_next_state_mux0000_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y30",
      INIT => X"FFFFFF00FFFFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_next_state_3_Q,
      ADR4 => U30_my_hd44780_simple_cur_state(0),
      ADR5 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_3_Q
    );
  U30_my_hd44780_simple_next_state_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y30",
      INIT => '1'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_next_state_0_CLK,
      I => U30_my_hd44780_simple_next_state_mux0000_0_Q,
      O => U30_my_hd44780_simple_next_state_0_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_next_state_mux0000_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y30",
      INIT => X"FF00FF00F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => U30_my_hd44780_simple_next_state_0_Q,
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR5 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_0_Q
    );
  U30_my_hd44780_simple_cur_state_mux0000_2_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y31",
      INIT => X"AA2AAA2AFFFFFFFF"
    )
    port map (
      ADR4 => '1',
      ADR0 => U30_my_hd44780_simple_cur_state(1),
      ADR2 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_4838,
      ADR1 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR3 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_4836,
      ADR5 => U30_my_hd44780_simple_en_started(0),
      O => N80
    );
  U24_count_per_cmp_eq000068 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y66",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => U24_count_per(6),
      ADR0 => U24_count_per(7),
      ADR4 => U24_count_per(15),
      ADR5 => U24_count_per(13),
      ADR1 => U24_count_per(12),
      ADR2 => U24_count_per(11),
      O => U24_count_per_cmp_eq000068_5059
    );
  U30_my_hd44780_simple_en_started_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y29",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_en_started_0_CLK,
      I => U30_my_hd44780_simple_en_started_0_mux0000,
      O => U30_my_hd44780_simple_en_started(0),
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_en_started_0_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y29",
      INIT => X"FCFCFCCCFCFCFC0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U30_my_hd44780_simple_cur_state(2),
      ADR3 => U30_my_hd44780_simple_N8,
      ADR2 => U30_my_hd44780_simple_en_started(0),
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR5 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U30_my_hd44780_simple_en_started_0_mux0000
    );
  U30_my_hd44780_simple_cur_state_cmp_gt00001 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y29",
      INIT => X"FFFFFFFFFFFEFFFE"
    )
    port map (
      ADR4 => '1',
      ADR5 => U30_my_hd44780_simple_en_count(2),
      ADR3 => U30_my_hd44780_simple_en_count(3),
      ADR2 => U30_my_hd44780_simple_en_count(4),
      ADR1 => U30_my_hd44780_simple_en_count(0),
      ADR0 => U30_my_hd44780_simple_en_count(1),
      O => U30_my_hd44780_simple_cur_state_cmp_gt0000
    );
  U30_my_hd44780_simple_en_count_mux0000_2_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y29",
      INIT => X"F0F0F0F0FFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U30_my_hd44780_simple_cur_state(0),
      ADR4 => U30_my_hd44780_simple_cur_state(2),
      ADR5 => U30_my_hd44780_simple_en_started(0),
      O => N25
    );
  U24_count_per_9 : X_FF
    generic map(
      LOC => "SLICE_X49Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_9_CLK,
      I => U24_Mcount_count_per_eqn_9,
      O => U24_count_per(9),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_91 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y64",
      INIT => X"00000000AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => U24_Result_9_0,
      ADR5 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_9
    );
  U24_clk_deb : X_FF
    generic map(
      LOC => "SLICE_X49Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_clk_deb_CLK,
      I => U24_count_per_cmp_eq0000,
      O => U24_clk_deb_4928,
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_count_per_cmp_eq000090 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y64",
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => U24_count_per(0),
      ADR3 => U24_count_per(1),
      ADR5 => U24_count_per(14),
      ADR4 => U24_count_per(2),
      ADR2 => U24_count_per(3),
      ADR1 => N60,
      O => U24_count_per_cmp_eq0000
    );
  U30_my_hd44780_simple_next_state_9 : X_FF
    generic map(
      LOC => "SLICE_X50Y32",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_next_state_9_CLK,
      I => U30_my_hd44780_simple_next_state_mux0000_9_Q,
      O => U30_my_hd44780_simple_next_state_9_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_next_state_mux0000_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y32",
      INIT => X"FFFFFFFFFC00FC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_next_state_9_Q,
      ADR5 => U30_my_hd44780_simple_cur_state(8),
      ADR2 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_9_Q
    );
  U30_my_hd44780_simple_next_state_8 : X_FF
    generic map(
      LOC => "SLICE_X50Y32",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_next_state_8_CLK,
      I => U30_my_hd44780_simple_next_state_mux0000_8_Q,
      O => U30_my_hd44780_simple_next_state_8_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_next_state_mux0000_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y32",
      INIT => X"FFFFFF00FFFFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_next_state_8_Q,
      ADR4 => U30_my_hd44780_simple_cur_state(7),
      ADR2 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_8_Q
    );
  U30_my_hd44780_simple_next_state_7 : X_FF
    generic map(
      LOC => "SLICE_X50Y32",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_next_state_7_CLK,
      I => U30_my_hd44780_simple_next_state_mux0000_7_Q,
      O => U30_my_hd44780_simple_next_state_7_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_next_state_mux0000_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y32",
      INIT => X"FFF0FAF0FFF0FAF0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_next_state_7_Q,
      ADR2 => U30_my_hd44780_simple_cur_state(6),
      ADR4 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_7_Q
    );
  U30_my_hd44780_simple_next_state_6 : X_FF
    generic map(
      LOC => "SLICE_X50Y32",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_next_state_6_CLK,
      I => U30_my_hd44780_simple_next_state_mux0000_6_Q,
      O => U30_my_hd44780_simple_next_state_6_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_next_state_mux0000_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y32",
      INIT => X"FFCCFF88FFCCFF88"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR0 => U30_my_hd44780_simple_cur_state(1),
      ADR1 => U30_my_hd44780_simple_next_state_6_Q,
      ADR3 => U30_my_hd44780_simple_cur_state(5),
      ADR4 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_6_Q
    );
  U30_my_hd44780_simple_cur_state_4 : X_FF
    generic map(
      LOC => "SLICE_X50Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_4_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(4),
      O => U30_my_hd44780_simple_cur_state(4),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y31",
      INIT => X"AAEA00C0AAAA0000"
    )
    port map (
      ADR0 => U30_my_hd44780_simple_N0,
      ADR2 => U30_my_hd44780_simple_next_state_4_Q,
      ADR1 => U30_my_hd44780_simple_cur_state(1),
      ADR4 => U30_my_hd44780_simple_cur_state(4),
      ADR5 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR3 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(4)
    );
  U30_my_hd44780_simple_cur_state_3 : X_FF
    generic map(
      LOC => "SLICE_X50Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_3_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(3),
      O => U30_my_hd44780_simple_cur_state(3),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y31",
      INIT => X"AAEAAAAA00C00000"
    )
    port map (
      ADR0 => U30_my_hd44780_simple_N0,
      ADR2 => U30_my_hd44780_simple_next_state_3_Q,
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR5 => U30_my_hd44780_simple_cur_state(3),
      ADR1 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR3 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(3)
    );
  U30_my_hd44780_simple_cur_state_2 : X_FF
    generic map(
      LOC => "SLICE_X50Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_2_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(2),
      O => U30_my_hd44780_simple_cur_state(2),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X50Y31",
      INIT => X"FFFEFFFEFFFEFFFC"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_N18,
      ADR1 => U30_my_hd44780_simple_cur_state(8),
      ADR4 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      ADR0 => U30_my_hd44780_simple_cur_state(2),
      ADR5 => N80,
      ADR2 => U30_my_hd44780_simple_N62,
      O => U30_my_hd44780_simple_cur_state_mux0000(2)
    );
  U30_my_hd44780_simple_cur_state_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y31",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_0_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(0),
      O => U30_my_hd44780_simple_cur_state(0),
      RST => GND,
      SET => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y31",
      INIT => X"FF20FF0020200000"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_N0,
      ADR4 => U30_my_hd44780_simple_next_state_0_Q,
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_cur_state(0),
      ADR0 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR1 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(0)
    );
  U30_my_hd44780_simple_en_count_mux0000_3_Q : X_MUX2
    generic map(
      LOC => "SLICE_X49Y30"
    )
    port map (
      IA => N98,
      IB => N99,
      O => U30_my_hd44780_simple_en_count_mux0000(3),
      SEL => U30_my_hd44780_simple_N11
    );
  U30_my_hd44780_simple_en_count_mux0000_3_F : X_LUT6
    generic map(
      LOC => "SLICE_X49Y30",
      INIT => X"ECCCCECCFFCCFFCC"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_state(2),
      ADR5 => U30_my_hd44780_simple_en_started(0),
      ADR2 => U30_my_hd44780_simple_en_count(1),
      ADR4 => U30_my_hd44780_simple_en_count(0),
      ADR0 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      ADR1 => U30_my_hd44780_simple_cur_state(0),
      O => N98
    );
  U30_my_hd44780_simple_en_count_1 : X_FF
    generic map(
      LOC => "SLICE_X49Y30",
      INIT => '1'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_en_count_1_CLK,
      I => U30_my_hd44780_simple_en_count_mux0000(3),
      O => U30_my_hd44780_simple_en_count(1),
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_en_count_mux0000_3_G : X_LUT6
    generic map(
      LOC => "SLICE_X49Y30",
      INIT => X"FFFFF2F0FFFFFFF0"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_state(2),
      ADR5 => U30_my_hd44780_simple_en_started(0),
      ADR1 => U30_my_hd44780_simple_en_count(0),
      ADR4 => U30_my_hd44780_simple_en_count(1),
      ADR0 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      ADR2 => U30_my_hd44780_simple_cur_state(0),
      O => N99
    );
  U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X49Y30",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_CLK,
      I => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In,
      O => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_4836,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y30",
      INIT => X"FF00FFF0CC00CCF0"
    )
    port map (
      ADR0 => '1',
      ADR5 => U30_my_hd44780_simple_N8,
      ADR1 => U30_my_hd44780_simple_cur_state(2),
      ADR3 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_4836,
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR4 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_4838,
      O => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In
    );
  U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X49Y30",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_CLK,
      I => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In,
      O => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_4838,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y30",
      INIT => X"FFFFF000FCDCF000"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_N8,
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_4836,
      ADR4 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_4838,
      ADR0 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR1 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In
    );
  U30_my_hd44780_simple_timer_us_value_6 : X_FF
    generic map(
      LOC => "SLICE_X49Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_6_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_6_Q,
      O => U30_my_hd44780_simple_timer_us_value_6_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y33",
      INIT => X"FFFFFFEEFFCCFFCC"
    )
    port map (
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_cur_state(4),
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR5 => U30_my_hd44780_simple_timer_us_value_6_Q,
      ADR0 => U30_my_hd44780_simple_cur_state(2),
      ADR1 => U30_my_hd44780_simple_cur_state(5),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_6_Q
    );
  U30_my_hd44780_simple_timer_us_value_5 : X_FF
    generic map(
      LOC => "SLICE_X49Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_5_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_5_Q,
      O => U30_my_hd44780_simple_timer_us_value_5_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y33",
      INIT => X"FFFFFFFEFFFFFEFE"
    )
    port map (
      ADR4 => U30_my_hd44780_simple_cur_state(8),
      ADR0 => U30_my_hd44780_simple_N18,
      ADR1 => U30_my_hd44780_simple_cur_state(0),
      ADR3 => U30_my_hd44780_simple_timer_us_value_5_Q,
      ADR5 => U30_my_hd44780_simple_N3,
      ADR2 => U30_my_hd44780_simple_N62,
      O => U30_my_hd44780_simple_timer_us_value_mux0000_5_Q
    );
  U30_my_hd44780_simple_cur_state_mux0000_2_21 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y33",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR4 => U30_my_hd44780_simple_cur_state(10),
      ADR5 => U30_my_hd44780_simple_cur_state(11),
      ADR3 => U30_my_hd44780_simple_cur_state(12),
      ADR1 => U30_my_hd44780_simple_cur_state(6),
      ADR2 => U30_my_hd44780_simple_cur_state(7),
      ADR0 => U30_my_hd44780_simple_cur_state(9),
      O => U30_my_hd44780_simple_N18
    );
  U30_my_hd44780_simple_timer_us_value_4 : X_FF
    generic map(
      LOC => "SLICE_X49Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_4_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_4_Q,
      O => U30_my_hd44780_simple_timer_us_value_4_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y33",
      INIT => X"FFFFFFAAFFFFFAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => U30_my_hd44780_simple_cur_state(8),
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_timer_us_value_4_Q,
      ADR5 => U30_my_hd44780_simple_cur_state(2),
      ADR4 => U30_my_hd44780_simple_N18,
      O => U30_my_hd44780_simple_timer_us_value_mux0000_4_Q
    );
  U30_my_hd44780_simple_cur_state_11 : X_FF
    generic map(
      LOC => "SLICE_X49Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_11_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(11),
      O => U30_my_hd44780_simple_cur_state(11),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y32",
      INIT => X"AAEAAAAA00C00000"
    )
    port map (
      ADR0 => U30_my_hd44780_simple_N0,
      ADR2 => U30_my_hd44780_simple_next_state_11_Q,
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR5 => U30_my_hd44780_simple_cur_state(11),
      ADR1 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR3 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(11)
    );
  U30_my_hd44780_simple_cur_state_10 : X_FF
    generic map(
      LOC => "SLICE_X49Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_10_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(10),
      O => U30_my_hd44780_simple_cur_state(10),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_10_1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y32",
      INIT => X"CCEC00A0CCCC0000"
    )
    port map (
      ADR4 => U30_my_hd44780_simple_N0,
      ADR0 => U30_my_hd44780_simple_next_state_10_Q,
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR1 => U30_my_hd44780_simple_cur_state(10),
      ADR5 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR3 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(10)
    );
  U30_my_hd44780_simple_cur_state_9 : X_FF
    generic map(
      LOC => "SLICE_X49Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_9_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(9),
      O => U30_my_hd44780_simple_cur_state(9),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y32",
      INIT => X"FF20FF0020200000"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_N0,
      ADR4 => U30_my_hd44780_simple_next_state_9_Q,
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_cur_state(9),
      ADR0 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR1 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(9)
    );
  U30_my_hd44780_simple_cur_state_mux0000_0_11 : X_LUT6
    generic map(
      LOC => "SLICE_X49Y32",
      INIT => X"FFFFD0FFD0D0D0D0"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_cur_state(2),
      ADR3 => U30_my_hd44780_simple_en_started(0),
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR1 => U30_my_hd44780_simple_cur_state_or0000,
      ADR0 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR4 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U30_my_hd44780_simple_N0
    );
  U30_my_hd44780_simple_timer_us_value_11 : X_FF
    generic map(
      LOC => "SLICE_X51Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_11_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_11_Q,
      O => U30_my_hd44780_simple_timer_us_value_11_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_11_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y34",
      INIT => X"FFFFFFFFEE00EE00"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_timer_us_value_11_Q,
      ADR5 => U30_my_hd44780_simple_cur_state(8),
      ADR1 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_11_Q
    );
  U30_my_hd44780_simple_timer_us_value_9 : X_FF
    generic map(
      LOC => "SLICE_X51Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_9_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_9_Q,
      O => U30_my_hd44780_simple_timer_us_value_9_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y34",
      INIT => X"FFFFFFFFEE00EE00"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_timer_us_value_9_Q,
      ADR5 => U30_my_hd44780_simple_cur_state(8),
      ADR1 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_9_Q
    );
  U30_my_hd44780_simple_timer_us_value_8 : X_FF
    generic map(
      LOC => "SLICE_X51Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_8_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_8_Q,
      O => U30_my_hd44780_simple_timer_us_value_8_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y34",
      INIT => X"FFF0FFF0FFA0FFA0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => U30_my_hd44780_simple_cur_state(1),
      ADR2 => U30_my_hd44780_simple_timer_us_value_8_Q,
      ADR3 => U30_my_hd44780_simple_cur_state(8),
      ADR0 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_8_Q
    );
  U30_my_hd44780_simple_timer_us_value_7 : X_FF
    generic map(
      LOC => "SLICE_X51Y34",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_7_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_7_Q,
      O => U30_my_hd44780_simple_timer_us_value_7_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y34",
      INIT => X"FFAAFFAAEEAAEEAA"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_timer_us_value_7_Q,
      ADR0 => U30_my_hd44780_simple_cur_state(8),
      ADR1 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_7_Q
    );
  U24_pb_sampled : X_FF
    generic map(
      LOC => "SLICE_X50Y62",
      INIT => '0'
    )
    port map (
      CE => U24_clk_deb_4928,
      CLK => NlwBufferSignal_U24_pb_sampled_CLK,
      I => NlwBufferSignal_U24_pb_sampled_IN,
      O => U24_pb_sampled_5055,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_hd44780_rs : X_FF
    generic map(
      LOC => "SLICE_X51Y28",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_hd44780_rs_CLK,
      I => U30_my_hd44780_simple_hd44780_rs_mux0000,
      O => U30_my_hd44780_simple_hd44780_rs_4818,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_hd44780_rs_mux00001 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y28",
      INIT => X"FFFFFFFFFF00F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_hd44780_rs_4818,
      ADR5 => U30_my_hd44780_simple_cur_state(12),
      ADR2 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_hd44780_rs_mux0000
    );
  U30_my_hd44780_simple_en_count_mux0000_0_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y29",
      INIT => X"FFFFFFFFFFEEFFEE"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_en_count(0),
      ADR5 => U30_my_hd44780_simple_en_count(1),
      ADR0 => U30_my_hd44780_simple_en_count(2),
      ADR1 => U30_my_hd44780_simple_en_count(3),
      O => N82
    );
  U30_my_hd44780_simple_en_count_4 : X_FF
    generic map(
      LOC => "SLICE_X51Y29",
      INIT => '1'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_en_count_4_CLK,
      I => U30_my_hd44780_simple_en_count_mux0000(0),
      O => U30_my_hd44780_simple_en_count(4),
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_en_count_mux0000_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X51Y29",
      INIT => X"FAF8FFF8F8F8FFF8"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_state(2),
      ADR5 => N82,
      ADR4 => U30_my_hd44780_simple_en_started(0),
      ADR0 => U30_my_hd44780_simple_en_count(4),
      ADR1 => U30_my_hd44780_simple_N11,
      ADR2 => U30_my_hd44780_simple_cur_state(0),
      O => U30_my_hd44780_simple_en_count_mux0000(0)
    );
  U30_my_hd44780_simple_en_count_3 : X_FF
    generic map(
      LOC => "SLICE_X51Y29",
      INIT => '1'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_en_count_3_CLK,
      I => U30_my_hd44780_simple_en_count_mux0000(1),
      O => U30_my_hd44780_simple_en_count(3),
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_en_count_mux0000_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X51Y29",
      INIT => X"FFFFFFFEFFFF0010"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_en_count(2),
      ADR0 => U30_my_hd44780_simple_en_count(1),
      ADR1 => U30_my_hd44780_simple_en_count(0),
      ADR4 => U30_my_hd44780_simple_cur_state(0),
      ADR2 => N27,
      ADR5 => N28,
      O => U30_my_hd44780_simple_en_count_mux0000(1)
    );
  U30_my_hd44780_simple_en_count_mux0000_1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y29",
      INIT => X"AEAEAE8CAEAEAE8C"
    )
    port map (
      ADR5 => '1',
      ADR0 => U30_my_hd44780_simple_en_count(3),
      ADR2 => U30_my_hd44780_simple_en_started(0),
      ADR1 => U30_my_hd44780_simple_cur_state(2),
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_N8,
      O => N28
    );
  U30_my_hd44780_simple_cur_state_8 : X_FF
    generic map(
      LOC => "SLICE_X51Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_8_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(8),
      O => U30_my_hd44780_simple_cur_state(8),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_8_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y31",
      INIT => X"88F8888888888888"
    )
    port map (
      ADR0 => U30_my_hd44780_simple_N0,
      ADR2 => U30_my_hd44780_simple_next_state_8_Q,
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR1 => U30_my_hd44780_simple_cur_state(8),
      ADR5 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR3 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(8)
    );
  U30_my_hd44780_simple_cur_state_7 : X_FF
    generic map(
      LOC => "SLICE_X51Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_7_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(7),
      O => U30_my_hd44780_simple_cur_state(7),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y31",
      INIT => X"A0ECA0A0A0A0A0A0"
    )
    port map (
      ADR0 => U30_my_hd44780_simple_N0,
      ADR1 => U30_my_hd44780_simple_next_state_7_Q,
      ADR4 => U30_my_hd44780_simple_cur_state(1),
      ADR2 => U30_my_hd44780_simple_cur_state(7),
      ADR5 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR3 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(7)
    );
  U30_my_hd44780_simple_cur_state_6 : X_FF
    generic map(
      LOC => "SLICE_X51Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_6_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(6),
      O => U30_my_hd44780_simple_cur_state(6),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y31",
      INIT => X"FF20FF0020200000"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_N0,
      ADR4 => U30_my_hd44780_simple_next_state_6_Q,
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_cur_state(6),
      ADR0 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR1 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(6)
    );
  U30_my_hd44780_simple_cur_state_5 : X_FF
    generic map(
      LOC => "SLICE_X51Y31",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_5_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(5),
      O => U30_my_hd44780_simple_cur_state(5),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y31",
      INIT => X"FF20FF0020200000"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_N0,
      ADR4 => U30_my_hd44780_simple_next_state_5_Q,
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_cur_state(5),
      ADR0 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR1 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(5)
    );
  U30_my_hd44780_simple_en_count_mux0000_1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y30",
      INIT => X"EECCEEEEE2C8EAEA"
    )
    port map (
      ADR1 => U30_my_hd44780_simple_en_count(3),
      ADR0 => U30_my_hd44780_simple_cur_state(2),
      ADR3 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      ADR5 => U30_my_hd44780_simple_N8,
      ADR4 => U30_my_hd44780_simple_en_started(0),
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      O => N27
    );
  U30_my_hd44780_simple_en_count_mux0000_4_111 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y30",
      INIT => X"FFFFFFFFFFFFFFEE"
    )
    port map (
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_cur_state(5),
      ADR0 => U30_my_hd44780_simple_cur_state(4),
      ADR4 => U30_my_hd44780_simple_cur_state(3),
      ADR1 => U30_my_hd44780_simple_cur_state(8),
      ADR5 => U30_my_hd44780_simple_N18,
      O => U30_my_hd44780_simple_N8
    );
  U30_my_hd44780_simple_cur_state_or00001 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y33",
      INIT => X"CCCCFFFFCCCCFFFF"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_4838,
      ADR1 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_4836,
      O => U30_my_hd44780_simple_cur_state_or0000
    );
  U30_my_hd44780_simple_timer_us_value_3 : X_FF
    generic map(
      LOC => "SLICE_X51Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_3_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_3_Q,
      O => U30_my_hd44780_simple_timer_us_value_3_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y33",
      INIT => X"FFFFFFFCFFFFFFEC"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_cur_state(8),
      ADR4 => U30_my_hd44780_simple_cur_state(0),
      ADR5 => U30_my_hd44780_simple_cur_state(1),
      ADR2 => U30_my_hd44780_simple_timer_us_value_3_Q,
      ADR0 => U30_my_hd44780_simple_cur_state(2),
      ADR1 => U30_my_hd44780_simple_cur_state(3),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_3_Q
    );
  U30_my_hd44780_simple_timer_us_value_2 : X_FF
    generic map(
      LOC => "SLICE_X51Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_2_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_2_Q,
      O => U30_my_hd44780_simple_timer_us_value_2_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y33",
      INIT => X"FFFFFCF8FFFFFCF8"
    )
    port map (
      ADR5 => '1',
      ADR2 => U30_my_hd44780_simple_cur_state(12),
      ADR0 => U30_my_hd44780_simple_cur_state(1),
      ADR1 => U30_my_hd44780_simple_timer_us_value_2_Q,
      ADR3 => U30_my_hd44780_simple_cur_state(2),
      ADR4 => U30_my_hd44780_simple_N111,
      O => U30_my_hd44780_simple_timer_us_value_mux0000_2_Q
    );
  U30_my_hd44780_simple_timer_us_value_0 : X_FF
    generic map(
      LOC => "SLICE_X51Y33",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_0_CLK,
      I => U30_my_hd44780_simple_timer_us_value_mux0000_0_Q,
      O => U30_my_hd44780_simple_timer_us_value_0_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y33",
      INIT => X"FFFAF0F0FFFAF0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => U30_my_hd44780_simple_cur_state(1),
      ADR4 => U30_my_hd44780_simple_timer_us_value_0_Q,
      ADR2 => U30_my_hd44780_simple_N18,
      ADR3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_0_Q
    );
  U30_my_hd44780_simple_count_2 : X_FF
    generic map(
      LOC => "SLICE_X50Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_count_2_CLK,
      I => U30_my_hd44780_simple_Mcount_count2,
      O => U30_my_hd44780_simple_count(2),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_count_xor_2_11 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y41",
      INIT => X"FF00FF000FF0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => U30_my_hd44780_simple_count_cmp_eq0000_4891,
      ADR3 => U30_my_hd44780_simple_count(2),
      ADR2 => U30_my_hd44780_simple_count(1),
      ADR4 => U30_my_hd44780_simple_count(0),
      O => U30_my_hd44780_simple_Mcount_count2
    );
  U30_my_hd44780_simple_clk_us : X_FF
    generic map(
      LOC => "SLICE_X50Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_clk_us_CLK,
      I => U30_my_hd44780_simple_count_cmp_eq0000_4891,
      O => U30_my_hd44780_simple_clk_us_4933,
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_count_cmp_eq0000 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y41",
      INIT => X"0000400000000000"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_count(0),
      ADR1 => U30_my_hd44780_simple_count(5),
      ADR2 => U30_my_hd44780_simple_count(1),
      ADR0 => U30_my_hd44780_simple_count(4),
      ADR3 => U30_my_hd44780_simple_count(6),
      ADR4 => N14,
      O => U30_my_hd44780_simple_count_cmp_eq0000_4891
    );
  U30_my_hd44780_simple_cur_state_12 : X_FF
    generic map(
      LOC => "SLICE_X51Y32",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_cur_state_12_CLK,
      I => U30_my_hd44780_simple_cur_state_mux0000(12),
      O => U30_my_hd44780_simple_cur_state(12),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_cur_state_mux0000_12_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y32",
      INIT => X"FF20FF0020200000"
    )
    port map (
      ADR3 => U30_my_hd44780_simple_N0,
      ADR4 => U30_my_hd44780_simple_next_state_12_Q,
      ADR2 => U30_my_hd44780_simple_cur_state(1),
      ADR5 => U30_my_hd44780_simple_cur_state(12),
      ADR0 => U30_my_hd44780_simple_timer2state_done_4837,
      ADR1 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(12)
    );
  U30_my_hd44780_simple_count_4 : X_FF
    generic map(
      LOC => "SLICE_X50Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_count_4_CLK,
      I => U30_my_hd44780_simple_Mcount_count4,
      O => U30_my_hd44780_simple_count(4),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_count_xor_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y40",
      INIT => X"DF20FF00FF00FF00"
    )
    port map (
      ADR1 => U30_my_hd44780_simple_count_cmp_eq0000_4891,
      ADR4 => U30_my_hd44780_simple_count(3),
      ADR0 => U30_my_hd44780_simple_count(2),
      ADR3 => U30_my_hd44780_simple_count(4),
      ADR2 => U30_my_hd44780_simple_count(1),
      ADR5 => U30_my_hd44780_simple_count(0),
      O => U30_my_hd44780_simple_Mcount_count4
    );
  U30_my_hd44780_simple_count_3 : X_FF
    generic map(
      LOC => "SLICE_X50Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_count_3_CLK,
      I => U30_my_hd44780_simple_Mcount_count3,
      O => U30_my_hd44780_simple_count(3),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_count_xor_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y40",
      INIT => X"DF20FF00DF20FF00"
    )
    port map (
      ADR5 => '1',
      ADR1 => U30_my_hd44780_simple_count_cmp_eq0000_4891,
      ADR0 => U30_my_hd44780_simple_count(2),
      ADR3 => U30_my_hd44780_simple_count(3),
      ADR2 => U30_my_hd44780_simple_count(1),
      ADR4 => U30_my_hd44780_simple_count(0),
      O => U30_my_hd44780_simple_Mcount_count3
    );
  U30_my_hd44780_simple_count_1 : X_FF
    generic map(
      LOC => "SLICE_X50Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_count_1_CLK,
      I => U30_my_hd44780_simple_Mcount_count1,
      O => U30_my_hd44780_simple_count(1),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_count_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y40",
      INIT => X"55AA55AA55AA55AA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_count(1),
      ADR4 => '1',
      ADR0 => U30_my_hd44780_simple_count(0),
      O => U30_my_hd44780_simple_Mcount_count1
    );
  U30_my_hd44780_simple_count_0 : X_FF
    generic map(
      LOC => "SLICE_X50Y40",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_count_0_CLK,
      I => U30_my_hd44780_simple_Mcount_count,
      O => U30_my_hd44780_simple_count(0),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_count_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X50Y40",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => U30_my_hd44780_simple_count(0),
      ADR4 => '1',
      ADR5 => '1',
      O => U30_my_hd44780_simple_Mcount_count
    );
  U30_my_hd44780_simple_count_cmp_eq0000_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y41",
      INIT => X"FFFFAAAAFFFFAAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U30_my_hd44780_simple_count(3),
      ADR0 => U30_my_hd44780_simple_count(2),
      O => N14
    );
  U30_my_hd44780_simple_count_6 : X_FF
    generic map(
      LOC => "SLICE_X51Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_count_6_CLK,
      I => U30_my_hd44780_simple_Mcount_count6,
      O => U30_my_hd44780_simple_count(6),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_count_xor_6_11 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y41",
      INIT => X"0055550055005500"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => U30_my_hd44780_simple_count_cmp_eq0000_4891,
      ADR3 => U30_my_hd44780_simple_count(6),
      ADR5 => U30_my_hd44780_simple_count(5),
      ADR4 => U30_my_hd44780_simple_Mcount_count_cy(4),
      O => U30_my_hd44780_simple_Mcount_count6
    );
  U30_my_hd44780_simple_count_5 : X_FF
    generic map(
      LOC => "SLICE_X51Y41",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_count_5_CLK,
      I => U30_my_hd44780_simple_Mcount_count5,
      O => U30_my_hd44780_simple_count(5),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_Mcount_count_xor_5_11 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y41",
      INIT => X"F0FFF0FF0F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => U30_my_hd44780_simple_count(5),
      ADR2 => U30_my_hd44780_simple_count_cmp_eq0000_4891,
      ADR5 => U30_my_hd44780_simple_Mcount_count_cy(4),
      O => U30_my_hd44780_simple_Mcount_count5
    );
  U30_my_hd44780_simple_Mcount_count_cy_4_11 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y41",
      INIT => X"8000000080000000"
    )
    port map (
      ADR5 => '1',
      ADR4 => U30_my_hd44780_simple_count(0),
      ADR1 => U30_my_hd44780_simple_count(1),
      ADR0 => U30_my_hd44780_simple_count(4),
      ADR2 => U30_my_hd44780_simple_count(3),
      ADR3 => U30_my_hd44780_simple_count(2),
      O => U30_my_hd44780_simple_Mcount_count_cy(4)
    );
  U30_my_hd44780_simple_running_0_not00011 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y35",
      INIT => X"EAEAAAAAEAEAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => U30_my_hd44780_simple_running(0),
      ADR1 => U30_my_hd44780_simple_clk_us_4933,
      ADR0 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR4 => U30_my_hd44780_simple_valuez_cmp_le0000,
      O => U30_my_hd44780_simple_running_0_not0001
    );
  U30_my_hd44780_simple_valuez_not00011 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y35",
      INIT => X"F0F0F0F0FFF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U30_my_hd44780_simple_running(0),
      ADR3 => U30_my_hd44780_simple_clk_us_4933,
      ADR2 => U30_my_hd44780_simple_state2timer_go_4596,
      ADR5 => U30_my_hd44780_simple_valuez_cmp_le0000,
      O => U30_my_hd44780_simple_valuez_not0001
    );
  U30_my_hd44780_simple_running_0 : X_FF
    generic map(
      LOC => "SLICE_X51Y35",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_running_0_not0001,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_running_0_CLK,
      I => NlwBufferSignal_U30_my_hd44780_simple_running_0_IN,
      O => U30_my_hd44780_simple_running(0),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U30_my_hd44780_simple_valuez_cmp_le00002106 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y35",
      INIT => X"0000000000000020"
    )
    port map (
      ADR5 => U30_my_hd44780_simple_valuez(11),
      ADR1 => U30_my_hd44780_simple_valuez(10),
      ADR4 => U30_my_hd44780_simple_valuez(8),
      ADR3 => U30_my_hd44780_simple_valuez(9),
      ADR0 => U30_my_hd44780_simple_valuez_cmp_le0000235_4977,
      ADR2 => U30_my_hd44780_simple_valuez_cmp_le00002104_4976,
      O => U30_my_hd44780_simple_valuez_cmp_le0000
    );
  U30_my_hd44780_simple_valuez_cmp_le0000235 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y36",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => U30_my_hd44780_simple_valuez(13),
      ADR1 => U30_my_hd44780_simple_valuez(12),
      ADR3 => U30_my_hd44780_simple_valuez(14),
      ADR4 => U30_my_hd44780_simple_valuez(15),
      ADR0 => U30_my_hd44780_simple_valuez(6),
      ADR5 => U30_my_hd44780_simple_valuez(7),
      O => U30_my_hd44780_simple_valuez_cmp_le0000235_4977
    );
  U30_my_hd44780_simple_hd44780_db_7 : X_FF
    generic map(
      LOC => "SLICE_X51Y36",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_7_CLK,
      I => U30_my_hd44780_simple_hd44780_db_mux0000_7_Q,
      O => U30_my_hd44780_simple_hd44780_db_7_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_7_1 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y36",
      INIT => X"FFCCFFCCEECCEECC"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_hd44780_db_7_Q,
      ADR1 => U30_my_hd44780_simple_cur_state(11),
      ADR0 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_7_Q
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_5_2 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y36",
      INIT => X"FFF0FFF0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => U30_my_hd44780_simple_cur_line(0),
      ADR3 => U30_my_hd44780_simple_cur_state(11),
      ADR2 => U30_my_hd44780_simple_cur_state(6),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_5_2_5118
    );
  U30_my_hd44780_simple_hd44780_db_5 : X_FF
    generic map(
      LOC => "SLICE_X51Y36",
      INIT => '0'
    )
    port map (
      CE => U30_my_hd44780_simple_reset_inv,
      CLK => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_5_CLK,
      I => U30_my_hd44780_simple_hd44780_db_mux0000_5_Q,
      O => U30_my_hd44780_simple_hd44780_db_5_Q,
      SET => GND,
      RST => GND
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_5_127 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y36",
      INIT => X"FFFFFFFCFFFFFEFC"
    )
    port map (
      ADR1 => U30_my_hd44780_simple_cur_state(12),
      ADR2 => U30_my_hd44780_simple_N62,
      ADR0 => U30_my_hd44780_simple_cur_state(1),
      ADR3 => U30_my_hd44780_simple_hd44780_db_5_Q,
      ADR5 => U30_my_hd44780_simple_cur_state(2),
      ADR4 => U30_my_hd44780_simple_hd44780_db_mux0000_5_2_5118,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_5_Q
    );
  U24_pb_deb : X_FF
    generic map(
      LOC => "SLICE_X51Y61",
      INIT => '0'
    )
    port map (
      CE => U24_pb_deb_not0001,
      CLK => NlwBufferSignal_U24_pb_deb_CLK,
      I => NlwBufferSignal_U24_pb_deb_IN,
      O => U24_pb_deb_4940,
      SET => GND,
      RST => GND
    );
  U24_pb_deb_not00011 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y62",
      INIT => X"A500A500A500A500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR2 => pb_canceltimer_IBUF_4823,
      ADR0 => U24_pb_sampled_5055,
      ADR3 => U24_clk_deb_4928,
      O => U24_pb_deb_not0001
    );
  U24_count_per_3 : X_FF
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_3_CLK,
      I => U24_Mcount_count_per_eqn_3,
      O => U24_count_per(3),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_31 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U24_Result_3_0,
      ADR1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_3
    );
  U24_count_per_2 : X_FF
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_2_CLK,
      I => U24_Mcount_count_per_eqn_2,
      O => U24_count_per(2),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_21 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U24_Result_2_0,
      ADR1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_2
    );
  U24_count_per_1 : X_FF
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_1_CLK,
      I => U24_Mcount_count_per_eqn_1,
      O => U24_count_per(1),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_11 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U24_Result_1_0,
      ADR3 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_1
    );
  U24_count_per_0 : X_FF
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_0_CLK,
      I => U24_Mcount_count_per_eqn_0,
      O => U24_count_per(0),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_01 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y64",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U24_Result_0_0,
      ADR3 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_0
    );
  U24_count_per_12 : X_FF
    generic map(
      LOC => "SLICE_X51Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_12_CLK,
      I => U24_Mcount_count_per_eqn_12,
      O => U24_count_per(12),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_121 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y66",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => U24_Result_12_0,
      ADR4 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_12
    );
  U24_count_per_11 : X_FF
    generic map(
      LOC => "SLICE_X51Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_11_CLK,
      I => U24_Mcount_count_per_eqn_11_4266,
      O => U24_count_per(11),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_111 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y66",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U24_Result_11_0,
      ADR4 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_11_4266
    );
  U24_count_per_10 : X_FF
    generic map(
      LOC => "SLICE_X51Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_10_CLK,
      I => U24_Mcount_count_per_eqn_10,
      O => U24_count_per(10),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_101 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y66",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U24_Result_10_0,
      ADR2 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_10
    );
  U24_count_per_8 : X_FF
    generic map(
      LOC => "SLICE_X51Y66",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_8_CLK,
      I => U24_Mcount_count_per_eqn_8,
      O => U24_count_per(8),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_81 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y66",
      INIT => X"0C0C0C0C0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => U24_Result_8_0,
      ADR2 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_8
    );
  U24_count_per_16 : X_FF
    generic map(
      LOC => "SLICE_X51Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_16_CLK,
      I => U24_Mcount_count_per_eqn_16,
      O => U24_count_per(16),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_161 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y67",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => U24_Result_16_0,
      ADR4 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_16
    );
  U24_count_per_15 : X_FF
    generic map(
      LOC => "SLICE_X51Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_15_CLK,
      I => U24_Mcount_count_per_eqn_15,
      O => U24_count_per(15),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y67",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U24_Result_15_0,
      ADR4 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_15
    );
  U24_count_per_14 : X_FF
    generic map(
      LOC => "SLICE_X51Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_14_CLK,
      I => U24_Mcount_count_per_eqn_14,
      O => U24_count_per(14),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y67",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U24_Result_14_0,
      ADR2 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_14
    );
  U24_count_per_13 : X_FF
    generic map(
      LOC => "SLICE_X51Y67",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_13_CLK,
      I => U24_Mcount_count_per_eqn_13,
      O => U24_count_per(13),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_131 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y67",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => U24_Result_13_0,
      ADR2 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_13
    );
  U24_count_per_19 : X_FF
    generic map(
      LOC => "SLICE_X51Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_19_CLK,
      I => U24_Mcount_count_per_eqn_19,
      O => U24_count_per(19),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_191 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y68",
      INIT => X"0000F0F00000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => U24_Result_19_0,
      ADR4 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_19
    );
  U24_count_per_18 : X_FF
    generic map(
      LOC => "SLICE_X51Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_18_CLK,
      I => U24_Mcount_count_per_eqn_18,
      O => U24_count_per(18),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_181 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y68",
      INIT => X"0F0F0F0F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => U24_Result_18_0,
      ADR2 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_18
    );
  U24_count_per_17 : X_FF
    generic map(
      LOC => "SLICE_X51Y68",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_17_CLK,
      I => U24_Mcount_count_per_eqn_17,
      O => U24_count_per(17),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_171 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y68",
      INIT => X"0A0A0A0A0A0A0A0A"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR0 => U24_Result_17_0,
      ADR2 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_17
    );
  U24_count_per_7 : X_FF
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_7_CLK,
      I => U24_Mcount_count_per_eqn_7,
      O => U24_count_per(7),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_71 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U24_Result_7_0,
      ADR1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_7
    );
  U24_count_per_6 : X_FF
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_6_CLK,
      I => U24_Mcount_count_per_eqn_6,
      O => U24_count_per(6),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_61 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => X"3030303030303030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => U24_Result_6_0,
      ADR1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_6
    );
  U24_count_per_5 : X_FF
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_5_CLK,
      I => U24_Mcount_count_per_eqn_5,
      O => U24_count_per(5),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_51 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U24_Result_5_0,
      ADR3 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_5
    );
  U24_count_per_4 : X_FF
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U24_count_per_4_CLK,
      I => U24_Mcount_count_per_eqn_4,
      O => U24_count_per(4),
      SET => GND,
      RST => rst_IBUF_4607
    );
  U24_Mcount_count_per_eqn_41 : X_LUT6
    generic map(
      LOC => "SLICE_X51Y65",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U24_Result_4_0,
      ADR3 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_4
    );
  clk_BUFGP_BUFG_BUF : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y0",
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_IBUF,
      O => clk_BUFGP
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_11_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_11_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_10_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_10_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_9_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_9_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_8_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_8_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_3_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_2_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_1_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_0_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_7_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_6_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_5_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_4_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_15_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_15_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_14_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_14_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_13_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_13_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_valuez_12_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_valuez_12_CLK
    );
  NlwBufferBlock_settingtimeout_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U37_set_time_4802,
      O => NlwBufferSignal_settingtimeout_OBUF_I
    );
  NlwBufferBlock_hd44780_db_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_2_Q,
      O => NlwBufferSignal_hd44780_db_2_OBUF_I
    );
  NlwBufferBlock_hd44780_db_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_1_Q,
      O => NlwBufferSignal_hd44780_db_1_OBUF_I
    );
  NlwBufferBlock_hd44780_db_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_4_Q,
      O => NlwBufferSignal_hd44780_db_4_OBUF_I
    );
  NlwBufferBlock_hd44780_db_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_3_Q,
      O => NlwBufferSignal_hd44780_db_3_OBUF_I
    );
  NlwBufferBlock_hd44780_db_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_0_Q,
      O => NlwBufferSignal_hd44780_db_0_OBUF_I
    );
  NlwBufferBlock_hd44780_db_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_5_Q,
      O => NlwBufferSignal_hd44780_db_5_OBUF_I
    );
  NlwBufferBlock_hd44780_db_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_db_7_Q,
      O => NlwBufferSignal_hd44780_db_7_OBUF_I
    );
  NlwBufferBlock_settingtimerout_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U37_set_timer_4810,
      O => NlwBufferSignal_settingtimerout_OBUF_I
    );
  NlwBufferBlock_buzzerleds_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_leds(0),
      O => NlwBufferSignal_buzzerleds_0_OBUF_I
    );
  NlwBufferBlock_U1_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_3_CLK
    );
  NlwBufferBlock_U1_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_2_CLK
    );
  NlwBufferBlock_U1_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_1_CLK
    );
  NlwBufferBlock_U1_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_0_CLK
    );
  NlwBufferBlock_U1_count_11_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_11_CLK
    );
  NlwBufferBlock_U1_count_10_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_10_CLK
    );
  NlwBufferBlock_U1_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_9_CLK
    );
  NlwBufferBlock_U1_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_8_CLK
    );
  NlwBufferBlock_U1_count_19_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_19_CLK
    );
  NlwBufferBlock_U1_count_18_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_18_CLK
    );
  NlwBufferBlock_U1_count_17_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_17_CLK
    );
  NlwBufferBlock_U1_count_16_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_16_CLK
    );
  NlwBufferBlock_ovenout_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U37_oven_4820,
      O => NlwBufferSignal_ovenout_OBUF_I
    );
  NlwBufferBlock_U1_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_7_CLK
    );
  NlwBufferBlock_U1_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_6_CLK
    );
  NlwBufferBlock_U1_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_5_CLK
    );
  NlwBufferBlock_U1_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_4_CLK
    );
  NlwBufferBlock_U1_count_15_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_15_CLK
    );
  NlwBufferBlock_U1_count_14_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_14_CLK
    );
  NlwBufferBlock_U1_count_13_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_13_CLK
    );
  NlwBufferBlock_U1_count_12_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_12_CLK
    );
  NlwBufferBlock_U1_count_31_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_31_CLK
    );
  NlwBufferBlock_U1_count_25_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_25_CLK
    );
  NlwBufferBlock_U1_count_24_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_24_CLK
    );
  NlwBufferBlock_U1_count_26_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_26_CLK
    );
  NlwBufferBlock_U1_count_23_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_23_CLK
    );
  NlwBufferBlock_U1_count_22_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_22_CLK
    );
  NlwBufferBlock_U1_count_21_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_21_CLK
    );
  NlwBufferBlock_U1_count_20_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_20_CLK
    );
  NlwBufferBlock_U1_clk_1hz_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_clk_1hz_CLK
    );
  NlwBufferBlock_U1_count_30_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_30_CLK
    );
  NlwBufferBlock_U1_count_29_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_29_CLK
    );
  NlwBufferBlock_U1_count_28_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_28_CLK
    );
  NlwBufferBlock_U1_count_27_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U1_count_27_CLK
    );
  NlwBufferBlock_U16_pb_deb_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_pb_deb_CLK
    );
  NlwBufferBlock_U16_pb_deb_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_hour_IBUF_4819,
      O => NlwBufferSignal_U16_pb_deb_IN
    );
  NlwBufferBlock_U16_pb_sampled_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_pb_sampled_CLK
    );
  NlwBufferBlock_U16_pb_sampled_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_hour_IBUF_4819,
      O => NlwBufferSignal_U16_pb_sampled_IN
    );
  NlwBufferBlock_U22_pb_deb_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_pb_deb_CLK
    );
  NlwBufferBlock_U22_pb_deb_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_settimer_IBUF_4822,
      O => NlwBufferSignal_U22_pb_deb_IN
    );
  NlwBufferBlock_U22_pb_sampled_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_pb_sampled_CLK
    );
  NlwBufferBlock_U22_pb_sampled_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_settimer_IBUF_4822,
      O => NlwBufferSignal_U22_pb_sampled_IN
    );
  NlwBufferBlock_buzzerleds_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_leds(2),
      O => NlwBufferSignal_buzzerleds_2_OBUF_I
    );
  NlwBufferBlock_hd44780_rs_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_hd44780_rs_4818,
      O => NlwBufferSignal_hd44780_rs_OBUF_I
    );
  NlwBufferBlock_buzzerleds_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_leds(3),
      O => NlwBufferSignal_buzzerleds_3_OBUF_I
    );
  NlwBufferBlock_buzzerleds_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_leds(1),
      O => NlwBufferSignal_buzzerleds_1_OBUF_I
    );
  NlwBufferBlock_hd44780_en_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_en_started(0),
      O => NlwBufferSignal_hd44780_en_OBUF_I
    );
  NlwBufferBlock_U18_count_per_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_3_CLK
    );
  NlwBufferBlock_U18_count_per_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_2_CLK
    );
  NlwBufferBlock_U18_count_per_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_1_CLK
    );
  NlwBufferBlock_U18_count_per_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_0_CLK
    );
  NlwBufferBlock_U36_cm_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cm_3_CLK
    );
  NlwBufferBlock_U36_cm_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cm_2_CLK
    );
  NlwBufferBlock_U36_cm_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cm_1_CLK
    );
  NlwBufferBlock_U36_cm_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cm_0_CLK
    );
  NlwBufferBlock_U16_count_per_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_3_CLK
    );
  NlwBufferBlock_U16_count_per_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_2_CLK
    );
  NlwBufferBlock_U16_count_per_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_1_CLK
    );
  NlwBufferBlock_U16_count_per_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_0_CLK
    );
  NlwBufferBlock_U36_cs_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cs_4_CLK
    );
  NlwBufferBlock_U36_cs_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cs_2_CLK
    );
  NlwBufferBlock_U36_cs_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cs_3_CLK
    );
  NlwBufferBlock_U36_cs_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cs_1_CLK
    );
  NlwBufferBlock_U36_cs_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cs_0_CLK
    );
  NlwBufferBlock_U21_pulse_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U21_pulse_CLK
    );
  NlwBufferBlock_U16_count_per_9_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_9_CLK
    );
  NlwBufferBlock_U16_clk_deb_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_clk_deb_CLK
    );
  NlwBufferBlock_U17_pulse_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U17_pulse_CLK
    );
  NlwBufferBlock_U17_state_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U17_state_0_CLK
    );
  NlwBufferBlock_U36_cs_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cs_5_CLK
    );
  NlwBufferBlock_U22_count_per_19_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_19_CLK
    );
  NlwBufferBlock_U22_count_per_18_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_18_CLK
    );
  NlwBufferBlock_U22_count_per_17_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_17_CLK
    );
  NlwBufferBlock_U15_state_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U15_state_0_CLK
    );
  NlwBufferBlock_U22_count_per_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_7_CLK
    );
  NlwBufferBlock_U22_count_per_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_6_CLK
    );
  NlwBufferBlock_U22_count_per_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_5_CLK
    );
  NlwBufferBlock_U22_count_per_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_4_CLK
    );
  NlwBufferBlock_U18_pb_sampled_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_pb_sampled_CLK
    );
  NlwBufferBlock_U18_pb_sampled_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_min_IBUF_4821,
      O => NlwBufferSignal_U18_pb_sampled_IN
    );
  NlwBufferBlock_U18_pb_deb_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_pb_deb_CLK
    );
  NlwBufferBlock_U18_pb_deb_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_min_IBUF_4821,
      O => NlwBufferSignal_U18_pb_deb_IN
    );
  NlwBufferBlock_U22_count_per_9_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_9_CLK
    );
  NlwBufferBlock_U22_clk_deb_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_clk_deb_CLK
    );
  NlwBufferBlock_U22_count_per_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_3_CLK
    );
  NlwBufferBlock_U22_count_per_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_2_CLK
    );
  NlwBufferBlock_U22_count_per_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_1_CLK
    );
  NlwBufferBlock_U22_count_per_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_0_CLK
    );
  NlwBufferBlock_U22_count_per_16_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_16_CLK
    );
  NlwBufferBlock_U22_count_per_15_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_15_CLK
    );
  NlwBufferBlock_U22_count_per_14_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_14_CLK
    );
  NlwBufferBlock_U22_count_per_13_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_13_CLK
    );
  NlwBufferBlock_U15_pulse_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U15_pulse_CLK
    );
  NlwBufferBlock_U22_count_per_12_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_12_CLK
    );
  NlwBufferBlock_U22_count_per_11_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_11_CLK
    );
  NlwBufferBlock_U22_count_per_10_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_10_CLK
    );
  NlwBufferBlock_U22_count_per_8_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U22_count_per_8_CLK
    );
  NlwBufferBlock_U21_state_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U21_state_0_CLK
    );
  NlwBufferBlock_U16_count_per_19_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_19_CLK
    );
  NlwBufferBlock_U16_count_per_18_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_18_CLK
    );
  NlwBufferBlock_U16_count_per_17_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_17_CLK
    );
  NlwBufferBlock_U16_count_per_16_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_16_CLK
    );
  NlwBufferBlock_U16_count_per_15_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_15_CLK
    );
  NlwBufferBlock_U16_count_per_14_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_14_CLK
    );
  NlwBufferBlock_U16_count_per_13_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_13_CLK
    );
  NlwBufferBlock_U18_count_per_16_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_16_CLK
    );
  NlwBufferBlock_U18_count_per_15_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_15_CLK
    );
  NlwBufferBlock_U18_count_per_14_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_14_CLK
    );
  NlwBufferBlock_U18_count_per_13_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_13_CLK
    );
  NlwBufferBlock_U16_count_per_12_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_12_CLK
    );
  NlwBufferBlock_U16_count_per_11_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_11_CLK
    );
  NlwBufferBlock_U16_count_per_10_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_10_CLK
    );
  NlwBufferBlock_U16_count_per_8_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_8_CLK
    );
  NlwBufferBlock_U18_count_per_9_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_9_CLK
    );
  NlwBufferBlock_U18_clk_deb_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_clk_deb_CLK
    );
  NlwBufferBlock_U18_count_per_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_7_CLK
    );
  NlwBufferBlock_U18_count_per_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_6_CLK
    );
  NlwBufferBlock_U18_count_per_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_5_CLK
    );
  NlwBufferBlock_U18_count_per_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_4_CLK
    );
  NlwBufferBlock_U18_count_per_12_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_12_CLK
    );
  NlwBufferBlock_U18_count_per_11_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_11_CLK
    );
  NlwBufferBlock_U18_count_per_10_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_10_CLK
    );
  NlwBufferBlock_U18_count_per_8_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_8_CLK
    );
  NlwBufferBlock_U16_count_per_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_7_CLK
    );
  NlwBufferBlock_U16_count_per_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_6_CLK
    );
  NlwBufferBlock_U16_count_per_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_5_CLK
    );
  NlwBufferBlock_U16_count_per_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U16_count_per_4_CLK
    );
  NlwBufferBlock_U2_cs_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cs_1_CLK
    );
  NlwBufferBlock_U2_cs_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cs_0_CLK
    );
  NlwBufferBlock_U2_cs_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cs_2_CLK
    );
  NlwBufferBlock_U2_ch_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_ch_5_CLK
    );
  NlwBufferBlock_U2_ch_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_ch_4_CLK
    );
  NlwBufferBlock_U2_ch_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_ch_3_CLK
    );
  NlwBufferBlock_U2_cm_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cm_1_CLK
    );
  NlwBufferBlock_U2_cm_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cm_0_CLK
    );
  NlwBufferBlock_U2_cm_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cm_2_CLK
    );
  NlwBufferBlock_U2_cs_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cs_6_CLK
    );
  NlwBufferBlock_U2_cs_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cs_5_CLK
    );
  NlwBufferBlock_U2_cs_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cs_4_CLK
    );
  NlwBufferBlock_U2_cs_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cs_3_CLK
    );
  NlwBufferBlock_U36_cm_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cm_6_CLK
    );
  NlwBufferBlock_U36_cm_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cm_4_CLK
    );
  NlwBufferBlock_U36_cm_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U36_cm_5_CLK
    );
  NlwBufferBlock_U37_reset_time_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U37_reset_time_CLK
    );
  NlwBufferBlock_U2_cm_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cm_6_CLK
    );
  NlwBufferBlock_U34_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_3_CLK
    );
  NlwBufferBlock_U34_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_2_CLK
    );
  NlwBufferBlock_U34_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_1_CLK
    );
  NlwBufferBlock_U34_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_0_CLK
    );
  NlwBufferBlock_U37_reset_timer_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U37_reset_timer_CLK
    );
  NlwBufferBlock_U2_ch_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_ch_2_CLK
    );
  NlwBufferBlock_U2_ch_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_ch_1_CLK
    );
  NlwBufferBlock_U2_ch_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_ch_0_CLK
    );
  NlwBufferBlock_U18_count_per_19_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_19_CLK
    );
  NlwBufferBlock_U18_count_per_18_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_18_CLK
    );
  NlwBufferBlock_U18_count_per_17_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U18_count_per_17_CLK
    );
  NlwBufferBlock_U2_cm_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cm_5_CLK
    );
  NlwBufferBlock_U2_cm_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cm_4_CLK
    );
  NlwBufferBlock_U2_cm_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_cm_3_CLK
    );
  NlwBufferBlock_U37_set_timer_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U37_set_timer_CLK
    );
  NlwBufferBlock_U37_cur_state_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U37_cur_state_FSM_FFd3_CLK
    );
  NlwBufferBlock_U37_cur_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U37_cur_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_U34_cnt_19_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_19_CLK
    );
  NlwBufferBlock_U34_cnt_18_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_18_CLK
    );
  NlwBufferBlock_U34_cnt_17_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_17_CLK
    );
  NlwBufferBlock_U34_cnt_16_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_16_CLK
    );
  NlwBufferBlock_U34_cnt_15_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_15_CLK
    );
  NlwBufferBlock_U34_cnt_14_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_14_CLK
    );
  NlwBufferBlock_U34_cnt_13_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_13_CLK
    );
  NlwBufferBlock_U34_cnt_12_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_12_CLK
    );
  NlwBufferBlock_U34_cnt_11_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_11_CLK
    );
  NlwBufferBlock_U34_cnt_10_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_10_CLK
    );
  NlwBufferBlock_U34_cnt_9_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_9_CLK
    );
  NlwBufferBlock_U34_cnt_8_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_8_CLK
    );
  NlwBufferBlock_U34_cnt_23_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_23_CLK
    );
  NlwBufferBlock_U34_cnt_22_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_22_CLK
    );
  NlwBufferBlock_U34_cnt_21_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_21_CLK
    );
  NlwBufferBlock_U34_cnt_20_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_20_CLK
    );
  NlwBufferBlock_U34_cnt_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_7_CLK
    );
  NlwBufferBlock_U34_cnt_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_6_CLK
    );
  NlwBufferBlock_U34_cnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_5_CLK
    );
  NlwBufferBlock_U34_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_4_CLK
    );
  NlwBufferBlock_U34_cnt_27_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_27_CLK
    );
  NlwBufferBlock_U34_cnt_26_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_26_CLK
    );
  NlwBufferBlock_U34_cnt_25_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_25_CLK
    );
  NlwBufferBlock_U34_cnt_24_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_24_CLK
    );
  NlwBufferBlock_U34_cnt_30_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_30_CLK
    );
  NlwBufferBlock_U34_cnt_29_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_29_CLK
    );
  NlwBufferBlock_U34_cnt_28_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_28_CLK
    );
  NlwBufferBlock_U2_ch_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U2_ch_6_CLK
    );
  NlwBufferBlock_U37_cur_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U37_cur_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_U37_set_time_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U37_set_time_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_hd44780_db_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_2_CLK
    );
  NlwBufferBlock_U20_count_per_9_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_9_CLK
    );
  NlwBufferBlock_U20_clk_deb_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_clk_deb_CLK
    );
  NlwBufferBlock_U34_cnt_31_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_cnt_31_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_hd44780_db_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_4_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_hd44780_db_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_3_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_hd44780_db_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_0_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_hd44780_db_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_1_CLK
    );
  NlwBufferBlock_U19_state_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U19_state_0_CLK
    );
  NlwBufferBlock_U37_buzz_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U37_buzz_CLK
    );
  NlwBufferBlock_U37_buzz_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U37_cur_state_FSM_FFd1_4829,
      O => NlwBufferSignal_U37_buzz_IN
    );
  NlwBufferBlock_U20_count_per_16_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_16_CLK
    );
  NlwBufferBlock_U20_count_per_15_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_15_CLK
    );
  NlwBufferBlock_U20_count_per_14_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_14_CLK
    );
  NlwBufferBlock_U20_count_per_13_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_13_CLK
    );
  NlwBufferBlock_U23_pulse_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U23_pulse_CLK
    );
  NlwBufferBlock_U20_count_per_19_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_19_CLK
    );
  NlwBufferBlock_U20_count_per_18_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_18_CLK
    );
  NlwBufferBlock_U20_count_per_17_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_17_CLK
    );
  NlwBufferBlock_U20_count_per_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_7_CLK
    );
  NlwBufferBlock_U20_count_per_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_6_CLK
    );
  NlwBufferBlock_U20_count_per_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_5_CLK
    );
  NlwBufferBlock_U20_count_per_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_4_CLK
    );
  NlwBufferBlock_U23_state_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U23_state_0_CLK
    );
  NlwBufferBlock_U20_count_per_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_3_CLK
    );
  NlwBufferBlock_U20_count_per_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_2_CLK
    );
  NlwBufferBlock_U20_count_per_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_1_CLK
    );
  NlwBufferBlock_U20_count_per_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_0_CLK
    );
  NlwBufferBlock_U19_pulse_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U19_pulse_CLK
    );
  NlwBufferBlock_U20_count_per_12_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_12_CLK
    );
  NlwBufferBlock_U20_count_per_11_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_11_CLK
    );
  NlwBufferBlock_U20_count_per_10_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_10_CLK
    );
  NlwBufferBlock_U20_count_per_8_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_count_per_8_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_ddram_addr_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_ddram_addr_2_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_ddram_addr_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_ddram_addr_1_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_ddram_addr_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_ddram_addr_0_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_line_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_line_0_CLK
    );
  NlwBufferBlock_U20_pb_deb_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_pb_deb_CLK
    );
  NlwBufferBlock_U20_pb_deb_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_settime_IBUF_4824,
      O => NlwBufferSignal_U20_pb_deb_IN
    );
  NlwBufferBlock_U30_my_hd44780_simple_en_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_en_count_0_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_en_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_en_count_2_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_state2timer_go_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_state2timer_go_CLK
    );
  NlwBufferBlock_U34_o_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_o_3_CLK
    );
  NlwBufferBlock_U34_o_3_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o(2),
      O => NlwBufferSignal_U34_o_3_IN
    );
  NlwBufferBlock_U34_o_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_o_2_CLK
    );
  NlwBufferBlock_U34_o_2_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o(1),
      O => NlwBufferSignal_U34_o_2_IN
    );
  NlwBufferBlock_U34_o_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_o_1_CLK
    );
  NlwBufferBlock_U34_o_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_o_0_CLK
    );
  NlwBufferBlock_U34_o_0_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U34_o(3),
      O => NlwBufferSignal_U34_o_0_IN
    );
  NlwBufferBlock_U30_my_hd44780_simple_next_state_12_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_next_state_12_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_next_state_11_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_next_state_11_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_next_state_10_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_next_state_10_CLK
    );
  NlwBufferBlock_U37_oven_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U37_oven_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_15_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_15_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_13_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_13_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_1_CLK
    );
  NlwBufferBlock_U20_pb_sampled_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U20_pb_sampled_CLK
    );
  NlwBufferBlock_U20_pb_sampled_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_settime_IBUF_4824,
      O => NlwBufferSignal_U20_pb_sampled_IN
    );
  NlwBufferBlock_U34_leds_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_leds_3_CLK
    );
  NlwBufferBlock_U34_leds_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_leds_2_CLK
    );
  NlwBufferBlock_U34_leds_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_leds_1_CLK
    );
  NlwBufferBlock_U34_leds_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U34_leds_0_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer2state_done_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer2state_done_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_next_state_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_next_state_5_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_next_state_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_next_state_4_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_next_state_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_next_state_3_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_next_state_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_next_state_0_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_en_started_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_en_started_0_CLK
    );
  NlwBufferBlock_U24_count_per_9_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_9_CLK
    );
  NlwBufferBlock_U24_clk_deb_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_clk_deb_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_next_state_9_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_next_state_9_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_next_state_8_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_next_state_8_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_next_state_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_next_state_7_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_next_state_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_next_state_6_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_4_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_3_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_2_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_0_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_en_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_en_count_1_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_6_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_5_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_4_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_11_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_11_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_10_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_10_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_9_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_9_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_11_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_11_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_9_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_9_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_8_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_8_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_7_CLK
    );
  NlwBufferBlock_U24_pb_sampled_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_pb_sampled_CLK
    );
  NlwBufferBlock_U24_pb_sampled_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_canceltimer_IBUF_4823,
      O => NlwBufferSignal_U24_pb_sampled_IN
    );
  NlwBufferBlock_U30_my_hd44780_simple_hd44780_rs_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_hd44780_rs_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_en_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_en_count_4_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_en_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_en_count_3_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_8_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_8_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_7_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_6_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_5_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_3_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_2_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_timer_us_value_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_timer_us_value_0_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_count_2_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_clk_us_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_clk_us_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_cur_state_12_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_cur_state_12_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_count_4_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_count_3_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_count_1_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_count_0_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_count_6_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_count_5_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_running_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_running_0_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_running_0_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => U30_my_hd44780_simple_state2timer_go_4596,
      O => NlwBufferSignal_U30_my_hd44780_simple_running_0_IN
    );
  NlwBufferBlock_U30_my_hd44780_simple_hd44780_db_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_7_CLK
    );
  NlwBufferBlock_U30_my_hd44780_simple_hd44780_db_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U30_my_hd44780_simple_hd44780_db_5_CLK
    );
  NlwBufferBlock_U24_pb_deb_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_pb_deb_CLK
    );
  NlwBufferBlock_U24_pb_deb_IN : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => pb_canceltimer_IBUF_4823,
      O => NlwBufferSignal_U24_pb_deb_IN
    );
  NlwBufferBlock_U24_count_per_3_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_3_CLK
    );
  NlwBufferBlock_U24_count_per_2_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_2_CLK
    );
  NlwBufferBlock_U24_count_per_1_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_1_CLK
    );
  NlwBufferBlock_U24_count_per_0_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_0_CLK
    );
  NlwBufferBlock_U24_count_per_12_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_12_CLK
    );
  NlwBufferBlock_U24_count_per_11_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_11_CLK
    );
  NlwBufferBlock_U24_count_per_10_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_10_CLK
    );
  NlwBufferBlock_U24_count_per_8_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_8_CLK
    );
  NlwBufferBlock_U24_count_per_16_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_16_CLK
    );
  NlwBufferBlock_U24_count_per_15_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_15_CLK
    );
  NlwBufferBlock_U24_count_per_14_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_14_CLK
    );
  NlwBufferBlock_U24_count_per_13_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_13_CLK
    );
  NlwBufferBlock_U24_count_per_19_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_19_CLK
    );
  NlwBufferBlock_U24_count_per_18_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_18_CLK
    );
  NlwBufferBlock_U24_count_per_17_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_17_CLK
    );
  NlwBufferBlock_U24_count_per_7_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_7_CLK
    );
  NlwBufferBlock_U24_count_per_6_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_6_CLK
    );
  NlwBufferBlock_U24_count_per_5_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_5_CLK
    );
  NlwBufferBlock_U24_count_per_4_CLK : X_BUF
    generic map(
      PATHPULSE => 368 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_U24_count_per_4_CLK
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

