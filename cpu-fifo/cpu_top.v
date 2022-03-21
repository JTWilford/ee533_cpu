`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:22 03/05/2022 
// Design Name: 
// Module Name:    cpu_top 
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
module cpu_top(
		input core_clk_int,
		input reset
    );
	 
	 datapath64bit UUT (
      .clk(core_clk_int), 
      .instruction(dut_ins), 
      .PC(), 
      .rst(reset), 
      .one(16'd1), 
      .en(1'b1), 
      .INS_WEN(), 
      .INS_DIN(), 
      .INS_ADDR(),
      .INS_DOUT(),
      .DATA_WEN(), 
      .DATA_DIN(), 
      .DATA_ADDR(),
      .DATA_DOUT()
    );


endmodule
