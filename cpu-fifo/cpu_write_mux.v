`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:37:29 03/12/2022 
// Design Name: 
// Module Name:    cpu_write_mux 
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
module cpu_write_mux(
	 input cpu_ctrl,
    input [1:0] cpu_cmd,
    output cpu_write_tail,
    output cpu_write_head,
    output cpu_done,
	 output cpu_write_data,
	 output cpu_pkt_ctrl
    );
	 
	 reg tail;
	 reg head;
	 reg done;
	 reg data;
	 reg pkt_ctrl;
	 assign cpu_write_tail = tail;
	 assign cpu_write_head = head;
	 assign cpu_done = done;
	 assign cpu_write_data = data;
	 assign cpu_pkt_ctrl = pkt_ctrl;
	 
	 always @(*)
	 begin
		if (cpu_ctrl == 1)
		begin
			data = 0;
			case (cpu_cmd)
				2'b00:
				begin
					tail = 1;
					head = 0;
					done = 0;
					pkt_ctrl = 0;
				end
				2'b01:
				begin
					tail = 0;
					head = 1;
					done = 0;
					pkt_ctrl = 0;
				end
				2'b10:
				begin
					tail = 0;
					head = 0;
					done = 0;
					pkt_ctrl = 0;
				end
				2'b11:
				begin
					tail = 0;
					head = 0;
					done = 1;
					pkt_ctrl = 0;
				end
			endcase
		end
		else
		begin
			tail = 0;
			head = 0;
			done = 0;
			case (cpu_cmd)
				2'b00:
				begin
					data = 1;
					pkt_ctrl = 0;
				end
				default:
				begin
					data = 0;
					pkt_ctrl = 1;
				end
			endcase
		end
	 end


endmodule
