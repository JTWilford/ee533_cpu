`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:34 04/16/2022 
// Design Name: 
// Module Name:    rotate_shift 
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
module rotate_shift(
    input [7:0] I0,
    input [7:0] I1,
    input [7:0] I2,
    input [7:0] I3,
    input [7:0] I4,
    input [7:0] I5,
    input [7:0] I6,
    input [7:0] I7,
    output [7:0] Out0,
    output [7:0] Out1,
    output [7:0] Out2,
    output [7:0] Out3,
    output [7:0] Out4,
    output [7:0] Out5,
    output [7:0] Out6,
    output [7:0] Out7
    );
	 
	 assign Out0[7:0] = I0[7:0];
	 assign Out1[7:0] = {I1[6:0],I1[7]};
	 assign Out2[7:0] = {I2[5:0],I2[7:6]};
	 assign Out3[7:0] = {I3[4:0],I3[7:5]};
	 assign Out4[7:0] = {I4[3:0],I4[7:4]};
	 assign Out5[7:0] = {I5[2:0],I5[7:3]};
	 assign Out6[7:0] = {I6[1:0],I6[7:2]};
	 assign Out7[7:0] = {I7[0],I7[7:1]};
		 




endmodule
