`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:19 03/02/2022 
// Design Name: 
// Module Name:    BEZ_BNEZ_detect 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: j
//
//////////////////////////////////////////////////////////////////////////////////
module BEZ_BNEZ_detect(
    input [63:0] Reg_data,
    input BEZ_op,
	 input BNEZ_op,
    output Branch_signal
    );

	 wire nz_middle;
	 
	 assign nz_middle = | Reg_data[63:0];
	 assign Branch_signal = (nz_middle & BNEZ_op)|(~nz_middle & BEZ_op);
endmodule
