////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : mux_x32.vf
// /___/   /\     Timestamp : 03/07/2022 06:51:59
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/alu/mux_x32.sch mux_x32.vf
//Design Name: mux_x32
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module mux_x32(A, 
               B, 
               Q, 
               S);

    input [31:0] A;
    input [31:0] B;
    input Q;
   output [31:0] S;
   
   
   mux_x8 XLXI_1 (.A(A[31:24]), 
                  .B(B[31:24]), 
                  .Q(Q), 
                  .S(S[31:24]));
   mux_x8 XLXI_2 (.A(A[23:16]), 
                  .B(B[23:16]), 
                  .Q(Q), 
                  .S(S[23:16]));
   mux_x8 XLXI_3 (.A(A[15:8]), 
                  .B(B[15:8]), 
                  .Q(Q), 
                  .S(S[15:8]));
   mux_x8 XLXI_4 (.A(A[7:0]), 
                  .B(B[7:0]), 
                  .Q(Q), 
                  .S(S[7:0]));
endmodule
