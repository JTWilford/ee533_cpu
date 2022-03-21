`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:15:33 03/13/2022 
// Design Name: 
// Module Name:    dmem_write_protect 
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
module dmem_write_protect(
    input mem_wr,
    input [31:0] addr_hi,
    output wren
    );
	 
	 assign wren = mem_wr & ~(| addr_hi[31:0]);


endmodule
