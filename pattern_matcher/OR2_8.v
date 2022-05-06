`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:55:54 04/16/2022 
// Design Name: 
// Module Name:    OR2_8 
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
module OR2_8(
    input [7:0] I0,
    input [7:0] I1,
    output [7:0] O
    );
	 
	 assign O = I0 | I1;


endmodule
