////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : xor8_by_1.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:07
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/alu/xor8_by_1.sch xor8_by_1.vf
//Design Name: xor8_by_1
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module xor8_by_1(A, 
                 B, 
                 S);

    input [7:0] A;
    input B;
   output [7:0] S;
   
   
   XOR2 XLXI_1 (.I0(B), 
                .I1(A[0]), 
                .O(S[0]));
   XOR2 XLXI_2 (.I0(B), 
                .I1(A[1]), 
                .O(S[1]));
   XOR2 XLXI_3 (.I0(B), 
                .I1(A[2]), 
                .O(S[2]));
   XOR2 XLXI_4 (.I0(B), 
                .I1(A[3]), 
                .O(S[3]));
   XOR2 XLXI_5 (.I0(B), 
                .I1(A[4]), 
                .O(S[4]));
   XOR2 XLXI_6 (.I0(B), 
                .I1(A[5]), 
                .O(S[5]));
   XOR2 XLXI_7 (.I0(B), 
                .I1(A[6]), 
                .O(S[6]));
   XOR2 XLXI_8 (.I0(B), 
                .I1(A[7]), 
                .O(S[7]));
endmodule
