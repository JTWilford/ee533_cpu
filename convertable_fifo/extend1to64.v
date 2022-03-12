`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:33 03/09/2022 
// Design Name: 
// Module Name:    extend1to64 
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
module extend1to64(
    input data_in,
    output [63:0] data_out
    );

	assign data_out = {63'd0,data_in};

endmodule
