`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:28:49 04/06/2022 
// Design Name: 
// Module Name:    special_reg_mux 
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
module special_reg_mux(
		input		[6:0]		addr,
		input		[63:0]	din,
		output	[63:0]	dout
    );
	 
	 localparam ZERO = 5'd0;
	 localparam TP = 5'd4;
	 
	 reg [63:0] out;
	 assign dout = out;
	 
	 always @(*)
	 begin
		case (addr[4:0])
			ZERO: begin
				out = 64'd0;
			end
			TP: begin
				out = {62'd0, addr[6:5]};
			end
			default: begin
				out = din;
			end
		endcase
	 end


endmodule
