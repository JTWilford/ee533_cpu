////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : xor32_by_1.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:04
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/alu/xor32_by_1.sch xor32_by_1.vf
//Design Name: xor32_by_1
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module xor32_by_1(A, 
                  B, 
                  S);

    input [31:0] A;
    input B;
   output [31:0] S;
   
   
   xor8_by_1 XLXI_2 (.A(A[7:0]), 
                     .B(B), 
                     .S(S[7:0]));
   xor8_by_1 XLXI_3 (.A(A[15:8]), 
                     .B(B), 
                     .S(S[15:8]));
   xor8_by_1 XLXI_4 (.A(A[23:16]), 
                     .B(B), 
                     .S(S[23:16]));
   xor8_by_1 XLXI_5 (.A(A[31:24]), 
                     .B(B), 
                     .S(S[31:24]));
endmodule
