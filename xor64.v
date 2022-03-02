`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:18:45 02/19/2022 
// Design Name: 
// Module Name:    xor64 
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
module xor64( A, B, S);
	input [63:0] A;
	input [63:0] B;
	output [63:0] S;
	 
	assign S = A ^ B;


endmodule
