////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : IFID_reg.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:17
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/cpu/IFID_reg.sch IFID_reg.vf
//Design Name: IFID_reg
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module FD8CE_MXILINX_IFID_reg(C, 
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

module IFID_reg(clk, 
                clr, 
                en, 
                inc_in, 
                pc_addr_in, 
                inc_out, 
                pc_addr_out);

    input clk;
    input clr;
    input en;
    input [31:0] inc_in;
    input [8:0] pc_addr_in;
   output [31:0] inc_out;
   output [8:0] pc_addr_out;
   
   
   DFF32bit XLXI_1 (.clk(clk), 
                    .clr(clr), 
                    .en(en), 
                    .i(inc_in[31:0]), 
                    .o(inc_out[31:0]));
   FD8CE_MXILINX_IFID_reg XLXI_2 (.C(clk), 
                                  .CE(en), 
                                  .CLR(clr), 
                                  .D(pc_addr_in[7:0]), 
                                  .Q(pc_addr_out[7:0]));
   // synthesis attribute HU_SET of XLXI_2 is "XLXI_2_0"
   FDCE XLXI_4 (.C(clk), 
                .CE(en), 
                .CLR(clr), 
                .D(pc_addr_in[8]), 
                .Q(pc_addr_out[8]));
   defparam XLXI_4.INIT = 1'b0;
endmodule
