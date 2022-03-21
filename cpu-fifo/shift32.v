////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : shift32.vf
// /___/   /\     Timestamp : 03/07/2022 06:52:02
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/alu/shift32.sch shift32.vf
//Design Name: shift32
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module M2_1_MXILINX_shift32(D0, 
                            D1, 
                            S0, 
                            O);

    input D0;
    input D1;
    input S0;
   output O;
   
   wire M0;
   wire M1;
   
   AND2B1 I_36_7 (.I0(S0), 
                  .I1(D0), 
                  .O(M0));
   OR2 I_36_8 (.I0(M1), 
               .I1(M0), 
               .O(O));
   AND2 I_36_9 (.I0(D1), 
                .I1(S0), 
                .O(M1));
endmodule
`timescale 1ns / 1ps

module shift32(A, 
               Q, 
               S);

    input [31:0] A;
    input [4:0] Q;
   output [31:0] S;
   
   wire A1_0;
   wire A1_1;
   wire A1_2;
   wire A1_3;
   wire A1_4;
   wire A1_5;
   wire A1_6;
   wire A1_7;
   wire A1_8;
   wire A1_9;
   wire A1_10;
   wire A1_11;
   wire A1_12;
   wire A1_13;
   wire A1_14;
   wire A1_15;
   wire A1_16;
   wire A1_17;
   wire A1_18;
   wire A1_19;
   wire A1_20;
   wire A1_21;
   wire A1_22;
   wire A1_23;
   wire A1_24;
   wire A1_25;
   wire A1_26;
   wire A1_27;
   wire A1_28;
   wire A1_29;
   wire A1_30;
   wire A1_31;
   wire A2_0;
   wire A2_1;
   wire A2_2;
   wire A2_3;
   wire A2_4;
   wire A2_5;
   wire A2_6;
   wire A2_7;
   wire A2_8;
   wire A2_9;
   wire A2_10;
   wire A2_11;
   wire A2_12;
   wire A2_13;
   wire A2_14;
   wire A2_15;
   wire A2_16;
   wire A2_17;
   wire A2_18;
   wire A2_19;
   wire A2_20;
   wire A2_21;
   wire A2_22;
   wire A2_23;
   wire A2_24;
   wire A2_25;
   wire A2_26;
   wire A2_27;
   wire A2_28;
   wire A2_29;
   wire A2_30;
   wire A2_31;
   wire A3_0;
   wire A3_1;
   wire A3_2;
   wire A3_3;
   wire A3_4;
   wire A3_5;
   wire A3_6;
   wire A3_7;
   wire A3_8;
   wire A3_9;
   wire A3_10;
   wire A3_11;
   wire A3_12;
   wire A3_13;
   wire A3_14;
   wire A3_15;
   wire A3_16;
   wire A3_17;
   wire A3_18;
   wire A3_19;
   wire A3_20;
   wire A3_21;
   wire A3_22;
   wire A3_23;
   wire A3_24;
   wire A3_25;
   wire A3_26;
   wire A3_27;
   wire A3_28;
   wire A3_29;
   wire A3_30;
   wire A3_31;
   wire A4_0;
   wire A4_1;
   wire A4_2;
   wire A4_3;
   wire A4_4;
   wire A4_5;
   wire A4_6;
   wire A4_7;
   wire A4_8;
   wire A4_9;
   wire A4_10;
   wire A4_11;
   wire A4_12;
   wire A4_13;
   wire A4_14;
   wire A4_15;
   wire A4_16;
   wire A4_17;
   wire A4_18;
   wire A4_19;
   wire A4_20;
   wire A4_21;
   wire A4_22;
   wire A4_23;
   wire A4_24;
   wire A4_25;
   wire A4_26;
   wire A4_27;
   wire A4_28;
   wire A4_29;
   wire A4_30;
   wire A4_31;
   
   M2_1_MXILINX_shift32 XLXI_7 (.D0(A[31]), 
                                .D1(A[30]), 
                                .S0(Q[0]), 
                                .O(A1_31));
   // synthesis attribute HU_SET of XLXI_7 is "XLXI_7_0"
   M2_1_MXILINX_shift32 XLXI_8 (.D0(A[30]), 
                                .D1(A[29]), 
                                .S0(Q[0]), 
                                .O(A1_30));
   // synthesis attribute HU_SET of XLXI_8 is "XLXI_8_1"
   M2_1_MXILINX_shift32 XLXI_9 (.D0(A[29]), 
                                .D1(A[28]), 
                                .S0(Q[0]), 
                                .O(A1_29));
   // synthesis attribute HU_SET of XLXI_9 is "XLXI_9_2"
   M2_1_MXILINX_shift32 XLXI_10 (.D0(A[28]), 
                                 .D1(A[27]), 
                                 .S0(Q[0]), 
                                 .O(A1_28));
   // synthesis attribute HU_SET of XLXI_10 is "XLXI_10_3"
   M2_1_MXILINX_shift32 XLXI_11 (.D0(A[27]), 
                                 .D1(A[26]), 
                                 .S0(Q[0]), 
                                 .O(A1_27));
   // synthesis attribute HU_SET of XLXI_11 is "XLXI_11_4"
   M2_1_MXILINX_shift32 XLXI_12 (.D0(A[26]), 
                                 .D1(A[25]), 
                                 .S0(Q[0]), 
                                 .O(A1_26));
   // synthesis attribute HU_SET of XLXI_12 is "XLXI_12_5"
   M2_1_MXILINX_shift32 XLXI_13 (.D0(A[25]), 
                                 .D1(A[24]), 
                                 .S0(Q[0]), 
                                 .O(A1_25));
   // synthesis attribute HU_SET of XLXI_13 is "XLXI_13_6"
   M2_1_MXILINX_shift32 XLXI_14 (.D0(A[24]), 
                                 .D1(A[23]), 
                                 .S0(Q[0]), 
                                 .O(A1_24));
   // synthesis attribute HU_SET of XLXI_14 is "XLXI_14_7"
   M2_1_MXILINX_shift32 XLXI_15 (.D0(A[23]), 
                                 .D1(A[22]), 
                                 .S0(Q[0]), 
                                 .O(A1_23));
   // synthesis attribute HU_SET of XLXI_15 is "XLXI_15_8"
   M2_1_MXILINX_shift32 XLXI_16 (.D0(A[22]), 
                                 .D1(A[21]), 
                                 .S0(Q[0]), 
                                 .O(A1_22));
   // synthesis attribute HU_SET of XLXI_16 is "XLXI_16_9"
   M2_1_MXILINX_shift32 XLXI_17 (.D0(A[21]), 
                                 .D1(A[20]), 
                                 .S0(Q[0]), 
                                 .O(A1_21));
   // synthesis attribute HU_SET of XLXI_17 is "XLXI_17_10"
   M2_1_MXILINX_shift32 XLXI_18 (.D0(A[20]), 
                                 .D1(A[19]), 
                                 .S0(Q[0]), 
                                 .O(A1_20));
   // synthesis attribute HU_SET of XLXI_18 is "XLXI_18_11"
   M2_1_MXILINX_shift32 XLXI_19 (.D0(A[19]), 
                                 .D1(A[18]), 
                                 .S0(Q[0]), 
                                 .O(A1_19));
   // synthesis attribute HU_SET of XLXI_19 is "XLXI_19_12"
   M2_1_MXILINX_shift32 XLXI_20 (.D0(A[18]), 
                                 .D1(A[17]), 
                                 .S0(Q[0]), 
                                 .O(A1_18));
   // synthesis attribute HU_SET of XLXI_20 is "XLXI_20_13"
   M2_1_MXILINX_shift32 XLXI_21 (.D0(A[17]), 
                                 .D1(A[16]), 
                                 .S0(Q[0]), 
                                 .O(A1_17));
   // synthesis attribute HU_SET of XLXI_21 is "XLXI_21_14"
   M2_1_MXILINX_shift32 XLXI_22 (.D0(A[16]), 
                                 .D1(A[15]), 
                                 .S0(Q[0]), 
                                 .O(A1_16));
   // synthesis attribute HU_SET of XLXI_22 is "XLXI_22_15"
   M2_1_MXILINX_shift32 XLXI_23 (.D0(A[15]), 
                                 .D1(A[14]), 
                                 .S0(Q[0]), 
                                 .O(A1_15));
   // synthesis attribute HU_SET of XLXI_23 is "XLXI_23_16"
   M2_1_MXILINX_shift32 XLXI_24 (.D0(A[14]), 
                                 .D1(A[13]), 
                                 .S0(Q[0]), 
                                 .O(A1_14));
   // synthesis attribute HU_SET of XLXI_24 is "XLXI_24_17"
   M2_1_MXILINX_shift32 XLXI_25 (.D0(A[13]), 
                                 .D1(A[12]), 
                                 .S0(Q[0]), 
                                 .O(A1_13));
   // synthesis attribute HU_SET of XLXI_25 is "XLXI_25_18"
   M2_1_MXILINX_shift32 XLXI_26 (.D0(A[12]), 
                                 .D1(A[11]), 
                                 .S0(Q[0]), 
                                 .O(A1_12));
   // synthesis attribute HU_SET of XLXI_26 is "XLXI_26_19"
   M2_1_MXILINX_shift32 XLXI_27 (.D0(A[11]), 
                                 .D1(A[10]), 
                                 .S0(Q[0]), 
                                 .O(A1_11));
   // synthesis attribute HU_SET of XLXI_27 is "XLXI_27_20"
   M2_1_MXILINX_shift32 XLXI_28 (.D0(A[10]), 
                                 .D1(A[9]), 
                                 .S0(Q[0]), 
                                 .O(A1_10));
   // synthesis attribute HU_SET of XLXI_28 is "XLXI_28_21"
   M2_1_MXILINX_shift32 XLXI_29 (.D0(A[9]), 
                                 .D1(A[8]), 
                                 .S0(Q[0]), 
                                 .O(A1_9));
   // synthesis attribute HU_SET of XLXI_29 is "XLXI_29_22"
   M2_1_MXILINX_shift32 XLXI_30 (.D0(A[8]), 
                                 .D1(A[7]), 
                                 .S0(Q[0]), 
                                 .O(A1_8));
   // synthesis attribute HU_SET of XLXI_30 is "XLXI_30_23"
   M2_1_MXILINX_shift32 XLXI_31 (.D0(A[7]), 
                                 .D1(A[6]), 
                                 .S0(Q[0]), 
                                 .O(A1_7));
   // synthesis attribute HU_SET of XLXI_31 is "XLXI_31_24"
   M2_1_MXILINX_shift32 XLXI_32 (.D0(A[6]), 
                                 .D1(A[5]), 
                                 .S0(Q[0]), 
                                 .O(A1_6));
   // synthesis attribute HU_SET of XLXI_32 is "XLXI_32_25"
   M2_1_MXILINX_shift32 XLXI_33 (.D0(A[5]), 
                                 .D1(A[4]), 
                                 .S0(Q[0]), 
                                 .O(A1_5));
   // synthesis attribute HU_SET of XLXI_33 is "XLXI_33_26"
   M2_1_MXILINX_shift32 XLXI_34 (.D0(A[4]), 
                                 .D1(A[3]), 
                                 .S0(Q[0]), 
                                 .O(A1_4));
   // synthesis attribute HU_SET of XLXI_34 is "XLXI_34_27"
   M2_1_MXILINX_shift32 XLXI_35 (.D0(A[3]), 
                                 .D1(A[2]), 
                                 .S0(Q[0]), 
                                 .O(A1_3));
   // synthesis attribute HU_SET of XLXI_35 is "XLXI_35_28"
   M2_1_MXILINX_shift32 XLXI_36 (.D0(A[2]), 
                                 .D1(A[1]), 
                                 .S0(Q[0]), 
                                 .O(A1_2));
   // synthesis attribute HU_SET of XLXI_36 is "XLXI_36_29"
   M2_1_MXILINX_shift32 XLXI_37 (.D0(A[1]), 
                                 .D1(A[0]), 
                                 .S0(Q[0]), 
                                 .O(A1_1));
   // synthesis attribute HU_SET of XLXI_37 is "XLXI_37_30"
   M2_1_MXILINX_shift32 XLXI_101 (.D0(A[0]), 
                                  .D1(A[31]), 
                                  .S0(Q[0]), 
                                  .O(A1_0));
   // synthesis attribute HU_SET of XLXI_101 is "XLXI_101_31"
   M2_1_MXILINX_shift32 XLXI_102 (.D0(A1_30), 
                                  .D1(A1_28), 
                                  .S0(Q[1]), 
                                  .O(A2_30));
   // synthesis attribute HU_SET of XLXI_102 is "XLXI_102_32"
   M2_1_MXILINX_shift32 XLXI_103 (.D0(A1_29), 
                                  .D1(A1_27), 
                                  .S0(Q[1]), 
                                  .O(A2_29));
   // synthesis attribute HU_SET of XLXI_103 is "XLXI_103_33"
   M2_1_MXILINX_shift32 XLXI_104 (.D0(A1_28), 
                                  .D1(A1_26), 
                                  .S0(Q[1]), 
                                  .O(A2_28));
   // synthesis attribute HU_SET of XLXI_104 is "XLXI_104_34"
   M2_1_MXILINX_shift32 XLXI_105 (.D0(A1_27), 
                                  .D1(A1_25), 
                                  .S0(Q[1]), 
                                  .O(A2_27));
   // synthesis attribute HU_SET of XLXI_105 is "XLXI_105_35"
   M2_1_MXILINX_shift32 XLXI_106 (.D0(A1_26), 
                                  .D1(A1_24), 
                                  .S0(Q[1]), 
                                  .O(A2_26));
   // synthesis attribute HU_SET of XLXI_106 is "XLXI_106_36"
   M2_1_MXILINX_shift32 XLXI_107 (.D0(A1_25), 
                                  .D1(A1_23), 
                                  .S0(Q[1]), 
                                  .O(A2_25));
   // synthesis attribute HU_SET of XLXI_107 is "XLXI_107_37"
   M2_1_MXILINX_shift32 XLXI_108 (.D0(A1_24), 
                                  .D1(A1_22), 
                                  .S0(Q[1]), 
                                  .O(A2_24));
   // synthesis attribute HU_SET of XLXI_108 is "XLXI_108_38"
   M2_1_MXILINX_shift32 XLXI_109 (.D0(A1_23), 
                                  .D1(A1_21), 
                                  .S0(Q[1]), 
                                  .O(A2_23));
   // synthesis attribute HU_SET of XLXI_109 is "XLXI_109_39"
   M2_1_MXILINX_shift32 XLXI_110 (.D0(A1_22), 
                                  .D1(A1_20), 
                                  .S0(Q[1]), 
                                  .O(A2_22));
   // synthesis attribute HU_SET of XLXI_110 is "XLXI_110_40"
   M2_1_MXILINX_shift32 XLXI_111 (.D0(A1_21), 
                                  .D1(A1_19), 
                                  .S0(Q[1]), 
                                  .O(A2_21));
   // synthesis attribute HU_SET of XLXI_111 is "XLXI_111_41"
   M2_1_MXILINX_shift32 XLXI_112 (.D0(A1_20), 
                                  .D1(A1_18), 
                                  .S0(Q[1]), 
                                  .O(A2_20));
   // synthesis attribute HU_SET of XLXI_112 is "XLXI_112_42"
   M2_1_MXILINX_shift32 XLXI_113 (.D0(A1_19), 
                                  .D1(A1_17), 
                                  .S0(Q[1]), 
                                  .O(A2_19));
   // synthesis attribute HU_SET of XLXI_113 is "XLXI_113_43"
   M2_1_MXILINX_shift32 XLXI_114 (.D0(A1_18), 
                                  .D1(A1_16), 
                                  .S0(Q[1]), 
                                  .O(A2_18));
   // synthesis attribute HU_SET of XLXI_114 is "XLXI_114_44"
   M2_1_MXILINX_shift32 XLXI_115 (.D0(A1_17), 
                                  .D1(A1_15), 
                                  .S0(Q[1]), 
                                  .O(A2_17));
   // synthesis attribute HU_SET of XLXI_115 is "XLXI_115_45"
   M2_1_MXILINX_shift32 XLXI_116 (.D0(A1_16), 
                                  .D1(A1_14), 
                                  .S0(Q[1]), 
                                  .O(A2_16));
   // synthesis attribute HU_SET of XLXI_116 is "XLXI_116_46"
   M2_1_MXILINX_shift32 XLXI_117 (.D0(A1_15), 
                                  .D1(A1_13), 
                                  .S0(Q[1]), 
                                  .O(A2_15));
   // synthesis attribute HU_SET of XLXI_117 is "XLXI_117_47"
   M2_1_MXILINX_shift32 XLXI_118 (.D0(A1_14), 
                                  .D1(A1_12), 
                                  .S0(Q[1]), 
                                  .O(A2_14));
   // synthesis attribute HU_SET of XLXI_118 is "XLXI_118_48"
   M2_1_MXILINX_shift32 XLXI_119 (.D0(A1_13), 
                                  .D1(A1_11), 
                                  .S0(Q[1]), 
                                  .O(A2_13));
   // synthesis attribute HU_SET of XLXI_119 is "XLXI_119_49"
   M2_1_MXILINX_shift32 XLXI_120 (.D0(A1_12), 
                                  .D1(A1_10), 
                                  .S0(Q[1]), 
                                  .O(A2_12));
   // synthesis attribute HU_SET of XLXI_120 is "XLXI_120_50"
   M2_1_MXILINX_shift32 XLXI_121 (.D0(A1_11), 
                                  .D1(A1_9), 
                                  .S0(Q[1]), 
                                  .O(A2_11));
   // synthesis attribute HU_SET of XLXI_121 is "XLXI_121_51"
   M2_1_MXILINX_shift32 XLXI_122 (.D0(A1_10), 
                                  .D1(A1_8), 
                                  .S0(Q[1]), 
                                  .O(A2_10));
   // synthesis attribute HU_SET of XLXI_122 is "XLXI_122_52"
   M2_1_MXILINX_shift32 XLXI_123 (.D0(A1_9), 
                                  .D1(A1_7), 
                                  .S0(Q[1]), 
                                  .O(A2_9));
   // synthesis attribute HU_SET of XLXI_123 is "XLXI_123_53"
   M2_1_MXILINX_shift32 XLXI_124 (.D0(A1_8), 
                                  .D1(A1_6), 
                                  .S0(Q[1]), 
                                  .O(A2_8));
   // synthesis attribute HU_SET of XLXI_124 is "XLXI_124_54"
   M2_1_MXILINX_shift32 XLXI_125 (.D0(A1_7), 
                                  .D1(A1_5), 
                                  .S0(Q[1]), 
                                  .O(A2_7));
   // synthesis attribute HU_SET of XLXI_125 is "XLXI_125_55"
   M2_1_MXILINX_shift32 XLXI_126 (.D0(A1_6), 
                                  .D1(A1_4), 
                                  .S0(Q[1]), 
                                  .O(A2_6));
   // synthesis attribute HU_SET of XLXI_126 is "XLXI_126_56"
   M2_1_MXILINX_shift32 XLXI_127 (.D0(A1_5), 
                                  .D1(A1_3), 
                                  .S0(Q[1]), 
                                  .O(A2_5));
   // synthesis attribute HU_SET of XLXI_127 is "XLXI_127_57"
   M2_1_MXILINX_shift32 XLXI_128 (.D0(A1_4), 
                                  .D1(A1_2), 
                                  .S0(Q[1]), 
                                  .O(A2_4));
   // synthesis attribute HU_SET of XLXI_128 is "XLXI_128_58"
   M2_1_MXILINX_shift32 XLXI_129 (.D0(A1_3), 
                                  .D1(A1_1), 
                                  .S0(Q[1]), 
                                  .O(A2_3));
   // synthesis attribute HU_SET of XLXI_129 is "XLXI_129_59"
   M2_1_MXILINX_shift32 XLXI_130 (.D0(A1_2), 
                                  .D1(A1_0), 
                                  .S0(Q[1]), 
                                  .O(A2_2));
   // synthesis attribute HU_SET of XLXI_130 is "XLXI_130_60"
   M2_1_MXILINX_shift32 XLXI_131 (.D0(A1_1), 
                                  .D1(A1_31), 
                                  .S0(Q[1]), 
                                  .O(A2_1));
   // synthesis attribute HU_SET of XLXI_131 is "XLXI_131_61"
   M2_1_MXILINX_shift32 XLXI_132 (.D0(A1_0), 
                                  .D1(A1_30), 
                                  .S0(Q[1]), 
                                  .O(A2_0));
   // synthesis attribute HU_SET of XLXI_132 is "XLXI_132_62"
   M2_1_MXILINX_shift32 XLXI_133 (.D0(A1_31), 
                                  .D1(A1_29), 
                                  .S0(Q[1]), 
                                  .O(A2_31));
   // synthesis attribute HU_SET of XLXI_133 is "XLXI_133_63"
   M2_1_MXILINX_shift32 XLXI_134 (.D0(A2_30), 
                                  .D1(A2_26), 
                                  .S0(Q[2]), 
                                  .O(A3_30));
   // synthesis attribute HU_SET of XLXI_134 is "XLXI_134_64"
   M2_1_MXILINX_shift32 XLXI_135 (.D0(A2_29), 
                                  .D1(A2_25), 
                                  .S0(Q[2]), 
                                  .O(A3_29));
   // synthesis attribute HU_SET of XLXI_135 is "XLXI_135_65"
   M2_1_MXILINX_shift32 XLXI_136 (.D0(A2_28), 
                                  .D1(A2_24), 
                                  .S0(Q[2]), 
                                  .O(A3_28));
   // synthesis attribute HU_SET of XLXI_136 is "XLXI_136_66"
   M2_1_MXILINX_shift32 XLXI_137 (.D0(A2_27), 
                                  .D1(A2_23), 
                                  .S0(Q[2]), 
                                  .O(A3_27));
   // synthesis attribute HU_SET of XLXI_137 is "XLXI_137_67"
   M2_1_MXILINX_shift32 XLXI_138 (.D0(A2_26), 
                                  .D1(A2_22), 
                                  .S0(Q[2]), 
                                  .O(A3_26));
   // synthesis attribute HU_SET of XLXI_138 is "XLXI_138_68"
   M2_1_MXILINX_shift32 XLXI_139 (.D0(A2_25), 
                                  .D1(A2_21), 
                                  .S0(Q[2]), 
                                  .O(A3_25));
   // synthesis attribute HU_SET of XLXI_139 is "XLXI_139_69"
   M2_1_MXILINX_shift32 XLXI_140 (.D0(A2_24), 
                                  .D1(A2_20), 
                                  .S0(Q[2]), 
                                  .O(A3_24));
   // synthesis attribute HU_SET of XLXI_140 is "XLXI_140_70"
   M2_1_MXILINX_shift32 XLXI_141 (.D0(A2_23), 
                                  .D1(A2_19), 
                                  .S0(Q[2]), 
                                  .O(A3_23));
   // synthesis attribute HU_SET of XLXI_141 is "XLXI_141_71"
   M2_1_MXILINX_shift32 XLXI_142 (.D0(A2_22), 
                                  .D1(A2_18), 
                                  .S0(Q[2]), 
                                  .O(A3_22));
   // synthesis attribute HU_SET of XLXI_142 is "XLXI_142_72"
   M2_1_MXILINX_shift32 XLXI_143 (.D0(A2_21), 
                                  .D1(A2_17), 
                                  .S0(Q[2]), 
                                  .O(A3_21));
   // synthesis attribute HU_SET of XLXI_143 is "XLXI_143_73"
   M2_1_MXILINX_shift32 XLXI_144 (.D0(A2_20), 
                                  .D1(A2_16), 
                                  .S0(Q[2]), 
                                  .O(A3_20));
   // synthesis attribute HU_SET of XLXI_144 is "XLXI_144_74"
   M2_1_MXILINX_shift32 XLXI_145 (.D0(A2_19), 
                                  .D1(A2_15), 
                                  .S0(Q[2]), 
                                  .O(A3_19));
   // synthesis attribute HU_SET of XLXI_145 is "XLXI_145_75"
   M2_1_MXILINX_shift32 XLXI_146 (.D0(A2_18), 
                                  .D1(A2_14), 
                                  .S0(Q[2]), 
                                  .O(A3_18));
   // synthesis attribute HU_SET of XLXI_146 is "XLXI_146_76"
   M2_1_MXILINX_shift32 XLXI_147 (.D0(A2_17), 
                                  .D1(A2_13), 
                                  .S0(Q[2]), 
                                  .O(A3_17));
   // synthesis attribute HU_SET of XLXI_147 is "XLXI_147_77"
   M2_1_MXILINX_shift32 XLXI_148 (.D0(A2_16), 
                                  .D1(A2_12), 
                                  .S0(Q[2]), 
                                  .O(A3_16));
   // synthesis attribute HU_SET of XLXI_148 is "XLXI_148_78"
   M2_1_MXILINX_shift32 XLXI_149 (.D0(A2_15), 
                                  .D1(A2_11), 
                                  .S0(Q[2]), 
                                  .O(A3_15));
   // synthesis attribute HU_SET of XLXI_149 is "XLXI_149_79"
   M2_1_MXILINX_shift32 XLXI_150 (.D0(A2_14), 
                                  .D1(A2_10), 
                                  .S0(Q[2]), 
                                  .O(A3_14));
   // synthesis attribute HU_SET of XLXI_150 is "XLXI_150_80"
   M2_1_MXILINX_shift32 XLXI_151 (.D0(A2_13), 
                                  .D1(A2_9), 
                                  .S0(Q[2]), 
                                  .O(A3_13));
   // synthesis attribute HU_SET of XLXI_151 is "XLXI_151_81"
   M2_1_MXILINX_shift32 XLXI_152 (.D0(A2_12), 
                                  .D1(A2_8), 
                                  .S0(Q[2]), 
                                  .O(A3_12));
   // synthesis attribute HU_SET of XLXI_152 is "XLXI_152_82"
   M2_1_MXILINX_shift32 XLXI_153 (.D0(A2_11), 
                                  .D1(A2_7), 
                                  .S0(Q[2]), 
                                  .O(A3_11));
   // synthesis attribute HU_SET of XLXI_153 is "XLXI_153_83"
   M2_1_MXILINX_shift32 XLXI_154 (.D0(A2_10), 
                                  .D1(A2_6), 
                                  .S0(Q[2]), 
                                  .O(A3_10));
   // synthesis attribute HU_SET of XLXI_154 is "XLXI_154_84"
   M2_1_MXILINX_shift32 XLXI_155 (.D0(A2_9), 
                                  .D1(A2_5), 
                                  .S0(Q[2]), 
                                  .O(A3_9));
   // synthesis attribute HU_SET of XLXI_155 is "XLXI_155_85"
   M2_1_MXILINX_shift32 XLXI_156 (.D0(A2_8), 
                                  .D1(A2_4), 
                                  .S0(Q[2]), 
                                  .O(A3_8));
   // synthesis attribute HU_SET of XLXI_156 is "XLXI_156_86"
   M2_1_MXILINX_shift32 XLXI_157 (.D0(A2_7), 
                                  .D1(A2_3), 
                                  .S0(Q[2]), 
                                  .O(A3_7));
   // synthesis attribute HU_SET of XLXI_157 is "XLXI_157_87"
   M2_1_MXILINX_shift32 XLXI_158 (.D0(A2_6), 
                                  .D1(A2_2), 
                                  .S0(Q[2]), 
                                  .O(A3_6));
   // synthesis attribute HU_SET of XLXI_158 is "XLXI_158_88"
   M2_1_MXILINX_shift32 XLXI_159 (.D0(A2_5), 
                                  .D1(A2_1), 
                                  .S0(Q[2]), 
                                  .O(A3_5));
   // synthesis attribute HU_SET of XLXI_159 is "XLXI_159_89"
   M2_1_MXILINX_shift32 XLXI_160 (.D0(A2_4), 
                                  .D1(A2_0), 
                                  .S0(Q[2]), 
                                  .O(A3_4));
   // synthesis attribute HU_SET of XLXI_160 is "XLXI_160_90"
   M2_1_MXILINX_shift32 XLXI_161 (.D0(A2_3), 
                                  .D1(A2_31), 
                                  .S0(Q[2]), 
                                  .O(A3_3));
   // synthesis attribute HU_SET of XLXI_161 is "XLXI_161_91"
   M2_1_MXILINX_shift32 XLXI_162 (.D0(A2_2), 
                                  .D1(A2_30), 
                                  .S0(Q[2]), 
                                  .O(A3_2));
   // synthesis attribute HU_SET of XLXI_162 is "XLXI_162_92"
   M2_1_MXILINX_shift32 XLXI_163 (.D0(A2_1), 
                                  .D1(A2_29), 
                                  .S0(Q[2]), 
                                  .O(A3_1));
   // synthesis attribute HU_SET of XLXI_163 is "XLXI_163_93"
   M2_1_MXILINX_shift32 XLXI_164 (.D0(A2_0), 
                                  .D1(A2_28), 
                                  .S0(Q[2]), 
                                  .O(A3_0));
   // synthesis attribute HU_SET of XLXI_164 is "XLXI_164_94"
   M2_1_MXILINX_shift32 XLXI_165 (.D0(A2_31), 
                                  .D1(A2_27), 
                                  .S0(Q[2]), 
                                  .O(A3_31));
   // synthesis attribute HU_SET of XLXI_165 is "XLXI_165_95"
   M2_1_MXILINX_shift32 XLXI_196 (.D0(A3_30), 
                                  .D1(A3_22), 
                                  .S0(Q[3]), 
                                  .O(A4_30));
   // synthesis attribute HU_SET of XLXI_196 is "XLXI_196_96"
   M2_1_MXILINX_shift32 XLXI_197 (.D0(A3_29), 
                                  .D1(A3_21), 
                                  .S0(Q[3]), 
                                  .O(A4_29));
   // synthesis attribute HU_SET of XLXI_197 is "XLXI_197_97"
   M2_1_MXILINX_shift32 XLXI_198 (.D0(A3_28), 
                                  .D1(A3_20), 
                                  .S0(Q[3]), 
                                  .O(A4_28));
   // synthesis attribute HU_SET of XLXI_198 is "XLXI_198_98"
   M2_1_MXILINX_shift32 XLXI_199 (.D0(A3_27), 
                                  .D1(A3_19), 
                                  .S0(Q[3]), 
                                  .O(A4_27));
   // synthesis attribute HU_SET of XLXI_199 is "XLXI_199_99"
   M2_1_MXILINX_shift32 XLXI_200 (.D0(A3_26), 
                                  .D1(A3_18), 
                                  .S0(Q[3]), 
                                  .O(A4_26));
   // synthesis attribute HU_SET of XLXI_200 is "XLXI_200_100"
   M2_1_MXILINX_shift32 XLXI_201 (.D0(A3_25), 
                                  .D1(A3_17), 
                                  .S0(Q[3]), 
                                  .O(A4_25));
   // synthesis attribute HU_SET of XLXI_201 is "XLXI_201_101"
   M2_1_MXILINX_shift32 XLXI_202 (.D0(A3_24), 
                                  .D1(A3_16), 
                                  .S0(Q[3]), 
                                  .O(A4_24));
   // synthesis attribute HU_SET of XLXI_202 is "XLXI_202_102"
   M2_1_MXILINX_shift32 XLXI_203 (.D0(A3_23), 
                                  .D1(A3_15), 
                                  .S0(Q[3]), 
                                  .O(A4_23));
   // synthesis attribute HU_SET of XLXI_203 is "XLXI_203_103"
   M2_1_MXILINX_shift32 XLXI_204 (.D0(A3_22), 
                                  .D1(A3_14), 
                                  .S0(Q[3]), 
                                  .O(A4_22));
   // synthesis attribute HU_SET of XLXI_204 is "XLXI_204_104"
   M2_1_MXILINX_shift32 XLXI_205 (.D0(A3_21), 
                                  .D1(A3_13), 
                                  .S0(Q[3]), 
                                  .O(A4_21));
   // synthesis attribute HU_SET of XLXI_205 is "XLXI_205_105"
   M2_1_MXILINX_shift32 XLXI_206 (.D0(A3_20), 
                                  .D1(A3_12), 
                                  .S0(Q[3]), 
                                  .O(A4_20));
   // synthesis attribute HU_SET of XLXI_206 is "XLXI_206_106"
   M2_1_MXILINX_shift32 XLXI_207 (.D0(A3_19), 
                                  .D1(A3_11), 
                                  .S0(Q[3]), 
                                  .O(A4_19));
   // synthesis attribute HU_SET of XLXI_207 is "XLXI_207_107"
   M2_1_MXILINX_shift32 XLXI_208 (.D0(A3_18), 
                                  .D1(A3_10), 
                                  .S0(Q[3]), 
                                  .O(A4_18));
   // synthesis attribute HU_SET of XLXI_208 is "XLXI_208_108"
   M2_1_MXILINX_shift32 XLXI_209 (.D0(A3_17), 
                                  .D1(A3_9), 
                                  .S0(Q[3]), 
                                  .O(A4_17));
   // synthesis attribute HU_SET of XLXI_209 is "XLXI_209_109"
   M2_1_MXILINX_shift32 XLXI_210 (.D0(A3_16), 
                                  .D1(A3_8), 
                                  .S0(Q[3]), 
                                  .O(A4_16));
   // synthesis attribute HU_SET of XLXI_210 is "XLXI_210_110"
   M2_1_MXILINX_shift32 XLXI_211 (.D0(A3_15), 
                                  .D1(A3_7), 
                                  .S0(Q[3]), 
                                  .O(A4_15));
   // synthesis attribute HU_SET of XLXI_211 is "XLXI_211_111"
   M2_1_MXILINX_shift32 XLXI_212 (.D0(A3_14), 
                                  .D1(A3_6), 
                                  .S0(Q[3]), 
                                  .O(A4_14));
   // synthesis attribute HU_SET of XLXI_212 is "XLXI_212_112"
   M2_1_MXILINX_shift32 XLXI_213 (.D0(A3_13), 
                                  .D1(A3_5), 
                                  .S0(Q[3]), 
                                  .O(A4_13));
   // synthesis attribute HU_SET of XLXI_213 is "XLXI_213_113"
   M2_1_MXILINX_shift32 XLXI_214 (.D0(A3_12), 
                                  .D1(A3_4), 
                                  .S0(Q[3]), 
                                  .O(A4_12));
   // synthesis attribute HU_SET of XLXI_214 is "XLXI_214_114"
   M2_1_MXILINX_shift32 XLXI_215 (.D0(A3_11), 
                                  .D1(A3_3), 
                                  .S0(Q[3]), 
                                  .O(A4_11));
   // synthesis attribute HU_SET of XLXI_215 is "XLXI_215_115"
   M2_1_MXILINX_shift32 XLXI_216 (.D0(A3_10), 
                                  .D1(A3_2), 
                                  .S0(Q[3]), 
                                  .O(A4_10));
   // synthesis attribute HU_SET of XLXI_216 is "XLXI_216_116"
   M2_1_MXILINX_shift32 XLXI_217 (.D0(A3_9), 
                                  .D1(A3_1), 
                                  .S0(Q[3]), 
                                  .O(A4_9));
   // synthesis attribute HU_SET of XLXI_217 is "XLXI_217_117"
   M2_1_MXILINX_shift32 XLXI_218 (.D0(A3_8), 
                                  .D1(A3_0), 
                                  .S0(Q[3]), 
                                  .O(A4_8));
   // synthesis attribute HU_SET of XLXI_218 is "XLXI_218_118"
   M2_1_MXILINX_shift32 XLXI_219 (.D0(A3_7), 
                                  .D1(A3_31), 
                                  .S0(Q[3]), 
                                  .O(A4_7));
   // synthesis attribute HU_SET of XLXI_219 is "XLXI_219_119"
   M2_1_MXILINX_shift32 XLXI_220 (.D0(A3_6), 
                                  .D1(A3_30), 
                                  .S0(Q[3]), 
                                  .O(A4_6));
   // synthesis attribute HU_SET of XLXI_220 is "XLXI_220_120"
   M2_1_MXILINX_shift32 XLXI_221 (.D0(A3_5), 
                                  .D1(A3_29), 
                                  .S0(Q[3]), 
                                  .O(A4_5));
   // synthesis attribute HU_SET of XLXI_221 is "XLXI_221_121"
   M2_1_MXILINX_shift32 XLXI_222 (.D0(A3_4), 
                                  .D1(A3_28), 
                                  .S0(Q[3]), 
                                  .O(A4_4));
   // synthesis attribute HU_SET of XLXI_222 is "XLXI_222_122"
   M2_1_MXILINX_shift32 XLXI_223 (.D0(A3_3), 
                                  .D1(A3_27), 
                                  .S0(Q[3]), 
                                  .O(A4_3));
   // synthesis attribute HU_SET of XLXI_223 is "XLXI_223_123"
   M2_1_MXILINX_shift32 XLXI_224 (.D0(A3_2), 
                                  .D1(A3_26), 
                                  .S0(Q[3]), 
                                  .O(A4_2));
   // synthesis attribute HU_SET of XLXI_224 is "XLXI_224_124"
   M2_1_MXILINX_shift32 XLXI_225 (.D0(A3_1), 
                                  .D1(A3_25), 
                                  .S0(Q[3]), 
                                  .O(A4_1));
   // synthesis attribute HU_SET of XLXI_225 is "XLXI_225_125"
   M2_1_MXILINX_shift32 XLXI_226 (.D0(A3_0), 
                                  .D1(A3_24), 
                                  .S0(Q[3]), 
                                  .O(A4_0));
   // synthesis attribute HU_SET of XLXI_226 is "XLXI_226_126"
   M2_1_MXILINX_shift32 XLXI_227 (.D0(A3_31), 
                                  .D1(A3_23), 
                                  .S0(Q[3]), 
                                  .O(A4_31));
   // synthesis attribute HU_SET of XLXI_227 is "XLXI_227_127"
   M2_1_MXILINX_shift32 XLXI_228 (.D0(A4_30), 
                                  .D1(A4_14), 
                                  .S0(Q[4]), 
                                  .O(S[30]));
   // synthesis attribute HU_SET of XLXI_228 is "XLXI_228_128"
   M2_1_MXILINX_shift32 XLXI_229 (.D0(A4_29), 
                                  .D1(A4_13), 
                                  .S0(Q[4]), 
                                  .O(S[29]));
   // synthesis attribute HU_SET of XLXI_229 is "XLXI_229_129"
   M2_1_MXILINX_shift32 XLXI_230 (.D0(A4_28), 
                                  .D1(A4_12), 
                                  .S0(Q[4]), 
                                  .O(S[28]));
   // synthesis attribute HU_SET of XLXI_230 is "XLXI_230_130"
   M2_1_MXILINX_shift32 XLXI_231 (.D0(A4_27), 
                                  .D1(A4_11), 
                                  .S0(Q[4]), 
                                  .O(S[27]));
   // synthesis attribute HU_SET of XLXI_231 is "XLXI_231_131"
   M2_1_MXILINX_shift32 XLXI_232 (.D0(A4_26), 
                                  .D1(A4_10), 
                                  .S0(Q[4]), 
                                  .O(S[26]));
   // synthesis attribute HU_SET of XLXI_232 is "XLXI_232_132"
   M2_1_MXILINX_shift32 XLXI_233 (.D0(A4_25), 
                                  .D1(A4_9), 
                                  .S0(Q[4]), 
                                  .O(S[25]));
   // synthesis attribute HU_SET of XLXI_233 is "XLXI_233_133"
   M2_1_MXILINX_shift32 XLXI_234 (.D0(A4_24), 
                                  .D1(A4_8), 
                                  .S0(Q[4]), 
                                  .O(S[24]));
   // synthesis attribute HU_SET of XLXI_234 is "XLXI_234_134"
   M2_1_MXILINX_shift32 XLXI_235 (.D0(A4_23), 
                                  .D1(A4_7), 
                                  .S0(Q[4]), 
                                  .O(S[23]));
   // synthesis attribute HU_SET of XLXI_235 is "XLXI_235_135"
   M2_1_MXILINX_shift32 XLXI_236 (.D0(A4_22), 
                                  .D1(A4_6), 
                                  .S0(Q[4]), 
                                  .O(S[22]));
   // synthesis attribute HU_SET of XLXI_236 is "XLXI_236_136"
   M2_1_MXILINX_shift32 XLXI_237 (.D0(A4_21), 
                                  .D1(A4_5), 
                                  .S0(Q[4]), 
                                  .O(S[21]));
   // synthesis attribute HU_SET of XLXI_237 is "XLXI_237_137"
   M2_1_MXILINX_shift32 XLXI_238 (.D0(A4_20), 
                                  .D1(A4_4), 
                                  .S0(Q[4]), 
                                  .O(S[20]));
   // synthesis attribute HU_SET of XLXI_238 is "XLXI_238_138"
   M2_1_MXILINX_shift32 XLXI_239 (.D0(A4_19), 
                                  .D1(A4_3), 
                                  .S0(Q[4]), 
                                  .O(S[19]));
   // synthesis attribute HU_SET of XLXI_239 is "XLXI_239_139"
   M2_1_MXILINX_shift32 XLXI_240 (.D0(A4_18), 
                                  .D1(A4_2), 
                                  .S0(Q[4]), 
                                  .O(S[18]));
   // synthesis attribute HU_SET of XLXI_240 is "XLXI_240_140"
   M2_1_MXILINX_shift32 XLXI_241 (.D0(A4_17), 
                                  .D1(A4_1), 
                                  .S0(Q[4]), 
                                  .O(S[17]));
   // synthesis attribute HU_SET of XLXI_241 is "XLXI_241_141"
   M2_1_MXILINX_shift32 XLXI_242 (.D0(A4_16), 
                                  .D1(A4_0), 
                                  .S0(Q[4]), 
                                  .O(S[16]));
   // synthesis attribute HU_SET of XLXI_242 is "XLXI_242_142"
   M2_1_MXILINX_shift32 XLXI_243 (.D0(A4_15), 
                                  .D1(A4_31), 
                                  .S0(Q[4]), 
                                  .O(S[15]));
   // synthesis attribute HU_SET of XLXI_243 is "XLXI_243_143"
   M2_1_MXILINX_shift32 XLXI_244 (.D0(A4_14), 
                                  .D1(A4_30), 
                                  .S0(Q[4]), 
                                  .O(S[14]));
   // synthesis attribute HU_SET of XLXI_244 is "XLXI_244_144"
   M2_1_MXILINX_shift32 XLXI_245 (.D0(A4_13), 
                                  .D1(A4_29), 
                                  .S0(Q[4]), 
                                  .O(S[13]));
   // synthesis attribute HU_SET of XLXI_245 is "XLXI_245_145"
   M2_1_MXILINX_shift32 XLXI_246 (.D0(A4_12), 
                                  .D1(A4_28), 
                                  .S0(Q[4]), 
                                  .O(S[12]));
   // synthesis attribute HU_SET of XLXI_246 is "XLXI_246_146"
   M2_1_MXILINX_shift32 XLXI_247 (.D0(A4_11), 
                                  .D1(A4_27), 
                                  .S0(Q[4]), 
                                  .O(S[11]));
   // synthesis attribute HU_SET of XLXI_247 is "XLXI_247_147"
   M2_1_MXILINX_shift32 XLXI_248 (.D0(A4_10), 
                                  .D1(A4_26), 
                                  .S0(Q[4]), 
                                  .O(S[10]));
   // synthesis attribute HU_SET of XLXI_248 is "XLXI_248_148"
   M2_1_MXILINX_shift32 XLXI_249 (.D0(A4_9), 
                                  .D1(A4_25), 
                                  .S0(Q[4]), 
                                  .O(S[9]));
   // synthesis attribute HU_SET of XLXI_249 is "XLXI_249_149"
   M2_1_MXILINX_shift32 XLXI_250 (.D0(A4_8), 
                                  .D1(A4_24), 
                                  .S0(Q[4]), 
                                  .O(S[8]));
   // synthesis attribute HU_SET of XLXI_250 is "XLXI_250_150"
   M2_1_MXILINX_shift32 XLXI_251 (.D0(A4_7), 
                                  .D1(A4_23), 
                                  .S0(Q[4]), 
                                  .O(S[7]));
   // synthesis attribute HU_SET of XLXI_251 is "XLXI_251_151"
   M2_1_MXILINX_shift32 XLXI_252 (.D0(A4_6), 
                                  .D1(A4_22), 
                                  .S0(Q[4]), 
                                  .O(S[6]));
   // synthesis attribute HU_SET of XLXI_252 is "XLXI_252_152"
   M2_1_MXILINX_shift32 XLXI_253 (.D0(A4_5), 
                                  .D1(A4_21), 
                                  .S0(Q[4]), 
                                  .O(S[5]));
   // synthesis attribute HU_SET of XLXI_253 is "XLXI_253_153"
   M2_1_MXILINX_shift32 XLXI_254 (.D0(A4_4), 
                                  .D1(A4_20), 
                                  .S0(Q[4]), 
                                  .O(S[4]));
   // synthesis attribute HU_SET of XLXI_254 is "XLXI_254_154"
   M2_1_MXILINX_shift32 XLXI_255 (.D0(A4_3), 
                                  .D1(A4_19), 
                                  .S0(Q[4]), 
                                  .O(S[3]));
   // synthesis attribute HU_SET of XLXI_255 is "XLXI_255_155"
   M2_1_MXILINX_shift32 XLXI_256 (.D0(A4_2), 
                                  .D1(A4_18), 
                                  .S0(Q[4]), 
                                  .O(S[2]));
   // synthesis attribute HU_SET of XLXI_256 is "XLXI_256_156"
   M2_1_MXILINX_shift32 XLXI_257 (.D0(A4_1), 
                                  .D1(A4_17), 
                                  .S0(Q[4]), 
                                  .O(S[1]));
   // synthesis attribute HU_SET of XLXI_257 is "XLXI_257_157"
   M2_1_MXILINX_shift32 XLXI_258 (.D0(A4_0), 
                                  .D1(A4_16), 
                                  .S0(Q[4]), 
                                  .O(S[0]));
   // synthesis attribute HU_SET of XLXI_258 is "XLXI_258_158"
   M2_1_MXILINX_shift32 XLXI_259 (.D0(A4_31), 
                                  .D1(A4_15), 
                                  .S0(Q[4]), 
                                  .O(S[31]));
   // synthesis attribute HU_SET of XLXI_259 is "XLXI_259_159"
endmodule
