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
	 assign msg[0] = "     bad";
	 assign msg[1] = "     bad";
	 assign msg[2] = "   start";
	 assign msg[3] = "  Hello!";
	 assign msg[4] = "Hi there";
	 assign msg[5] = "How are ";
	 assign msg[6] = "you?    ";
	 assign msg[7] = "     OK?";
	 assign msg[8] = "I hope s";
	 assign msg[9] = "o. I kin";
	 assign msg[10] = "a suck. ";
	 assign msg[11] = "I need l";
	 assign msg[12] = "eet to w";
	 assign msg[13] = "ork. :'(";
	 assign msg[14] = "     bad";
	 assign msg[15] = "     bad";
	 
	 reg [63:0] dout;
	 
	 
	reg [63:0] counter;

    assign out_ctrl[0] = (counter[3:0] == 4'd2 || counter[3:0] == 4'd13);
	 //assign out_ctrl = 8'hff;
    assign out_ctrl[7:1] = 7'd0;

    assign out_data = dout;

    assign out_wr = (counter[3:0] >= 4'd1 || counter[3:0] <= 4'd13);

    always @(posedge clk) begin
        if (rst) begin
            counter <= 64'd0;
				dout <= 64'd0;
        end
        else begin
            if (out_rdy) counter <= counter + 1;
				dout <= msg[counter[3:0]];
        end
    end


endmodule
