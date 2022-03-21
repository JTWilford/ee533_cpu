`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:41 03/09/2022 
// Design Name: 
// Module Name:    mux2to1_64 
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
module mux2to1_64(
		input [63:0] data0,
		input [63:0] data1,
		input sel,
		output [63:0] data_out
    );
		
		reg [63:0] out;
		assign data_out =  out;
		
		always @(*)
		begin
			case(sel)
				1'b0:out = data0;
				1'b1:out = data1;
			endcase
		end

endmodule
