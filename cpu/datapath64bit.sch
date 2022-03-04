VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL instruction(31:0)
        SIGNAL XLXN_157(8:0)
        SIGNAL XLXN_182
        SIGNAL imm(11:0)
        SIGNAL XLXN_171(63:0)
        SIGNAL rst
        SIGNAL one(15:0)
        SIGNAL br_addr(8:0)
        SIGNAL XLXN_244(63:0)
        SIGNAL XLXN_247(63:0)
        SIGNAL XLXN_248(63:0)
        SIGNAL id_d0(63:0)
        SIGNAL XLXN_251(63:0)
        SIGNAL XLXN_252(63:0)
        SIGNAL me_addr(63:0)
        SIGNAL XLXN_267(2:0)
        SIGNAL XLXN_277(63:0)
        SIGNAL XLXN_279(2:0)
        SIGNAL XLXN_212(63:0)
        SIGNAL XLXN_213(63:0)
        SIGNAL wb_data(63:0)
        SIGNAL XLXN_215
        SIGNAL me_addr(7:0)
        SIGNAL XLXN_310(0:0)
        SIGNAL XLXN_311
        SIGNAL XLXN_312
        SIGNAL wb_reg_write
        SIGNAL wb_reg_addr(2:0)
        SIGNAL r1_addr(2:0)
        SIGNAL r0_addr(2:0)
        SIGNAL br_ctrl(1)
        SIGNAL br_ctrl(0)
        SIGNAL branch
        SIGNAL XLXN_336(8:0)
        SIGNAL ex_ctrl(4:0)
        SIGNAL ex_ctrl(3:1)
        SIGNAL ex_ctrl(0)
        SIGNAL ex_ctrl(4)
        SIGNAL ex_mem_wr
        SIGNAL ex_wb_ctrl(1)
        SIGNAL ex_wb_ctrl(0)
        SIGNAL ex_wb_ctrl(1:0)
        SIGNAL en
        SIGNAL XLXN_359(63:0)
        SIGNAL dec_ex_ctrl(4:0)
        SIGNAL dec_wb_ctrl(1:0)
        SIGNAL br_ctrl(1:0)
        SIGNAL dec_rd(2:0)
        SIGNAL dec_mem_ctrl
        SIGNAL ins_ptr(15:0)
        SIGNAL XLXN_26
        SIGNAL ip_int(15:0)
        SIGNAL ip_int(8:0)
        SIGNAL XLXN_398(15:0)
        SIGNAL ip_next(8:0)
        SIGNAL XLXN_399(31:0)
        SIGNAL ins_ptr(8:0)
        SIGNAL XLXN_403(63:0)
        PORT Input clk
        PORT Input rst
        PORT Input one(15:0)
        PORT Input en
        BEGIN BLOCKDEF regfile64bit
            TIMESTAMP 2022 3 2 17 3 21
            RECTANGLE N 64 -320 320 156 
            LINE N 64 80 0 80 
            RECTANGLE N 0 68 64 92 
            LINE N 176 160 176 224 
            LINE N 64 -48 0 -48 
            RECTANGLE N 0 -60 64 -36 
            LINE N 64 -144 0 -144 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -240 0 -240 
            RECTANGLE N 0 -252 64 -228 
            LINE N 128 -320 128 -384 
            LINE N 192 -320 192 -384 
            LINE N 256 -320 256 -384 
            LINE N 320 -192 384 -192 
            RECTANGLE N 320 -204 384 -180 
            LINE N 320 0 384 0 
            RECTANGLE N 320 -12 384 12 
        END BLOCKDEF
        BEGIN BLOCKDEF instructionmem64
            TIMESTAMP 2022 3 4 3 40 30
            RECTANGLE N 32 32 544 576 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 112 32 112 
            END LINE
            BEGIN LINE W 0 208 32 208 
            END LINE
            LINE N 0 272 32 272 
            BEGIN LINE W 576 80 544 80 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF datamem64
            TIMESTAMP 2022 3 4 3 5 24
            RECTANGLE N 32 32 320 576 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 112 32 112 
            END LINE
            BEGIN LINE W 0 208 32 208 
            END LINE
            LINE N 0 272 32 272 
            BEGIN LINE W 0 336 32 336 
            END LINE
            BEGIN LINE W 0 368 32 368 
            END LINE
            BEGIN LINE W 0 464 32 464 
            END LINE
            LINE N 0 528 32 528 
            BEGIN LINE W 352 80 320 80 
            END LINE
            BEGIN LINE W 352 336 320 336 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF alu64
            TIMESTAMP 2022 3 2 18 23 57
            LINE N 384 -352 448 -352 
            LINE N 384 -288 448 -288 
            LINE N 384 -224 448 -224 
            RECTANGLE N 384 -236 448 -212 
            LINE N 384 -160 448 -160 
            LINE N 384 -96 448 -96 
            LINE N 380 -400 380 -396 
            LINE N 384 -396 384 -64 
            LINE N 384 -392 172 -520 
            LINE N 172 -520 56 -520 
            LINE N 56 -520 56 -376 
            LINE N 56 -376 164 -228 
            LINE N 164 -228 64 -112 
            LINE N 64 -112 64 32 
            LINE N 180 32 64 32 
            LINE N 384 -64 180 32 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -384 0 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 144 -512 144 -576 
            RECTANGLE N 132 -576 156 -512 
            LINE N 144 32 144 96 
        END BLOCKDEF
        BEGIN BLOCKDEF IFID_reg
            TIMESTAMP 2022 3 2 17 34 25
            RECTANGLE N 64 -464 204 36 
            LINE N 128 32 128 96 
            LINE N 96 -464 96 -528 
            LINE N 160 -464 160 -528 
            LINE N 64 -176 0 -176 
            RECTANGLE N 0 -188 64 -164 
            LINE N 64 -384 0 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 192 -272 256 -272 
            RECTANGLE N 192 -284 256 -260 
            LINE N 192 -80 256 -80 
            RECTANGLE N 192 -92 256 -68 
        END BLOCKDEF
        BEGIN BLOCKDEF mux9bit_2_to_1
            TIMESTAMP 2022 3 2 18 36 21
            LINE N 48 -96 0 -96 
            RECTANGLE N 0 -108 48 -84 
            LINE N 48 16 0 16 
            RECTANGLE N 0 4 48 28 
            LINE N 48 -192 48 92 
            LINE N 48 92 168 24 
            LINE N 168 -148 168 24 
            LINE N 168 -148 48 -192 
            LINE N 160 -48 208 -48 
            RECTANGLE N 160 -60 208 -36 
            LINE N 112 -160 112 -208 
        END BLOCKDEF
        BEGIN BLOCKDEF signextend
            TIMESTAMP 2022 3 2 22 35 5
            RECTANGLE N 64 -100 352 0 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
            RECTANGLE N 352 -92 416 -68 
            LINE N 352 -80 416 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF ID_EXreg
            TIMESTAMP 2022 3 3 7 22 51
            RECTANGLE N 64 -576 512 -64 
            LINE N 64 -544 0 -544 
            RECTANGLE N 0 -556 64 -532 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 304 -576 304 -640 
            LINE N 304 -64 304 0 
            LINE N 512 -544 576 -544 
            RECTANGLE N 512 -556 576 -532 
            LINE N 512 -480 576 -480 
            LINE N 512 -416 576 -416 
            RECTANGLE N 512 -428 576 -404 
            LINE N 512 -352 576 -352 
            RECTANGLE N 512 -364 576 -340 
            LINE N 512 -288 576 -288 
            RECTANGLE N 512 -300 576 -276 
            LINE N 512 -224 576 -224 
            RECTANGLE N 512 -236 576 -212 
            LINE N 512 -160 576 -160 
            RECTANGLE N 512 -172 576 -148 
            LINE N 512 -96 576 -96 
            RECTANGLE N 512 -108 576 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Br_adder
            TIMESTAMP 2022 3 4 2 8 24
            RECTANGLE N 64 -128 448 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 448 -108 512 -84 
            LINE N 448 -96 512 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF mux2_to_1_x64
            TIMESTAMP 2022 3 3 0 10 11
            RECTANGLE N 64 -128 272 0 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            RECTANGLE N 272 -108 336 -84 
            LINE N 272 -96 336 -96 
            LINE N 192 -128 192 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF DFF133bit
            TIMESTAMP 2022 3 3 0 54 33
            RECTANGLE N 64 -660 436 -64 
            LINE N 192 -656 192 -720 
            LINE N 256 -656 256 -720 
            LINE N 432 -576 496 -576 
            LINE N 64 -576 0 -576 
            LINE N 432 -240 496 -240 
            RECTANGLE N 432 -252 496 -228 
            LINE N 64 -240 0 -240 
            RECTANGLE N 0 -252 64 -228 
            LINE N 432 -128 496 -128 
            RECTANGLE N 432 -140 496 -116 
            LINE N 64 -128 0 -128 
            RECTANGLE N 0 -140 64 -116 
            LINE N 240 -64 240 0 
            LINE N 432 -464 496 -464 
            LINE N 64 -464 0 -464 
            LINE N 432 -384 496 -384 
            RECTANGLE N 432 -396 496 -372 
            LINE N 64 -384 0 -384 
            RECTANGLE N 0 -396 64 -372 
        END BLOCKDEF
        BEGIN BLOCKDEF DFF134bit
            TIMESTAMP 2022 3 3 1 9 53
            RECTANGLE N 64 -596 452 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 448 -224 512 -224 
            RECTANGLE N 448 -236 512 -212 
            LINE N 448 -160 512 -160 
            RECTANGLE N 448 -172 512 -148 
            LINE N 448 -96 512 -96 
            RECTANGLE N 448 -108 512 -84 
            LINE N 192 -592 192 -656 
            LINE N 288 -592 288 -656 
            LINE N 64 -496 0 -496 
            LINE N 448 -496 512 -496 
            LINE N 64 -432 0 -432 
            LINE N 448 -432 512 -432 
            LINE N 64 -368 0 -368 
            LINE N 448 -368 512 -368 
            LINE N 256 -32 256 32 
        END BLOCKDEF
        BEGIN BLOCKDEF BEZ_BNEZ_detect
            TIMESTAMP 2022 3 3 7 21 43
            RECTANGLE N 64 -128 328 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 320 -96 384 -96 
            LINE N 144 -128 144 -192 
            LINE N 208 -128 208 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF decoder
            TIMESTAMP 2022 3 3 23 40 27
            RECTANGLE N 64 -512 320 0 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -480 0 -480 
            LINE N 320 -480 384 -480 
            RECTANGLE N 320 -428 384 -404 
            LINE N 320 -416 384 -416 
            RECTANGLE N 320 -364 384 -340 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF add16
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 448 -128 384 -128 
            LINE N 448 -64 384 -64 
            LINE N 240 -64 384 -64 
            LINE N 240 -124 240 -64 
            RECTANGLE N 0 -204 64 -180 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            LINE N 0 -192 64 -192 
            LINE N 448 -256 384 -256 
            RECTANGLE N 384 -268 448 -244 
            LINE N 0 -448 64 -448 
            LINE N 128 -448 64 -448 
            LINE N 128 -416 128 -448 
            LINE N 64 -288 64 -432 
            LINE N 128 -256 64 -288 
            LINE N 64 -224 128 -256 
            LINE N 64 -80 64 -224 
            LINE N 384 -160 64 -80 
            LINE N 384 -336 384 -160 
            LINE N 384 -352 384 -336 
            LINE N 64 -432 384 -352 
            LINE N 336 -128 336 -148 
            LINE N 384 -128 336 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF DFF16bit
            TIMESTAMP 2022 2 18 6 15 36
            RECTANGLE N 64 -256 256 -64 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 256 -224 320 -224 
            RECTANGLE N 256 -236 320 -212 
            LINE N 160 -64 160 0 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ip_extend
            TIMESTAMP 2022 3 4 1 57 8
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_27 IFID_reg
            PIN clk clk
            PIN en en
            PIN clr rst
            PIN inc_in(31:0) XLXN_399(31:0)
            PIN pc_addr_in(8:0) ip_next(8:0)
            PIN pc_addr_out(8:0) XLXN_157(8:0)
            PIN inc_out(31:0) instruction(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_40 ID_EXreg
            PIN ID_MEM_CTRL dec_mem_ctrl
            PIN clk clk
            PIN reset rst
            PIN ID_reg_data1(63:0) id_d0(63:0)
            PIN ID_reg_data2(63:0) XLXN_251(63:0)
            PIN ID_imm(63:0) XLXN_171(63:0)
            PIN ID_Wreg(2:0) dec_rd(2:0)
            PIN ID_addr_ins(8:0) XLXN_336(8:0)
            PIN ID_EX_CTRL(4:0) dec_ex_ctrl(4:0)
            PIN ID_WB_CTRL(1:0) dec_wb_ctrl(1:0)
            PIN EX_MEM_CTRL ex_mem_wr
            PIN EX_reg_data1(63:0) XLXN_244(63:0)
            PIN EX_reg_data2(63:0) XLXN_248(63:0)
            PIN EX_imm(63:0) XLXN_247(63:0)
            PIN EX_Wreg(2:0) XLXN_279(2:0)
            PIN EX_addr_ins(8:0) br_addr(8:0)
            PIN EX_EX_CTRL(4:0) ex_ctrl(4:0)
            PIN EX_WB_CTRL(1:0) ex_wb_ctrl(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_31 signextend
            PIN imm_in(11:0) imm(11:0)
            PIN imm_extend(63:0) XLXN_171(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_23 instructionmem64
            PIN addra(8:0) ins_ptr(8:0)
            PIN dina(31:0)
            PIN wea(0:0)
            PIN clka clk
            PIN douta(31:0) XLXN_399(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_41 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_182
            PIN Q branch
        END BLOCK
        BEGIN BLOCK XLXI_30 alu64
            PIN GT
            PIN EQ
            PIN Q(63:0) XLXN_252(63:0)
            PIN OVR
            PIN LT
            PIN R2(63:0) XLXN_277(63:0)
            PIN R1(63:0) XLXN_244(63:0)
            PIN OP(2:0) ex_ctrl(3:1)
            PIN MD ex_ctrl(0)
        END BLOCK
        BEGIN BLOCK XLXI_48 mux2_to_1_x64
            PIN EX_immi_data(63:0) XLXN_247(63:0)
            PIN EX_register_data(63:0) XLXN_248(63:0)
            PIN data_out(63:0) XLXN_277(63:0)
            PIN s ex_ctrl(4)
        END BLOCK
        BEGIN BLOCK XLXI_55 DFF134bit
            PIN ALUdata(63:0) XLXN_252(63:0)
            PIN reg_data(63:0) XLXN_277(63:0)
            PIN Wregin(2:0) XLXN_279(2:0)
            PIN ALUdataout(63:0) XLXN_359(63:0)
            PIN reg_dataout(63:0) me_addr(63:0)
            PIN Wregout(2:0) XLXN_267(2:0)
            PIN en en
            PIN clr rst
            PIN EX_mem_write ex_mem_wr
            PIN MEM_mem_write XLXN_310(0:0)
            PIN EX_MemtoReg ex_wb_ctrl(1)
            PIN MEM_MetoReg XLXN_312
            PIN EX_Reg_write ex_wb_ctrl(0)
            PIN MEM_Reg_write XLXN_311
            PIN clk clk
        END BLOCK
        BEGIN BLOCK XLXI_43 Br_adder
            PIN ins_inc_addr(8:0) XLXN_157(8:0)
            PIN immi(11:0) imm(11:0)
            PIN ins_br_addr(8:0) XLXN_336(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 regfile64bit
            PIN wdata(63:0) wb_data(63:0)
            PIN en en
            PIN waddr(2:0) wb_reg_addr(2:0)
            PIN r0addr(2:0) r0_addr(2:0)
            PIN r1addr(2:0) r1_addr(2:0)
            PIN wena wb_reg_write
            PIN clk clk
            PIN clr rst
            PIN r0data(63:0) id_d0(63:0)
            PIN r1data(63:0) XLXN_251(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_59 BEZ_BNEZ_detect
            PIN BEZ_op br_ctrl(1)
            PIN BNEZ_op br_ctrl(0)
            PIN Reg_data(63:0) id_d0(63:0)
            PIN Branch_signal XLXN_182
        END BLOCK
        BEGIN BLOCK XLXI_50 DFF133bit
            PIN en en
            PIN clr rst
            PIN WB_MetoReg XLXN_215
            PIN MEM_MemtoReg XLXN_312
            PIN mem_dataout(63:0) XLXN_213(63:0)
            PIN mem_data(63:0) XLXN_403(63:0)
            PIN Wregout(2:0) wb_reg_addr(2:0)
            PIN Wregin(2:0) XLXN_267(2:0)
            PIN clk clk
            PIN WB_Reg_write wb_reg_write
            PIN MEM_Reg_write XLXN_311
            PIN ALUdataout(63:0) XLXN_212(63:0)
            PIN ALUdata(63:0) XLXN_359(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_51 mux2_to_1_x64
            PIN EX_immi_data(63:0) XLXN_213(63:0)
            PIN EX_register_data(63:0) XLXN_212(63:0)
            PIN data_out(63:0) wb_data(63:0)
            PIN s XLXN_215
        END BLOCK
        BEGIN BLOCK XLXI_20 datamem64
            PIN addra(7:0) me_addr(7:0)
            PIN dina(63:0) XLXN_359(63:0)
            PIN wea(0:0) XLXN_310(0:0)
            PIN clka clk
            PIN addrb(7:0)
            PIN dinb(63:0)
            PIN web(0:0)
            PIN clkb clk
            PIN douta(63:0) XLXN_403(63:0)
            PIN doutb(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_64 decoder
            PIN ins(31:0) instruction(31:0)
            PIN mem_ctrl dec_mem_ctrl
            PIN rd(2:0) dec_rd(2:0)
            PIN rs1(2:0) r0_addr(2:0)
            PIN rs2(2:0) r1_addr(2:0)
            PIN imm(11:0) imm(11:0)
            PIN ex_ctrl(4:0) dec_ex_ctrl(4:0)
            PIN wb_ctrl(1:0) dec_wb_ctrl(1:0)
            PIN br_ctrl(1:0) br_ctrl(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_1 add16
            PIN A(15:0) ins_ptr(15:0)
            PIN B(15:0) one(15:0)
            PIN CI XLXN_26
            PIN CO
            PIN OFL
            PIN S(15:0) ip_int(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 gnd
            PIN G XLXN_26
        END BLOCK
        BEGIN BLOCK IP_REG DFF16bit
            PIN ce en
            PIN clk clk
            PIN clr rst
            PIN d(15:0) XLXN_398(15:0)
            PIN q(15:0) ins_ptr(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_70 mux9bit_2_to_1
            PIN inc_ins(8:0) ip_int(8:0)
            PIN br_ins(8:0) br_addr(8:0)
            PIN ins_out(8:0) ip_next(8:0)
            PIN branch branch
        END BLOCK
        BEGIN BLOCK XLXI_72 ip_extend
            PIN ip_in(8:0) ip_next(8:0)
            PIN ip_out(15:0) XLXN_398(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN BRANCH instruction(31:0)
            WIRE 1584 1072 1728 1072
            WIRE 1728 1072 1744 1072
            BEGIN DISPLAY 1728 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_27 1328 1152 R0
        END INSTANCE
        BEGIN BRANCH XLXN_157(8:0)
            WIRE 1584 880 1600 880
            WIRE 1600 624 1600 880
            WIRE 1600 624 1648 624
        END BRANCH
        BEGIN BRANCH XLXN_182
            WIRE 1984 208 2832 208
        END BRANCH
        BEGIN BRANCH imm(11:0)
            WIRE 1632 1376 1712 1376
            BEGIN DISPLAY 1632 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_31 1712 1456 R0
        END INSTANCE
        BEGIN BRANCH XLXN_171(63:0)
            WIRE 2128 1376 2656 1376
            WIRE 2656 1040 2656 1376
            WIRE 2656 1040 2688 1040
        END BRANCH
        BEGIN BRANCH one(15:0)
            WIRE 608 352 640 352
        END BRANCH
        INSTANCE XLXI_41 2832 464 R0
        BEGIN INSTANCE XLXI_43 1648 720 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_59 1600 304 R0
        END INSTANCE
        IOMARKER 2192 1632 clk R90 28
        IOMARKER 400 544 rst R180 28
        IOMARKER 608 352 one(15:0) R180 28
        BEGIN INSTANCE XLXI_40 2688 1200 R0
        END INSTANCE
        BEGIN BRANCH id_d0(63:0)
            WIRE 2592 784 2640 784
            WIRE 2640 784 2640 912
            WIRE 2640 912 2688 912
            WIRE 2608 912 2624 912
            WIRE 2624 912 2640 912
            BEGIN DISPLAY 2624 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_251(63:0)
            WIRE 2592 976 2688 976
        END BRANCH
        BEGIN INSTANCE XLXI_11 2208 976 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_55 4288 1296 R0
        END INSTANCE
        BEGIN BRANCH XLXN_252(63:0)
            WIRE 4128 928 4208 928
            WIRE 4208 928 4208 1072
            WIRE 4208 1072 4288 1072
        END BRANCH
        BEGIN BRANCH XLXN_247(63:0)
            WIRE 3264 1040 3280 1040
            WIRE 3280 1040 3280 1280
            WIRE 3280 1280 3312 1280
        END BRANCH
        BEGIN INSTANCE XLXI_48 3312 1312 R0
        END INSTANCE
        BEGIN BRANCH XLXN_244(63:0)
            WIRE 3264 912 3664 912
            WIRE 3664 768 3664 912
            WIRE 3664 768 3680 768
        END BRANCH
        BEGIN INSTANCE XLXI_30 3680 1152 R0
        END INSTANCE
        BEGIN BRANCH imm(11:0)
            WIRE 1632 688 1648 688
            WIRE 1632 688 1632 816
            BEGIN DISPLAY 1632 816 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_248(63:0)
            WIRE 3264 976 3296 976
            WIRE 3296 976 3296 1216
            WIRE 3296 1216 3312 1216
        END BRANCH
        BEGIN BRANCH XLXN_277(63:0)
            WIRE 3648 1216 3664 1216
            WIRE 3664 1216 3664 1264
            WIRE 3664 1264 4192 1264
            WIRE 3664 1056 3664 1216
            WIRE 3664 1056 3680 1056
            WIRE 4192 1136 4288 1136
            WIRE 4192 1136 4192 1264
        END BRANCH
        BEGIN BRANCH XLXN_279(2:0)
            WIRE 3264 1104 3376 1104
            WIRE 3376 1104 3376 1440
            WIRE 3376 1440 4224 1440
            WIRE 4224 1200 4288 1200
            WIRE 4224 1200 4224 1440
        END BRANCH
        BEGIN BRANCH XLXN_267(2:0)
            WIRE 4800 1200 4864 1200
            WIRE 4864 1200 4864 1296
            WIRE 4864 1296 5568 1296
        END BRANCH
        BEGIN INSTANCE XLXI_50 5568 1424 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_51 6256 1168 R0
        END INSTANCE
        BEGIN BRANCH XLXN_212(63:0)
            WIRE 6064 1040 6160 1040
            WIRE 6160 1040 6160 1072
            WIRE 6160 1072 6256 1072
        END BRANCH
        BEGIN BRANCH XLXN_213(63:0)
            WIRE 6064 1184 6160 1184
            WIRE 6160 1136 6160 1184
            WIRE 6160 1136 6256 1136
        END BRANCH
        BEGIN BRANCH wb_data(63:0)
            WIRE 6592 1072 6768 1072
            BEGIN DISPLAY 6768 1072 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_215
            WIRE 6064 848 6448 848
            WIRE 6448 848 6448 976
        END BRANCH
        BEGIN BRANCH me_addr(63:0)
            WIRE 4800 1136 4880 1136
            WIRE 4880 1136 4960 1136
            WIRE 4960 960 4960 1024
            WIRE 4960 1024 4960 1136
            BEGIN DISPLAY 4880 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4960 1024 5056 1024
        BEGIN INSTANCE XLXI_20 5120 944 R0
        END INSTANCE
        BEGIN BRANCH me_addr(7:0)
            WIRE 5056 1024 5072 1024
            WIRE 5072 1024 5120 1024
            BEGIN DISPLAY 5072 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_310(0:0)
            WIRE 4800 800 4944 800
            WIRE 4944 800 4944 1152
            WIRE 4944 1152 5120 1152
        END BRANCH
        BEGIN BRANCH XLXN_311
            WIRE 4800 928 5184 928
            WIRE 5184 928 5184 960
            WIRE 5184 960 5568 960
        END BRANCH
        BEGIN BRANCH XLXN_312
            WIRE 4800 864 5184 864
            WIRE 5184 848 5184 864
            WIRE 5184 848 5568 848
        END BRANCH
        BEGIN BRANCH wb_reg_write
            WIRE 6064 960 6160 960
            BEGIN DISPLAY 6160 960 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wb_reg_addr(2:0)
            WIRE 6064 1296 6160 1296
            BEGIN DISPLAY 6160 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wb_reg_addr(2:0)
            WIRE 2112 1056 2208 1056
            BEGIN DISPLAY 2112 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r1_addr(2:0)
            WIRE 2112 928 2208 928
            BEGIN DISPLAY 2112 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r0_addr(2:0)
            WIRE 2112 832 2208 832
            BEGIN DISPLAY 2112 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wb_data(63:0)
            WIRE 2112 736 2208 736
            BEGIN DISPLAY 2112 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wb_reg_write
            WIRE 2464 528 2464 592
            BEGIN DISPLAY 2464 528 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 2720 336 2832 336
            BEGIN DISPLAY 2720 336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH id_d0(63:0)
            WIRE 1440 208 1600 208
            BEGIN DISPLAY 1440 208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH br_ctrl(1)
            WIRE 1680 80 1744 80
            WIRE 1744 80 1744 112
            BEGIN DISPLAY 1680 80 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH br_ctrl(0)
            WIRE 1808 80 1872 80
            WIRE 1808 80 1808 112
            BEGIN DISPLAY 1872 80 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH branch
            WIRE 3216 208 3280 208
            BEGIN DISPLAY 3280 208 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_336(8:0)
            WIRE 2160 624 2192 624
            WIRE 2192 432 2608 432
            WIRE 2608 432 2608 848
            WIRE 2608 848 2688 848
            WIRE 2192 432 2192 624
        END BRANCH
        BEGIN BRANCH br_addr(8:0)
            WIRE 3264 848 3408 848
            BEGIN DISPLAY 3408 848 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ex_ctrl(4:0)
            WIRE 3264 656 3312 656
            BEGIN DISPLAY 3312 656 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ex_ctrl(3:1)
            WIRE 3824 528 3824 576
            BEGIN DISPLAY 3824 528 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ex_ctrl(0)
            WIRE 3824 1248 3824 1296
            BEGIN DISPLAY 3824 1296 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ex_ctrl(4)
            WIRE 3504 1056 3504 1120
            BEGIN DISPLAY 3504 1056 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ex_mem_wr
            WIRE 3264 720 3328 720
            BEGIN DISPLAY 3328 720 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ex_mem_wr
            WIRE 4240 800 4288 800
            BEGIN DISPLAY 4240 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ex_wb_ctrl(1)
            WIRE 4240 864 4288 864
            BEGIN DISPLAY 4240 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ex_wb_ctrl(0)
            WIRE 4272 928 4288 928
            WIRE 4272 928 4272 960
            BEGIN DISPLAY 4272 960 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ex_wb_ctrl(1:0)
            WIRE 3264 784 3344 784
            BEGIN DISPLAY 3344 784 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 2400 560 2400 592
            BEGIN DISPLAY 2400 560 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 5760 640 5760 704
            BEGIN DISPLAY 5760 640 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 4480 592 4480 640
            BEGIN DISPLAY 4480 592 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1424 592 1424 624
            BEGIN DISPLAY 1424 592 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 576 416 640 416
        END BRANCH
        IOMARKER 576 416 en R180 28
        BEGIN BRANCH XLXN_359(63:0)
            WIRE 4800 1072 4928 1072
            WIRE 4928 880 4928 1056
            WIRE 4928 1056 4928 1072
            WIRE 4928 1056 5120 1056
            WIRE 4928 880 5536 880
            WIRE 5536 880 5536 1040
            WIRE 5536 1040 5568 1040
        END BRANCH
        BEGIN INSTANCE XLXI_64 1520 2320 R0
        END INSTANCE
        BEGIN BRANCH instruction(31:0)
            WIRE 1440 1840 1520 1840
            BEGIN DISPLAY 1440 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dec_mem_ctrl
            WIRE 1904 1840 2000 1840
            BEGIN DISPLAY 2000 1840 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dec_rd(2:0)
            WIRE 1904 1904 2000 1904
            BEGIN DISPLAY 2000 1904 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r0_addr(2:0)
            WIRE 1904 1968 2000 1968
            BEGIN DISPLAY 2000 1968 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r1_addr(2:0)
            WIRE 1904 2032 2000 2032
            BEGIN DISPLAY 2000 2032 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH imm(11:0)
            WIRE 1904 2096 2000 2096
            BEGIN DISPLAY 2000 2096 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dec_ex_ctrl(4:0)
            WIRE 1904 2160 2000 2160
            BEGIN DISPLAY 2000 2160 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dec_wb_ctrl(1:0)
            WIRE 1904 2224 2000 2224
            BEGIN DISPLAY 2000 2224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH br_ctrl(1:0)
            WIRE 1904 2288 2000 2288
            BEGIN DISPLAY 2000 2288 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dec_rd(2:0)
            WIRE 2608 1104 2688 1104
            BEGIN DISPLAY 2608 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dec_ex_ctrl(4:0)
            WIRE 2656 656 2688 656
            BEGIN DISPLAY 2656 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dec_mem_ctrl
            WIRE 2656 720 2688 720
            BEGIN DISPLAY 2656 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dec_wb_ctrl(1:0)
            WIRE 2656 784 2688 784
            BEGIN DISPLAY 2656 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_1 480 2944 R0
        BEGIN BRANCH one(15:0)
            WIRE 352 2752 480 2752
            BEGIN DISPLAY 352 2752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 368 2496 480 2496
        END BRANCH
        INSTANCE XLXI_8 304 2624 R0
        BEGIN BRANCH br_addr(8:0)
            WIRE 1040 3040 1104 3040
            BEGIN DISPLAY 1040 3040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH branch
            WIRE 1216 2752 1296 2752
            WIRE 1216 2752 1216 2816
            WIRE 1296 2736 1296 2752
            BEGIN DISPLAY 1216 2752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 400 544 592 544
            WIRE 592 544 592 624
            WIRE 592 624 832 624
            WIRE 832 608 1040 608
            WIRE 832 608 832 624
            WIRE 1040 512 1488 512
            WIRE 1488 512 2336 512
            WIRE 2336 512 2336 592
            WIRE 2336 512 2720 512
            WIRE 1488 512 1488 624
            WIRE 1040 512 1040 608
            WIRE 2720 432 2800 432
            WIRE 2800 432 2832 432
            WIRE 2800 432 2800 496
            WIRE 2800 496 2992 496
            WIRE 2992 496 2992 560
            WIRE 2992 496 4576 496
            WIRE 4576 496 4576 640
            WIRE 4576 496 5824 496
            WIRE 5824 496 5824 704
            WIRE 2720 432 2720 512
        END BRANCH
        BEGIN INSTANCE XLXI_70 1104 3024 R0
        END INSTANCE
        BEGIN BRANCH ip_next(8:0)
            WIRE 1216 768 1328 768
            BEGIN DISPLAY 1216 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ip_int(15:0)
            WIRE 928 2688 1024 2688
            BEGIN DISPLAY 1024 2688 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ip_int(8:0)
            WIRE 1024 2928 1104 2928
            BEGIN DISPLAY 1024 2928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_72 1376 3008 R0
        END INSTANCE
        BEGIN INSTANCE IP_REG 1824 3200 R0
        END INSTANCE
        BEGIN BRANCH XLXN_398(15:0)
            WIRE 1760 2976 1824 2976
        END BRANCH
        BEGIN BRANCH ip_next(8:0)
            WIRE 1312 2976 1344 2976
            WIRE 1344 2976 1376 2976
            WIRE 1344 2848 1344 2976
            WIRE 1344 2848 1440 2848
            BEGIN DISPLAY 1440 2848 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1760 3040 1824 3040
            BEGIN DISPLAY 1760 3040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1760 3104 1824 3104
            BEGIN DISPLAY 1760 3104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1984 3200 1984 3232
            BEGIN DISPLAY 1984 3232 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ins_ptr(15:0)
            WIRE 272 2416 272 2512
            WIRE 272 2512 272 2624
            WIRE 272 2624 480 2624
            WIRE 272 2416 2208 2416
            WIRE 2208 2416 2208 2976
            WIRE 2144 2976 2208 2976
            BEGIN DISPLAY 272 2512 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 464 1168 480 1168
            WIRE 464 1168 464 1568
            WIRE 464 1568 1456 1568
            WIRE 1456 1248 1456 1552
            WIRE 1456 1552 2192 1552
            WIRE 2192 1552 2192 1632
            WIRE 2192 1552 2384 1552
            WIRE 2384 1552 2992 1552
            WIRE 2992 1552 4544 1552
            WIRE 4544 1552 4912 1552
            WIRE 4912 1552 5808 1552
            WIRE 1456 1552 1456 1568
            WIRE 2384 1200 2384 1552
            WIRE 2992 1200 2992 1552
            WIRE 4544 1328 4544 1552
            WIRE 4912 912 4912 1216
            WIRE 4912 1216 5120 1216
            WIRE 4912 1216 4912 1472
            WIRE 4912 1472 5120 1472
            WIRE 4912 1472 4912 1552
            WIRE 5808 1424 5808 1552
        END BRANCH
        BEGIN INSTANCE XLXI_23 480 896 R0
        END INSTANCE
        BEGIN BRANCH XLXN_399(31:0)
            WIRE 1056 976 1328 976
        END BRANCH
        BEGIN BRANCH ins_ptr(8:0)
            WIRE 368 976 480 976
            BEGIN DISPLAY 368 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_403(63:0)
            WIRE 5472 1024 5520 1024
            WIRE 5520 1024 5520 1184
            WIRE 5520 1184 5568 1184
        END BRANCH
    END SHEET
END SCHEMATIC