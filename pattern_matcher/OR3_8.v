`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:37 04/16/2022 
// Design Name: 
// Module Name:    OR3_8 
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
module OR3_8(
    input [15:0] I0,
    input [15:0] I1,
    input [15:0] I2,
    output [15:0] O
    );
	 
	 assign O = I0 | I1 | I2;


endmodule
