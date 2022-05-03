`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:07:34 03/14/2022 
// Design Name: 
// Module Name:    test_data_generator 
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
module test_data_generator(
    input out_rdy,
    output out_wr,
    output [7:0] out_ctrl,
    output [63:0] out_data,
    input clk,
    input rst
    );
	 
	 wire [63:0] msg [15:0];
	 wire [7:0] ctrl [15:0];
	 assign msg[0] = "     bad";
	 assign ctrl[0] = 1;
	 // IP header
	 assign msg[1] = 64'h4500007600010000;
	 assign ctrl[1] = 0;
	 assign msg[2] = 64'h00FC000001234567;
	 assign ctrl[2] = 0;
	 // End of IP header and begining of NDN
	 // This is an NDN Data packet
	 // The following line contains the TLV Type, Length, and the first 2 characters of the message "Th"
	 assign msg[3] = 64'h89ABCDEF06605468;
	 assign ctrl[3] = 0;
	 assign msg[4] = "is is a ";
	 assign ctrl[4] = 0;
	 assign msg[5] = "test of ";
	 assign ctrl[5] = 0;
	 assign msg[6] = "our NDN ";
	 assign ctrl[6] = 0;
	 assign msg[7] = "packet p";
	 assign ctrl[7] = 0;
	 assign msg[8] = "arsing s";
	 assign ctrl[8] = 0;
	 assign msg[9] = {"ystem.",16'd0};
	 assign ctrl[9] = 1;
	 assign msg[10] = "     bad";
	 assign ctrl[10] = 0;
	 assign msg[11] = "     bad";
	 assign ctrl[11] = 0;
	 assign msg[12] = "     bad";
	 assign ctrl[12] = 0;
	 assign msg[13] = "     bad";
	 assign ctrl[13] = 0;
	 assign msg[14] = "     bad";
	 assign ctrl[14] = 0;
	 assign msg[15] = "     bad";
	 assign ctrl[15] = 0;
	 
	 reg [63:0] dout;
	 reg [7:0] cout;
	 reg wout;
	 
	 
	reg [63:0] counter;
	reg [63:0] counter_next;

    assign out_data = dout;
	 assign out_ctrl = cout;

    assign out_wr = wout;

    always @(posedge clk) begin
        if (rst) begin
            counter <= 64'd0;
            counter_next <= 64'd1;
				dout <= 64'd0;
				cout <= 8'd0;
				wout <= 1'd0;
        end
        else begin
            if (out_rdy) begin
					counter <= counter + 1;
					counter_next <= counter_next + 1;
				end
				wout <= wout + ctrl[counter[3:0]];
				dout <= msg[counter[3:0]];
				cout <= ctrl[counter[3:0]];
        end
    end


endmodule
