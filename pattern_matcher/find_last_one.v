`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:37:28 04/15/2022 
// Design Name: 
// Module Name:    find_last_one 
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
module find_last_one(
    input [7:0] data,
    output [2:0] index
    );

    wire [3:0] data_4;
    wire [1:0] data_2;

    assign index[2] = ~|data[3:0];
    assign data_4 = index[2] ? data[7:4]:data[3:0];
    assign index[1] = ~|data_4[1:0];
    assign data_2 = index[1] ? data_4[3:2] : data_4[1:0];
    assign index[0] = ~data_2[0];
endmodule
