`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:20 03/09/2022 
// Design Name: 
// Module Name:    extend_10_to_64 
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
module extend_10_to_64(
    input [8:0] addr_in,
    output [63:0] addr_out
    );

	assign addr_out = {55'd0,addr_in};

endmodule
