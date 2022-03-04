VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ce
        SIGNAL clk
        SIGNAL XLXN_3
        SIGNAL clr
        SIGNAL d(7:0)
        SIGNAL d(15:8)
        SIGNAL q(15:8)
        SIGNAL q(7:0)
        SIGNAL d(15:0)
        SIGNAL q(15:0)
        PORT Input ce
        PORT Input clk
        PORT Input clr
        PORT Input d(15:0)
        PORT Output q(15:0)
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
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(7:0)
            PIN Q(7:0) q(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(15:8)
            PIN Q(7:0) q(15:8)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1200 1008 R0
        INSTANCE XLXI_2 1200 1440 R0
        BEGIN BRANCH ce
            WIRE 1008 864 1088 864
            WIRE 1088 864 1088 1248
            WIRE 1088 1248 1200 1248
            WIRE 1088 816 1200 816
            WIRE 1088 816 1088 864
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1024 944 1120 944
            WIRE 1120 944 1120 1312
            WIRE 1120 1312 1200 1312
            WIRE 1120 880 1200 880
            WIRE 1120 880 1120 944
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1008 1024 1152 1024
            WIRE 1152 1024 1152 1408
            WIRE 1152 1408 1200 1408
            WIRE 1152 976 1200 976
            WIRE 1152 976 1152 1024
        END BRANCH
        IOMARKER 1008 864 ce R180 28
        IOMARKER 1024 944 clk R180 28
        IOMARKER 1008 1024 clr R180 28
        BEGIN BRANCH d(7:0)
            WIRE 960 752 1200 752
        END BRANCH
        BEGIN BRANCH d(15:8)
            WIRE 1008 1184 1168 1184
            WIRE 1168 1184 1200 1184
        END BRANCH
        BEGIN BRANCH q(15:8)
            WIRE 1584 1184 1744 1184
        END BRANCH
        BEGIN BRANCH q(7:0)
            WIRE 1584 752 1696 752
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 688 560 928 560
        END BRANCH
        IOMARKER 688 560 d(15:0) R180 28
        BEGIN BRANCH q(15:0)
            WIRE 1600 528 1856 528
        END BRANCH
        IOMARKER 1856 528 q(15:0) R0 28
    END SHEET
END SCHEMATIC
