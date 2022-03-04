VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL en
        SIGNAL clr
        SIGNAL i(31:0)
        SIGNAL o(31:0)
        SIGNAL i(7:0)
        SIGNAL i(15:8)
        SIGNAL i(23:16)
        SIGNAL i(31:24)
        SIGNAL o(7:0)
        SIGNAL o(15:8)
        SIGNAL o(23:16)
        SIGNAL o(31:24)
        PORT Input clk
        PORT Input en
        PORT Input clr
        PORT Input i(31:0)
        PORT Output o(31:0)
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
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D(7:0) i(7:0)
            PIN Q(7:0) o(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd8ce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D(7:0) i(15:8)
            PIN Q(7:0) o(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd8ce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D(7:0) i(23:16)
            PIN Q(7:0) o(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd8ce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D(7:0) i(31:24)
            PIN Q(7:0) o(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1280 1024 R0
        INSTANCE XLXI_2 1280 1424 R0
        INSTANCE XLXI_3 1280 1808 R0
        INSTANCE XLXI_4 1280 2208 R0
        BEGIN BRANCH clk
            WIRE 976 960 1152 960
            WIRE 1152 960 1152 1296
            WIRE 1152 1296 1152 1680
            WIRE 1152 1680 1152 2080
            WIRE 1152 2080 1280 2080
            WIRE 1152 1680 1280 1680
            WIRE 1152 1296 1280 1296
            WIRE 1152 896 1280 896
            WIRE 1152 896 1152 960
        END BRANCH
        BEGIN BRANCH en
            WIRE 976 896 1072 896
            WIRE 1072 896 1072 1232
            WIRE 1072 1232 1072 1616
            WIRE 1072 1616 1072 2016
            WIRE 1072 2016 1280 2016
            WIRE 1072 1616 1280 1616
            WIRE 1072 1232 1280 1232
            WIRE 1072 832 1280 832
            WIRE 1072 832 1072 896
        END BRANCH
        BEGIN BRANCH clr
            WIRE 976 1056 1216 1056
            WIRE 1216 1056 1216 1392
            WIRE 1216 1392 1216 1776
            WIRE 1216 1776 1216 2176
            WIRE 1216 2176 1280 2176
            WIRE 1216 1776 1280 1776
            WIRE 1216 1392 1280 1392
            WIRE 1216 992 1280 992
            WIRE 1216 992 1216 1056
        END BRANCH
        BEGIN BRANCH i(31:0)
            WIRE 272 608 480 608
        END BRANCH
        BEGIN BRANCH o(31:0)
            WIRE 704 592 912 592
        END BRANCH
        IOMARKER 272 608 i(31:0) R180 28
        IOMARKER 912 592 o(31:0) R0 28
        BEGIN BRANCH i(7:0)
            WIRE 1168 768 1280 768
        END BRANCH
        BEGIN BRANCH i(15:8)
            WIRE 1024 1168 1280 1168
        END BRANCH
        BEGIN BRANCH i(23:16)
            WIRE 1008 1552 1280 1552
        END BRANCH
        BEGIN BRANCH i(31:24)
            WIRE 1024 1952 1280 1952
        END BRANCH
        BEGIN BRANCH o(7:0)
            WIRE 1664 768 1792 768
        END BRANCH
        BEGIN BRANCH o(15:8)
            WIRE 1664 1168 1792 1168
        END BRANCH
        BEGIN BRANCH o(23:16)
            WIRE 1664 1552 1808 1552
        END BRANCH
        BEGIN BRANCH o(31:24)
            WIRE 1664 1952 1808 1952
        END BRANCH
        IOMARKER 976 896 en R180 28
        IOMARKER 976 960 clk R180 28
        IOMARKER 976 1056 clr R180 28
    END SHEET
END SCHEMATIC
