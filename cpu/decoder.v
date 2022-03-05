`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:37 03/03/2022 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
		input 	[31:0] 	ins,
		output 	[2:0] 	rd,
		output 	[2:0] 	rs1,
		output 	[2:0] 	rs2,
		output 	[11:0] 	imm,
		output 	[5:0] 	ex_ctrl,
		output 				mem_ctrl,
		output 	[1:0] 	wb_ctrl,
		output	[1:0]		br_ctrl
    );
	 
	 localparam ALU 	= 5'b00110;
	 localparam ALUI 	= 5'b00100;
	 localparam LW 	= 5'b00010;
	 localparam SW 	= 5'b00011;
	 localparam BEZ	= 5'b10000;
	 localparam BNEZ	= 5'b01000;
	 
	 reg [2:0] rd_out;
	 assign rd = rd_out;
	 reg [2:0] rs1_out;
	 assign rs1 = rs1_out;
	 reg [2:0] rs2_out;
	 assign rs2 = rs2_out;
	 reg [11:0] imm_out;
	 assign imm = imm_out;
	 reg [5:0] ex_ctrl_out;
	 assign ex_ctrl = ex_ctrl_out;
	 reg mem_ctrl_out;
	 assign mem_ctrl = mem_ctrl_out;
	 reg [1:0] wb_ctrl_out;
	 assign wb_ctrl = wb_ctrl_out;
	 reg [1:0] br_ctrl_out;
	 assign br_ctrl = br_ctrl_out;
	 
	 
	 always @(*)
	 begin
		case (ins[4:0])
			ALU: begin
				rd_out = ins[7:5];
				rs1_out = ins[14:12];
				rs2_out = ins[17:15];
				imm_out = 0;
				
				ex_ctrl_out = {2'b10, ins[11:8]};
				mem_ctrl_out = 0;
				wb_ctrl_out = 2'b01;
				br_ctrl_out = 2'b00;
			end
			ALUI: begin
				rd_out = ins[7:5];
				rs1_out = ins[14:12];
				rs2_out = 0;
				imm_out = ins[26:15];
				
				ex_ctrl_out = {2'b11, ins[11:8]};
				mem_ctrl_out = 0;
				wb_ctrl_out = 2'b01;
				br_ctrl_out = 2'b00;
			end
			LW: begin
				rd_out = ins[7:5];
				rs1_out = ins[14:12];
				rs2_out = ins[17:15];
				imm_out = 0;
				
				ex_ctrl_out = 0;
				mem_ctrl_out = 0;
				wb_ctrl_out = 2'b11;
				br_ctrl_out = 2'b00;
			end
			SW: begin
				rd_out = 0;
				rs1_out = ins[14:12];
				rs2_out = ins[17:15];
				imm_out = 0;
				
				ex_ctrl_out = 0;
				mem_ctrl_out = 1;
				wb_ctrl_out = 2'b00;
				br_ctrl_out = 2'b00;
			end
			BEZ: begin
				rd_out = 0;
				rs1_out = ins[14:12];
				rs2_out = 0;
				imm_out = ins[26:15];
				
				ex_ctrl_out = 0;
				mem_ctrl_out = 0;
				wb_ctrl_out = 0;
				br_ctrl_out = 2'b10;
			end
			BNEZ: begin
				rd_out = 0;
				rs1_out = ins[14:12];
				rs2_out = 0;
				imm_out = ins[26:15];
				
				ex_ctrl_out = 0;
				mem_ctrl_out = 0;
				wb_ctrl_out = 0;
				br_ctrl_out = 2'b01;
			end
			default: begin
				rd_out = 0;
				rs1_out = 0;
				rs2_out = 0;
				imm_out = 0;
				
				ex_ctrl_out = 0;
				mem_ctrl_out = 0;
				wb_ctrl_out = 0;
				br_ctrl_out = 0;
			end
		endcase
	 end

endmodule
