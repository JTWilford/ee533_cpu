`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:04 03/09/2022 
// Design Name: 
// Module Name:    ctl_data_mux 
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
module ctl_data_mux(
		input [8:0] data0,
		input [63:0] data1,
		input [7:0] data2,
		input sel,
		input pkt_ctrl,
		output [63:0] data_out
    );
	 wire [63:0] d0;
	 wire [63:0] d2;
	 assign d0 = {55'd0, data0[8:0]};
	 assign d2 = {56'd0, data2[7:0]};
	 reg [63:0] dout;
	 assign data_out = dout;
		
		always @(*)
		begin
			case ({sel, pkt_ctrl})
				2'b00:	dout[63:0] = data1[63:0];
				2'b01:	dout[63:0] = data1[63:0];
				2'b10:	dout[63:0] = d0;
				2'b11:	dout[63:0] = d2;
			endcase
		end

endmodule
