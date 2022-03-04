`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:50:30 03/02/2022 
// Design Name: 
// Module Name:    signextend 
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
module signextend(
    input [11:0] imm_in,
    output [63:0] imm_extend
    );
	 
	 reg [63:0] imm_out;
	 assign imm_extend = imm_out;
	 
	 always @(*)
	 begin
		case (imm_in[11])
			1'b0:	imm_out = {52'h0000000000000, imm_in};
			1'b1:	imm_out = {52'hFFFFFFFFFFFFF, imm_in};
		endcase
	 end

endmodule
