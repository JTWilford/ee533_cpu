`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:41 03/12/2022 
// Design Name: 
// Module Name:    out_data_mux 
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
module out_data_mux(
    input sel,
    input cpu_pkt_ctrl_pre,
    input [8:0] data0,
    input [63:0] data1,
    input [7:0] data2,
    output reg [63:0] dout,
	 input clk,
	 input rst
    );
	 
	 always @(*)
	 begin
			case ({sel, cpu_pkt_ctrl_pre})
				2'b00:	dout = data1;
				2'b01:	dout = {56'd0, data2};
				2'b10:	dout = {55'd0, data0};
				2'b11:	dout = {55'd0, data0};
			endcase
	 end


endmodule
