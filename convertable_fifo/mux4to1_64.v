`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:57:44 03/09/2022 
// Design Name: 
// Module Name:    mux4to1_64 
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
module mux4to1_64(
		input [8:0] data0,
		input [8:0] data1,
		input data2,
		input data3,
		input [1:0] sel,
		output [8:0] data_out
    );
		
		reg [63:0] out;
		assign data_out = out;
		
		always @(*)
		begin
			case(sel)
			2'b00: out = data0;
			2'b01: out = data1;
			2'b10: out = {7'd0, data2};
			2'b11: out = {7'd0, data3};
			endcase
		end

endmodule
