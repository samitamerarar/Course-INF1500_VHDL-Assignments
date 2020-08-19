--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: top.vhd
-- /___/   /\     Timestamp: Fri Apr 08 22:06:42 2016
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

architecture STRUCTURE of top is
  signal BUS2432_1_Q : STD_LOGIC; 
  signal BUS2432_2_Q : STD_LOGIC; 
  signal BUS2432_3_Q : STD_LOGIC; 
  signal BUS2432_5_Q : STD_LOGIC; 
  signal BUS2432_6_Q : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_10_rt_65 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_11_rt_67 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_12_rt_69 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_13_rt_71 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_14_rt_73 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_15_rt_75 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_16_rt_77 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_17_rt_79 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_18_rt_81 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_19_rt_83 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_1_rt_85 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_20_rt_87 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_21_rt_89 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_22_rt_91 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_23_rt_93 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_24_rt_95 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_25_rt_97 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_26_rt_99 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_27_rt_101 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_28_rt_103 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_29_rt_105 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_2_rt_107 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_30_rt_109 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_3_rt_111 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_4_rt_113 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_5_rt_115 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_6_rt_117 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_7_rt_119 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_8_rt_121 : STD_LOGIC; 
  signal U1_Madd_count_add0000_cy_9_rt_123 : STD_LOGIC; 
  signal U1_Madd_count_add0000_xor_31_rt_125 : STD_LOGIC; 
  signal U1_Mcount_count_cy_10_rt_128 : STD_LOGIC; 
  signal U1_Mcount_count_cy_11_rt_130 : STD_LOGIC; 
  signal U1_Mcount_count_cy_12_rt_132 : STD_LOGIC; 
  signal U1_Mcount_count_cy_13_rt_134 : STD_LOGIC; 
  signal U1_Mcount_count_cy_14_rt_136 : STD_LOGIC; 
  signal U1_Mcount_count_cy_15_rt_138 : STD_LOGIC; 
  signal U1_Mcount_count_cy_16_rt_140 : STD_LOGIC; 
  signal U1_Mcount_count_cy_17_rt_142 : STD_LOGIC; 
  signal U1_Mcount_count_cy_18_rt_144 : STD_LOGIC; 
  signal U1_Mcount_count_cy_19_rt_146 : STD_LOGIC; 
  signal U1_Mcount_count_cy_1_rt_148 : STD_LOGIC; 
  signal U1_Mcount_count_cy_20_rt_150 : STD_LOGIC; 
  signal U1_Mcount_count_cy_21_rt_152 : STD_LOGIC; 
  signal U1_Mcount_count_cy_22_rt_154 : STD_LOGIC; 
  signal U1_Mcount_count_cy_23_rt_156 : STD_LOGIC; 
  signal U1_Mcount_count_cy_24_rt_158 : STD_LOGIC; 
  signal U1_Mcount_count_cy_25_rt_160 : STD_LOGIC; 
  signal U1_Mcount_count_cy_26_rt_162 : STD_LOGIC; 
  signal U1_Mcount_count_cy_27_rt_164 : STD_LOGIC; 
  signal U1_Mcount_count_cy_28_rt_166 : STD_LOGIC; 
  signal U1_Mcount_count_cy_29_rt_168 : STD_LOGIC; 
  signal U1_Mcount_count_cy_2_rt_170 : STD_LOGIC; 
  signal U1_Mcount_count_cy_30_rt_172 : STD_LOGIC; 
  signal U1_Mcount_count_cy_3_rt_174 : STD_LOGIC; 
  signal U1_Mcount_count_cy_4_rt_176 : STD_LOGIC; 
  signal U1_Mcount_count_cy_5_rt_178 : STD_LOGIC; 
  signal U1_Mcount_count_cy_6_rt_180 : STD_LOGIC; 
  signal U1_Mcount_count_cy_7_rt_182 : STD_LOGIC; 
  signal U1_Mcount_count_cy_8_rt_184 : STD_LOGIC; 
  signal U1_Mcount_count_cy_9_rt_186 : STD_LOGIC; 
  signal U1_Mcount_count_xor_31_rt_188 : STD_LOGIC; 
  signal U1_N11 : STD_LOGIC; 
  signal U1_N2 : STD_LOGIC; 
  signal U1_N3 : STD_LOGIC; 
  signal U1_clk_1hz_224 : STD_LOGIC; 
  signal U1_clk_1hz_cmp_eq0000116_225 : STD_LOGIC; 
  signal U1_clk_1hz_cmp_eq0000138_226 : STD_LOGIC; 
  signal U1_clk_1hz_cmp_eq0000169_227 : STD_LOGIC; 
  signal U1_clk_1hz_rstpot_228 : STD_LOGIC; 
  signal U1_count_0_rstpot1_230 : STD_LOGIC; 
  signal U1_count_10_rstpot_233 : STD_LOGIC; 
  signal U1_count_11_rstpot_235 : STD_LOGIC; 
  signal U1_count_12_rstpot_237 : STD_LOGIC; 
  signal U1_count_13_rstpot1_239 : STD_LOGIC; 
  signal U1_count_14_rstpot1_241 : STD_LOGIC; 
  signal U1_count_15_rstpot1_243 : STD_LOGIC; 
  signal U1_count_16_rstpot1_245 : STD_LOGIC; 
  signal U1_count_17_rstpot_247 : STD_LOGIC; 
  signal U1_count_18_rstpot1_249 : STD_LOGIC; 
  signal U1_count_19_rstpot_251 : STD_LOGIC; 
  signal U1_count_1_rstpot1_252 : STD_LOGIC; 
  signal U1_count_20_rstpot1_255 : STD_LOGIC; 
  signal U1_count_21_rstpot1_257 : STD_LOGIC; 
  signal U1_count_22_rstpot1_259 : STD_LOGIC; 
  signal U1_count_23_rstpot1_261 : STD_LOGIC; 
  signal U1_count_24_rstpot1_263 : STD_LOGIC; 
  signal U1_count_25_rstpot_265 : STD_LOGIC; 
  signal U1_count_26_rstpot1_267 : STD_LOGIC; 
  signal U1_count_27_rstpot_269 : STD_LOGIC; 
  signal U1_count_28_rstpot_271 : STD_LOGIC; 
  signal U1_count_29_rstpot_273 : STD_LOGIC; 
  signal U1_count_2_rstpot1_274 : STD_LOGIC; 
  signal U1_count_30_rstpot_277 : STD_LOGIC; 
  signal U1_count_31_rstpot_279 : STD_LOGIC; 
  signal U1_count_3_rstpot1_280 : STD_LOGIC; 
  signal U1_count_4_rstpot1_282 : STD_LOGIC; 
  signal U1_count_5_rstpot1_284 : STD_LOGIC; 
  signal U1_count_6_rstpot1_286 : STD_LOGIC; 
  signal U1_count_7_rstpot1_288 : STD_LOGIC; 
  signal U1_count_8_rstpot_290 : STD_LOGIC; 
  signal U1_count_9_rstpot_292 : STD_LOGIC; 
  signal U1_count_and0000 : STD_LOGIC; 
  signal U14_bcd10_0_bdd0 : STD_LOGIC; 
  signal U14_bcd10_0_bdd1 : STD_LOGIC; 
  signal U15_btn_inv : STD_LOGIC; 
  signal U15_pulse_329 : STD_LOGIC; 
  signal U15_pulse_mux0000 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_10_rt_334 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_11_rt_336 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_12_rt_338 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_13_rt_340 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_14_rt_342 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_15_rt_344 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_16_rt_346 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_17_rt_348 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_18_rt_350 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_1_rt_352 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_2_rt_354 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_3_rt_356 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_4_rt_358 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_5_rt_360 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_6_rt_362 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_7_rt_364 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_8_rt_366 : STD_LOGIC; 
  signal U16_Mcount_count_per_cy_9_rt_368 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_0 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_1 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_10 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_11_372 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_12 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_13 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_14 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_15 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_16 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_17 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_18 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_19 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_2 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_3 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_4 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_5 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_6 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_7 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_8 : STD_LOGIC; 
  signal U16_Mcount_count_per_eqn_9 : STD_LOGIC; 
  signal U16_Mcount_count_per_xor_19_rt_390 : STD_LOGIC; 
  signal U16_clk_deb_411 : STD_LOGIC; 
  signal U16_count_per_cmp_eq0000 : STD_LOGIC; 
  signal U16_count_per_cmp_eq000068_433 : STD_LOGIC; 
  signal U16_pb_deb_434 : STD_LOGIC; 
  signal U16_pb_deb_not0001 : STD_LOGIC; 
  signal U16_pb_sampled_436 : STD_LOGIC; 
  signal U17_btn_inv : STD_LOGIC; 
  signal U17_pulse_438 : STD_LOGIC; 
  signal U17_pulse_mux0000 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_10_rt_443 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_11_rt_445 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_12_rt_447 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_13_rt_449 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_14_rt_451 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_15_rt_453 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_16_rt_455 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_17_rt_457 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_18_rt_459 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_1_rt_461 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_2_rt_463 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_3_rt_465 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_4_rt_467 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_5_rt_469 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_6_rt_471 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_7_rt_473 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_8_rt_475 : STD_LOGIC; 
  signal U18_Mcount_count_per_cy_9_rt_477 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_0 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_1 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_10 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_11_481 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_12 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_13 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_14 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_15 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_16 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_17 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_18 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_19 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_2 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_3 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_4 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_5 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_6 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_7 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_8 : STD_LOGIC; 
  signal U18_Mcount_count_per_eqn_9 : STD_LOGIC; 
  signal U18_Mcount_count_per_xor_19_rt_499 : STD_LOGIC; 
  signal U18_clk_deb_520 : STD_LOGIC; 
  signal U18_count_per_cmp_eq0000 : STD_LOGIC; 
  signal U18_count_per_cmp_eq000068_542 : STD_LOGIC; 
  signal U18_pb_deb_543 : STD_LOGIC; 
  signal U18_pb_deb_not0001 : STD_LOGIC; 
  signal U18_pb_sampled_545 : STD_LOGIC; 
  signal U19_btn_inv : STD_LOGIC; 
  signal U19_pulse_547 : STD_LOGIC; 
  signal U19_pulse_mux0000 : STD_LOGIC; 
  signal U2_Mcount_cs : STD_LOGIC; 
  signal U2_Mcount_cs1 : STD_LOGIC; 
  signal U2_Mcount_cs2 : STD_LOGIC; 
  signal U2_Mcount_cs3 : STD_LOGIC; 
  signal U2_Mcount_cs4 : STD_LOGIC; 
  signal U2_Mcount_cs5 : STD_LOGIC; 
  signal U2_Mcount_cs6 : STD_LOGIC; 
  signal U2_N17 : STD_LOGIC; 
  signal U2_N19 : STD_LOGIC; 
  signal U2_N20 : STD_LOGIC; 
  signal U2_N8 : STD_LOGIC; 
  signal U2_ch_mux0001_6_1_575 : STD_LOGIC; 
  signal U2_ch_mux0001_6_2_576 : STD_LOGIC; 
  signal U2_ch_not0001 : STD_LOGIC; 
  signal U2_cm_not0002_592 : STD_LOGIC; 
  signal U2_cs_not0001 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_10_rt_603 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_11_rt_605 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_12_rt_607 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_13_rt_609 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_14_rt_611 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_15_rt_613 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_16_rt_615 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_17_rt_617 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_18_rt_619 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_1_rt_621 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_2_rt_623 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_3_rt_625 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_4_rt_627 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_5_rt_629 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_6_rt_631 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_7_rt_633 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_8_rt_635 : STD_LOGIC; 
  signal U20_Mcount_count_per_cy_9_rt_637 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_0 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_1 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_10 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_11_641 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_12 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_13 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_14 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_15 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_16 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_17 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_18 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_19 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_2 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_3 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_4 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_5 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_6 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_7 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_8 : STD_LOGIC; 
  signal U20_Mcount_count_per_eqn_9 : STD_LOGIC; 
  signal U20_Mcount_count_per_xor_19_rt_659 : STD_LOGIC; 
  signal U20_clk_deb_680 : STD_LOGIC; 
  signal U20_count_per_cmp_eq0000 : STD_LOGIC; 
  signal U20_count_per_cmp_eq000068_702 : STD_LOGIC; 
  signal U20_pb_deb_703 : STD_LOGIC; 
  signal U20_pb_deb_not0001 : STD_LOGIC; 
  signal U20_pb_sampled_705 : STD_LOGIC; 
  signal U21_btn_inv : STD_LOGIC; 
  signal U21_pulse_707 : STD_LOGIC; 
  signal U21_pulse_mux0000 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_10_rt_712 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_11_rt_714 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_12_rt_716 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_13_rt_718 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_14_rt_720 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_15_rt_722 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_16_rt_724 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_17_rt_726 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_18_rt_728 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_1_rt_730 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_2_rt_732 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_3_rt_734 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_4_rt_736 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_5_rt_738 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_6_rt_740 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_7_rt_742 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_8_rt_744 : STD_LOGIC; 
  signal U22_Mcount_count_per_cy_9_rt_746 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_0 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_1 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_10 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_11_750 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_12 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_13 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_14 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_15 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_16 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_17 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_18 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_19 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_2 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_3 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_4 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_5 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_6 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_7 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_8 : STD_LOGIC; 
  signal U22_Mcount_count_per_eqn_9 : STD_LOGIC; 
  signal U22_Mcount_count_per_xor_19_rt_768 : STD_LOGIC; 
  signal U22_clk_deb_789 : STD_LOGIC; 
  signal U22_count_per_cmp_eq0000 : STD_LOGIC; 
  signal U22_count_per_cmp_eq000068_811 : STD_LOGIC; 
  signal U22_pb_deb_812 : STD_LOGIC; 
  signal U22_pb_deb_not0001 : STD_LOGIC; 
  signal U22_pb_sampled_814 : STD_LOGIC; 
  signal U23_btn_inv : STD_LOGIC; 
  signal U23_pulse_816 : STD_LOGIC; 
  signal U23_pulse_mux0000 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_10_rt_821 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_11_rt_823 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_12_rt_825 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_13_rt_827 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_14_rt_829 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_15_rt_831 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_16_rt_833 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_17_rt_835 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_18_rt_837 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_1_rt_839 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_2_rt_841 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_3_rt_843 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_4_rt_845 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_5_rt_847 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_6_rt_849 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_7_rt_851 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_8_rt_853 : STD_LOGIC; 
  signal U24_Mcount_count_per_cy_9_rt_855 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_0 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_1 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_10 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_11_859 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_12 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_13 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_14 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_15 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_16 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_17 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_18 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_19 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_2 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_3 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_4 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_5 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_6 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_7 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_8 : STD_LOGIC; 
  signal U24_Mcount_count_per_eqn_9 : STD_LOGIC; 
  signal U24_Mcount_count_per_xor_19_rt_877 : STD_LOGIC; 
  signal U24_clk_deb_898 : STD_LOGIC; 
  signal U24_count_per_cmp_eq0000 : STD_LOGIC; 
  signal U24_count_per_cmp_eq000068_920 : STD_LOGIC; 
  signal U24_pb_deb_921 : STD_LOGIC; 
  signal U24_pb_deb_not0001 : STD_LOGIC; 
  signal U24_pb_sampled_923 : STD_LOGIC; 
  signal U27_bcd10_0_bdd0 : STD_LOGIC; 
  signal U27_bcd10_0_bdd1 : STD_LOGIC; 
  signal U3_bcd10_0_bdd0 : STD_LOGIC; 
  signal U3_bcd10_0_bdd1 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count1 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count2 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count3 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count4 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count5 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_count6 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez1 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez10 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez11 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez12 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez13 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez14 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez15 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez2 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez3 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez4 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez5 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez6 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez7 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez8 : STD_LOGIC; 
  signal U30_my_hd44780_simple_Mcount_valuez9 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N0 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N11 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N111 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N18 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N2 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N3 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N30 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N33 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N34 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N37 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N62 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N8 : STD_LOGIC; 
  signal U30_my_hd44780_simple_N9 : STD_LOGIC; 
  signal U30_my_hd44780_simple_clk_us_997 : STD_LOGIC; 
  signal U30_my_hd44780_simple_count_cmp_eq0000_1005 : STD_LOGIC; 
  signal U30_my_hd44780_simple_cur_line_0_mux0000_1013 : STD_LOGIC; 
  signal U30_my_hd44780_simple_cur_state_cmp_gt0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_cur_state_mux0000_1_1_1033 : STD_LOGIC; 
  signal U30_my_hd44780_simple_cur_state_mux0000_1_2_1034 : STD_LOGIC; 
  signal U30_my_hd44780_simple_cur_state_or0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_en_started_0_mux0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_1_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_2_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_3_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_5_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_7_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_179_1064 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_253_1065 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_7_1066 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_0_91_1067 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_111_1069 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_12_1070 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_256_1071 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_270_1072 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_34_1073 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_389_1074 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_426_1075 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_465_1076 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_484_1077 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_1_82_1078 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_1224_1080 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_14_1081 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_1687_1082 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_1083 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_1798_1084 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_2217_1085 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_2274_1086 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_253_1087 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_691_1088 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_725_1089 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_2_772_1090 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1045_1092 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1098_1093 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1131_1094 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1143_1095 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1313_1096 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1458_1097 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1477_1098 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_150_1099 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1661_1100 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_1101 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_1872_1102 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_251_1103 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_28_1104 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_424_1105 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_58_1106 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_586_1107 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_636_1108 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_3_705_1109 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_4_113_1111 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_4_27_1112 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_4_57_1113 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_5_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_5_2_1115 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_db_mux0000_7_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_rs_1117 : STD_LOGIC; 
  signal U30_my_hd44780_simple_hd44780_rs_mux0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_10_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_11_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_12_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_3_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_5_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_6_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_7_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_8_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_9_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_10_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_11_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_12_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_3_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_5_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_6_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_7_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_8_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_next_state_mux0000_9_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_reset_inv : STD_LOGIC; 
  signal U30_my_hd44780_simple_running_0_not0001 : STD_LOGIC; 
  signal U30_my_hd44780_simple_state2timer_go_1144 : STD_LOGIC; 
  signal U30_my_hd44780_simple_state2timer_go_mux0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer2state_done_1146 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer2state_done_mux0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1148 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1150 : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_11_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_13_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_15_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_2_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_3_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_5_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_6_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_7_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_8_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_9_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_0_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_11_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_13_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_15_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_2_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_3_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_4_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_5_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_6_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_7_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_8_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_timer_us_value_mux0000_9_Q : STD_LOGIC; 
  signal U30_my_hd44780_simple_valuez_cmp_le0000 : STD_LOGIC; 
  signal U30_my_hd44780_simple_valuez_cmp_le00002104_1193 : STD_LOGIC; 
  signal U30_my_hd44780_simple_valuez_cmp_le0000235_1194 : STD_LOGIC; 
  signal U30_my_hd44780_simple_valuez_not0001 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_10_rt_1198 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_11_rt_1200 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_12_rt_1202 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_13_rt_1204 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_14_rt_1206 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_15_rt_1208 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_16_rt_1210 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_17_rt_1212 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_18_rt_1214 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_19_rt_1216 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_1_rt_1218 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_20_rt_1220 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_21_rt_1222 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_22_rt_1224 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_23_rt_1226 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_24_rt_1228 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_25_rt_1230 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_26_rt_1232 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_27_rt_1234 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_28_rt_1236 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_29_rt_1238 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_2_rt_1240 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_30_rt_1242 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_3_rt_1244 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_4_rt_1246 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_5_rt_1248 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_6_rt_1250 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_7_rt_1252 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_8_rt_1254 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_cy_9_rt_1256 : STD_LOGIC; 
  signal U34_Madd_o_0_add0000_xor_31_rt_1258 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_10_rt_1261 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_11_rt_1263 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_12_rt_1265 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_13_rt_1267 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_14_rt_1269 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_15_rt_1271 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_16_rt_1273 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_17_rt_1275 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_18_rt_1277 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_19_rt_1279 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_1_rt_1281 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_20_rt_1283 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_21_rt_1285 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_22_rt_1287 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_23_rt_1289 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_24_rt_1291 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_25_rt_1293 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_26_rt_1295 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_27_rt_1297 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_28_rt_1299 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_29_rt_1301 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_2_rt_1303 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_30_rt_1305 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_3_rt_1307 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_4_rt_1309 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_5_rt_1311 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_6_rt_1313 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_7_rt_1315 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_8_rt_1317 : STD_LOGIC; 
  signal U34_Mcount_cnt_cy_9_rt_1319 : STD_LOGIC; 
  signal U34_Mcount_cnt_xor_31_rt_1321 : STD_LOGIC; 
  signal U34_buzz_inv : STD_LOGIC; 
  signal U34_cnt_0_rstpot_1356 : STD_LOGIC; 
  signal U34_cnt_10_rstpot_1359 : STD_LOGIC; 
  signal U34_cnt_11_rstpot_1361 : STD_LOGIC; 
  signal U34_cnt_12_rstpot_1363 : STD_LOGIC; 
  signal U34_cnt_13_rstpot_1365 : STD_LOGIC; 
  signal U34_cnt_14_rstpot_1367 : STD_LOGIC; 
  signal U34_cnt_15_rstpot_1369 : STD_LOGIC; 
  signal U34_cnt_16_rstpot_1371 : STD_LOGIC; 
  signal U34_cnt_17_rstpot_1373 : STD_LOGIC; 
  signal U34_cnt_18_rstpot_1375 : STD_LOGIC; 
  signal U34_cnt_19_rstpot_1377 : STD_LOGIC; 
  signal U34_cnt_1_rstpot_1378 : STD_LOGIC; 
  signal U34_cnt_20_rstpot_1381 : STD_LOGIC; 
  signal U34_cnt_21_rstpot_1383 : STD_LOGIC; 
  signal U34_cnt_22_rstpot_1385 : STD_LOGIC; 
  signal U34_cnt_23_rstpot_1387 : STD_LOGIC; 
  signal U34_cnt_24_rstpot_1389 : STD_LOGIC; 
  signal U34_cnt_25_rstpot_1391 : STD_LOGIC; 
  signal U34_cnt_26_rstpot_1393 : STD_LOGIC; 
  signal U34_cnt_27_rstpot_1395 : STD_LOGIC; 
  signal U34_cnt_28_rstpot_1397 : STD_LOGIC; 
  signal U34_cnt_29_rstpot_1399 : STD_LOGIC; 
  signal U34_cnt_2_rstpot_1400 : STD_LOGIC; 
  signal U34_cnt_30_rstpot_1403 : STD_LOGIC; 
  signal U34_cnt_31_rstpot_1405 : STD_LOGIC; 
  signal U34_cnt_3_rstpot_1406 : STD_LOGIC; 
  signal U34_cnt_4_rstpot_1408 : STD_LOGIC; 
  signal U34_cnt_5_rstpot_1410 : STD_LOGIC; 
  signal U34_cnt_6_rstpot_1412 : STD_LOGIC; 
  signal U34_cnt_7_rstpot_1414 : STD_LOGIC; 
  signal U34_cnt_8_rstpot_1416 : STD_LOGIC; 
  signal U34_cnt_9_rstpot_1418 : STD_LOGIC; 
  signal U34_cnt_or0000 : STD_LOGIC; 
  signal U34_o_0_cmp_eq0000 : STD_LOGIC; 
  signal U34_o_0_cmp_eq0000107_1458 : STD_LOGIC; 
  signal U34_o_0_cmp_eq0000138_1459 : STD_LOGIC; 
  signal U34_o_0_cmp_eq0000185_1460 : STD_LOGIC; 
  signal U34_o_0_cmp_eq000026_1461 : STD_LOGIC; 
  signal U34_o_0_cmp_eq000040_1462 : STD_LOGIC; 
  signal U36_Mcount_cs : STD_LOGIC; 
  signal U36_Mcount_cs1 : STD_LOGIC; 
  signal U36_Mcount_cs2 : STD_LOGIC; 
  signal U36_Mcount_cs3 : STD_LOGIC; 
  signal U36_Mcount_cs4 : STD_LOGIC; 
  signal U36_Mcount_cs5 : STD_LOGIC; 
  signal U36_N10 : STD_LOGIC; 
  signal U36_N13 : STD_LOGIC; 
  signal U36_N14 : STD_LOGIC; 
  signal U36_N15 : STD_LOGIC; 
  signal U36_N16 : STD_LOGIC; 
  signal U36_N29 : STD_LOGIC; 
  signal U36_N3 : STD_LOGIC; 
  signal U36_N7 : STD_LOGIC; 
  signal U36_cm_not0002 : STD_LOGIC; 
  signal U36_cs_not0003 : STD_LOGIC; 
  signal U37_mux0001 : STD_LOGIC; 
  signal U37_buzz_1504 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd1_1505 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd1_In : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd1_In184_1507 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd2_1508 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd2_In_1509 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd3_1510 : STD_LOGIC; 
  signal U37_cur_state_FSM_FFd3_In : STD_LOGIC; 
  signal U37_cur_state_FSM_N3 : STD_LOGIC; 
  signal U37_cur_state_cmp_eq0002 : STD_LOGIC; 
  signal U37_cur_state_cmp_eq0003 : STD_LOGIC; 
  signal U37_cur_state_cmp_eq0004 : STD_LOGIC; 
  signal U37_oven_1516 : STD_LOGIC; 
  signal U37_reset_time_1517 : STD_LOGIC; 
  signal U37_reset_timer_1518 : STD_LOGIC; 
  signal U37_set_time_1519 : STD_LOGIC; 
  signal U37_set_timer_1520 : STD_LOGIC; 
  signal U5_bcd10_0_bdd0 : STD_LOGIC; 
  signal U5_bcd10_0_bdd1 : STD_LOGIC; 
  signal U6_bcd10_0_bdd0 : STD_LOGIC; 
  signal U6_bcd10_0_bdd1 : STD_LOGIC; 
  signal clk_BUFGP_1530 : STD_LOGIC; 
  signal pb_canceltimer_IBUF_1544 : STD_LOGIC; 
  signal pb_hour_IBUF_1546 : STD_LOGIC; 
  signal pb_min_IBUF_1548 : STD_LOGIC; 
  signal pb_settime_IBUF_1550 : STD_LOGIC; 
  signal pb_settimer_IBUF_1552 : STD_LOGIC; 
  signal rst_IBUF_1554 : STD_LOGIC; 
  signal BUS1989 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal U1_Madd_count_add0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal U1_Madd_count_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_Mcount_count_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal U1_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U1_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U1_count_add0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U15_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U16_Mcount_count_per_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal U16_Mcount_count_per_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U16_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U16_count_per : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U17_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U18_Mcount_count_per_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal U18_Mcount_count_per_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U18_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U18_count_per : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U19_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_ch : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U2_ch_mux0001 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U2_cm : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U2_cm_mux0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U2_cs : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U20_Mcount_count_per_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal U20_Mcount_count_per_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U20_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U20_count_per : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U21_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U22_Mcount_count_per_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal U22_Mcount_count_per_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U22_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U22_count_per : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U23_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U24_Mcount_count_per_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal U24_Mcount_count_per_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U24_Result : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U24_count_per : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal U30_my_hd44780_simple_Madd_cur_ddram_addr_addsub0000_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal U30_my_hd44780_simple_Mcount_count_cy : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal U30_my_hd44780_simple_Mcount_valuez_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U30_my_hd44780_simple_Mcount_valuez_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U30_my_hd44780_simple_count : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U30_my_hd44780_simple_cur_ddram_addr : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U30_my_hd44780_simple_cur_ddram_addr_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U30_my_hd44780_simple_cur_line : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U30_my_hd44780_simple_cur_state : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal U30_my_hd44780_simple_cur_state_mux0000 : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal U30_my_hd44780_simple_en_count : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U30_my_hd44780_simple_en_count_mux0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U30_my_hd44780_simple_en_started : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U30_my_hd44780_simple_running : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U30_my_hd44780_simple_valuez : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U34_Madd_o_0_add0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal U34_Madd_o_0_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U34_Mcount_cnt_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal U34_Mcount_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U34_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U34_cnt : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U34_leds : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U34_o : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U34_o_0_add0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal U36_Mcount_cs_lut : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal U36_cm : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U36_cm_mux0002 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U36_cs : STD_LOGIC_VECTOR ( 5 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => BUS2432_6_Q
    );
  XST_VCC : VCC
    port map (
      P => BUS2432_5_Q
    );
  U23_pulse : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U24_pb_deb_921,
      D => U23_pulse_mux0000,
      Q => U23_pulse_816
    );
  U23_state_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => BUS2432_5_Q,
      R => U23_btn_inv,
      Q => U23_state(0)
    );
  U21_pulse : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U22_pb_deb_812,
      D => U21_pulse_mux0000,
      Q => U21_pulse_707
    );
  U21_state_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => BUS2432_5_Q,
      R => U21_btn_inv,
      Q => U21_state(0)
    );
  U19_pulse : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U20_pb_deb_703,
      D => U19_pulse_mux0000,
      Q => U19_pulse_547
    );
  U19_state_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => BUS2432_5_Q,
      R => U19_btn_inv,
      Q => U19_state(0)
    );
  U17_pulse : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U18_pb_deb_543,
      D => U17_pulse_mux0000,
      Q => U17_pulse_438
    );
  U17_state_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => BUS2432_5_Q,
      R => U17_btn_inv,
      Q => U17_state(0)
    );
  U15_pulse : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U16_pb_deb_434,
      D => U15_pulse_mux0000,
      Q => U15_pulse_329
    );
  U15_state_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => BUS2432_5_Q,
      R => U15_btn_inv,
      Q => U15_state(0)
    );
  U1_Mcount_count_xor_31_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(30),
      LI => U1_Mcount_count_xor_31_rt_188,
      O => U1_Result(31)
    );
  U1_Mcount_count_xor_30_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(29),
      LI => U1_Mcount_count_cy_30_rt_172,
      O => U1_Result(30)
    );
  U1_Mcount_count_cy_30_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(29),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_30_rt_172,
      O => U1_Mcount_count_cy(30)
    );
  U1_Mcount_count_xor_29_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(28),
      LI => U1_Mcount_count_cy_29_rt_168,
      O => U1_Result(29)
    );
  U1_Mcount_count_cy_29_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(28),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_29_rt_168,
      O => U1_Mcount_count_cy(29)
    );
  U1_Mcount_count_xor_28_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(27),
      LI => U1_Mcount_count_cy_28_rt_166,
      O => U1_Result(28)
    );
  U1_Mcount_count_cy_28_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(27),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_28_rt_166,
      O => U1_Mcount_count_cy(28)
    );
  U1_Mcount_count_xor_27_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(26),
      LI => U1_Mcount_count_cy_27_rt_164,
      O => U1_Result(27)
    );
  U1_Mcount_count_cy_27_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(26),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_27_rt_164,
      O => U1_Mcount_count_cy(27)
    );
  U1_Mcount_count_xor_26_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(25),
      LI => U1_Mcount_count_cy_26_rt_162,
      O => U1_Result(26)
    );
  U1_Mcount_count_cy_26_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(25),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_26_rt_162,
      O => U1_Mcount_count_cy(26)
    );
  U1_Mcount_count_xor_25_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(24),
      LI => U1_Mcount_count_cy_25_rt_160,
      O => U1_Result(25)
    );
  U1_Mcount_count_cy_25_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(24),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_25_rt_160,
      O => U1_Mcount_count_cy(25)
    );
  U1_Mcount_count_xor_24_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(23),
      LI => U1_Mcount_count_cy_24_rt_158,
      O => U1_Result(24)
    );
  U1_Mcount_count_cy_24_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(23),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_24_rt_158,
      O => U1_Mcount_count_cy(24)
    );
  U1_Mcount_count_xor_23_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(22),
      LI => U1_Mcount_count_cy_23_rt_156,
      O => U1_Result(23)
    );
  U1_Mcount_count_cy_23_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(22),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_23_rt_156,
      O => U1_Mcount_count_cy(23)
    );
  U1_Mcount_count_xor_22_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(21),
      LI => U1_Mcount_count_cy_22_rt_154,
      O => U1_Result(22)
    );
  U1_Mcount_count_cy_22_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(21),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_22_rt_154,
      O => U1_Mcount_count_cy(22)
    );
  U1_Mcount_count_xor_21_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(20),
      LI => U1_Mcount_count_cy_21_rt_152,
      O => U1_Result(21)
    );
  U1_Mcount_count_cy_21_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(20),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_21_rt_152,
      O => U1_Mcount_count_cy(21)
    );
  U1_Mcount_count_xor_20_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(19),
      LI => U1_Mcount_count_cy_20_rt_150,
      O => U1_Result(20)
    );
  U1_Mcount_count_cy_20_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(19),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_20_rt_150,
      O => U1_Mcount_count_cy(20)
    );
  U1_Mcount_count_xor_19_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(18),
      LI => U1_Mcount_count_cy_19_rt_146,
      O => U1_Result(19)
    );
  U1_Mcount_count_cy_19_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(18),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_19_rt_146,
      O => U1_Mcount_count_cy(19)
    );
  U1_Mcount_count_xor_18_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(17),
      LI => U1_Mcount_count_cy_18_rt_144,
      O => U1_Result(18)
    );
  U1_Mcount_count_cy_18_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(17),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_18_rt_144,
      O => U1_Mcount_count_cy(18)
    );
  U1_Mcount_count_xor_17_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(16),
      LI => U1_Mcount_count_cy_17_rt_142,
      O => U1_Result(17)
    );
  U1_Mcount_count_cy_17_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(16),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_17_rt_142,
      O => U1_Mcount_count_cy(17)
    );
  U1_Mcount_count_xor_16_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(15),
      LI => U1_Mcount_count_cy_16_rt_140,
      O => U1_Result(16)
    );
  U1_Mcount_count_cy_16_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(15),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_16_rt_140,
      O => U1_Mcount_count_cy(16)
    );
  U1_Mcount_count_xor_15_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(14),
      LI => U1_Mcount_count_cy_15_rt_138,
      O => U1_Result(15)
    );
  U1_Mcount_count_cy_15_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(14),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_15_rt_138,
      O => U1_Mcount_count_cy(15)
    );
  U1_Mcount_count_xor_14_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(13),
      LI => U1_Mcount_count_cy_14_rt_136,
      O => U1_Result(14)
    );
  U1_Mcount_count_cy_14_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(13),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_14_rt_136,
      O => U1_Mcount_count_cy(14)
    );
  U1_Mcount_count_xor_13_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(12),
      LI => U1_Mcount_count_cy_13_rt_134,
      O => U1_Result(13)
    );
  U1_Mcount_count_cy_13_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(12),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_13_rt_134,
      O => U1_Mcount_count_cy(13)
    );
  U1_Mcount_count_xor_12_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(11),
      LI => U1_Mcount_count_cy_12_rt_132,
      O => U1_Result(12)
    );
  U1_Mcount_count_cy_12_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(11),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_12_rt_132,
      O => U1_Mcount_count_cy(12)
    );
  U1_Mcount_count_xor_11_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(10),
      LI => U1_Mcount_count_cy_11_rt_130,
      O => U1_Result(11)
    );
  U1_Mcount_count_cy_11_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(10),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_11_rt_130,
      O => U1_Mcount_count_cy(11)
    );
  U1_Mcount_count_xor_10_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(9),
      LI => U1_Mcount_count_cy_10_rt_128,
      O => U1_Result(10)
    );
  U1_Mcount_count_cy_10_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(9),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_10_rt_128,
      O => U1_Mcount_count_cy(10)
    );
  U1_Mcount_count_xor_9_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(8),
      LI => U1_Mcount_count_cy_9_rt_186,
      O => U1_Result(9)
    );
  U1_Mcount_count_cy_9_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(8),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_9_rt_186,
      O => U1_Mcount_count_cy(9)
    );
  U1_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(7),
      LI => U1_Mcount_count_cy_8_rt_184,
      O => U1_Result(8)
    );
  U1_Mcount_count_cy_8_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(7),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_8_rt_184,
      O => U1_Mcount_count_cy(8)
    );
  U1_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(6),
      LI => U1_Mcount_count_cy_7_rt_182,
      O => U1_Result(7)
    );
  U1_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(6),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_7_rt_182,
      O => U1_Mcount_count_cy(7)
    );
  U1_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(5),
      LI => U1_Mcount_count_cy_6_rt_180,
      O => U1_Result(6)
    );
  U1_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(5),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_6_rt_180,
      O => U1_Mcount_count_cy(6)
    );
  U1_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(4),
      LI => U1_Mcount_count_cy_5_rt_178,
      O => U1_Result(5)
    );
  U1_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(4),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_5_rt_178,
      O => U1_Mcount_count_cy(5)
    );
  U1_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(3),
      LI => U1_Mcount_count_cy_4_rt_176,
      O => U1_Result(4)
    );
  U1_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(3),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_4_rt_176,
      O => U1_Mcount_count_cy(4)
    );
  U1_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(2),
      LI => U1_Mcount_count_cy_3_rt_174,
      O => U1_Result(3)
    );
  U1_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(2),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_3_rt_174,
      O => U1_Mcount_count_cy(3)
    );
  U1_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(1),
      LI => U1_Mcount_count_cy_2_rt_170,
      O => U1_Result(2)
    );
  U1_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(1),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_2_rt_170,
      O => U1_Mcount_count_cy(2)
    );
  U1_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => U1_Mcount_count_cy(0),
      LI => U1_Mcount_count_cy_1_rt_148,
      O => U1_Result(1)
    );
  U1_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => U1_Mcount_count_cy(0),
      DI => BUS2432_6_Q,
      S => U1_Mcount_count_cy_1_rt_148,
      O => U1_Mcount_count_cy(1)
    );
  U1_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => BUS2432_6_Q,
      LI => U1_Mcount_count_lut(0),
      O => U1_Result(0)
    );
  U1_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => BUS2432_6_Q,
      DI => BUS2432_5_Q,
      S => U1_Mcount_count_lut(0),
      O => U1_Mcount_count_cy(0)
    );
  U1_Madd_count_add0000_xor_31_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(30),
      LI => U1_Madd_count_add0000_xor_31_rt_125,
      O => U1_count_add0000(31)
    );
  U1_Madd_count_add0000_xor_30_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(29),
      LI => U1_Madd_count_add0000_cy_30_rt_109,
      O => U1_count_add0000(30)
    );
  U1_Madd_count_add0000_cy_30_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(29),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_30_rt_109,
      O => U1_Madd_count_add0000_cy(30)
    );
  U1_Madd_count_add0000_xor_29_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(28),
      LI => U1_Madd_count_add0000_cy_29_rt_105,
      O => U1_count_add0000(29)
    );
  U1_Madd_count_add0000_cy_29_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(28),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_29_rt_105,
      O => U1_Madd_count_add0000_cy(29)
    );
  U1_Madd_count_add0000_xor_28_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(27),
      LI => U1_Madd_count_add0000_cy_28_rt_103,
      O => U1_count_add0000(28)
    );
  U1_Madd_count_add0000_cy_28_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(27),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_28_rt_103,
      O => U1_Madd_count_add0000_cy(28)
    );
  U1_Madd_count_add0000_xor_27_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(26),
      LI => U1_Madd_count_add0000_cy_27_rt_101,
      O => U1_count_add0000(27)
    );
  U1_Madd_count_add0000_cy_27_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(26),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_27_rt_101,
      O => U1_Madd_count_add0000_cy(27)
    );
  U1_Madd_count_add0000_xor_26_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(25),
      LI => U1_Madd_count_add0000_cy_26_rt_99,
      O => U1_count_add0000(26)
    );
  U1_Madd_count_add0000_cy_26_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(25),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_26_rt_99,
      O => U1_Madd_count_add0000_cy(26)
    );
  U1_Madd_count_add0000_xor_25_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(24),
      LI => U1_Madd_count_add0000_cy_25_rt_97,
      O => U1_count_add0000(25)
    );
  U1_Madd_count_add0000_cy_25_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(24),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_25_rt_97,
      O => U1_Madd_count_add0000_cy(25)
    );
  U1_Madd_count_add0000_xor_24_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(23),
      LI => U1_Madd_count_add0000_cy_24_rt_95,
      O => U1_count_add0000(24)
    );
  U1_Madd_count_add0000_cy_24_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(23),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_24_rt_95,
      O => U1_Madd_count_add0000_cy(24)
    );
  U1_Madd_count_add0000_xor_23_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(22),
      LI => U1_Madd_count_add0000_cy_23_rt_93,
      O => U1_count_add0000(23)
    );
  U1_Madd_count_add0000_cy_23_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(22),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_23_rt_93,
      O => U1_Madd_count_add0000_cy(23)
    );
  U1_Madd_count_add0000_xor_22_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(21),
      LI => U1_Madd_count_add0000_cy_22_rt_91,
      O => U1_count_add0000(22)
    );
  U1_Madd_count_add0000_cy_22_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(21),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_22_rt_91,
      O => U1_Madd_count_add0000_cy(22)
    );
  U1_Madd_count_add0000_xor_21_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(20),
      LI => U1_Madd_count_add0000_cy_21_rt_89,
      O => U1_count_add0000(21)
    );
  U1_Madd_count_add0000_cy_21_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(20),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_21_rt_89,
      O => U1_Madd_count_add0000_cy(21)
    );
  U1_Madd_count_add0000_xor_20_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(19),
      LI => U1_Madd_count_add0000_cy_20_rt_87,
      O => U1_count_add0000(20)
    );
  U1_Madd_count_add0000_cy_20_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(19),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_20_rt_87,
      O => U1_Madd_count_add0000_cy(20)
    );
  U1_Madd_count_add0000_xor_19_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(18),
      LI => U1_Madd_count_add0000_cy_19_rt_83,
      O => U1_count_add0000(19)
    );
  U1_Madd_count_add0000_cy_19_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(18),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_19_rt_83,
      O => U1_Madd_count_add0000_cy(19)
    );
  U1_Madd_count_add0000_xor_18_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(17),
      LI => U1_Madd_count_add0000_cy_18_rt_81,
      O => U1_count_add0000(18)
    );
  U1_Madd_count_add0000_cy_18_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(17),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_18_rt_81,
      O => U1_Madd_count_add0000_cy(18)
    );
  U1_Madd_count_add0000_xor_17_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(16),
      LI => U1_Madd_count_add0000_cy_17_rt_79,
      O => U1_count_add0000(17)
    );
  U1_Madd_count_add0000_cy_17_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(16),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_17_rt_79,
      O => U1_Madd_count_add0000_cy(17)
    );
  U1_Madd_count_add0000_xor_16_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(15),
      LI => U1_Madd_count_add0000_cy_16_rt_77,
      O => U1_count_add0000(16)
    );
  U1_Madd_count_add0000_cy_16_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(15),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_16_rt_77,
      O => U1_Madd_count_add0000_cy(16)
    );
  U1_Madd_count_add0000_xor_15_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(14),
      LI => U1_Madd_count_add0000_cy_15_rt_75,
      O => U1_count_add0000(15)
    );
  U1_Madd_count_add0000_cy_15_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(14),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_15_rt_75,
      O => U1_Madd_count_add0000_cy(15)
    );
  U1_Madd_count_add0000_xor_14_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(13),
      LI => U1_Madd_count_add0000_cy_14_rt_73,
      O => U1_count_add0000(14)
    );
  U1_Madd_count_add0000_cy_14_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(13),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_14_rt_73,
      O => U1_Madd_count_add0000_cy(14)
    );
  U1_Madd_count_add0000_xor_13_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(12),
      LI => U1_Madd_count_add0000_cy_13_rt_71,
      O => U1_count_add0000(13)
    );
  U1_Madd_count_add0000_cy_13_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(12),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_13_rt_71,
      O => U1_Madd_count_add0000_cy(13)
    );
  U1_Madd_count_add0000_xor_12_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(11),
      LI => U1_Madd_count_add0000_cy_12_rt_69,
      O => U1_count_add0000(12)
    );
  U1_Madd_count_add0000_cy_12_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(11),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_12_rt_69,
      O => U1_Madd_count_add0000_cy(12)
    );
  U1_Madd_count_add0000_xor_11_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(10),
      LI => U1_Madd_count_add0000_cy_11_rt_67,
      O => U1_count_add0000(11)
    );
  U1_Madd_count_add0000_cy_11_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(10),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_11_rt_67,
      O => U1_Madd_count_add0000_cy(11)
    );
  U1_Madd_count_add0000_xor_10_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(9),
      LI => U1_Madd_count_add0000_cy_10_rt_65,
      O => U1_count_add0000(10)
    );
  U1_Madd_count_add0000_cy_10_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(9),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_10_rt_65,
      O => U1_Madd_count_add0000_cy(10)
    );
  U1_Madd_count_add0000_xor_9_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(8),
      LI => U1_Madd_count_add0000_cy_9_rt_123,
      O => U1_count_add0000(9)
    );
  U1_Madd_count_add0000_cy_9_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(8),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_9_rt_123,
      O => U1_Madd_count_add0000_cy(9)
    );
  U1_Madd_count_add0000_xor_8_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(7),
      LI => U1_Madd_count_add0000_cy_8_rt_121,
      O => U1_count_add0000(8)
    );
  U1_Madd_count_add0000_cy_8_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(7),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_8_rt_121,
      O => U1_Madd_count_add0000_cy(8)
    );
  U1_Madd_count_add0000_xor_7_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(6),
      LI => U1_Madd_count_add0000_cy_7_rt_119,
      O => U1_count_add0000(7)
    );
  U1_Madd_count_add0000_cy_7_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(6),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_7_rt_119,
      O => U1_Madd_count_add0000_cy(7)
    );
  U1_Madd_count_add0000_xor_6_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(5),
      LI => U1_Madd_count_add0000_cy_6_rt_117,
      O => U1_count_add0000(6)
    );
  U1_Madd_count_add0000_cy_6_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(5),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_6_rt_117,
      O => U1_Madd_count_add0000_cy(6)
    );
  U1_Madd_count_add0000_xor_5_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(4),
      LI => U1_Madd_count_add0000_cy_5_rt_115,
      O => U1_count_add0000(5)
    );
  U1_Madd_count_add0000_cy_5_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(4),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_5_rt_115,
      O => U1_Madd_count_add0000_cy(5)
    );
  U1_Madd_count_add0000_xor_4_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(3),
      LI => U1_Madd_count_add0000_cy_4_rt_113,
      O => U1_count_add0000(4)
    );
  U1_Madd_count_add0000_cy_4_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(3),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_4_rt_113,
      O => U1_Madd_count_add0000_cy(4)
    );
  U1_Madd_count_add0000_xor_3_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(2),
      LI => U1_Madd_count_add0000_cy_3_rt_111,
      O => U1_count_add0000(3)
    );
  U1_Madd_count_add0000_cy_3_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(2),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_3_rt_111,
      O => U1_Madd_count_add0000_cy(3)
    );
  U1_Madd_count_add0000_xor_2_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(1),
      LI => U1_Madd_count_add0000_cy_2_rt_107,
      O => U1_count_add0000(2)
    );
  U1_Madd_count_add0000_cy_2_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(1),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_2_rt_107,
      O => U1_Madd_count_add0000_cy(2)
    );
  U1_Madd_count_add0000_xor_1_Q : XORCY
    port map (
      CI => U1_Madd_count_add0000_cy(0),
      LI => U1_Madd_count_add0000_cy_1_rt_85,
      O => U1_count_add0000(1)
    );
  U1_Madd_count_add0000_cy_1_Q : MUXCY
    port map (
      CI => U1_Madd_count_add0000_cy(0),
      DI => BUS2432_6_Q,
      S => U1_Madd_count_add0000_cy_1_rt_85,
      O => U1_Madd_count_add0000_cy(1)
    );
  U1_Madd_count_add0000_xor_0_Q : XORCY
    port map (
      CI => BUS2432_6_Q,
      LI => U1_Madd_count_add0000_lut(0),
      O => U1_count_add0000(0)
    );
  U1_Madd_count_add0000_cy_0_Q : MUXCY
    port map (
      CI => BUS2432_6_Q,
      DI => BUS2432_5_Q,
      S => U1_Madd_count_add0000_lut(0),
      O => U1_Madd_count_add0000_cy(0)
    );
  U24_Mcount_count_per_xor_19_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(18),
      LI => U24_Mcount_count_per_xor_19_rt_877,
      O => U24_Result(19)
    );
  U24_Mcount_count_per_xor_18_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(17),
      LI => U24_Mcount_count_per_cy_18_rt_837,
      O => U24_Result(18)
    );
  U24_Mcount_count_per_cy_18_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(17),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_18_rt_837,
      O => U24_Mcount_count_per_cy(18)
    );
  U24_Mcount_count_per_xor_17_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(16),
      LI => U24_Mcount_count_per_cy_17_rt_835,
      O => U24_Result(17)
    );
  U24_Mcount_count_per_cy_17_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(16),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_17_rt_835,
      O => U24_Mcount_count_per_cy(17)
    );
  U24_Mcount_count_per_xor_16_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(15),
      LI => U24_Mcount_count_per_cy_16_rt_833,
      O => U24_Result(16)
    );
  U24_Mcount_count_per_cy_16_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(15),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_16_rt_833,
      O => U24_Mcount_count_per_cy(16)
    );
  U24_Mcount_count_per_xor_15_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(14),
      LI => U24_Mcount_count_per_cy_15_rt_831,
      O => U24_Result(15)
    );
  U24_Mcount_count_per_cy_15_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(14),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_15_rt_831,
      O => U24_Mcount_count_per_cy(15)
    );
  U24_Mcount_count_per_xor_14_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(13),
      LI => U24_Mcount_count_per_cy_14_rt_829,
      O => U24_Result(14)
    );
  U24_Mcount_count_per_cy_14_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(13),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_14_rt_829,
      O => U24_Mcount_count_per_cy(14)
    );
  U24_Mcount_count_per_xor_13_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(12),
      LI => U24_Mcount_count_per_cy_13_rt_827,
      O => U24_Result(13)
    );
  U24_Mcount_count_per_cy_13_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(12),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_13_rt_827,
      O => U24_Mcount_count_per_cy(13)
    );
  U24_Mcount_count_per_xor_12_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(11),
      LI => U24_Mcount_count_per_cy_12_rt_825,
      O => U24_Result(12)
    );
  U24_Mcount_count_per_cy_12_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(11),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_12_rt_825,
      O => U24_Mcount_count_per_cy(12)
    );
  U24_Mcount_count_per_xor_11_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(10),
      LI => U24_Mcount_count_per_cy_11_rt_823,
      O => U24_Result(11)
    );
  U24_Mcount_count_per_cy_11_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(10),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_11_rt_823,
      O => U24_Mcount_count_per_cy(11)
    );
  U24_Mcount_count_per_xor_10_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(9),
      LI => U24_Mcount_count_per_cy_10_rt_821,
      O => U24_Result(10)
    );
  U24_Mcount_count_per_cy_10_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(9),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_10_rt_821,
      O => U24_Mcount_count_per_cy(10)
    );
  U24_Mcount_count_per_xor_9_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(8),
      LI => U24_Mcount_count_per_cy_9_rt_855,
      O => U24_Result(9)
    );
  U24_Mcount_count_per_cy_9_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(8),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_9_rt_855,
      O => U24_Mcount_count_per_cy(9)
    );
  U24_Mcount_count_per_xor_8_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(7),
      LI => U24_Mcount_count_per_cy_8_rt_853,
      O => U24_Result(8)
    );
  U24_Mcount_count_per_cy_8_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(7),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_8_rt_853,
      O => U24_Mcount_count_per_cy(8)
    );
  U24_Mcount_count_per_xor_7_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(6),
      LI => U24_Mcount_count_per_cy_7_rt_851,
      O => U24_Result(7)
    );
  U24_Mcount_count_per_cy_7_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(6),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_7_rt_851,
      O => U24_Mcount_count_per_cy(7)
    );
  U24_Mcount_count_per_xor_6_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(5),
      LI => U24_Mcount_count_per_cy_6_rt_849,
      O => U24_Result(6)
    );
  U24_Mcount_count_per_cy_6_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(5),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_6_rt_849,
      O => U24_Mcount_count_per_cy(6)
    );
  U24_Mcount_count_per_xor_5_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(4),
      LI => U24_Mcount_count_per_cy_5_rt_847,
      O => U24_Result(5)
    );
  U24_Mcount_count_per_cy_5_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(4),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_5_rt_847,
      O => U24_Mcount_count_per_cy(5)
    );
  U24_Mcount_count_per_xor_4_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(3),
      LI => U24_Mcount_count_per_cy_4_rt_845,
      O => U24_Result(4)
    );
  U24_Mcount_count_per_cy_4_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(3),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_4_rt_845,
      O => U24_Mcount_count_per_cy(4)
    );
  U24_Mcount_count_per_xor_3_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(2),
      LI => U24_Mcount_count_per_cy_3_rt_843,
      O => U24_Result(3)
    );
  U24_Mcount_count_per_cy_3_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(2),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_3_rt_843,
      O => U24_Mcount_count_per_cy(3)
    );
  U24_Mcount_count_per_xor_2_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(1),
      LI => U24_Mcount_count_per_cy_2_rt_841,
      O => U24_Result(2)
    );
  U24_Mcount_count_per_cy_2_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(1),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_2_rt_841,
      O => U24_Mcount_count_per_cy(2)
    );
  U24_Mcount_count_per_xor_1_Q : XORCY
    port map (
      CI => U24_Mcount_count_per_cy(0),
      LI => U24_Mcount_count_per_cy_1_rt_839,
      O => U24_Result(1)
    );
  U24_Mcount_count_per_cy_1_Q : MUXCY
    port map (
      CI => U24_Mcount_count_per_cy(0),
      DI => BUS2432_6_Q,
      S => U24_Mcount_count_per_cy_1_rt_839,
      O => U24_Mcount_count_per_cy(1)
    );
  U24_Mcount_count_per_xor_0_Q : XORCY
    port map (
      CI => BUS2432_6_Q,
      LI => U24_Mcount_count_per_lut(0),
      O => U24_Result(0)
    );
  U24_Mcount_count_per_cy_0_Q : MUXCY
    port map (
      CI => BUS2432_6_Q,
      DI => BUS2432_5_Q,
      S => U24_Mcount_count_per_lut(0),
      O => U24_Mcount_count_per_cy(0)
    );
  U24_count_per_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_19,
      Q => U24_count_per(19)
    );
  U24_count_per_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_18,
      Q => U24_count_per(18)
    );
  U24_count_per_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_17,
      Q => U24_count_per(17)
    );
  U24_count_per_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_16,
      Q => U24_count_per(16)
    );
  U24_count_per_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_15,
      Q => U24_count_per(15)
    );
  U24_count_per_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_14,
      Q => U24_count_per(14)
    );
  U24_count_per_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_13,
      Q => U24_count_per(13)
    );
  U24_count_per_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_12,
      Q => U24_count_per(12)
    );
  U24_count_per_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_11_859,
      Q => U24_count_per(11)
    );
  U24_count_per_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_10,
      Q => U24_count_per(10)
    );
  U24_count_per_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_9,
      Q => U24_count_per(9)
    );
  U24_count_per_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_8,
      Q => U24_count_per(8)
    );
  U24_count_per_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_7,
      Q => U24_count_per(7)
    );
  U24_count_per_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_6,
      Q => U24_count_per(6)
    );
  U24_count_per_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_5,
      Q => U24_count_per(5)
    );
  U24_count_per_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_4,
      Q => U24_count_per(4)
    );
  U24_count_per_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_3,
      Q => U24_count_per(3)
    );
  U24_count_per_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_2,
      Q => U24_count_per(2)
    );
  U24_count_per_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_1,
      Q => U24_count_per(1)
    );
  U24_count_per_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_Mcount_count_per_eqn_0,
      Q => U24_count_per(0)
    );
  U24_pb_sampled : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U24_clk_deb_898,
      D => pb_canceltimer_IBUF_1544,
      Q => U24_pb_sampled_923
    );
  U24_pb_deb : FDE
    port map (
      C => clk_BUFGP_1530,
      CE => U24_pb_deb_not0001,
      D => pb_canceltimer_IBUF_1544,
      Q => U24_pb_deb_921
    );
  U24_clk_deb : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U24_count_per_cmp_eq0000,
      Q => U24_clk_deb_898
    );
  U22_Mcount_count_per_xor_19_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(18),
      LI => U22_Mcount_count_per_xor_19_rt_768,
      O => U22_Result(19)
    );
  U22_Mcount_count_per_xor_18_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(17),
      LI => U22_Mcount_count_per_cy_18_rt_728,
      O => U22_Result(18)
    );
  U22_Mcount_count_per_cy_18_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(17),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_18_rt_728,
      O => U22_Mcount_count_per_cy(18)
    );
  U22_Mcount_count_per_xor_17_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(16),
      LI => U22_Mcount_count_per_cy_17_rt_726,
      O => U22_Result(17)
    );
  U22_Mcount_count_per_cy_17_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(16),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_17_rt_726,
      O => U22_Mcount_count_per_cy(17)
    );
  U22_Mcount_count_per_xor_16_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(15),
      LI => U22_Mcount_count_per_cy_16_rt_724,
      O => U22_Result(16)
    );
  U22_Mcount_count_per_cy_16_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(15),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_16_rt_724,
      O => U22_Mcount_count_per_cy(16)
    );
  U22_Mcount_count_per_xor_15_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(14),
      LI => U22_Mcount_count_per_cy_15_rt_722,
      O => U22_Result(15)
    );
  U22_Mcount_count_per_cy_15_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(14),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_15_rt_722,
      O => U22_Mcount_count_per_cy(15)
    );
  U22_Mcount_count_per_xor_14_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(13),
      LI => U22_Mcount_count_per_cy_14_rt_720,
      O => U22_Result(14)
    );
  U22_Mcount_count_per_cy_14_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(13),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_14_rt_720,
      O => U22_Mcount_count_per_cy(14)
    );
  U22_Mcount_count_per_xor_13_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(12),
      LI => U22_Mcount_count_per_cy_13_rt_718,
      O => U22_Result(13)
    );
  U22_Mcount_count_per_cy_13_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(12),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_13_rt_718,
      O => U22_Mcount_count_per_cy(13)
    );
  U22_Mcount_count_per_xor_12_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(11),
      LI => U22_Mcount_count_per_cy_12_rt_716,
      O => U22_Result(12)
    );
  U22_Mcount_count_per_cy_12_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(11),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_12_rt_716,
      O => U22_Mcount_count_per_cy(12)
    );
  U22_Mcount_count_per_xor_11_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(10),
      LI => U22_Mcount_count_per_cy_11_rt_714,
      O => U22_Result(11)
    );
  U22_Mcount_count_per_cy_11_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(10),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_11_rt_714,
      O => U22_Mcount_count_per_cy(11)
    );
  U22_Mcount_count_per_xor_10_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(9),
      LI => U22_Mcount_count_per_cy_10_rt_712,
      O => U22_Result(10)
    );
  U22_Mcount_count_per_cy_10_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(9),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_10_rt_712,
      O => U22_Mcount_count_per_cy(10)
    );
  U22_Mcount_count_per_xor_9_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(8),
      LI => U22_Mcount_count_per_cy_9_rt_746,
      O => U22_Result(9)
    );
  U22_Mcount_count_per_cy_9_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(8),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_9_rt_746,
      O => U22_Mcount_count_per_cy(9)
    );
  U22_Mcount_count_per_xor_8_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(7),
      LI => U22_Mcount_count_per_cy_8_rt_744,
      O => U22_Result(8)
    );
  U22_Mcount_count_per_cy_8_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(7),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_8_rt_744,
      O => U22_Mcount_count_per_cy(8)
    );
  U22_Mcount_count_per_xor_7_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(6),
      LI => U22_Mcount_count_per_cy_7_rt_742,
      O => U22_Result(7)
    );
  U22_Mcount_count_per_cy_7_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(6),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_7_rt_742,
      O => U22_Mcount_count_per_cy(7)
    );
  U22_Mcount_count_per_xor_6_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(5),
      LI => U22_Mcount_count_per_cy_6_rt_740,
      O => U22_Result(6)
    );
  U22_Mcount_count_per_cy_6_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(5),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_6_rt_740,
      O => U22_Mcount_count_per_cy(6)
    );
  U22_Mcount_count_per_xor_5_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(4),
      LI => U22_Mcount_count_per_cy_5_rt_738,
      O => U22_Result(5)
    );
  U22_Mcount_count_per_cy_5_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(4),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_5_rt_738,
      O => U22_Mcount_count_per_cy(5)
    );
  U22_Mcount_count_per_xor_4_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(3),
      LI => U22_Mcount_count_per_cy_4_rt_736,
      O => U22_Result(4)
    );
  U22_Mcount_count_per_cy_4_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(3),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_4_rt_736,
      O => U22_Mcount_count_per_cy(4)
    );
  U22_Mcount_count_per_xor_3_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(2),
      LI => U22_Mcount_count_per_cy_3_rt_734,
      O => U22_Result(3)
    );
  U22_Mcount_count_per_cy_3_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(2),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_3_rt_734,
      O => U22_Mcount_count_per_cy(3)
    );
  U22_Mcount_count_per_xor_2_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(1),
      LI => U22_Mcount_count_per_cy_2_rt_732,
      O => U22_Result(2)
    );
  U22_Mcount_count_per_cy_2_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(1),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_2_rt_732,
      O => U22_Mcount_count_per_cy(2)
    );
  U22_Mcount_count_per_xor_1_Q : XORCY
    port map (
      CI => U22_Mcount_count_per_cy(0),
      LI => U22_Mcount_count_per_cy_1_rt_730,
      O => U22_Result(1)
    );
  U22_Mcount_count_per_cy_1_Q : MUXCY
    port map (
      CI => U22_Mcount_count_per_cy(0),
      DI => BUS2432_6_Q,
      S => U22_Mcount_count_per_cy_1_rt_730,
      O => U22_Mcount_count_per_cy(1)
    );
  U22_Mcount_count_per_xor_0_Q : XORCY
    port map (
      CI => BUS2432_6_Q,
      LI => U22_Mcount_count_per_lut(0),
      O => U22_Result(0)
    );
  U22_Mcount_count_per_cy_0_Q : MUXCY
    port map (
      CI => BUS2432_6_Q,
      DI => BUS2432_5_Q,
      S => U22_Mcount_count_per_lut(0),
      O => U22_Mcount_count_per_cy(0)
    );
  U22_count_per_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_19,
      Q => U22_count_per(19)
    );
  U22_count_per_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_18,
      Q => U22_count_per(18)
    );
  U22_count_per_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_17,
      Q => U22_count_per(17)
    );
  U22_count_per_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_16,
      Q => U22_count_per(16)
    );
  U22_count_per_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_15,
      Q => U22_count_per(15)
    );
  U22_count_per_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_14,
      Q => U22_count_per(14)
    );
  U22_count_per_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_13,
      Q => U22_count_per(13)
    );
  U22_count_per_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_12,
      Q => U22_count_per(12)
    );
  U22_count_per_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_11_750,
      Q => U22_count_per(11)
    );
  U22_count_per_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_10,
      Q => U22_count_per(10)
    );
  U22_count_per_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_9,
      Q => U22_count_per(9)
    );
  U22_count_per_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_8,
      Q => U22_count_per(8)
    );
  U22_count_per_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_7,
      Q => U22_count_per(7)
    );
  U22_count_per_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_6,
      Q => U22_count_per(6)
    );
  U22_count_per_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_5,
      Q => U22_count_per(5)
    );
  U22_count_per_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_4,
      Q => U22_count_per(4)
    );
  U22_count_per_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_3,
      Q => U22_count_per(3)
    );
  U22_count_per_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_2,
      Q => U22_count_per(2)
    );
  U22_count_per_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_1,
      Q => U22_count_per(1)
    );
  U22_count_per_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_Mcount_count_per_eqn_0,
      Q => U22_count_per(0)
    );
  U22_pb_sampled : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U22_clk_deb_789,
      D => pb_settimer_IBUF_1552,
      Q => U22_pb_sampled_814
    );
  U22_pb_deb : FDE
    port map (
      C => clk_BUFGP_1530,
      CE => U22_pb_deb_not0001,
      D => pb_settimer_IBUF_1552,
      Q => U22_pb_deb_812
    );
  U22_clk_deb : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U22_count_per_cmp_eq0000,
      Q => U22_clk_deb_789
    );
  U20_Mcount_count_per_xor_19_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(18),
      LI => U20_Mcount_count_per_xor_19_rt_659,
      O => U20_Result(19)
    );
  U20_Mcount_count_per_xor_18_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(17),
      LI => U20_Mcount_count_per_cy_18_rt_619,
      O => U20_Result(18)
    );
  U20_Mcount_count_per_cy_18_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(17),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_18_rt_619,
      O => U20_Mcount_count_per_cy(18)
    );
  U20_Mcount_count_per_xor_17_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(16),
      LI => U20_Mcount_count_per_cy_17_rt_617,
      O => U20_Result(17)
    );
  U20_Mcount_count_per_cy_17_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(16),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_17_rt_617,
      O => U20_Mcount_count_per_cy(17)
    );
  U20_Mcount_count_per_xor_16_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(15),
      LI => U20_Mcount_count_per_cy_16_rt_615,
      O => U20_Result(16)
    );
  U20_Mcount_count_per_cy_16_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(15),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_16_rt_615,
      O => U20_Mcount_count_per_cy(16)
    );
  U20_Mcount_count_per_xor_15_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(14),
      LI => U20_Mcount_count_per_cy_15_rt_613,
      O => U20_Result(15)
    );
  U20_Mcount_count_per_cy_15_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(14),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_15_rt_613,
      O => U20_Mcount_count_per_cy(15)
    );
  U20_Mcount_count_per_xor_14_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(13),
      LI => U20_Mcount_count_per_cy_14_rt_611,
      O => U20_Result(14)
    );
  U20_Mcount_count_per_cy_14_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(13),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_14_rt_611,
      O => U20_Mcount_count_per_cy(14)
    );
  U20_Mcount_count_per_xor_13_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(12),
      LI => U20_Mcount_count_per_cy_13_rt_609,
      O => U20_Result(13)
    );
  U20_Mcount_count_per_cy_13_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(12),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_13_rt_609,
      O => U20_Mcount_count_per_cy(13)
    );
  U20_Mcount_count_per_xor_12_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(11),
      LI => U20_Mcount_count_per_cy_12_rt_607,
      O => U20_Result(12)
    );
  U20_Mcount_count_per_cy_12_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(11),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_12_rt_607,
      O => U20_Mcount_count_per_cy(12)
    );
  U20_Mcount_count_per_xor_11_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(10),
      LI => U20_Mcount_count_per_cy_11_rt_605,
      O => U20_Result(11)
    );
  U20_Mcount_count_per_cy_11_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(10),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_11_rt_605,
      O => U20_Mcount_count_per_cy(11)
    );
  U20_Mcount_count_per_xor_10_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(9),
      LI => U20_Mcount_count_per_cy_10_rt_603,
      O => U20_Result(10)
    );
  U20_Mcount_count_per_cy_10_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(9),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_10_rt_603,
      O => U20_Mcount_count_per_cy(10)
    );
  U20_Mcount_count_per_xor_9_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(8),
      LI => U20_Mcount_count_per_cy_9_rt_637,
      O => U20_Result(9)
    );
  U20_Mcount_count_per_cy_9_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(8),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_9_rt_637,
      O => U20_Mcount_count_per_cy(9)
    );
  U20_Mcount_count_per_xor_8_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(7),
      LI => U20_Mcount_count_per_cy_8_rt_635,
      O => U20_Result(8)
    );
  U20_Mcount_count_per_cy_8_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(7),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_8_rt_635,
      O => U20_Mcount_count_per_cy(8)
    );
  U20_Mcount_count_per_xor_7_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(6),
      LI => U20_Mcount_count_per_cy_7_rt_633,
      O => U20_Result(7)
    );
  U20_Mcount_count_per_cy_7_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(6),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_7_rt_633,
      O => U20_Mcount_count_per_cy(7)
    );
  U20_Mcount_count_per_xor_6_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(5),
      LI => U20_Mcount_count_per_cy_6_rt_631,
      O => U20_Result(6)
    );
  U20_Mcount_count_per_cy_6_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(5),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_6_rt_631,
      O => U20_Mcount_count_per_cy(6)
    );
  U20_Mcount_count_per_xor_5_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(4),
      LI => U20_Mcount_count_per_cy_5_rt_629,
      O => U20_Result(5)
    );
  U20_Mcount_count_per_cy_5_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(4),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_5_rt_629,
      O => U20_Mcount_count_per_cy(5)
    );
  U20_Mcount_count_per_xor_4_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(3),
      LI => U20_Mcount_count_per_cy_4_rt_627,
      O => U20_Result(4)
    );
  U20_Mcount_count_per_cy_4_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(3),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_4_rt_627,
      O => U20_Mcount_count_per_cy(4)
    );
  U20_Mcount_count_per_xor_3_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(2),
      LI => U20_Mcount_count_per_cy_3_rt_625,
      O => U20_Result(3)
    );
  U20_Mcount_count_per_cy_3_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(2),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_3_rt_625,
      O => U20_Mcount_count_per_cy(3)
    );
  U20_Mcount_count_per_xor_2_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(1),
      LI => U20_Mcount_count_per_cy_2_rt_623,
      O => U20_Result(2)
    );
  U20_Mcount_count_per_cy_2_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(1),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_2_rt_623,
      O => U20_Mcount_count_per_cy(2)
    );
  U20_Mcount_count_per_xor_1_Q : XORCY
    port map (
      CI => U20_Mcount_count_per_cy(0),
      LI => U20_Mcount_count_per_cy_1_rt_621,
      O => U20_Result(1)
    );
  U20_Mcount_count_per_cy_1_Q : MUXCY
    port map (
      CI => U20_Mcount_count_per_cy(0),
      DI => BUS2432_6_Q,
      S => U20_Mcount_count_per_cy_1_rt_621,
      O => U20_Mcount_count_per_cy(1)
    );
  U20_Mcount_count_per_xor_0_Q : XORCY
    port map (
      CI => BUS2432_6_Q,
      LI => U20_Mcount_count_per_lut(0),
      O => U20_Result(0)
    );
  U20_Mcount_count_per_cy_0_Q : MUXCY
    port map (
      CI => BUS2432_6_Q,
      DI => BUS2432_5_Q,
      S => U20_Mcount_count_per_lut(0),
      O => U20_Mcount_count_per_cy(0)
    );
  U20_count_per_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_19,
      Q => U20_count_per(19)
    );
  U20_count_per_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_18,
      Q => U20_count_per(18)
    );
  U20_count_per_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_17,
      Q => U20_count_per(17)
    );
  U20_count_per_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_16,
      Q => U20_count_per(16)
    );
  U20_count_per_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_15,
      Q => U20_count_per(15)
    );
  U20_count_per_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_14,
      Q => U20_count_per(14)
    );
  U20_count_per_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_13,
      Q => U20_count_per(13)
    );
  U20_count_per_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_12,
      Q => U20_count_per(12)
    );
  U20_count_per_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_11_641,
      Q => U20_count_per(11)
    );
  U20_count_per_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_10,
      Q => U20_count_per(10)
    );
  U20_count_per_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_9,
      Q => U20_count_per(9)
    );
  U20_count_per_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_8,
      Q => U20_count_per(8)
    );
  U20_count_per_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_7,
      Q => U20_count_per(7)
    );
  U20_count_per_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_6,
      Q => U20_count_per(6)
    );
  U20_count_per_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_5,
      Q => U20_count_per(5)
    );
  U20_count_per_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_4,
      Q => U20_count_per(4)
    );
  U20_count_per_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_3,
      Q => U20_count_per(3)
    );
  U20_count_per_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_2,
      Q => U20_count_per(2)
    );
  U20_count_per_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_1,
      Q => U20_count_per(1)
    );
  U20_count_per_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_Mcount_count_per_eqn_0,
      Q => U20_count_per(0)
    );
  U20_pb_sampled : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U20_clk_deb_680,
      D => pb_settime_IBUF_1550,
      Q => U20_pb_sampled_705
    );
  U20_pb_deb : FDE
    port map (
      C => clk_BUFGP_1530,
      CE => U20_pb_deb_not0001,
      D => pb_settime_IBUF_1550,
      Q => U20_pb_deb_703
    );
  U20_clk_deb : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U20_count_per_cmp_eq0000,
      Q => U20_clk_deb_680
    );
  U18_Mcount_count_per_xor_19_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(18),
      LI => U18_Mcount_count_per_xor_19_rt_499,
      O => U18_Result(19)
    );
  U18_Mcount_count_per_xor_18_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(17),
      LI => U18_Mcount_count_per_cy_18_rt_459,
      O => U18_Result(18)
    );
  U18_Mcount_count_per_cy_18_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(17),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_18_rt_459,
      O => U18_Mcount_count_per_cy(18)
    );
  U18_Mcount_count_per_xor_17_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(16),
      LI => U18_Mcount_count_per_cy_17_rt_457,
      O => U18_Result(17)
    );
  U18_Mcount_count_per_cy_17_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(16),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_17_rt_457,
      O => U18_Mcount_count_per_cy(17)
    );
  U18_Mcount_count_per_xor_16_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(15),
      LI => U18_Mcount_count_per_cy_16_rt_455,
      O => U18_Result(16)
    );
  U18_Mcount_count_per_cy_16_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(15),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_16_rt_455,
      O => U18_Mcount_count_per_cy(16)
    );
  U18_Mcount_count_per_xor_15_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(14),
      LI => U18_Mcount_count_per_cy_15_rt_453,
      O => U18_Result(15)
    );
  U18_Mcount_count_per_cy_15_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(14),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_15_rt_453,
      O => U18_Mcount_count_per_cy(15)
    );
  U18_Mcount_count_per_xor_14_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(13),
      LI => U18_Mcount_count_per_cy_14_rt_451,
      O => U18_Result(14)
    );
  U18_Mcount_count_per_cy_14_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(13),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_14_rt_451,
      O => U18_Mcount_count_per_cy(14)
    );
  U18_Mcount_count_per_xor_13_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(12),
      LI => U18_Mcount_count_per_cy_13_rt_449,
      O => U18_Result(13)
    );
  U18_Mcount_count_per_cy_13_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(12),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_13_rt_449,
      O => U18_Mcount_count_per_cy(13)
    );
  U18_Mcount_count_per_xor_12_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(11),
      LI => U18_Mcount_count_per_cy_12_rt_447,
      O => U18_Result(12)
    );
  U18_Mcount_count_per_cy_12_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(11),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_12_rt_447,
      O => U18_Mcount_count_per_cy(12)
    );
  U18_Mcount_count_per_xor_11_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(10),
      LI => U18_Mcount_count_per_cy_11_rt_445,
      O => U18_Result(11)
    );
  U18_Mcount_count_per_cy_11_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(10),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_11_rt_445,
      O => U18_Mcount_count_per_cy(11)
    );
  U18_Mcount_count_per_xor_10_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(9),
      LI => U18_Mcount_count_per_cy_10_rt_443,
      O => U18_Result(10)
    );
  U18_Mcount_count_per_cy_10_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(9),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_10_rt_443,
      O => U18_Mcount_count_per_cy(10)
    );
  U18_Mcount_count_per_xor_9_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(8),
      LI => U18_Mcount_count_per_cy_9_rt_477,
      O => U18_Result(9)
    );
  U18_Mcount_count_per_cy_9_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(8),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_9_rt_477,
      O => U18_Mcount_count_per_cy(9)
    );
  U18_Mcount_count_per_xor_8_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(7),
      LI => U18_Mcount_count_per_cy_8_rt_475,
      O => U18_Result(8)
    );
  U18_Mcount_count_per_cy_8_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(7),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_8_rt_475,
      O => U18_Mcount_count_per_cy(8)
    );
  U18_Mcount_count_per_xor_7_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(6),
      LI => U18_Mcount_count_per_cy_7_rt_473,
      O => U18_Result(7)
    );
  U18_Mcount_count_per_cy_7_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(6),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_7_rt_473,
      O => U18_Mcount_count_per_cy(7)
    );
  U18_Mcount_count_per_xor_6_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(5),
      LI => U18_Mcount_count_per_cy_6_rt_471,
      O => U18_Result(6)
    );
  U18_Mcount_count_per_cy_6_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(5),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_6_rt_471,
      O => U18_Mcount_count_per_cy(6)
    );
  U18_Mcount_count_per_xor_5_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(4),
      LI => U18_Mcount_count_per_cy_5_rt_469,
      O => U18_Result(5)
    );
  U18_Mcount_count_per_cy_5_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(4),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_5_rt_469,
      O => U18_Mcount_count_per_cy(5)
    );
  U18_Mcount_count_per_xor_4_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(3),
      LI => U18_Mcount_count_per_cy_4_rt_467,
      O => U18_Result(4)
    );
  U18_Mcount_count_per_cy_4_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(3),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_4_rt_467,
      O => U18_Mcount_count_per_cy(4)
    );
  U18_Mcount_count_per_xor_3_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(2),
      LI => U18_Mcount_count_per_cy_3_rt_465,
      O => U18_Result(3)
    );
  U18_Mcount_count_per_cy_3_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(2),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_3_rt_465,
      O => U18_Mcount_count_per_cy(3)
    );
  U18_Mcount_count_per_xor_2_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(1),
      LI => U18_Mcount_count_per_cy_2_rt_463,
      O => U18_Result(2)
    );
  U18_Mcount_count_per_cy_2_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(1),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_2_rt_463,
      O => U18_Mcount_count_per_cy(2)
    );
  U18_Mcount_count_per_xor_1_Q : XORCY
    port map (
      CI => U18_Mcount_count_per_cy(0),
      LI => U18_Mcount_count_per_cy_1_rt_461,
      O => U18_Result(1)
    );
  U18_Mcount_count_per_cy_1_Q : MUXCY
    port map (
      CI => U18_Mcount_count_per_cy(0),
      DI => BUS2432_6_Q,
      S => U18_Mcount_count_per_cy_1_rt_461,
      O => U18_Mcount_count_per_cy(1)
    );
  U18_Mcount_count_per_xor_0_Q : XORCY
    port map (
      CI => BUS2432_6_Q,
      LI => U18_Mcount_count_per_lut(0),
      O => U18_Result(0)
    );
  U18_Mcount_count_per_cy_0_Q : MUXCY
    port map (
      CI => BUS2432_6_Q,
      DI => BUS2432_5_Q,
      S => U18_Mcount_count_per_lut(0),
      O => U18_Mcount_count_per_cy(0)
    );
  U18_count_per_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_19,
      Q => U18_count_per(19)
    );
  U18_count_per_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_18,
      Q => U18_count_per(18)
    );
  U18_count_per_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_17,
      Q => U18_count_per(17)
    );
  U18_count_per_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_16,
      Q => U18_count_per(16)
    );
  U18_count_per_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_15,
      Q => U18_count_per(15)
    );
  U18_count_per_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_14,
      Q => U18_count_per(14)
    );
  U18_count_per_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_13,
      Q => U18_count_per(13)
    );
  U18_count_per_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_12,
      Q => U18_count_per(12)
    );
  U18_count_per_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_11_481,
      Q => U18_count_per(11)
    );
  U18_count_per_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_10,
      Q => U18_count_per(10)
    );
  U18_count_per_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_9,
      Q => U18_count_per(9)
    );
  U18_count_per_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_8,
      Q => U18_count_per(8)
    );
  U18_count_per_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_7,
      Q => U18_count_per(7)
    );
  U18_count_per_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_6,
      Q => U18_count_per(6)
    );
  U18_count_per_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_5,
      Q => U18_count_per(5)
    );
  U18_count_per_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_4,
      Q => U18_count_per(4)
    );
  U18_count_per_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_3,
      Q => U18_count_per(3)
    );
  U18_count_per_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_2,
      Q => U18_count_per(2)
    );
  U18_count_per_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_1,
      Q => U18_count_per(1)
    );
  U18_count_per_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_Mcount_count_per_eqn_0,
      Q => U18_count_per(0)
    );
  U18_pb_sampled : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U18_clk_deb_520,
      D => pb_min_IBUF_1548,
      Q => U18_pb_sampled_545
    );
  U18_pb_deb : FDE
    port map (
      C => clk_BUFGP_1530,
      CE => U18_pb_deb_not0001,
      D => pb_min_IBUF_1548,
      Q => U18_pb_deb_543
    );
  U18_clk_deb : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U18_count_per_cmp_eq0000,
      Q => U18_clk_deb_520
    );
  U16_Mcount_count_per_xor_19_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(18),
      LI => U16_Mcount_count_per_xor_19_rt_390,
      O => U16_Result(19)
    );
  U16_Mcount_count_per_xor_18_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(17),
      LI => U16_Mcount_count_per_cy_18_rt_350,
      O => U16_Result(18)
    );
  U16_Mcount_count_per_cy_18_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(17),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_18_rt_350,
      O => U16_Mcount_count_per_cy(18)
    );
  U16_Mcount_count_per_xor_17_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(16),
      LI => U16_Mcount_count_per_cy_17_rt_348,
      O => U16_Result(17)
    );
  U16_Mcount_count_per_cy_17_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(16),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_17_rt_348,
      O => U16_Mcount_count_per_cy(17)
    );
  U16_Mcount_count_per_xor_16_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(15),
      LI => U16_Mcount_count_per_cy_16_rt_346,
      O => U16_Result(16)
    );
  U16_Mcount_count_per_cy_16_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(15),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_16_rt_346,
      O => U16_Mcount_count_per_cy(16)
    );
  U16_Mcount_count_per_xor_15_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(14),
      LI => U16_Mcount_count_per_cy_15_rt_344,
      O => U16_Result(15)
    );
  U16_Mcount_count_per_cy_15_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(14),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_15_rt_344,
      O => U16_Mcount_count_per_cy(15)
    );
  U16_Mcount_count_per_xor_14_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(13),
      LI => U16_Mcount_count_per_cy_14_rt_342,
      O => U16_Result(14)
    );
  U16_Mcount_count_per_cy_14_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(13),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_14_rt_342,
      O => U16_Mcount_count_per_cy(14)
    );
  U16_Mcount_count_per_xor_13_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(12),
      LI => U16_Mcount_count_per_cy_13_rt_340,
      O => U16_Result(13)
    );
  U16_Mcount_count_per_cy_13_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(12),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_13_rt_340,
      O => U16_Mcount_count_per_cy(13)
    );
  U16_Mcount_count_per_xor_12_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(11),
      LI => U16_Mcount_count_per_cy_12_rt_338,
      O => U16_Result(12)
    );
  U16_Mcount_count_per_cy_12_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(11),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_12_rt_338,
      O => U16_Mcount_count_per_cy(12)
    );
  U16_Mcount_count_per_xor_11_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(10),
      LI => U16_Mcount_count_per_cy_11_rt_336,
      O => U16_Result(11)
    );
  U16_Mcount_count_per_cy_11_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(10),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_11_rt_336,
      O => U16_Mcount_count_per_cy(11)
    );
  U16_Mcount_count_per_xor_10_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(9),
      LI => U16_Mcount_count_per_cy_10_rt_334,
      O => U16_Result(10)
    );
  U16_Mcount_count_per_cy_10_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(9),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_10_rt_334,
      O => U16_Mcount_count_per_cy(10)
    );
  U16_Mcount_count_per_xor_9_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(8),
      LI => U16_Mcount_count_per_cy_9_rt_368,
      O => U16_Result(9)
    );
  U16_Mcount_count_per_cy_9_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(8),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_9_rt_368,
      O => U16_Mcount_count_per_cy(9)
    );
  U16_Mcount_count_per_xor_8_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(7),
      LI => U16_Mcount_count_per_cy_8_rt_366,
      O => U16_Result(8)
    );
  U16_Mcount_count_per_cy_8_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(7),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_8_rt_366,
      O => U16_Mcount_count_per_cy(8)
    );
  U16_Mcount_count_per_xor_7_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(6),
      LI => U16_Mcount_count_per_cy_7_rt_364,
      O => U16_Result(7)
    );
  U16_Mcount_count_per_cy_7_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(6),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_7_rt_364,
      O => U16_Mcount_count_per_cy(7)
    );
  U16_Mcount_count_per_xor_6_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(5),
      LI => U16_Mcount_count_per_cy_6_rt_362,
      O => U16_Result(6)
    );
  U16_Mcount_count_per_cy_6_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(5),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_6_rt_362,
      O => U16_Mcount_count_per_cy(6)
    );
  U16_Mcount_count_per_xor_5_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(4),
      LI => U16_Mcount_count_per_cy_5_rt_360,
      O => U16_Result(5)
    );
  U16_Mcount_count_per_cy_5_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(4),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_5_rt_360,
      O => U16_Mcount_count_per_cy(5)
    );
  U16_Mcount_count_per_xor_4_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(3),
      LI => U16_Mcount_count_per_cy_4_rt_358,
      O => U16_Result(4)
    );
  U16_Mcount_count_per_cy_4_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(3),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_4_rt_358,
      O => U16_Mcount_count_per_cy(4)
    );
  U16_Mcount_count_per_xor_3_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(2),
      LI => U16_Mcount_count_per_cy_3_rt_356,
      O => U16_Result(3)
    );
  U16_Mcount_count_per_cy_3_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(2),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_3_rt_356,
      O => U16_Mcount_count_per_cy(3)
    );
  U16_Mcount_count_per_xor_2_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(1),
      LI => U16_Mcount_count_per_cy_2_rt_354,
      O => U16_Result(2)
    );
  U16_Mcount_count_per_cy_2_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(1),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_2_rt_354,
      O => U16_Mcount_count_per_cy(2)
    );
  U16_Mcount_count_per_xor_1_Q : XORCY
    port map (
      CI => U16_Mcount_count_per_cy(0),
      LI => U16_Mcount_count_per_cy_1_rt_352,
      O => U16_Result(1)
    );
  U16_Mcount_count_per_cy_1_Q : MUXCY
    port map (
      CI => U16_Mcount_count_per_cy(0),
      DI => BUS2432_6_Q,
      S => U16_Mcount_count_per_cy_1_rt_352,
      O => U16_Mcount_count_per_cy(1)
    );
  U16_Mcount_count_per_xor_0_Q : XORCY
    port map (
      CI => BUS2432_6_Q,
      LI => U16_Mcount_count_per_lut(0),
      O => U16_Result(0)
    );
  U16_Mcount_count_per_cy_0_Q : MUXCY
    port map (
      CI => BUS2432_6_Q,
      DI => BUS2432_5_Q,
      S => U16_Mcount_count_per_lut(0),
      O => U16_Mcount_count_per_cy(0)
    );
  U16_count_per_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_19,
      Q => U16_count_per(19)
    );
  U16_count_per_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_18,
      Q => U16_count_per(18)
    );
  U16_count_per_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_17,
      Q => U16_count_per(17)
    );
  U16_count_per_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_16,
      Q => U16_count_per(16)
    );
  U16_count_per_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_15,
      Q => U16_count_per(15)
    );
  U16_count_per_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_14,
      Q => U16_count_per(14)
    );
  U16_count_per_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_13,
      Q => U16_count_per(13)
    );
  U16_count_per_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_12,
      Q => U16_count_per(12)
    );
  U16_count_per_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_11_372,
      Q => U16_count_per(11)
    );
  U16_count_per_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_10,
      Q => U16_count_per(10)
    );
  U16_count_per_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_9,
      Q => U16_count_per(9)
    );
  U16_count_per_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_8,
      Q => U16_count_per(8)
    );
  U16_count_per_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_7,
      Q => U16_count_per(7)
    );
  U16_count_per_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_6,
      Q => U16_count_per(6)
    );
  U16_count_per_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_5,
      Q => U16_count_per(5)
    );
  U16_count_per_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_4,
      Q => U16_count_per(4)
    );
  U16_count_per_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_3,
      Q => U16_count_per(3)
    );
  U16_count_per_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_2,
      Q => U16_count_per(2)
    );
  U16_count_per_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_1,
      Q => U16_count_per(1)
    );
  U16_count_per_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_Mcount_count_per_eqn_0,
      Q => U16_count_per(0)
    );
  U16_pb_sampled : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U16_clk_deb_411,
      D => pb_hour_IBUF_1546,
      Q => U16_pb_sampled_436
    );
  U16_pb_deb : FDE
    port map (
      C => clk_BUFGP_1530,
      CE => U16_pb_deb_not0001,
      D => pb_hour_IBUF_1546,
      Q => U16_pb_deb_434
    );
  U16_clk_deb : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U16_count_per_cmp_eq0000,
      Q => U16_clk_deb_411
    );
  U2_cs_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cs_not0001,
      CLR => U37_reset_time_1517,
      D => U2_Mcount_cs6,
      Q => U2_cs(6)
    );
  U2_cs_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cs_not0001,
      CLR => U37_reset_time_1517,
      D => U2_Mcount_cs5,
      Q => U2_cs(5)
    );
  U2_cs_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cs_not0001,
      CLR => U37_reset_time_1517,
      D => U2_Mcount_cs4,
      Q => U2_cs(4)
    );
  U2_cs_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cs_not0001,
      CLR => U37_reset_time_1517,
      D => U2_Mcount_cs3,
      Q => U2_cs(3)
    );
  U2_cs_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cs_not0001,
      CLR => U37_reset_time_1517,
      D => U2_Mcount_cs2,
      Q => U2_cs(2)
    );
  U2_cs_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cs_not0001,
      CLR => U37_reset_time_1517,
      D => U2_Mcount_cs1,
      Q => U2_cs(1)
    );
  U2_cs_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cs_not0001,
      CLR => U37_reset_time_1517,
      D => U2_Mcount_cs,
      Q => U2_cs(0)
    );
  U2_cm_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cm_not0002_592,
      CLR => U37_reset_time_1517,
      D => U2_cm_mux0000(0),
      Q => U2_cm(6)
    );
  U2_cm_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cm_not0002_592,
      CLR => U37_reset_time_1517,
      D => U2_cm_mux0000(1),
      Q => U2_cm(5)
    );
  U2_cm_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cm_not0002_592,
      CLR => U37_reset_time_1517,
      D => U2_cm_mux0000(2),
      Q => U2_cm(4)
    );
  U2_cm_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cm_not0002_592,
      CLR => U37_reset_time_1517,
      D => U2_cm_mux0000(3),
      Q => U2_cm(3)
    );
  U2_cm_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cm_not0002_592,
      CLR => U37_reset_time_1517,
      D => U2_cm_mux0000(4),
      Q => U2_cm(2)
    );
  U2_cm_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cm_not0002_592,
      CLR => U37_reset_time_1517,
      D => U2_cm_mux0000(5),
      Q => U2_cm(1)
    );
  U2_cm_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_cm_not0002_592,
      CLR => U37_reset_time_1517,
      D => U2_cm_mux0000(6),
      Q => U2_cm(0)
    );
  U2_ch_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_ch_not0001,
      CLR => U37_reset_time_1517,
      D => U2_ch_mux0001(6),
      Q => U2_ch(6)
    );
  U2_ch_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_ch_not0001,
      CLR => U37_reset_time_1517,
      D => U2_ch_mux0001(5),
      Q => U2_ch(5)
    );
  U2_ch_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_ch_not0001,
      CLR => U37_reset_time_1517,
      D => U2_ch_mux0001(4),
      Q => U2_ch(4)
    );
  U2_ch_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_ch_not0001,
      CLR => U37_reset_time_1517,
      D => U2_ch_mux0001(3),
      Q => U2_ch(3)
    );
  U2_ch_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_ch_not0001,
      CLR => U37_reset_time_1517,
      D => U2_ch_mux0001(2),
      Q => U2_ch(2)
    );
  U2_ch_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_ch_not0001,
      CLR => U37_reset_time_1517,
      D => U2_ch_mux0001(1),
      Q => U2_ch(1)
    );
  U2_ch_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U2_ch_not0001,
      CLR => U37_reset_time_1517,
      D => U2_ch_mux0001(0),
      Q => U2_ch(0)
    );
  U34_Mcount_cnt_xor_31_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(30),
      LI => U34_Mcount_cnt_xor_31_rt_1321,
      O => U34_Result(31)
    );
  U34_Mcount_cnt_xor_30_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(29),
      LI => U34_Mcount_cnt_cy_30_rt_1305,
      O => U34_Result(30)
    );
  U34_Mcount_cnt_cy_30_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(29),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_30_rt_1305,
      O => U34_Mcount_cnt_cy(30)
    );
  U34_Mcount_cnt_xor_29_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(28),
      LI => U34_Mcount_cnt_cy_29_rt_1301,
      O => U34_Result(29)
    );
  U34_Mcount_cnt_cy_29_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(28),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_29_rt_1301,
      O => U34_Mcount_cnt_cy(29)
    );
  U34_Mcount_cnt_xor_28_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(27),
      LI => U34_Mcount_cnt_cy_28_rt_1299,
      O => U34_Result(28)
    );
  U34_Mcount_cnt_cy_28_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(27),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_28_rt_1299,
      O => U34_Mcount_cnt_cy(28)
    );
  U34_Mcount_cnt_xor_27_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(26),
      LI => U34_Mcount_cnt_cy_27_rt_1297,
      O => U34_Result(27)
    );
  U34_Mcount_cnt_cy_27_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(26),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_27_rt_1297,
      O => U34_Mcount_cnt_cy(27)
    );
  U34_Mcount_cnt_xor_26_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(25),
      LI => U34_Mcount_cnt_cy_26_rt_1295,
      O => U34_Result(26)
    );
  U34_Mcount_cnt_cy_26_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(25),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_26_rt_1295,
      O => U34_Mcount_cnt_cy(26)
    );
  U34_Mcount_cnt_xor_25_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(24),
      LI => U34_Mcount_cnt_cy_25_rt_1293,
      O => U34_Result(25)
    );
  U34_Mcount_cnt_cy_25_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(24),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_25_rt_1293,
      O => U34_Mcount_cnt_cy(25)
    );
  U34_Mcount_cnt_xor_24_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(23),
      LI => U34_Mcount_cnt_cy_24_rt_1291,
      O => U34_Result(24)
    );
  U34_Mcount_cnt_cy_24_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(23),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_24_rt_1291,
      O => U34_Mcount_cnt_cy(24)
    );
  U34_Mcount_cnt_xor_23_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(22),
      LI => U34_Mcount_cnt_cy_23_rt_1289,
      O => U34_Result(23)
    );
  U34_Mcount_cnt_cy_23_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(22),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_23_rt_1289,
      O => U34_Mcount_cnt_cy(23)
    );
  U34_Mcount_cnt_xor_22_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(21),
      LI => U34_Mcount_cnt_cy_22_rt_1287,
      O => U34_Result(22)
    );
  U34_Mcount_cnt_cy_22_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(21),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_22_rt_1287,
      O => U34_Mcount_cnt_cy(22)
    );
  U34_Mcount_cnt_xor_21_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(20),
      LI => U34_Mcount_cnt_cy_21_rt_1285,
      O => U34_Result(21)
    );
  U34_Mcount_cnt_cy_21_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(20),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_21_rt_1285,
      O => U34_Mcount_cnt_cy(21)
    );
  U34_Mcount_cnt_xor_20_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(19),
      LI => U34_Mcount_cnt_cy_20_rt_1283,
      O => U34_Result(20)
    );
  U34_Mcount_cnt_cy_20_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(19),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_20_rt_1283,
      O => U34_Mcount_cnt_cy(20)
    );
  U34_Mcount_cnt_xor_19_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(18),
      LI => U34_Mcount_cnt_cy_19_rt_1279,
      O => U34_Result(19)
    );
  U34_Mcount_cnt_cy_19_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(18),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_19_rt_1279,
      O => U34_Mcount_cnt_cy(19)
    );
  U34_Mcount_cnt_xor_18_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(17),
      LI => U34_Mcount_cnt_cy_18_rt_1277,
      O => U34_Result(18)
    );
  U34_Mcount_cnt_cy_18_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(17),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_18_rt_1277,
      O => U34_Mcount_cnt_cy(18)
    );
  U34_Mcount_cnt_xor_17_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(16),
      LI => U34_Mcount_cnt_cy_17_rt_1275,
      O => U34_Result(17)
    );
  U34_Mcount_cnt_cy_17_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(16),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_17_rt_1275,
      O => U34_Mcount_cnt_cy(17)
    );
  U34_Mcount_cnt_xor_16_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(15),
      LI => U34_Mcount_cnt_cy_16_rt_1273,
      O => U34_Result(16)
    );
  U34_Mcount_cnt_cy_16_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(15),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_16_rt_1273,
      O => U34_Mcount_cnt_cy(16)
    );
  U34_Mcount_cnt_xor_15_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(14),
      LI => U34_Mcount_cnt_cy_15_rt_1271,
      O => U34_Result(15)
    );
  U34_Mcount_cnt_cy_15_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(14),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_15_rt_1271,
      O => U34_Mcount_cnt_cy(15)
    );
  U34_Mcount_cnt_xor_14_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(13),
      LI => U34_Mcount_cnt_cy_14_rt_1269,
      O => U34_Result(14)
    );
  U34_Mcount_cnt_cy_14_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(13),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_14_rt_1269,
      O => U34_Mcount_cnt_cy(14)
    );
  U34_Mcount_cnt_xor_13_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(12),
      LI => U34_Mcount_cnt_cy_13_rt_1267,
      O => U34_Result(13)
    );
  U34_Mcount_cnt_cy_13_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(12),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_13_rt_1267,
      O => U34_Mcount_cnt_cy(13)
    );
  U34_Mcount_cnt_xor_12_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(11),
      LI => U34_Mcount_cnt_cy_12_rt_1265,
      O => U34_Result(12)
    );
  U34_Mcount_cnt_cy_12_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(11),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_12_rt_1265,
      O => U34_Mcount_cnt_cy(12)
    );
  U34_Mcount_cnt_xor_11_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(10),
      LI => U34_Mcount_cnt_cy_11_rt_1263,
      O => U34_Result(11)
    );
  U34_Mcount_cnt_cy_11_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(10),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_11_rt_1263,
      O => U34_Mcount_cnt_cy(11)
    );
  U34_Mcount_cnt_xor_10_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(9),
      LI => U34_Mcount_cnt_cy_10_rt_1261,
      O => U34_Result(10)
    );
  U34_Mcount_cnt_cy_10_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(9),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_10_rt_1261,
      O => U34_Mcount_cnt_cy(10)
    );
  U34_Mcount_cnt_xor_9_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(8),
      LI => U34_Mcount_cnt_cy_9_rt_1319,
      O => U34_Result(9)
    );
  U34_Mcount_cnt_cy_9_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(8),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_9_rt_1319,
      O => U34_Mcount_cnt_cy(9)
    );
  U34_Mcount_cnt_xor_8_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(7),
      LI => U34_Mcount_cnt_cy_8_rt_1317,
      O => U34_Result(8)
    );
  U34_Mcount_cnt_cy_8_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(7),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_8_rt_1317,
      O => U34_Mcount_cnt_cy(8)
    );
  U34_Mcount_cnt_xor_7_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(6),
      LI => U34_Mcount_cnt_cy_7_rt_1315,
      O => U34_Result(7)
    );
  U34_Mcount_cnt_cy_7_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(6),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_7_rt_1315,
      O => U34_Mcount_cnt_cy(7)
    );
  U34_Mcount_cnt_xor_6_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(5),
      LI => U34_Mcount_cnt_cy_6_rt_1313,
      O => U34_Result(6)
    );
  U34_Mcount_cnt_cy_6_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(5),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_6_rt_1313,
      O => U34_Mcount_cnt_cy(6)
    );
  U34_Mcount_cnt_xor_5_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(4),
      LI => U34_Mcount_cnt_cy_5_rt_1311,
      O => U34_Result(5)
    );
  U34_Mcount_cnt_cy_5_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(4),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_5_rt_1311,
      O => U34_Mcount_cnt_cy(5)
    );
  U34_Mcount_cnt_xor_4_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(3),
      LI => U34_Mcount_cnt_cy_4_rt_1309,
      O => U34_Result(4)
    );
  U34_Mcount_cnt_cy_4_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(3),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_4_rt_1309,
      O => U34_Mcount_cnt_cy(4)
    );
  U34_Mcount_cnt_xor_3_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(2),
      LI => U34_Mcount_cnt_cy_3_rt_1307,
      O => U34_Result(3)
    );
  U34_Mcount_cnt_cy_3_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(2),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_3_rt_1307,
      O => U34_Mcount_cnt_cy(3)
    );
  U34_Mcount_cnt_xor_2_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(1),
      LI => U34_Mcount_cnt_cy_2_rt_1303,
      O => U34_Result(2)
    );
  U34_Mcount_cnt_cy_2_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(1),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_2_rt_1303,
      O => U34_Mcount_cnt_cy(2)
    );
  U34_Mcount_cnt_xor_1_Q : XORCY
    port map (
      CI => U34_Mcount_cnt_cy(0),
      LI => U34_Mcount_cnt_cy_1_rt_1281,
      O => U34_Result(1)
    );
  U34_Mcount_cnt_cy_1_Q : MUXCY
    port map (
      CI => U34_Mcount_cnt_cy(0),
      DI => BUS2432_6_Q,
      S => U34_Mcount_cnt_cy_1_rt_1281,
      O => U34_Mcount_cnt_cy(1)
    );
  U34_Mcount_cnt_xor_0_Q : XORCY
    port map (
      CI => BUS2432_6_Q,
      LI => U34_Mcount_cnt_lut(0),
      O => U34_Result(0)
    );
  U34_Mcount_cnt_cy_0_Q : MUXCY
    port map (
      CI => BUS2432_6_Q,
      DI => BUS2432_5_Q,
      S => U34_Mcount_cnt_lut(0),
      O => U34_Mcount_cnt_cy(0)
    );
  U34_Madd_o_0_add0000_xor_31_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(30),
      LI => U34_Madd_o_0_add0000_xor_31_rt_1258,
      O => U34_o_0_add0000(31)
    );
  U34_Madd_o_0_add0000_xor_30_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(29),
      LI => U34_Madd_o_0_add0000_cy_30_rt_1242,
      O => U34_o_0_add0000(30)
    );
  U34_Madd_o_0_add0000_cy_30_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(29),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_30_rt_1242,
      O => U34_Madd_o_0_add0000_cy(30)
    );
  U34_Madd_o_0_add0000_xor_29_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(28),
      LI => U34_Madd_o_0_add0000_cy_29_rt_1238,
      O => U34_o_0_add0000(29)
    );
  U34_Madd_o_0_add0000_cy_29_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(28),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_29_rt_1238,
      O => U34_Madd_o_0_add0000_cy(29)
    );
  U34_Madd_o_0_add0000_xor_28_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(27),
      LI => U34_Madd_o_0_add0000_cy_28_rt_1236,
      O => U34_o_0_add0000(28)
    );
  U34_Madd_o_0_add0000_cy_28_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(27),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_28_rt_1236,
      O => U34_Madd_o_0_add0000_cy(28)
    );
  U34_Madd_o_0_add0000_xor_27_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(26),
      LI => U34_Madd_o_0_add0000_cy_27_rt_1234,
      O => U34_o_0_add0000(27)
    );
  U34_Madd_o_0_add0000_cy_27_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(26),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_27_rt_1234,
      O => U34_Madd_o_0_add0000_cy(27)
    );
  U34_Madd_o_0_add0000_xor_26_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(25),
      LI => U34_Madd_o_0_add0000_cy_26_rt_1232,
      O => U34_o_0_add0000(26)
    );
  U34_Madd_o_0_add0000_cy_26_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(25),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_26_rt_1232,
      O => U34_Madd_o_0_add0000_cy(26)
    );
  U34_Madd_o_0_add0000_xor_25_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(24),
      LI => U34_Madd_o_0_add0000_cy_25_rt_1230,
      O => U34_o_0_add0000(25)
    );
  U34_Madd_o_0_add0000_cy_25_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(24),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_25_rt_1230,
      O => U34_Madd_o_0_add0000_cy(25)
    );
  U34_Madd_o_0_add0000_xor_24_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(23),
      LI => U34_Madd_o_0_add0000_cy_24_rt_1228,
      O => U34_o_0_add0000(24)
    );
  U34_Madd_o_0_add0000_cy_24_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(23),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_24_rt_1228,
      O => U34_Madd_o_0_add0000_cy(24)
    );
  U34_Madd_o_0_add0000_xor_23_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(22),
      LI => U34_Madd_o_0_add0000_cy_23_rt_1226,
      O => U34_o_0_add0000(23)
    );
  U34_Madd_o_0_add0000_cy_23_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(22),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_23_rt_1226,
      O => U34_Madd_o_0_add0000_cy(23)
    );
  U34_Madd_o_0_add0000_xor_22_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(21),
      LI => U34_Madd_o_0_add0000_cy_22_rt_1224,
      O => U34_o_0_add0000(22)
    );
  U34_Madd_o_0_add0000_cy_22_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(21),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_22_rt_1224,
      O => U34_Madd_o_0_add0000_cy(22)
    );
  U34_Madd_o_0_add0000_xor_21_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(20),
      LI => U34_Madd_o_0_add0000_cy_21_rt_1222,
      O => U34_o_0_add0000(21)
    );
  U34_Madd_o_0_add0000_cy_21_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(20),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_21_rt_1222,
      O => U34_Madd_o_0_add0000_cy(21)
    );
  U34_Madd_o_0_add0000_xor_20_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(19),
      LI => U34_Madd_o_0_add0000_cy_20_rt_1220,
      O => U34_o_0_add0000(20)
    );
  U34_Madd_o_0_add0000_cy_20_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(19),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_20_rt_1220,
      O => U34_Madd_o_0_add0000_cy(20)
    );
  U34_Madd_o_0_add0000_xor_19_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(18),
      LI => U34_Madd_o_0_add0000_cy_19_rt_1216,
      O => U34_o_0_add0000(19)
    );
  U34_Madd_o_0_add0000_cy_19_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(18),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_19_rt_1216,
      O => U34_Madd_o_0_add0000_cy(19)
    );
  U34_Madd_o_0_add0000_xor_18_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(17),
      LI => U34_Madd_o_0_add0000_cy_18_rt_1214,
      O => U34_o_0_add0000(18)
    );
  U34_Madd_o_0_add0000_cy_18_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(17),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_18_rt_1214,
      O => U34_Madd_o_0_add0000_cy(18)
    );
  U34_Madd_o_0_add0000_xor_17_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(16),
      LI => U34_Madd_o_0_add0000_cy_17_rt_1212,
      O => U34_o_0_add0000(17)
    );
  U34_Madd_o_0_add0000_cy_17_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(16),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_17_rt_1212,
      O => U34_Madd_o_0_add0000_cy(17)
    );
  U34_Madd_o_0_add0000_xor_16_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(15),
      LI => U34_Madd_o_0_add0000_cy_16_rt_1210,
      O => U34_o_0_add0000(16)
    );
  U34_Madd_o_0_add0000_cy_16_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(15),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_16_rt_1210,
      O => U34_Madd_o_0_add0000_cy(16)
    );
  U34_Madd_o_0_add0000_xor_15_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(14),
      LI => U34_Madd_o_0_add0000_cy_15_rt_1208,
      O => U34_o_0_add0000(15)
    );
  U34_Madd_o_0_add0000_cy_15_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(14),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_15_rt_1208,
      O => U34_Madd_o_0_add0000_cy(15)
    );
  U34_Madd_o_0_add0000_xor_14_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(13),
      LI => U34_Madd_o_0_add0000_cy_14_rt_1206,
      O => U34_o_0_add0000(14)
    );
  U34_Madd_o_0_add0000_cy_14_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(13),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_14_rt_1206,
      O => U34_Madd_o_0_add0000_cy(14)
    );
  U34_Madd_o_0_add0000_xor_13_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(12),
      LI => U34_Madd_o_0_add0000_cy_13_rt_1204,
      O => U34_o_0_add0000(13)
    );
  U34_Madd_o_0_add0000_cy_13_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(12),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_13_rt_1204,
      O => U34_Madd_o_0_add0000_cy(13)
    );
  U34_Madd_o_0_add0000_xor_12_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(11),
      LI => U34_Madd_o_0_add0000_cy_12_rt_1202,
      O => U34_o_0_add0000(12)
    );
  U34_Madd_o_0_add0000_cy_12_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(11),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_12_rt_1202,
      O => U34_Madd_o_0_add0000_cy(12)
    );
  U34_Madd_o_0_add0000_xor_11_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(10),
      LI => U34_Madd_o_0_add0000_cy_11_rt_1200,
      O => U34_o_0_add0000(11)
    );
  U34_Madd_o_0_add0000_cy_11_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(10),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_11_rt_1200,
      O => U34_Madd_o_0_add0000_cy(11)
    );
  U34_Madd_o_0_add0000_xor_10_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(9),
      LI => U34_Madd_o_0_add0000_cy_10_rt_1198,
      O => U34_o_0_add0000(10)
    );
  U34_Madd_o_0_add0000_cy_10_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(9),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_10_rt_1198,
      O => U34_Madd_o_0_add0000_cy(10)
    );
  U34_Madd_o_0_add0000_xor_9_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(8),
      LI => U34_Madd_o_0_add0000_cy_9_rt_1256,
      O => U34_o_0_add0000(9)
    );
  U34_Madd_o_0_add0000_cy_9_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(8),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_9_rt_1256,
      O => U34_Madd_o_0_add0000_cy(9)
    );
  U34_Madd_o_0_add0000_xor_8_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(7),
      LI => U34_Madd_o_0_add0000_cy_8_rt_1254,
      O => U34_o_0_add0000(8)
    );
  U34_Madd_o_0_add0000_cy_8_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(7),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_8_rt_1254,
      O => U34_Madd_o_0_add0000_cy(8)
    );
  U34_Madd_o_0_add0000_xor_7_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(6),
      LI => U34_Madd_o_0_add0000_cy_7_rt_1252,
      O => U34_o_0_add0000(7)
    );
  U34_Madd_o_0_add0000_cy_7_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(6),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_7_rt_1252,
      O => U34_Madd_o_0_add0000_cy(7)
    );
  U34_Madd_o_0_add0000_xor_6_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(5),
      LI => U34_Madd_o_0_add0000_cy_6_rt_1250,
      O => U34_o_0_add0000(6)
    );
  U34_Madd_o_0_add0000_cy_6_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(5),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_6_rt_1250,
      O => U34_Madd_o_0_add0000_cy(6)
    );
  U34_Madd_o_0_add0000_xor_5_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(4),
      LI => U34_Madd_o_0_add0000_cy_5_rt_1248,
      O => U34_o_0_add0000(5)
    );
  U34_Madd_o_0_add0000_cy_5_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(4),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_5_rt_1248,
      O => U34_Madd_o_0_add0000_cy(5)
    );
  U34_Madd_o_0_add0000_xor_4_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(3),
      LI => U34_Madd_o_0_add0000_cy_4_rt_1246,
      O => U34_o_0_add0000(4)
    );
  U34_Madd_o_0_add0000_cy_4_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(3),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_4_rt_1246,
      O => U34_Madd_o_0_add0000_cy(4)
    );
  U34_Madd_o_0_add0000_xor_3_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(2),
      LI => U34_Madd_o_0_add0000_cy_3_rt_1244,
      O => U34_o_0_add0000(3)
    );
  U34_Madd_o_0_add0000_cy_3_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(2),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_3_rt_1244,
      O => U34_Madd_o_0_add0000_cy(3)
    );
  U34_Madd_o_0_add0000_xor_2_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(1),
      LI => U34_Madd_o_0_add0000_cy_2_rt_1240,
      O => U34_o_0_add0000(2)
    );
  U34_Madd_o_0_add0000_cy_2_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(1),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_2_rt_1240,
      O => U34_Madd_o_0_add0000_cy(2)
    );
  U34_Madd_o_0_add0000_xor_1_Q : XORCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(0),
      LI => U34_Madd_o_0_add0000_cy_1_rt_1218,
      O => U34_o_0_add0000(1)
    );
  U34_Madd_o_0_add0000_cy_1_Q : MUXCY
    port map (
      CI => U34_Madd_o_0_add0000_cy(0),
      DI => BUS2432_6_Q,
      S => U34_Madd_o_0_add0000_cy_1_rt_1218,
      O => U34_Madd_o_0_add0000_cy(1)
    );
  U34_Madd_o_0_add0000_xor_0_Q : XORCY
    port map (
      CI => BUS2432_6_Q,
      LI => U34_Madd_o_0_add0000_lut(0),
      O => U34_o_0_add0000(0)
    );
  U34_Madd_o_0_add0000_cy_0_Q : MUXCY
    port map (
      CI => BUS2432_6_Q,
      DI => BUS2432_5_Q,
      S => U34_Madd_o_0_add0000_lut(0),
      O => U34_Madd_o_0_add0000_cy(0)
    );
  U34_leds_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_o(3),
      R => U34_buzz_inv,
      Q => U34_leds(3)
    );
  U34_leds_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_o(2),
      R => U34_buzz_inv,
      Q => U34_leds(2)
    );
  U34_leds_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_o(1),
      R => U34_buzz_inv,
      Q => U34_leds(1)
    );
  U34_leds_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_o(0),
      R => U34_buzz_inv,
      Q => U34_leds(0)
    );
  U34_o_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U34_o_0_cmp_eq0000,
      D => U34_o(2),
      R => U34_buzz_inv,
      Q => U34_o(3)
    );
  U34_o_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U34_o_0_cmp_eq0000,
      D => U34_o(1),
      R => U34_buzz_inv,
      Q => U34_o(2)
    );
  U34_o_1 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U34_o_0_cmp_eq0000,
      D => U34_o(0),
      S => U34_buzz_inv,
      Q => U34_o(1)
    );
  U34_o_0 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U34_o_0_cmp_eq0000,
      D => U34_o(3),
      S => U34_buzz_inv,
      Q => U34_o(0)
    );
  U36_cs_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cs_not0003,
      CLR => U37_reset_timer_1518,
      D => U36_Mcount_cs5,
      Q => U36_cs(5)
    );
  U36_cs_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cs_not0003,
      CLR => U37_reset_timer_1518,
      D => U36_Mcount_cs4,
      Q => U36_cs(4)
    );
  U36_cs_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cs_not0003,
      CLR => U37_reset_timer_1518,
      D => U36_Mcount_cs3,
      Q => U36_cs(3)
    );
  U36_cs_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cs_not0003,
      CLR => U37_reset_timer_1518,
      D => U36_Mcount_cs2,
      Q => U36_cs(2)
    );
  U36_cs_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cs_not0003,
      CLR => U37_reset_timer_1518,
      D => U36_Mcount_cs1,
      Q => U36_cs(1)
    );
  U36_cs_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cs_not0003,
      CLR => U37_reset_timer_1518,
      D => U36_Mcount_cs,
      Q => U36_cs(0)
    );
  U36_cm_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cm_not0002,
      CLR => U37_reset_timer_1518,
      D => U36_cm_mux0002(0),
      Q => U36_cm(6)
    );
  U36_cm_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cm_not0002,
      CLR => U37_reset_timer_1518,
      D => U36_cm_mux0002(1),
      Q => U36_cm(5)
    );
  U36_cm_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cm_not0002,
      CLR => U37_reset_timer_1518,
      D => U36_cm_mux0002(2),
      Q => U36_cm(4)
    );
  U36_cm_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cm_not0002,
      CLR => U37_reset_timer_1518,
      D => U36_cm_mux0002(3),
      Q => U36_cm(3)
    );
  U36_cm_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cm_not0002,
      CLR => U37_reset_timer_1518,
      D => U36_cm_mux0002(4),
      Q => U36_cm(2)
    );
  U36_cm_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cm_not0002,
      CLR => U37_reset_timer_1518,
      D => U36_cm_mux0002(5),
      Q => U36_cm(1)
    );
  U36_cm_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U36_cm_not0002,
      CLR => U37_reset_timer_1518,
      D => U36_cm_mux0002(6),
      Q => U36_cm(0)
    );
  U37_cur_state_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U37_cur_state_FSM_FFd2_In_1509,
      Q => U37_cur_state_FSM_FFd2_1508
    );
  U37_cur_state_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U37_cur_state_FSM_FFd1_In,
      Q => U37_cur_state_FSM_FFd1_1505
    );
  U37_cur_state_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U37_cur_state_FSM_FFd3_In,
      Q => U37_cur_state_FSM_FFd3_1510
    );
  U37_set_time : FDE
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U37_cur_state_cmp_eq0003,
      Q => U37_set_time_1519
    );
  U37_reset_timer : FDP
    port map (
      C => clk_BUFGP_1530,
      D => U37_cur_state_cmp_eq0002,
      PRE => rst_IBUF_1554,
      Q => U37_reset_timer_1518
    );
  U37_buzz : FDE
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U37_cur_state_FSM_FFd1_1505,
      Q => U37_buzz_1504
    );
  U37_oven : FDE
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U37_mux0001,
      Q => U37_oven_1516
    );
  U37_set_timer : FDE
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U37_cur_state_cmp_eq0004,
      Q => U37_set_timer_1520
    );
  U37_reset_time : FDP
    port map (
      C => clk_BUFGP_1530,
      D => BUS2432_6_Q,
      PRE => rst_IBUF_1554,
      Q => U37_reset_time_1517
    );
  U30_my_hd44780_simple_cur_state_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U30_my_hd44780_simple_cur_state_mux0000(0),
      PRE => rst_IBUF_1554,
      Q => U30_my_hd44780_simple_cur_state(0)
    );
  U30_my_hd44780_simple_cur_state_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(1),
      Q => U30_my_hd44780_simple_cur_state(1)
    );
  U30_my_hd44780_simple_cur_state_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(2),
      Q => U30_my_hd44780_simple_cur_state(2)
    );
  U30_my_hd44780_simple_cur_state_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(3),
      Q => U30_my_hd44780_simple_cur_state(3)
    );
  U30_my_hd44780_simple_cur_state_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(6),
      Q => U30_my_hd44780_simple_cur_state(6)
    );
  U30_my_hd44780_simple_cur_state_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(4),
      Q => U30_my_hd44780_simple_cur_state(4)
    );
  U30_my_hd44780_simple_cur_state_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(5),
      Q => U30_my_hd44780_simple_cur_state(5)
    );
  U30_my_hd44780_simple_cur_state_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(9),
      Q => U30_my_hd44780_simple_cur_state(9)
    );
  U30_my_hd44780_simple_cur_state_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(7),
      Q => U30_my_hd44780_simple_cur_state(7)
    );
  U30_my_hd44780_simple_cur_state_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(8),
      Q => U30_my_hd44780_simple_cur_state(8)
    );
  U30_my_hd44780_simple_cur_state_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(12),
      Q => U30_my_hd44780_simple_cur_state(12)
    );
  U30_my_hd44780_simple_cur_state_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(10),
      Q => U30_my_hd44780_simple_cur_state(10)
    );
  U30_my_hd44780_simple_cur_state_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_cur_state_mux0000(11),
      Q => U30_my_hd44780_simple_cur_state(11)
    );
  U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In,
      Q => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1150
    );
  U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In,
      Q => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1148
    );
  U30_my_hd44780_simple_count_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_count6,
      Q => U30_my_hd44780_simple_count(6)
    );
  U30_my_hd44780_simple_count_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_count5,
      Q => U30_my_hd44780_simple_count(5)
    );
  U30_my_hd44780_simple_count_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_count4,
      Q => U30_my_hd44780_simple_count(4)
    );
  U30_my_hd44780_simple_count_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_count3,
      Q => U30_my_hd44780_simple_count(3)
    );
  U30_my_hd44780_simple_count_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_count2,
      Q => U30_my_hd44780_simple_count(2)
    );
  U30_my_hd44780_simple_count_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_count1,
      Q => U30_my_hd44780_simple_count(1)
    );
  U30_my_hd44780_simple_count_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_count,
      Q => U30_my_hd44780_simple_count(0)
    );
  U30_my_hd44780_simple_valuez_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez15,
      Q => U30_my_hd44780_simple_valuez(15)
    );
  U30_my_hd44780_simple_valuez_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez14,
      Q => U30_my_hd44780_simple_valuez(14)
    );
  U30_my_hd44780_simple_valuez_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez13,
      Q => U30_my_hd44780_simple_valuez(13)
    );
  U30_my_hd44780_simple_valuez_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez12,
      Q => U30_my_hd44780_simple_valuez(12)
    );
  U30_my_hd44780_simple_valuez_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez11,
      Q => U30_my_hd44780_simple_valuez(11)
    );
  U30_my_hd44780_simple_valuez_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez10,
      Q => U30_my_hd44780_simple_valuez(10)
    );
  U30_my_hd44780_simple_valuez_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez9,
      Q => U30_my_hd44780_simple_valuez(9)
    );
  U30_my_hd44780_simple_valuez_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez8,
      Q => U30_my_hd44780_simple_valuez(8)
    );
  U30_my_hd44780_simple_valuez_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez7,
      Q => U30_my_hd44780_simple_valuez(7)
    );
  U30_my_hd44780_simple_valuez_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez6,
      Q => U30_my_hd44780_simple_valuez(6)
    );
  U30_my_hd44780_simple_valuez_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez5,
      Q => U30_my_hd44780_simple_valuez(5)
    );
  U30_my_hd44780_simple_valuez_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez4,
      Q => U30_my_hd44780_simple_valuez(4)
    );
  U30_my_hd44780_simple_valuez_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez3,
      Q => U30_my_hd44780_simple_valuez(3)
    );
  U30_my_hd44780_simple_valuez_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez2,
      Q => U30_my_hd44780_simple_valuez(2)
    );
  U30_my_hd44780_simple_valuez_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez1,
      Q => U30_my_hd44780_simple_valuez(1)
    );
  U30_my_hd44780_simple_valuez_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_valuez_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_Mcount_valuez,
      Q => U30_my_hd44780_simple_valuez(0)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_15_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(14),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(15),
      O => U30_my_hd44780_simple_Mcount_valuez15
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_15_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(15),
      I2 => U30_my_hd44780_simple_timer_us_value_15_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(15)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_14_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(13),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(14),
      O => U30_my_hd44780_simple_Mcount_valuez14
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_14_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(13),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(14),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(14)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_14_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(14),
      I2 => BUS2432_6_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(14)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_13_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(12),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(13),
      O => U30_my_hd44780_simple_Mcount_valuez13
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_13_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(12),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(13),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(13)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_13_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(13),
      I2 => U30_my_hd44780_simple_timer_us_value_13_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(13)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_12_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(11),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(12),
      O => U30_my_hd44780_simple_Mcount_valuez12
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_12_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(11),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(12),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(12)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_12_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(12),
      I2 => BUS2432_6_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(12)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_11_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(10),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(11),
      O => U30_my_hd44780_simple_Mcount_valuez11
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_11_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(10),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(11),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(11)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_11_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(11),
      I2 => U30_my_hd44780_simple_timer_us_value_11_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(11)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_10_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(9),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(10),
      O => U30_my_hd44780_simple_Mcount_valuez10
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_10_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(9),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(10),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(10)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_10_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(10),
      I2 => BUS2432_6_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(10)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_9_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(8),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(9),
      O => U30_my_hd44780_simple_Mcount_valuez9
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_9_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(8),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(9),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(9)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_9_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(9),
      I2 => U30_my_hd44780_simple_timer_us_value_9_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(9)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_8_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(7),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(8),
      O => U30_my_hd44780_simple_Mcount_valuez8
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_8_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(7),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(8),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(8)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_8_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(8),
      I2 => U30_my_hd44780_simple_timer_us_value_8_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(8)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_7_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(6),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(7),
      O => U30_my_hd44780_simple_Mcount_valuez7
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_7_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(6),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(7),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(7)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_7_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(7),
      I2 => U30_my_hd44780_simple_timer_us_value_7_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(7)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_6_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(5),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(6),
      O => U30_my_hd44780_simple_Mcount_valuez6
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_6_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(5),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(6),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(6)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_6_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(6),
      I2 => U30_my_hd44780_simple_timer_us_value_6_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(6)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_5_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(4),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(5),
      O => U30_my_hd44780_simple_Mcount_valuez5
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_5_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(4),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(5),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(5)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_5_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(5),
      I2 => U30_my_hd44780_simple_timer_us_value_5_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(5)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_4_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(3),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(4),
      O => U30_my_hd44780_simple_Mcount_valuez4
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_4_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(3),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(4),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(4)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_4_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(4),
      I2 => U30_my_hd44780_simple_timer_us_value_4_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(4)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_3_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(2),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(3),
      O => U30_my_hd44780_simple_Mcount_valuez3
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_3_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(2),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(3),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(3)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_3_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(3),
      I2 => U30_my_hd44780_simple_timer_us_value_3_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(3)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_2_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(1),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(2),
      O => U30_my_hd44780_simple_Mcount_valuez2
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_2_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(1),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(2),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(2)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_2_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(2),
      I2 => U30_my_hd44780_simple_timer_us_value_2_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(2)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_1_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(0),
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(1),
      O => U30_my_hd44780_simple_Mcount_valuez1
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_1_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_Mcount_valuez_cy(0),
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(1),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(1)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_1_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(1),
      I2 => BUS2432_6_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(1)
    );
  U30_my_hd44780_simple_Mcount_valuez_xor_0_Q : XORCY
    port map (
      CI => U30_my_hd44780_simple_state2timer_go_1144,
      LI => U30_my_hd44780_simple_Mcount_valuez_lut(0),
      O => U30_my_hd44780_simple_Mcount_valuez
    );
  U30_my_hd44780_simple_Mcount_valuez_cy_0_Q : MUXCY
    port map (
      CI => U30_my_hd44780_simple_state2timer_go_1144,
      DI => BUS2432_5_Q,
      S => U30_my_hd44780_simple_Mcount_valuez_lut(0),
      O => U30_my_hd44780_simple_Mcount_valuez_cy(0)
    );
  U30_my_hd44780_simple_Mcount_valuez_lut_0_Q : LUT3
    generic map(
      INIT => X"1B"
    )
    port map (
      I0 => U30_my_hd44780_simple_state2timer_go_1144,
      I1 => U30_my_hd44780_simple_valuez(0),
      I2 => U30_my_hd44780_simple_timer_us_value_0_Q,
      O => U30_my_hd44780_simple_Mcount_valuez_lut(0)
    );
  U30_my_hd44780_simple_running_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_running_0_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_state2timer_go_1144,
      Q => U30_my_hd44780_simple_running(0)
    );
  U30_my_hd44780_simple_hd44780_db_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_hd44780_db_mux0000_7_Q,
      Q => U30_my_hd44780_simple_hd44780_db_7_Q
    );
  U30_my_hd44780_simple_hd44780_db_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_hd44780_db_mux0000_5_Q,
      Q => U30_my_hd44780_simple_hd44780_db_5_Q
    );
  U30_my_hd44780_simple_hd44780_db_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_hd44780_db_mux0000_4_Q,
      Q => U30_my_hd44780_simple_hd44780_db_4_Q
    );
  U30_my_hd44780_simple_hd44780_db_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_hd44780_db_mux0000_3_Q,
      Q => U30_my_hd44780_simple_hd44780_db_3_Q
    );
  U30_my_hd44780_simple_hd44780_db_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_hd44780_db_mux0000_2_Q,
      Q => U30_my_hd44780_simple_hd44780_db_2_Q
    );
  U30_my_hd44780_simple_hd44780_db_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_hd44780_db_mux0000_1_Q,
      Q => U30_my_hd44780_simple_hd44780_db_1_Q
    );
  U30_my_hd44780_simple_hd44780_db_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_hd44780_db_mux0000_0_Q,
      Q => U30_my_hd44780_simple_hd44780_db_0_Q
    );
  U30_my_hd44780_simple_cur_ddram_addr_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_cur_ddram_addr_mux0000(2),
      Q => U30_my_hd44780_simple_cur_ddram_addr(2)
    );
  U30_my_hd44780_simple_cur_ddram_addr_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_cur_ddram_addr_mux0000(1),
      Q => U30_my_hd44780_simple_cur_ddram_addr(1)
    );
  U30_my_hd44780_simple_cur_ddram_addr_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_cur_ddram_addr_mux0000(0),
      Q => U30_my_hd44780_simple_cur_ddram_addr(0)
    );
  U30_my_hd44780_simple_en_count_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_en_count_mux0000(0),
      Q => U30_my_hd44780_simple_en_count(4)
    );
  U30_my_hd44780_simple_en_count_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_en_count_mux0000(1),
      Q => U30_my_hd44780_simple_en_count(3)
    );
  U30_my_hd44780_simple_en_count_2 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_en_count_mux0000(2),
      Q => U30_my_hd44780_simple_en_count(2)
    );
  U30_my_hd44780_simple_en_count_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_en_count_mux0000(3),
      Q => U30_my_hd44780_simple_en_count(1)
    );
  U30_my_hd44780_simple_en_count_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_en_count_mux0000(4),
      Q => U30_my_hd44780_simple_en_count(0)
    );
  U30_my_hd44780_simple_clk_us : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_count_cmp_eq0000_1005,
      Q => U30_my_hd44780_simple_clk_us_997
    );
  U30_my_hd44780_simple_timer2state_done : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_running_0_not0001,
      CLR => rst_IBUF_1554,
      D => U30_my_hd44780_simple_timer2state_done_mux0000,
      Q => U30_my_hd44780_simple_timer2state_done_1146
    );
  U30_my_hd44780_simple_en_started_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_en_started_0_mux0000,
      Q => U30_my_hd44780_simple_en_started(0)
    );
  U30_my_hd44780_simple_state2timer_go : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_state2timer_go_mux0000,
      Q => U30_my_hd44780_simple_state2timer_go_1144
    );
  U30_my_hd44780_simple_next_state_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_next_state_mux0000_12_Q,
      Q => U30_my_hd44780_simple_next_state_12_Q
    );
  U30_my_hd44780_simple_next_state_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_next_state_mux0000_11_Q,
      Q => U30_my_hd44780_simple_next_state_11_Q
    );
  U30_my_hd44780_simple_next_state_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_next_state_mux0000_10_Q,
      Q => U30_my_hd44780_simple_next_state_10_Q
    );
  U30_my_hd44780_simple_next_state_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_next_state_mux0000_9_Q,
      Q => U30_my_hd44780_simple_next_state_9_Q
    );
  U30_my_hd44780_simple_next_state_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_next_state_mux0000_8_Q,
      Q => U30_my_hd44780_simple_next_state_8_Q
    );
  U30_my_hd44780_simple_next_state_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_next_state_mux0000_7_Q,
      Q => U30_my_hd44780_simple_next_state_7_Q
    );
  U30_my_hd44780_simple_next_state_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_next_state_mux0000_6_Q,
      Q => U30_my_hd44780_simple_next_state_6_Q
    );
  U30_my_hd44780_simple_next_state_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_next_state_mux0000_5_Q,
      Q => U30_my_hd44780_simple_next_state_5_Q
    );
  U30_my_hd44780_simple_next_state_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_next_state_mux0000_4_Q,
      Q => U30_my_hd44780_simple_next_state_4_Q
    );
  U30_my_hd44780_simple_next_state_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_next_state_mux0000_3_Q,
      Q => U30_my_hd44780_simple_next_state_3_Q
    );
  U30_my_hd44780_simple_next_state_0 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_next_state_mux0000_0_Q,
      Q => U30_my_hd44780_simple_next_state_0_Q
    );
  U30_my_hd44780_simple_hd44780_rs : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_hd44780_rs_mux0000,
      Q => U30_my_hd44780_simple_hd44780_rs_1117
    );
  U30_my_hd44780_simple_timer_us_value_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_15_Q,
      Q => U30_my_hd44780_simple_timer_us_value_15_Q
    );
  U30_my_hd44780_simple_timer_us_value_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_13_Q,
      Q => U30_my_hd44780_simple_timer_us_value_13_Q
    );
  U30_my_hd44780_simple_timer_us_value_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_11_Q,
      Q => U30_my_hd44780_simple_timer_us_value_11_Q
    );
  U30_my_hd44780_simple_timer_us_value_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_9_Q,
      Q => U30_my_hd44780_simple_timer_us_value_9_Q
    );
  U30_my_hd44780_simple_timer_us_value_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_8_Q,
      Q => U30_my_hd44780_simple_timer_us_value_8_Q
    );
  U30_my_hd44780_simple_timer_us_value_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_7_Q,
      Q => U30_my_hd44780_simple_timer_us_value_7_Q
    );
  U30_my_hd44780_simple_timer_us_value_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_6_Q,
      Q => U30_my_hd44780_simple_timer_us_value_6_Q
    );
  U30_my_hd44780_simple_timer_us_value_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_5_Q,
      Q => U30_my_hd44780_simple_timer_us_value_5_Q
    );
  U30_my_hd44780_simple_timer_us_value_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_4_Q,
      Q => U30_my_hd44780_simple_timer_us_value_4_Q
    );
  U30_my_hd44780_simple_timer_us_value_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_3_Q,
      Q => U30_my_hd44780_simple_timer_us_value_3_Q
    );
  U30_my_hd44780_simple_timer_us_value_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_2_Q,
      Q => U30_my_hd44780_simple_timer_us_value_2_Q
    );
  U30_my_hd44780_simple_timer_us_value_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_timer_us_value_mux0000_0_Q,
      Q => U30_my_hd44780_simple_timer_us_value_0_Q
    );
  U30_my_hd44780_simple_cur_line_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      CE => U30_my_hd44780_simple_reset_inv,
      D => U30_my_hd44780_simple_cur_line_0_mux0000_1013,
      Q => U30_my_hd44780_simple_cur_line(0)
    );
  U37_cur_state_FSM_Out21 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U37_cur_state_FSM_FFd3_1510,
      I1 => U37_cur_state_FSM_FFd2_1508,
      O => U37_cur_state_cmp_eq0004
    );
  U37_cur_state_FSM_Out11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U37_cur_state_FSM_FFd3_1510,
      I1 => U37_cur_state_FSM_FFd2_1508,
      O => U37_cur_state_cmp_eq0003
    );
  U37_cur_state_FSM_Out01 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => U37_cur_state_FSM_FFd3_1510,
      I1 => U37_cur_state_FSM_FFd2_1508,
      O => U37_cur_state_cmp_eq0002
    );
  U2_cm_mux0000_5_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_cm(0),
      I1 => U2_cm(1),
      O => U2_cm_mux0000(5)
    );
  U2_ch_mux0001_1_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_ch(1),
      I1 => U2_ch(0),
      O => U2_ch_mux0001(1)
    );
  U2_Mcount_cs_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U2_cs(0),
      I1 => U2_cs(1),
      O => U2_Mcount_cs1
    );
  U37_cur_state_FSM_Out41 : LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => U37_cur_state_FSM_FFd3_1510,
      I1 => U37_cur_state_FSM_FFd1_1505,
      I2 => U37_cur_state_FSM_FFd2_1508,
      O => U37_mux0001
    );
  U2_ch_mux0001_2_1 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => U2_ch(0),
      I1 => U2_ch(2),
      I2 => U2_ch(1),
      O => U2_ch_mux0001(2)
    );
  U37_cur_state_FSM_FFd3_In1 : LUT5
    generic map(
      INIT => X"1514159C"
    )
    port map (
      I0 => U37_cur_state_FSM_FFd2_1508,
      I1 => U37_cur_state_FSM_FFd3_1510,
      I2 => U19_pulse_547,
      I3 => U21_pulse_707,
      I4 => U23_pulse_816,
      O => U37_cur_state_FSM_FFd3_In
    );
  U2_ch_mux0001_5_1 : LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCCC"
    )
    port map (
      I0 => U2_ch(0),
      I1 => U2_ch(5),
      I2 => U2_ch(1),
      I3 => U2_ch(2),
      I4 => U2_ch(3),
      I5 => U2_ch(4),
      O => U2_ch_mux0001(5)
    );
  U36_cs_not00031 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_clk_1hz_224,
      I1 => U37_set_timer_1520,
      O => U36_cs_not0003
    );
  U2_cs_not00011 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_clk_1hz_224,
      I1 => U37_set_time_1519,
      O => U2_cs_not0001
    );
  U24_pb_deb_not00011 : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => pb_canceltimer_IBUF_1544,
      I1 => U24_pb_sampled_923,
      I2 => U24_clk_deb_898,
      O => U24_pb_deb_not0001
    );
  U22_pb_deb_not00011 : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => pb_settimer_IBUF_1552,
      I1 => U22_pb_sampled_814,
      I2 => U22_clk_deb_789,
      O => U22_pb_deb_not0001
    );
  U20_pb_deb_not00011 : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => pb_settime_IBUF_1550,
      I1 => U20_pb_sampled_705,
      I2 => U20_clk_deb_680,
      O => U20_pb_deb_not0001
    );
  U18_pb_deb_not00011 : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => pb_min_IBUF_1548,
      I1 => U18_pb_sampled_545,
      I2 => U18_clk_deb_520,
      O => U18_pb_deb_not0001
    );
  U16_pb_deb_not00011 : LUT3
    generic map(
      INIT => X"90"
    )
    port map (
      I0 => pb_hour_IBUF_1546,
      I1 => U16_pb_sampled_436,
      I2 => U16_clk_deb_411,
      O => U16_pb_deb_not0001
    );
  U36_Mcount_cs_xor_1_121 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U36_cs(1),
      I1 => U36_cs(2),
      I2 => U36_cs(3),
      I3 => U36_cs(4),
      I4 => U36_cs(5),
      O => U36_N15
    );
  U36_Mcount_cs_xor_5_11 : LUT6
    generic map(
      INIT => X"FFFF050405040504"
    )
    port map (
      I0 => U36_cs(0),
      I1 => U36_N3,
      I2 => U36_N15,
      I3 => U36_cm(0),
      I4 => U36_cs(5),
      I5 => U36_N14,
      O => U36_Mcount_cs5
    );
  U36_Mcount_cs_xor_0_11 : LUT6
    generic map(
      INIT => X"5555555555555554"
    )
    port map (
      I0 => U36_cs(0),
      I1 => U36_cm(0),
      I2 => U36_cs(1),
      I3 => U36_cs(2),
      I4 => U36_N3,
      I5 => U36_N7,
      O => U36_Mcount_cs
    );
  U2_cm_mux0000_4_1 : LUT6
    generic map(
      INIT => X"9899999999999999"
    )
    port map (
      I0 => U2_cm(2),
      I1 => U2_N19,
      I2 => U2_cm(6),
      I3 => U2_cm(3),
      I4 => U2_cm(4),
      I5 => U2_cm(5),
      O => U2_cm_mux0000(4)
    );
  U2_Mcount_cs_xor_2_11 : LUT6
    generic map(
      INIT => X"9899999999999999"
    )
    port map (
      I0 => U2_cs(2),
      I1 => U2_N20,
      I2 => U2_cs(6),
      I3 => U2_cs(3),
      I4 => U2_cs(4),
      I5 => U2_cs(5),
      O => U2_Mcount_cs2
    );
  U2_cm_mux0000_3_1 : LUT6
    generic map(
      INIT => X"9A989A9A9A9A9A9A"
    )
    port map (
      I0 => U2_cm(3),
      I1 => U2_N19,
      I2 => U2_cm(2),
      I3 => U2_cm(6),
      I4 => U2_cm(4),
      I5 => U2_cm(5),
      O => U2_cm_mux0000(3)
    );
  U2_Mcount_cs_xor_3_11 : LUT6
    generic map(
      INIT => X"9A989A9A9A9A9A9A"
    )
    port map (
      I0 => U2_cs(3),
      I1 => U2_N20,
      I2 => U2_cs(2),
      I3 => U2_cs(6),
      I4 => U2_cs(4),
      I5 => U2_cs(5),
      O => U2_Mcount_cs3
    );
  U2_cm_mux0000_2_1 : LUT6
    generic map(
      INIT => X"9AAA9A8A9AAA9AAA"
    )
    port map (
      I0 => U2_cm(4),
      I1 => U2_N19,
      I2 => U2_cm(3),
      I3 => U2_cm(2),
      I4 => U2_cm(6),
      I5 => U2_cm(5),
      O => U2_cm_mux0000(2)
    );
  U2_Mcount_cs_xor_4_11 : LUT6
    generic map(
      INIT => X"9AAA9A8A9AAA9AAA"
    )
    port map (
      I0 => U2_cs(4),
      I1 => U2_N20,
      I2 => U2_cs(3),
      I3 => U2_cs(2),
      I4 => U2_cs(6),
      I5 => U2_cs(5),
      O => U2_Mcount_cs4
    );
  U2_cm_mux0000_1_1 : LUT6
    generic map(
      INIT => X"9AAAAAAA9AAA8AAA"
    )
    port map (
      I0 => U2_cm(5),
      I1 => U2_N19,
      I2 => U2_cm(3),
      I3 => U2_cm(4),
      I4 => U2_cm(2),
      I5 => U2_cm(6),
      O => U2_cm_mux0000(1)
    );
  U2_Mcount_cs_xor_5_11 : LUT6
    generic map(
      INIT => X"9AAAAAAA9AAA8AAA"
    )
    port map (
      I0 => U2_cs(5),
      I1 => U2_N20,
      I2 => U2_cs(3),
      I3 => U2_cs(4),
      I4 => U2_cs(2),
      I5 => U2_cs(6),
      O => U2_Mcount_cs5
    );
  U2_Mcount_cs_xor_6_11 : LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => U2_cs(6),
      I1 => U2_N20,
      I2 => U2_cs(5),
      I3 => U2_cs(4),
      I4 => U2_cs(3),
      I5 => U2_cs(2),
      O => U2_Mcount_cs6
    );
  U36_cm_not00021 : LUT5
    generic map(
      INIT => X"AAAE0004"
    )
    port map (
      I0 => U37_set_timer_1520,
      I1 => U1_clk_1hz_224,
      I2 => U36_cs(5),
      I3 => U36_N14,
      I4 => U17_pulse_438,
      O => U36_cm_not0002
    );
  U36_Mcount_cs_xor_3_131 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U36_cs(3),
      I1 => U36_cs(4),
      I2 => U36_cs(0),
      I3 => U36_cs(2),
      I4 => U36_cs(1),
      O => U36_N14
    );
  U36_Mcount_cs_xor_4_1_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U36_cs(3),
      I1 => U36_cs(2),
      I2 => U36_cs(1),
      I3 => U36_cs(0),
      O => N4
    );
  U36_Mcount_cs_xor_4_1 : LUT6
    generic map(
      INIT => X"8F8F8F8F8F8F8F88"
    )
    port map (
      I0 => U36_cs(4),
      I1 => N4,
      I2 => U36_N14,
      I3 => U36_N3,
      I4 => U36_cs(5),
      I5 => U36_cm(0),
      O => U36_Mcount_cs4
    );
  U30_my_hd44780_simple_Mcount_count_xor_2_11 : LUT4
    generic map(
      INIT => X"9CCC"
    )
    port map (
      I0 => U30_my_hd44780_simple_count_cmp_eq0000_1005,
      I1 => U30_my_hd44780_simple_count(2),
      I2 => U30_my_hd44780_simple_count(1),
      I3 => U30_my_hd44780_simple_count(0),
      O => U30_my_hd44780_simple_Mcount_count2
    );
  U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"A8A8FDA8"
    )
    port map (
      I0 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1150,
      I1 => U30_my_hd44780_simple_N8,
      I2 => U30_my_hd44780_simple_cur_state(2),
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1148,
      O => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_In
    );
  U30_my_hd44780_simple_en_started_0_mux00001 : LUT5
    generic map(
      INIT => X"EEEAEEE2"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(2),
      I1 => U30_my_hd44780_simple_en_started(0),
      I2 => U30_my_hd44780_simple_N8,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U30_my_hd44780_simple_en_started_0_mux0000
    );
  U30_my_hd44780_simple_Mcount_count_xor_3_11 : LUT5
    generic map(
      INIT => X"9CCCCCCC"
    )
    port map (
      I0 => U30_my_hd44780_simple_count_cmp_eq0000_1005,
      I1 => U30_my_hd44780_simple_count(3),
      I2 => U30_my_hd44780_simple_count(2),
      I3 => U30_my_hd44780_simple_count(1),
      I4 => U30_my_hd44780_simple_count(0),
      O => U30_my_hd44780_simple_Mcount_count3
    );
  U30_my_hd44780_simple_cur_state_mux0000_9_1 : LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(9),
      I1 => U30_my_hd44780_simple_N0,
      I2 => U30_my_hd44780_simple_next_state_9_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(9)
    );
  U30_my_hd44780_simple_cur_state_mux0000_8_1 : LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(8),
      I1 => U30_my_hd44780_simple_N0,
      I2 => U30_my_hd44780_simple_next_state_8_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(8)
    );
  U30_my_hd44780_simple_cur_state_mux0000_7_1 : LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(7),
      I1 => U30_my_hd44780_simple_N0,
      I2 => U30_my_hd44780_simple_next_state_7_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(7)
    );
  U30_my_hd44780_simple_cur_state_mux0000_6_1 : LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(6),
      I1 => U30_my_hd44780_simple_N0,
      I2 => U30_my_hd44780_simple_next_state_6_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(6)
    );
  U30_my_hd44780_simple_cur_state_mux0000_5_1 : LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(5),
      I1 => U30_my_hd44780_simple_N0,
      I2 => U30_my_hd44780_simple_next_state_5_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(5)
    );
  U30_my_hd44780_simple_cur_state_mux0000_4_1 : LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(4),
      I1 => U30_my_hd44780_simple_N0,
      I2 => U30_my_hd44780_simple_next_state_4_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(4)
    );
  U30_my_hd44780_simple_cur_state_mux0000_3_1 : LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(3),
      I1 => U30_my_hd44780_simple_N0,
      I2 => U30_my_hd44780_simple_next_state_3_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(3)
    );
  U30_my_hd44780_simple_cur_state_mux0000_12_1 : LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(12),
      I1 => U30_my_hd44780_simple_N0,
      I2 => U30_my_hd44780_simple_next_state_12_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(12)
    );
  U30_my_hd44780_simple_cur_state_mux0000_11_1 : LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(11),
      I1 => U30_my_hd44780_simple_N0,
      I2 => U30_my_hd44780_simple_next_state_11_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(11)
    );
  U30_my_hd44780_simple_cur_state_mux0000_10_1 : LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(10),
      I1 => U30_my_hd44780_simple_N0,
      I2 => U30_my_hd44780_simple_next_state_10_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(10)
    );
  U30_my_hd44780_simple_cur_state_mux0000_0_11 : LUT6
    generic map(
      INIT => X"FAAAFAFAF222F2F2"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(2),
      I1 => U30_my_hd44780_simple_en_started(0),
      I2 => U30_my_hd44780_simple_cur_state(1),
      I3 => U30_my_hd44780_simple_cur_state_or0000,
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      O => U30_my_hd44780_simple_N0
    );
  U30_my_hd44780_simple_cur_state_mux0000_0_1 : LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(0),
      I1 => U30_my_hd44780_simple_N0,
      I2 => U30_my_hd44780_simple_next_state_0_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state_or0000,
      O => U30_my_hd44780_simple_cur_state_mux0000(0)
    );
  U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"FAAAFAAAF888F8A8"
    )
    port map (
      I0 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1148,
      I1 => U30_my_hd44780_simple_N8,
      I2 => U30_my_hd44780_simple_cur_state(1),
      I3 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1150,
      I4 => U30_my_hd44780_simple_timer2state_done_1146,
      I5 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_In
    );
  U30_my_hd44780_simple_state2timer_go_mux00001 : LUT6
    generic map(
      INIT => X"FF02FF02FF020A02"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(1),
      I1 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1148,
      I2 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1150,
      I3 => U30_my_hd44780_simple_state2timer_go_1144,
      I4 => U30_my_hd44780_simple_cur_state(2),
      I5 => U30_my_hd44780_simple_N8,
      O => U30_my_hd44780_simple_state2timer_go_mux0000
    );
  U30_my_hd44780_simple_en_count_mux0000_4_1 : LUT6
    generic map(
      INIT => X"FF80FF80FF800880"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(2),
      I1 => U30_my_hd44780_simple_en_started(0),
      I2 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      I3 => U30_my_hd44780_simple_en_count(0),
      I4 => U30_my_hd44780_simple_cur_state(1),
      I5 => U30_my_hd44780_simple_N8,
      O => U30_my_hd44780_simple_en_count_mux0000(4)
    );
  U30_my_hd44780_simple_Mcount_count_xor_4_11 : LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => U30_my_hd44780_simple_count(4),
      I1 => U30_my_hd44780_simple_count_cmp_eq0000_1005,
      I2 => U30_my_hd44780_simple_count(3),
      I3 => U30_my_hd44780_simple_count(2),
      I4 => U30_my_hd44780_simple_count(1),
      I5 => U30_my_hd44780_simple_count(0),
      O => U30_my_hd44780_simple_Mcount_count4
    );
  U2_Mcount_cs_xor_2_121 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U2_cs(0),
      I1 => U2_cs(1),
      O => U2_N20
    );
  U30_my_hd44780_simple_cur_state_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1148,
      I1 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1150,
      O => U30_my_hd44780_simple_cur_state_or0000
    );
  U24_Mcount_count_per_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(9),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_9
    );
  U24_Mcount_count_per_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(8),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_8
    );
  U24_Mcount_count_per_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(7),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_7
    );
  U24_Mcount_count_per_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(6),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_6
    );
  U24_Mcount_count_per_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(5),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_5
    );
  U24_Mcount_count_per_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(4),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_4
    );
  U24_Mcount_count_per_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(3),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_3
    );
  U24_Mcount_count_per_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(2),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_2
    );
  U24_Mcount_count_per_eqn_161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(16),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_16
    );
  U24_Mcount_count_per_eqn_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(15),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_15
    );
  U24_Mcount_count_per_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(14),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_14
    );
  U24_Mcount_count_per_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(13),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_13
    );
  U24_Mcount_count_per_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(12),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_12
    );
  U24_Mcount_count_per_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(11),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_11_859
    );
  U24_Mcount_count_per_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(10),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_10
    );
  U24_Mcount_count_per_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(1),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_1
    );
  U24_Mcount_count_per_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(0),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_0
    );
  U22_Mcount_count_per_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(9),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_9
    );
  U22_Mcount_count_per_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(8),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_8
    );
  U22_Mcount_count_per_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(7),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_7
    );
  U22_Mcount_count_per_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(6),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_6
    );
  U22_Mcount_count_per_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(5),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_5
    );
  U22_Mcount_count_per_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(4),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_4
    );
  U22_Mcount_count_per_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(3),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_3
    );
  U22_Mcount_count_per_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(2),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_2
    );
  U22_Mcount_count_per_eqn_161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(16),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_16
    );
  U22_Mcount_count_per_eqn_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(15),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_15
    );
  U22_Mcount_count_per_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(14),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_14
    );
  U22_Mcount_count_per_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(13),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_13
    );
  U22_Mcount_count_per_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(12),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_12
    );
  U22_Mcount_count_per_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(11),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_11_750
    );
  U22_Mcount_count_per_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(10),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_10
    );
  U22_Mcount_count_per_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(1),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_1
    );
  U22_Mcount_count_per_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(0),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_0
    );
  U20_Mcount_count_per_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(9),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_9
    );
  U20_Mcount_count_per_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(8),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_8
    );
  U20_Mcount_count_per_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(7),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_7
    );
  U20_Mcount_count_per_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(6),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_6
    );
  U20_Mcount_count_per_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(5),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_5
    );
  U20_Mcount_count_per_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(4),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_4
    );
  U20_Mcount_count_per_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(3),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_3
    );
  U20_Mcount_count_per_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(2),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_2
    );
  U20_Mcount_count_per_eqn_161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(16),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_16
    );
  U20_Mcount_count_per_eqn_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(15),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_15
    );
  U20_Mcount_count_per_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(14),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_14
    );
  U20_Mcount_count_per_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(13),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_13
    );
  U20_Mcount_count_per_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(12),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_12
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_71 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I1 => U30_my_hd44780_simple_cur_state(12),
      I2 => U30_my_hd44780_simple_cur_line(0),
      O => U30_my_hd44780_simple_N34
    );
  U30_my_hd44780_simple_cur_ddram_addr_mux0000_0_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I1 => U30_my_hd44780_simple_N2,
      I2 => U30_my_hd44780_simple_cur_state(12),
      O => U30_my_hd44780_simple_cur_ddram_addr_mux0000(0)
    );
  U30_my_hd44780_simple_cur_ddram_addr_mux0000_1_2 : LUT4
    generic map(
      INIT => X"EA48"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U30_my_hd44780_simple_cur_state(12),
      I2 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I3 => U30_my_hd44780_simple_N2,
      O => U30_my_hd44780_simple_cur_ddram_addr_mux0000(1)
    );
  U30_my_hd44780_simple_cur_state_cmp_gt00001 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U30_my_hd44780_simple_en_count(2),
      I1 => U30_my_hd44780_simple_en_count(3),
      I2 => U30_my_hd44780_simple_en_count(4),
      I3 => U30_my_hd44780_simple_en_count(0),
      I4 => U30_my_hd44780_simple_en_count(1),
      O => U30_my_hd44780_simple_cur_state_cmp_gt0000
    );
  U30_my_hd44780_simple_cur_ddram_addr_mux0000_1_11 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(1),
      I1 => U30_my_hd44780_simple_cur_state(2),
      I2 => U30_my_hd44780_simple_cur_state(3),
      I3 => U30_my_hd44780_simple_cur_state(8),
      I4 => U30_my_hd44780_simple_N111,
      O => U30_my_hd44780_simple_N2
    );
  U14_scratch_11_mux00001 : LUT5
    generic map(
      INIT => X"A1668164"
    )
    port map (
      I0 => U36_cm(4),
      I1 => U36_cm(6),
      I2 => U36_cm(3),
      I3 => U36_cm(5),
      I4 => U36_cm(2),
      O => BUS1989(1)
    );
  U36_cm_mux0002_5_11 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U36_cm(1),
      I1 => U36_cm(2),
      I2 => U36_cm(3),
      I3 => U36_cm(4),
      I4 => U36_cm(5),
      I5 => U36_cm(6),
      O => U36_N3
    );
  U30_my_hd44780_simple_cur_line_0_mux000011_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(11),
      I1 => U30_my_hd44780_simple_cur_state(10),
      O => N8
    );
  U30_my_hd44780_simple_cur_line_0_mux000011 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(9),
      I1 => U30_my_hd44780_simple_cur_state(7),
      I2 => U30_my_hd44780_simple_cur_state(6),
      I3 => U30_my_hd44780_simple_cur_state(5),
      I4 => U30_my_hd44780_simple_cur_state(4),
      I5 => N8,
      O => U30_my_hd44780_simple_N111
    );
  U2_cm_mux0000_0_SW0 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => U2_cm(3),
      I1 => U2_cm(1),
      I2 => U2_cm(0),
      O => N10
    );
  U2_cm_mux0000_0_Q : LUT6
    generic map(
      INIT => X"B8F8F8F8F8F8F8F8"
    )
    port map (
      I0 => U2_N8,
      I1 => U2_cm(2),
      I2 => U2_cm(6),
      I3 => U2_cm(4),
      I4 => U2_cm(5),
      I5 => N10,
      O => U2_cm_mux0000(0)
    );
  U30_my_hd44780_simple_cur_line_0_mux0000_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(2),
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(8),
      I3 => U30_my_hd44780_simple_N111,
      O => N12
    );
  U30_my_hd44780_simple_cur_line_0_mux0000 : LUT6
    generic map(
      INIT => X"FAAAAAAADA88AA88"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_line(0),
      I1 => U30_my_hd44780_simple_cur_state(3),
      I2 => U30_my_hd44780_simple_Madd_cur_ddram_addr_addsub0000_cy(1),
      I3 => U30_my_hd44780_simple_cur_state(12),
      I4 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I5 => N12,
      O => U30_my_hd44780_simple_cur_line_0_mux0000_1013
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(1),
      I1 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_N3
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_121 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      O => U30_my_hd44780_simple_Madd_cur_ddram_addr_addsub0000_cy(1)
    );
  U24_Mcount_count_per_eqn_191 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(19),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_19
    );
  U24_Mcount_count_per_eqn_181 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(18),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_18
    );
  U24_Mcount_count_per_eqn_171 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_Result(17),
      I1 => U24_count_per_cmp_eq0000,
      O => U24_Mcount_count_per_eqn_17
    );
  U22_Mcount_count_per_eqn_191 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(19),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_19
    );
  U22_Mcount_count_per_eqn_181 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(18),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_18
    );
  U22_Mcount_count_per_eqn_171 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_Result(17),
      I1 => U22_count_per_cmp_eq0000,
      O => U22_Mcount_count_per_eqn_17
    );
  U20_Mcount_count_per_eqn_191 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(19),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_19
    );
  U20_Mcount_count_per_eqn_181 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(18),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_18
    );
  U20_Mcount_count_per_eqn_171 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(17),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_17
    );
  U20_Mcount_count_per_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(11),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_11_641
    );
  U20_Mcount_count_per_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(10),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_10
    );
  U20_Mcount_count_per_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(1),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_1
    );
  U20_Mcount_count_per_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_Result(0),
      I1 => U20_count_per_cmp_eq0000,
      O => U20_Mcount_count_per_eqn_0
    );
  U2_cm_mux0000_4_21 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U2_cm(0),
      I1 => U2_cm(1),
      O => U2_N19
    );
  U18_Mcount_count_per_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(9),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_9
    );
  U18_Mcount_count_per_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(8),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_8
    );
  U18_Mcount_count_per_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(7),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_7
    );
  U18_Mcount_count_per_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(6),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_6
    );
  U18_Mcount_count_per_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(5),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_5
    );
  U18_Mcount_count_per_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(4),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_4
    );
  U18_Mcount_count_per_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(3),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_3
    );
  U18_Mcount_count_per_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(2),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_2
    );
  U18_Mcount_count_per_eqn_191 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(19),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_19
    );
  U18_Mcount_count_per_eqn_181 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(18),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_18
    );
  U18_Mcount_count_per_eqn_171 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(17),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_17
    );
  U18_Mcount_count_per_eqn_161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(16),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_16
    );
  U18_Mcount_count_per_eqn_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(15),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_15
    );
  U18_Mcount_count_per_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(14),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_14
    );
  U18_Mcount_count_per_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(13),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_13
    );
  U18_Mcount_count_per_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(12),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_12
    );
  U18_Mcount_count_per_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(11),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_11_481
    );
  U18_Mcount_count_per_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(10),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_10
    );
  U18_Mcount_count_per_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(1),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_1
    );
  U18_Mcount_count_per_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_Result(0),
      I1 => U18_count_per_cmp_eq0000,
      O => U18_Mcount_count_per_eqn_0
    );
  U16_Mcount_count_per_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(9),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_9
    );
  U16_Mcount_count_per_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(8),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_8
    );
  U16_Mcount_count_per_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(7),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_7
    );
  U16_Mcount_count_per_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(6),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_6
    );
  U16_Mcount_count_per_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(5),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_5
    );
  U16_Mcount_count_per_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(4),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_4
    );
  U16_Mcount_count_per_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(3),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_3
    );
  U16_Mcount_count_per_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(2),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_2
    );
  U16_Mcount_count_per_eqn_191 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(19),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_19
    );
  U16_Mcount_count_per_eqn_181 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(18),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_18
    );
  U16_Mcount_count_per_eqn_171 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(17),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_17
    );
  U16_Mcount_count_per_eqn_161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(16),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_16
    );
  U16_Mcount_count_per_eqn_151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(15),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_15
    );
  U16_Mcount_count_per_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(14),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_14
    );
  U16_Mcount_count_per_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(13),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_13
    );
  U16_Mcount_count_per_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(12),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_12
    );
  U16_Mcount_count_per_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(11),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_11_372
    );
  U16_Mcount_count_per_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(10),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_10
    );
  U16_Mcount_count_per_eqn_11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(1),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_1
    );
  U16_Mcount_count_per_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_Result(0),
      I1 => U16_count_per_cmp_eq0000,
      O => U16_Mcount_count_per_eqn_0
    );
  U36_Mcount_cs_xor_2_111 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U36_cs(3),
      I1 => U36_cs(4),
      I2 => U36_cs(5),
      O => U36_N7
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_31 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(3),
      I1 => U30_my_hd44780_simple_cur_state(4),
      I2 => U30_my_hd44780_simple_cur_state(5),
      O => U30_my_hd44780_simple_N62
    );
  U30_my_hd44780_simple_Mcount_count_xor_5_11 : LUT3
    generic map(
      INIT => X"9C"
    )
    port map (
      I0 => U30_my_hd44780_simple_count_cmp_eq0000_1005,
      I1 => U30_my_hd44780_simple_Mcount_count_cy(4),
      I2 => U30_my_hd44780_simple_count(5),
      O => U30_my_hd44780_simple_Mcount_count5
    );
  U37_cur_state_FSM_FFd1_In2 : LUT4
    generic map(
      INIT => X"8F88"
    )
    port map (
      I0 => U37_cur_state_FSM_FFd2_1508,
      I1 => U37_cur_state_FSM_N3,
      I2 => U23_pulse_816,
      I3 => U37_cur_state_FSM_FFd1_1505,
      O => U37_cur_state_FSM_FFd1_In
    );
  U30_my_hd44780_simple_Mcount_count_xor_6_11 : LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      I0 => U30_my_hd44780_simple_count_cmp_eq0000_1005,
      I1 => U30_my_hd44780_simple_count(6),
      I2 => U30_my_hd44780_simple_count(5),
      I3 => U30_my_hd44780_simple_Mcount_count_cy(4),
      O => U30_my_hd44780_simple_Mcount_count6
    );
  U14_scratch_12_mux00001 : LUT4
    generic map(
      INIT => X"1A18"
    )
    port map (
      I0 => U36_cm(5),
      I1 => U36_cm(4),
      I2 => U36_cm(6),
      I3 => U36_cm(3),
      O => BUS1989(2)
    );
  U14_scratch_13_mux00001 : LUT5
    generic map(
      INIT => X"20202028"
    )
    port map (
      I0 => U36_cm(6),
      I1 => U36_cm(5),
      I2 => U36_cm(4),
      I3 => U36_cm(3),
      I4 => U36_cm(2),
      O => BUS1989(3)
    );
  U30_my_hd44780_simple_cur_state_mux0000_2_21 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(10),
      I1 => U30_my_hd44780_simple_cur_state(11),
      I2 => U30_my_hd44780_simple_cur_state(12),
      I3 => U30_my_hd44780_simple_cur_state(6),
      I4 => U30_my_hd44780_simple_cur_state(7),
      I5 => U30_my_hd44780_simple_cur_state(9),
      O => U30_my_hd44780_simple_N18
    );
  U2_ch_mux0001_4_131 : LUT6
    generic map(
      INIT => X"FFFFFFFFBAAAAAAA"
    )
    port map (
      I0 => U2_ch(5),
      I1 => U2_cm(2),
      I2 => U37_set_time_1519,
      I3 => U2_N8,
      I4 => U17_pulse_438,
      I5 => U2_ch(6),
      O => U2_N17
    );
  U2_ch_mux0001_3_1 : LUT6
    generic map(
      INIT => X"7F807F807F007F80"
    )
    port map (
      I0 => U2_ch(0),
      I1 => U2_ch(1),
      I2 => U2_ch(2),
      I3 => U2_ch(3),
      I4 => U2_ch(4),
      I5 => U2_N17,
      O => U2_ch_mux0001(3)
    );
  U2_ch_mux0001_4_1 : LUT6
    generic map(
      INIT => X"6CCCCCCC6CCC4CCC"
    )
    port map (
      I0 => U2_ch(0),
      I1 => U2_ch(4),
      I2 => U2_ch(1),
      I3 => U2_ch(2),
      I4 => U2_ch(3),
      I5 => U2_N17,
      O => U2_ch_mux0001(4)
    );
  U30_my_hd44780_simple_count_cmp_eq0000_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U30_my_hd44780_simple_count(3),
      I1 => U30_my_hd44780_simple_count(2),
      O => N14
    );
  U30_my_hd44780_simple_count_cmp_eq0000 : LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => U30_my_hd44780_simple_count(0),
      I1 => U30_my_hd44780_simple_count(5),
      I2 => U30_my_hd44780_simple_count(1),
      I3 => U30_my_hd44780_simple_count(4),
      I4 => U30_my_hd44780_simple_count(6),
      I5 => N14,
      O => U30_my_hd44780_simple_count_cmp_eq0000_1005
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_5_2 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_line(0),
      I1 => U30_my_hd44780_simple_cur_state(11),
      I2 => U30_my_hd44780_simple_cur_state(6),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_5_2_1115
    );
  U24_count_per_cmp_eq000068 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U24_count_per(6),
      I1 => U24_count_per(7),
      I2 => U24_count_per(15),
      I3 => U24_count_per(13),
      I4 => U24_count_per(12),
      I5 => U24_count_per(11),
      O => U24_count_per_cmp_eq000068_920
    );
  U22_count_per_cmp_eq000068 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U22_count_per(6),
      I1 => U22_count_per(7),
      I2 => U22_count_per(15),
      I3 => U22_count_per(13),
      I4 => U22_count_per(12),
      I5 => U22_count_per(11),
      O => U22_count_per_cmp_eq000068_811
    );
  U20_count_per_cmp_eq000068 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U20_count_per(6),
      I1 => U20_count_per(7),
      I2 => U20_count_per(15),
      I3 => U20_count_per(13),
      I4 => U20_count_per(12),
      I5 => U20_count_per(11),
      O => U20_count_per_cmp_eq000068_702
    );
  U18_count_per_cmp_eq000068 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U18_count_per(6),
      I1 => U18_count_per(7),
      I2 => U18_count_per(15),
      I3 => U18_count_per(13),
      I4 => U18_count_per(12),
      I5 => U18_count_per(11),
      O => U18_count_per_cmp_eq000068_542
    );
  U16_count_per_cmp_eq000068 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U16_count_per(6),
      I1 => U16_count_per(7),
      I2 => U16_count_per(15),
      I3 => U16_count_per(13),
      I4 => U16_count_per(12),
      I5 => U16_count_per(11),
      O => U16_count_per_cmp_eq000068_433
    );
  U30_my_hd44780_simple_valuez_not00011 : LUT4
    generic map(
      INIT => X"F0F8"
    )
    port map (
      I0 => U30_my_hd44780_simple_running(0),
      I1 => U30_my_hd44780_simple_clk_us_997,
      I2 => U30_my_hd44780_simple_state2timer_go_1144,
      I3 => U30_my_hd44780_simple_valuez_cmp_le0000,
      O => U30_my_hd44780_simple_valuez_not0001
    );
  U30_my_hd44780_simple_running_0_not00011 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => U30_my_hd44780_simple_running(0),
      I1 => U30_my_hd44780_simple_clk_us_997,
      I2 => U30_my_hd44780_simple_state2timer_go_1144,
      I3 => U30_my_hd44780_simple_valuez_cmp_le0000,
      O => U30_my_hd44780_simple_running_0_not0001
    );
  U2_ch_not00011 : LUT5
    generic map(
      INIT => X"8F888888"
    )
    port map (
      I0 => U15_pulse_329,
      I1 => U37_set_time_1519,
      I2 => U2_cm(2),
      I3 => U2_N8,
      I4 => U2_cm_not0002_592,
      O => U2_ch_not0001
    );
  U2_cm_not0002_SW0 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => U1_clk_1hz_224,
      I1 => U2_cs(3),
      I2 => U2_cs(5),
      I3 => U2_cs(2),
      O => N16
    );
  U2_cm_not0002 : LUT6
    generic map(
      INIT => X"888888B888888888"
    )
    port map (
      I0 => U17_pulse_438,
      I1 => U37_set_time_1519,
      I2 => U2_cs(4),
      I3 => U2_cs(6),
      I4 => U2_N20,
      I5 => N16,
      O => U2_cm_not0002_592
    );
  U30_my_hd44780_simple_valuez_cmp_le0000235 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U30_my_hd44780_simple_valuez(13),
      I1 => U30_my_hd44780_simple_valuez(12),
      I2 => U30_my_hd44780_simple_valuez(14),
      I3 => U30_my_hd44780_simple_valuez(15),
      I4 => U30_my_hd44780_simple_valuez(6),
      I5 => U30_my_hd44780_simple_valuez(7),
      O => U30_my_hd44780_simple_valuez_cmp_le0000235_1194
    );
  U30_my_hd44780_simple_valuez_cmp_le00002104 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U30_my_hd44780_simple_valuez(1),
      I1 => U30_my_hd44780_simple_valuez(0),
      I2 => U30_my_hd44780_simple_valuez(2),
      I3 => U30_my_hd44780_simple_valuez(3),
      I4 => U30_my_hd44780_simple_valuez(4),
      I5 => U30_my_hd44780_simple_valuez(5),
      O => U30_my_hd44780_simple_valuez_cmp_le00002104_1193
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_5_122 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(1),
      O => U30_my_hd44780_simple_N37
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_5_117 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      O => U30_my_hd44780_simple_N33
    );
  U36_Mcount_cs_xor_1_11 : LUT6
    generic map(
      INIT => X"6666777766627773"
    )
    port map (
      I0 => U36_cs(0),
      I1 => U36_Mcount_cs_lut(1),
      I2 => U36_N7,
      I3 => U36_cs(2),
      I4 => U36_N15,
      I5 => U36_cs(1),
      O => U36_Mcount_cs1
    );
  U30_my_hd44780_simple_en_count_mux0000_2_SW0 : LUT4
    generic map(
      INIT => X"EAEE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(0),
      I1 => U30_my_hd44780_simple_cur_state(2),
      I2 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      I3 => U30_my_hd44780_simple_en_started(0),
      O => N24
    );
  U30_my_hd44780_simple_en_count_mux0000_2_SW1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(0),
      I1 => U30_my_hd44780_simple_cur_state(2),
      I2 => U30_my_hd44780_simple_en_started(0),
      O => N25
    );
  U30_my_hd44780_simple_en_count_mux0000_2_Q : LUT6
    generic map(
      INIT => X"FFCCFEDCF3C0F690"
    )
    port map (
      I0 => U30_my_hd44780_simple_en_count(0),
      I1 => U30_my_hd44780_simple_en_count(2),
      I2 => N24,
      I3 => N25,
      I4 => U30_my_hd44780_simple_en_count(1),
      I5 => U30_my_hd44780_simple_N11,
      O => U30_my_hd44780_simple_en_count_mux0000(2)
    );
  U30_my_hd44780_simple_en_count_mux0000_1_Q : LUT6
    generic map(
      INIT => X"FFFFFFFEFF01FF00"
    )
    port map (
      I0 => U30_my_hd44780_simple_en_count(2),
      I1 => U30_my_hd44780_simple_en_count(1),
      I2 => U30_my_hd44780_simple_en_count(0),
      I3 => U30_my_hd44780_simple_cur_state(0),
      I4 => N27,
      I5 => N28,
      O => U30_my_hd44780_simple_en_count_mux0000(1)
    );
  U37_cur_state_FSM_FFd1_In184 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => U36_cs(4),
      I1 => U36_cs(5),
      I2 => U36_cs(3),
      I3 => U36_cs(2),
      I4 => U36_cs(1),
      O => U37_cur_state_FSM_FFd1_In184_1507
    );
  U36_cm_mux0002_1_11 : LUT4
    generic map(
      INIT => X"FF54"
    )
    port map (
      I0 => U37_set_timer_1520,
      I1 => U36_cm(0),
      I2 => U36_N3,
      I3 => U36_N29,
      O => U36_N10
    );
  U3_scratch_11_mux00001 : LUT5
    generic map(
      INIT => X"A1668164"
    )
    port map (
      I0 => U2_ch(4),
      I1 => U2_ch(6),
      I2 => U2_ch(3),
      I3 => U2_ch(5),
      I4 => U2_ch(2),
      O => BUS2432_1_Q
    );
  U14_bcd10_0_11 : LUT5
    generic map(
      INIT => X"C38661C3"
    )
    port map (
      I0 => U36_cm(2),
      I1 => U36_cm(3),
      I2 => U36_cm(5),
      I3 => U36_cm(6),
      I4 => U36_cm(4),
      O => U14_bcd10_0_bdd0
    );
  U14_bcd10_0_71 : LUT5
    generic map(
      INIT => X"CE9C73E7"
    )
    port map (
      I0 => U36_cm(2),
      I1 => U36_cm(3),
      I2 => U36_cm(4),
      I3 => U36_cm(6),
      I4 => U36_cm(5),
      O => U14_bcd10_0_bdd1
    );
  U36_cm_mux0002_5_5_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => U36_cm(2),
      I1 => U36_cm(1),
      I2 => U36_cm(0),
      O => N33
    );
  U36_cm_mux0002_5_5 : LUT6
    generic map(
      INIT => X"AAAAAAAA8AAAAAAA"
    )
    port map (
      I0 => U37_set_timer_1520,
      I1 => U36_cm(5),
      I2 => U36_cm(6),
      I3 => U36_cm(4),
      I4 => U36_cm(3),
      I5 => N33,
      O => U36_N29
    );
  U36_Mcount_cs_xor_3_1_SW0 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => U36_cm(0),
      I1 => U36_N14,
      I2 => U36_cs(5),
      I3 => U36_N3,
      O => N35
    );
  U36_Mcount_cs_xor_3_1_SW1 : LUT6
    generic map(
      INIT => X"0002000200020003"
    )
    port map (
      I0 => U36_N14,
      I1 => U36_cs(5),
      I2 => U36_cs(4),
      I3 => U36_cs(1),
      I4 => U36_cm(0),
      I5 => U36_N3,
      O => N36
    );
  U36_Mcount_cs_xor_3_1 : LUT6
    generic map(
      INIT => X"FEFFA8AAFFFFA9AA"
    )
    port map (
      I0 => U36_cs(3),
      I1 => U36_cs(0),
      I2 => U36_cs(2),
      I3 => U36_Mcount_cs_lut(1),
      I4 => N35,
      I5 => N36,
      O => U36_Mcount_cs3
    );
  U36_Mcount_cs_lut_1_SW0 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U36_cm(4),
      I1 => U36_cm(5),
      I2 => U36_cm(3),
      I3 => U36_cm(2),
      I4 => U36_cm(1),
      I5 => U36_cm(0),
      O => N38
    );
  U36_Mcount_cs_lut_1_Q : LUT6
    generic map(
      INIT => X"5555555554555454"
    )
    port map (
      I0 => U36_cs(1),
      I1 => U36_cs(0),
      I2 => U36_N7,
      I3 => U36_cm(6),
      I4 => N38,
      I5 => U36_cs(2),
      O => U36_Mcount_cs_lut(1)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_12 : LUT6
    generic map(
      INIT => X"FFFFFFFFFEEEFCCC"
    )
    port map (
      I0 => U30_my_hd44780_simple_hd44780_db_1_Q,
      I1 => U30_my_hd44780_simple_cur_state(9),
      I2 => U30_my_hd44780_simple_cur_state(11),
      I3 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I4 => U30_my_hd44780_simple_N3,
      I5 => U30_my_hd44780_simple_N9,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_12_1070
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_34 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I1 => U36_cs(1),
      I2 => U27_bcd10_0_bdd1,
      I3 => U27_bcd10_0_bdd0,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_34_1073
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_111 : LUT4
    generic map(
      INIT => X"0B01"
    )
    port map (
      I0 => U36_cm(1),
      I1 => U14_bcd10_0_bdd1,
      I2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I3 => U14_bcd10_0_bdd0,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_111_1069
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_256 : LUT6
    generic map(
      INIT => X"C8030EF000000000"
    )
    port map (
      I0 => U2_cs(2),
      I1 => U2_cs(3),
      I2 => U2_cs(6),
      I3 => U2_cs(4),
      I4 => U2_cs(5),
      I5 => U30_my_hd44780_simple_N33,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_256_1071
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_389 : LUT6
    generic map(
      INIT => X"82A0022882200208"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U2_cm(5),
      I2 => U2_cm(4),
      I3 => U2_cm(6),
      I4 => U2_cm(3),
      I5 => U2_cm(2),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_389_1074
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_465 : LUT4
    generic map(
      INIT => X"2031"
    )
    port map (
      I0 => U2_cm(1),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I2 => U5_bcd10_0_bdd0,
      I3 => U5_bcd10_0_bdd1,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_465_1076
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_484 : LUT6
    generic map(
      INIT => X"CCCCCCCC8000C040"
    )
    port map (
      I0 => U2_cs(1),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I2 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I3 => U6_bcd10_0_bdd0,
      I4 => U6_bcd10_0_bdd1,
      I5 => U30_my_hd44780_simple_hd44780_db_mux0000_1_465_1076,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_484_1077
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_28 : LUT6
    generic map(
      INIT => X"FFFFFFFFEEFEFEEE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(6),
      I1 => U30_my_hd44780_simple_cur_state(10),
      I2 => U30_my_hd44780_simple_cur_state(11),
      I3 => U30_my_hd44780_simple_cur_line(0),
      I4 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I5 => U30_my_hd44780_simple_cur_state(7),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_28_1104
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_58 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
    port map (
      I0 => U30_my_hd44780_simple_N9,
      I1 => U30_my_hd44780_simple_hd44780_db_3_Q,
      I2 => U30_my_hd44780_simple_N3,
      I3 => BUS1989(3),
      I4 => U30_my_hd44780_simple_N30,
      I5 => U30_my_hd44780_simple_hd44780_db_mux0000_3_28_1104,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_58_1106
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_150 : LUT5
    generic map(
      INIT => X"4120FFFF"
    )
    port map (
      I0 => U36_cs(2),
      I1 => U36_cs(3),
      I2 => U36_cs(5),
      I3 => U36_cs(4),
      I4 => U36_cs(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_150_1099
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_251 : LUT6
    generic map(
      INIT => X"AAAAAAAA02800020"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I1 => U36_cs(2),
      I2 => U36_cs(3),
      I3 => U36_cs(5),
      I4 => U36_cs(4),
      I5 => U36_cs(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_251_1103
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_424 : LUT6
    generic map(
      INIT => X"20184120FFFFFFFF"
    )
    port map (
      I0 => U36_cm(2),
      I1 => U36_cm(3),
      I2 => U36_cm(5),
      I3 => U36_cm(4),
      I4 => U36_cm(6),
      I5 => U36_cm(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_424_1105
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_586 : LUT6
    generic map(
      INIT => X"FFFFFFFF04821804"
    )
    port map (
      I0 => U36_cm(2),
      I1 => U36_cm(3),
      I2 => U36_cm(5),
      I3 => U36_cm(4),
      I4 => U36_cm(6),
      I5 => U36_cm(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_586_1107
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_705 : LUT6
    generic map(
      INIT => X"0F10000000000000"
    )
    port map (
      I0 => U2_cs(2),
      I1 => U2_cs(3),
      I2 => U2_cs(5),
      I3 => U2_cs(4),
      I4 => U2_cs(6),
      I5 => U30_my_hd44780_simple_N33,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_705_1109
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1098 : LUT4
    generic map(
      INIT => X"2226"
    )
    port map (
      I0 => U2_cm(4),
      I1 => U2_cm(5),
      I2 => U2_cm(2),
      I3 => U2_cm(3),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1098_1093
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1143 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1045_1092,
      I1 => U30_my_hd44780_simple_hd44780_db_mux0000_3_705_1109,
      I2 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1131_1094,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1143_1095
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1313 : LUT6
    generic map(
      INIT => X"20184120FFFFFFFF"
    )
    port map (
      I0 => U2_cs(2),
      I1 => U2_cs(3),
      I2 => U2_cs(5),
      I3 => U2_cs(4),
      I4 => U2_cs(6),
      I5 => U2_cs(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1313_1096
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1458 : LUT5
    generic map(
      INIT => X"04821804"
    )
    port map (
      I0 => U2_cs(2),
      I1 => U2_cs(3),
      I2 => U2_cs(5),
      I3 => U2_cs(4),
      I4 => U2_cs(6),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1458_1097
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1477 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U2_cs(1),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I2 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1458_1097,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1477_1098
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1661 : LUT6
    generic map(
      INIT => X"20184120FFFFFFFF"
    )
    port map (
      I0 => U2_cm(2),
      I1 => U2_cm(3),
      I2 => U2_cm(5),
      I3 => U2_cm(4),
      I4 => U2_cm(6),
      I5 => U2_cm(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1661_1100
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1872 : LUT5
    generic map(
      INIT => X"AA808080"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I1 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1313_1096,
      I2 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1477_1098,
      I3 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1661_1100,
      I4 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_1101,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1872_1102
    );
  U3_scratch_12_mux00001 : LUT4
    generic map(
      INIT => X"1A18"
    )
    port map (
      I0 => U2_ch(5),
      I1 => U2_ch(4),
      I2 => U2_ch(6),
      I3 => U2_ch(3),
      O => BUS2432_2_Q
    );
  U3_scratch_13_mux00001 : LUT5
    generic map(
      INIT => X"20202028"
    )
    port map (
      I0 => U2_ch(6),
      I1 => U2_ch(5),
      I2 => U2_ch(4),
      I3 => U2_ch(3),
      I4 => U2_ch(2),
      O => BUS2432_3_Q
    );
  U3_bcd10_0_11 : LUT5
    generic map(
      INIT => X"C38661C3"
    )
    port map (
      I0 => U2_ch(2),
      I1 => U2_ch(3),
      I2 => U2_ch(5),
      I3 => U2_ch(6),
      I4 => U2_ch(4),
      O => U3_bcd10_0_bdd0
    );
  U3_bcd10_0_71 : LUT5
    generic map(
      INIT => X"CE9C73E7"
    )
    port map (
      I0 => U2_ch(2),
      I1 => U2_ch(3),
      I2 => U2_ch(4),
      I3 => U2_ch(6),
      I4 => U2_ch(5),
      O => U3_bcd10_0_bdd1
    );
  U1_Mcount_count_val11_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U1_count_add0000(0),
      I1 => U1_count_add0000(1),
      I2 => U1_count_add0000(2),
      I3 => U1_count_add0000(3),
      O => N40
    );
  U1_Mcount_count_val11 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => U1_count_add0000(8),
      I1 => U1_count_add0000(7),
      I2 => U1_count_add0000(6),
      I3 => U1_count_add0000(5),
      I4 => U1_count_add0000(4),
      I5 => N40,
      O => U1_N2
    );
  U27_bcd10_0_11 : LUT4
    generic map(
      INIT => X"86C3"
    )
    port map (
      I0 => U36_cs(2),
      I1 => U36_cs(3),
      I2 => U36_cs(5),
      I3 => U36_cs(4),
      O => U27_bcd10_0_bdd0
    );
  U6_bcd10_0_11 : LUT5
    generic map(
      INIT => X"C38661C3"
    )
    port map (
      I0 => U2_cs(2),
      I1 => U2_cs(3),
      I2 => U2_cs(5),
      I3 => U2_cs(6),
      I4 => U2_cs(4),
      O => U6_bcd10_0_bdd0
    );
  U5_bcd10_0_11 : LUT5
    generic map(
      INIT => X"C38661C3"
    )
    port map (
      I0 => U2_cm(2),
      I1 => U2_cm(3),
      I2 => U2_cm(5),
      I3 => U2_cm(6),
      I4 => U2_cm(4),
      O => U5_bcd10_0_bdd0
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_326 : LUT6
    generic map(
      INIT => X"FFFFFFFFA2A2A280"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(12),
      I1 => U30_my_hd44780_simple_cur_line(0),
      I2 => U30_my_hd44780_simple_hd44780_db_mux0000_0_91_1067,
      I3 => U30_my_hd44780_simple_hd44780_db_mux0000_0_179_1064,
      I4 => U30_my_hd44780_simple_hd44780_db_mux0000_0_253_1065,
      I5 => U30_my_hd44780_simple_hd44780_db_mux0000_0_7_1066,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_Q
    );
  U1_Mcount_count_val12_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U1_count_add0000(0),
      I1 => U1_count_add0000(1),
      I2 => U1_count_add0000(2),
      I3 => U1_count_add0000(3),
      O => N42
    );
  U1_Mcount_count_val12 : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => U1_count_add0000(8),
      I1 => U1_count_add0000(7),
      I2 => U1_count_add0000(6),
      I3 => U1_count_add0000(5),
      I4 => U1_count_add0000(4),
      I5 => N42,
      O => U1_N3
    );
  U27_bcd10_0_71 : LUT4
    generic map(
      INIT => X"9CE7"
    )
    port map (
      I0 => U36_cs(2),
      I1 => U36_cs(3),
      I2 => U36_cs(4),
      I3 => U36_cs(5),
      O => U27_bcd10_0_bdd1
    );
  U6_bcd10_0_71 : LUT5
    generic map(
      INIT => X"CE9C73E7"
    )
    port map (
      I0 => U2_cs(2),
      I1 => U2_cs(3),
      I2 => U2_cs(4),
      I3 => U2_cs(6),
      I4 => U2_cs(5),
      O => U6_bcd10_0_bdd1
    );
  U5_bcd10_0_71 : LUT5
    generic map(
      INIT => X"CE9C73E7"
    )
    port map (
      I0 => U2_cm(2),
      I1 => U2_cm(3),
      I2 => U2_cm(4),
      I3 => U2_cm(6),
      I4 => U2_cm(5),
      O => U5_bcd10_0_bdd1
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_14 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFAEAEAE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(10),
      I1 => U30_my_hd44780_simple_cur_state(11),
      I2 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I3 => U30_my_hd44780_simple_hd44780_db_2_Q,
      I4 => U30_my_hd44780_simple_N3,
      I5 => U30_my_hd44780_simple_cur_state(9),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_14_1081
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_691 : LUT6
    generic map(
      INIT => X"C63118C68C63318C"
    )
    port map (
      I0 => U36_cm(5),
      I1 => U36_cm(6),
      I2 => U36_cm(3),
      I3 => U36_cm(4),
      I4 => U36_cm(2),
      I5 => U36_cm(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_691_1088
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_772 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => BUS1989(2),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I2 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I3 => U30_my_hd44780_simple_cur_ddram_addr(2),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_772_1090
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1687 : LUT6
    generic map(
      INIT => X"C63118C68C63318C"
    )
    port map (
      I0 => U2_cm(5),
      I1 => U2_cm(6),
      I2 => U2_cm(3),
      I3 => U2_cm(4),
      I4 => U2_cm(2),
      I5 => U2_cm(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_1687_1082
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1798 : LUT5
    generic map(
      INIT => X"00882280"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U2_cm(5),
      I2 => U2_cm(3),
      I3 => U2_cm(6),
      I4 => U2_cm(4),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_1798_1084
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_2217 : LUT6
    generic map(
      INIT => X"C63118C68C63318C"
    )
    port map (
      I0 => U2_ch(5),
      I1 => U2_ch(6),
      I2 => U2_ch(3),
      I3 => U2_ch(4),
      I4 => U2_ch(2),
      I5 => U2_ch(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_2217_1085
    );
  U1_clk_1hz_cmp_eq0000116 : LUT5
    generic map(
      INIT => X"01000000"
    )
    port map (
      I0 => U1_count_add0000(10),
      I1 => U1_count_add0000(11),
      I2 => U1_count_add0000(12),
      I3 => U1_count_add0000(13),
      I4 => U1_count_add0000(14),
      O => U1_clk_1hz_cmp_eq0000116_225
    );
  U1_clk_1hz_cmp_eq0000138 : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => U1_count_add0000(9),
      I1 => U1_count_add0000(23),
      I2 => U1_count_add0000(24),
      I3 => U1_count_add0000(25),
      I4 => U1_count_add0000(26),
      O => U1_clk_1hz_cmp_eq0000138_226
    );
  U1_clk_1hz_cmp_eq0000169 : LUT6
    generic map(
      INIT => X"0400000000000000"
    )
    port map (
      I0 => U1_count_add0000(17),
      I1 => U1_count_add0000(18),
      I2 => U1_count_add0000(19),
      I3 => U1_count_add0000(20),
      I4 => U1_count_add0000(21),
      I5 => U1_count_add0000(22),
      O => U1_clk_1hz_cmp_eq0000169_227
    );
  U34_o_0_cmp_eq000040 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => U34_o_0_add0000(29),
      I1 => U34_o_0_add0000(30),
      I2 => U34_o_0_add0000(31),
      O => U34_o_0_cmp_eq000040_1462
    );
  U34_o_0_cmp_eq0000138 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => U34_o_0_add0000(25),
      I1 => U34_o_0_add0000(26),
      I2 => U34_o_0_add0000(27),
      I3 => U34_o_0_add0000(28),
      O => U34_o_0_cmp_eq0000138_1459
    );
  U34_o_0_cmp_eq0000185 : LUT6
    generic map(
      INIT => X"0000000000000040"
    )
    port map (
      I0 => U34_o_0_add0000(8),
      I1 => U34_o_0_add0000(9),
      I2 => U34_o_0_add0000(10),
      I3 => U34_o_0_add0000(11),
      I4 => U34_o_0_add0000(13),
      I5 => U34_o_0_add0000(14),
      O => U34_o_0_cmp_eq0000185_1460
    );
  U34_o_0_cmp_eq0000221 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => U34_o_0_add0000(24),
      I1 => U34_o_0_cmp_eq0000185_1460,
      I2 => U34_o_0_cmp_eq0000138_1459,
      I3 => U34_o_0_cmp_eq000040_1462,
      I4 => U34_o_0_cmp_eq000026_1461,
      I5 => U34_o_0_cmp_eq0000107_1458,
      O => U34_o_0_cmp_eq0000
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_1554
    );
  pb_settime_IBUF : IBUF
    port map (
      I => pb_settime,
      O => pb_settime_IBUF_1550
    );
  pb_hour_IBUF : IBUF
    port map (
      I => pb_hour,
      O => pb_hour_IBUF_1546
    );
  pb_settimer_IBUF : IBUF
    port map (
      I => pb_settimer,
      O => pb_settimer_IBUF_1552
    );
  pb_canceltimer_IBUF : IBUF
    port map (
      I => pb_canceltimer,
      O => pb_canceltimer_IBUF_1544
    );
  pb_min_IBUF : IBUF
    port map (
      I => pb_min,
      O => pb_min_IBUF_1548
    );
  hd44780_en_OBUF : OBUF
    port map (
      I => U30_my_hd44780_simple_en_started(0),
      O => hd44780_en
    );
  ovenout_OBUF : OBUF
    port map (
      I => U37_oven_1516,
      O => ovenout
    );
  settingtimerout_OBUF : OBUF
    port map (
      I => U37_set_timer_1520,
      O => settingtimerout
    );
  hd44780_rs_OBUF : OBUF
    port map (
      I => U30_my_hd44780_simple_hd44780_rs_1117,
      O => hd44780_rs
    );
  hd44780_rw_OBUF : OBUF
    port map (
      I => BUS2432_6_Q,
      O => hd44780_rw
    );
  settingtimeout_OBUF : OBUF
    port map (
      I => U37_set_time_1519,
      O => settingtimeout
    );
  buzzerleds_3_OBUF : OBUF
    port map (
      I => U34_leds(3),
      O => buzzerleds(3)
    );
  buzzerleds_2_OBUF : OBUF
    port map (
      I => U34_leds(2),
      O => buzzerleds(2)
    );
  buzzerleds_1_OBUF : OBUF
    port map (
      I => U34_leds(1),
      O => buzzerleds(1)
    );
  buzzerleds_0_OBUF : OBUF
    port map (
      I => U34_leds(0),
      O => buzzerleds(0)
    );
  hd44780_db_7_OBUF : OBUF
    port map (
      I => U30_my_hd44780_simple_hd44780_db_7_Q,
      O => hd44780_db(7)
    );
  hd44780_db_6_OBUF : OBUF
    port map (
      I => BUS2432_6_Q,
      O => hd44780_db(6)
    );
  hd44780_db_5_OBUF : OBUF
    port map (
      I => U30_my_hd44780_simple_hd44780_db_5_Q,
      O => hd44780_db(5)
    );
  hd44780_db_4_OBUF : OBUF
    port map (
      I => U30_my_hd44780_simple_hd44780_db_4_Q,
      O => hd44780_db(4)
    );
  hd44780_db_3_OBUF : OBUF
    port map (
      I => U30_my_hd44780_simple_hd44780_db_3_Q,
      O => hd44780_db(3)
    );
  hd44780_db_2_OBUF : OBUF
    port map (
      I => U30_my_hd44780_simple_hd44780_db_2_Q,
      O => hd44780_db(2)
    );
  hd44780_db_1_OBUF : OBUF
    port map (
      I => U30_my_hd44780_simple_hd44780_db_1_Q,
      O => hd44780_db(1)
    );
  hd44780_db_0_OBUF : OBUF
    port map (
      I => U30_my_hd44780_simple_hd44780_db_0_Q,
      O => hd44780_db(0)
    );
  U1_Mcount_count_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(30),
      O => U1_Mcount_count_cy_30_rt_172
    );
  U1_Mcount_count_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(29),
      O => U1_Mcount_count_cy_29_rt_168
    );
  U1_Mcount_count_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(28),
      O => U1_Mcount_count_cy_28_rt_166
    );
  U1_Mcount_count_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(27),
      O => U1_Mcount_count_cy_27_rt_164
    );
  U1_Mcount_count_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(26),
      O => U1_Mcount_count_cy_26_rt_162
    );
  U1_Mcount_count_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(25),
      O => U1_Mcount_count_cy_25_rt_160
    );
  U1_Mcount_count_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(24),
      O => U1_Mcount_count_cy_24_rt_158
    );
  U1_Mcount_count_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(23),
      O => U1_Mcount_count_cy_23_rt_156
    );
  U1_Mcount_count_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(22),
      O => U1_Mcount_count_cy_22_rt_154
    );
  U1_Mcount_count_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(21),
      O => U1_Mcount_count_cy_21_rt_152
    );
  U1_Mcount_count_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(20),
      O => U1_Mcount_count_cy_20_rt_150
    );
  U1_Mcount_count_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(19),
      O => U1_Mcount_count_cy_19_rt_146
    );
  U1_Mcount_count_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(18),
      O => U1_Mcount_count_cy_18_rt_144
    );
  U1_Mcount_count_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(17),
      O => U1_Mcount_count_cy_17_rt_142
    );
  U1_Mcount_count_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(16),
      O => U1_Mcount_count_cy_16_rt_140
    );
  U1_Mcount_count_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(15),
      O => U1_Mcount_count_cy_15_rt_138
    );
  U1_Mcount_count_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(14),
      O => U1_Mcount_count_cy_14_rt_136
    );
  U1_Mcount_count_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(13),
      O => U1_Mcount_count_cy_13_rt_134
    );
  U1_Mcount_count_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(12),
      O => U1_Mcount_count_cy_12_rt_132
    );
  U1_Mcount_count_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(11),
      O => U1_Mcount_count_cy_11_rt_130
    );
  U1_Mcount_count_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(10),
      O => U1_Mcount_count_cy_10_rt_128
    );
  U1_Mcount_count_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(9),
      O => U1_Mcount_count_cy_9_rt_186
    );
  U1_Mcount_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(8),
      O => U1_Mcount_count_cy_8_rt_184
    );
  U1_Mcount_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(7),
      O => U1_Mcount_count_cy_7_rt_182
    );
  U1_Mcount_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(6),
      O => U1_Mcount_count_cy_6_rt_180
    );
  U1_Mcount_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(5),
      O => U1_Mcount_count_cy_5_rt_178
    );
  U1_Mcount_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(4),
      O => U1_Mcount_count_cy_4_rt_176
    );
  U1_Mcount_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(3),
      O => U1_Mcount_count_cy_3_rt_174
    );
  U1_Mcount_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(2),
      O => U1_Mcount_count_cy_2_rt_170
    );
  U1_Mcount_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(1),
      O => U1_Mcount_count_cy_1_rt_148
    );
  U1_Madd_count_add0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(30),
      O => U1_Madd_count_add0000_cy_30_rt_109
    );
  U1_Madd_count_add0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(29),
      O => U1_Madd_count_add0000_cy_29_rt_105
    );
  U1_Madd_count_add0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(28),
      O => U1_Madd_count_add0000_cy_28_rt_103
    );
  U1_Madd_count_add0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(27),
      O => U1_Madd_count_add0000_cy_27_rt_101
    );
  U1_Madd_count_add0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(26),
      O => U1_Madd_count_add0000_cy_26_rt_99
    );
  U1_Madd_count_add0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(25),
      O => U1_Madd_count_add0000_cy_25_rt_97
    );
  U1_Madd_count_add0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(24),
      O => U1_Madd_count_add0000_cy_24_rt_95
    );
  U1_Madd_count_add0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(23),
      O => U1_Madd_count_add0000_cy_23_rt_93
    );
  U1_Madd_count_add0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(22),
      O => U1_Madd_count_add0000_cy_22_rt_91
    );
  U1_Madd_count_add0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(21),
      O => U1_Madd_count_add0000_cy_21_rt_89
    );
  U1_Madd_count_add0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(20),
      O => U1_Madd_count_add0000_cy_20_rt_87
    );
  U1_Madd_count_add0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(19),
      O => U1_Madd_count_add0000_cy_19_rt_83
    );
  U1_Madd_count_add0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(18),
      O => U1_Madd_count_add0000_cy_18_rt_81
    );
  U1_Madd_count_add0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(17),
      O => U1_Madd_count_add0000_cy_17_rt_79
    );
  U1_Madd_count_add0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(16),
      O => U1_Madd_count_add0000_cy_16_rt_77
    );
  U1_Madd_count_add0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(15),
      O => U1_Madd_count_add0000_cy_15_rt_75
    );
  U1_Madd_count_add0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(14),
      O => U1_Madd_count_add0000_cy_14_rt_73
    );
  U1_Madd_count_add0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(13),
      O => U1_Madd_count_add0000_cy_13_rt_71
    );
  U1_Madd_count_add0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(12),
      O => U1_Madd_count_add0000_cy_12_rt_69
    );
  U1_Madd_count_add0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(11),
      O => U1_Madd_count_add0000_cy_11_rt_67
    );
  U1_Madd_count_add0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(10),
      O => U1_Madd_count_add0000_cy_10_rt_65
    );
  U1_Madd_count_add0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(9),
      O => U1_Madd_count_add0000_cy_9_rt_123
    );
  U1_Madd_count_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(8),
      O => U1_Madd_count_add0000_cy_8_rt_121
    );
  U1_Madd_count_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(7),
      O => U1_Madd_count_add0000_cy_7_rt_119
    );
  U1_Madd_count_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(6),
      O => U1_Madd_count_add0000_cy_6_rt_117
    );
  U1_Madd_count_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(5),
      O => U1_Madd_count_add0000_cy_5_rt_115
    );
  U1_Madd_count_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(4),
      O => U1_Madd_count_add0000_cy_4_rt_113
    );
  U1_Madd_count_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(3),
      O => U1_Madd_count_add0000_cy_3_rt_111
    );
  U1_Madd_count_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(2),
      O => U1_Madd_count_add0000_cy_2_rt_107
    );
  U1_Madd_count_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(1),
      O => U1_Madd_count_add0000_cy_1_rt_85
    );
  U24_Mcount_count_per_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(18),
      O => U24_Mcount_count_per_cy_18_rt_837
    );
  U24_Mcount_count_per_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(17),
      O => U24_Mcount_count_per_cy_17_rt_835
    );
  U24_Mcount_count_per_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(16),
      O => U24_Mcount_count_per_cy_16_rt_833
    );
  U24_Mcount_count_per_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(15),
      O => U24_Mcount_count_per_cy_15_rt_831
    );
  U24_Mcount_count_per_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(14),
      O => U24_Mcount_count_per_cy_14_rt_829
    );
  U24_Mcount_count_per_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(13),
      O => U24_Mcount_count_per_cy_13_rt_827
    );
  U24_Mcount_count_per_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(12),
      O => U24_Mcount_count_per_cy_12_rt_825
    );
  U24_Mcount_count_per_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(11),
      O => U24_Mcount_count_per_cy_11_rt_823
    );
  U24_Mcount_count_per_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(10),
      O => U24_Mcount_count_per_cy_10_rt_821
    );
  U24_Mcount_count_per_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(9),
      O => U24_Mcount_count_per_cy_9_rt_855
    );
  U24_Mcount_count_per_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(8),
      O => U24_Mcount_count_per_cy_8_rt_853
    );
  U24_Mcount_count_per_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(7),
      O => U24_Mcount_count_per_cy_7_rt_851
    );
  U24_Mcount_count_per_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(6),
      O => U24_Mcount_count_per_cy_6_rt_849
    );
  U24_Mcount_count_per_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(5),
      O => U24_Mcount_count_per_cy_5_rt_847
    );
  U24_Mcount_count_per_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(4),
      O => U24_Mcount_count_per_cy_4_rt_845
    );
  U24_Mcount_count_per_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(3),
      O => U24_Mcount_count_per_cy_3_rt_843
    );
  U24_Mcount_count_per_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(2),
      O => U24_Mcount_count_per_cy_2_rt_841
    );
  U24_Mcount_count_per_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(1),
      O => U24_Mcount_count_per_cy_1_rt_839
    );
  U22_Mcount_count_per_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(18),
      O => U22_Mcount_count_per_cy_18_rt_728
    );
  U22_Mcount_count_per_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(17),
      O => U22_Mcount_count_per_cy_17_rt_726
    );
  U22_Mcount_count_per_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(16),
      O => U22_Mcount_count_per_cy_16_rt_724
    );
  U22_Mcount_count_per_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(15),
      O => U22_Mcount_count_per_cy_15_rt_722
    );
  U22_Mcount_count_per_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(14),
      O => U22_Mcount_count_per_cy_14_rt_720
    );
  U22_Mcount_count_per_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(13),
      O => U22_Mcount_count_per_cy_13_rt_718
    );
  U22_Mcount_count_per_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(12),
      O => U22_Mcount_count_per_cy_12_rt_716
    );
  U22_Mcount_count_per_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(11),
      O => U22_Mcount_count_per_cy_11_rt_714
    );
  U22_Mcount_count_per_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(10),
      O => U22_Mcount_count_per_cy_10_rt_712
    );
  U22_Mcount_count_per_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(9),
      O => U22_Mcount_count_per_cy_9_rt_746
    );
  U22_Mcount_count_per_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(8),
      O => U22_Mcount_count_per_cy_8_rt_744
    );
  U22_Mcount_count_per_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(7),
      O => U22_Mcount_count_per_cy_7_rt_742
    );
  U22_Mcount_count_per_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(6),
      O => U22_Mcount_count_per_cy_6_rt_740
    );
  U22_Mcount_count_per_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(5),
      O => U22_Mcount_count_per_cy_5_rt_738
    );
  U22_Mcount_count_per_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(4),
      O => U22_Mcount_count_per_cy_4_rt_736
    );
  U22_Mcount_count_per_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(3),
      O => U22_Mcount_count_per_cy_3_rt_734
    );
  U22_Mcount_count_per_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(2),
      O => U22_Mcount_count_per_cy_2_rt_732
    );
  U22_Mcount_count_per_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(1),
      O => U22_Mcount_count_per_cy_1_rt_730
    );
  U20_Mcount_count_per_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(18),
      O => U20_Mcount_count_per_cy_18_rt_619
    );
  U20_Mcount_count_per_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(17),
      O => U20_Mcount_count_per_cy_17_rt_617
    );
  U20_Mcount_count_per_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(16),
      O => U20_Mcount_count_per_cy_16_rt_615
    );
  U20_Mcount_count_per_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(15),
      O => U20_Mcount_count_per_cy_15_rt_613
    );
  U20_Mcount_count_per_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(14),
      O => U20_Mcount_count_per_cy_14_rt_611
    );
  U20_Mcount_count_per_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(13),
      O => U20_Mcount_count_per_cy_13_rt_609
    );
  U20_Mcount_count_per_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(12),
      O => U20_Mcount_count_per_cy_12_rt_607
    );
  U20_Mcount_count_per_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(11),
      O => U20_Mcount_count_per_cy_11_rt_605
    );
  U20_Mcount_count_per_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(10),
      O => U20_Mcount_count_per_cy_10_rt_603
    );
  U20_Mcount_count_per_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(9),
      O => U20_Mcount_count_per_cy_9_rt_637
    );
  U20_Mcount_count_per_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(8),
      O => U20_Mcount_count_per_cy_8_rt_635
    );
  U20_Mcount_count_per_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(7),
      O => U20_Mcount_count_per_cy_7_rt_633
    );
  U20_Mcount_count_per_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(6),
      O => U20_Mcount_count_per_cy_6_rt_631
    );
  U20_Mcount_count_per_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(5),
      O => U20_Mcount_count_per_cy_5_rt_629
    );
  U20_Mcount_count_per_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(4),
      O => U20_Mcount_count_per_cy_4_rt_627
    );
  U20_Mcount_count_per_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(3),
      O => U20_Mcount_count_per_cy_3_rt_625
    );
  U20_Mcount_count_per_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(2),
      O => U20_Mcount_count_per_cy_2_rt_623
    );
  U20_Mcount_count_per_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(1),
      O => U20_Mcount_count_per_cy_1_rt_621
    );
  U18_Mcount_count_per_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(18),
      O => U18_Mcount_count_per_cy_18_rt_459
    );
  U18_Mcount_count_per_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(17),
      O => U18_Mcount_count_per_cy_17_rt_457
    );
  U18_Mcount_count_per_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(16),
      O => U18_Mcount_count_per_cy_16_rt_455
    );
  U18_Mcount_count_per_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(15),
      O => U18_Mcount_count_per_cy_15_rt_453
    );
  U18_Mcount_count_per_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(14),
      O => U18_Mcount_count_per_cy_14_rt_451
    );
  U18_Mcount_count_per_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(13),
      O => U18_Mcount_count_per_cy_13_rt_449
    );
  U18_Mcount_count_per_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(12),
      O => U18_Mcount_count_per_cy_12_rt_447
    );
  U18_Mcount_count_per_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(11),
      O => U18_Mcount_count_per_cy_11_rt_445
    );
  U18_Mcount_count_per_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(10),
      O => U18_Mcount_count_per_cy_10_rt_443
    );
  U18_Mcount_count_per_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(9),
      O => U18_Mcount_count_per_cy_9_rt_477
    );
  U18_Mcount_count_per_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(8),
      O => U18_Mcount_count_per_cy_8_rt_475
    );
  U18_Mcount_count_per_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(7),
      O => U18_Mcount_count_per_cy_7_rt_473
    );
  U18_Mcount_count_per_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(6),
      O => U18_Mcount_count_per_cy_6_rt_471
    );
  U18_Mcount_count_per_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(5),
      O => U18_Mcount_count_per_cy_5_rt_469
    );
  U18_Mcount_count_per_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(4),
      O => U18_Mcount_count_per_cy_4_rt_467
    );
  U18_Mcount_count_per_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(3),
      O => U18_Mcount_count_per_cy_3_rt_465
    );
  U18_Mcount_count_per_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(2),
      O => U18_Mcount_count_per_cy_2_rt_463
    );
  U18_Mcount_count_per_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(1),
      O => U18_Mcount_count_per_cy_1_rt_461
    );
  U16_Mcount_count_per_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(18),
      O => U16_Mcount_count_per_cy_18_rt_350
    );
  U16_Mcount_count_per_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(17),
      O => U16_Mcount_count_per_cy_17_rt_348
    );
  U16_Mcount_count_per_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(16),
      O => U16_Mcount_count_per_cy_16_rt_346
    );
  U16_Mcount_count_per_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(15),
      O => U16_Mcount_count_per_cy_15_rt_344
    );
  U16_Mcount_count_per_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(14),
      O => U16_Mcount_count_per_cy_14_rt_342
    );
  U16_Mcount_count_per_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(13),
      O => U16_Mcount_count_per_cy_13_rt_340
    );
  U16_Mcount_count_per_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(12),
      O => U16_Mcount_count_per_cy_12_rt_338
    );
  U16_Mcount_count_per_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(11),
      O => U16_Mcount_count_per_cy_11_rt_336
    );
  U16_Mcount_count_per_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(10),
      O => U16_Mcount_count_per_cy_10_rt_334
    );
  U16_Mcount_count_per_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(9),
      O => U16_Mcount_count_per_cy_9_rt_368
    );
  U16_Mcount_count_per_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(8),
      O => U16_Mcount_count_per_cy_8_rt_366
    );
  U16_Mcount_count_per_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(7),
      O => U16_Mcount_count_per_cy_7_rt_364
    );
  U16_Mcount_count_per_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(6),
      O => U16_Mcount_count_per_cy_6_rt_362
    );
  U16_Mcount_count_per_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(5),
      O => U16_Mcount_count_per_cy_5_rt_360
    );
  U16_Mcount_count_per_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(4),
      O => U16_Mcount_count_per_cy_4_rt_358
    );
  U16_Mcount_count_per_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(3),
      O => U16_Mcount_count_per_cy_3_rt_356
    );
  U16_Mcount_count_per_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(2),
      O => U16_Mcount_count_per_cy_2_rt_354
    );
  U16_Mcount_count_per_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(1),
      O => U16_Mcount_count_per_cy_1_rt_352
    );
  U34_Mcount_cnt_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(30),
      O => U34_Mcount_cnt_cy_30_rt_1305
    );
  U34_Mcount_cnt_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(29),
      O => U34_Mcount_cnt_cy_29_rt_1301
    );
  U34_Mcount_cnt_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(28),
      O => U34_Mcount_cnt_cy_28_rt_1299
    );
  U34_Mcount_cnt_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(27),
      O => U34_Mcount_cnt_cy_27_rt_1297
    );
  U34_Mcount_cnt_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(26),
      O => U34_Mcount_cnt_cy_26_rt_1295
    );
  U34_Mcount_cnt_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(25),
      O => U34_Mcount_cnt_cy_25_rt_1293
    );
  U34_Mcount_cnt_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(24),
      O => U34_Mcount_cnt_cy_24_rt_1291
    );
  U34_Mcount_cnt_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(23),
      O => U34_Mcount_cnt_cy_23_rt_1289
    );
  U34_Mcount_cnt_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(22),
      O => U34_Mcount_cnt_cy_22_rt_1287
    );
  U34_Mcount_cnt_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(21),
      O => U34_Mcount_cnt_cy_21_rt_1285
    );
  U34_Mcount_cnt_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(20),
      O => U34_Mcount_cnt_cy_20_rt_1283
    );
  U34_Mcount_cnt_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(19),
      O => U34_Mcount_cnt_cy_19_rt_1279
    );
  U34_Mcount_cnt_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(18),
      O => U34_Mcount_cnt_cy_18_rt_1277
    );
  U34_Mcount_cnt_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(17),
      O => U34_Mcount_cnt_cy_17_rt_1275
    );
  U34_Mcount_cnt_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(16),
      O => U34_Mcount_cnt_cy_16_rt_1273
    );
  U34_Mcount_cnt_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(15),
      O => U34_Mcount_cnt_cy_15_rt_1271
    );
  U34_Mcount_cnt_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(14),
      O => U34_Mcount_cnt_cy_14_rt_1269
    );
  U34_Mcount_cnt_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(13),
      O => U34_Mcount_cnt_cy_13_rt_1267
    );
  U34_Mcount_cnt_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(12),
      O => U34_Mcount_cnt_cy_12_rt_1265
    );
  U34_Mcount_cnt_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(11),
      O => U34_Mcount_cnt_cy_11_rt_1263
    );
  U34_Mcount_cnt_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(10),
      O => U34_Mcount_cnt_cy_10_rt_1261
    );
  U34_Mcount_cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(9),
      O => U34_Mcount_cnt_cy_9_rt_1319
    );
  U34_Mcount_cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(8),
      O => U34_Mcount_cnt_cy_8_rt_1317
    );
  U34_Mcount_cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(7),
      O => U34_Mcount_cnt_cy_7_rt_1315
    );
  U34_Mcount_cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(6),
      O => U34_Mcount_cnt_cy_6_rt_1313
    );
  U34_Mcount_cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(5),
      O => U34_Mcount_cnt_cy_5_rt_1311
    );
  U34_Mcount_cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(4),
      O => U34_Mcount_cnt_cy_4_rt_1309
    );
  U34_Mcount_cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(3),
      O => U34_Mcount_cnt_cy_3_rt_1307
    );
  U34_Mcount_cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(2),
      O => U34_Mcount_cnt_cy_2_rt_1303
    );
  U34_Mcount_cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(1),
      O => U34_Mcount_cnt_cy_1_rt_1281
    );
  U34_Madd_o_0_add0000_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(30),
      O => U34_Madd_o_0_add0000_cy_30_rt_1242
    );
  U34_Madd_o_0_add0000_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(29),
      O => U34_Madd_o_0_add0000_cy_29_rt_1238
    );
  U34_Madd_o_0_add0000_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(28),
      O => U34_Madd_o_0_add0000_cy_28_rt_1236
    );
  U34_Madd_o_0_add0000_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(27),
      O => U34_Madd_o_0_add0000_cy_27_rt_1234
    );
  U34_Madd_o_0_add0000_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(26),
      O => U34_Madd_o_0_add0000_cy_26_rt_1232
    );
  U34_Madd_o_0_add0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(25),
      O => U34_Madd_o_0_add0000_cy_25_rt_1230
    );
  U34_Madd_o_0_add0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(24),
      O => U34_Madd_o_0_add0000_cy_24_rt_1228
    );
  U34_Madd_o_0_add0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(23),
      O => U34_Madd_o_0_add0000_cy_23_rt_1226
    );
  U34_Madd_o_0_add0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(22),
      O => U34_Madd_o_0_add0000_cy_22_rt_1224
    );
  U34_Madd_o_0_add0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(21),
      O => U34_Madd_o_0_add0000_cy_21_rt_1222
    );
  U34_Madd_o_0_add0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(20),
      O => U34_Madd_o_0_add0000_cy_20_rt_1220
    );
  U34_Madd_o_0_add0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(19),
      O => U34_Madd_o_0_add0000_cy_19_rt_1216
    );
  U34_Madd_o_0_add0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(18),
      O => U34_Madd_o_0_add0000_cy_18_rt_1214
    );
  U34_Madd_o_0_add0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(17),
      O => U34_Madd_o_0_add0000_cy_17_rt_1212
    );
  U34_Madd_o_0_add0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(16),
      O => U34_Madd_o_0_add0000_cy_16_rt_1210
    );
  U34_Madd_o_0_add0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(15),
      O => U34_Madd_o_0_add0000_cy_15_rt_1208
    );
  U34_Madd_o_0_add0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(14),
      O => U34_Madd_o_0_add0000_cy_14_rt_1206
    );
  U34_Madd_o_0_add0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(13),
      O => U34_Madd_o_0_add0000_cy_13_rt_1204
    );
  U34_Madd_o_0_add0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(12),
      O => U34_Madd_o_0_add0000_cy_12_rt_1202
    );
  U34_Madd_o_0_add0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(11),
      O => U34_Madd_o_0_add0000_cy_11_rt_1200
    );
  U34_Madd_o_0_add0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(10),
      O => U34_Madd_o_0_add0000_cy_10_rt_1198
    );
  U34_Madd_o_0_add0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(9),
      O => U34_Madd_o_0_add0000_cy_9_rt_1256
    );
  U34_Madd_o_0_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(8),
      O => U34_Madd_o_0_add0000_cy_8_rt_1254
    );
  U34_Madd_o_0_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(7),
      O => U34_Madd_o_0_add0000_cy_7_rt_1252
    );
  U34_Madd_o_0_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(6),
      O => U34_Madd_o_0_add0000_cy_6_rt_1250
    );
  U34_Madd_o_0_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(5),
      O => U34_Madd_o_0_add0000_cy_5_rt_1248
    );
  U34_Madd_o_0_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(4),
      O => U34_Madd_o_0_add0000_cy_4_rt_1246
    );
  U34_Madd_o_0_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(3),
      O => U34_Madd_o_0_add0000_cy_3_rt_1244
    );
  U34_Madd_o_0_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(2),
      O => U34_Madd_o_0_add0000_cy_2_rt_1240
    );
  U34_Madd_o_0_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(1),
      O => U34_Madd_o_0_add0000_cy_1_rt_1218
    );
  U1_Mcount_count_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(31),
      O => U1_Mcount_count_xor_31_rt_188
    );
  U1_Madd_count_add0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_count(31),
      O => U1_Madd_count_add0000_xor_31_rt_125
    );
  U24_Mcount_count_per_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U24_count_per(19),
      O => U24_Mcount_count_per_xor_19_rt_877
    );
  U22_Mcount_count_per_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U22_count_per(19),
      O => U22_Mcount_count_per_xor_19_rt_768
    );
  U20_Mcount_count_per_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U20_count_per(19),
      O => U20_Mcount_count_per_xor_19_rt_659
    );
  U18_Mcount_count_per_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U18_count_per(19),
      O => U18_Mcount_count_per_xor_19_rt_499
    );
  U16_Mcount_count_per_xor_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U16_count_per(19),
      O => U16_Mcount_count_per_xor_19_rt_390
    );
  U34_Mcount_cnt_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(31),
      O => U34_Mcount_cnt_xor_31_rt_1321
    );
  U34_Madd_o_0_add0000_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_cnt(31),
      O => U34_Madd_o_0_add0000_xor_31_rt_1258
    );
  U34_o_0_cmp_eq0000107_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U34_o_0_add0000(0),
      I1 => U34_o_0_add0000(2),
      I2 => U34_o_0_add0000(3),
      I3 => U34_o_0_add0000(4),
      I4 => U34_o_0_add0000(5),
      I5 => U34_o_0_add0000(6),
      O => N44
    );
  U34_o_0_cmp_eq0000107 : LUT6
    generic map(
      INIT => X"0000000000000080"
    )
    port map (
      I0 => U34_o_0_add0000(12),
      I1 => U34_o_0_add0000(7),
      I2 => U34_o_0_add0000(15),
      I3 => U34_o_0_add0000(17),
      I4 => U34_o_0_add0000(16),
      I5 => N44,
      O => U34_o_0_cmp_eq0000107_1458
    );
  U34_cnt_or00001 : LUT6
    generic map(
      INIT => X"7555555555555555"
    )
    port map (
      I0 => U37_buzz_1504,
      I1 => N46,
      I2 => U34_o_0_cmp_eq0000138_1459,
      I3 => U34_o_0_cmp_eq000040_1462,
      I4 => U34_o_0_cmp_eq000026_1461,
      I5 => U34_o_0_cmp_eq0000107_1458,
      O => U34_cnt_or0000
    );
  U34_cnt_31_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(31),
      I1 => U34_cnt_or0000,
      O => U34_cnt_31_rstpot_1405
    );
  U34_cnt_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_31_rstpot_1405,
      Q => U34_cnt(31)
    );
  U34_cnt_30_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(30),
      I1 => U34_cnt_or0000,
      O => U34_cnt_30_rstpot_1403
    );
  U34_cnt_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_30_rstpot_1403,
      Q => U34_cnt(30)
    );
  U34_cnt_29_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(29),
      I1 => U34_cnt_or0000,
      O => U34_cnt_29_rstpot_1399
    );
  U34_cnt_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_29_rstpot_1399,
      Q => U34_cnt(29)
    );
  U34_cnt_28_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(28),
      I1 => U34_cnt_or0000,
      O => U34_cnt_28_rstpot_1397
    );
  U34_cnt_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_28_rstpot_1397,
      Q => U34_cnt(28)
    );
  U34_cnt_27_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(27),
      I1 => U34_cnt_or0000,
      O => U34_cnt_27_rstpot_1395
    );
  U34_cnt_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_27_rstpot_1395,
      Q => U34_cnt(27)
    );
  U34_cnt_26_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(26),
      I1 => U34_cnt_or0000,
      O => U34_cnt_26_rstpot_1393
    );
  U34_cnt_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_26_rstpot_1393,
      Q => U34_cnt(26)
    );
  U34_cnt_25_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(25),
      I1 => U34_cnt_or0000,
      O => U34_cnt_25_rstpot_1391
    );
  U34_cnt_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_25_rstpot_1391,
      Q => U34_cnt(25)
    );
  U34_cnt_24_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(24),
      I1 => U34_cnt_or0000,
      O => U34_cnt_24_rstpot_1389
    );
  U34_cnt_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_24_rstpot_1389,
      Q => U34_cnt(24)
    );
  U34_cnt_23_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(23),
      I1 => U34_cnt_or0000,
      O => U34_cnt_23_rstpot_1387
    );
  U34_cnt_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_23_rstpot_1387,
      Q => U34_cnt(23)
    );
  U34_cnt_22_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(22),
      I1 => U34_cnt_or0000,
      O => U34_cnt_22_rstpot_1385
    );
  U34_cnt_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_22_rstpot_1385,
      Q => U34_cnt(22)
    );
  U34_cnt_21_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(21),
      I1 => U34_cnt_or0000,
      O => U34_cnt_21_rstpot_1383
    );
  U34_cnt_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_21_rstpot_1383,
      Q => U34_cnt(21)
    );
  U34_cnt_20_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(20),
      I1 => U34_cnt_or0000,
      O => U34_cnt_20_rstpot_1381
    );
  U34_cnt_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_20_rstpot_1381,
      Q => U34_cnt(20)
    );
  U34_cnt_19_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(19),
      I1 => U34_cnt_or0000,
      O => U34_cnt_19_rstpot_1377
    );
  U34_cnt_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_19_rstpot_1377,
      Q => U34_cnt(19)
    );
  U34_cnt_18_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(18),
      I1 => U34_cnt_or0000,
      O => U34_cnt_18_rstpot_1375
    );
  U34_cnt_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_18_rstpot_1375,
      Q => U34_cnt(18)
    );
  U34_cnt_17_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(17),
      I1 => U34_cnt_or0000,
      O => U34_cnt_17_rstpot_1373
    );
  U34_cnt_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_17_rstpot_1373,
      Q => U34_cnt(17)
    );
  U34_cnt_16_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(16),
      I1 => U34_cnt_or0000,
      O => U34_cnt_16_rstpot_1371
    );
  U34_cnt_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_16_rstpot_1371,
      Q => U34_cnt(16)
    );
  U34_cnt_15_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(15),
      I1 => U34_cnt_or0000,
      O => U34_cnt_15_rstpot_1369
    );
  U34_cnt_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_15_rstpot_1369,
      Q => U34_cnt(15)
    );
  U34_cnt_14_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(14),
      I1 => U34_cnt_or0000,
      O => U34_cnt_14_rstpot_1367
    );
  U34_cnt_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_14_rstpot_1367,
      Q => U34_cnt(14)
    );
  U34_cnt_13_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(13),
      I1 => U34_cnt_or0000,
      O => U34_cnt_13_rstpot_1365
    );
  U34_cnt_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_13_rstpot_1365,
      Q => U34_cnt(13)
    );
  U34_cnt_12_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(12),
      I1 => U34_cnt_or0000,
      O => U34_cnt_12_rstpot_1363
    );
  U34_cnt_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_12_rstpot_1363,
      Q => U34_cnt(12)
    );
  U34_cnt_11_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(11),
      I1 => U34_cnt_or0000,
      O => U34_cnt_11_rstpot_1361
    );
  U34_cnt_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_11_rstpot_1361,
      Q => U34_cnt(11)
    );
  U34_cnt_10_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(10),
      I1 => U34_cnt_or0000,
      O => U34_cnt_10_rstpot_1359
    );
  U34_cnt_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_10_rstpot_1359,
      Q => U34_cnt(10)
    );
  U34_cnt_9_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(9),
      I1 => U34_cnt_or0000,
      O => U34_cnt_9_rstpot_1418
    );
  U34_cnt_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_9_rstpot_1418,
      Q => U34_cnt(9)
    );
  U34_cnt_8_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(8),
      I1 => U34_cnt_or0000,
      O => U34_cnt_8_rstpot_1416
    );
  U34_cnt_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_8_rstpot_1416,
      Q => U34_cnt(8)
    );
  U34_cnt_7_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(7),
      I1 => U34_cnt_or0000,
      O => U34_cnt_7_rstpot_1414
    );
  U34_cnt_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_7_rstpot_1414,
      Q => U34_cnt(7)
    );
  U34_cnt_6_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(6),
      I1 => U34_cnt_or0000,
      O => U34_cnt_6_rstpot_1412
    );
  U34_cnt_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_6_rstpot_1412,
      Q => U34_cnt(6)
    );
  U34_cnt_5_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(5),
      I1 => U34_cnt_or0000,
      O => U34_cnt_5_rstpot_1410
    );
  U34_cnt_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_5_rstpot_1410,
      Q => U34_cnt(5)
    );
  U34_cnt_4_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(4),
      I1 => U34_cnt_or0000,
      O => U34_cnt_4_rstpot_1408
    );
  U34_cnt_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_4_rstpot_1408,
      Q => U34_cnt(4)
    );
  U34_cnt_3_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(3),
      I1 => U34_cnt_or0000,
      O => U34_cnt_3_rstpot_1406
    );
  U34_cnt_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_3_rstpot_1406,
      Q => U34_cnt(3)
    );
  U34_cnt_2_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(2),
      I1 => U34_cnt_or0000,
      O => U34_cnt_2_rstpot_1400
    );
  U34_cnt_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_2_rstpot_1400,
      Q => U34_cnt(2)
    );
  U34_cnt_1_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(1),
      I1 => U34_cnt_or0000,
      O => U34_cnt_1_rstpot_1378
    );
  U34_cnt_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_1_rstpot_1378,
      Q => U34_cnt(1)
    );
  U34_cnt_0_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U34_Result(0),
      I1 => U34_cnt_or0000,
      O => U34_cnt_0_rstpot_1356
    );
  U34_cnt_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U34_cnt_0_rstpot_1356,
      Q => U34_cnt(0)
    );
  U1_count_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_31_rstpot_279,
      Q => U1_count(31)
    );
  U1_count_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_30_rstpot_277,
      Q => U1_count(30)
    );
  U1_count_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_29_rstpot_273,
      Q => U1_count(29)
    );
  U1_count_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_28_rstpot_271,
      Q => U1_count(28)
    );
  U1_count_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_27_rstpot_269,
      Q => U1_count(27)
    );
  U1_count_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_25_rstpot_265,
      Q => U1_count(25)
    );
  U1_count_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_19_rstpot_251,
      Q => U1_count(19)
    );
  U1_count_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_17_rstpot_247,
      Q => U1_count(17)
    );
  U1_count_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_12_rstpot_237,
      Q => U1_count(12)
    );
  U1_count_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_11_rstpot_235,
      Q => U1_count(11)
    );
  U1_count_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_10_rstpot_233,
      Q => U1_count(10)
    );
  U1_count_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_9_rstpot_292,
      Q => U1_count(9)
    );
  U1_count_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_8_rstpot_290,
      Q => U1_count(8)
    );
  U1_clk_1hz : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_clk_1hz_rstpot_228,
      Q => U1_clk_1hz_224
    );
  U34_o_0_cmp_eq000013_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U34_o_0_add0000(1),
      I1 => U34_o_0_add0000(18),
      O => N48
    );
  U34_o_0_cmp_eq000026 : LUT6
    generic map(
      INIT => X"0000000000080000"
    )
    port map (
      I0 => U34_o_0_add0000(19),
      I1 => U34_o_0_add0000(20),
      I2 => U34_o_0_add0000(21),
      I3 => U34_o_0_add0000(22),
      I4 => U34_o_0_add0000(23),
      I5 => N48,
      O => U34_o_0_cmp_eq000026_1461
    );
  U1_count_31_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(31),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_31_rstpot_279
    );
  U1_count_30_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(30),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_30_rstpot_277
    );
  U1_count_29_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(29),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_29_rstpot_273
    );
  U1_count_28_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(28),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_28_rstpot_271
    );
  U1_count_27_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(27),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_27_rstpot_269
    );
  U1_count_25_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(25),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_25_rstpot_265
    );
  U1_count_19_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(19),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_19_rstpot_251
    );
  U1_count_17_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(17),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_17_rstpot_247
    );
  U1_count_12_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(12),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_12_rstpot_237
    );
  U1_count_11_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(11),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_11_rstpot_235
    );
  U1_count_10_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(10),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_10_rstpot_233
    );
  U1_count_9_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(9),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_9_rstpot_292
    );
  U1_count_8_rstpot : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => U1_Result(8),
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_count_8_rstpot_290
    );
  U1_clk_1hz_rstpot : LUT4
    generic map(
      INIT => X"F2AA"
    )
    port map (
      I0 => U1_clk_1hz_224,
      I1 => U1_N3,
      I2 => U1_N2,
      I3 => U1_N11,
      O => U1_clk_1hz_rstpot_228
    );
  U1_clk_1hz_cmp_eq0000194_SW0 : LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
    port map (
      I0 => U1_count_add0000(15),
      I1 => U1_count_add0000(16),
      I2 => U1_count_add0000(27),
      I3 => U1_count_add0000(28),
      I4 => U1_count_add0000(29),
      O => N50
    );
  U1_clk_1hz_cmp_eq00001112 : LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => U1_count_add0000(30),
      I1 => U1_count_add0000(31),
      I2 => U1_clk_1hz_cmp_eq0000116_225,
      I3 => U1_clk_1hz_cmp_eq0000138_226,
      I4 => N50,
      I5 => U1_clk_1hz_cmp_eq0000169_227,
      O => U1_N11
    );
  U1_clk_1hz_cmp_eq00001112_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U1_count_add0000(30),
      I1 => U1_count_add0000(31),
      O => N52
    );
  U1_count_and00001 : LUT6
    generic map(
      INIT => X"0000000020000000"
    )
    port map (
      I0 => U1_clk_1hz_cmp_eq0000116_225,
      I1 => N52,
      I2 => U1_N3,
      I3 => U1_clk_1hz_cmp_eq0000169_227,
      I4 => U1_clk_1hz_cmp_eq0000138_226,
      I5 => N50,
      O => U1_count_and0000
    );
  U1_count_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_26_rstpot1_267,
      Q => U1_count(26)
    );
  U1_count_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_24_rstpot1_263,
      Q => U1_count(24)
    );
  U1_count_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_23_rstpot1_261,
      Q => U1_count(23)
    );
  U1_count_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_22_rstpot1_259,
      Q => U1_count(22)
    );
  U1_count_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_21_rstpot1_257,
      Q => U1_count(21)
    );
  U1_count_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_20_rstpot1_255,
      Q => U1_count(20)
    );
  U1_count_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_18_rstpot1_249,
      Q => U1_count(18)
    );
  U1_count_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_16_rstpot1_245,
      Q => U1_count(16)
    );
  U1_count_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_15_rstpot1_243,
      Q => U1_count(15)
    );
  U1_count_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_14_rstpot1_241,
      Q => U1_count(14)
    );
  U1_count_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_13_rstpot1_239,
      Q => U1_count(13)
    );
  U1_count_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_7_rstpot1_288,
      Q => U1_count(7)
    );
  U1_count_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_6_rstpot1_286,
      Q => U1_count(6)
    );
  U1_count_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_5_rstpot1_284,
      Q => U1_count(5)
    );
  U1_count_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_4_rstpot1_282,
      Q => U1_count(4)
    );
  U1_count_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_3_rstpot1_280,
      Q => U1_count(3)
    );
  U1_count_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_2_rstpot1_274,
      Q => U1_count(2)
    );
  U1_count_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_1_rstpot1_252,
      Q => U1_count(1)
    );
  U1_count_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_1530,
      D => U1_count_0_rstpot1_230,
      Q => U1_count(0)
    );
  U34_o_0_cmp_eq0000185_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U34_o_0_add0000(8),
      I1 => U34_o_0_add0000(9),
      O => N54
    );
  U34_o_0_cmp_eq0000221_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
    port map (
      I0 => U34_o_0_add0000(11),
      I1 => U34_o_0_add0000(14),
      I2 => U34_o_0_add0000(13),
      I3 => U34_o_0_add0000(10),
      I4 => U34_o_0_add0000(24),
      I5 => N54,
      O => N46
    );
  U1_count_26_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(26),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_26_rstpot1_267
    );
  U1_count_24_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(24),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_24_rstpot1_263
    );
  U1_count_23_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(23),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_23_rstpot1_261
    );
  U1_count_22_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(22),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_22_rstpot1_259
    );
  U1_count_21_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(21),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_21_rstpot1_257
    );
  U1_count_20_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(20),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_20_rstpot1_255
    );
  U1_count_18_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(18),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_18_rstpot1_249
    );
  U1_count_16_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(16),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_16_rstpot1_245
    );
  U1_count_15_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(15),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_15_rstpot1_243
    );
  U1_count_14_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(14),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_14_rstpot1_241
    );
  U1_count_13_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(13),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_13_rstpot1_239
    );
  U1_count_7_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(7),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_7_rstpot1_288
    );
  U1_count_6_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(6),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_6_rstpot1_286
    );
  U1_count_5_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(5),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_5_rstpot1_284
    );
  U1_count_4_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(4),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_4_rstpot1_282
    );
  U1_count_3_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(3),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_3_rstpot1_280
    );
  U1_count_2_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(2),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_2_rstpot1_274
    );
  U1_count_1_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(1),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_1_rstpot1_252
    );
  U1_count_0_rstpot1 : LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => U1_Result(0),
      I1 => U1_N2,
      I2 => U1_N11,
      I3 => U1_count_and0000,
      O => U1_count_0_rstpot1_230
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_179_SW0 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => U2_cs(1),
      I1 => U6_bcd10_0_bdd0,
      I2 => U6_bcd10_0_bdd1,
      O => N56
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_179 : LUT6
    generic map(
      INIT => X"90B080A010300020"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I2 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I3 => N56,
      I4 => U2_cm(0),
      I5 => U2_cs(0),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_179_1064
    );
  U24_count_per_cmp_eq000090 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U24_count_per(0),
      I1 => U24_count_per(1),
      I2 => U24_count_per(14),
      I3 => U24_count_per(2),
      I4 => U24_count_per(3),
      I5 => N60,
      O => U24_count_per_cmp_eq0000
    );
  U22_count_per_cmp_eq000090 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U22_count_per(0),
      I1 => U22_count_per(1),
      I2 => U22_count_per(14),
      I3 => U22_count_per(2),
      I4 => U22_count_per(3),
      I5 => N62,
      O => U22_count_per_cmp_eq0000
    );
  U20_count_per_cmp_eq000090 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U20_count_per(0),
      I1 => U20_count_per(1),
      I2 => U20_count_per(14),
      I3 => U20_count_per(2),
      I4 => U20_count_per(3),
      I5 => N64,
      O => U20_count_per_cmp_eq0000
    );
  U18_count_per_cmp_eq000090 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U18_count_per(0),
      I1 => U18_count_per(1),
      I2 => U18_count_per(14),
      I3 => U18_count_per(2),
      I4 => U18_count_per(3),
      I5 => N66,
      O => U18_count_per_cmp_eq0000
    );
  U16_count_per_cmp_eq000090 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U16_count_per(0),
      I1 => U16_count_per(1),
      I2 => U16_count_per(14),
      I3 => U16_count_per(2),
      I4 => U16_count_per(3),
      I5 => N68,
      O => U16_count_per_cmp_eq0000
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_2274 : LUT5
    generic map(
      INIT => X"AFAA0D08"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I1 => U30_my_hd44780_simple_hd44780_db_mux0000_2_2217_1085,
      I2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I3 => BUS2432_2_Q,
      I4 => U30_my_hd44780_simple_hd44780_db_mux0000_2_1798_1084,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_2274_1086
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_426 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF5510"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I2 => BUS2432_1_Q,
      I3 => U30_my_hd44780_simple_hd44780_db_mux0000_1_389_1074,
      I4 => U30_my_hd44780_simple_hd44780_db_mux0000_1_256_1071,
      I5 => U30_my_hd44780_simple_hd44780_db_mux0000_1_270_1072,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_426_1075
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_253 : LUT6
    generic map(
      INIT => X"4964000064260000"
    )
    port map (
      I0 => U36_cs(4),
      I1 => U36_cs(2),
      I2 => U36_cs(3),
      I3 => U36_cs(1),
      I4 => U30_my_hd44780_simple_Madd_cur_ddram_addr_addsub0000_cy(1),
      I5 => U36_cs(5),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_253_1087
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1131 : LUT6
    generic map(
      INIT => X"4000400055554000"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I1 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1098_1093,
      I2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I3 => U2_cm(6),
      I4 => BUS2432_3_Q,
      I5 => U30_my_hd44780_simple_cur_ddram_addr(0),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1131_1094
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_113_SW0 : LUT6
    generic map(
      INIT => X"FFFCFFFDFFFEFFFF"
    )
    port map (
      I0 => U2_ch(1),
      I1 => BUS2432_2_Q,
      I2 => BUS2432_3_Q,
      I3 => BUS2432_1_Q,
      I4 => U3_bcd10_0_bdd1,
      I5 => U3_bcd10_0_bdd0,
      O => N70
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_57_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFCFDFEFF"
    )
    port map (
      I0 => U36_cm(1),
      I1 => BUS1989(2),
      I2 => BUS1989(3),
      I3 => U14_bcd10_0_bdd1,
      I4 => U14_bcd10_0_bdd0,
      I5 => BUS1989(1),
      O => N72
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_57 : LUT6
    generic map(
      INIT => X"FFFFFFF8FFFFF8F8"
    )
    port map (
      I0 => U30_my_hd44780_simple_hd44780_db_4_Q,
      I1 => U30_my_hd44780_simple_N3,
      I2 => U30_my_hd44780_simple_N9,
      I3 => U30_my_hd44780_simple_N30,
      I4 => U30_my_hd44780_simple_hd44780_db_mux0000_4_27_1112,
      I5 => N72,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_4_57_1113
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_725 : LUT6
    generic map(
      INIT => X"0E0E04040E040404"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U30_my_hd44780_simple_hd44780_db_mux0000_2_691_1088,
      I2 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I3 => U36_cs(3),
      I4 => U36_cs(5),
      I5 => U36_cs(4),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_725_1089
    );
  U30_my_hd44780_simple_valuez_cmp_le00002106 : LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => U30_my_hd44780_simple_valuez(11),
      I1 => U30_my_hd44780_simple_valuez(10),
      I2 => U30_my_hd44780_simple_valuez(8),
      I3 => U30_my_hd44780_simple_valuez(9),
      I4 => U30_my_hd44780_simple_valuez_cmp_le0000235_1194,
      I5 => U30_my_hd44780_simple_valuez_cmp_le00002104_1193,
      O => U30_my_hd44780_simple_valuez_cmp_le0000
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_520_SW0 : LUT6
    generic map(
      INIT => X"F444F444F444F000"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_line(0),
      I1 => U30_my_hd44780_simple_cur_state(12),
      I2 => BUS1989(1),
      I3 => U30_my_hd44780_simple_N30,
      I4 => U30_my_hd44780_simple_hd44780_db_mux0000_1_426_1075,
      I5 => U30_my_hd44780_simple_hd44780_db_mux0000_1_484_1077,
      O => N74
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_520 : LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEEEA"
    )
    port map (
      I0 => U30_my_hd44780_simple_hd44780_db_mux0000_1_12_1070,
      I1 => U30_my_hd44780_simple_N34,
      I2 => U30_my_hd44780_simple_hd44780_db_mux0000_1_111_1069,
      I3 => U30_my_hd44780_simple_hd44780_db_mux0000_1_34_1073,
      I4 => U30_my_hd44780_simple_hd44780_db_mux0000_1_82_1078,
      I5 => N74,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_Q
    );
  U37_cur_state_FSM_FFd1_In1101_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
    port map (
      I0 => U37_cur_state_FSM_FFd1_1505,
      I1 => U36_cm(6),
      I2 => U36_cs(0),
      I3 => U37_cur_state_FSM_FFd1_In184_1507,
      I4 => U36_cm(5),
      I5 => U37_cur_state_FSM_FFd3_1510,
      O => N76
    );
  U37_cur_state_FSM_FFd1_In1101 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U36_cm(0),
      I1 => U36_cm(1),
      I2 => U36_cm(2),
      I3 => U36_cm(3),
      I4 => U36_cm(4),
      I5 => N76,
      O => U37_cur_state_FSM_N3
    );
  U30_my_hd44780_simple_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U30_my_hd44780_simple_count(0),
      I1 => U30_my_hd44780_simple_count(1),
      O => U30_my_hd44780_simple_Mcount_count1
    );
  U30_my_hd44780_simple_Mcount_count_cy_4_11 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => U30_my_hd44780_simple_count(0),
      I1 => U30_my_hd44780_simple_count(1),
      I2 => U30_my_hd44780_simple_count(4),
      I3 => U30_my_hd44780_simple_count(3),
      I4 => U30_my_hd44780_simple_count(2),
      O => U30_my_hd44780_simple_Mcount_count_cy(4)
    );
  U30_my_hd44780_simple_en_count_mux0000_1_SW1 : LUT5
    generic map(
      INIT => X"BABABAB0"
    )
    port map (
      I0 => U30_my_hd44780_simple_en_count(3),
      I1 => U30_my_hd44780_simple_en_started(0),
      I2 => U30_my_hd44780_simple_cur_state(2),
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_N8,
      O => N28
    );
  U30_my_hd44780_simple_en_count_mux0000_1_SW0 : LUT6
    generic map(
      INIT => X"EAEAEEEEEA48EECC"
    )
    port map (
      I0 => U30_my_hd44780_simple_en_count(3),
      I1 => U30_my_hd44780_simple_cur_state(2),
      I2 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      I3 => U30_my_hd44780_simple_N8,
      I4 => U30_my_hd44780_simple_en_started(0),
      I5 => U30_my_hd44780_simple_cur_state(1),
      O => N27
    );
  U30_my_hd44780_simple_next_state_mux0000_0_1 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(1),
      I1 => U30_my_hd44780_simple_next_state_0_Q,
      I2 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_0_Q
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_9_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_timer_us_value_9_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(8),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_9_Q
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_8_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_timer_us_value_8_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(8),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_8_Q
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_7_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_timer_us_value_7_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(8),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_7_Q
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_11_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_timer_us_value_11_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(8),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_11_Q
    );
  U30_my_hd44780_simple_next_state_mux0000_9_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_next_state_9_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(8),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_9_Q
    );
  U30_my_hd44780_simple_next_state_mux0000_8_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_next_state_8_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(7),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_8_Q
    );
  U30_my_hd44780_simple_next_state_mux0000_7_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_next_state_7_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(6),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_7_Q
    );
  U30_my_hd44780_simple_next_state_mux0000_6_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_next_state_6_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(5),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_6_Q
    );
  U30_my_hd44780_simple_next_state_mux0000_5_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_next_state_5_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(4),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_5_Q
    );
  U30_my_hd44780_simple_next_state_mux0000_4_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_next_state_4_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(3),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_4_Q
    );
  U30_my_hd44780_simple_next_state_mux0000_3_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_next_state_3_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(0),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_3_Q
    );
  U30_my_hd44780_simple_next_state_mux0000_12_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_next_state_12_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(11),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_12_Q
    );
  U30_my_hd44780_simple_next_state_mux0000_10_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_next_state_10_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(9),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_next_state_mux0000_10_Q
    );
  U30_my_hd44780_simple_hd44780_rs_mux00001 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_hd44780_rs_1117,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(12),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_hd44780_rs_mux0000
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_7_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_hd44780_db_7_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(11),
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_7_Q
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_21 : LUT5
    generic map(
      INIT => X"0004C000"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_line(0),
      I1 => U30_my_hd44780_simple_cur_state(12),
      I2 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I3 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I4 => U30_my_hd44780_simple_cur_ddram_addr(1),
      O => U30_my_hd44780_simple_N9
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_61 : LUT5
    generic map(
      INIT => X"00008000"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I2 => U30_my_hd44780_simple_cur_state(12),
      I3 => U30_my_hd44780_simple_cur_line(0),
      I4 => U30_my_hd44780_simple_cur_ddram_addr(2),
      O => U30_my_hd44780_simple_N30
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_5_1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(8),
      I1 => U30_my_hd44780_simple_N18,
      I2 => U30_my_hd44780_simple_cur_state(0),
      I3 => U30_my_hd44780_simple_N3,
      I4 => U30_my_hd44780_simple_timer_us_value_5_Q,
      I5 => U30_my_hd44780_simple_N62,
      O => U30_my_hd44780_simple_timer_us_value_mux0000_5_Q
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_6_1 : LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(4),
      I1 => U30_my_hd44780_simple_timer_us_value_6_Q,
      I2 => U30_my_hd44780_simple_cur_state(1),
      I3 => U30_my_hd44780_simple_cur_state(2),
      I4 => U30_my_hd44780_simple_cur_state(5),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_6_Q
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_15_1 : LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(0),
      I1 => U30_my_hd44780_simple_timer_us_value_15_Q,
      I2 => U30_my_hd44780_simple_cur_state(1),
      I3 => U30_my_hd44780_simple_cur_state(2),
      I4 => U30_my_hd44780_simple_cur_state(3),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_15_Q
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_13_1 : LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(0),
      I1 => U30_my_hd44780_simple_timer_us_value_13_Q,
      I2 => U30_my_hd44780_simple_cur_state(1),
      I3 => U30_my_hd44780_simple_cur_state(2),
      I4 => U30_my_hd44780_simple_cur_state(3),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_13_Q
    );
  U30_my_hd44780_simple_next_state_mux0000_11_1 : LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(10),
      I1 => U30_my_hd44780_simple_next_state_11_Q,
      I2 => U30_my_hd44780_simple_cur_state(1),
      I3 => U30_my_hd44780_simple_cur_state(2),
      I4 => U30_my_hd44780_simple_cur_state(12),
      O => U30_my_hd44780_simple_next_state_mux0000_11_Q
    );
  U30_my_hd44780_simple_cur_state_mux0000_2_SW1 : LUT5
    generic map(
      INIT => X"AA2AFFFF"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(1),
      I1 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1148,
      I2 => U30_my_hd44780_simple_timer2state_done_1146,
      I3 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1150,
      I4 => U30_my_hd44780_simple_en_started(0),
      O => N80
    );
  U30_my_hd44780_simple_cur_state_mux0000_2_Q : LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFEEE"
    )
    port map (
      I0 => U30_my_hd44780_simple_N18,
      I1 => U30_my_hd44780_simple_cur_state(8),
      I2 => U30_my_hd44780_simple_cur_state(2),
      I3 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      I4 => N80,
      I5 => U30_my_hd44780_simple_N62,
      O => U30_my_hd44780_simple_cur_state_mux0000(2)
    );
  U2_ch_mux0001_4_121 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => U2_cm(6),
      I1 => U2_cm(4),
      I2 => U2_cm(5),
      I3 => U2_cm(3),
      I4 => U2_cm(0),
      I5 => U2_cm(1),
      O => U2_N8
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_82 : LUT6
    generic map(
      INIT => X"2020002002200200"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I2 => U36_cs(4),
      I3 => U36_cs(5),
      I4 => U36_cs(2),
      I5 => U36_cs(3),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_82_1078
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_7 : LUT6
    generic map(
      INIT => X"FFFAFAFAFFF8F8F8"
    )
    port map (
      I0 => U30_my_hd44780_simple_hd44780_db_0_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_cur_state(8),
      I3 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I4 => U30_my_hd44780_simple_cur_state(11),
      I5 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_7_1066
    );
  U36_Mcount_cs_xor_2_12 : LUT6
    generic map(
      INIT => X"A9A9A9A9A9A9A9A8"
    )
    port map (
      I0 => U36_cs(2),
      I1 => U36_cs(0),
      I2 => U36_cs(1),
      I3 => U36_cs(3),
      I4 => U36_cs(4),
      I5 => U36_cs(5),
      O => U36_Mcount_cs2
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_3_1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFEEE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(8),
      I1 => U30_my_hd44780_simple_cur_state(0),
      I2 => U30_my_hd44780_simple_timer_us_value_3_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_cur_state(2),
      I5 => U30_my_hd44780_simple_cur_state(3),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_3_Q
    );
  U30_my_hd44780_simple_cur_ddram_addr_mux0000_2_1 : LUT5
    generic map(
      INIT => X"EAAA4888"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I1 => U30_my_hd44780_simple_cur_state(12),
      I2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I3 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I4 => U30_my_hd44780_simple_N2,
      O => U30_my_hd44780_simple_cur_ddram_addr_mux0000(2)
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_2_1 : LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(12),
      I1 => U30_my_hd44780_simple_timer_us_value_2_Q,
      I2 => U30_my_hd44780_simple_cur_state(1),
      I3 => U30_my_hd44780_simple_cur_state(2),
      I4 => U30_my_hd44780_simple_N111,
      O => U30_my_hd44780_simple_timer_us_value_mux0000_2_Q
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_4_1 : LUT5
    generic map(
      INIT => X"FFFFEEEA"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(8),
      I1 => U30_my_hd44780_simple_timer_us_value_4_Q,
      I2 => U30_my_hd44780_simple_cur_state(1),
      I3 => U30_my_hd44780_simple_cur_state(2),
      I4 => U30_my_hd44780_simple_N18,
      O => U30_my_hd44780_simple_timer_us_value_mux0000_4_Q
    );
  U36_Maddsub_cm_share0000_xor_6_111 : LUT4
    generic map(
      INIT => X"7F01"
    )
    port map (
      I0 => U36_cm(5),
      I1 => U36_cm(4),
      I2 => U36_N13,
      I3 => U37_set_timer_1520,
      O => U36_N16
    );
  U36_cm_mux0002_5_1 : LUT5
    generic map(
      INIT => X"6B296B28"
    )
    port map (
      I0 => U36_cm(0),
      I1 => U36_cm(1),
      I2 => U37_set_timer_1520,
      I3 => U36_N29,
      I4 => U36_N3,
      O => U36_cm_mux0002(5)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_1_270 : LUT5
    generic map(
      INIT => X"20002202"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I2 => U2_ch(1),
      I3 => U3_bcd10_0_bdd0,
      I4 => U3_bcd10_0_bdd1,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_1_270_1072
    );
  U36_cm_mux0002_6_1 : LUT4
    generic map(
      INIT => X"7160"
    )
    port map (
      I0 => U36_cm(0),
      I1 => U37_set_timer_1520,
      I2 => U36_N29,
      I3 => U36_N3,
      O => U36_cm_mux0002(6)
    );
  U30_my_hd44780_simple_timer_us_value_mux0000_0_1 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => U30_my_hd44780_simple_timer_us_value_0_Q,
      I1 => U30_my_hd44780_simple_cur_state(1),
      I2 => U30_my_hd44780_simple_N18,
      I3 => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_timer_us_value_mux0000_0_Q
    );
  U36_cm_mux0002_0_1 : LUT6
    generic map(
      INIT => X"9696969612121200"
    )
    port map (
      I0 => U36_cm(6),
      I1 => U37_set_timer_1520,
      I2 => U36_N16,
      I3 => U36_cm(0),
      I4 => U36_N3,
      I5 => U36_N29,
      O => U36_cm_mux0002(0)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1911 : LUT6
    generic map(
      INIT => X"FFF4FFF4FFF4FFF0"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_line(0),
      I1 => U30_my_hd44780_simple_cur_state(12),
      I2 => U30_my_hd44780_simple_hd44780_db_mux0000_3_636_1108,
      I3 => U30_my_hd44780_simple_hd44780_db_mux0000_3_58_1106,
      I4 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1872_1102,
      I5 => U30_my_hd44780_simple_hd44780_db_mux0000_3_1143_1095,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_Q
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_135 : LUT4
    generic map(
      INIT => X"F4F0"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_line(0),
      I1 => U30_my_hd44780_simple_cur_state(12),
      I2 => U30_my_hd44780_simple_hd44780_db_mux0000_4_57_1113,
      I3 => U30_my_hd44780_simple_hd44780_db_mux0000_4_113_1111,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_4_Q
    );
  U36_cm_mux0002_1_1 : LUT5
    generic map(
      INIT => X"28888882"
    )
    port map (
      I0 => U36_N10,
      I1 => U36_cm(5),
      I2 => U37_set_timer_1520,
      I3 => U36_cm(4),
      I4 => U36_N13,
      O => U36_cm_mux0002(1)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_636 : LUT6
    generic map(
      INIT => X"AAAA008000800080"
    )
    port map (
      I0 => U30_my_hd44780_simple_N34,
      I1 => U30_my_hd44780_simple_hd44780_db_mux0000_3_424_1105,
      I2 => U30_my_hd44780_simple_hd44780_db_mux0000_3_586_1107,
      I3 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I4 => U30_my_hd44780_simple_hd44780_db_mux0000_3_251_1103,
      I5 => U30_my_hd44780_simple_hd44780_db_mux0000_3_150_1099,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_636_1108
    );
  U30_my_hd44780_simple_en_count_mux0000_0_SW2 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U30_my_hd44780_simple_en_count(0),
      I1 => U30_my_hd44780_simple_en_count(1),
      I2 => U30_my_hd44780_simple_en_count(2),
      I3 => U30_my_hd44780_simple_en_count(3),
      O => N82
    );
  U30_my_hd44780_simple_en_count_mux0000_0_Q : LUT6
    generic map(
      INIT => X"FFFFFFFFAAEE80CC"
    )
    port map (
      I0 => U30_my_hd44780_simple_en_count(4),
      I1 => U30_my_hd44780_simple_cur_state(2),
      I2 => N82,
      I3 => U30_my_hd44780_simple_en_started(0),
      I4 => U30_my_hd44780_simple_N11,
      I5 => U30_my_hd44780_simple_cur_state(0),
      O => U30_my_hd44780_simple_en_count_mux0000(0)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_27 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8880"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I1 => U30_my_hd44780_simple_cur_line(0),
      I2 => U30_my_hd44780_simple_cur_state(11),
      I3 => U30_my_hd44780_simple_cur_state(12),
      I4 => U30_my_hd44780_simple_N62,
      I5 => U30_my_hd44780_simple_cur_state(6),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_4_27_1112
    );
  U24_count_per_cmp_eq000090_SW0_SW0 : LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
    port map (
      I0 => U24_count_per(4),
      I1 => U24_count_per(8),
      I2 => U24_count_per(5),
      I3 => U24_count_per(9),
      I4 => U24_count_per_cmp_eq000068_920,
      O => N84
    );
  U24_count_per_cmp_eq000090_SW0 : LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => U24_count_per(18),
      I1 => U24_count_per(16),
      I2 => U24_count_per(17),
      I3 => U24_count_per(10),
      I4 => U24_count_per(19),
      I5 => N84,
      O => N60
    );
  U22_count_per_cmp_eq000090_SW0_SW0 : LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
    port map (
      I0 => U22_count_per(4),
      I1 => U22_count_per(8),
      I2 => U22_count_per(5),
      I3 => U22_count_per(9),
      I4 => U22_count_per_cmp_eq000068_811,
      O => N86
    );
  U22_count_per_cmp_eq000090_SW0 : LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => U22_count_per(18),
      I1 => U22_count_per(16),
      I2 => U22_count_per(17),
      I3 => U22_count_per(10),
      I4 => U22_count_per(19),
      I5 => N86,
      O => N62
    );
  U20_count_per_cmp_eq000090_SW0_SW0 : LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
    port map (
      I0 => U20_count_per(4),
      I1 => U20_count_per(8),
      I2 => U20_count_per(5),
      I3 => U20_count_per(9),
      I4 => U20_count_per_cmp_eq000068_702,
      O => N88
    );
  U20_count_per_cmp_eq000090_SW0 : LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => U20_count_per(18),
      I1 => U20_count_per(16),
      I2 => U20_count_per(17),
      I3 => U20_count_per(10),
      I4 => U20_count_per(19),
      I5 => N88,
      O => N64
    );
  U18_count_per_cmp_eq000090_SW0_SW0 : LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
    port map (
      I0 => U18_count_per(4),
      I1 => U18_count_per(8),
      I2 => U18_count_per(5),
      I3 => U18_count_per(9),
      I4 => U18_count_per_cmp_eq000068_542,
      O => N90
    );
  U18_count_per_cmp_eq000090_SW0 : LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => U18_count_per(18),
      I1 => U18_count_per(16),
      I2 => U18_count_per(17),
      I3 => U18_count_per(10),
      I4 => U18_count_per(19),
      I5 => N90,
      O => N66
    );
  U16_count_per_cmp_eq000090_SW0_SW0 : LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
    port map (
      I0 => U16_count_per(4),
      I1 => U16_count_per(8),
      I2 => U16_count_per(5),
      I3 => U16_count_per(9),
      I4 => U16_count_per_cmp_eq000068_433,
      O => N92
    );
  U16_count_per_cmp_eq000090_SW0 : LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => U16_count_per(18),
      I1 => U16_count_per(16),
      I2 => U16_count_per(17),
      I3 => U16_count_per(10),
      I4 => U16_count_per(19),
      I5 => N92,
      O => N68
    );
  U36_cm_mux0002_2_1 : LUT6
    generic map(
      INIT => X"6969212169692100"
    )
    port map (
      I0 => U36_cm(4),
      I1 => U37_set_timer_1520,
      I2 => U36_N13,
      I3 => U36_cm(0),
      I4 => U36_N29,
      I5 => U36_N3,
      O => U36_cm_mux0002(2)
    );
  U30_my_hd44780_simple_en_count_mux0000_0_11 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(2),
      I1 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      I2 => U30_my_hd44780_simple_cur_state(1),
      I3 => U30_my_hd44780_simple_cur_state(8),
      I4 => U30_my_hd44780_simple_N18,
      I5 => U30_my_hd44780_simple_N62,
      O => U30_my_hd44780_simple_N11
    );
  U36_Maddsub_cm_share0000_xor_4_131 : LUT5
    generic map(
      INIT => X"D5555554"
    )
    port map (
      I0 => U37_set_timer_1520,
      I1 => U36_cm(2),
      I2 => U36_cm(0),
      I3 => U36_cm(1),
      I4 => U36_cm(3),
      O => U36_N13
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_4_113 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I2 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I3 => N70,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_4_113_1111
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_5_127 : LUT6
    generic map(
      INIT => X"FFFFFFFFFEFEFEEE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(12),
      I1 => U30_my_hd44780_simple_N62,
      I2 => U30_my_hd44780_simple_hd44780_db_5_Q,
      I3 => U30_my_hd44780_simple_cur_state(1),
      I4 => U30_my_hd44780_simple_cur_state(2),
      I5 => U30_my_hd44780_simple_hd44780_db_mux0000_5_2_1115,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_5_Q
    );
  U36_cm_mux0002_3_1 : LUT6
    generic map(
      INIT => X"2888888888888882"
    )
    port map (
      I0 => U36_N10,
      I1 => U36_cm(3),
      I2 => U37_set_timer_1520,
      I3 => U36_cm(2),
      I4 => U36_cm(1),
      I5 => U36_cm(0),
      O => U36_cm_mux0002(3)
    );
  U36_cm_mux0002_4_1 : LUT6
    generic map(
      INIT => X"6AA922216AA92200"
    )
    port map (
      I0 => U36_cm(2),
      I1 => U37_set_timer_1520,
      I2 => U36_cm(1),
      I3 => U36_cm(0),
      I4 => U36_N29,
      I5 => U36_N3,
      O => U36_cm_mux0002(4)
    );
  U30_my_hd44780_simple_en_count_mux0000_4_111 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(5),
      I1 => U30_my_hd44780_simple_cur_state(4),
      I2 => U30_my_hd44780_simple_cur_state(3),
      I3 => U30_my_hd44780_simple_cur_state(8),
      I4 => U30_my_hd44780_simple_N18,
      O => U30_my_hd44780_simple_N8
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_1530
    );
  U1_Mcount_count_lut_0_INV_0 : INV
    port map (
      I => U1_count(0),
      O => U1_Mcount_count_lut(0)
    );
  U1_Madd_count_add0000_lut_0_INV_0 : INV
    port map (
      I => U1_count(0),
      O => U1_Madd_count_add0000_lut(0)
    );
  U24_Mcount_count_per_lut_0_INV_0 : INV
    port map (
      I => U24_count_per(0),
      O => U24_Mcount_count_per_lut(0)
    );
  U22_Mcount_count_per_lut_0_INV_0 : INV
    port map (
      I => U22_count_per(0),
      O => U22_Mcount_count_per_lut(0)
    );
  U20_Mcount_count_per_lut_0_INV_0 : INV
    port map (
      I => U20_count_per(0),
      O => U20_Mcount_count_per_lut(0)
    );
  U18_Mcount_count_per_lut_0_INV_0 : INV
    port map (
      I => U18_count_per(0),
      O => U18_Mcount_count_per_lut(0)
    );
  U16_Mcount_count_per_lut_0_INV_0 : INV
    port map (
      I => U16_count_per(0),
      O => U16_Mcount_count_per_lut(0)
    );
  U34_Mcount_cnt_lut_0_INV_0 : INV
    port map (
      I => U34_cnt(0),
      O => U34_Mcount_cnt_lut(0)
    );
  U34_Madd_o_0_add0000_lut_0_INV_0 : INV
    port map (
      I => U34_cnt(0),
      O => U34_Madd_o_0_add0000_lut(0)
    );
  U37_rst_inv1_INV_0 : INV
    port map (
      I => rst_IBUF_1554,
      O => U30_my_hd44780_simple_reset_inv
    );
  U30_my_hd44780_simple_timer2state_done_mux00001_INV_0 : INV
    port map (
      I => U30_my_hd44780_simple_state2timer_go_1144,
      O => U30_my_hd44780_simple_timer2state_done_mux0000
    );
  U30_my_hd44780_simple_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => U30_my_hd44780_simple_count(0),
      O => U30_my_hd44780_simple_Mcount_count
    );
  U23_pulse_mux00001_INV_0 : INV
    port map (
      I => U23_state(0),
      O => U23_pulse_mux0000
    );
  U21_pulse_mux00001_INV_0 : INV
    port map (
      I => U21_state(0),
      O => U21_pulse_mux0000
    );
  U2_cm_mux0000_6_1_INV_0 : INV
    port map (
      I => U2_cm(0),
      O => U2_cm_mux0000(6)
    );
  U2_ch_mux0001_0_1_INV_0 : INV
    port map (
      I => U2_ch(0),
      O => U2_ch_mux0001(0)
    );
  U2_Mcount_cs_xor_0_11_INV_0 : INV
    port map (
      I => U2_cs(0),
      O => U2_Mcount_cs
    );
  U19_pulse_mux00001_INV_0 : INV
    port map (
      I => U19_state(0),
      O => U19_pulse_mux0000
    );
  U17_pulse_mux00001_INV_0 : INV
    port map (
      I => U17_state(0),
      O => U17_pulse_mux0000
    );
  U15_pulse_mux00001_INV_0 : INV
    port map (
      I => U15_state(0),
      O => U15_pulse_mux0000
    );
  U34_buzz_inv1_INV_0 : INV
    port map (
      I => U37_buzz_1504,
      O => U34_buzz_inv
    );
  U23_btn_inv1_INV_0 : INV
    port map (
      I => U24_pb_deb_921,
      O => U23_btn_inv
    );
  U21_btn_inv1_INV_0 : INV
    port map (
      I => U22_pb_deb_812,
      O => U21_btn_inv
    );
  U19_btn_inv1_INV_0 : INV
    port map (
      I => U20_pb_deb_703,
      O => U19_btn_inv
    );
  U17_btn_inv1_INV_0 : INV
    port map (
      I => U18_pb_deb_543,
      O => U17_btn_inv
    );
  U15_btn_inv1_INV_0 : INV
    port map (
      I => U16_pb_deb_434,
      O => U15_btn_inv
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_2356 : MUXF7
    port map (
      I0 => N94,
      I1 => N95,
      S => U30_my_hd44780_simple_cur_line(0),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_Q
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_2356_F : LUT6
    generic map(
      INIT => X"FFFFFFFFAAA28880"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(12),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I2 => U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_1083,
      I3 => U30_my_hd44780_simple_hd44780_db_mux0000_2_1224_1080,
      I4 => U30_my_hd44780_simple_hd44780_db_mux0000_2_2274_1086,
      I5 => U30_my_hd44780_simple_hd44780_db_mux0000_2_14_1081,
      O => N94
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_2356_G : LUT6
    generic map(
      INIT => X"FFFFFFFFCC88C888"
    )
    port map (
      I0 => U30_my_hd44780_simple_hd44780_db_mux0000_2_772_1090,
      I1 => U30_my_hd44780_simple_cur_state(12),
      I2 => U30_my_hd44780_simple_hd44780_db_mux0000_2_253_1087,
      I3 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I4 => U30_my_hd44780_simple_hd44780_db_mux0000_2_725_1089,
      I5 => U30_my_hd44780_simple_hd44780_db_mux0000_2_14_1081,
      O => N95
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1828 : MUXF7
    port map (
      I0 => N96,
      I1 => N97,
      S => U2_cm(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_1101
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_F : LUT6
    generic map(
      INIT => X"0000000041202018"
    )
    port map (
      I0 => U2_cm(4),
      I1 => U2_cm(5),
      I2 => U2_cm(3),
      I3 => U2_cm(6),
      I4 => U2_cm(2),
      I5 => U30_my_hd44780_simple_cur_ddram_addr(1),
      O => N96
    );
  U30_my_hd44780_simple_en_count_mux0000_3_Q : MUXF7
    port map (
      I0 => N98,
      I1 => N99,
      S => U30_my_hd44780_simple_N11,
      O => U30_my_hd44780_simple_en_count_mux0000(3)
    );
  U30_my_hd44780_simple_en_count_mux0000_3_F : LUT6
    generic map(
      INIT => X"FFFFFFFFA22A2222"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(2),
      I1 => U30_my_hd44780_simple_en_started(0),
      I2 => U30_my_hd44780_simple_en_count(1),
      I3 => U30_my_hd44780_simple_en_count(0),
      I4 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      I5 => U30_my_hd44780_simple_cur_state(0),
      O => N98
    );
  U30_my_hd44780_simple_en_count_mux0000_3_G : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF2A22"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(2),
      I1 => U30_my_hd44780_simple_en_started(0),
      I2 => U30_my_hd44780_simple_en_count(0),
      I3 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      I4 => U30_my_hd44780_simple_en_count(1),
      I5 => U30_my_hd44780_simple_cur_state(0),
      O => N99
    );
  U37_cur_state_FSM_FFd2_In : MUXF7
    port map (
      I0 => N100,
      I1 => N101,
      S => U37_cur_state_FSM_N3,
      O => U37_cur_state_FSM_FFd2_In_1509
    );
  U37_cur_state_FSM_FFd2_In_F : LUT6
    generic map(
      INIT => X"D555D575C444C474"
    )
    port map (
      I0 => U23_pulse_816,
      I1 => U37_cur_state_FSM_FFd2_1508,
      I2 => U21_pulse_707,
      I3 => U37_cur_state_FSM_FFd3_1510,
      I4 => U19_pulse_547,
      I5 => U37_cur_state_FSM_FFd1_1505,
      O => N100
    );
  U37_cur_state_FSM_FFd2_In_G : LUT6
    generic map(
      INIT => X"AAAEAAAEFFFFAAAE"
    )
    port map (
      I0 => U37_cur_state_FSM_FFd2_1508,
      I1 => U21_pulse_707,
      I2 => U19_pulse_547,
      I3 => U37_cur_state_FSM_FFd3_1510,
      I4 => U37_cur_state_FSM_FFd1_1505,
      I5 => U23_pulse_816,
      O => N101
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1045 : MUXF7
    port map (
      I0 => BUS2432_6_Q,
      I1 => N103,
      S => U30_my_hd44780_simple_N37,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_3_1045_1092
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1045_G : LUT6
    generic map(
      INIT => X"0810428421420810"
    )
    port map (
      I0 => U2_ch(1),
      I1 => U2_ch(2),
      I2 => U2_ch(3),
      I3 => U2_ch(5),
      I4 => U2_ch(4),
      I5 => U2_ch(6),
      O => N103
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1224 : MUXF7
    port map (
      I0 => BUS2432_6_Q,
      I1 => N105,
      S => U30_my_hd44780_simple_Madd_cur_ddram_addr_addsub0000_cy(1),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_1224_1080
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1224_G : LUT6
    generic map(
      INIT => X"C63118C68C63318C"
    )
    port map (
      I0 => U2_cs(5),
      I1 => U2_cs(6),
      I2 => U2_cs(3),
      I3 => U2_cs(4),
      I4 => U2_cs(2),
      I5 => U2_cs(1),
      O => N105
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1723 : MUXF7
    port map (
      I0 => N106,
      I1 => N107,
      S => U30_my_hd44780_simple_hd44780_db_mux0000_2_1687_1082,
      O => U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_1083
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_F : LUT6
    generic map(
      INIT => X"0000082800000820"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U2_cs(5),
      I2 => U2_cs(6),
      I3 => U2_cs(4),
      I4 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I5 => U2_cs(3),
      O => N106
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_2_1723_G : LUT6
    generic map(
      INIT => X"002600FF002400FF"
    )
    port map (
      I0 => U2_cs(5),
      I1 => U2_cs(6),
      I2 => U2_cs(4),
      I3 => U30_my_hd44780_simple_cur_ddram_addr(0),
      I4 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I5 => U2_cs(3),
      O => N107
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_91 : MUXF7
    port map (
      I0 => N108,
      I1 => N109,
      S => U30_my_hd44780_simple_cur_ddram_addr(0),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_91_1067
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_91_F : LUT6
    generic map(
      INIT => X"222AA2AA00088088"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I2 => U36_cs(1),
      I3 => U27_bcd10_0_bdd1,
      I4 => U27_bcd10_0_bdd0,
      I5 => U36_cm(0),
      O => N108
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_91_G : LUT6
    generic map(
      INIT => X"88C800408CCC0444"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I1 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I2 => U36_cm(1),
      I3 => U14_bcd10_0_bdd0,
      I4 => U36_cs(0),
      I5 => U14_bcd10_0_bdd1,
      O => N109
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_253 : MUXF7
    port map (
      I0 => N110,
      I1 => N111,
      S => U30_my_hd44780_simple_cur_ddram_addr(0),
      O => U30_my_hd44780_simple_hd44780_db_mux0000_0_253_1065
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_253_F : LUT5
    generic map(
      INIT => X"00020007"
    )
    port map (
      I0 => U2_ch(1),
      I1 => U3_bcd10_0_bdd0,
      I2 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I3 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I4 => U3_bcd10_0_bdd1,
      O => N110
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_0_253_G : LUT6
    generic map(
      INIT => X"005700DF0002008A"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_ddram_addr(1),
      I1 => U2_cm(1),
      I2 => U5_bcd10_0_bdd1,
      I3 => U30_my_hd44780_simple_cur_ddram_addr(2),
      I4 => U5_bcd10_0_bdd0,
      I5 => U2_ch(0),
      O => N111
    );
  U2_ch_mux0001_6_1 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => U2_ch(4),
      I1 => U2_ch(5),
      I2 => U2_ch(3),
      I3 => U2_ch(2),
      I4 => U2_ch(1),
      I5 => U2_ch(0),
      O => U2_ch_mux0001_6_1_575
    );
  U2_ch_mux0001_6_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U2_ch(4),
      I1 => U2_ch(5),
      I2 => U2_ch(3),
      I3 => U2_ch(2),
      I4 => U2_ch(1),
      I5 => U2_ch(0),
      O => U2_ch_mux0001_6_2_576
    );
  U2_ch_mux0001_6_f7 : MUXF7
    port map (
      I0 => U2_ch_mux0001_6_2_576,
      I1 => U2_ch_mux0001_6_1_575,
      S => U2_ch(6),
      O => U2_ch_mux0001(6)
    );
  U30_my_hd44780_simple_cur_state_mux0000_1_1 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(0),
      I1 => U30_my_hd44780_simple_en_started(0),
      I2 => U30_my_hd44780_simple_cur_state_cmp_gt0000,
      I3 => U30_my_hd44780_simple_cur_state(1),
      O => U30_my_hd44780_simple_cur_state_mux0000_1_1_1033
    );
  U30_my_hd44780_simple_cur_state_mux0000_1_2 : LUT5
    generic map(
      INIT => X"FFFF8AAA"
    )
    port map (
      I0 => U30_my_hd44780_simple_cur_state(1),
      I1 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd2_1150,
      I2 => U30_my_hd44780_simple_timer2state_done_1146,
      I3 => U30_my_hd44780_simple_timer_called_cnt_FSM_FFd1_1148,
      I4 => U30_my_hd44780_simple_cur_state(0),
      O => U30_my_hd44780_simple_cur_state_mux0000_1_2_1034
    );
  U30_my_hd44780_simple_cur_state_mux0000_1_f7 : MUXF7
    port map (
      I0 => U30_my_hd44780_simple_cur_state_mux0000_1_2_1034,
      I1 => U30_my_hd44780_simple_cur_state_mux0000_1_1_1033,
      S => U30_my_hd44780_simple_cur_state(2),
      O => U30_my_hd44780_simple_cur_state_mux0000(1)
    );
  U30_my_hd44780_simple_hd44780_db_mux0000_3_1828_G_INV_0 : INV
    port map (
      I => U30_my_hd44780_simple_cur_ddram_addr(1),
      O => N97
    );

end STRUCTURE;

