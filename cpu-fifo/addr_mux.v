`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:30 03/07/2022 
// Design Name: 
// Module Name:    addr_mux 
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
module addr_mux(
	input [8:0] addr0,
	input [8:0] addr1,
	output [8:0] addr_out,
	input sel
    );

	reg [8:0] addr_s;
	assign addr_out = addr_s;
	
	always @(*)
	begin
		case(sel)
			1'b0: addr_s = addr0;
			1'b1: addr_s = addr1;
		endcase 
	end

endmodule
