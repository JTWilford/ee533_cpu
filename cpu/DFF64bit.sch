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
        SIGNAL i(63:0)
        SIGNAL o(63:0)
        SIGNAL i(31:0)
        SIGNAL i(63:32)
        SIGNAL o(31:0)
        SIGNAL o(63:32)
        PORT Input en
        PORT Input clk
        PORT Input clr
        PORT Input i(63:0)
        PORT Output o(63:0)
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
        BEGIN BLOCK XLXI_1 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(31:0) i(31:0)
            PIN o(31:0) o(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(31:0) i(63:32)
            PIN o(31:0) o(63:32)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1120 896 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1120 1184 R0
        END INSTANCE
        BEGIN BRANCH en
            WIRE 896 880 1008 880
            WIRE 1008 880 1008 1024
            WIRE 1008 1024 1120 1024
            WIRE 1008 736 1120 736
            WIRE 1008 736 1008 880
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1040 960 1216 960
            WIRE 1040 960 1040 1264
            WIRE 1040 1264 1120 1264
            WIRE 1120 1264 1216 1264
            WIRE 1120 1264 1120 1328
            WIRE 1216 896 1216 960
            WIRE 1216 1184 1216 1264
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1280 896 1280 912
            WIRE 1280 912 1472 912
            WIRE 1472 912 1472 1264
            WIRE 1280 1184 1280 1264
            WIRE 1280 1264 1376 1264
            WIRE 1376 1264 1472 1264
            WIRE 1376 1264 1376 1328
        END BRANCH
        BEGIN BRANCH i(63:0)
            WIRE 656 560 896 560
        END BRANCH
        BEGIN BRANCH o(63:0)
            WIRE 1056 560 1280 560
        END BRANCH
        IOMARKER 656 560 i(63:0) R180 28
        IOMARKER 1280 560 o(63:0) R0 28
        IOMARKER 896 880 en R180 28
        IOMARKER 1120 1328 clk R90 28
        IOMARKER 1376 1328 clr R90 28
        BEGIN BRANCH i(31:0)
            WIRE 912 800 1120 800
        END BRANCH
        BEGIN BRANCH i(63:32)
            WIRE 944 1088 1120 1088
        END BRANCH
        BEGIN BRANCH o(31:0)
            WIRE 1376 736 1488 736
        END BRANCH
        BEGIN BRANCH o(63:32)
            WIRE 1376 1024 1520 1024
        END BRANCH
    END SHEET
END SCHEMATIC
