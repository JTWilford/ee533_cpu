////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : DFF134bit.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:10
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/cpu/DFF134bit.sch DFF134bit.vf
//Design Name: DFF134bit
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module DFF134bit(ALUdata, 
                 clk, 
                 clr, 
                 en, 
                 EX_MemtoReg, 
                 EX_mem_write, 
                 EX_Reg_write, 
                 reg_data, 
                 Wregin, 
                 ALUdataout, 
                 MEM_mem_write, 
                 MEM_MetoReg, 
                 MEM_Reg_write, 
                 reg_dataout, 
                 Wregout);

    input [63:0] ALUdata;
    input clk;
    input clr;
    input en;
    input EX_MemtoReg;
    input EX_mem_write;
    input EX_Reg_write;
    input [63:0] reg_data;
    input [2:0] Wregin;
   output [63:0] ALUdataout;
   output MEM_mem_write;
   output MEM_MetoReg;
   output MEM_Reg_write;
   output [63:0] reg_dataout;
   output [2:0] Wregout;
   
   
   FDCE XLXI_1 (.C(clk), 
                .CE(en), 
                .CLR(clr), 
                .D(EX_MemtoReg), 
                .Q(MEM_MetoReg));
   defparam XLXI_1.INIT = 1'b0;
   FDCE XLXI_10 (.C(clk), 
                 .CE(en), 
                 .CLR(clr), 
                 .D(EX_Reg_write), 
                 .Q(MEM_Reg_write));
   defparam XLXI_10.INIT = 1'b0;
   FDCE XLXI_11 (.C(clk), 
                 .CE(en), 
                 .CLR(clr), 
                 .D(Wregin[2]), 
                 .Q(Wregout[2]));
   defparam XLXI_11.INIT = 1'b0;
   FDCE XLXI_12 (.C(clk), 
                 .CE(en), 
                 .CLR(clr), 
                 .D(Wregin[1]), 
                 .Q(Wregout[1]));
   defparam XLXI_12.INIT = 1'b0;
   FDCE XLXI_13 (.C(clk), 
                 .CE(en), 
                 .CLR(clr), 
                 .D(Wregin[0]), 
                 .Q(Wregout[0]));
   defparam XLXI_13.INIT = 1'b0;
   DFF64bit XLXI_14 (.clk(clk), 
                     .clr(clr), 
                     .en(en), 
                     .i(reg_data[63:0]), 
                     .o(reg_dataout[63:0]));
   DFF64bit XLXI_15 (.clk(clk), 
                     .clr(clr), 
                     .en(en), 
                     .i(ALUdata[63:0]), 
                     .o(ALUdataout[63:0]));
   FDCE XLXI_23 (.C(clk), 
                 .CE(en), 
                 .CLR(clr), 
                 .D(EX_mem_write), 
                 .Q(MEM_mem_write));
   defparam XLXI_23.INIT = 1'b0;
endmodule
