VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(15:0)
        SIGNAL XLXN_2(15:0)
        SIGNAL XLXN_3(15:0)
        SIGNAL XLXN_4(15:0)
        SIGNAL XLXN_5(15:0)
        SIGNAL I0(15:0)
        SIGNAL I1(15:0)
        SIGNAL I2(15:0)
        SIGNAL I3(15:0)
        SIGNAL I4(15:0)
        SIGNAL I5(15:0)
        SIGNAL I6(15:0)
        SIGNAL I7(15:0)
        SIGNAL I8(15:0)
        SIGNAL O(15:0)
        PORT Input I0(15:0)
        PORT Input I1(15:0)
        PORT Input I2(15:0)
        PORT Input I3(15:0)
        PORT Input I4(15:0)
        PORT Input I5(15:0)
        PORT Input I6(15:0)
        PORT Input I7(15:0)
        PORT Input I8(15:0)
        PORT Output O(15:0)
        BEGIN BLOCKDEF OR3_8
            TIMESTAMP 2022 4 16 20 24 54
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 OR3_8
            PIN I0(15:0) I0(15:0)
            PIN I1(15:0) I1(15:0)
            PIN I2(15:0) I2(15:0)
            PIN O(15:0) XLXN_1(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 OR3_8
            PIN I0(15:0) I3(15:0)
            PIN I1(15:0) I4(15:0)
            PIN I2(15:0) I5(15:0)
            PIN O(15:0) XLXN_2(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 OR3_8
            PIN I0(15:0) I6(15:0)
            PIN I1(15:0) I7(15:0)
            PIN I2(15:0) I8(15:0)
            PIN O(15:0) XLXN_3(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 OR3_8
            PIN I0(15:0) XLXN_1(15:0)
            PIN I1(15:0) XLXN_2(15:0)
            PIN I2(15:0) XLXN_3(15:0)
            PIN O(15:0) O(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 672 992 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 672 1232 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 672 1472 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1(15:0)
            WIRE 1056 832 1072 832
            WIRE 1072 832 1072 1008
            WIRE 1072 1008 1232 1008
        END BRANCH
        BEGIN BRANCH XLXN_2(15:0)
            WIRE 1056 1072 1232 1072
        END BRANCH
        BEGIN BRANCH XLXN_3(15:0)
            WIRE 1056 1312 1072 1312
            WIRE 1072 1136 1232 1136
            WIRE 1072 1136 1072 1312
        END BRANCH
        BEGIN INSTANCE XLXI_4 1232 1168 R0
        END INSTANCE
        BEGIN BRANCH I0(15:0)
            WIRE 576 832 672 832
        END BRANCH
        BEGIN BRANCH I1(15:0)
            WIRE 576 896 672 896
        END BRANCH
        BEGIN BRANCH I2(15:0)
            WIRE 576 960 672 960
        END BRANCH
        BEGIN BRANCH I3(15:0)
            WIRE 576 1072 672 1072
        END BRANCH
        BEGIN BRANCH I4(15:0)
            WIRE 576 1136 672 1136
        END BRANCH
        BEGIN BRANCH I5(15:0)
            WIRE 576 1200 672 1200
        END BRANCH
        BEGIN BRANCH I6(15:0)
            WIRE 576 1312 672 1312
        END BRANCH
        BEGIN BRANCH I7(15:0)
            WIRE 576 1376 672 1376
        END BRANCH
        BEGIN BRANCH I8(15:0)
            WIRE 576 1440 672 1440
        END BRANCH
        BEGIN BRANCH O(15:0)
            WIRE 1616 1008 1712 1008
        END BRANCH
        IOMARKER 576 832 I0(15:0) R180 28
        IOMARKER 576 896 I1(15:0) R180 28
        IOMARKER 576 960 I2(15:0) R180 28
        IOMARKER 576 1072 I3(15:0) R180 28
        IOMARKER 576 1136 I4(15:0) R180 28
        IOMARKER 576 1200 I5(15:0) R180 28
        IOMARKER 576 1312 I6(15:0) R180 28
        IOMARKER 576 1376 I7(15:0) R180 28
        IOMARKER 576 1440 I8(15:0) R180 28
        IOMARKER 1712 1008 O(15:0) R0 28
    END SHEET
END SCHEMATIC
