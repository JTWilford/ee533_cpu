////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : COMP10.vf
// /___/   /\     Timestamp : 03/12/2022 16:55:21
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/convertable_fifo/COMP10.sch COMP10.vf
//Design Name: COMP10
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module COMP2_MXILINX_COMP10(A0, 
                            A1, 
                            B0, 
                            B1, 
                            EQ);

    input A0;
    input A1;
    input B0;
    input B1;
   output EQ;
   
   wire AB0;
   wire AB1;
   
   XNOR2 I_36_30 (.I0(B1), 
                  .I1(A1), 
                  .O(AB1));
   XNOR2 I_36_31 (.I0(B0), 
                  .I1(A0), 
                  .O(AB0));
   AND2 I_36_35 (.I0(AB1), 
                 .I1(AB0), 
                 .O(EQ));
endmodule
`timescale 1ns / 1ps

module COMP8_MXILINX_COMP10(A, 
                            B, 
                            EQ);

    input [7:0] A;
    input [7:0] B;
   output EQ;
   
   wire AB0;
   wire AB1;
   wire AB2;
   wire AB3;
   wire AB4;
   wire AB5;
   wire AB6;
   wire AB7;
   wire AB03;
   wire AB47;
   
   AND4 I_36_32 (.I0(AB7), 
                 .I1(AB6), 
                 .I2(AB5), 
                 .I3(AB4), 
                 .O(AB47));
   XNOR2 I_36_33 (.I0(B[6]), 
                  .I1(A[6]), 
                  .O(AB6));
   XNOR2 I_36_34 (.I0(B[7]), 
                  .I1(A[7]), 
                  .O(AB7));
   XNOR2 I_36_35 (.I0(B[5]), 
                  .I1(A[5]), 
                  .O(AB5));
   XNOR2 I_36_36 (.I0(B[4]), 
                  .I1(A[4]), 
                  .O(AB4));
   AND4 I_36_41 (.I0(AB3), 
                 .I1(AB2), 
                 .I2(AB1), 
                 .I3(AB0), 
                 .O(AB03));
   XNOR2 I_36_42 (.I0(B[2]), 
                  .I1(A[2]), 
                  .O(AB2));
   XNOR2 I_36_43 (.I0(B[3]), 
                  .I1(A[3]), 
                  .O(AB3));
   XNOR2 I_36_44 (.I0(B[1]), 
                  .I1(A[1]), 
                  .O(AB1));
   XNOR2 I_36_45 (.I0(B[0]), 
                  .I1(A[0]), 
                  .O(AB0));
   AND2 I_36_50 (.I0(AB47), 
                 .I1(AB03), 
                 .O(EQ));
endmodule
`timescale 1ns / 1ps

module COMP10(A, 
              B, 
              EQ);

    input [9:0] A;
    input [9:0] B;
   output EQ;
   
   wire XLXN_1;
   wire XLXN_2;
   
   COMP8_MXILINX_COMP10 XLXI_1 (.A(A[9:2]), 
                                .B(B[9:2]), 
                                .EQ(XLXN_2));
   // synthesis attribute HU_SET of XLXI_1 is "XLXI_1_0"
   COMP2_MXILINX_COMP10 XLXI_2 (.A0(A[0]), 
                                .A1(A[1]), 
                                .B0(B[0]), 
                                .B1(B[1]), 
                                .EQ(XLXN_1));
   // synthesis attribute HU_SET of XLXI_2 is "XLXI_2_1"
   AND2 XLXI_3 (.I0(XLXN_2), 
                .I1(XLXN_1), 
                .O(EQ));
endmodule
