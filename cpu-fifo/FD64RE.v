////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : FD64RE.vf
// /___/   /\     Timestamp : 03/07/2022 06:51:55
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/alu/FD64RE.sch FD64RE.vf
//Design Name: FD64RE
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module FD64RE(C, 
              CE, 
              D, 
              R, 
              Q);

    input C;
    input CE;
    input [63:0] D;
    input R;
   output [63:0] Q;
   
   
   FD32RE XLXI_1 (.C(C), 
                  .CE(CE), 
                  .D(D[63:32]), 
                  .R(R), 
                  .Q(Q[63:32]));
   FD32RE XLXI_2 (.C(C), 
                  .CE(CE), 
                  .D(D[31:0]), 
                  .R(R), 
                  .Q(Q[31:0]));
endmodule
