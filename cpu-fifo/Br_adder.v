`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:36 03/02/2022 
// Design Name: 
// Module Name:    Br_adder 
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
module Br_adder(
    input [8:0] ins_inc_addr,
    input [11:0] immi,
    output [8:0] ins_br_addr
    );
	 
	 reg [11:0] buffer;
	 
	 assign ins_br_addr[8:0] = buffer[8:0];
	 
	 always @(*)
	 begin
		buffer = ins_inc_addr + immi;
	 end

endmodule
