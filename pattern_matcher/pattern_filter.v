`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:57:28 04/15/2022 
// Design Name: 
// Module Name:    pattern_filter 
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
module pattern_filter(
    input [63:0] pattern_in,
    input [7:0] wildcard,
    output [63:0] pattern_out
    );
	 
	 reg [63:0] pattern_O;
	 assign pattern_out = pattern_O;
	 
	 always @(*)begin
		case(wildcard[0])
			1'b0: pattern_O[7:0] = 8'b00000000;
			1'b1: pattern_O[7:0] = pattern_in[7:0];
		endcase
	 end

     always @(*)begin
		case(wildcard[1])
			1'b0: pattern_O[15:8] = 8'b00000000;
			1'b1: pattern_O[15:8] = pattern_in[15:8];
		endcase
	 end

     always @(*)begin
		case(wildcard[2])
			1'b0: pattern_O[23:16] = 8'b00000000;
			1'b1: pattern_O[23:16] = pattern_in[23:16];
		endcase
	 end

     always @(*)begin
		case(wildcard[3])
			1'b0: pattern_O[31:24] = 8'b00000000;
			1'b1: pattern_O[31:24] = pattern_in[31:24];
		endcase
	 end

     always @(*)begin
		case(wildcard[4])
			1'b0: pattern_O[39:32] = 8'b00000000;
			1'b1: pattern_O[39:32] = pattern_in[39:32];
		endcase
	 end

     always @(*)begin
		case(wildcard[5])
			1'b0: pattern_O[47:40] = 8'b00000000;
			1'b1: pattern_O[47:40] = pattern_in[47:40];
		endcase
	 end

     always @(*)begin
		case(wildcard[6])
			1'b0: pattern_O[55:48] = 8'b00000000;
			1'b1: pattern_O[55:48] = pattern_in[55:48];
		endcase
	 end

     always @(*)begin
		case(wildcard[7])
			1'b0: pattern_O[63:56] = 8'b00000000;
			1'b1: pattern_O[63:56] = pattern_in[63:56];
		endcase
	 end

endmodule
