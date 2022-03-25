`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:48:43 03/25/2022 
// Design Name: 
// Module Name:    IF_IDreg 
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
module IF_IDreg(
    input [9:0] IF_pc,
    output [9:0] ID_pc,
    input [1:0] IF_tid,
    output [1:0] ID_tid,
	 input clk,
	 input rst,
	 input en
    );
	 
	 reg [9:0] pc;
	 assign ID_pc = pc;
	 reg [1:0] tid;
	 assign ID_tid = tid;
	 
	 always @(posedge clk)
	 begin
		if (rst)
		begin
		end
		else if (en)
		begin
			pc <= IF_pc;
			tid <= IF_tid;
		end
	 end


endmodule
