`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:18 03/25/2022 
// Design Name: 
// Module Name:    busmerge_2_5 
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
module busmerge_2_5(
    input [1:0] A,
    input [4:0] B,
    output [6:0] O
    );
	 
	 assign O = {A, B};


endmodule
