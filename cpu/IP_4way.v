`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:32:04 03/25/2022 
// Design Name: 
// Module Name:    IP_4way 
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
module IP_4way(
		input [1:0] tid,
		output [9:0] ins_ptr,
		input [1:0] br_tid,
		input [9:0] br_addr,
		input branch,
		input clk,
		input rst,
		input en
    );
	 
	 reg [9:0] ip0;
	 reg [9:0] ip1;
	 reg [9:0] ip2;
	 reg [9:0] ip3;
	 
	 reg [9:0] ip_out;
	 assign ins_ptr = ip_out;
	 
	 always @(*)
	 begin
		case (tid)
			2'd0:	ip_out = ip0;
			2'd1: ip_out = ip1;
			2'd2: ip_out = ip2;
			2'd3:	ip_out = ip3;
		endcase
	 end
	 
	 always @(posedge clk)
	 begin
		if (rst)
		begin
			ip0 <= 0;
			ip1 <= 0;
			ip2 <= 0;
			ip3 <= 0;
		end
		else if (en)
		begin
			case (tid)
				2'd0:	ip0 <= ip0 + 1;
				2'd1: ip1 <= ip1 + 1;
				2'd2: ip2 <= ip2 + 1;
				2'd3:	ip3 <= ip3 + 1;
			endcase
			if (branch)
			begin
				case (br_tid)
					2'd0:	ip0 <= br_addr + 1;
					2'd1: ip1 <= br_addr + 1;
					2'd2: ip2 <= br_addr + 1;
					2'd3:	ip3 <= br_addr + 1;
				endcase
			end
		end
	 end


endmodule
