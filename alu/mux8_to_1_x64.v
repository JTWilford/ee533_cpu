`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:19:50 02/19/2022 
// Design Name: 
// Module Name:    mux8_to_1_x64 
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
module mux8_to_1_x64(
    input [63:0] X0,
    input [63:0] X1,
    input [63:0] X2,
    input [63:0] X3,
    input [63:0] X4,
    input [63:0] X5,
    input [63:0] X6,
    input [63:0] X7,
	 input [63:0] XD,
    input [2:0] S,
	 input EN,
    output [63:0] Q
    );
	
	reg [63:0] out;
	assign Q = out;

	always @(*)
	begin
		if (EN)
		begin
			case (S)
				3'b000:	out = X0;
				3'b001:	out = X1;
				3'b010:	out = X2;
				3'b011:	out = X3;
				3'b100:	out = X4;
				3'b101:	out = X5;
				3'b110:	out = X6;
				3'b111:	out = X7;
				default:	out = X0;
			endcase
		end
		else
		begin
			out = XD;
		end
	end

endmodule
