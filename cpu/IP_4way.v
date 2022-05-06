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
		output [13:0] ins_ptr,
		input [1:0] br_tid,
		input [13:0] br_addr,
		input branch,
		input clk,
		input rst,
		input en,
		output [13:0] ex_pc_next
    );
	 
	 reg [13:0] ip0;
	 reg [13:0] ip1;
	 reg [13:0] ip2;
	 reg [13:0] ip3;
	 
	 reg [13:0] ip_out;
	 assign ins_ptr = ip_out;
	 
	 reg [13:0] ex_pc_next_out;
	 assign ex_pc_next = ex_pc_next_out;
	 
	 always @(*)
	 begin
		case (tid)
			2'd0: begin
				ip_out = ip0;
				ex_pc_next_out = ip2;
				end
			2'd1: begin
				ip_out = ip1;
				ex_pc_next_out = ip3;
				end
			2'd2: begin
				ip_out = ip2;
				ex_pc_next_out = ip0;
				end
			2'd3:	begin
				ip_out = ip3;
				ex_pc_next_out = ip1;
				end
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
				2'd0:	ip0 <= ip0 + 4;
				2'd1: ip1 <= ip1 + 4;
				2'd2: ip2 <= ip2 + 4;
				2'd3:	ip3 <= ip3 + 4;
			endcase
			if (branch)
			begin
				case (br_tid)
					2'd0:	ip0[13:2] <= br_addr[13:2];
					2'd1: ip1[13:2] <= br_addr[13:2];
					2'd2: ip2[13:2] <= br_addr[13:2];
					2'd3:	ip3[13:2] <= br_addr[13:2];
				endcase
			end
		end
	 end


endmodule
