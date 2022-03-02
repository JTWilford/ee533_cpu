`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:49:18 03/02/2022 
// Design Name: 
// Module Name:    mux2x1_8 
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
module mux2x1_8(
    input [7:0] I0,
    input [7:0] I1,
    output [7:0] O,
    input S
    );
	
	reg [7:0] out_reg;
	assign O = out_reg;
	 
	always @(*)
	begin
		case (S)
			1'b0:	out_reg = I0;
			1'b1: out_reg = I1;
		endcase
	end


endmodule
