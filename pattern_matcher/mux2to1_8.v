`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:30:25 04/16/2022 
// Design Name: 
// Module Name:    mux2to1_8 
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
module mux2to1_8(
		input [7:0] data1,
		input sel,
		output [7:0] data_out
    );
		
		reg [7:0] out;
		assign data_out =  out;
		
		always @(*)
		begin
			case(sel)
				1'b0:out = 8'b00000000;
				1'b1:out = data1;
			endcase
		end


endmodule
