VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL EQ
        SIGNAL A(9:2)
        SIGNAL B(9:2)
        SIGNAL B(0)
        SIGNAL B(1)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL A(9:0)
        SIGNAL B(9:0)
        PORT Output EQ
        PORT Input A(9:0)
        PORT Input B(9:0)
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF comp2
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
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
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) A(9:2)
            PIN B(7:0) B(9:2)
            PIN EQ XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_2 comp2
            PIN A0 A(0)
            PIN A1 A(1)
            PIN B0 B(0)
            PIN B1 B(1)
            PIN EQ XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 XLXN_2
            PIN I1 XLXN_1
            PIN O EQ
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1488 1312 R0
        INSTANCE XLXI_2 1488 864 R0
        INSTANCE XLXI_3 2016 944 R0
        BEGIN BRANCH XLXN_1
            WIRE 1872 640 1936 640
            WIRE 1936 640 1936 816
            WIRE 1936 816 2016 816
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1872 1088 1936 1088
            WIRE 1936 880 1936 1088
            WIRE 1936 880 2016 880
        END BRANCH
        BEGIN BRANCH EQ
            WIRE 2272 848 2464 848
        END BRANCH
        BEGIN BRANCH A(9:2)
            WIRE 1360 992 1488 992
        END BRANCH
        BEGIN BRANCH B(9:2)
            WIRE 1344 1184 1488 1184
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 1376 672 1488 672
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 1376 736 1488 736
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 1360 608 1488 608
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 1360 544 1488 544
        END BRANCH
        IOMARKER 2464 848 EQ R0 28
        BEGIN BRANCH A(9:0)
            WIRE 800 512 976 512
        END BRANCH
        BEGIN BRANCH B(9:0)
            WIRE 800 832 976 832
        END BRANCH
        IOMARKER 800 512 A(9:0) R180 28
        IOMARKER 800 832 B(9:0) R180 28
    END SHEET
END SCHEMATIC
