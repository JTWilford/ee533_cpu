`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:52 03/05/2022 
// Design Name: 
// Module Name:    vadder64 
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
module vadder64(
    input [63:0] A,
    input [63:0] B,
    input Cin,
    output Cout,
    output [63:0] S
    );
	 
	 reg [64:0] out;
	 assign S = out[63:0];
	 assign Cout = out[64];
	 
	 always @(*)
	 begin
		out = A + B + Cin;
	 end


endmodule
