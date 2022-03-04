VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL one(15:0)
        SIGNAL XLXN_14(15:0)
        SIGNAL q(15:0)
        SIGNAL XLXN_26
        SIGNAL en
        SIGNAL clk
        SIGNAL clr
        PORT Input one(15:0)
        PORT Output q(15:0)
        PORT Input en
        PORT Input clk
        PORT Input clr
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
            TIMESTAMP 2022 2 18 6 15 35
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
        BEGIN BLOCK XLXI_1 add16
            PIN A(15:0) q(15:0)
            PIN B(15:0) one(15:0)
            PIN CI XLXN_26
            PIN CO
            PIN OFL
            PIN S(15:0) XLXN_14(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 DFF16bit
            PIN ce en
            PIN clk clk
            PIN clr clr
            PIN d(15:0) XLXN_14(15:0)
            PIN q(15:0) q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 gnd
            PIN G XLXN_26
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1008 848 R0
        BEGIN BRANCH one(15:0)
            WIRE 880 656 1008 656
        END BRANCH
        IOMARKER 880 656 one(15:0) R180 28
        BEGIN BRANCH XLXN_14(15:0)
            WIRE 1456 592 1744 592
        END BRANCH
        BEGIN INSTANCE XLXI_7 1744 816 R0
        END INSTANCE
        BEGIN BRANCH q(15:0)
            WIRE 800 320 800 528
            WIRE 800 528 1008 528
            WIRE 800 320 2144 320
            WIRE 2144 320 2144 592
            WIRE 2144 592 2272 592
            WIRE 2064 592 2144 592
        END BRANCH
        IOMARKER 2272 592 q(15:0) R0 28
        BEGIN BRANCH XLXN_26
            WIRE 896 400 1008 400
        END BRANCH
        INSTANCE XLXI_8 832 528 R0
        BEGIN BRANCH en
            WIRE 1664 656 1744 656
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1664 720 1744 720
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1904 816 1904 912
        END BRANCH
        IOMARKER 1664 656 en R180 28
        IOMARKER 1664 720 clk R180 28
        IOMARKER 1904 912 clr R90 28
    END SHEET
END SCHEMATIC
