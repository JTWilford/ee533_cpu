///////////////////////////////////////////////////////////////////////////////
// vim:set shiftwidth=3 softtabstop=3 expandtab:
// $Id: user_data_path.v 4385 2008-08-05 02:10:01Z grg $
//
// Module: user_data_path.v
// Project: NF2.1
// Description: contains all the user instantiated modules
//
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps

/******************************************************
 * Even numbered ports are IO sinks/sources
 * Odd numbered ports are CPU ports corresponding to
 * IO sinks/sources to rpovide direct access to them
 ******************************************************/
module user_data_path
  #(parameter DATA_WIDTH = 64,
    parameter CTRL_WIDTH=DATA_WIDTH/8,
    parameter UDP_REG_SRC_WIDTH = 2,
    parameter NUM_OUTPUT_QUEUES = 8,
    parameter NUM_INPUT_QUEUES = 8,
    parameter SRAM_DATA_WIDTH = DATA_WIDTH+CTRL_WIDTH,
    parameter SRAM_ADDR_WIDTH = 19)

   (
    input  [DATA_WIDTH-1:0]            in_data_0,
    input  [CTRL_WIDTH-1:0]            in_ctrl_0,
    input                              in_wr_0,
    output                             in_rdy_0,

    input  [DATA_WIDTH-1:0]            in_data_1,
    input  [CTRL_WIDTH-1:0]            in_ctrl_1,
    input                              in_wr_1,
    output                             in_rdy_1,

    input  [DATA_WIDTH-1:0]            in_data_2,
    input  [CTRL_WIDTH-1:0]            in_ctrl_2,
    input                              in_wr_2,
    output                             in_rdy_2,

    input  [DATA_WIDTH-1:0]            in_data_3,
    input  [CTRL_WIDTH-1:0]            in_ctrl_3,
    input                              in_wr_3,
    output                             in_rdy_3,

    input  [DATA_WIDTH-1:0]            in_data_4,
    input  [CTRL_WIDTH-1:0]            in_ctrl_4,
    input                              in_wr_4,
    output                             in_rdy_4,

    input  [DATA_WIDTH-1:0]            in_data_5,
    input  [CTRL_WIDTH-1:0]            in_ctrl_5,
    input                              in_wr_5,
    output                             in_rdy_5,

    input  [DATA_WIDTH-1:0]            in_data_6,
    input  [CTRL_WIDTH-1:0]            in_ctrl_6,
    input                              in_wr_6,
    output                             in_rdy_6,

    input  [DATA_WIDTH-1:0]            in_data_7,
    input  [CTRL_WIDTH-1:0]            in_ctrl_7,
    input                              in_wr_7,
    output                             in_rdy_7,

/****  not used
    // --- Interface to SATA
    input  [DATA_WIDTH-1:0]            in_data_5,
    input  [CTRL_WIDTH-1:0]            in_ctrl_5,
    input                              in_wr_5,
    output                             in_rdy_5,

    // --- Interface to the loopback queue
    input  [DATA_WIDTH-1:0]            in_data_6,
    input  [CTRL_WIDTH-1:0]            in_ctrl_6,
    input                              in_wr_6,
    output                             in_rdy_6,

    // --- Interface to a user queue
    input  [DATA_WIDTH-1:0]            in_data_7,
    input  [CTRL_WIDTH-1:0]            in_ctrl_7,
    input                              in_wr_7,
    output                             in_rdy_7,
*****/

    output  [DATA_WIDTH-1:0]           out_data_0,
    output  [CTRL_WIDTH-1:0]           out_ctrl_0,
    output                             out_wr_0,
    input                              out_rdy_0,

    output  [DATA_WIDTH-1:0]           out_data_1,
    output  [CTRL_WIDTH-1:0]           out_ctrl_1,
    output                             out_wr_1,
    input                              out_rdy_1,

    output  [DATA_WIDTH-1:0]           out_data_2,
    output  [CTRL_WIDTH-1:0]           out_ctrl_2,
    output                             out_wr_2,
    input                              out_rdy_2,

    output  [DATA_WIDTH-1:0]           out_data_3,
    output  [CTRL_WIDTH-1:0]           out_ctrl_3,
    output                             out_wr_3,
    input                              out_rdy_3,

    output  [DATA_WIDTH-1:0]           out_data_4,
    output  [CTRL_WIDTH-1:0]           out_ctrl_4,
    output                             out_wr_4,
    input                              out_rdy_4,

    output  [DATA_WIDTH-1:0]           out_data_5,
    output  [CTRL_WIDTH-1:0]           out_ctrl_5,
    output                             out_wr_5,
    input                              out_rdy_5,

    output  [DATA_WIDTH-1:0]           out_data_6,
    output  [CTRL_WIDTH-1:0]           out_ctrl_6,
    output                             out_wr_6,
    input                              out_rdy_6,

    output  [DATA_WIDTH-1:0]           out_data_7,
    output  [CTRL_WIDTH-1:0]           out_ctrl_7,
    output                             out_wr_7,
    input                              out_rdy_7,

/****  not used
    // --- Interface to SATA
    output  [DATA_WIDTH-1:0]           out_data_5,
    output  [CTRL_WIDTH-1:0]           out_ctrl_5,
    output                             out_wr_5,
    input                              out_rdy_5,

    // --- Interface to the loopback queue
    output  [DATA_WIDTH-1:0]           out_data_6,
    output  [CTRL_WIDTH-1:0]           out_ctrl_6,
    output                             out_wr_6,
    input                              out_rdy_6,

    // --- Interface to a user queue
    output  [DATA_WIDTH-1:0]           out_data_7,
    output  [CTRL_WIDTH-1:0]           out_ctrl_7,
    output                             out_wr_7,
    input                              out_rdy_7,
*****/

     // interface to SRAM
     output [SRAM_ADDR_WIDTH-1:0]       wr_0_addr,
     output                             wr_0_req,
     input                              wr_0_ack,
     output [SRAM_DATA_WIDTH-1:0]       wr_0_data,
     
     input                              rd_0_ack,
     input  [SRAM_DATA_WIDTH-1:0]       rd_0_data,
     input                              rd_0_vld,
     output [SRAM_ADDR_WIDTH-1:0]       rd_0_addr,
     output                             rd_0_req,

     // interface to DRAM
     /* TBD */

     // register interface
     input                              reg_req,
     output                             reg_ack,
     input                              reg_rd_wr_L,
     input [`UDP_REG_ADDR_WIDTH-1:0]    reg_addr,
     output [`CPCI_NF2_DATA_WIDTH-1:0]  reg_rd_data,
     input [`CPCI_NF2_DATA_WIDTH-1:0]   reg_wr_data,
   
     // misc
     input                              reset,
     input                              clk);

   reg [1:0] div_clk;

   always @(posedge clk)
   begin
     if (reset) div_clk <= 0;
     else div_clk <= div_clk + 1;
   end


   function integer log2;
      input integer number;
      begin
         log2=0;
         while(2**log2<number) begin
            log2=log2+1;
         end
      end
   endfunction // log2

   //---------- Internal parameters -----------

   localparam NUM_IQ_BITS = log2(NUM_INPUT_QUEUES);
   
   localparam IN_ARB_STAGE_NUM = 2;
   localparam OP_LUT_STAGE_NUM = 4;
   localparam OQ_STAGE_NUM     = 6;
   
   //-------- Input arbiter wires/regs ------- 
   wire                             in_arb_in_reg_req;
   wire                             in_arb_in_reg_ack;
   wire                             in_arb_in_reg_rd_wr_L;
   wire [`UDP_REG_ADDR_WIDTH-1:0]   in_arb_in_reg_addr;
   wire [`CPCI_NF2_DATA_WIDTH-1:0]  in_arb_in_reg_data;
   wire [UDP_REG_SRC_WIDTH-1:0]     in_arb_in_reg_src;

   //------- output port lut wires/regs ------
   wire [CTRL_WIDTH-1:0]            op_lut_in_ctrl;
   wire [DATA_WIDTH-1:0]            op_lut_in_data;
   wire                             op_lut_in_wr;
   wire                             op_lut_in_rdy;

   wire                             op_lut_in_reg_req;
   wire                             op_lut_in_reg_ack;
   wire                             op_lut_in_reg_rd_wr_L;
   wire [`UDP_REG_ADDR_WIDTH-1:0]   op_lut_in_reg_addr;
   wire [`CPCI_NF2_DATA_WIDTH-1:0]  op_lut_in_reg_data;
   wire [UDP_REG_SRC_WIDTH-1:0]     op_lut_in_reg_src;

   //------- fifo wires/regs ------
   wire [CTRL_WIDTH-1:0]            fifo_in_ctrl;
   wire [DATA_WIDTH-1:0]            fifo_in_data;
   wire                             fifo_in_wr;
   wire                             fifo_in_rdy;

   //------- ana wires/regs ------
   wire [CTRL_WIDTH-1:0]            ana_in_ctrl;
   wire [DATA_WIDTH-1:0]            ana_in_data;
   wire                             ana_in_wr;
   wire                             ana_in_rdy;

   wire                             ana_in_reg_req;
   wire                             ana_in_reg_ack;
   wire                             ana_in_reg_rd_wr_L;
   wire [`UDP_REG_ADDR_WIDTH-1:0]   ana_in_reg_addr;
   wire [`CPCI_NF2_DATA_WIDTH-1:0]  ana_in_reg_data;
   wire [UDP_REG_SRC_WIDTH-1:0]     ana_in_reg_src;

   //------- output queues wires/regs ------
   wire [CTRL_WIDTH-1:0]            oq_in_ctrl;
   wire [DATA_WIDTH-1:0]            oq_in_data;
   wire                             oq_in_wr;
   wire                             oq_in_rdy;

   wire                             oq_in_reg_req;
   wire                             oq_in_reg_ack;
   wire                             oq_in_reg_rd_wr_L;
   wire [`UDP_REG_ADDR_WIDTH-1:0]   oq_in_reg_addr;
   wire [`CPCI_NF2_DATA_WIDTH-1:0]  oq_in_reg_data;
   wire [UDP_REG_SRC_WIDTH-1:0]     oq_in_reg_src;

   //-------- UDP register master wires/regs ------- 
   wire                             udp_reg_req_in;
   wire                             udp_reg_ack_in;
   wire                             udp_reg_rd_wr_L_in;
   wire [`UDP_REG_ADDR_WIDTH-1:0]   udp_reg_addr_in;
   wire [`CPCI_NF2_DATA_WIDTH-1:0]  udp_reg_data_in;
   wire [UDP_REG_SRC_WIDTH-1:0]     udp_reg_src_in;


   //--------- Connect the data path -----------
   
   input_arbiter
     #(.DATA_WIDTH(DATA_WIDTH),
       .CTRL_WIDTH(CTRL_WIDTH),
       .UDP_REG_SRC_WIDTH (UDP_REG_SRC_WIDTH),
       .STAGE_NUMBER(IN_ARB_STAGE_NUM))
   input_arbiter
     (
    .out_data             (op_lut_in_data),
    .out_ctrl             (op_lut_in_ctrl),
    .out_wr               (op_lut_in_wr),
    .out_rdy              (op_lut_in_rdy),
                          
      // --- Interface to the input queues
    .in_data_0            (in_data_0),
    .in_ctrl_0            (in_ctrl_0),
    .in_wr_0              (in_wr_0),
    .in_rdy_0             (in_rdy_0),
                          
    .in_data_1            (in_data_1),
    .in_ctrl_1            (in_ctrl_1),
    .in_wr_1              (in_wr_1),
    .in_rdy_1             (in_rdy_1),
                          
    .in_data_2            (in_data_2),
    .in_ctrl_2            (in_ctrl_2),
    .in_wr_2              (in_wr_2),
    .in_rdy_2             (in_rdy_2),
                          
    .in_data_3            (in_data_3),
    .in_ctrl_3            (in_ctrl_3),
    .in_wr_3              (in_wr_3),
    .in_rdy_3             (in_rdy_3),
                          
    .in_data_4            (in_data_4),
    .in_ctrl_4            (in_ctrl_4),
    .in_wr_4              (in_wr_4),
    .in_rdy_4             (in_rdy_4),
                          
    .in_data_5            (in_data_5),
    .in_ctrl_5            (in_ctrl_5),
    .in_wr_5              (in_wr_5),
    .in_rdy_5             (in_rdy_5),
                          
    .in_data_6            (in_data_6),
    .in_ctrl_6            (in_ctrl_6),
    .in_wr_6              (in_wr_6),
    .in_rdy_6             (in_rdy_6),
                          
    .in_data_7            (in_data_7),
    .in_ctrl_7            (in_ctrl_7),
    .in_wr_7              (in_wr_7),
    .in_rdy_7             (in_rdy_7),
                          
      // --- Register interface
    .reg_req_in           (in_arb_in_reg_req),
    .reg_ack_in           (in_arb_in_reg_ack),
    .reg_rd_wr_L_in       (in_arb_in_reg_rd_wr_L),
    .reg_addr_in          (in_arb_in_reg_addr),
    .reg_data_in          (in_arb_in_reg_data),
    .reg_src_in           (in_arb_in_reg_src),

    .reg_req_out          (op_lut_in_reg_req),
    .reg_ack_out          (op_lut_in_reg_ack),
    .reg_rd_wr_L_out      (op_lut_in_reg_rd_wr_L),
    .reg_addr_out         (op_lut_in_reg_addr),
    .reg_data_out         (op_lut_in_reg_data),
    .reg_src_out          (op_lut_in_reg_src),
                          
      // --- Misc
    .reset                (reset),
    .clk                  (clk)
    );

   output_port_lookup
     #(.DATA_WIDTH(DATA_WIDTH),
       .CTRL_WIDTH(CTRL_WIDTH),
       .UDP_REG_SRC_WIDTH (UDP_REG_SRC_WIDTH),
       .INPUT_ARBITER_STAGE_NUM(IN_ARB_STAGE_NUM),
       .STAGE_NUM(OP_LUT_STAGE_NUM),
       .NUM_OUTPUT_QUEUES(NUM_OUTPUT_QUEUES),
       .NUM_IQ_BITS(NUM_IQ_BITS))
   output_port_lookup
     (.out_data            (fifo_in_data),
     .out_ctrl             (fifo_in_ctrl),
     .out_wr               (fifo_in_wr),
     .out_rdy              (fifo_in_rdy),
                           
      // --- Interface to the rx input queues
     .in_data              (op_lut_in_data),
     .in_ctrl              (op_lut_in_ctrl),
     .in_wr                (op_lut_in_wr),
     .in_rdy               (op_lut_in_rdy),
                           
      // --- Register interface
     .reg_req_in           (op_lut_in_reg_req),
     .reg_ack_in           (op_lut_in_reg_ack),
     .reg_rd_wr_L_in       (op_lut_in_reg_rd_wr_L),
     .reg_addr_in          (op_lut_in_reg_addr),
     .reg_data_in          (op_lut_in_reg_data),
     .reg_src_in           (op_lut_in_reg_src),

     .reg_req_out          (ana_in_reg_req),
     .reg_ack_out          (ana_in_reg_ack),
     .reg_rd_wr_L_out      (ana_in_reg_rd_wr_L),
     .reg_addr_out         (ana_in_reg_addr),
     .reg_data_out         (ana_in_reg_data),
     .reg_src_out          (ana_in_reg_src),

      // --- Misc
     .clk                  (clk),
     .reset                (reset));
    
   reg [63:0] ana_count;

   always @(posedge clk)
   begin
     if (reset) ana_count <= 0;
     else ana_count <= ana_count + 1;
   end

   wire [63:0] dut_din;
   wire [31:0] dut_imem_dout;
   wire [63:0] dut_dmem_dout;
   wire [8:0] dut_addr;
   wire dut_imem_wen;
   wire dut_dmem_wen;
   wire dut_en;
   wire dut_rst;
   wire [8:0] dut_pc;
   wire [31:0] dut_ins;
   wire [63:0] dut_mem_addr;
   wire [63:0] dut_mem_din;
   wire dut_mem_wen;
   wire dut_ex_mem_wr;
   wire [63:0] dut_ex_r1_data;
   wire [63:0] dut_ex_r2_data;
   wire [63:0] dut_wb_data;
   wire [2:0] dut_wb_reg_addr;
   wire dut_wb_reg_write;
   wire [2:0] dut_r0_addr;
   wire [2:0] dut_r1_addr;
   wire [1:0] dut_ex_br_ctrl;
   wire dut_branch;
   wire [8:0] dut_br_addr;
   wire [63:0] dut_alu_out;
   wire [63:0] dut_rf_r1_out;
   wire [63:0] perf_dout;
   wire [63:0] perf_din;
   wire [63:0] perf_addr;
   wire perf_wren;

    datapath64bit UUT (
      .clk(div_clk[0]),
      .instruction(dut_ins), 
      .PC(dut_pc), 
      .rst(dut_rst), 
      .one(16'd1), 
      .MEM_ADDR(dut_mem_addr),
      .MEM_WEN(dut_mem_wen),
      .en(dut_en), 
      .MEM_DIN(dut_mem_din),
      .INS_WEN(dut_imem_wen), 
      .INS_DIN(dut_din[31:0]), 
      .INS_ADDR(dut_addr[8:0]),
      .DATA_WEN(dut_dmem_wen), 
      .DATA_DIN(dut_din), 
      .DATA_ADDR(dut_addr[7:0]),
      .DATA_DOUT(dut_dmem_dout),
      .INS_DOUT(dut_imem_dout),
      .ex_mem_wr(dut_ex_mem_wr),
      .ex_r1_data(dut_ex_r1_data),
      .ex_r2_data(dut_ex_r2_data),
      .wb_data(dut_wb_data),
      .wb_reg_addr(dut_wb_reg_addr),
      .wb_reg_write(dut_wb_reg_write),
      .r0_addr(dut_r0_addr),
      .r1_addr(dut_r1_addr),
      .ex_br_ctrl(dut_ex_br_ctrl),
      .branch(dut_branch),
      .br_addr(dut_br_addr),
      .alu_out(dut_alu_out),
      .rf_r1_out(dut_rf_r1_out),
      .clk_2x(clk),
      .PERF_DIN(perf_din),
      .PERF_DOUT(perf_dout),
      .PERF_WREN(perf_wren),
      .PERF_ADDR(perf_addr)
    );

   analyzer16x64x64 #(
      .DATA_WIDTH(DATA_WIDTH),
      .CTRL_WIDTH(CTRL_WIDTH),
      .UDP_REG_SRC_WIDTH(UDP_REG_SRC_WIDTH)
   ) ana (
      .din0       ({56'd0, dut_mem_addr[7:0]}),
      .din1       (dut_mem_din[63:0]),
      .din2       (dut_rf_r1_out),
      .din3       (dut_ex_r1_data),
      .din4       (dut_ex_r2_data),
      .din5       (dut_wb_data),
      .din6       ({61'd0, dut_wb_reg_addr}),
      .din7       ({63'd0, dut_wb_reg_write}),
      .din8       ({61'd0, dut_r0_addr}),
      .din9       ({63'd0, dut_branch}),
      .din10      (perf_wren),
      .din11      (perf_din),
      .din12      (perf_dout),
      .din13      (perf_addr),
      .din14      ({55'd0, dut_pc}),
      .din15      ({32'd0, dut_ins}),
      .trigger    (perf_addr[32]),

      .dut_imem_in(dut_imem_dout),
      .dut_dmem_in(dut_dmem_dout),

      .dut_en(dut_en),
      .dut_rst(dut_rst),
      .dut_data_out(dut_din),
      .dut_addr_out(dut_addr),
      .dut_imem_wen(dut_imem_wen),
      .dut_dmem_wen(dut_dmem_wen),

      // --- Register interface
      .reg_req_in                        (ana_in_reg_req),
      .reg_ack_in                        (ana_in_reg_ack),
      .reg_rd_wr_L_in                    (ana_in_reg_rd_wr_L),
      .reg_addr_in                       (ana_in_reg_addr),
      .reg_data_in                       (ana_in_reg_data),
      .reg_src_in                        (ana_in_reg_src),

      .reg_req_out                       (oq_in_reg_req),
      .reg_ack_out                       (oq_in_reg_ack),
      .reg_rd_wr_L_out                   (oq_in_reg_rd_wr_L),
      .reg_addr_out                      (oq_in_reg_addr),
      .reg_data_out                      (oq_in_reg_data),
      .reg_src_out                       (oq_in_reg_src),

      .clk        (clk),
      .rdclk      (div_clk[0]),
      .rst        (reset)
   );



  convertable_fifo_controller
   #(
      .DATA_WIDTH(DATA_WIDTH),
      .CTRL_WIDTH(CTRL_WIDTH)
   )
  fifo (  
		  .in_data(fifo_in_data),
      .in_ctrl(fifo_in_ctrl),
      .in_wr(fifo_in_wr),
      .in_rdy(fifo_in_rdy),

      .out_data(oq_in_data),
      .out_ctrl(oq_in_ctrl),
      .out_wr(oq_in_wr),
      .out_rdy(oq_in_rdy),

      // --- CPU interface
      .cpu_addr_in(perf_addr),
      .cpu_din(perf_dout),
      .cpu_wen(perf_wren),
		  .cpu_dout(perf_din),

      // misc
      .reset(reset),
      .clk(clk)
   );
   
   output_queues
     #(.DATA_WIDTH(DATA_WIDTH),
       .CTRL_WIDTH(CTRL_WIDTH),
       .UDP_REG_SRC_WIDTH (UDP_REG_SRC_WIDTH),
       .OP_LUT_STAGE_NUM(OP_LUT_STAGE_NUM),
       .NUM_OUTPUT_QUEUES(NUM_OUTPUT_QUEUES),
       .STAGE_NUM(OQ_STAGE_NUM),
       .SRAM_ADDR_WIDTH(SRAM_ADDR_WIDTH))
   output_queues
     (// --- data path interface
    .out_data_0       (out_data_0),
    .out_ctrl_0       (out_ctrl_0),
    .out_wr_0         (out_wr_0),
    .out_rdy_0        (out_rdy_0),
                      
    .out_data_1       (out_data_1),
    .out_ctrl_1       (out_ctrl_1),
    .out_wr_1         (out_wr_1),
    .out_rdy_1        (out_rdy_1),
                      
    .out_data_2       (out_data_2),
    .out_ctrl_2       (out_ctrl_2),
    .out_wr_2         (out_wr_2),
    .out_rdy_2        (out_rdy_2),
                      
    .out_data_3       (out_data_3),
    .out_ctrl_3       (out_ctrl_3),
    .out_wr_3         (out_wr_3),
    .out_rdy_3        (out_rdy_3),
                      
    .out_data_4       (out_data_4),
    .out_ctrl_4       (out_ctrl_4),
    .out_wr_4         (out_wr_4),
    .out_rdy_4        (out_rdy_4),
                      
    .out_data_5       (out_data_5),
    .out_ctrl_5       (out_ctrl_5),
    .out_wr_5         (out_wr_5),
    .out_rdy_5        (out_rdy_5),
                      
    .out_data_6       (out_data_6),
    .out_ctrl_6       (out_ctrl_6),
    .out_wr_6         (out_wr_6),
    .out_rdy_6        (out_rdy_6),
                      
    .out_data_7       (out_data_7),
    .out_ctrl_7       (out_ctrl_7),
    .out_wr_7         (out_wr_7),
    .out_rdy_7        (out_rdy_7),
                      
      // --- Interface to the previous module
    .in_data          (oq_in_data),
    .in_ctrl          (oq_in_ctrl),
    .in_rdy           (oq_in_rdy),
    .in_wr            (oq_in_wr),
                      
      // --- Register interface
    .reg_req_in       (oq_in_reg_req),
    .reg_ack_in       (oq_in_reg_ack),
    .reg_rd_wr_L_in   (oq_in_reg_rd_wr_L),
    .reg_addr_in      (oq_in_reg_addr),
    .reg_data_in      (oq_in_reg_data),
    .reg_src_in       (oq_in_reg_src),

    .reg_req_out      (udp_reg_req_in),
    .reg_ack_out      (udp_reg_ack_in),
    .reg_rd_wr_L_out  (udp_reg_rd_wr_L_in),
    .reg_addr_out     (udp_reg_addr_in),
    .reg_data_out     (udp_reg_data_in),
    .reg_src_out      (udp_reg_src_in),

      // --- SRAM sm interface
    .wr_0_addr        (wr_0_addr),
    .wr_0_req         (wr_0_req),
    .wr_0_ack         (wr_0_ack),
    .wr_0_data        (wr_0_data),
    .rd_0_ack         (rd_0_ack),
    .rd_0_data        (rd_0_data),
    .rd_0_vld         (rd_0_vld),
    .rd_0_addr        (rd_0_addr),
    .rd_0_req         (rd_0_req),
                      
                      
      // --- Misc
    .clk              (clk),
    .reset            (reset));


   //--------------------------------------------------
   //
   // --- User data path register master
   //
   //     Takes the register accesses from core,
   //     sends them around the User Data Path module
   //     ring and then returns the replies back
   //     to the core
   //
   //--------------------------------------------------

   udp_reg_master #(
      .UDP_REG_SRC_WIDTH (UDP_REG_SRC_WIDTH)
   ) udp_reg_master (
      // Core register interface signals
      .core_reg_req                          (reg_req),
      .core_reg_ack                          (reg_ack),
      .core_reg_rd_wr_L                      (reg_rd_wr_L),

      .core_reg_addr                         (reg_addr),

      .core_reg_rd_data                      (reg_rd_data),
      .core_reg_wr_data                      (reg_wr_data),

      // UDP register interface signals (output)
      .reg_req_out                           (in_arb_in_reg_req),
      .reg_ack_out                           (in_arb_in_reg_ack),
      .reg_rd_wr_L_out                       (in_arb_in_reg_rd_wr_L),

      .reg_addr_out                          (in_arb_in_reg_addr),
      .reg_data_out                          (in_arb_in_reg_data),

      .reg_src_out                           (in_arb_in_reg_src),

      // UDP register interface signals (input)
      .reg_req_in                            (udp_reg_req_in),
      .reg_ack_in                            (udp_reg_ack_in),
      .reg_rd_wr_L_in                        (udp_reg_rd_wr_L_in),

      .reg_addr_in                           (udp_reg_addr_in),
      .reg_data_in                           (udp_reg_data_in),

      .reg_src_in                            (udp_reg_src_in),

      //
      .clk                                   (clk),
      .reset                                 (reset)
   );


endmodule // user_data_path

