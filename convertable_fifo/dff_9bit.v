`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:12:20 03/10/2022 
// Design Name: 
// Module Name:    dff_64bit 
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
module dff_9bit(
    input [8:0] D,
    output [8:0] Q,
    input clk,
    input rst
    );
	 
	 reg [8:0] out;
	 assign Q = out;
	 
	 always @(posedge clk)
	 begin
		if (rst) begin
			out <= 0;
		end
		else begin
			out <= D;
		end
	 end

endmodule
