`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:14:25 03/07/2022 
// Design Name: 
// Module Name:    data_mux 
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
module data_mux(
	input [63:0] data0,
	input [63:0] data1,
	output [63:0] data_out,
	input sel
    );
	
	reg [63:0] data_s;
	assign data_out =  data_s;
	
	always @(*)
	begin
		case(sel)
			1'b0: data_s = data0;
			1'b1: data_s = data1;
		endcase
	end

endmodule
