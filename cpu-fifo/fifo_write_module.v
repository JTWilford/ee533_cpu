`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:48:56 03/09/2022 
// Design Name: 
// Module Name:    fifo_write_module 
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
module fifo_write_module(
		input endpkt,
		input done,
		input cpu_write,
		input [8:0] rd_ptr,
		input [8:0] wr_ptr,
		input clk,
		input rst,
		output hold,
		output fifo_done
    );
	 reg hold_out;
	 reg fifo_done_out;
	 wire fifo_empty;
	 assign hold = hold_out;
	 assign fifo_done = fifo_done_out;
	 assign fifo_empty = (rd_ptr == wr_ptr);

	always @(*)
	begin
			if (rst)
			begin
				hold_out = 0;
				fifo_done_out = 0;
			end
			else
			begin
				if (~hold_out & endpkt)begin
					hold_out = 1;
					fifo_done_out = 0;
				end
				if (hold_out & done)begin
					fifo_done_out = 1;
				end
				if (hold_out & fifo_empty)begin
					hold_out = 0;
					fifo_done_out = 0;
				end
			end
	end

endmodule
