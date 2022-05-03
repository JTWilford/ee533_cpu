`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:07:32 03/12/2022 
// Design Name: 
// Module Name:    perf_interface 
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
module perf_interface(
    input memreg,
    input [63:0] addr_in,
    input [63:0] data_in,
    input wren,
    input clk,
    input rst,
    output [63:0] perf_data_out,
	 output [63:0] perf_addr_out,
	 output perf_wren,
	 output perf_en
    );
	 
	 reg perf_enabled;
	 assign perf_en = perf_enabled;
	 // Peripheral addresses are the upper half of memory - any of the upper 32 address bits set
	 assign perf_addr_used = (addr_in[63:32] > 32'd0) & (memreg | wren);
	 reg [63:0] perf_dout;
	 assign perf_data_out = perf_dout;
	 reg [63:0] perf_addrout;
	 assign perf_addr_out = perf_addrout;
	 reg perf_wren_out;
	 assign perf_wren = perf_wren_out;
	 
	 always @(posedge clk)
	 begin
		if (rst)
		begin
			perf_enabled <= 0;
		end
		else
		begin
			perf_enabled <= perf_addr_used;
		end
	 end
	 
	 always @(posedge clk)
	 begin
		if (rst)
		begin
			perf_dout <= 0;
			perf_addrout <= 0;
			perf_wren_out <= 0;
		end
		else
		begin
			if (perf_addr_used)
			begin
				perf_dout <= data_in;
				perf_addrout <= addr_in;
				perf_wren_out <= wren;
			end
			else
			begin
				perf_dout <= 0;
				perf_addrout <= 0;
				perf_wren_out <= 0;
			end
		end
	 end


endmodule
