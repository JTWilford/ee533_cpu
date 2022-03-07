`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:28 03/02/2022 
// Design Name: 
// Module Name:    ID_EXreg 
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
module ID_EXreg(
    input [63:0] ID_reg_data1,
    input [63:0] ID_reg_data2,
    input [1:0] ID_br_ctrl,
    input [2:0] ID_Wreg,
    input [8:0] ID_addr_ins,
    input [5:0] ID_EX_CTRL,
    input ID_MEM_CTRL,
    input [1:0] ID_WB_CTRL,
	 
	 
    output [63:0] EX_reg_data1,
    output [63:0] EX_reg_data2,
	 output [1:0] EX_br_ctrl,
    output [2:0] EX_Wreg,
    output [8:0] EX_addr_ins,
    output [5:0] EX_EX_CTRL,
    output EX_MEM_CTRL,
    output [1:0] EX_WB_CTRL,
	 
	 
    input clk,
    input reset
    );

	 reg [63:0] R1out;
	 reg [63:0] R2out;
	 reg [1:0] br_ctrl;
	 reg [2:0] WReg;
	 reg [8:0] addr_ins;
	 reg [5:0] EX_CTRL;
	 reg MEM_CTRL;
	 reg [1:0] WB_CTRL;
	 
	 
	 assign EX_reg_data1 = R1out;
    assign EX_reg_data2 = R2out;
	 assign EX_br_ctrl = br_ctrl;
    assign EX_Wreg = WReg;
    assign EX_addr_ins = addr_ins;
    assign EX_EX_CTRL = EX_CTRL;
    assign EX_MEM_CTRL = MEM_CTRL;
    assign EX_WB_CTRL = WB_CTRL;
	 
	 
	 always @(posedge clk)
		begin
			if (reset)
			begin
				R1out <= 0;
				R2out <= 0;
				br_ctrl <= 0;
	         WReg <= 0;
	         addr_ins <= 0;
	         EX_CTRL <= 0;
	         MEM_CTRL <= 0;
	         WB_CTRL <= 0;
				
			end
			else
			begin
				R1out <= ID_reg_data1;
				R2out <= ID_reg_data2;
				br_ctrl <= ID_br_ctrl;
	         WReg <= ID_Wreg;
	         addr_ins <= ID_addr_ins;
	         EX_CTRL <= ID_EX_CTRL;
	         MEM_CTRL <= ID_MEM_CTRL;
	         WB_CTRL <= ID_WB_CTRL;
				
			end
	  end
endmodule
