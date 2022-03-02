`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:27:49 03/02/2022 
// Design Name: 
// Module Name:    set_lsb 
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
module set_lsb(
    input set,
    output [63:0] dout
    );
	 
	 assign dout[63:0] = {63'd0, set};

endmodule
