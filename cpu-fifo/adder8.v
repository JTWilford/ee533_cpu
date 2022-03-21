////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : adder8.vf
// /___/   /\     Timestamp : 03/12/2022 23:59:57
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/alu/adder8.sch adder8.vf
//Design Name: adder8
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module adder8(A, 
              B, 
              Cin, 
              Cout, 
              S);

    input [7:0] A;
    input [7:0] B;
    input Cin;
   output Cout;
   output [7:0] S;
   
   wire XLXN_1;
   wire XLXN_2;
   wire XLXN_3;
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_6;
   wire XLXN_7;
   
   full_adder XLXI_1 (.A(A[0]), 
                      .B(B[0]), 
                      .CI(Cin), 
                      .CO(XLXN_1), 
                      .S(S[0]));
   full_adder XLXI_2 (.A(A[1]), 
                      .B(B[1]), 
                      .CI(XLXN_1), 
                      .CO(XLXN_2), 
                      .S(S[1]));
   full_adder XLXI_3 (.A(A[2]), 
                      .B(B[2]), 
                      .CI(XLXN_2), 
                      .CO(XLXN_3), 
                      .S(S[2]));
   full_adder XLXI_4 (.A(A[3]), 
                      .B(B[3]), 
                      .CI(XLXN_3), 
                      .CO(XLXN_4), 
                      .S(S[3]));
   full_adder XLXI_5 (.A(A[4]), 
                      .B(B[4]), 
                      .CI(XLXN_4), 
                      .CO(XLXN_5), 
                      .S(S[4]));
   full_adder XLXI_6 (.A(A[5]), 
                      .B(B[5]), 
                      .CI(XLXN_5), 
                      .CO(XLXN_6), 
                      .S(S[5]));
   full_adder XLXI_7 (.A(A[6]), 
                      .B(B[6]), 
                      .CI(XLXN_6), 
                      .CO(XLXN_7), 
                      .S(S[6]));
   full_adder XLXI_22 (.A(A[7]), 
                       .B(B[7]), 
                       .CI(XLXN_7), 
                       .CO(Cout), 
                       .S(S[7]));
endmodule
