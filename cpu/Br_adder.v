`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:36 03/02/2022 
// Design Name: 
// Module Name:    Br_adder 
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
module Br_adder(
    input [13:0] ins_inc_addr,
    input [13:0] immi,
    input [13:0] dreg,
    input add_reg,
    output [13:0] ins_br_addr
    );

     reg [13:0] br_addr;
     assign ins_br_addr = br_addr;

     always @ (*) begin
        if (add_reg) begin
            br_addr = immi + dreg;
        end
        else begin
            br_addr = ins_inc_addr + immi;
        end
     end

endmodule
