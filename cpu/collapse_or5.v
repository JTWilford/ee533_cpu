`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:07:34 03/23/2022 
// Design Name: 
// Module Name:    collapse_or5 
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
module collapse_or5(
    input [4:0] I,
    output O
    );
	 
	 assign O = | I[4:0];


endmodule
