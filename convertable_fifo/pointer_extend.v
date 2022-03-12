`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:23 03/09/2022 
// Design Name: 
// Module Name:    pointer_extend 
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
module pointer_extend(
		input [8:0] ip_in,
		output [15:0] ip_out
    );

		assign ip_out = {6'b000000, ip_in};

endmodule
