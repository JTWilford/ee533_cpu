VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL ID_ins(31:0)
        SIGNAL ID_pc(9:0)
        SIGNAL rst
        SIGNAL EX_branch
        SIGNAL ID_br_addr(9:0)
        SIGNAL EX_mem_ctrl
        SIGNAL en
        SIGNAL ID_alu_ctrl(5:0)
        SIGNAL ID_wb_ctrl(1:0)
        SIGNAL ID_br_ctrl(1:0)
        SIGNAL ID_dest(4:0)
        SIGNAL ID_mem_ctrl
        SIGNAL INS_WEN
        SIGNAL INS_DIN(31:0)
        SIGNAL INS_ADDR(11:0)
        SIGNAL EX_d0(63:0)
        SIGNAL INS_DOUT(31:0)
        SIGNAL EX_d1(63:0)
        SIGNAL clk_2x
        SIGNAL perf_en
        SIGNAL ID_tid(1:0)
        SIGNAL WB_wb_ctrl(0)
        SIGNAL ID_r1(4:0)
        SIGNAL ID_r0(4:0)
        SIGNAL ID_data0(63:0)
        SIGNAL ID_data1(63:0)
        SIGNAL ID_imm(9:0)
        SIGNAL IF_tid(1:0)
        SIGNAL EX_br_addr(9:0)
        SIGNAL IF_pc(9:0)
        SIGNAL EX_tid(1:0)
        SIGNAL EX_dest(4:0)
        SIGNAL EX_data(63:0)
        SIGNAL ID_imm(63:0)
        SIGNAL ID_d1(63:0)
        SIGNAL ID_alu_ctrl(4)
        SIGNAL EX_wb_ctrl(1:0)
        SIGNAL EX_alu_ctrl(5:0)
        SIGNAL EX_br_ctrl(1:0)
        SIGNAL XLXN_669(0:0)
        SIGNAL IF_tid(1:0),IF_pc(9:0)
        SIGNAL EX_alu_ctrl(3:1)
        SIGNAL EX_alu_ctrl(0)
        SIGNAL EX_alu_ctrl(5)
        SIGNAL EX_br_ctrl(1)
        SIGNAL EX_br_ctrl(0)
        SIGNAL ME_mem_ctrl
        SIGNAL ME_wb_ctrl(1:0)
        SIGNAL ME_addr(63:0)
        SIGNAL ME_dest(4:0)
        SIGNAL ME_tid(1:0)
        SIGNAL ME_dout(63:0)
        SIGNAL ME_data(63:0)
        SIGNAL DATA_ADDR(11:0)
        SIGNAL DATA_DIN(63:0)
        SIGNAL DATA_WEN
        SIGNAL ME_addr(11:0)
        SIGNAL ME_wen
        SIGNAL DATA_DOUT(63:0)
        SIGNAL PERF_ADDR(63:0)
        SIGNAL PERF_DOUT(63:0)
        SIGNAL PERF_WREN
        SIGNAL ME_addr(63:32)
        SIGNAL ME_wb_ctrl(1)
        SIGNAL WB_data(63:0)
        SIGNAL WB_dest(4:0)
        SIGNAL WB_tid(1:0)
        SIGNAL WB_wb_ctrl(1:0)
        SIGNAL WB_dmem(63:0)
        SIGNAL WB_wb_ctrl(1)
        SIGNAL WB_wr_data(63:0)
        SIGNAL PERF_DIN(63:0)
        SIGNAL WB_tdest(6:0)
        SIGNAL ID_tr0(6:0)
        SIGNAL ID_tr1(6:0)
        PORT Input clk
        PORT Output ID_ins(31:0)
        PORT Output ID_pc(9:0)
        PORT Input rst
        PORT Output EX_mem_ctrl
        PORT Input en
        PORT Input INS_WEN
        PORT Input INS_DIN(31:0)
        PORT Input INS_ADDR(11:0)
        PORT Output EX_d0(63:0)
        PORT Output INS_DOUT(31:0)
        PORT Output EX_d1(63:0)
        PORT Input clk_2x
        PORT Output ID_tid(1:0)
        PORT Output EX_br_addr(9:0)
        PORT Output EX_tid(1:0)
        PORT Output EX_dest(4:0)
        PORT Output EX_wb_ctrl(1:0)
        PORT Output EX_alu_ctrl(5:0)
        PORT Output EX_br_ctrl(1:0)
        PORT Output ME_mem_ctrl
        PORT Output ME_wb_ctrl(1:0)
        PORT Output ME_addr(63:0)
        PORT Output ME_dest(4:0)
        PORT Output ME_tid(1:0)
        PORT Output ME_data(63:0)
        PORT Input DATA_ADDR(11:0)
        PORT Input DATA_DIN(63:0)
        PORT Input DATA_WEN
        PORT Output DATA_DOUT(63:0)
        PORT Output PERF_ADDR(63:0)
        PORT Output PERF_DOUT(63:0)
        PORT Output PERF_WREN
        PORT Output WB_data(63:0)
        PORT Output WB_dest(4:0)
        PORT Output WB_tid(1:0)
        PORT Output WB_wb_ctrl(1:0)
        PORT Input PERF_DIN(63:0)
        BEGIN BLOCKDEF instructionmem64
            TIMESTAMP 2022 3 29 3 2 20
            RECTANGLE N 32 32 544 576 
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
            BEGIN LINE W 576 80 544 80 
            END LINE
            BEGIN LINE W 576 336 544 336 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF alu64
            TIMESTAMP 2022 3 5 7 3 20
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
            LINE N 96 92 96 32 
        END BLOCKDEF
        BEGIN BLOCKDEF mux2_to_1_x64
            TIMESTAMP 2022 3 25 9 31 42
            RECTANGLE N 64 -128 272 0 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            RECTANGLE N 272 -108 336 -84 
            LINE N 272 -96 336 -96 
            LINE N 192 -128 192 -192 
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
            TIMESTAMP 2022 3 25 7 20 56
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
        BEGIN BLOCKDEF regfile64bit
            TIMESTAMP 2022 3 25 11 21 10
            LINE N 64 -96 0 -96 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -492 64 -468 
            LINE N 320 -480 384 -480 
            RECTANGLE N 320 -492 384 -468 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -428 64 -404 
            LINE N 320 -416 384 -416 
            RECTANGLE N 320 -428 384 -404 
            LINE N 64 -160 0 -160 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -224 0 -224 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -492 320 0 
        END BLOCKDEF
        BEGIN BLOCKDEF perf_interface
            TIMESTAMP 2022 3 13 3 42 2
            RECTANGLE N 64 -320 448 0 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 448 -108 512 -84 
            LINE N 448 -96 512 -96 
            RECTANGLE N 448 -44 512 -20 
            LINE N 448 -32 512 -32 
            LINE N 448 -160 512 -160 
            LINE N 448 -288 512 -288 
            LINE N 448 -240 512 -240 
        END BLOCKDEF
        BEGIN BLOCKDEF dmem_write_protect
            TIMESTAMP 2022 3 13 6 17 4
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF thread_arbiter_4way
            TIMESTAMP 2022 3 25 5 42 4
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF IP_4way
            TIMESTAMP 2022 3 25 5 44 24
            RECTANGLE N 64 -448 320 0 
            RECTANGLE N 320 -428 384 -404 
            LINE N 320 -416 384 -416 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF IF_IDreg
            TIMESTAMP 2022 3 25 5 54 18
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF Br_adder
            TIMESTAMP 2022 3 25 7 22 0
            RECTANGLE N 64 -128 448 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 448 -108 512 -84 
            LINE N 448 -96 512 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ID_EXreg
            TIMESTAMP 2022 3 25 7 40 56
            RECTANGLE N 64 -704 432 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 432 -172 496 -148 
            LINE N 432 -160 496 -160 
            RECTANGLE N 0 -684 64 -660 
            LINE N 64 -672 0 -672 
            RECTANGLE N 432 -684 496 -660 
            LINE N 432 -672 496 -672 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 432 -300 496 -276 
            LINE N 432 -288 496 -288 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -480 0 -480 
            RECTANGLE N 432 -492 496 -468 
            LINE N 432 -480 496 -480 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 432 -364 496 -340 
            LINE N 432 -352 496 -352 
            RECTANGLE N 0 -556 64 -532 
            LINE N 64 -544 0 -544 
            RECTANGLE N 432 -556 496 -532 
            LINE N 432 -544 496 -544 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 432 -236 496 -212 
            LINE N 432 -224 496 -224 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 432 -428 496 -404 
            LINE N 432 -416 496 -416 
            LINE N 64 -608 0 -608 
            LINE N 432 -608 496 -608 
        END BLOCKDEF
        BEGIN BLOCKDEF EX_MEreg
            TIMESTAMP 2022 3 25 8 7 8
            RECTANGLE N 64 -512 432 0 
            LINE N 64 -480 0 -480 
            LINE N 432 -480 496 -480 
            RECTANGLE N 432 -428 496 -404 
            LINE N 432 -416 496 -416 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 432 -364 496 -340 
            LINE N 432 -352 496 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 432 -300 496 -276 
            LINE N 432 -288 496 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 432 -236 496 -212 
            LINE N 432 -224 496 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 432 -172 496 -148 
            LINE N 432 -160 496 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
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
        BEGIN BLOCKDEF datamem64
            TIMESTAMP 2022 3 27 5 26 30
            RECTANGLE N 32 32 544 576 
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
            BEGIN LINE W 576 80 544 80 
            END LINE
            BEGIN LINE W 576 336 544 336 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF ME_WBreg
            TIMESTAMP 2022 3 25 9 27 2
            RECTANGLE N 64 -384 448 0 
            RECTANGLE N 448 -364 512 -340 
            LINE N 448 -352 512 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 448 -300 512 -276 
            LINE N 448 -288 512 -288 
            RECTANGLE N 448 -236 512 -212 
            LINE N 448 -224 512 -224 
            RECTANGLE N 448 -172 512 -148 
            LINE N 448 -160 512 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge_2_5
            TIMESTAMP 2022 3 25 11 12 20
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_23 instructionmem64
            PIN addra(11:0) INS_ADDR(11:0)
            PIN dina(31:0) INS_DIN(31:0)
            PIN wea(0:0) INS_WEN
            PIN clka clk
            PIN addrb(11:0) IF_tid(1:0),IF_pc(9:0)
            PIN dinb(31:0)
            PIN web(0:0) XLXN_669(0:0)
            PIN clkb clk
            PIN douta(31:0) INS_DOUT(31:0)
            PIN doutb(31:0) ID_ins(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_80 IF_IDreg
            PIN ID_pc(9:0) ID_pc(9:0)
            PIN ID_tid(1:0) ID_tid(1:0)
            PIN clk clk
            PIN rst rst
            PIN en en
            PIN IF_pc(9:0) IF_pc(9:0)
            PIN IF_tid(1:0) IF_tid(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_48 mux2_to_1_x64
            PIN I1(63:0) ID_imm(63:0)
            PIN I0(63:0) ID_data1(63:0)
            PIN O(63:0) ID_d1(63:0)
            PIN S ID_alu_ctrl(4)
        END BLOCK
        BEGIN BLOCK XLXI_87 Br_adder
            PIN ins_inc_addr(9:0) ID_pc(9:0)
            PIN immi(9:0) ID_imm(9:0)
            PIN ins_br_addr(9:0) ID_br_addr(9:0)
        END BLOCK
        BEGIN BLOCK XLXI_78 thread_arbiter_4way
            PIN clk clk
            PIN rst rst
            PIN en en
            PIN tid(1:0) IF_tid(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_79 IP_4way
            PIN ins_ptr(9:0) IF_pc(9:0)
            PIN tid(1:0) IF_tid(1:0)
            PIN clk clk
            PIN rst rst
            PIN en en
            PIN branch EX_branch
            PIN br_tid(1:0) EX_tid(1:0)
            PIN br_addr(9:0) EX_br_addr(9:0)
        END BLOCK
        BEGIN BLOCK XLXI_64 decoder
            PIN ins(31:0) ID_ins(31:0)
            PIN mem_ctrl ID_mem_ctrl
            PIN rd(4:0) ID_dest(4:0)
            PIN rs1(4:0) ID_r0(4:0)
            PIN rs2(4:0) ID_r1(4:0)
            PIN imm(63:0) ID_imm(63:0)
            PIN ex_ctrl(5:0) ID_alu_ctrl(5:0)
            PIN wb_ctrl(1:0) ID_wb_ctrl(1:0)
            PIN br_ctrl(1:0) ID_br_ctrl(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_92 ID_EXreg
            PIN clk clk
            PIN reset rst
            PIN ID_tid(1:0) ID_tid(1:0)
            PIN EX_tid(1:0) EX_tid(1:0)
            PIN ID_alu_ctrl(5:0) ID_alu_ctrl(5:0)
            PIN EX_alu_ctrl(5:0) EX_alu_ctrl(5:0)
            PIN ID_br_ctrl(1:0) ID_br_ctrl(1:0)
            PIN EX_br_ctrl(1:0) EX_br_ctrl(1:0)
            PIN ID_br_addr(9:0) ID_br_addr(9:0)
            PIN EX_br_addr(9:0) EX_br_addr(9:0)
            PIN ID_data1(63:0) ID_d1(63:0)
            PIN EX_d1(63:0) EX_d1(63:0)
            PIN ID_wb_ctrl(1:0) ID_wb_ctrl(1:0)
            PIN EX_wb_ctrl(1:0) EX_wb_ctrl(1:0)
            PIN ID_dest(4:0) ID_dest(4:0)
            PIN EX_dest(4:0) EX_dest(4:0)
            PIN ID_data0(63:0) ID_data0(63:0)
            PIN EX_d0(63:0) EX_d0(63:0)
            PIN ID_mem_ctrl ID_mem_ctrl
            PIN EX_mem_ctrl EX_mem_ctrl
        END BLOCK
        BEGIN BLOCK XLXI_101 gnd
            PIN G XLXN_669(0:0)
        END BLOCK
        BEGIN BLOCK XLXI_30 alu64
            PIN GT
            PIN EQ
            PIN Q(63:0) EX_data(63:0)
            PIN OVR
            PIN LT
            PIN R2(63:0) EX_d1(63:0)
            PIN R1(63:0) EX_d0(63:0)
            PIN OP(2:0) EX_alu_ctrl(3:1)
            PIN MD EX_alu_ctrl(0)
            PIN en EX_alu_ctrl(5)
        END BLOCK
        BEGIN BLOCK XLXI_93 EX_MEreg
            PIN EX_mem_ctrl EX_mem_ctrl
            PIN ME_mem_ctrl ME_mem_ctrl
            PIN ME_wb_ctrl(1:0) ME_wb_ctrl(1:0)
            PIN EX_wb_ctrl(1:0) EX_wb_ctrl(1:0)
            PIN ME_data(63:0) ME_data(63:0)
            PIN EX_data(63:0) EX_data(63:0)
            PIN EX_addr(63:0) EX_d1(63:0)
            PIN ME_addr(63:0) ME_addr(63:0)
            PIN EX_dest(4:0) EX_dest(4:0)
            PIN ME_dest(4:0) ME_dest(4:0)
            PIN EX_tid(1:0) EX_tid(1:0)
            PIN ME_tid(1:0) ME_tid(1:0)
            PIN clk clk
            PIN rst rst
        END BLOCK
        BEGIN BLOCK XLXI_94 BEZ_BNEZ_detect
            PIN BEZ_op EX_br_ctrl(1)
            PIN BNEZ_op EX_br_ctrl(0)
            PIN Reg_data(63:0) EX_d0(63:0)
            PIN Branch_signal EX_branch
        END BLOCK
        BEGIN BLOCK XLXI_106 datamem64
            PIN addra(11:0) DATA_ADDR(11:0)
            PIN dina(63:0) DATA_DIN(63:0)
            PIN wea(0:0) DATA_WEN
            PIN clka clk
            PIN addrb(11:0) ME_addr(11:0)
            PIN dinb(63:0) ME_data(63:0)
            PIN web(0:0) ME_wen
            PIN clkb clk
            PIN douta(63:0) DATA_DOUT(63:0)
            PIN doutb(63:0) ME_dout(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_77 dmem_write_protect
            PIN mem_wr ME_mem_ctrl
            PIN addr_hi(31:0) ME_addr(63:32)
            PIN wren ME_wen
        END BLOCK
        BEGIN BLOCK XLXI_76 perf_interface
            PIN wren ME_mem_ctrl
            PIN clk clk
            PIN rst rst
            PIN addr_in(63:0) ME_addr(63:0)
            PIN data_in(63:0) ME_data(63:0)
            PIN perf_data_out(63:0) PERF_DOUT(63:0)
            PIN perf_addr_out(63:0) PERF_ADDR(63:0)
            PIN perf_wren PERF_WREN
            PIN perf_en perf_en
            PIN memreg ME_wb_ctrl(1)
        END BLOCK
        BEGIN BLOCK XLXI_120 ME_WBreg
            PIN WB_wb_ctrl(1:0) WB_wb_ctrl(1:0)
            PIN ME_wb_ctrl(1:0) ME_wb_ctrl(1:0)
            PIN ME_data(63:0) ME_data(63:0)
            PIN ME_dest(4:0) ME_dest(4:0)
            PIN ME_tid(1:0) ME_tid(1:0)
            PIN WB_data(63:0) WB_data(63:0)
            PIN WB_dest(4:0) WB_dest(4:0)
            PIN WB_tid(1:0) WB_tid(1:0)
            PIN clk clk
            PIN rst rst
        END BLOCK
        BEGIN BLOCK XLXI_51 mux2_to_1_x64
            PIN I1(63:0) WB_dmem(63:0)
            PIN I0(63:0) WB_data(63:0)
            PIN O(63:0) WB_wr_data(63:0)
            PIN S WB_wb_ctrl(1)
        END BLOCK
        BEGIN BLOCK XLXI_75 mux2_to_1_x64
            PIN I1(63:0) PERF_DIN(63:0)
            PIN I0(63:0) ME_dout(63:0)
            PIN O(63:0) WB_dmem(63:0)
            PIN S perf_en
        END BLOCK
        BEGIN BLOCK XLXI_121 busmerge_2_5
            PIN A(1:0) ID_tid(1:0)
            PIN B(4:0) ID_r0(4:0)
            PIN O(6:0) ID_tr0(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_122 busmerge_2_5
            PIN A(1:0) ID_tid(1:0)
            PIN B(4:0) ID_r1(4:0)
            PIN O(6:0) ID_tr1(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_123 busmerge_2_5
            PIN A(1:0) WB_tid(1:0)
            PIN B(4:0) WB_dest(4:0)
            PIN O(6:0) WB_tdest(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_124 regfile64bit
            PIN clk clk_2x
            PIN r0addr(6:0) ID_tr0(6:0)
            PIN r0_data(63:0) ID_data0(63:0)
            PIN r1addr(6:0) ID_tr1(6:0)
            PIN r1_data(63:0) ID_data1(63:0)
            PIN rd_en clk
            PIN wraddr(6:0) WB_tdest(6:0)
            PIN wr_din(63:0) WB_wr_data(63:0)
            PIN wr_en WB_wb_ctrl(0)
            PIN rst rst
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN INSTANCE XLXI_23 480 896 R0
        END INSTANCE
        BEGIN BRANCH ID_ins(31:0)
            WIRE 1056 1232 1280 1232
        END BRANCH
        BEGIN BRANCH INS_WEN
            WIRE 432 1104 480 1104
        END BRANCH
        BEGIN BRANCH INS_DIN(31:0)
            WIRE 432 1008 480 1008
        END BRANCH
        BEGIN BRANCH INS_ADDR(11:0)
            WIRE 432 976 480 976
        END BRANCH
        IOMARKER 432 1104 INS_WEN R180 28
        IOMARKER 432 1008 INS_DIN(31:0) R180 28
        IOMARKER 432 976 INS_ADDR(11:0) R180 28
        BEGIN BRANCH INS_DOUT(31:0)
            WIRE 1056 976 1104 976
        END BRANCH
        BEGIN INSTANCE XLXI_80 1136 912 R0
        END INSTANCE
        BEGIN BRANCH ID_tid(1:0)
            WIRE 1520 880 1536 880
            WIRE 1536 880 1568 880
            WIRE 1536 816 1536 880
            WIRE 1536 816 1600 816
            BEGIN DISPLAY 1568 880 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 464 1168 480 1168
            BEGIN DISPLAY 464 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 464 1424 480 1424
            BEGIN DISPLAY 464 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_br_addr(9:0)
            WIRE 2160 624 2192 624
            BEGIN DISPLAY 2192 624 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_wr_data(63:0)
            WIRE 1664 1088 1680 1088
            BEGIN DISPLAY 1664 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_wb_ctrl(0)
            WIRE 1664 1216 1680 1216
            BEGIN DISPLAY 1664 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1664 1280 1680 1280
            BEGIN DISPLAY 1664 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk_2x
            WIRE 1664 1344 1680 1344
            BEGIN DISPLAY 1664 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_imm(9:0)
            WIRE 1632 688 1648 688
            BEGIN DISPLAY 1632 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_87 1648 720 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_78 208 1904 R0
        END INSTANCE
        BEGIN BRANCH IF_tid(1:0)
            WIRE 592 1744 672 1744
            WIRE 672 1744 832 1744
            BEGIN DISPLAY 672 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 128 1744 208 1744
            BEGIN DISPLAY 128 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 128 1808 208 1808
            BEGIN DISPLAY 128 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 128 1872 208 1872
            BEGIN DISPLAY 128 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 800 2000 832 2000
            BEGIN DISPLAY 800 2000 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 800 2064 832 2064
            BEGIN DISPLAY 800 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 800 2128 832 2128
            BEGIN DISPLAY 800 2128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IF_pc(9:0)
            WIRE 1216 1744 1248 1744
            BEGIN DISPLAY 1248 1744 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IF_pc(9:0)
            WIRE 1104 624 1136 624
            BEGIN DISPLAY 1104 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH IF_tid(1:0)
            WIRE 1104 688 1136 688
            BEGIN DISPLAY 1104 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1104 752 1136 752
            BEGIN DISPLAY 1104 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1104 816 1136 816
            BEGIN DISPLAY 1104 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH en
            WIRE 1104 880 1136 880
            BEGIN DISPLAY 1104 880 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk_2x
            WIRE 208 256 272 256
        END BRANCH
        BEGIN BRANCH clk
            WIRE 208 192 272 192
        END BRANCH
        BEGIN BRANCH en
            WIRE 208 320 272 320
        END BRANCH
        BEGIN BRANCH rst
            WIRE 208 384 272 384
        END BRANCH
        IOMARKER 208 256 clk_2x R180 28
        IOMARKER 208 192 clk R180 28
        IOMARKER 208 320 en R180 28
        IOMARKER 208 384 rst R180 28
        BEGIN INSTANCE XLXI_79 832 2160 R0
        END INSTANCE
        BEGIN BRANCH EX_branch
            WIRE 800 1808 832 1808
            BEGIN DISPLAY 800 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_tid(1:0)
            WIRE 800 1872 832 1872
            BEGIN DISPLAY 800 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_br_addr(9:0)
            WIRE 800 1936 832 1936
            BEGIN DISPLAY 800 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_br_ctrl(1:0)
            WIRE 2064 2048 2160 2048
            BEGIN DISPLAY 2160 2048 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_wb_ctrl(1:0)
            WIRE 2064 1984 2160 1984
            BEGIN DISPLAY 2160 1984 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_alu_ctrl(5:0)
            WIRE 2064 1920 2160 1920
            BEGIN DISPLAY 2160 1920 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_imm(63:0)
            WIRE 2064 1856 2160 1856
            BEGIN DISPLAY 2160 1856 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_r1(4:0)
            WIRE 2064 1792 2160 1792
            BEGIN DISPLAY 2160 1792 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_r0(4:0)
            WIRE 2064 1728 2160 1728
            BEGIN DISPLAY 2160 1728 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_dest(4:0)
            WIRE 2064 1664 2160 1664
            BEGIN DISPLAY 2160 1664 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_mem_ctrl
            WIRE 2064 1600 2160 1600
            BEGIN DISPLAY 2160 1600 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_ins(31:0)
            WIRE 1600 1600 1680 1600
            BEGIN DISPLAY 1600 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_64 1680 2080 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_48 2112 1488 R0
        END INSTANCE
        BEGIN BRANCH ID_data1(63:0)
            WIRE 2096 1392 2112 1392
            BEGIN DISPLAY 2096 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_imm(63:0)
            WIRE 2096 1456 2112 1456
            BEGIN DISPLAY 2096 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_d1(63:0)
            WIRE 2448 1392 2480 1392
            BEGIN DISPLAY 2480 1392 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_alu_ctrl(4)
            WIRE 2240 1280 2304 1280
            WIRE 2304 1280 2304 1296
            BEGIN DISPLAY 2240 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_br_addr(9:0)
            WIRE 3104 848 3136 848
        END BRANCH
        BEGIN BRANCH EX_alu_ctrl(5:0)
            WIRE 3104 656 3136 656
        END BRANCH
        BEGIN BRANCH EX_mem_ctrl
            WIRE 3104 720 3136 720
        END BRANCH
        BEGIN BRANCH ID_dest(4:0)
            WIRE 2528 1104 2608 1104
            BEGIN DISPLAY 2528 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_alu_ctrl(5:0)
            WIRE 2576 656 2608 656
            BEGIN DISPLAY 2576 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_mem_ctrl
            WIRE 2576 720 2608 720
            BEGIN DISPLAY 2576 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_wb_ctrl(1:0)
            WIRE 2576 784 2608 784
            BEGIN DISPLAY 2576 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_br_ctrl(1:0)
            WIRE 2528 1040 2608 1040
            BEGIN DISPLAY 2528 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_br_addr(9:0)
            WIRE 2576 848 2608 848
            BEGIN DISPLAY 2576 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_tid(1:0)
            WIRE 3104 1168 3136 1168
        END BRANCH
        BEGIN BRANCH ID_tid(1:0)
            WIRE 2528 1168 2608 1168
            BEGIN DISPLAY 2528 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_dest(4:0)
            WIRE 3104 1104 3136 1104
        END BRANCH
        BEGIN BRANCH EX_d1(63:0)
            WIRE 3104 976 3136 976
        END BRANCH
        BEGIN BRANCH EX_d0(63:0)
            WIRE 3104 912 3136 912
        END BRANCH
        BEGIN BRANCH ID_data0(63:0)
            WIRE 2576 912 2608 912
            BEGIN DISPLAY 2576 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_br_ctrl(1:0)
            WIRE 3104 1040 3136 1040
        END BRANCH
        BEGIN BRANCH EX_wb_ctrl(1:0)
            WIRE 3104 784 3136 784
        END BRANCH
        BEGIN BRANCH clk
            WIRE 2592 1232 2608 1232
            BEGIN DISPLAY 2592 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 2592 1296 2608 1296
            BEGIN DISPLAY 2592 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_d1(63:0)
            WIRE 2576 976 2608 976
            BEGIN DISPLAY 2576 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_92 2608 1328 R0
        END INSTANCE
        BEGIN BRANCH IF_tid(1:0),IF_pc(9:0)
            WIRE 464 1232 480 1232
            BEGIN DISPLAY 464 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_669(0:0)
            WIRE 336 1360 480 1360
            WIRE 336 1360 336 1408
        END BRANCH
        INSTANCE XLXI_101 272 1536 R0
        IOMARKER 1104 976 INS_DOUT(31:0) R0 28
        IOMARKER 1280 1232 ID_ins(31:0) R0 28
        BEGIN INSTANCE XLXI_30 3216 1904 R0
        END INSTANCE
        BEGIN BRANCH EX_alu_ctrl(3:1)
            WIRE 3328 1280 3360 1280
            WIRE 3360 1280 3360 1328
            BEGIN DISPLAY 3328 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_alu_ctrl(0)
            WIRE 3296 2096 3360 2096
            WIRE 3360 2000 3360 2096
            BEGIN DISPLAY 3296 2096 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_alu_ctrl(5)
            WIRE 3296 2048 3312 2048
            WIRE 3312 2000 3312 2048
            BEGIN DISPLAY 3296 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_d1(63:0)
            WIRE 3200 1808 3216 1808
            BEGIN DISPLAY 3200 1808 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_d0(63:0)
            WIRE 3200 1520 3216 1520
            BEGIN DISPLAY 3200 1520 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_data(63:0)
            WIRE 3664 1680 3696 1680
            BEGIN DISPLAY 3696 1680 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_93 3856 1136 R0
        END INSTANCE
        BEGIN BRANCH EX_data(63:0)
            WIRE 3824 784 3856 784
            BEGIN DISPLAY 3824 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_mem_ctrl
            WIRE 3824 656 3856 656
            BEGIN DISPLAY 3824 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_d1(63:0)
            WIRE 3824 848 3856 848
            BEGIN DISPLAY 3824 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_dest(4:0)
            WIRE 3824 912 3856 912
            BEGIN DISPLAY 3824 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_tid(1:0)
            WIRE 3824 976 3856 976
            BEGIN DISPLAY 3824 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 3824 1040 3856 1040
            BEGIN DISPLAY 3824 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 3824 1104 3856 1104
            BEGIN DISPLAY 3824 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_wb_ctrl(1:0)
            WIRE 3824 720 3856 720
            BEGIN DISPLAY 3824 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_branch
            WIRE 3664 416 3696 416
            BEGIN DISPLAY 3696 416 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_d0(63:0)
            WIRE 3232 416 3280 416
            BEGIN DISPLAY 3232 416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_94 3280 512 R0
        END INSTANCE
        BEGIN BRANCH EX_br_ctrl(1)
            WIRE 3408 304 3424 304
            WIRE 3424 304 3424 320
            BEGIN DISPLAY 3408 304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EX_br_ctrl(0)
            WIRE 3488 304 3488 320
            WIRE 3488 304 3504 304
            BEGIN DISPLAY 3504 304 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_mem_ctrl
            WIRE 4352 656 4384 656
        END BRANCH
        BEGIN BRANCH ME_wb_ctrl(1:0)
            WIRE 4352 720 4384 720
        END BRANCH
        BEGIN BRANCH ME_addr(63:0)
            WIRE 4352 848 4384 848
        END BRANCH
        BEGIN BRANCH ME_dest(4:0)
            WIRE 4352 912 4384 912
        END BRANCH
        BEGIN BRANCH ME_tid(1:0)
            WIRE 4352 976 4384 976
        END BRANCH
        BEGIN BRANCH ME_data(63:0)
            WIRE 4352 784 4384 784
        END BRANCH
        BEGIN INSTANCE XLXI_106 4464 1168 R0
        END INSTANCE
        BEGIN BRANCH DATA_ADDR(11:0)
            WIRE 4448 1248 4464 1248
        END BRANCH
        BEGIN BRANCH DATA_DIN(63:0)
            WIRE 4448 1280 4464 1280
        END BRANCH
        BEGIN BRANCH DATA_WEN
            WIRE 4448 1376 4464 1376
        END BRANCH
        BEGIN BRANCH clk
            WIRE 4448 1440 4464 1440
            BEGIN DISPLAY 4448 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_addr(11:0)
            WIRE 4448 1504 4464 1504
            BEGIN DISPLAY 4448 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_wen
            WIRE 4448 1632 4464 1632
            BEGIN DISPLAY 4448 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 4448 1696 4464 1696
            BEGIN DISPLAY 4448 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH DATA_DOUT(63:0)
            WIRE 5040 1248 5056 1248
        END BRANCH
        BEGIN BRANCH ME_dout(63:0)
            WIRE 5040 1504 5056 1504
            BEGIN DISPLAY 5056 1504 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_77 4560 2016 R0
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 4432 2240 4496 2240
            BEGIN DISPLAY 4432 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 4432 2304 4496 2304
            BEGIN DISPLAY 4432 2304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PERF_ADDR(63:0)
            WIRE 5008 2432 5088 2432
        END BRANCH
        BEGIN BRANCH PERF_DOUT(63:0)
            WIRE 5008 2368 5088 2368
        END BRANCH
        BEGIN BRANCH PERF_WREN
            WIRE 5008 2304 5088 2304
        END BRANCH
        BEGIN BRANCH perf_en
            WIRE 5008 2176 5088 2176
            BEGIN DISPLAY 5088 2176 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_76 4496 2464 R0
        END INSTANCE
        BEGIN BRANCH ME_mem_ctrl
            WIRE 4464 2176 4496 2176
            BEGIN DISPLAY 4464 2176 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_addr(63:0)
            WIRE 4464 2368 4496 2368
            BEGIN DISPLAY 4464 2368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_mem_ctrl
            WIRE 4528 1920 4560 1920
            BEGIN DISPLAY 4528 1920 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_addr(63:32)
            WIRE 4528 1984 4560 1984
            BEGIN DISPLAY 4528 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_wen
            WIRE 4944 1920 4976 1920
            BEGIN DISPLAY 4976 1920 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_data(63:0)
            WIRE 4448 1536 4464 1536
            BEGIN DISPLAY 4448 1536 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_data(63:0)
            WIRE 4464 2432 4496 2432
            BEGIN DISPLAY 4464 2432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_wb_ctrl(1)
            WIRE 5008 2224 5088 2224
            BEGIN DISPLAY 5088 2224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 4448 1248 DATA_ADDR(11:0) R180 28
        IOMARKER 4448 1280 DATA_DIN(63:0) R180 28
        IOMARKER 4448 1376 DATA_WEN R180 28
        IOMARKER 5088 2432 PERF_ADDR(63:0) R0 28
        IOMARKER 5088 2368 PERF_DOUT(63:0) R0 28
        IOMARKER 5088 2304 PERF_WREN R0 28
        IOMARKER 5056 1248 DATA_DOUT(63:0) R0 28
        BEGIN INSTANCE XLXI_120 5040 1008 R0
        END INSTANCE
        BEGIN BRANCH ME_wb_ctrl(1:0)
            WIRE 5008 656 5040 656
            BEGIN DISPLAY 5008 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_data(63:0)
            WIRE 5008 720 5040 720
            BEGIN DISPLAY 5008 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_dest(4:0)
            WIRE 5008 784 5040 784
            BEGIN DISPLAY 5008 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_tid(1:0)
            WIRE 5008 848 5040 848
            BEGIN DISPLAY 5008 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 5008 912 5040 912
            BEGIN DISPLAY 5008 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 5008 976 5040 976
            BEGIN DISPLAY 5008 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_data(63:0)
            WIRE 5552 720 5568 720
        END BRANCH
        BEGIN BRANCH WB_dest(4:0)
            WIRE 5552 784 5568 784
        END BRANCH
        BEGIN BRANCH WB_tid(1:0)
            WIRE 5552 848 5568 848
        END BRANCH
        BEGIN BRANCH WB_wb_ctrl(1:0)
            WIRE 5552 656 5568 656
        END BRANCH
        BEGIN INSTANCE XLXI_51 6032 816 R0
        END INSTANCE
        BEGIN BRANCH WB_data(63:0)
            WIRE 6016 720 6032 720
            BEGIN DISPLAY 6016 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_dmem(63:0)
            WIRE 6016 784 6032 784
            BEGIN DISPLAY 6016 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_wb_ctrl(1)
            WIRE 6192 608 6224 608
            WIRE 6224 608 6224 624
            BEGIN DISPLAY 6192 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_wr_data(63:0)
            WIRE 6368 720 6384 720
            BEGIN DISPLAY 6384 720 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PERF_DIN(63:0)
            WIRE 5744 1264 5760 1264
        END BRANCH
        BEGIN BRANCH perf_en
            WIRE 5904 1072 5952 1072
            WIRE 5952 1072 5952 1104
            BEGIN DISPLAY 5904 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ME_dout(63:0)
            WIRE 5744 1200 5760 1200
            BEGIN DISPLAY 5744 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_75 5760 1296 R0
        END INSTANCE
        BEGIN BRANCH WB_dmem(63:0)
            WIRE 6096 1200 6112 1200
            BEGIN DISPLAY 6112 1200 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 5744 1264 PERF_DIN(63:0) R180 28
        BEGIN BRANCH ID_pc(9:0)
            WIRE 1520 624 1552 624
            WIRE 1552 624 1600 624
            WIRE 1600 624 1648 624
            WIRE 1552 480 1552 624
            WIRE 1552 480 1632 480
            BEGIN DISPLAY 1600 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_data0(63:0)
            WIRE 2064 960 2080 960
            BEGIN DISPLAY 2080 960 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_data1(63:0)
            WIRE 2064 1024 2080 1024
            BEGIN DISPLAY 2080 1024 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_tr0(6:0)
            WIRE 1664 960 1680 960
            BEGIN DISPLAY 1664 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_tr1(6:0)
            WIRE 1664 1024 1680 1024
            BEGIN DISPLAY 1664 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_tdest(6:0)
            WIRE 1664 1152 1680 1152
            BEGIN DISPLAY 1664 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_121 1760 2336 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_122 1760 2512 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_123 1760 2688 R0
        END INSTANCE
        BEGIN BRANCH WB_tdest(6:0)
            WIRE 2144 2592 2176 2592
            BEGIN DISPLAY 2176 2592 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_tid(1:0)
            WIRE 1744 2592 1760 2592
            BEGIN DISPLAY 1744 2592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WB_dest(4:0)
            WIRE 1744 2656 1760 2656
            BEGIN DISPLAY 1744 2656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_r1(4:0)
            WIRE 1744 2480 1760 2480
            BEGIN DISPLAY 1744 2480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_tid(1:0)
            WIRE 1744 2416 1760 2416
            BEGIN DISPLAY 1744 2416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_r0(4:0)
            WIRE 1744 2304 1760 2304
            BEGIN DISPLAY 1744 2304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_tid(1:0)
            WIRE 1744 2240 1760 2240
            BEGIN DISPLAY 1744 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_tr0(6:0)
            WIRE 2144 2240 2176 2240
            BEGIN DISPLAY 2176 2240 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ID_tr1(6:0)
            WIRE 2144 2416 2176 2416
            BEGIN DISPLAY 2176 2416 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_124 1680 1440 R0
        END INSTANCE
        BEGIN BRANCH rst
            WIRE 1664 1408 1680 1408
            BEGIN DISPLAY 1664 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 1632 480 ID_pc(9:0) R0 28
        IOMARKER 1600 816 ID_tid(1:0) R0 28
        IOMARKER 3136 848 EX_br_addr(9:0) R0 28
        IOMARKER 3136 656 EX_alu_ctrl(5:0) R0 28
        IOMARKER 3136 720 EX_mem_ctrl R0 28
        IOMARKER 3136 1168 EX_tid(1:0) R0 28
        IOMARKER 3136 1104 EX_dest(4:0) R0 28
        IOMARKER 3136 976 EX_d1(63:0) R0 28
        IOMARKER 3136 912 EX_d0(63:0) R0 28
        IOMARKER 3136 1040 EX_br_ctrl(1:0) R0 28
        IOMARKER 3136 784 EX_wb_ctrl(1:0) R0 28
        IOMARKER 4384 656 ME_mem_ctrl R0 28
        IOMARKER 4384 720 ME_wb_ctrl(1:0) R0 28
        IOMARKER 4384 848 ME_addr(63:0) R0 28
        IOMARKER 4384 912 ME_dest(4:0) R0 28
        IOMARKER 4384 976 ME_tid(1:0) R0 28
        IOMARKER 4384 784 ME_data(63:0) R0 28
        IOMARKER 5568 720 WB_data(63:0) R0 28
        IOMARKER 5568 784 WB_dest(4:0) R0 28
        IOMARKER 5568 848 WB_tid(1:0) R0 28
        IOMARKER 5568 656 WB_wb_ctrl(1:0) R0 28
    END SHEET
END SCHEMATIC
