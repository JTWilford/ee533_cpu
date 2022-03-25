`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:49 03/02/2022 
// Design Name: 
// Module Name:    mux2_to_1_x64 
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
module mux2_to_1_x64(
    input [63:0] I0,
    input [63:0] I1,
    output [63:0] O,
    input S
    );
	
	reg [63:0] out;
	assign O = out;
	
	always @(*)
	begin
		case (S)
			1'b0: out = I0;
			1'b1: out = I1;
		endcase
	end

endmodule
