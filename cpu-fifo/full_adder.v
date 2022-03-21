////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : full_adder.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:00
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/alu/full_adder.sch full_adder.vf
//Design Name: full_adder
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module full_adder(A, 
                  B, 
                  CI, 
                  CO, 
                  S);

    input A;
    input B;
    input CI;
   output CO;
   output S;
   
   wire XLXN_13;
   wire XLXN_14;
   wire XLXN_15;
   wire XLXN_16;
   
   XOR2 XLXI_1 (.I0(B), 
                .I1(A), 
                .O(XLXN_16));
   XOR2 XLXI_2 (.I0(CI), 
                .I1(XLXN_16), 
                .O(S));
   AND2 XLXI_3 (.I0(B), 
                .I1(A), 
                .O(XLXN_15));
   AND2 XLXI_4 (.I0(CI), 
                .I1(A), 
                .O(XLXN_14));
   AND2 XLXI_5 (.I0(CI), 
                .I1(B), 
                .O(XLXN_13));
   OR3 XLXI_6 (.I0(XLXN_13), 
               .I1(XLXN_14), 
               .I2(XLXN_15), 
               .O(CO));
endmodule
