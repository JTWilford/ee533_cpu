`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:32 03/05/2022 
// Design Name: 
// Module Name:    mux2_1_x3 
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
module mux2_1_x3(
    input [2:0] I0,
    input [2:0] I1,
    output [2:0] O,
    input S
    );
	
	reg [2:0] out;
	assign O = out;
	
	always @(*)
	begin
		case (S)
			1'b0:	out = I0;
			1'b1:	out = I1;
		endcase
	end


endmodule
