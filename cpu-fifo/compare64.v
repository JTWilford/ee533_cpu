`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:52:03 02/19/2022 
// Design Name: 
// Module Name:    compare64 
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
module compare64(
    input [63:0] A,
    input [63:0] B,
    output LT,
    output EQ
    );

	assign LT = A < B;
	assign EQ = A == B;

endmodule
