`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:28 03/02/2022 
// Design Name: 
// Module Name:    ID_EXreg 
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
module ID_EXreg(
    input [63:0] ID_data0,
    input [63:0] ID_data1,
    input [1:0] ID_br_ctrl,
    input [4:0] ID_dest,
    input [9:0] ID_br_addr,
    input [5:0] ID_alu_ctrl,
    input ID_mem_ctrl,
    input [1:0] ID_wb_ctrl,
	 input [1:0] ID_tid,
	 
	 
    output [63:0] EX_d0,
    output [63:0] EX_d1,
	 output [1:0] EX_br_ctrl,
    output [4:0] EX_dest,
    output [9:0] EX_br_addr,
    output [5:0] EX_alu_ctrl,
    output EX_mem_ctrl,
    output [1:0] EX_wb_ctrl,
	 output [1:0] EX_tid,
	 
	 
    input clk,
    input reset
    );

	 reg [63:0] data0;
	 reg [63:0] data1;
	 reg [1:0] br_ctrl;
	 reg [4:0] dest;
	 reg [9:0] br_addr;
	 reg [5:0] alu_ctrl;
	 reg mem_ctrl;
	 reg [1:0] wb_ctrl;
	 reg [1:0] tid;
	 
	 
	 assign EX_d0 = data0;
    assign EX_d1 = data1;
	 assign EX_br_ctrl = br_ctrl;
    assign EX_dest = dest;
    assign EX_br_addr = br_addr;
    assign EX_alu_ctrl = alu_ctrl;
    assign EX_mem_ctrl = mem_ctrl;
    assign EX_wb_ctrl = wb_ctrl;
	 assign EX_tid = tid;
	 
	 
	 always @(posedge clk)
		begin
			if (reset)
			begin
				data0 <= 0;
				data1 <= 0;
				br_ctrl <= 0;
	         dest <= 0;
	         br_addr <= 0;
	         alu_ctrl <= 0;
	         mem_ctrl <= 0;
	         wb_ctrl <= 0;
				tid <= 0;
			end
			else
			begin
				data0 <= ID_data0;
				data1 <= ID_data1;
				br_ctrl <= ID_br_ctrl;
	         dest <= ID_dest;
	         br_addr <= ID_br_addr;
	         alu_ctrl <= ID_alu_ctrl;
	         mem_ctrl <= ID_mem_ctrl;
	         wb_ctrl <= ID_wb_ctrl;
				tid <= ID_tid;
			end
	  end
endmodule
