`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:34:57 04/06/2022 
// Design Name: 
// Module Name:    reg_7bit 
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
module reg_7bit(
		input [6:0] D,
		output [6:0] Q,
		input clk,
		input rst
    );
	 
	 reg [6:0] out;
	 assign Q = out;
	 
	 always @(*)
	 begin
		if (rst) begin
			out <= 0;
		end
		else begin
			out <= D;
		end
	 end


endmodule
