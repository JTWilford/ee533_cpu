`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:59:50 03/25/2022 
// Design Name: 
// Module Name:    EX_MEreg 
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
module EX_MEreg(
    input EX_mem_ctrl,
    input [1:0] EX_wb_ctrl,
    input [63:0] EX_data,
    input [63:0] EX_addr,
    input [4:0] EX_dest,
    input [1:0] EX_tid,
    output ME_mem_ctrl,
    output [1:0] ME_wb_ctrl,
    output [63:0] ME_data,
    output [63:0] ME_addr,
    output [4:0] ME_dest,
    output [1:0] ME_tid,
    input clk,
    input rst
    );
	 
	 reg mem_ctrl;
	 reg [1:0] wb_ctrl;
	 reg [63:0] data;
	 reg [63:0] addr;
	 reg [4:0] dest;
	 reg [1:0] tid;
	 
	 assign ME_mem_ctrl = mem_ctrl;
	 assign ME_wb_ctrl = wb_ctrl;
	 assign ME_data = data;
	 assign ME_addr = addr;
	 assign ME_dest = dest;
	 assign ME_tid = tid;
	 
	 always @(posedge clk)
	 begin
		if(rst)
		begin
			mem_ctrl <= 0;
			wb_ctrl <= 0;
			data <= 0;
			addr <= 0;
			dest <= 0;
			tid <= 0;
		end
		else
		begin
			mem_ctrl <= EX_mem_ctrl;
			wb_ctrl <= EX_wb_ctrl;
			data <= EX_data;
			addr <= EX_addr;
			dest <= EX_dest;
			tid <= EX_tid;
		end
	 end


endmodule
