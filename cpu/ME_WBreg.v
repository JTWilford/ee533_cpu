`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:20:34 03/25/2022 
// Design Name: 
// Module Name:    ME_WBreg 
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
module ME_WBreg(
    input [1:0] ME_wb_ctrl,
    input [63:0] ME_data,
    input [4:0] ME_dest,
    input [1:0] ME_tid,
    output [1:0] WB_wb_ctrl,
    output [63:0] WB_data,
    output [4:0] WB_dest,
    output [1:0] WB_tid,
    input clk,
    input rst
    );
	 
	 reg [1:0] wb_ctrl;
	 reg [63:0] data;
	 reg [4:0] dest;
	 reg [1:0] tid;
	 
	 assign WB_wb_ctrl = wb_ctrl;
	 assign WB_data = data;
	 assign WB_dest = dest;
	 assign WB_tid = tid;
	 
	 always @(posedge clk)
	 begin
		if(rst)
		begin
			wb_ctrl <= 0;
			data <= 0;
			dest <= 0;
			tid <= 0;
		end
		else
		begin
			wb_ctrl <= ME_wb_ctrl;
			data <= ME_data;
			dest <= ME_dest;
			tid <= ME_tid;
		end
	 end


endmodule
