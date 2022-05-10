VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL wena
        SIGNAL cpu_addr_in(8:0)
        SIGNAL cpu_din(63:0)
        SIGNAL in_data(63:0)
        SIGNAL fifo_head_ptr(15:0)
        SIGNAL fifo_tail_ptr(15:0)
        SIGNAL XLXN_87(15:0)
        SIGNAL XLXN_88(15:0)
        SIGNAL rst
        SIGNAL clk
        SIGNAL end_of_pkt
        SIGNAL cpu_write_head
        SIGNAL cpu_din(8:0)
        SIGNAL fifo_din(63:0)
        SIGNAL fifo_write_addr(8:0)
        SIGNAL hold
        SIGNAL cpu_write_tail
        SIGNAL cpu_done
        SIGNAL fifo_done
        SIGNAL dout_data(63:0)
        SIGNAL out_data(63:0)
        SIGNAL head_ce
        SIGNAL XLXN_327(0:0)
        SIGNAL XLXN_328
        SIGNAL cpu_write_data
        SIGNAL cpu_ctrl
        SIGNAL cpu_ctrl_pre
        SIGNAL XLXN_341(0:0)
        SIGNAL out_ctrl(7:0)
        SIGNAL cpu_data
        SIGNAL cpu_pkt_ctrl
        SIGNAL cpu_tail
        SIGNAL cpu_head
        SIGNAL cpu_cmd(1:0)
        SIGNAL cpu_write
        SIGNAL cpu_write_pkt_ctrl
        SIGNAL wenb
        SIGNAL cpu_pkt_ctrl_pre
        SIGNAL dout_ctrl(7:0)
        SIGNAL XLXN_412(7:0)
        SIGNAL cpu_din(7:0)
        SIGNAL in_ctrl(7:0)
        SIGNAL fifo_tail_ptr(8:0)
        SIGNAL fifo_head_ptr(8:0)
        SIGNAL out_rdy
        SIGNAL write
        SIGNAL in_wr
        SIGNAL read
        SIGNAL out_wr
        SIGNAL XLXN_428(8:0)
        SIGNAL XLXN_429(8:0)
        SIGNAL dout_a(63:0)
        SIGNAL cpu_send
        PORT Input cpu_addr_in(8:0)
        PORT Input cpu_din(63:0)
        PORT Input in_data(63:0)
        PORT Input rst
        PORT Input clk
        PORT Input end_of_pkt
        PORT Output hold
        PORT Output out_data(63:0)
        PORT Input cpu_ctrl
        PORT Output out_ctrl(7:0)
        PORT Input cpu_cmd(1:0)
        PORT Input cpu_write
        PORT Input in_ctrl(7:0)
        PORT Input out_rdy
        PORT Input in_wr
        PORT Output out_wr
        PORT Output dout_a(63:0)
        PORT Input cpu_send
        BEGIN BLOCKDEF data_mux
            TIMESTAMP 2022 3 9 17 48 13
            RECTANGLE N 64 -192 384 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 384 -172 448 -148 
            LINE N 384 -160 448 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF addr_mux
            TIMESTAMP 2022 3 10 4 12 5
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF CVTB_mem
            TIMESTAMP 2022 3 12 8 21 36
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
        BEGIN BLOCKDEF cb16cle
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -384 320 -384 
            RECTANGLE N 320 -396 384 -372 
            RECTANGLE N 0 -396 64 -372 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -448 320 -64 
            LINE N 384 -192 320 -192 
            LINE N 384 -128 320 -128 
            LINE N 0 -384 64 -384 
            LINE N 0 -256 64 -256 
            LINE N 0 -32 64 -32 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF pointer_extend
            TIMESTAMP 2022 3 10 22 46 48
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF mux4to1_64
            TIMESTAMP 2022 3 12 16 26 20
            RECTANGLE N 64 -320 384 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 384 -172 448 -148 
            LINE N 384 -160 448 -160 
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
        BEGIN BLOCKDEF fdr
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF CVTB_ctrlmem
            TIMESTAMP 2022 3 12 9 4 46
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
        BEGIN BLOCKDEF cpu_write_mux
            TIMESTAMP 2022 3 12 9 35 58
            RECTANGLE N 64 -320 416 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 416 -288 480 -288 
            LINE N 416 -224 480 -224 
            LINE N 416 -160 480 -160 
            LINE N 416 -96 480 -96 
            LINE N 416 -32 480 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl_data_mux
            TIMESTAMP 2022 3 12 10 17 40
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF fifo_write_module
            TIMESTAMP 2022 5 10 9 35 38
            RECTANGLE N 64 -448 320 0 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -416 384 -416 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF dff_9bit
            TIMESTAMP 2022 3 10 23 22 54
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 64 -80 0 -80 
            LINE N 64 -16 0 -16 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF out_data_mux
            TIMESTAMP 2022 3 12 16 43 14
            RECTANGLE N 64 -448 384 0 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 384 -428 448 -404 
            LINE N 384 -416 448 -416 
        END BLOCKDEF
        BEGIN BLOCK XLXI_25 data_mux
            PIN sel hold
            PIN data0(63:0) in_data(63:0)
            PIN data1(63:0) cpu_din(63:0)
            PIN data_out(63:0) fifo_din(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_27 addr_mux
            PIN sel hold
            PIN addr0(8:0) fifo_tail_ptr(8:0)
            PIN addr1(8:0) cpu_addr_in(8:0)
            PIN addr_out(8:0) fifo_write_addr(8:0)
        END BLOCK
        BEGIN BLOCK TailPointer cb16cle
            PIN C clk
            PIN CE XLXN_328
            PIN CLR rst
            PIN D(15:0) XLXN_87(15:0)
            PIN L cpu_write_tail
            PIN CEO
            PIN Q(15:0) fifo_tail_ptr(15:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK HeadPointer cb16cle
            PIN C clk
            PIN CE head_ce
            PIN CLR rst
            PIN D(15:0) XLXN_88(15:0)
            PIN L cpu_write_head
            PIN CEO
            PIN Q(15:0) fifo_head_ptr(15:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_34 pointer_extend
            PIN ip_in(8:0) cpu_din(8:0)
            PIN ip_out(15:0) XLXN_87(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_35 pointer_extend
            PIN ip_in(8:0) cpu_din(8:0)
            PIN ip_out(15:0) XLXN_88(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_87 CVTB_mem
            PIN addra(8:0) fifo_write_addr(8:0)
            PIN dina(63:0) fifo_din(63:0)
            PIN wea(0:0) wena
            PIN clka clk
            PIN addrb(8:0) fifo_head_ptr(8:0)
            PIN dinb(63:0)
            PIN web(0:0) XLXN_327(0:0)
            PIN clkb clk
            PIN douta(63:0) dout_data(63:0)
            PIN doutb(63:0) out_data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_65 mux4to1_64
            PIN data0(8:0) fifo_tail_ptr(8:0)
            PIN data1(8:0) fifo_head_ptr(8:0)
            PIN data2 hold
            PIN data3 fifo_done
            PIN sel(1:0) cpu_cmd(1:0)
            PIN data_out(8:0) XLXN_428(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_113 gnd
            PIN G XLXN_327(0:0)
        END BLOCK
        BEGIN BLOCK XLXI_116 CVTB_ctrlmem
            PIN addra(8:0) fifo_write_addr(8:0)
            PIN dina(7:0) XLXN_412(7:0)
            PIN wea(0:0) wenb
            PIN clka clk
            PIN addrb(8:0) fifo_head_ptr(8:0)
            PIN dinb(7:0)
            PIN web(0:0) XLXN_341(0:0)
            PIN clkb clk
            PIN douta(7:0) dout_ctrl(7:0)
            PIN doutb(7:0) out_ctrl(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_117 gnd
            PIN G XLXN_341(0:0)
        END BLOCK
        BEGIN BLOCK XLXI_118 cpu_write_mux
            PIN cpu_ctrl cpu_ctrl
            PIN cpu_cmd(1:0) cpu_cmd(1:0)
            PIN cpu_write_tail cpu_tail
            PIN cpu_write_head cpu_head
            PIN cpu_done cpu_done
            PIN cpu_write_data cpu_data
            PIN cpu_pkt_ctrl cpu_pkt_ctrl
        END BLOCK
        BEGIN BLOCK XLXI_119 and2
            PIN I0 cpu_write
            PIN I1 cpu_tail
            PIN O cpu_write_tail
        END BLOCK
        BEGIN BLOCK XLXI_120 and2
            PIN I0 cpu_write
            PIN I1 cpu_head
            PIN O cpu_write_head
        END BLOCK
        BEGIN BLOCK XLXI_121 and2
            PIN I0 cpu_write
            PIN I1 cpu_data
            PIN O cpu_write_data
        END BLOCK
        BEGIN BLOCK XLXI_122 and2
            PIN I0 cpu_write
            PIN I1 cpu_pkt_ctrl
            PIN O cpu_write_pkt_ctrl
        END BLOCK
        BEGIN BLOCK XLXI_115 fdr
            PIN C clk
            PIN D cpu_ctrl
            PIN R rst
            PIN Q cpu_ctrl_pre
        END BLOCK
        BEGIN BLOCK XLXI_127 fdr
            PIN C clk
            PIN D cpu_pkt_ctrl
            PIN R rst
            PIN Q cpu_pkt_ctrl_pre
        END BLOCK
        BEGIN BLOCK XLXI_129 ctrl_data_mux
            PIN sel hold
            PIN data0(7:0) in_ctrl(7:0)
            PIN data1(7:0) cpu_din(7:0)
            PIN data_out(7:0) XLXN_412(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_131 or2
            PIN I0 read
            PIN I1 cpu_write_head
            PIN O head_ce
        END BLOCK
        BEGIN BLOCK XLXI_132 fifo_write_module
            PIN endpkt end_of_pkt
            PIN done cpu_done
            PIN cpu_send cpu_send
            PIN clk clk
            PIN rst rst
            PIN rd_ptr(8:0) fifo_head_ptr(8:0)
            PIN wr_ptr(8:0) fifo_tail_ptr(8:0)
            PIN hold hold
            PIN fifo_done fifo_done
        END BLOCK
        BEGIN BLOCK XLXI_133 fdr
            PIN C clk
            PIN D fifo_done
            PIN R rst
            PIN Q out_wr
        END BLOCK
        BEGIN BLOCK XLXI_134 and2b1
            PIN I0 hold
            PIN I1 in_wr
            PIN O write
        END BLOCK
        BEGIN BLOCK XLXI_135 or2
            PIN I0 write
            PIN I1 cpu_write_tail
            PIN O XLXN_328
        END BLOCK
        BEGIN BLOCK XLXI_136 and2
            PIN I0 fifo_done
            PIN I1 out_rdy
            PIN O read
        END BLOCK
        BEGIN BLOCK XLXI_139 dff_9bit
            PIN Q(8:0) XLXN_429(8:0)
            PIN clk clk
            PIN rst rst
            PIN D(8:0) XLXN_428(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_140 out_data_mux
            PIN sel cpu_ctrl_pre
            PIN cpu_pkt_ctrl_pre cpu_pkt_ctrl_pre
            PIN clk clk
            PIN rst rst
            PIN data0(8:0) XLXN_429(8:0)
            PIN data1(63:0) dout_data(63:0)
            PIN data2(7:0) dout_ctrl(7:0)
            PIN dout(63:0) dout_a(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_141 or2
            PIN I0 write
            PIN I1 cpu_write_data
            PIN O wena
        END BLOCK
        BEGIN BLOCK XLXI_142 or2
            PIN I0 write
            PIN I1 cpu_write_pkt_ctrl
            PIN O wenb
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN BRANCH cpu_addr_in(8:0)
            WIRE 3072 1104 3200 1104
        END BRANCH
        BEGIN BRANCH cpu_din(63:0)
            WIRE 3072 1360 3168 1360
        END BRANCH
        BEGIN BRANCH in_data(63:0)
            WIRE 3072 1296 3168 1296
        END BRANCH
        BEGIN INSTANCE XLXI_25 3168 1392 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_27 3200 1136 R0
        END INSTANCE
        BEGIN INSTANCE HeadPointer 2432 1824 R0
            BEGIN DISPLAY 0 -536 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH fifo_tail_ptr(8:0)
            WIRE 3040 1040 3200 1040
            BEGIN DISPLAY 3040 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_88(15:0)
            WIRE 2032 1440 2432 1440
        END BRANCH
        IOMARKER 3072 1104 cpu_addr_in(8:0) R180 28
        IOMARKER 3072 1360 cpu_din(63:0) R180 28
        IOMARKER 3072 1296 in_data(63:0) R180 28
        BEGIN BRANCH fifo_tail_ptr(15:0)
            WIRE 2816 864 2944 864
            BEGIN DISPLAY 2944 864 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fifo_head_ptr(15:0)
            WIRE 2816 1440 2960 1440
            BEGIN DISPLAY 2960 1440 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_34 1664 896 R0
        END INSTANCE
        BEGIN BRANCH rst
            WIRE 720 1216 1440 1216
            WIRE 1440 1216 2432 1216
            WIRE 1440 1216 1440 1792
            WIRE 1440 1792 2432 1792
        END BRANCH
        BEGIN BRANCH fifo_write_addr(8:0)
            WIRE 3584 976 3680 976
            WIRE 3680 976 3760 976
            WIRE 3760 976 3760 1280
            WIRE 3760 1280 3872 1280
            BEGIN DISPLAY 3680 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_35 1648 1472 R0
        END INSTANCE
        BEGIN BRANCH dout_data(63:0)
            WIRE 4448 1280 4880 1280
            WIRE 4880 1280 5248 1280
            WIRE 5248 928 5248 1280
            WIRE 5248 928 5296 928
            BEGIN DISPLAY 4880 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH out_data(63:0)
            WIRE 4448 1536 4640 1536
        END BRANCH
        IOMARKER 4640 1536 out_data(63:0) R0 28
        BEGIN INSTANCE XLXI_65 4112 880 R0
        END INSTANCE
        BEGIN BRANCH head_ce
            WIRE 2032 1632 2240 1632
            WIRE 2240 1632 2432 1632
            BEGIN DISPLAY 2240 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_write_head
            WIRE 2320 1568 2432 1568
            BEGIN DISPLAY 2320 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_write_head
            WIRE 1712 1600 1776 1600
            BEGIN DISPLAY 1712 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_din(8:0)
            WIRE 1600 1440 1648 1440
            BEGIN DISPLAY 1600 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_write_tail
            WIRE 1744 1024 1776 1024
            BEGIN DISPLAY 1744 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_din(8:0)
            WIRE 1616 864 1664 864
            BEGIN DISPLAY 1616 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hold
            WIRE 3088 976 3200 976
            BEGIN DISPLAY 3088 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hold
            WIRE 3088 1232 3168 1232
            BEGIN DISPLAY 3088 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_113 3696 1840 R0
        IOMARKER 720 1120 clk R180 28
        IOMARKER 720 1216 rst R180 28
        IOMARKER 720 352 end_of_pkt R180 28
        BEGIN INSTANCE XLXI_116 3856 1952 R0
        END INSTANCE
        BEGIN BRANCH wenb
            WIRE 3808 2160 3856 2160
            BEGIN DISPLAY 3808 2160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 3808 2224 3856 2224
            BEGIN DISPLAY 3808 2224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fifo_head_ptr(8:0)
            WIRE 3808 2288 3856 2288
            BEGIN DISPLAY 3808 2288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_341(0:0)
            WIRE 3600 2416 3600 2512
            WIRE 3600 2416 3856 2416
        END BRANCH
        BEGIN BRANCH clk
            WIRE 3808 2480 3856 2480
            BEGIN DISPLAY 3808 2480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_117 3536 2640 R0
        BEGIN BRANCH out_ctrl(7:0)
            WIRE 4432 2288 4560 2288
        END BRANCH
        BEGIN INSTANCE XLXI_118 784 2048 R0
        END INSTANCE
        BEGIN BRANCH cpu_tail
            WIRE 1264 1760 1296 1760
            BEGIN DISPLAY 1296 1760 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_head
            WIRE 1264 1824 1296 1824
            BEGIN DISPLAY 1296 1824 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_done
            WIRE 1264 1888 1296 1888
            BEGIN DISPLAY 1296 1888 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_data
            WIRE 1264 1952 1296 1952
            BEGIN DISPLAY 1296 1952 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_pkt_ctrl
            WIRE 1264 2016 1296 2016
            BEGIN DISPLAY 1296 2016 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_ctrl
            WIRE 688 1888 784 1888
        END BRANCH
        IOMARKER 688 1888 cpu_ctrl R180 28
        BEGIN BRANCH cpu_cmd(1:0)
            WIRE 688 2016 784 2016
        END BRANCH
        IOMARKER 688 2016 cpu_cmd(1:0) R180 28
        INSTANCE XLXI_119 1760 2128 R0
        INSTANCE XLXI_120 1760 2288 R0
        INSTANCE XLXI_121 1760 2448 R0
        INSTANCE XLXI_122 1760 2608 R0
        BEGIN BRANCH cpu_pkt_ctrl
            WIRE 1680 2480 1760 2480
            BEGIN DISPLAY 1680 2480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_data
            WIRE 1680 2320 1760 2320
            BEGIN DISPLAY 1680 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_head
            WIRE 1680 2160 1760 2160
            BEGIN DISPLAY 1680 2160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_tail
            WIRE 1680 2000 1760 2000
            BEGIN DISPLAY 1680 2000 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_write
            WIRE 1680 2064 1744 2064
            WIRE 1744 2064 1760 2064
            WIRE 1744 2064 1744 2224
            WIRE 1744 2224 1760 2224
            WIRE 1744 2224 1744 2384
            WIRE 1744 2384 1760 2384
            WIRE 1744 2384 1744 2544
            WIRE 1744 2544 1760 2544
        END BRANCH
        BEGIN BRANCH cpu_write_tail
            WIRE 2016 2032 2032 2032
            BEGIN DISPLAY 2032 2032 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_write_head
            WIRE 2016 2192 2032 2192
            BEGIN DISPLAY 2032 2192 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_write_data
            WIRE 2016 2352 2128 2352
            WIRE 2128 2352 2448 2352
            BEGIN DISPLAY 2128 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_write_pkt_ctrl
            WIRE 2016 2512 2160 2512
            WIRE 2160 2512 2448 2512
            BEGIN DISPLAY 2160 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_cmd(1:0)
            WIRE 4032 544 4080 544
            WIRE 4080 544 4080 592
            WIRE 4080 592 4112 592
            BEGIN DISPLAY 4032 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_327(0:0)
            WIRE 3760 1664 3872 1664
            WIRE 3760 1664 3760 1712
        END BRANCH
        BEGIN BRANCH fifo_head_ptr(8:0)
            WIRE 3680 1536 3872 1536
            BEGIN DISPLAY 3680 1536 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wena
            WIRE 3728 1408 3872 1408
            BEGIN DISPLAY 3728 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fifo_din(63:0)
            WIRE 3616 1232 3680 1232
            WIRE 3680 1232 3744 1232
            WIRE 3744 1232 3744 1312
            WIRE 3744 1312 3872 1312
            BEGIN DISPLAY 3680 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_87 3872 1200 R0
        END INSTANCE
        BEGIN BRANCH fifo_write_addr(8:0)
            WIRE 3808 2032 3856 2032
            BEGIN DISPLAY 3808 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wena
            WIRE 2704 2384 2736 2384
            BEGIN DISPLAY 2736 2384 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wenb
            WIRE 2704 2544 2736 2544
            BEGIN DISPLAY 2736 2544 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 4608 592 4624 592
            WIRE 4624 592 4656 592
            BEGIN DISPLAY 4608 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 4608 496 4624 496
            WIRE 4624 496 4656 496
            BEGIN DISPLAY 4608 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_ctrl_pre
            WIRE 5040 368 5072 368
            WIRE 5072 368 5088 368
            BEGIN DISPLAY 5088 368 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_127 4160 416 R0
        BEGIN BRANCH cpu_pkt_ctrl_pre
            WIRE 4544 160 4624 160
            BEGIN DISPLAY 4624 160 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_pkt_ctrl
            WIRE 4080 160 4160 160
            BEGIN DISPLAY 4080 160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 4080 288 4160 288
            BEGIN DISPLAY 4080 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 4080 384 4160 384
            BEGIN DISPLAY 4080 384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_ctrl(7:0)
            WIRE 4432 2032 4864 2032
            WIRE 4864 2032 5280 2032
            WIRE 5280 992 5296 992
            WIRE 5280 992 5280 2032
            BEGIN DISPLAY 4864 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_328
            WIRE 2032 1056 2432 1056
        END BRANCH
        BEGIN BRANCH cpu_write_tail
            WIRE 2272 992 2432 992
            BEGIN DISPLAY 2272 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_87(15:0)
            WIRE 2048 864 2432 864
        END BRANCH
        BEGIN INSTANCE TailPointer 2432 1248 R0
            BEGIN DISPLAY 0 -536 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_129 3168 2224 R0
        END INSTANCE
        BEGIN BRANCH XLXN_412(7:0)
            WIRE 3552 2064 3856 2064
        END BRANCH
        BEGIN BRANCH hold
            WIRE 3136 2064 3168 2064
            BEGIN DISPLAY 3136 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_din(7:0)
            WIRE 3136 2192 3168 2192
            BEGIN DISPLAY 3136 2192 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in_ctrl(7:0)
            WIRE 3136 2128 3168 2128
        END BRANCH
        IOMARKER 1680 2064 cpu_write R180 28
        IOMARKER 4560 2288 out_ctrl(7:0) R0 28
        IOMARKER 3136 2128 in_ctrl(7:0) R180 28
        INSTANCE XLXI_131 1776 1728 R0
        BEGIN BRANCH read
            WIRE 1712 1664 1776 1664
            BEGIN DISPLAY 1712 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_132 1408 752 R0
        END INSTANCE
        BEGIN BRANCH hold
            WIRE 1792 336 1840 336
        END BRANCH
        BEGIN BRANCH fifo_done
            WIRE 1792 720 1840 720
            BEGIN DISPLAY 1840 720 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH end_of_pkt
            WIRE 720 352 1280 352
            WIRE 1280 336 1408 336
            WIRE 1280 336 1280 352
        END BRANCH
        BEGIN BRANCH cpu_done
            WIRE 1344 400 1408 400
            BEGIN DISPLAY 1344 400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 720 1120 1328 1120
            WIRE 1328 1120 1424 1120
            WIRE 1424 1120 2432 1120
            WIRE 1424 1120 1424 1696
            WIRE 1424 1696 2432 1696
            WIRE 1424 1696 1424 1888
            WIRE 1424 1888 3856 1888
            WIRE 1328 528 1408 528
            WIRE 1328 528 1328 1120
            WIRE 3856 1472 3872 1472
            WIRE 3856 1472 3856 1728
            WIRE 3856 1728 3872 1728
            WIRE 3856 1728 3856 1888
        END BRANCH
        BEGIN BRANCH rst
            WIRE 1280 592 1408 592
            BEGIN DISPLAY 1280 592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fifo_head_ptr(8:0)
            WIRE 1280 656 1408 656
            BEGIN DISPLAY 1280 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fifo_tail_ptr(8:0)
            WIRE 1280 720 1408 720
            BEGIN DISPLAY 1280 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_133 3920 3056 R0
        BEGIN BRANCH fifo_done
            WIRE 3840 2800 3920 2800
            BEGIN DISPLAY 3840 2800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 3840 2928 3920 2928
            BEGIN DISPLAY 3840 2928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 3840 3024 3920 3024
            BEGIN DISPLAY 3840 3024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 1840 336 hold R0 28
        INSTANCE XLXI_134 2080 528 R0
        BEGIN BRANCH write
            WIRE 1744 1088 1776 1088
            BEGIN DISPLAY 1744 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH write
            WIRE 2336 432 2400 432
            BEGIN DISPLAY 2400 432 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in_wr
            WIRE 2000 400 2080 400
        END BRANCH
        BEGIN BRANCH hold
            WIRE 2000 464 2080 464
            BEGIN DISPLAY 2000 464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 2000 400 in_wr R180 28
        INSTANCE XLXI_135 1776 1152 R0
        BEGIN BRANCH write
            WIRE 2384 2416 2432 2416
            WIRE 2432 2416 2448 2416
            WIRE 2432 2416 2432 2576
            WIRE 2432 2576 2448 2576
            BEGIN DISPLAY 2384 2416 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_136 2080 672 R0
        BEGIN BRANCH read
            WIRE 2336 576 2400 576
            BEGIN DISPLAY 2400 576 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH out_rdy
            WIRE 2000 544 2080 544
        END BRANCH
        BEGIN BRANCH fifo_done
            WIRE 2000 608 2080 608
            BEGIN DISPLAY 2000 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH out_wr
            WIRE 4304 2800 4400 2800
        END BRANCH
        IOMARKER 4400 2800 out_wr R0 28
        IOMARKER 2000 544 out_rdy R180 28
        BEGIN INSTANCE XLXI_139 4640 880 R0
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 4624 800 4640 800
            BEGIN DISPLAY 4624 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 4624 864 4640 864
            BEGIN DISPLAY 4624 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fifo_tail_ptr(8:0)
            WIRE 4080 656 4112 656
            BEGIN DISPLAY 4080 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fifo_head_ptr(8:0)
            WIRE 4080 720 4112 720
            BEGIN DISPLAY 4080 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hold
            WIRE 4080 784 4112 784
            BEGIN DISPLAY 4080 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fifo_done
            WIRE 4080 848 4112 848
            BEGIN DISPLAY 4080 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_428(8:0)
            WIRE 4560 720 4640 720
        END BRANCH
        BEGIN BRANCH XLXN_429(8:0)
            WIRE 5024 720 5040 720
            WIRE 5040 720 5040 864
            WIRE 5040 864 5296 864
        END BRANCH
        BEGIN INSTANCE XLXI_140 5296 1024 R0
        END INSTANCE
        BEGIN BRANCH cpu_ctrl
            WIRE 4592 368 4608 368
            WIRE 4608 368 4656 368
            BEGIN DISPLAY 4592 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_115 4656 624 R0
        BEGIN BRANCH cpu_ctrl_pre
            WIRE 5248 608 5296 608
            BEGIN DISPLAY 5248 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH cpu_pkt_ctrl_pre
            WIRE 5248 672 5296 672
            BEGIN DISPLAY 5248 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dout_a(63:0)
            WIRE 5744 608 5936 608
        END BRANCH
        IOMARKER 5936 608 dout_a(63:0) R0 28
        BEGIN BRANCH clk
            WIRE 5280 736 5296 736
            BEGIN DISPLAY 5280 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 5280 800 5296 800
            BEGIN DISPLAY 5280 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_141 2448 2480 R0
        INSTANCE XLXI_142 2448 2640 R0
        BEGIN BRANCH cpu_send
            WIRE 1344 464 1408 464
        END BRANCH
        IOMARKER 1344 464 cpu_send R180 28
    END SHEET
END SCHEMATIC
