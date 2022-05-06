`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:31:24 04/15/2022 
// Design Name: 
// Module Name:    find_first_one 
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
module find_first_one(
	input [7:0] x,
    output [2:0] y);

    wire [3:0] data_4;
    wire [1:0] data_2;


    assign y[2] = | x[7:4];
    assign data_4= y[2] ? x[7:4] : x[3:0] ;
    assign y[1] = | data_4[3:2];
    assign data_2 = y[1] ? data_4[3:2] : data_4[1:0];
    assign y[0] = data_2[1];

endmodule