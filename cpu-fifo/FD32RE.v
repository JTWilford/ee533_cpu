////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : FD32RE.vf
// /___/   /\     Timestamp : 03/07/2022 06:51:54
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/alu/FD32RE.sch FD32RE.vf
//Design Name: FD32RE
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module FD16RE_MXILINX_FD32RE(C, 
                             CE, 
                             D, 
                             R, 
                             Q);

    input C;
    input CE;
    input [15:0] D;
    input R;
   output [15:0] Q;
   
   
   FDRE I_Q0 (.C(C), 
              .CE(CE), 
              .D(D[0]), 
              .R(R), 
              .Q(Q[0]));
   defparam I_Q0.INIT = 1'b0;
   FDRE I_Q1 (.C(C), 
              .CE(CE), 
              .D(D[1]), 
              .R(R), 
              .Q(Q[1]));
   defparam I_Q1.INIT = 1'b0;
   FDRE I_Q2 (.C(C), 
              .CE(CE), 
              .D(D[2]), 
              .R(R), 
              .Q(Q[2]));
   defparam I_Q2.INIT = 1'b0;
   FDRE I_Q3 (.C(C), 
              .CE(CE), 
              .D(D[3]), 
              .R(R), 
              .Q(Q[3]));
   defparam I_Q3.INIT = 1'b0;
   FDRE I_Q4 (.C(C), 
              .CE(CE), 
              .D(D[4]), 
              .R(R), 
              .Q(Q[4]));
   defparam I_Q4.INIT = 1'b0;
   FDRE I_Q5 (.C(C), 
              .CE(CE), 
              .D(D[5]), 
              .R(R), 
              .Q(Q[5]));
   defparam I_Q5.INIT = 1'b0;
   FDRE I_Q6 (.C(C), 
              .CE(CE), 
              .D(D[6]), 
              .R(R), 
              .Q(Q[6]));
   defparam I_Q6.INIT = 1'b0;
   FDRE I_Q7 (.C(C), 
              .CE(CE), 
              .D(D[7]), 
              .R(R), 
              .Q(Q[7]));
   defparam I_Q7.INIT = 1'b0;
   FDRE I_Q8 (.C(C), 
              .CE(CE), 
              .D(D[8]), 
              .R(R), 
              .Q(Q[8]));
   defparam I_Q8.INIT = 1'b0;
   FDRE I_Q9 (.C(C), 
              .CE(CE), 
              .D(D[9]), 
              .R(R), 
              .Q(Q[9]));
   defparam I_Q9.INIT = 1'b0;
   FDRE I_Q10 (.C(C), 
               .CE(CE), 
               .D(D[10]), 
               .R(R), 
               .Q(Q[10]));
   defparam I_Q10.INIT = 1'b0;
   FDRE I_Q11 (.C(C), 
               .CE(CE), 
               .D(D[11]), 
               .R(R), 
               .Q(Q[11]));
   defparam I_Q11.INIT = 1'b0;
   FDRE I_Q12 (.C(C), 
               .CE(CE), 
               .D(D[12]), 
               .R(R), 
               .Q(Q[12]));
   defparam I_Q12.INIT = 1'b0;
   FDRE I_Q13 (.C(C), 
               .CE(CE), 
               .D(D[13]), 
               .R(R), 
               .Q(Q[13]));
   defparam I_Q13.INIT = 1'b0;
   FDRE I_Q14 (.C(C), 
               .CE(CE), 
               .D(D[14]), 
               .R(R), 
               .Q(Q[14]));
   defparam I_Q14.INIT = 1'b0;
   FDRE I_Q15 (.C(C), 
               .CE(CE), 
               .D(D[15]), 
               .R(R), 
               .Q(Q[15]));
   defparam I_Q15.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module FD32RE(C, 
              CE, 
              D, 
              R, 
              Q);

    input C;
    input CE;
    input [31:0] D;
    input R;
   output [31:0] Q;
   
   
   FD16RE_MXILINX_FD32RE XLXI_1 (.C(C), 
                                 .CE(CE), 
                                 .D(D[31:16]), 
                                 .R(R), 
                                 .Q(Q[31:16]));
   // synthesis attribute HU_SET of XLXI_1 is "XLXI_1_0"
   FD16RE_MXILINX_FD32RE XLXI_2 (.C(C), 
                                 .CE(CE), 
                                 .D(D[15:0]), 
                                 .R(R), 
                                 .Q(Q[15:0]));
   // synthesis attribute HU_SET of XLXI_2 is "XLXI_2_1"
endmodule
