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
		.cpu_addr_in			(perf_addr),
		.cpu_din				(perf_dout),
		.cpu_wen				(perf_wren),
		.cpu_dout				(perf_din),
		.reset					(rst2),
		.clk					(clk)
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
