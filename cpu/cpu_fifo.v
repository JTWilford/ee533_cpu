`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:57:01 03/14/2022 
// Design Name: 
// Module Name:    cpu_fifo 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cpu_fifo(
	input clk,
	input rst,
	input rst2
    );

	reg div_clk;
	always @(posedge clk) begin
		if (rst) 	div_clk <= 0;
		else		div_clk <= ~div_clk;
	end

	wire [63:0] test_data;
	wire [7:0] test_ctrl;
	wire test_rdy;
	wire test_wr;

	wire [63:0] perf_din;
	wire [63:0] perf_addr;
	wire [63:0] perf_dout;
	wire perf_wren;
	
	wire [63:0] fifo_din;
	wire [63:0] fifo_addr;
	wire [63:0] fifo_dout;
	wire fifo_wren;
	
	wire [63:0] tlv_din;
	wire [63:0] tlv_addr;
	wire [63:0] tlv_dout;
	wire tlv_wren;

	wire [63:0] pat_din;
	wire [63:0] pat_addr;
	wire [63:0] pat_dout;
	wire pat_wren;

	test_data_generator dgen (
		.out_rdy(test_rdy),
		.out_wr(test_wr),
		.out_ctrl(test_ctrl),
		.out_data(test_data),
		.clk(clk),
		.rst(rst2)
	);

	convertable_fifo_controller #(
		.DATA_WIDTH(64),
		.CTRL_WIDTH(8)
	) dut_fifo (
		.in_data				(test_data),
		.in_ctrl				(test_ctrl),
		.in_wr					(test_wr),
		.in_rdy					(test_rdy),
		// Output Interface
		.out_data				(/*DISCONNECT*/),
		.out_ctrl				(/*DISCONNECT*/),
		.out_wr					(/*DISCONNECT*/),
		.out_rdy				(1'b1),
		// CPU Interface
		.cpu_addr_in			(fifo_addr),
		.cpu_din				(fifo_dout),
		.cpu_wen				(fifo_wren),
		.cpu_dout				(fifo_din),
		.reset					(rst2),
		.clk					(clk)
	);

	tlv_decoder dut_tlv (
		.cpu_din				(tlv_dout),
		.cpu_ain				(tlv_addr),
		.cpu_wren				(tlv_wren),
		.cpu_dout				(tlv_din),
		.clk					(clk),
		.rst					(rst2)
	);

	pattern_cpu dut_pat (
		.cpu_din				(pat_dout),
		.cpu_ain				(pat_addr),
		.cpu_wren				(pat_wren),
		.cpu_dout				(pat_din),
		.clk					(clk),
		.rst					(rst2)
	);
	
	perf_mux dut_pmux(
    .cpu_din					(perf_dout),
    .cpu_ain					(perf_addr),
    .cpu_wren					(perf_wren),
    .cpu_dout					(perf_din),
    .dout0						(fifo_dout),
    .aout0						(fifo_addr),
    .din0						(fifo_din),
    .wrout0						(fifo_wren),
    .dout1						(tlv_dout),
    .aout1						(tlv_addr),
    .din1						(tlv_din),
    .wrout1						(tlv_wren),
    .dout2						(pat_dout),
    .aout2						(pat_addr),
    .din2						(pat_din),
    .wrout2						(pat_wren),
    .clk						(clk),
    .rst						(rst)
);

	datapath64bit dut_cpu (
		// Peripheral Interface
		.PERF_DIN					(perf_din),
		.PERF_ADDR					(perf_addr),
		.PERF_DOUT					(perf_dout),
		.PERF_WREN					(perf_wren),
		// Instruction Mem Interface
		.INS_ADDR					(12'd0),
		.INS_DIN					(32'd0),
		.INS_WEN					(1'b0),
		// Data Mem Interface
		.DATA_ADDR					(12'd0),
		.DATA_DIN					(64'd0),
		.DATA_WEN					(1'b0),
		// misc
		.clk						(div_clk),
		.clk_2x						(clk),
		.rst						(rst2),
		.en							(~rst2)
	);




endmodule
