`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:37:16 03/25/2022 
// Design Name: 
// Module Name:    thread_arbiter_4way 
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
module thread_arbiter_4way(
		output [1:0] tid,
		input clk,
		input rst,
		input en
    );
	 
	 reg [1:0] tid_out;
	 assign tid = tid_out;
	 
	 always @(posedge clk)
	 begin
		if (rst)
		begin
			tid_out <= 0;
		end
		else
		begin
			tid_out <= tid + 1;
		end
	 end


endmodule
