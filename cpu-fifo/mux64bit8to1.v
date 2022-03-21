////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : mux64bit8to1.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:33
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/cpu/mux64bit8to1.sch mux64bit8to1.vf
//Design Name: mux64bit8to1
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module mux64bit8to1(A, 
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

    input [63:0] A;
    input [63:0] B;
    input [63:0] C;
    input [63:0] D;
    input [63:0] E;
    input en;
    input [63:0] F;
    input [63:0] G;
    input [63:0] H;
    input [2:0] S;
   output [63:0] O;
   
   
   mux32bit8to1 XLXI_1 (.A(A[31:0]), 
                        .B(B[31:0]), 
                        .C(C[31:0]), 
                        .D(D[31:0]), 
                        .E(E[31:0]), 
                        .en(en), 
                        .F(F[31:0]), 
                        .G(G[31:0]), 
                        .H(H[31:0]), 
                        .S(S[2:0]), 
                        .O(O[31:0]));
   mux32bit8to1 XLXI_3 (.A(A[63:32]), 
                        .B(B[63:32]), 
                        .C(C[63:32]), 
                        .D(D[63:32]), 
                        .E(E[63:32]), 
                        .en(en), 
                        .F(F[63:32]), 
                        .G(G[63:32]), 
                        .H(H[63:32]), 
                        .S(S[2:0]), 
                        .O(O[63:32]));
endmodule
