`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:59:46 03/02/2022 
// Design Name: 
// Module Name:    comp_sign_extend 
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
module comp_sign_extend(
    input [63:0] din,
    input ext,
    output [64:0] dout
    );
	 
	 assign dout[64:0] = {~ext & din[63], din[63:0]};

endmodule
