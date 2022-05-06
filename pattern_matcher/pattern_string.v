`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:22 04/15/2022 
// Design Name: 
// Module Name:    pattern_string 
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
module pattern_string(
    input [2:0] first_in,
    input [2:0] last_in,
    output [7:0] out_string
    );
 
    reg [7:0] first_string;
    reg [7:0] last_string;
    assign out_string = first_string & last_string;

  always @(*) begin
      case (first_in) 
        3'b000: first_string = 8'b00000001;
        3'b001: first_string = 8'b00000011;
        3'b010: first_string = 8'b00000111;
        3'b011: first_string = 8'b00001111;    
        3'b100: first_string = 8'b00011111;
        3'b101: first_string = 8'b00111111;
        3'b110: first_string = 8'b01111111;
        3'b111: first_string = 8'b11111111;
      endcase
  end

  always @(*) begin
      case (last_in) 
        3'b000: last_string = 8'b11111111;
        3'b001: last_string = 8'b11111110;
        3'b010: last_string = 8'b11111100;
        3'b011: last_string = 8'b11111000;    
        3'b100: last_string = 8'b11110000;
        3'b101: last_string = 8'b11100000;
        3'b110: last_string = 8'b11000000;
        3'b111: last_string = 8'b10000000;
      endcase
  end



endmodule
