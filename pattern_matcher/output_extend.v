`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:47:16 04/16/2022 
// Design Name: 
// Module Name:    output_extend 
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
module output_extend(
    input [7:0] I0,
    input [7:0] I1,
    input [7:0] I2,
    input [7:0] I3,
    input [7:0] I4,
    input [7:0] I5,
    input [7:0] I6,
    input [7:0] I7,
    input [7:0] I8,
    output [15:0] Out0,
    output [15:0] Out1,
    output [15:0] Out2,
    output [15:0] Out3,
    output [15:0] Out4,
    output [15:0] Out5,
    output [15:0] Out6,
    output [15:0] Out7,
    output [15:0] Out8
    );

	assign Out0 = {8'd0, I0};
	assign Out1 = {7'd0, I1, 1'b0};
	assign Out2 = {6'd0, I2, 2'd0};
	assign Out3 = {5'd0, I3, 3'd0};
	assign Out4 = {4'd0, I4, 4'd0};
	assign Out5 = {3'd0, I5, 5'd0};
	assign Out6 = {2'd0, I6, 6'd0};
	assign Out7 = {1'd0, I7, 7'd0};
	assign Out8 = {I8, 8'd0};


endmodule
