////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : CVTB_memory.vf
// /___/   /\     Timestamp : 03/12/2022 17:16:58
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/convertable_fifo/CVTB_memory.sch CVTB_memory.vf
//Design Name: CVTB_memory
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module M2_1_MXILINX_CVTB_memory(D0, 
                                D1, 
                                S0, 
                                O);

    input D0;
    input D1;
    input S0;
   output O;
   
   wire M0;
   wire M1;
   
   AND2B1 I_36_7 (.I0(S0), 
                  .I1(D0), 
                  .O(M0));
   OR2 I_36_8 (.I0(M1), 
               .I1(M0), 
               .O(O));
   AND2 I_36_9 (.I0(D1), 
                .I1(S0), 
                .O(M1));
endmodule
`timescale 1ns / 1ps

module FTCLEX_MXILINX_CVTB_memory(C, 
                                  CE, 
                                  CLR, 
                                  D, 
                                  L, 
                                  T, 
                                  Q);

    input C;
    input CE;
    input CLR;
    input D;
    input L;
    input T;
   output Q;
   
   wire MD;
   wire TQ;
   wire Q_DUMMY;
   
   assign Q = Q_DUMMY;
   M2_1_MXILINX_CVTB_memory I_36_30 (.D0(TQ), 
                                     .D1(D), 
                                     .S0(L), 
                                     .O(MD));
   // synthesis attribute HU_SET of I_36_30 is "I_36_30_0"
   XOR2 I_36_32 (.I0(T), 
                 .I1(Q_DUMMY), 
                 .O(TQ));
   FDCE I_36_35 (.C(C), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(MD), 
                 .Q(Q_DUMMY));
   // synthesis attribute RLOC of I_36_35 is "X0Y0"
   defparam I_36_35.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module CB16CLE_MXILINX_CVTB_memory(C, 
                                   CE, 
                                   CLR, 
                                   D, 
                                   L, 
                                   CEO, 
                                   Q, 
                                   TC);

    input C;
    input CE;
    input CLR;
    input [15:0] D;
    input L;
   output CEO;
   output [15:0] Q;
   output TC;
   
   wire OR_CE_L;
   wire T2;
   wire T3;
   wire T4;
   wire T5;
   wire T6;
   wire T7;
   wire T8;
   wire T9;
   wire T10;
   wire T11;
   wire T12;
   wire T13;
   wire T14;
   wire T15;
   wire XLXN_1;
   wire [15:0] Q_DUMMY;
   wire TC_DUMMY;
   
   assign Q[15:0] = Q_DUMMY[15:0];
   assign TC = TC_DUMMY;
   FTCLEX_MXILINX_CVTB_memory I_Q0 (.C(C), 
                                    .CE(OR_CE_L), 
                                    .CLR(CLR), 
                                    .D(D[0]), 
                                    .L(L), 
                                    .T(XLXN_1), 
                                    .Q(Q_DUMMY[0]));
   // synthesis attribute HU_SET of I_Q0 is "I_Q0_16"
   FTCLEX_MXILINX_CVTB_memory I_Q1 (.C(C), 
                                    .CE(OR_CE_L), 
                                    .CLR(CLR), 
                                    .D(D[1]), 
                                    .L(L), 
                                    .T(Q_DUMMY[0]), 
                                    .Q(Q_DUMMY[1]));
   // synthesis attribute HU_SET of I_Q1 is "I_Q1_15"
   FTCLEX_MXILINX_CVTB_memory I_Q2 (.C(C), 
                                    .CE(OR_CE_L), 
                                    .CLR(CLR), 
                                    .D(D[2]), 
                                    .L(L), 
                                    .T(T2), 
                                    .Q(Q_DUMMY[2]));
   // synthesis attribute HU_SET of I_Q2 is "I_Q2_14"
   FTCLEX_MXILINX_CVTB_memory I_Q3 (.C(C), 
                                    .CE(OR_CE_L), 
                                    .CLR(CLR), 
                                    .D(D[3]), 
                                    .L(L), 
                                    .T(T3), 
                                    .Q(Q_DUMMY[3]));
   // synthesis attribute HU_SET of I_Q3 is "I_Q3_13"
   FTCLEX_MXILINX_CVTB_memory I_Q4 (.C(C), 
                                    .CE(OR_CE_L), 
                                    .CLR(CLR), 
                                    .D(D[4]), 
                                    .L(L), 
                                    .T(T4), 
                                    .Q(Q_DUMMY[4]));
   // synthesis attribute HU_SET of I_Q4 is "I_Q4_12"
   FTCLEX_MXILINX_CVTB_memory I_Q5 (.C(C), 
                                    .CE(OR_CE_L), 
                                    .CLR(CLR), 
                                    .D(D[5]), 
                                    .L(L), 
                                    .T(T5), 
                                    .Q(Q_DUMMY[5]));
   // synthesis attribute HU_SET of I_Q5 is "I_Q5_11"
   FTCLEX_MXILINX_CVTB_memory I_Q6 (.C(C), 
                                    .CE(OR_CE_L), 
                                    .CLR(CLR), 
                                    .D(D[6]), 
                                    .L(L), 
                                    .T(T6), 
                                    .Q(Q_DUMMY[6]));
   // synthesis attribute HU_SET of I_Q6 is "I_Q6_10"
   FTCLEX_MXILINX_CVTB_memory I_Q7 (.C(C), 
                                    .CE(OR_CE_L), 
                                    .CLR(CLR), 
                                    .D(D[7]), 
                                    .L(L), 
                                    .T(T7), 
                                    .Q(Q_DUMMY[7]));
   // synthesis attribute HU_SET of I_Q7 is "I_Q7_9"
   FTCLEX_MXILINX_CVTB_memory I_Q8 (.C(C), 
                                    .CE(OR_CE_L), 
                                    .CLR(CLR), 
                                    .D(D[8]), 
                                    .L(L), 
                                    .T(T8), 
                                    .Q(Q_DUMMY[8]));
   // synthesis attribute HU_SET of I_Q8 is "I_Q8_1"
   FTCLEX_MXILINX_CVTB_memory I_Q9 (.C(C), 
                                    .CE(OR_CE_L), 
                                    .CLR(CLR), 
                                    .D(D[9]), 
                                    .L(L), 
                                    .T(T9), 
                                    .Q(Q_DUMMY[9]));
   // synthesis attribute HU_SET of I_Q9 is "I_Q9_2"
   FTCLEX_MXILINX_CVTB_memory I_Q10 (.C(C), 
                                     .CE(OR_CE_L), 
                                     .CLR(CLR), 
                                     .D(D[10]), 
                                     .L(L), 
                                     .T(T10), 
                                     .Q(Q_DUMMY[10]));
   // synthesis attribute HU_SET of I_Q10 is "I_Q10_3"
   FTCLEX_MXILINX_CVTB_memory I_Q11 (.C(C), 
                                     .CE(OR_CE_L), 
                                     .CLR(CLR), 
                                     .D(D[11]), 
                                     .L(L), 
                                     .T(T11), 
                                     .Q(Q_DUMMY[11]));
   // synthesis attribute HU_SET of I_Q11 is "I_Q11_4"
   FTCLEX_MXILINX_CVTB_memory I_Q12 (.C(C), 
                                     .CE(OR_CE_L), 
                                     .CLR(CLR), 
                                     .D(D[12]), 
                                     .L(L), 
                                     .T(T12), 
                                     .Q(Q_DUMMY[12]));
   // synthesis attribute HU_SET of I_Q12 is "I_Q12_5"
   FTCLEX_MXILINX_CVTB_memory I_Q13 (.C(C), 
                                     .CE(OR_CE_L), 
                                     .CLR(CLR), 
                                     .D(D[13]), 
                                     .L(L), 
                                     .T(T13), 
                                     .Q(Q_DUMMY[13]));
   // synthesis attribute HU_SET of I_Q13 is "I_Q13_6"
   FTCLEX_MXILINX_CVTB_memory I_Q14 (.C(C), 
                                     .CE(OR_CE_L), 
                                     .CLR(CLR), 
                                     .D(D[14]), 
                                     .L(L), 
                                     .T(T14), 
                                     .Q(Q_DUMMY[14]));
   // synthesis attribute HU_SET of I_Q14 is "I_Q14_7"
   FTCLEX_MXILINX_CVTB_memory I_Q15 (.C(C), 
                                     .CE(OR_CE_L), 
                                     .CLR(CLR), 
                                     .D(D[15]), 
                                     .L(L), 
                                     .T(T15), 
                                     .Q(Q_DUMMY[15]));
   // synthesis attribute HU_SET of I_Q15 is "I_Q15_8"
   AND5 I_36_2 (.I0(Q_DUMMY[15]), 
                .I1(Q_DUMMY[14]), 
                .I2(Q_DUMMY[13]), 
                .I3(Q_DUMMY[12]), 
                .I4(T12), 
                .O(TC_DUMMY));
   AND4 I_36_3 (.I0(Q_DUMMY[14]), 
                .I1(Q_DUMMY[13]), 
                .I2(Q_DUMMY[12]), 
                .I3(T12), 
                .O(T15));
   AND2 I_36_4 (.I0(Q_DUMMY[12]), 
                .I1(T12), 
                .O(T13));
   AND3 I_36_5 (.I0(Q_DUMMY[13]), 
                .I1(Q_DUMMY[12]), 
                .I2(T12), 
                .O(T14));
   AND3 I_36_6 (.I0(Q_DUMMY[9]), 
                .I1(Q_DUMMY[8]), 
                .I2(T8), 
                .O(T10));
   AND2 I_36_7 (.I0(Q_DUMMY[8]), 
                .I1(T8), 
                .O(T9));
   AND4 I_36_8 (.I0(Q_DUMMY[10]), 
                .I1(Q_DUMMY[9]), 
                .I2(Q_DUMMY[8]), 
                .I3(T8), 
                .O(T11));
   AND5 I_36_9 (.I0(Q_DUMMY[11]), 
                .I1(Q_DUMMY[10]), 
                .I2(Q_DUMMY[9]), 
                .I3(Q_DUMMY[8]), 
                .I4(T8), 
                .O(T12));
   AND3 I_36_13 (.I0(Q_DUMMY[5]), 
                 .I1(Q_DUMMY[4]), 
                 .I2(T4), 
                 .O(T6));
   AND2 I_36_14 (.I0(Q_DUMMY[4]), 
                 .I1(T4), 
                 .O(T5));
   AND4 I_36_15 (.I0(Q_DUMMY[6]), 
                 .I1(Q_DUMMY[5]), 
                 .I2(Q_DUMMY[4]), 
                 .I3(T4), 
                 .O(T7));
   AND5 I_36_16 (.I0(Q_DUMMY[7]), 
                 .I1(Q_DUMMY[6]), 
                 .I2(Q_DUMMY[5]), 
                 .I3(Q_DUMMY[4]), 
                 .I4(T4), 
                 .O(T8));
   AND4 I_36_17 (.I0(Q_DUMMY[3]), 
                 .I1(Q_DUMMY[2]), 
                 .I2(Q_DUMMY[1]), 
                 .I3(Q_DUMMY[0]), 
                 .O(T4));
   AND3 I_36_18 (.I0(Q_DUMMY[2]), 
                 .I1(Q_DUMMY[1]), 
                 .I2(Q_DUMMY[0]), 
                 .O(T3));
   AND2 I_36_19 (.I0(Q_DUMMY[1]), 
                 .I1(Q_DUMMY[0]), 
                 .O(T2));
   VCC I_36_31 (.P(XLXN_1));
   AND2 I_36_56 (.I0(CE), 
                 .I1(TC_DUMMY), 
                 .O(CEO));
   OR2 I_36_68 (.I0(CE), 
                .I1(L), 
                .O(OR_CE_L));
endmodule
`timescale 1ns / 1ps

module CVTB_memory(clk, 
                   cpu_addr_in, 
                   cpu_cmd, 
                   cpu_ctrl, 
                   cpu_din, 
                   cpu_write, 
                   end_of_pkt, 
                   in_ctrl, 
                   in_data, 
                   in_wr, 
                   out_rdy, 
                   rst, 
                   dout_a, 
                   hold, 
                   out_ctrl, 
                   out_data, 
                   out_wr);

    input clk;
    input [8:0] cpu_addr_in;
    input [1:0] cpu_cmd;
    input cpu_ctrl;
    input [63:0] cpu_din;
    input cpu_write;
    input end_of_pkt;
    input [7:0] in_ctrl;
    input [63:0] in_data;
    input in_wr;
    input out_rdy;
    input rst;
   output [63:0] dout_a;
   output hold;
   output [7:0] out_ctrl;
   output [63:0] out_data;
   output out_wr;
   
   wire cpu_ctrl_pre;
   wire cpu_data;
   wire cpu_done;
   wire cpu_head;
   wire cpu_pkt_ctrl;
   wire cpu_pkt_ctrl_pre;
   wire cpu_tail;
   wire cpu_write_data;
   wire cpu_write_head;
   wire cpu_write_pkt_ctrl;
   wire cpu_write_tail;
   wire [7:0] dout_ctrl;
   wire [63:0] dout_data;
   wire [63:0] fifo_din;
   wire fifo_done;
   wire [15:0] fifo_head_ptr;
   wire [15:0] fifo_tail_ptr;
   wire [8:0] fifo_write_addr;
   wire head_ce;
   wire read;
   wire wena;
   wire wenb;
   wire write;
   wire [15:0] XLXN_87;
   wire [15:0] XLXN_88;
   wire [0:0] XLXN_327;
   wire XLXN_328;
   wire [0:0] XLXN_341;
   wire [7:0] XLXN_412;
   wire [8:0] XLXN_428;
   wire [8:0] XLXN_429;
   wire hold_DUMMY;
   
   assign hold = hold_DUMMY;
   CB16CLE_MXILINX_CVTB_memory HeadPointer (.C(clk), 
                                            .CE(head_ce), 
                                            .CLR(rst), 
                                            .D(XLXN_88[15:0]), 
                                            .L(cpu_write_head), 
                                            .CEO(), 
                                            .Q(fifo_head_ptr[15:0]), 
                                            .TC());
   // synthesis attribute HU_SET of HeadPointer is "HeadPointer_18"
   CB16CLE_MXILINX_CVTB_memory TailPointer (.C(clk), 
                                            .CE(XLXN_328), 
                                            .CLR(rst), 
                                            .D(XLXN_87[15:0]), 
                                            .L(cpu_write_tail), 
                                            .CEO(), 
                                            .Q(fifo_tail_ptr[15:0]), 
                                            .TC());
   // synthesis attribute HU_SET of TailPointer is "TailPointer_17"
   data_mux XLXI_25 (.data0(in_data[63:0]), 
                     .data1(cpu_din[63:0]), 
                     .sel(hold_DUMMY), 
                     .data_out(fifo_din[63:0]));
   addr_mux XLXI_27 (.addr0(fifo_tail_ptr[8:0]), 
                     .addr1(cpu_addr_in[8:0]), 
                     .sel(hold_DUMMY), 
                     .addr_out(fifo_write_addr[8:0]));
   pointer_extend XLXI_34 (.ip_in(cpu_din[8:0]), 
                           .ip_out(XLXN_87[15:0]));
   pointer_extend XLXI_35 (.ip_in(cpu_din[8:0]), 
                           .ip_out(XLXN_88[15:0]));
   mux4to1_64 XLXI_65 (.data0(fifo_tail_ptr[8:0]), 
                       .data1(fifo_head_ptr[8:0]), 
                       .data2(hold_DUMMY), 
                       .data3(fifo_done), 
                       .sel(cpu_cmd[1:0]), 
                       .data_out(XLXN_428[8:0]));
   CVTB_mem XLXI_87 (.addra(fifo_write_addr[8:0]), 
                     .addrb(fifo_head_ptr[8:0]), 
                     .clka(clk), 
                     .clkb(clk), 
                     .dina(fifo_din[63:0]), 
                     .dinb(), 
                     .wea(wena), 
                     .web(XLXN_327[0]), 
                     .douta(dout_data[63:0]), 
                     .doutb(out_data[63:0]));
   GND XLXI_113 (.G(XLXN_327[0]));
   FDR XLXI_115 (.C(clk), 
                 .D(cpu_ctrl), 
                 .R(rst), 
                 .Q(cpu_ctrl_pre));
   defparam XLXI_115.INIT = 1'b0;
   CVTB_ctrlmem XLXI_116 (.addra(fifo_write_addr[8:0]), 
                          .addrb(fifo_head_ptr[8:0]), 
                          .clka(clk), 
                          .clkb(clk), 
                          .dina(XLXN_412[7:0]), 
                          .dinb(), 
                          .wea(wenb), 
                          .web(XLXN_341[0]), 
                          .douta(dout_ctrl[7:0]), 
                          .doutb(out_ctrl[7:0]));
   GND XLXI_117 (.G(XLXN_341[0]));
   cpu_write_mux XLXI_118 (.cpu_cmd(cpu_cmd[1:0]), 
                           .cpu_ctrl(cpu_ctrl), 
                           .cpu_done(cpu_done), 
                           .cpu_pkt_ctrl(cpu_pkt_ctrl), 
                           .cpu_write_data(cpu_data), 
                           .cpu_write_head(cpu_head), 
                           .cpu_write_tail(cpu_tail));
   AND2 XLXI_119 (.I0(cpu_write), 
                  .I1(cpu_tail), 
                  .O(cpu_write_tail));
   AND2 XLXI_120 (.I0(cpu_write), 
                  .I1(cpu_head), 
                  .O(cpu_write_head));
   AND2 XLXI_121 (.I0(cpu_write), 
                  .I1(cpu_data), 
                  .O(cpu_write_data));
   AND2 XLXI_122 (.I0(cpu_write), 
                  .I1(cpu_pkt_ctrl), 
                  .O(cpu_write_pkt_ctrl));
   FDR XLXI_127 (.C(clk), 
                 .D(cpu_pkt_ctrl), 
                 .R(rst), 
                 .Q(cpu_pkt_ctrl_pre));
   defparam XLXI_127.INIT = 1'b0;
   ctrl_data_mux XLXI_129 (.data0(in_ctrl[7:0]), 
                           .data1(cpu_din[7:0]), 
                           .sel(hold_DUMMY), 
                           .data_out(XLXN_412[7:0]));
   OR2 XLXI_131 (.I0(read), 
                 .I1(cpu_write_head), 
                 .O(head_ce));
   fifo_write_module XLXI_132 (.clk(clk), 
                               .cpu_write(), 
                               .done(cpu_done), 
                               .endpkt(end_of_pkt), 
                               .rd_ptr(fifo_head_ptr[8:0]), 
                               .rst(rst), 
                               .wr_ptr(fifo_tail_ptr[8:0]), 
                               .fifo_done(fifo_done), 
                               .hold(hold_DUMMY));
   FDR XLXI_133 (.C(clk), 
                 .D(fifo_done), 
                 .R(rst), 
                 .Q(out_wr));
   defparam XLXI_133.INIT = 1'b0;
   AND2B1 XLXI_134 (.I0(hold_DUMMY), 
                    .I1(in_wr), 
                    .O(write));
   OR2 XLXI_135 (.I0(write), 
                 .I1(cpu_write_tail), 
                 .O(XLXN_328));
   AND2 XLXI_136 (.I0(fifo_done), 
                  .I1(out_rdy), 
                  .O(read));
   dff_9bit XLXI_139 (.clk(clk), 
                      .D(XLXN_428[8:0]), 
                      .rst(rst), 
                      .Q(XLXN_429[8:0]));
   out_data_mux XLXI_140 (.clk(clk), 
                          .cpu_pkt_ctrl_pre(cpu_pkt_ctrl_pre), 
                          .data0(XLXN_429[8:0]), 
                          .data1(dout_data[63:0]), 
                          .data2(dout_ctrl[7:0]), 
                          .rst(rst), 
                          .sel(cpu_ctrl_pre), 
                          .dout(dout_a[63:0]));
   OR2 XLXI_141 (.I0(write), 
                 .I1(cpu_write_data), 
                 .O(wena));
   OR2 XLXI_142 (.I0(write), 
                 .I1(cpu_write_pkt_ctrl), 
                 .O(wenb));
endmodule
