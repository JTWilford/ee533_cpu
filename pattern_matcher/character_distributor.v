`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:19 04/16/2022 
// Design Name: 
// Module Name:    character_distributor 
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
module character_distributor(
    input [127:0] character_in,
    output [63:0] char_out0,
    output [63:0] char_out1,
    output [63:0] char_out2,
    output [63:0] char_out3,
    output [63:0] char_out4,
    output [63:0] char_out5,
    output [63:0] char_out6,
    output [63:0] char_out7,
    output [63:0] char_out8
    );

	 assign char_out0 = character_in[63:0];
	 assign char_out1 = character_in[71:8];
	 assign char_out2 = character_in[79:16];
	 assign char_out3 = character_in[87:24];
	 assign char_out4 = character_in[95:32];
	 assign char_out5 = character_in[103:40];
	 assign char_out6 = character_in[111:48];
	 assign char_out7 = character_in[119:56];
	 assign char_out8 = character_in[127:64];

endmodule
