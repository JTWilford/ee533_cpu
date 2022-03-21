////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : xor64_by_1.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:05
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/alu/xor64_by_1.sch xor64_by_1.vf
//Design Name: xor64_by_1
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module xor64_by_1(A, 
                  B, 
                  S);

    input [63:0] A;
    input B;
   output [63:0] S;
   
   
   xor32_by_1 XLXI_1 (.A(A[63:32]), 
                      .B(B), 
                      .S(S[63:32]));
   xor32_by_1 XLXI_2 (.A(A[31:0]), 
                      .B(B), 
                      .S(S[31:0]));
endmodule
