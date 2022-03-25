`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:56:36 03/23/2022 
// Design Name: 
// Module Name:    zero_reg_mux 
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
module zero_reg_mux(
		input sel,
		input [63:0] din,
		output [63:0] dout
    );
	 
	 reg [63:0] out;
	 assign dout = out;
	 
	 always @(*) begin
		case (sel)
			1'b0:	out = 64'd0;
			1'b1:	out = din;
		endcase
	 end


endmodule
