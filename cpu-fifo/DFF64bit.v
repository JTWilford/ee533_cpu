////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : DFF64bit.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:16
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/cpu/DFF64bit.sch DFF64bit.vf
//Design Name: DFF64bit
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module DFF64bit(clk, 
                clr, 
                en, 
                i, 
                o);

    input clk;
    input clr;
    input en;
    input [63:0] i;
   output [63:0] o;
   
   
   DFF32bit XLXI_1 (.clk(clk), 
                    .clr(clr), 
                    .en(en), 
                    .i(i[31:0]), 
                    .o(o[31:0]));
   DFF32bit XLXI_2 (.clk(clk), 
                    .clr(clr), 
                    .en(en), 
                    .i(i[63:32]), 
                    .o(o[63:32]));
endmodule
