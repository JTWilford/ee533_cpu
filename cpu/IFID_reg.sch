VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL en
        SIGNAL clk
        SIGNAL clr
        SIGNAL pc_addr_in(8)
        SIGNAL pc_addr_in(7:0)
        SIGNAL inc_in(31:0)
        SIGNAL inc_out(31:0)
        SIGNAL pc_addr_out(8)
        SIGNAL pc_addr_out(7:0)
        SIGNAL pc_addr_in(8:0)
        SIGNAL pc_addr_out(8:0)
        PORT Input en
        PORT Input clk
        PORT Input clr
        PORT Input inc_in(31:0)
        PORT Output inc_out(31:0)
        PORT Input pc_addr_in(8:0)
        PORT Output pc_addr_out(8:0)
        BEGIN BLOCKDEF DFF32bit
            TIMESTAMP 2022 2 15 1 28 35
            RECTANGLE N 64 -192 192 -64 
            LINE N 96 -64 96 0 
            LINE N 160 -64 160 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 192 -160 256 -160 
            RECTANGLE N 192 -172 256 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(31:0) inc_in(31:0)
            PIN o(31:0) inc_out(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd8ce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D(7:0) pc_addr_in(7:0)
            PIN Q(7:0) pc_addr_out(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D pc_addr_in(8)
            PIN Q pc_addr_out(8)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 1280 1120 R0
        INSTANCE XLXI_4 1296 736 R0
        BEGIN INSTANCE XLXI_1 1328 1328 R0
        END INSTANCE
        BEGIN BRANCH en
            WIRE 1120 576 1264 576
            WIRE 1264 576 1264 928
            WIRE 1264 928 1280 928
            WIRE 1264 928 1264 1168
            WIRE 1264 1168 1328 1168
            WIRE 1264 544 1296 544
            WIRE 1264 544 1264 576
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1120 672 1248 672
            WIRE 1248 672 1248 992
            WIRE 1248 992 1280 992
            WIRE 1248 992 1248 1408
            WIRE 1248 1408 1424 1408
            WIRE 1248 608 1296 608
            WIRE 1248 608 1248 672
            WIRE 1424 1328 1424 1408
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1120 752 1232 752
            WIRE 1232 752 1232 1088
            WIRE 1232 1088 1280 1088
            WIRE 1232 1088 1232 1392
            WIRE 1232 1392 1488 1392
            WIRE 1232 704 1296 704
            WIRE 1232 704 1232 752
            WIRE 1488 1328 1488 1392
        END BRANCH
        BEGIN BRANCH pc_addr_in(8)
            WIRE 1120 480 1296 480
        END BRANCH
        BEGIN BRANCH pc_addr_in(7:0)
            WIRE 1136 864 1280 864
        END BRANCH
        BEGIN BRANCH inc_in(31:0)
            WIRE 992 1232 1120 1232
            WIRE 1120 1232 1328 1232
        END BRANCH
        BEGIN BRANCH inc_out(31:0)
            WIRE 1584 1168 1760 1168
            WIRE 1760 1168 1904 1168
        END BRANCH
        BEGIN BRANCH pc_addr_out(8)
            WIRE 1680 480 1760 480
        END BRANCH
        BEGIN BRANCH pc_addr_out(7:0)
            WIRE 1664 864 1776 864
        END BRANCH
        IOMARKER 992 1232 inc_in(31:0) R180 28
        BEGIN BRANCH pc_addr_in(8:0)
            WIRE 800 480 928 480
        END BRANCH
        IOMARKER 800 480 pc_addr_in(8:0) R180 28
        IOMARKER 1904 1168 inc_out(31:0) R0 28
        BEGIN BRANCH pc_addr_out(8:0)
            WIRE 1824 656 1952 656
        END BRANCH
        IOMARKER 1952 656 pc_addr_out(8:0) R0 28
        IOMARKER 1120 576 en R180 28
        IOMARKER 1120 672 clk R180 28
        IOMARKER 1120 752 clr R180 28
    END SHEET
END SCHEMATIC
