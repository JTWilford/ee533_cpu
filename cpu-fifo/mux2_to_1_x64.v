`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:49 03/02/2022 
// Design Name: 
// Module Name:    mux2_to_1_x64 
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
module mux2_to_1_x64(
    input [63:0] EX_register_data,
    input [63:0] EX_immi_data,
    output [63:0] data_out,
    input s
    );
	
	reg [63:0] out;
	assign data_out = out;
	
	always @(*)
	begin
		case (s)
			1'b0: out = EX_register_data;
			1'b1: out = EX_immi_data;
		endcase
	end

endmodule
