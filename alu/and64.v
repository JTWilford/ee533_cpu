`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:21 02/19/2022 
// Design Name: 
// Module Name:    and64 
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
module and64(
    input [63:0] A,
    input [63:0] B,
    output [63:0] S
    );
	
	assign S = A & B;

endmodule
