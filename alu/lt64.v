////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.31
//  \   \         Application: netgen
//  /   /         Filename: lt64.v
// /___/   /\     Timestamp: Wed Mar  2 04:55:25 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog /home/ise/sf/ee533_cpu/alu/tmp/_cg/lt64.ngc /home/ise/sf/ee533_cpu/alu/tmp/_cg/lt64.v 
// Device	: 2vp50ff1152-7
// Input file	: /home/ise/sf/ee533_cpu/alu/tmp/_cg/lt64.ngc
// Output file	: /home/ise/sf/ee533_cpu/alu/tmp/_cg/lt64.v
// # of Modules	: 1
// Design Name	: lt64
// Xilinx        : /opt/Xilinx/10.1/ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module lt64 (
  a_lt_b, a, b
);
  output a_lt_b;
  input [63 : 0] a;
  input [63 : 0] b;
  
  // synthesis translate_off
  
  wire \BU2/a_ge_b ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire [63 : 0] a_2;
  wire [63 : 0] b_3;
  wire [63 : 0] \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel ;
  wire [63 : 1] \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry ;
  assign
    a_2[63] = a[63],
    a_2[62] = a[62],
    a_2[61] = a[61],
    a_2[60] = a[60],
    a_2[59] = a[59],
    a_2[58] = a[58],
    a_2[57] = a[57],
    a_2[56] = a[56],
    a_2[55] = a[55],
    a_2[54] = a[54],
    a_2[53] = a[53],
    a_2[52] = a[52],
    a_2[51] = a[51],
    a_2[50] = a[50],
    a_2[49] = a[49],
    a_2[48] = a[48],
    a_2[47] = a[47],
    a_2[46] = a[46],
    a_2[45] = a[45],
    a_2[44] = a[44],
    a_2[43] = a[43],
    a_2[42] = a[42],
    a_2[41] = a[41],
    a_2[40] = a[40],
    a_2[39] = a[39],
    a_2[38] = a[38],
    a_2[37] = a[37],
    a_2[36] = a[36],
    a_2[35] = a[35],
    a_2[34] = a[34],
    a_2[33] = a[33],
    a_2[32] = a[32],
    a_2[31] = a[31],
    a_2[30] = a[30],
    a_2[29] = a[29],
    a_2[28] = a[28],
    a_2[27] = a[27],
    a_2[26] = a[26],
    a_2[25] = a[25],
    a_2[24] = a[24],
    a_2[23] = a[23],
    a_2[22] = a[22],
    a_2[21] = a[21],
    a_2[20] = a[20],
    a_2[19] = a[19],
    a_2[18] = a[18],
    a_2[17] = a[17],
    a_2[16] = a[16],
    a_2[15] = a[15],
    a_2[14] = a[14],
    a_2[13] = a[13],
    a_2[12] = a[12],
    a_2[11] = a[11],
    a_2[10] = a[10],
    a_2[9] = a[9],
    a_2[8] = a[8],
    a_2[7] = a[7],
    a_2[6] = a[6],
    a_2[5] = a[5],
    a_2[4] = a[4],
    a_2[3] = a[3],
    a_2[2] = a[2],
    a_2[1] = a[1],
    a_2[0] = a[0],
    b_3[63] = b[63],
    b_3[62] = b[62],
    b_3[61] = b[61],
    b_3[60] = b[60],
    b_3[59] = b[59],
    b_3[58] = b[58],
    b_3[57] = b[57],
    b_3[56] = b[56],
    b_3[55] = b[55],
    b_3[54] = b[54],
    b_3[53] = b[53],
    b_3[52] = b[52],
    b_3[51] = b[51],
    b_3[50] = b[50],
    b_3[49] = b[49],
    b_3[48] = b[48],
    b_3[47] = b[47],
    b_3[46] = b[46],
    b_3[45] = b[45],
    b_3[44] = b[44],
    b_3[43] = b[43],
    b_3[42] = b[42],
    b_3[41] = b[41],
    b_3[40] = b[40],
    b_3[39] = b[39],
    b_3[38] = b[38],
    b_3[37] = b[37],
    b_3[36] = b[36],
    b_3[35] = b[35],
    b_3[34] = b[34],
    b_3[33] = b[33],
    b_3[32] = b[32],
    b_3[31] = b[31],
    b_3[30] = b[30],
    b_3[29] = b[29],
    b_3[28] = b[28],
    b_3[27] = b[27],
    b_3[26] = b[26],
    b_3[25] = b[25],
    b_3[24] = b[24],
    b_3[23] = b[23],
    b_3[22] = b[22],
    b_3[21] = b[21],
    b_3[20] = b[20],
    b_3[19] = b[19],
    b_3[18] = b[18],
    b_3[17] = b[17],
    b_3[16] = b[16],
    b_3[15] = b[15],
    b_3[14] = b[14],
    b_3[13] = b[13],
    b_3[12] = b[12],
    b_3[11] = b[11],
    b_3[10] = b[10],
    b_3[9] = b[9],
    b_3[8] = b[8],
    b_3[7] = b[7],
    b_3[6] = b[6],
    b_3[5] = b[5],
    b_3[4] = b[4],
    b_3[3] = b[3],
    b_3[2] = b[2],
    b_3[1] = b[1],
    b_3[0] = b[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_0_mux00001  (
    .I0(b_3[63]),
    .I1(a_2[63]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_10_mux00001  (
    .I0(b_3[53]),
    .I1(a_2[53]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_11_mux00001  (
    .I0(b_3[52]),
    .I1(a_2[52]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_12_mux00001  (
    .I0(b_3[51]),
    .I1(a_2[51]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_13_mux00001  (
    .I0(b_3[50]),
    .I1(a_2[50]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_14_mux00001  (
    .I0(b_3[49]),
    .I1(a_2[49]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_15_mux00001  (
    .I0(b_3[48]),
    .I1(a_2[48]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_16_mux00001  (
    .I0(b_3[47]),
    .I1(a_2[47]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [16])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_17_mux00001  (
    .I0(b_3[46]),
    .I1(a_2[46]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [17])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_18_mux00001  (
    .I0(b_3[45]),
    .I1(a_2[45]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [18])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_19_mux00001  (
    .I0(b_3[44]),
    .I1(a_2[44]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [19])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_1_mux00001  (
    .I0(b_3[62]),
    .I1(a_2[62]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_20_mux00001  (
    .I0(b_3[43]),
    .I1(a_2[43]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [20])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_21_mux00001  (
    .I0(b_3[42]),
    .I1(a_2[42]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [21])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_22_mux00001  (
    .I0(b_3[41]),
    .I1(a_2[41]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [22])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_23_mux00001  (
    .I0(b_3[40]),
    .I1(a_2[40]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [23])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_24_mux00001  (
    .I0(b_3[39]),
    .I1(a_2[39]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [24])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_25_mux00001  (
    .I0(b_3[38]),
    .I1(a_2[38]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [25])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_26_mux00001  (
    .I0(b_3[37]),
    .I1(a_2[37]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [26])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_27_mux00001  (
    .I0(b_3[36]),
    .I1(a_2[36]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [27])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_28_mux00001  (
    .I0(b_3[35]),
    .I1(a_2[35]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [28])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_29_mux00001  (
    .I0(b_3[34]),
    .I1(a_2[34]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [29])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_2_mux00001  (
    .I0(b_3[61]),
    .I1(a_2[61]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_30_mux00001  (
    .I0(b_3[33]),
    .I1(a_2[33]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [30])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_31_mux00001  (
    .I0(b_3[32]),
    .I1(a_2[32]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [31])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_32_mux00001  (
    .I0(b_3[31]),
    .I1(a_2[31]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [32])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_33_mux00001  (
    .I0(b_3[30]),
    .I1(a_2[30]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [33])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_34_mux00001  (
    .I0(b_3[29]),
    .I1(a_2[29]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [34])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_35_mux00001  (
    .I0(b_3[28]),
    .I1(a_2[28]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [35])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_36_mux00001  (
    .I0(b_3[27]),
    .I1(a_2[27]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [36])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_37_mux00001  (
    .I0(b_3[26]),
    .I1(a_2[26]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [37])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_38_mux00001  (
    .I0(b_3[25]),
    .I1(a_2[25]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [38])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_39_mux00001  (
    .I0(b_3[24]),
    .I1(a_2[24]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [39])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_3_mux00001  (
    .I0(b_3[60]),
    .I1(a_2[60]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_40_mux00001  (
    .I0(b_3[23]),
    .I1(a_2[23]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [40])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_41_mux00001  (
    .I0(b_3[22]),
    .I1(a_2[22]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [41])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_42_mux00001  (
    .I0(b_3[21]),
    .I1(a_2[21]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [42])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_43_mux00001  (
    .I0(b_3[20]),
    .I1(a_2[20]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [43])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_44_mux00001  (
    .I0(b_3[19]),
    .I1(a_2[19]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [44])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_45_mux00001  (
    .I0(b_3[18]),
    .I1(a_2[18]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [45])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_46_mux00001  (
    .I0(b_3[17]),
    .I1(a_2[17]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [46])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_47_mux00001  (
    .I0(b_3[16]),
    .I1(a_2[16]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [47])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_48_mux00001  (
    .I0(b_3[15]),
    .I1(a_2[15]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [48])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_49_mux00001  (
    .I0(b_3[14]),
    .I1(a_2[14]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [49])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_4_mux00001  (
    .I0(b_3[59]),
    .I1(a_2[59]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_50_mux00001  (
    .I0(b_3[13]),
    .I1(a_2[13]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [50])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_51_mux00001  (
    .I0(b_3[12]),
    .I1(a_2[12]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [51])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_52_mux00001  (
    .I0(b_3[11]),
    .I1(a_2[11]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [52])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_53_mux00001  (
    .I0(b_3[10]),
    .I1(a_2[10]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [53])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_54_mux00001  (
    .I0(b_3[9]),
    .I1(a_2[9]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [54])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_55_mux00001  (
    .I0(b_3[8]),
    .I1(a_2[8]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [55])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_56_mux00001  (
    .I0(b_3[7]),
    .I1(a_2[7]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [56])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_57_mux00001  (
    .I0(b_3[6]),
    .I1(a_2[6]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [57])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_58_mux00001  (
    .I0(b_3[5]),
    .I1(a_2[5]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [58])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_59_mux00001  (
    .I0(b_3[4]),
    .I1(a_2[4]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [59])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_5_mux00001  (
    .I0(b_3[58]),
    .I1(a_2[58]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_60_mux00001  (
    .I0(b_3[3]),
    .I1(a_2[3]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [60])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_61_mux00001  (
    .I0(b_3[2]),
    .I1(a_2[2]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [61])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_62_mux00001  (
    .I0(b_3[1]),
    .I1(a_2[1]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [62])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_63_mux00001  (
    .I0(b_3[0]),
    .I1(a_2[0]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [63])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_6_mux00001  (
    .I0(b_3[57]),
    .I1(a_2[57]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_7_mux00001  (
    .I0(b_3[56]),
    .I1(a_2[56]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_8_mux00001  (
    .I0(b_3[55]),
    .I1(a_2[55]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel_9_mux00001  (
    .I0(b_3[54]),
    .I1(a_2[54]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [9])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[0].i_top_muxcy_sign.i_lt_le.sign_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [1]),
    .DI(a_2[63]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [0]),
    .O(a_lt_b)
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[1].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [2]),
    .DI(b_3[62]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [1]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [1])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[2].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [3]),
    .DI(b_3[61]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [2]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [2])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[3].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [4]),
    .DI(b_3[60]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [3]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [3])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[4].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [5]),
    .DI(b_3[59]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [4]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [4])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[5].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [6]),
    .DI(b_3[58]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [5]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [5])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[6].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [7]),
    .DI(b_3[57]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [6]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [6])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[7].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [8]),
    .DI(b_3[56]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [7]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [7])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[8].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [9]),
    .DI(b_3[55]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [8]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [8])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[9].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [10]),
    .DI(b_3[54]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [9]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [9])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[10].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [11]),
    .DI(b_3[53]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [10]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [10])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[11].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [12]),
    .DI(b_3[52]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [11]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [11])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[12].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [13]),
    .DI(b_3[51]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [12]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [12])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[13].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [14]),
    .DI(b_3[50]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [13]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [13])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[14].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [15]),
    .DI(b_3[49]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [14]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [14])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[15].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [16]),
    .DI(b_3[48]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [15]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [15])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[16].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [17]),
    .DI(b_3[47]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [16]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [16])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[17].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [18]),
    .DI(b_3[46]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [17]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [17])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[18].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [19]),
    .DI(b_3[45]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [18]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [18])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[19].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [20]),
    .DI(b_3[44]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [19]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [19])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[20].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [21]),
    .DI(b_3[43]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [20]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [20])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[21].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [22]),
    .DI(b_3[42]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [21]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [21])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[22].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [23]),
    .DI(b_3[41]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [22]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [22])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[23].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [24]),
    .DI(b_3[40]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [23]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [23])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[24].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [25]),
    .DI(b_3[39]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [24]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [24])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[25].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [26]),
    .DI(b_3[38]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [25]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [25])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[26].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [27]),
    .DI(b_3[37]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [26]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [26])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[27].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [28]),
    .DI(b_3[36]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [27]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [27])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[28].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [29]),
    .DI(b_3[35]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [28]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [28])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[29].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [30]),
    .DI(b_3[34]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [29]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [29])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[30].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [31]),
    .DI(b_3[33]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [30]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [30])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[31].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [32]),
    .DI(b_3[32]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [31]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [31])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[32].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [33]),
    .DI(b_3[31]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [32]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [32])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[33].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [34]),
    .DI(b_3[30]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [33]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [33])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[34].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [35]),
    .DI(b_3[29]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [34]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [34])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[35].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [36]),
    .DI(b_3[28]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [35]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [35])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[36].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [37]),
    .DI(b_3[27]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [36]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [36])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[37].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [38]),
    .DI(b_3[26]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [37]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [37])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[38].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [39]),
    .DI(b_3[25]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [38]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [38])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[39].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [40]),
    .DI(b_3[24]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [39]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [39])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[40].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [41]),
    .DI(b_3[23]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [40]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [40])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[41].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [42]),
    .DI(b_3[22]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [41]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [41])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[42].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [43]),
    .DI(b_3[21]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [42]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [42])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[43].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [44]),
    .DI(b_3[20]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [43]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [43])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[44].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [45]),
    .DI(b_3[19]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [44]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [44])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[45].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [46]),
    .DI(b_3[18]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [45]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [45])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[46].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [47]),
    .DI(b_3[17]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [46]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [46])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[47].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [48]),
    .DI(b_3[16]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [47]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [47])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[48].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [49]),
    .DI(b_3[15]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [48]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [48])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[49].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [50]),
    .DI(b_3[14]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [49]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [49])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[50].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [51]),
    .DI(b_3[13]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [50]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [50])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[51].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [52]),
    .DI(b_3[12]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [51]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [51])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[52].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [53]),
    .DI(b_3[11]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [52]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [52])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[53].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [54]),
    .DI(b_3[10]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [53]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [53])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[54].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [55]),
    .DI(b_3[9]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [54]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [54])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[55].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [56]),
    .DI(b_3[8]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [55]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [55])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[56].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [57]),
    .DI(b_3[7]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [56]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [56])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[57].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [58]),
    .DI(b_3[6]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [57]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [57])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[58].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [59]),
    .DI(b_3[5]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [58]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [58])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[59].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [60]),
    .DI(b_3[4]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [59]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [59])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[60].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [61]),
    .DI(b_3[3]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [60]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [60])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[61].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [62]),
    .DI(b_3[2]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [61]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [61])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[62].i_other_muxcy.i_lt_le.data_muxcy  (
    .CI(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [63]),
    .DI(b_3[1]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [62]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [62])
  );
  MUXCY 
  \BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/i_compare_struct.i_gen_single_bit_lut_compare.i_gen_luts_and_muxcys[63].i_bottom_muxcy.i_lt.bottom_muxcy_lt  (
    .CI(\BU2/a_ge_b ),
    .DI(b_3[0]),
    .S(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/sel [63]),
    .O(\BU2/U0/gen_structure_logic.gen_nonpipelined.a_lt_ge_gt_le_b.i_gen_carry_chain_comp/carry [63])
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/a_ge_b )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

// synthesis translate_on
