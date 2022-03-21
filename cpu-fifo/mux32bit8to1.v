////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : mux32bit8to1.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:29
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/cpu/mux32bit8to1.sch mux32bit8to1.vf
//Design Name: mux32bit8to1
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module mux32bit8to1(A, 
                    B, 
                    C, 
                    D, 
                    E, 
                    en, 
                    F, 
                    G, 
                    H, 
                    S, 
                    O);

    input [31:0] A;
    input [31:0] B;
    input [31:0] C;
    input [31:0] D;
    input [31:0] E;
    input en;
    input [31:0] F;
    input [31:0] G;
    input [31:0] H;
    input [2:0] S;
   output [31:0] O;
   
   
   mux16bit8to1 XLXI_1 (.A(A[15:0]), 
                        .B(B[15:0]), 
                        .C(C[15:0]), 
                        .D(D[15:0]), 
                        .E(E[15:0]), 
                        .en(en), 
                        .F(F[15:0]), 
                        .G(G[15:0]), 
                        .H(H[15:0]), 
                        .S(S[2:0]), 
                        .O(O[15:0]));
   mux16bit8to1 XLXI_2 (.A(A[31:16]), 
                        .B(B[31:16]), 
                        .C(C[31:16]), 
                        .D(D[31:16]), 
                        .E(E[31:16]), 
                        .en(en), 
                        .F(F[31:16]), 
                        .G(G[31:16]), 
                        .H(H[31:16]), 
                        .S(S[2:0]), 
                        .O(O[31:16]));
endmodule
