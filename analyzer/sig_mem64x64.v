`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:32:01 03/02/2022 
// Design Name: 
// Module Name:    sig_mem64x64 
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
module sig_mem64x64(
    input [63:0] din,
    input [5:0] rd_addr,
    input rd_en,
    input wr_en,
    input clk,
    input rst,
    output [63:0] dout,
    output full
    );
	 
	reg [5:0] wr_ptr;
	reg b_full;
	assign full = b_full;
	
	always @(posedge clk)
	begin
		if (rst)
		begin
			wr_ptr <= 6'b000000;
			b_full <= 1'b0;
		end
		else
		begin
			if (wr_en)
			begin
				if (wr_ptr < 6'b111111)
				begin
					wr_ptr <= wr_ptr + 1;
					b_full <= wr_ptr === 6'b111110;
				end
			end
		end
	end
	 
	bram64x64 mem(
		.clka(clk),
		.dina(din),
		.addra(wr_ptr[5:0]),
		.ena(wr_en),
		.wea(wr_en),
		.clkb(clk),
		.addrb(rd_addr),
		.doutb(dout));


endmodule
