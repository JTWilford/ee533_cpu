VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL wr_din(63:0)
        SIGNAL wraddr(2:0)
        SIGNAL r0addr(2:0)
        SIGNAL r0_data(63:0)
        SIGNAL r1addr(2:0)
        SIGNAL wr_en
        SIGNAL r1_data(63:0)
        SIGNAL clk
        SIGNAL rd_en
        SIGNAL write
        SIGNAL baddr(2:0)
        SIGNAL XLXN_7(2:0)
        SIGNAL XLXN_8(0:0)
        PORT Input wr_din(63:0)
        PORT Input wraddr(2:0)
        PORT Input r0addr(2:0)
        PORT Output r0_data(63:0)
        PORT Input r1addr(2:0)
        PORT Input wr_en
        PORT Output r1_data(63:0)
        PORT Input clk
        PORT Input rd_en
        BEGIN BLOCKDEF regmem64
            TIMESTAMP 2022 3 7 8 14 50
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
        BEGIN BLOCKDEF mux2_1_x3
            TIMESTAMP 2022 3 5 14 30 28
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
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
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_46 regmem64
            PIN addra(2:0) r0addr(2:0)
            PIN dina(63:0)
            PIN wea(0:0) XLXN_8(0:0)
            PIN clka clk
            PIN addrb(2:0) baddr(2:0)
            PIN dinb(63:0) wr_din(63:0)
            PIN web(0:0) write
            PIN clkb clk
            PIN douta(63:0) r0_data(63:0)
            PIN doutb(63:0) r1_data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_48 mux2_1_x3
            PIN S write
            PIN I0(2:0) r1addr(2:0)
            PIN I1(2:0) wraddr(2:0)
            PIN O(2:0) baddr(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_50 and2b1
            PIN I0 rd_en
            PIN I1 wr_en
            PIN O write
        END BLOCK
        BEGIN BLOCK XLXI_52 gnd
            PIN G XLXN_8(0:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH r0addr(2:0)
            WIRE 400 880 560 880
            WIRE 560 880 1200 880
            WIRE 1200 880 1200 960
            WIRE 1200 960 1440 960
        END BRANCH
        BEGIN BRANCH r1addr(2:0)
            WIRE 400 912 560 912
        END BRANCH
        BEGIN BRANCH wr_din(63:0)
            WIRE 400 960 560 960
        END BRANCH
        BEGIN BRANCH wraddr(2:0)
            WIRE 400 992 560 992
        END BRANCH
        BEGIN BRANCH wr_en
            WIRE 400 1024 560 1024
        END BRANCH
        IOMARKER 400 880 r0addr(2:0) R180 28
        IOMARKER 400 912 r1addr(2:0) R180 28
        IOMARKER 400 960 wr_din(63:0) R180 28
        IOMARKER 400 992 wraddr(2:0) R180 28
        IOMARKER 400 1024 wr_en R180 28
        BEGIN INSTANCE XLXI_46 1440 880 R0
        END INSTANCE
        BEGIN BRANCH r0_data(63:0)
            WIRE 2016 960 2160 960
            BEGIN DISPLAY 2160 960 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r1_data(63:0)
            WIRE 2016 1216 2160 1216
            BEGIN DISPLAY 2160 1216 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1280 1152 1360 1152
            WIRE 1360 1152 1360 1408
            WIRE 1360 1408 1440 1408
            WIRE 1360 1152 1440 1152
            BEGIN DISPLAY 1280 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH write
            WIRE 1280 1344 1440 1344
            BEGIN DISPLAY 1280 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH baddr(2:0)
            WIRE 1280 1216 1440 1216
            BEGIN DISPLAY 1280 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wr_din(63:0)
            WIRE 1280 1248 1440 1248
            BEGIN DISPLAY 1280 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r0_data(63:0)
            WIRE 400 1280 560 1280
        END BRANCH
        BEGIN BRANCH r1_data(63:0)
            WIRE 400 1312 560 1312
        END BRANCH
        IOMARKER 560 1280 r0_data(63:0) R0 28
        IOMARKER 560 1312 r1_data(63:0) R0 28
        BEGIN BRANCH clk
            WIRE 400 1200 560 1200
        END BRANCH
        IOMARKER 400 1200 clk R180 28
        BEGIN BRANCH rd_en
            WIRE 400 1120 560 1120
        END BRANCH
        IOMARKER 400 1120 rd_en R180 28
        BEGIN INSTANCE XLXI_48 800 1936 R0
        END INSTANCE
        BEGIN BRANCH write
            WIRE 720 1776 800 1776
            BEGIN DISPLAY 720 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH r1addr(2:0)
            WIRE 720 1840 800 1840
            BEGIN DISPLAY 720 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wraddr(2:0)
            WIRE 720 1904 800 1904
            BEGIN DISPLAY 720 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH baddr(2:0)
            WIRE 1184 1776 1280 1776
            BEGIN DISPLAY 1280 1776 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wr_en
            WIRE 640 1520 688 1520
            WIRE 688 1520 800 1520
            WIRE 800 1520 880 1520
            BEGIN DISPLAY 640 1520 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_50 880 1648 R0
        BEGIN BRANCH write
            WIRE 1136 1552 1200 1552
            BEGIN DISPLAY 1200 1552 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rd_en
            WIRE 800 1584 880 1584
            BEGIN DISPLAY 800 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_52 1056 1232 R0
        BEGIN BRANCH XLXN_8(0:0)
            WIRE 1120 1088 1120 1104
            WIRE 1120 1088 1440 1088
        END BRANCH
    END SHEET
END SCHEMATIC
