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
module RV64I_decoder(
		input 	[31:0] 	ins,
		output 	[4:0] 	rd,
		output 	[4:0] 	rs1,
		output 	[4:0] 	rs2,
		output 	[63:0] 	imm,
		output 	[5:0] 	ex_ctrl, // ex_ctrl[5:0] {ALU_en,reg_imm_select,ALUop[2:0],MD}
		output 			mem_ctrl,
		output 	[1:0] 	wb_ctrl,
		output	[3:0]	br_ctrl,// br_ctrl [3:0] {branch_greater,branch_less, branch_eq, branch_neq}
		output  [2:0] 	jump_ctrl//jump_ctrl [1:0] {ID_r0_data and pc select signal, EX_data and PC+1 select signal to rd}
    );
	 
	 localparam RTYPE 	= 7'b0110011;
	 localparam ITYPE	= 7'b0010011;
	 localparam BTYPE 	= 7'b1100011;
	 localparam LW      = 7'b0000011;
	 localparam SW 	    = 7'b0100011;
	 localparam LUI 	= 7'b0110111;
	 localparam AUIPC	= 7'b0010111;
	 localparam JAL     = 7'b1101111;
	 localparam JALR    = 7'b1100111;

	 localparam ADDI 	= 3'b000;
	 localparam SLLI 	= 3'b001;
	 localparam SLTI 	= 3'B010;
	 localparam SLTUI 	= 3'b011;
	 localparam XORI 	= 3'b100;
	 localparam SRI 	= 3'b101;
	 localparam ORI 	= 3'b110;
	 localparam ANDI 	= 3'b111;
	 //I TYPE instruction func3 code, SRI represent SRLI and SRAI
	 //B TYPE instruction func3 code
     reg [39:0] code;

	 reg [5:0] rd_out;
	 assign rd = rd_out;
	 reg [5:0] rs1_out;
	 assign rs1 = rs1_out;
	 reg [5:0] rs2_out;
	 assign rs2 = rs2_out;
	 reg [63:0] imm_out;
	 assign imm = imm_out;
	 reg [5:0] ex_ctrl_out;
	 assign ex_ctrl = ex_ctrl_out;
	 reg mem_ctrl_out;
	 assign mem_ctrl = mem_ctrl_out;
	 reg [1:0] wb_ctrl_out;
	 assign wb_ctrl = wb_ctrl_out;
	 reg [3:0] br_ctrl_out;
	 assign br_ctrl = br_ctrl_out;
	 reg [2:0] jump_ctrl_out;
	 assign jump_ctrl = jump_ctrl_out; 
	 
	 
	 always @(*)
	 begin
		case (ins[6:0])
			RTYPE: begin
				rd_out = ins[11:7];
				rs1_out = ins[19:15];
				rs2_out = ins[24:20];
				imm_out = 0;
				
				ex_ctrl_out = {2'b10,ins[14:12], ins[30]};
				mem_ctrl_out = 0;
				wb_ctrl_out = 2'b01;
				br_ctrl_out = 4'b0000;
				jump_ctrl_out = 3'b000;
                case(ins[14:12])
				ADDI:begin
                    code = "ADD/S";
				end
				SLLI:begin
                    code = " SLL ";
				end
				SLTI:begin
                    code = " SLT ";
				end
				SLTUI:begin
                    code = " SLTU";
				end
				XORI:begin
                    code = " XOR ";
				end
				SRI:begin //srli imm[29] = 0, srai imm[29] = 1
                    code = "  SR ";
				end
				ORI:begin
                    code = "  OR ";
				end
				ANDI:begin
                    code = " AND ";
				end
				default:begin
                    code = " BAD ";
				end
				endcase
			end
			ITYPE: begin

				rd_out = ins[11:7];
				rs1_out = ins[19:15];
				rs2_out = 0;
				imm_out = {{52{ins[31]}},ins[31:20]};

                ex_ctrl_out = {2'b11,ins[14:12], 1'b0};
				mem_ctrl_out = 0;
				wb_ctrl_out = 2'b01;
				br_ctrl_out = 4'b0000;
				jump_ctrl_out = 3'b000;

				case(ins[14:12])
				ADDI:begin
                    code = " ADDI";
				end
				SLLI:begin
                    code = " SLLI";
				end
				SLTI:begin
                    code = " SLTI";
				end
				SLTUI:begin
                    code = "SLTUI";
				end
				XORI:begin
                    code = " XORI";
				end
				SRI:begin //srli imm[30] = 0, srai imm[30] = 1
					ex_ctrl_out[0] = ins[30];
                    code = "  SRI";
				end
				ORI:begin
                    code = "  ORI";
				end
				ANDI:begin
                    code = " ANDI";
				end
				default:begin
                    code = " BAD ";
				end
				endcase
				
				
				
			end
			LW: begin
				rd_out  = ins[11:7];
				rs1_out = ins[19:15];
				rs2_out = 0;
				imm_out = {{52{ins[31]}}, ins[31:20]};
				
				ex_ctrl_out = 6'b110000;
				mem_ctrl_out = 0;
				wb_ctrl_out = 2'b11;
				br_ctrl_out = 4'b0000;
				jump_ctrl_out = 3'b000;
                code = "  LW ";
			end
			SW: begin
				rd_out = 0;
				rs1_out = ins[19:15];
				rs2_out = ins[24:20];
				imm_out = {{52{ins[31]}}, ins[31:25], ins[11:7]};
				
				ex_ctrl_out = 6'b110000;
				mem_ctrl_out = 1;
				wb_ctrl_out = 2'b00;
				br_ctrl_out = 4'b0000;
				jump_ctrl_out = 3'b000;
                code = "  SW ";
			end
			BTYPE: begin
				rd_out = 0;
				rs1_out = ins[19:15];
				rs2_out = ins[24:20];
				imm_out = {{51{ins[31]}}, ins[31], ins[7], ins[30:25], ins[11:8], 1'b0};
				
				
				mem_ctrl_out = 0;
				wb_ctrl_out = 2'b00;
				jump_ctrl_out = 3'b000;

				case(ins[14:12])
					3'b000:begin        // BEQ
						ex_ctrl_out = 6'b100001;
						br_ctrl_out = 4'b0010;
                        code = " BEQ ";
					end
					3'b001:begin        // BNEQ
						ex_ctrl_out = 6'b100001;
						br_ctrl_out = 4'b0001;
                        code = " BNE ";
					end
					3'b100:begin        // BLT
						ex_ctrl_out = 6'b100100;
						br_ctrl_out = 4'b0100;
                        code = " BLT ";
					end
					3'b101:begin        // BGE
						ex_ctrl_out = 6'b100110;
						br_ctrl_out = 4'b1000;
                        code = " BGE ";
					end
					3'b110:begin        // BLTU
						ex_ctrl_out = 6'b100101;
						br_ctrl_out = 4'b0100;
                        code = " BLTU";
					end
					3'b111:begin        // BGEU
						ex_ctrl_out = 6'b100111;
						br_ctrl_out = 4'b1000;
                        code = " BGEU";
					end
					default: begin
						ex_ctrl_out = 6'b000000;
						br_ctrl_out = 4'b0000;
                        code = " BBAD";
					end
				endcase

				
			end
			LUI:begin
				rd_out = ins[11:7];
				rs1_out = 0;
				rs2_out = 0;
				imm_out = {{32{ins[31]}}, ins[31:12],12'd0};

				ex_ctrl_out = 6'b110000;
				mem_ctrl_out = 0;
				wb_ctrl_out = 2'b01;
				br_ctrl_out = 4'b0000;
				jump_ctrl_out = 3'b000;
                code = "  LUI";
			end

			AUIPC:begin
				rd_out = ins[11:7];
				rs1_out = 0;
				rs2_out = 0;
				imm_out = {{32{ins[31]}}, ins[31:12],12'd0};

				ex_ctrl_out = 6'b110000;
				mem_ctrl_out = 0;
				wb_ctrl_out = 2'b01;
				br_ctrl_out = 4'b0000;
				jump_ctrl_out = 3'b010;
                code = "AUIPC";
			end
			
			JAL:begin
				rd_out = ins[11:7];
				rs1_out = 0;
				rs2_out = 0;
				imm_out = {{43{ins[31]}}, ins[31],ins[19:12],ins[20],ins[30:21],1'b0};

				ex_ctrl_out = 6'b000000;
				mem_ctrl_out = 0;
				wb_ctrl_out = 2'b01;
				br_ctrl_out = 4'b0000;
				jump_ctrl_out = 3'b011;
                code = " JAL ";
			end

			JALR:begin
				rd_out = ins[11:7];
				rs1_out = ins[19:15];
				rs2_out = 0;
                imm_out = {{52{ins[31]}},ins[31:20]};

				ex_ctrl_out = 6'b100000;
				mem_ctrl_out = 0;
				wb_ctrl_out = 2'b01;
				br_ctrl_out = 4'b0000;
				jump_ctrl_out = 3'b111;
                code = " JALR";
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
				jump_ctrl_out = 3'b000;
                code = " NBAD";
			end
		endcase
	 end

endmodule
