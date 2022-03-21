////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : sch2verilog
//  /   /         Filename : datapath64bit.vf
// /___/   /\     Timestamp : 03/13/2022 00:00:22
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: /opt/Xilinx/10.1/ISE/bin/lin/unwrapped/sch2verilog -intstyle ise -family virtex2p -w /home/ise/sf/ee533_cpu/cpu/datapath64bit.sch datapath64bit.vf
//Design Name: datapath64bit
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module ADD16_MXILINX_datapath64bit(A, 
                                   B, 
                                   CI, 
                                   CO, 
                                   OFL, 
                                   S);

    input [15:0] A;
    input [15:0] B;
    input CI;
   output CO;
   output OFL;
   output [15:0] S;
   
   wire C0;
   wire C1;
   wire C2;
   wire C3;
   wire C4;
   wire C5;
   wire C6;
   wire C7;
   wire C8;
   wire C9;
   wire C10;
   wire C11;
   wire C12;
   wire C13;
   wire C14;
   wire C14O;
   wire dummy;
   wire I0;
   wire I1;
   wire I2;
   wire I3;
   wire I4;
   wire I5;
   wire I6;
   wire I7;
   wire I8;
   wire I9;
   wire I10;
   wire I11;
   wire I12;
   wire I13;
   wire I14;
   wire I15;
   wire CO_DUMMY;
   
   assign CO = CO_DUMMY;
   FMAP I_36_16 (.I1(A[8]), 
                 .I2(B[8]), 
                 .I3(dummy), 
                 .I4(dummy), 
                 .O(I8));
   // synthesis attribute RLOC of I_36_16 is "X0Y4"
   FMAP I_36_17 (.I1(A[9]), 
                 .I2(B[9]), 
                 .I3(dummy), 
                 .I4(dummy), 
                 .O(I9));
   // synthesis attribute RLOC of I_36_17 is "X0Y4"
   FMAP I_36_18 (.I1(A[10]), 
                 .I2(B[10]), 
                 .I3(dummy), 
                 .I4(dummy), 
                 .O(I10));
   // synthesis attribute RLOC of I_36_18 is "X0Y5"
   FMAP I_36_19 (.I1(A[11]), 
                 .I2(B[11]), 
                 .I3(dummy), 
                 .I4(dummy), 
                 .O(I11));
   // synthesis attribute RLOC of I_36_19 is "X0Y5"
   FMAP I_36_20 (.I1(A[12]), 
                 .I2(B[12]), 
                 .I3(dummy), 
                 .I4(dummy), 
                 .O(I12));
   // synthesis attribute RLOC of I_36_20 is "X0Y6"
   FMAP I_36_21 (.I1(A[13]), 
                 .I2(B[13]), 
                 .I3(dummy), 
                 .I4(dummy), 
                 .O(I13));
   // synthesis attribute RLOC of I_36_21 is "X0Y6"
   FMAP I_36_22 (.I1(A[14]), 
                 .I2(B[14]), 
                 .I3(dummy), 
                 .I4(dummy), 
                 .O(I14));
   // synthesis attribute RLOC of I_36_22 is "X0Y7"
   FMAP I_36_23 (.I1(A[15]), 
                 .I2(B[15]), 
                 .I3(dummy), 
                 .I4(dummy), 
                 .O(I15));
   // synthesis attribute RLOC of I_36_23 is "X0Y7"
   MUXCY_L I_36_55 (.CI(C8), 
                    .DI(A[9]), 
                    .S(I9), 
                    .LO(C9));
   // synthesis attribute RLOC of I_36_55 is "X0Y4"
   MUXCY_L I_36_58 (.CI(C10), 
                    .DI(A[11]), 
                    .S(I11), 
                    .LO(C11));
   // synthesis attribute RLOC of I_36_58 is "X0Y5"
   MUXCY_L I_36_62 (.CI(C9), 
                    .DI(A[10]), 
                    .S(I10), 
                    .LO(C10));
   // synthesis attribute RLOC of I_36_62 is "X0Y5"
   MUXCY_L I_36_63 (.CI(C11), 
                    .DI(A[12]), 
                    .S(I12), 
                    .LO(C12));
   // synthesis attribute RLOC of I_36_63 is "X0Y6"
   MUXCY I_36_64 (.CI(C14), 
                  .DI(A[15]), 
                  .S(I15), 
                  .O(CO_DUMMY));
   // synthesis attribute RLOC of I_36_64 is "X0Y7"
   XORCY I_36_73 (.CI(C7), 
                  .LI(I8), 
                  .O(S[8]));
   XORCY I_36_74 (.CI(C8), 
                  .LI(I9), 
                  .O(S[9]));
   XORCY I_36_75 (.CI(C10), 
                  .LI(I11), 
                  .O(S[11]));
   XORCY I_36_76 (.CI(C9), 
                  .LI(I10), 
                  .O(S[10]));
   XORCY I_36_77 (.CI(C12), 
                  .LI(I13), 
                  .O(S[13]));
   XORCY I_36_78 (.CI(C11), 
                  .LI(I12), 
                  .O(S[12]));
   XORCY I_36_80 (.CI(C14), 
                  .LI(I15), 
                  .O(S[15]));
   XORCY I_36_81 (.CI(C13), 
                  .LI(I14), 
                  .O(S[14]));
   MUXCY_D I_36_107 (.CI(C13), 
                     .DI(A[14]), 
                     .S(I14), 
                     .LO(C14), 
                     .O(C14O));
   // synthesis attribute RLOC of I_36_107 is "X0Y7"
   MUXCY_L I_36_110 (.CI(C12), 
                     .DI(A[13]), 
                     .S(I13), 
                     .LO(C13));
   // synthesis attribute RLOC of I_36_110 is "X0Y6"
   MUXCY_L I_36_111 (.CI(C7), 
                     .DI(A[8]), 
                     .S(I8), 
                     .LO(C8));
   // synthesis attribute RLOC of I_36_111 is "X0Y4"
   XORCY I_36_226 (.CI(CI), 
                   .LI(I0), 
                   .O(S[0]));
   XORCY I_36_227 (.CI(C0), 
                   .LI(I1), 
                   .O(S[1]));
   XORCY I_36_228 (.CI(C2), 
                   .LI(I3), 
                   .O(S[3]));
   XORCY I_36_229 (.CI(C1), 
                   .LI(I2), 
                   .O(S[2]));
   XORCY I_36_230 (.CI(C4), 
                   .LI(I5), 
                   .O(S[5]));
   XORCY I_36_231 (.CI(C3), 
                   .LI(I4), 
                   .O(S[4]));
   XORCY I_36_233 (.CI(C6), 
                   .LI(I7), 
                   .O(S[7]));
   XORCY I_36_234 (.CI(C5), 
                   .LI(I6), 
                   .O(S[6]));
   MUXCY_L I_36_248 (.CI(C6), 
                     .DI(A[7]), 
                     .S(I7), 
                     .LO(C7));
   // synthesis attribute RLOC of I_36_248 is "X0Y3"
   MUXCY_L I_36_249 (.CI(C5), 
                     .DI(A[6]), 
                     .S(I6), 
                     .LO(C6));
   // synthesis attribute RLOC of I_36_249 is "X0Y3"
   MUXCY_L I_36_250 (.CI(C4), 
                     .DI(A[5]), 
                     .S(I5), 
                     .LO(C5));
   // synthesis attribute RLOC of I_36_250 is "X0Y2"
   MUXCY_L I_36_251 (.CI(C3), 
                     .DI(A[4]), 
                     .S(I4), 
                     .LO(C4));
   // synthesis attribute RLOC of I_36_251 is "X0Y2"
   MUXCY_L I_36_252 (.CI(C2), 
                     .DI(A[3]), 
                     .S(I3), 
                     .LO(C3));
   // synthesis attribute RLOC of I_36_252 is "X0Y1"
   MUXCY_L I_36_253 (.CI(C1), 
                     .DI(A[2]), 
                     .S(I2), 
                     .LO(C2));
   // synthesis attribute RLOC of I_36_253 is "X0Y1"
   MUXCY_L I_36_254 (.CI(C0), 
                     .DI(A[1]), 
                     .S(I1), 
                     .LO(C1));
   // synthesis attribute RLOC of I_36_254 is "X0Y0"
   MUXCY_L I_36_255 (.CI(CI), 
                     .DI(A[0]), 
                     .S(I0), 
                     .LO(C0));
   // synthesis attribute RLOC of I_36_255 is "X0Y0"
   FMAP I_36_272 (.I1(A[1]), 
                  .I2(B[1]), 
                  .I3(dummy), 
                  .I4(dummy), 
                  .O(I1));
   // synthesis attribute RLOC of I_36_272 is "X0Y0"
   FMAP I_36_275 (.I1(A[0]), 
                  .I2(B[0]), 
                  .I3(dummy), 
                  .I4(dummy), 
                  .O(I0));
   // synthesis attribute RLOC of I_36_275 is "X0Y0"
   FMAP I_36_279 (.I1(A[2]), 
                  .I2(B[2]), 
                  .I3(dummy), 
                  .I4(dummy), 
                  .O(I2));
   // synthesis attribute RLOC of I_36_279 is "X0Y1"
   FMAP I_36_283 (.I1(A[3]), 
                  .I2(B[3]), 
                  .I3(dummy), 
                  .I4(dummy), 
                  .O(I3));
   // synthesis attribute RLOC of I_36_283 is "X0Y1"
   FMAP I_36_287 (.I1(A[4]), 
                  .I2(B[4]), 
                  .I3(dummy), 
                  .I4(dummy), 
                  .O(I4));
   // synthesis attribute RLOC of I_36_287 is "X0Y2"
   FMAP I_36_291 (.I1(A[5]), 
                  .I2(B[5]), 
                  .I3(dummy), 
                  .I4(dummy), 
                  .O(I5));
   // synthesis attribute RLOC of I_36_291 is "X0Y2"
   FMAP I_36_295 (.I1(A[6]), 
                  .I2(B[6]), 
                  .I3(dummy), 
                  .I4(dummy), 
                  .O(I6));
   // synthesis attribute RLOC of I_36_295 is "X0Y3"
   FMAP I_36_299 (.I1(A[7]), 
                  .I2(B[7]), 
                  .I3(dummy), 
                  .I4(dummy), 
                  .O(I7));
   // synthesis attribute RLOC of I_36_299 is "X0Y3"
   XOR2 I_36_354 (.I0(A[0]), 
                  .I1(B[0]), 
                  .O(I0));
   XOR2 I_36_355 (.I0(A[1]), 
                  .I1(B[1]), 
                  .O(I1));
   XOR2 I_36_356 (.I0(A[2]), 
                  .I1(B[2]), 
                  .O(I2));
   XOR2 I_36_357 (.I0(A[3]), 
                  .I1(B[3]), 
                  .O(I3));
   XOR2 I_36_358 (.I0(A[4]), 
                  .I1(B[4]), 
                  .O(I4));
   XOR2 I_36_359 (.I0(A[5]), 
                  .I1(B[5]), 
                  .O(I5));
   XOR2 I_36_360 (.I0(A[6]), 
                  .I1(B[6]), 
                  .O(I6));
   XOR2 I_36_361 (.I0(A[7]), 
                  .I1(B[7]), 
                  .O(I7));
   XOR2 I_36_362 (.I0(A[8]), 
                  .I1(B[8]), 
                  .O(I8));
   XOR2 I_36_363 (.I0(A[9]), 
                  .I1(B[9]), 
                  .O(I9));
   XOR2 I_36_364 (.I0(A[10]), 
                  .I1(B[10]), 
                  .O(I10));
   XOR2 I_36_365 (.I0(A[11]), 
                  .I1(B[11]), 
                  .O(I11));
   XOR2 I_36_366 (.I0(A[12]), 
                  .I1(B[12]), 
                  .O(I12));
   XOR2 I_36_367 (.I0(A[13]), 
                  .I1(B[13]), 
                  .O(I13));
   XOR2 I_36_368 (.I0(A[14]), 
                  .I1(B[14]), 
                  .O(I14));
   XOR2 I_36_369 (.I0(A[15]), 
                  .I1(B[15]), 
                  .O(I15));
   XOR2 I_36_375 (.I0(C14O), 
                  .I1(CO_DUMMY), 
                  .O(OFL));
endmodule
`timescale 1ns / 1ps

module datapath64bit(clk, 
                     clk_2x, 
                     DATA_ADDR, 
                     DATA_DIN, 
                     DATA_WEN, 
                     en, 
                     INS_ADDR, 
                     INS_DIN, 
                     INS_WEN, 
                     one, 
                     PERF_DIN, 
                     rst, 
                     alu_out, 
                     branch, 
                     br_addr, 
                     DATA_DOUT, 
                     ex_br_ctrl, 
                     ex_mem_wr, 
                     ex_r1_data, 
                     ex_r2_data, 
                     instruction, 
                     INS_DOUT, 
                     MEM_ADDR, 
                     MEM_DIN, 
                     MEM_WEN, 
                     PC, 
                     PERF_ADDR, 
                     PERF_DOUT, 
                     PERF_WREN, 
                     rf_r1_out, 
                     r0_addr, 
                     r1_addr, 
                     wb_data, 
                     wb_reg_addr, 
                     wb_reg_write);

    input clk;
    input clk_2x;
    input [7:0] DATA_ADDR;
    input [63:0] DATA_DIN;
    input DATA_WEN;
    input en;
    input [8:0] INS_ADDR;
    input [31:0] INS_DIN;
    input INS_WEN;
    input [15:0] one;
    input [63:0] PERF_DIN;
    input rst;
   output [63:0] alu_out;
   output branch;
   output [8:0] br_addr;
   output [63:0] DATA_DOUT;
   output [1:0] ex_br_ctrl;
   output ex_mem_wr;
   output [63:0] ex_r1_data;
   output [63:0] ex_r2_data;
   output [31:0] instruction;
   output [31:0] INS_DOUT;
   output [63:0] MEM_ADDR;
   output [63:0] MEM_DIN;
   output MEM_WEN;
   output [8:0] PC;
   output [63:0] PERF_ADDR;
   output [63:0] PERF_DOUT;
   output PERF_WREN;
   output [63:0] rf_r1_out;
   output [2:0] r0_addr;
   output [2:0] r1_addr;
   output [63:0] wb_data;
   output [2:0] wb_reg_addr;
   output wb_reg_write;
   
   wire [1:0] br_ctrl;
   wire [5:0] dec_ex_ctrl;
   wire dec_mem_ctrl;
   wire [2:0] dec_rd;
   wire [1:0] dec_wb_ctrl;
   wire [5:0] ex_ctrl;
   wire [1:0] ex_wb_ctrl;
   wire [63:0] id_d0;
   wire [11:0] imm;
   wire [15:0] ins_ptr;
   wire [15:0] ip_int;
   wire [8:0] ip_next;
   wire [63:0] me_data;
   wire [63:0] me_perf_data;
   wire perf_en;
   wire XLXN_26;
   wire [63:0] XLXN_212;
   wire XLXN_215;
   wire [2:0] XLXN_267;
   wire [2:0] XLXN_279;
   wire XLXN_311;
   wire XLXN_312;
   wire [8:0] XLXN_336;
   wire [15:0] XLXN_398;
   wire [63:0] XLXN_434;
   wire [63:0] XLXN_436;
   wire [63:0] wb_data_DUMMY;
   wire MEM_WEN_DUMMY;
   wire [63:0] rf_r1_out_DUMMY;
   wire [2:0] wb_reg_addr_DUMMY;
   wire wb_reg_write_DUMMY;
   wire [31:0] instruction_DUMMY;
   wire [8:0] PC_DUMMY;
   wire [1:0] ex_br_ctrl_DUMMY;
   wire [8:0] br_addr_DUMMY;
   wire [63:0] MEM_DIN_DUMMY;
   wire [63:0] alu_out_DUMMY;
   wire [63:0] MEM_ADDR_DUMMY;
   wire [2:0] r0_addr_DUMMY;
   wire [2:0] r1_addr_DUMMY;
   wire ex_mem_wr_DUMMY;
   wire [63:0] ex_r1_data_DUMMY;
   wire [63:0] ex_r2_data_DUMMY;
   wire branch_DUMMY;
   
   assign alu_out[63:0] = alu_out_DUMMY[63:0];
   assign branch = branch_DUMMY;
   assign br_addr[8:0] = br_addr_DUMMY[8:0];
   assign ex_br_ctrl[1:0] = ex_br_ctrl_DUMMY[1:0];
   assign ex_mem_wr = ex_mem_wr_DUMMY;
   assign ex_r1_data[63:0] = ex_r1_data_DUMMY[63:0];
   assign ex_r2_data[63:0] = ex_r2_data_DUMMY[63:0];
   assign instruction[31:0] = instruction_DUMMY[31:0];
   assign MEM_ADDR[63:0] = MEM_ADDR_DUMMY[63:0];
   assign MEM_DIN[63:0] = MEM_DIN_DUMMY[63:0];
   assign MEM_WEN = MEM_WEN_DUMMY;
   assign PC[8:0] = PC_DUMMY[8:0];
   assign rf_r1_out[63:0] = rf_r1_out_DUMMY[63:0];
   assign r0_addr[2:0] = r0_addr_DUMMY[2:0];
   assign r1_addr[2:0] = r1_addr_DUMMY[2:0];
   assign wb_data[63:0] = wb_data_DUMMY[63:0];
   assign wb_reg_addr[2:0] = wb_reg_addr_DUMMY[2:0];
   assign wb_reg_write = wb_reg_write_DUMMY;
   DFF16bit IP_REG (.ce(en), 
                    .clk(clk), 
                    .clr(rst), 
                    .d(XLXN_398[15:0]), 
                    .q(ins_ptr[15:0]));
   ADD16_MXILINX_datapath64bit XLXI_1 (.A(ins_ptr[15:0]), 
                                       .B(one[15:0]), 
                                       .CI(XLXN_26), 
                                       .CO(), 
                                       .OFL(), 
                                       .S(ip_int[15:0]));
   // synthesis attribute HU_SET of XLXI_1 is "XLXI_1_0"
   GND XLXI_8 (.G(XLXN_26));
   datamem64 XLXI_20 (.addra(MEM_ADDR_DUMMY[7:0]), 
                      .addrb(DATA_ADDR[7:0]), 
                      .clka(clk), 
                      .clkb(clk), 
                      .dina(MEM_DIN_DUMMY[63:0]), 
                      .dinb(DATA_DIN[63:0]), 
                      .wea(MEM_WEN_DUMMY), 
                      .web(DATA_WEN), 
                      .douta(me_data[63:0]), 
                      .doutb(DATA_DOUT[63:0]));
   instructionmem64 XLXI_23 (.addra(INS_ADDR[8:0]), 
                             .addrb(ins_ptr[8:0]), 
                             .clka(clk), 
                             .clkb(clk), 
                             .dina(INS_DIN[31:0]), 
                             .dinb(), 
                             .wea(INS_WEN), 
                             .web(), 
                             .douta(INS_DOUT[31:0]), 
                             .doutb(instruction_DUMMY[31:0]));
   IFID_reg XLXI_27 (.clk(clk), 
                     .clr(rst), 
                     .en(en), 
                     .inc_in(), 
                     .pc_addr_in(ins_ptr[8:0]), 
                     .inc_out(), 
                     .pc_addr_out(PC_DUMMY[8:0]));
   alu64 XLXI_30 (.en(ex_ctrl[5]), 
                  .MD(ex_ctrl[0]), 
                  .OP(ex_ctrl[3:1]), 
                  .R1(ex_r1_data_DUMMY[63:0]), 
                  .R2(ex_r2_data_DUMMY[63:0]), 
                  .EQ(), 
                  .GT(), 
                  .LT(), 
                  .OVR(), 
                  .Q(alu_out_DUMMY[63:0]));
   signextend XLXI_31 (.imm_in(imm[11:0]), 
                       .imm_extend(XLXN_434[63:0]));
   ID_EXreg XLXI_40 (.clk(clk), 
                     .ID_addr_ins(XLXN_336[8:0]), 
                     .ID_br_ctrl(br_ctrl[1:0]), 
                     .ID_EX_CTRL(dec_ex_ctrl[5:0]), 
                     .ID_MEM_CTRL(dec_mem_ctrl), 
                     .ID_reg_data1(id_d0[63:0]), 
                     .ID_reg_data2(XLXN_436[63:0]), 
                     .ID_WB_CTRL(dec_wb_ctrl[1:0]), 
                     .ID_Wreg(dec_rd[2:0]), 
                     .reset(rst), 
                     .EX_addr_ins(br_addr_DUMMY[8:0]), 
                     .EX_br_ctrl(ex_br_ctrl_DUMMY[1:0]), 
                     .EX_EX_CTRL(ex_ctrl[5:0]), 
                     .EX_MEM_CTRL(ex_mem_wr_DUMMY), 
                     .EX_reg_data1(ex_r1_data_DUMMY[63:0]), 
                     .EX_reg_data2(ex_r2_data_DUMMY[63:0]), 
                     .EX_WB_CTRL(ex_wb_ctrl[1:0]), 
                     .EX_Wreg(XLXN_279[2:0]));
   Br_adder XLXI_43 (.immi(imm[11:0]), 
                     .ins_inc_addr(PC_DUMMY[8:0]), 
                     .ins_br_addr(XLXN_336[8:0]));
   mux2_to_1_x64 XLXI_48 (.EX_immi_data(XLXN_434[63:0]), 
                          .EX_register_data(rf_r1_out_DUMMY[63:0]), 
                          .s(dec_ex_ctrl[4]), 
                          .data_out(XLXN_436[63:0]));
   DFF133bit XLXI_50 (.ALUdata(MEM_DIN_DUMMY[63:0]), 
                      .clk(clk), 
                      .clr(rst), 
                      .en(en), 
                      .mem_data(), 
                      .MEM_MemtoReg(XLXN_312), 
                      .MEM_Reg_write(XLXN_311), 
                      .Wregin(XLXN_267[2:0]), 
                      .ALUdataout(XLXN_212[63:0]), 
                      .mem_dataout(), 
                      .WB_MetoReg(XLXN_215), 
                      .WB_Reg_write(wb_reg_write_DUMMY), 
                      .Wregout(wb_reg_addr_DUMMY[2:0]));
   mux2_to_1_x64 XLXI_51 (.EX_immi_data(me_perf_data[63:0]), 
                          .EX_register_data(XLXN_212[63:0]), 
                          .s(XLXN_215), 
                          .data_out(wb_data_DUMMY[63:0]));
   DFF134bit XLXI_55 (.ALUdata(alu_out_DUMMY[63:0]), 
                      .clk(clk), 
                      .clr(rst), 
                      .en(en), 
                      .EX_MemtoReg(ex_wb_ctrl[1]), 
                      .EX_mem_write(ex_mem_wr_DUMMY), 
                      .EX_Reg_write(ex_wb_ctrl[0]), 
                      .reg_data(ex_r2_data_DUMMY[63:0]), 
                      .Wregin(XLXN_279[2:0]), 
                      .ALUdataout(MEM_DIN_DUMMY[63:0]), 
                      .MEM_mem_write(MEM_WEN_DUMMY), 
                      .MEM_MetoReg(XLXN_312), 
                      .MEM_Reg_write(XLXN_311), 
                      .reg_dataout(MEM_ADDR_DUMMY[63:0]), 
                      .Wregout(XLXN_267[2:0]));
   BEZ_BNEZ_detect XLXI_59 (.BEZ_op(ex_br_ctrl_DUMMY[1]), 
                            .BNEZ_op(ex_br_ctrl_DUMMY[0]), 
                            .Reg_data(ex_r1_data_DUMMY[63:0]), 
                            .Branch_signal(branch_DUMMY));
   decoder XLXI_64 (.ins(instruction_DUMMY[31:0]), 
                    .br_ctrl(br_ctrl[1:0]), 
                    .ex_ctrl(dec_ex_ctrl[5:0]), 
                    .imm(imm[11:0]), 
                    .mem_ctrl(dec_mem_ctrl), 
                    .rd(dec_rd[2:0]), 
                    .rs1(r0_addr_DUMMY[2:0]), 
                    .rs2(r1_addr_DUMMY[2:0]), 
                    .wb_ctrl(dec_wb_ctrl[1:0]));
   mux9bit_2_to_1 XLXI_70 (.branch(branch_DUMMY), 
                           .br_ins(br_addr_DUMMY[8:0]), 
                           .inc_ins(ip_int[8:0]), 
                           .ins_out(ip_next[8:0]));
   ip_extend XLXI_72 (.ip_in(ip_next[8:0]), 
                      .ip_out(XLXN_398[15:0]));
   regfile64bit XLXI_74 (.clk(clk_2x), 
                         .rd_en(clk), 
                         .r0addr(r0_addr_DUMMY[2:0]), 
                         .r1addr(r1_addr_DUMMY[2:0]), 
                         .wraddr(wb_reg_addr_DUMMY[2:0]), 
                         .wr_din(wb_data_DUMMY[63:0]), 
                         .wr_en(wb_reg_write_DUMMY), 
                         .r0_data(id_d0[63:0]), 
                         .r1_data(rf_r1_out_DUMMY[63:0]));
   mux2_to_1_x64 XLXI_75 (.EX_immi_data(PERF_DIN[63:0]), 
                          .EX_register_data(me_data[63:0]), 
                          .s(perf_en), 
                          .data_out(me_perf_data[63:0]));
   perf_interface XLXI_76 (.addr_in(MEM_ADDR_DUMMY[63:0]), 
                           .clk(clk), 
                           .data_in(MEM_DIN_DUMMY[63:0]), 
                           .rst(rst), 
                           .wren(MEM_WEN_DUMMY), 
                           .perf_addr_out(PERF_ADDR[63:0]), 
                           .perf_data_out(PERF_DOUT[63:0]), 
                           .perf_en(perf_en), 
                           .perf_wren(PERF_WREN));
endmodule
