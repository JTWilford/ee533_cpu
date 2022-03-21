`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:47:54 03/04/2022 
// Design Name: 
// Module Name:    ip_extend 
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
module ip_extend(
		input [8:0] ip_in,
		output [15:0] ip_out
    );

	assign ip_out = {5'd0, ip_in};

endmodule
