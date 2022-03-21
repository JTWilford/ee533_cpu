////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : DFF32bit.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:14
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/cpu/DFF32bit.sch DFF32bit.vf
//Design Name: DFF32bit
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module FD8CE_MXILINX_DFF32bit(C, 
                              CE, 
                              CLR, 
                              D, 
                              Q);

    input C;
    input CE;
    input CLR;
    input [7:0] D;
   output [7:0] Q;
   
   
   FDCE I_Q0 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[0]), 
              .Q(Q[0]));
   defparam I_Q0.INIT = 1'b0;
   FDCE I_Q1 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[1]), 
              .Q(Q[1]));
   defparam I_Q1.INIT = 1'b0;
   FDCE I_Q2 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[2]), 
              .Q(Q[2]));
   defparam I_Q2.INIT = 1'b0;
   FDCE I_Q3 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[3]), 
              .Q(Q[3]));
   defparam I_Q3.INIT = 1'b0;
   FDCE I_Q4 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[4]), 
              .Q(Q[4]));
   defparam I_Q4.INIT = 1'b0;
   FDCE I_Q5 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[5]), 
              .Q(Q[5]));
   defparam I_Q5.INIT = 1'b0;
   FDCE I_Q6 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[6]), 
              .Q(Q[6]));
   defparam I_Q6.INIT = 1'b0;
   FDCE I_Q7 (.C(C), 
              .CE(CE), 
              .CLR(CLR), 
              .D(D[7]), 
              .Q(Q[7]));
   defparam I_Q7.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module DFF32bit(clk, 
                clr, 
                en, 
                i, 
                o);

    input clk;
    input clr;
    input en;
    input [31:0] i;
   output [31:0] o;
   
   
   FD8CE_MXILINX_DFF32bit XLXI_1 (.C(clk), 
                                  .CE(en), 
                                  .CLR(clr), 
                                  .D(i[7:0]), 
                                  .Q(o[7:0]));
   // synthesis attribute HU_SET of XLXI_1 is "XLXI_1_0"
   FD8CE_MXILINX_DFF32bit XLXI_2 (.C(clk), 
                                  .CE(en), 
                                  .CLR(clr), 
                                  .D(i[15:8]), 
                                  .Q(o[15:8]));
   // synthesis attribute HU_SET of XLXI_2 is "XLXI_2_1"
   FD8CE_MXILINX_DFF32bit XLXI_3 (.C(clk), 
                                  .CE(en), 
                                  .CLR(clr), 
                                  .D(i[23:16]), 
                                  .Q(o[23:16]));
   // synthesis attribute HU_SET of XLXI_3 is "XLXI_3_2"
   FD8CE_MXILINX_DFF32bit XLXI_4 (.C(clk), 
                                  .CE(en), 
                                  .CLR(clr), 
                                  .D(i[31:24]), 
                                  .Q(o[31:24]));
   // synthesis attribute HU_SET of XLXI_4 is "XLXI_4_3"
endmodule
