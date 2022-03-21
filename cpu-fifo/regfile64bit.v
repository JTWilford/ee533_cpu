////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : regfile64bit.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:36
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/cpu/regfile64bit.sch regfile64bit.vf
//Design Name: regfile64bit
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module regfile64bit(clk, 
                    rd_en, 
                    r0addr, 
                    r1addr, 
                    wraddr, 
                    wr_din, 
                    wr_en, 
                    r0_data, 
                    r1_data);

    input clk;
    input rd_en;
    input [2:0] r0addr;
    input [2:0] r1addr;
    input [2:0] wraddr;
    input [63:0] wr_din;
    input wr_en;
   output [63:0] r0_data;
   output [63:0] r1_data;
   
   wire [2:0] baddr;
   wire write;
   wire [0:0] XLXN_8;
   
   regmem64 XLXI_46 (.addra(r0addr[2:0]), 
                     .addrb(baddr[2:0]), 
                     .clka(clk), 
                     .clkb(clk), 
                     .dina(), 
                     .dinb(wr_din[63:0]), 
                     .wea(XLXN_8[0]), 
                     .web(write), 
                     .douta(r0_data[63:0]), 
                     .doutb(r1_data[63:0]));
   mux2_1_x3 XLXI_48 (.I0(r1addr[2:0]), 
                      .I1(wraddr[2:0]), 
                      .S(write), 
                      .O(baddr[2:0]));
   AND2B1 XLXI_50 (.I0(rd_en), 
                   .I1(wr_en), 
                   .O(write));
   GND XLXI_52 (.G(XLXN_8[0]));
endmodule
