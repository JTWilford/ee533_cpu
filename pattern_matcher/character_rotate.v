`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:20 04/16/2022 
// Design Name: 
// Module Name:    character_rotate 
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
module character_rotate(
    input [63:0] pattern_in,
    output [63:0] pattern_out0,
    output [63:0] pattern_out1,
    output [63:0] pattern_out2,
    output [63:0] pattern_out3,
    output [63:0] pattern_out4,
    output [63:0] pattern_out5,
    output [63:0] pattern_out6,
    output [63:0] pattern_out7
    );

		assign pattern_out0 = pattern_in[63:0];
		assign pattern_out1 = {pattern_in[7:0],pattern_in[63:8]};
		assign pattern_out2 = {pattern_in[15:0],pattern_in[63:16]};
		assign pattern_out3 = {pattern_in[23:0],pattern_in[63:24]};
		assign pattern_out4 = {pattern_in[31:0],pattern_in[63:32]};
		assign pattern_out5 = {pattern_in[39:0],pattern_in[63:40]};
		assign pattern_out6 = {pattern_in[47:0],pattern_in[63:48]};
		assign pattern_out7 = {pattern_in[55:0],pattern_in[63:56]};
	

endmodule
