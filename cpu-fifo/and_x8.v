////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : and_x8.vf
// /___/   /\     Timestamp : 03/07/2022 06:51:53
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/alu/and_x8.sch and_x8.vf
//Design Name: and_x8
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module and_x8(A, 
              B, 
              S);

    input [7:0] A;
    input [7:0] B;
   output [7:0] S;
   
   
   AND2 XLXI_1 (.I0(B[7]), 
                .I1(A[7]), 
                .O(S[7]));
   AND2 XLXI_2 (.I0(B[6]), 
                .I1(A[6]), 
                .O(S[6]));
   AND2 XLXI_3 (.I0(B[5]), 
                .I1(A[5]), 
                .O(S[5]));
   AND2 XLXI_4 (.I0(B[4]), 
                .I1(A[4]), 
                .O(S[4]));
   AND2 XLXI_5 (.I0(B[3]), 
                .I1(A[3]), 
                .O(S[3]));
   AND2 XLXI_6 (.I0(B[2]), 
                .I1(A[2]), 
                .O(S[2]));
   AND2 XLXI_7 (.I0(B[1]), 
                .I1(A[1]), 
                .O(S[1]));
   AND2 XLXI_8 (.I0(B[0]), 
                .I1(A[0]), 
                .O(S[0]));
endmodule
