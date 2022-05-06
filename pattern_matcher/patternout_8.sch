VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(7:0)
        SIGNAL XLXN_2(7:0)
        SIGNAL XLXN_3(7:0)
        SIGNAL XLXN_4(7:0)
        SIGNAL XLXN_5(7:0)
        SIGNAL XLXN_6(7:0)
        SIGNAL O(7:0)
        SIGNAL I0(7:0)
        SIGNAL I1(7:0)
        SIGNAL I2(7:0)
        SIGNAL I3(7:0)
        SIGNAL I4(7:0)
        SIGNAL I5(7:0)
        SIGNAL I6(7:0)
        SIGNAL I7(7:0)
        PORT Output O(7:0)
        PORT Input I0(7:0)
        PORT Input I1(7:0)
        PORT Input I2(7:0)
        PORT Input I3(7:0)
        PORT Input I4(7:0)
        PORT Input I5(7:0)
        PORT Input I6(7:0)
        PORT Input I7(7:0)
        BEGIN BLOCKDEF OR2_8
            TIMESTAMP 2022 4 16 20 24 10
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 OR2_8
            PIN I0(7:0) I0(7:0)
            PIN I1(7:0) I1(7:0)
            PIN O(7:0) XLXN_1(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 OR2_8
            PIN I0(7:0) I2(7:0)
            PIN I1(7:0) I3(7:0)
            PIN O(7:0) XLXN_2(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 OR2_8
            PIN I0(7:0) XLXN_1(7:0)
            PIN I1(7:0) XLXN_2(7:0)
            PIN O(7:0) XLXN_6(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 OR2_8
            PIN I0(7:0) I4(7:0)
            PIN I1(7:0) I5(7:0)
            PIN O(7:0) XLXN_3(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 OR2_8
            PIN I0(7:0) I6(7:0)
            PIN I1(7:0) I7(7:0)
            PIN O(7:0) XLXN_4(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 OR2_8
            PIN I0(7:0) XLXN_3(7:0)
            PIN I1(7:0) XLXN_4(7:0)
            PIN O(7:0) XLXN_5(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 OR2_8
            PIN I0(7:0) XLXN_6(7:0)
            PIN I1(7:0) XLXN_5(7:0)
            PIN O(7:0) O(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 880 1088 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 880 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1376 1152 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 880 1568 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 880 1776 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1376 1632 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1904 1376 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1(7:0)
            WIRE 1264 992 1312 992
            WIRE 1312 992 1312 1056
            WIRE 1312 1056 1376 1056
        END BRANCH
        BEGIN BRANCH XLXN_2(7:0)
            WIRE 1264 1200 1312 1200
            WIRE 1312 1120 1312 1200
            WIRE 1312 1120 1376 1120
        END BRANCH
        BEGIN BRANCH XLXN_3(7:0)
            WIRE 1264 1472 1312 1472
            WIRE 1312 1472 1312 1536
            WIRE 1312 1536 1376 1536
        END BRANCH
        BEGIN BRANCH XLXN_4(7:0)
            WIRE 1264 1680 1312 1680
            WIRE 1312 1600 1312 1680
            WIRE 1312 1600 1376 1600
        END BRANCH
        BEGIN BRANCH XLXN_5(7:0)
            WIRE 1760 1536 1824 1536
            WIRE 1824 1344 1824 1536
            WIRE 1824 1344 1904 1344
        END BRANCH
        BEGIN BRANCH XLXN_6(7:0)
            WIRE 1760 1056 1824 1056
            WIRE 1824 1056 1824 1280
            WIRE 1824 1280 1904 1280
        END BRANCH
        BEGIN BRANCH O(7:0)
            WIRE 2288 1280 2384 1280
        END BRANCH
        BEGIN BRANCH I0(7:0)
            WIRE 784 992 880 992
        END BRANCH
        BEGIN BRANCH I1(7:0)
            WIRE 784 1056 880 1056
        END BRANCH
        BEGIN BRANCH I2(7:0)
            WIRE 784 1200 880 1200
        END BRANCH
        BEGIN BRANCH I3(7:0)
            WIRE 784 1264 880 1264
        END BRANCH
        BEGIN BRANCH I4(7:0)
            WIRE 784 1472 880 1472
        END BRANCH
        BEGIN BRANCH I5(7:0)
            WIRE 784 1536 880 1536
        END BRANCH
        BEGIN BRANCH I6(7:0)
            WIRE 784 1680 880 1680
        END BRANCH
        BEGIN BRANCH I7(7:0)
            WIRE 784 1744 880 1744
        END BRANCH
        IOMARKER 784 992 I0(7:0) R180 28
        IOMARKER 784 1056 I1(7:0) R180 28
        IOMARKER 784 1200 I2(7:0) R180 28
        IOMARKER 784 1264 I3(7:0) R180 28
        IOMARKER 784 1472 I4(7:0) R180 28
        IOMARKER 784 1536 I5(7:0) R180 28
        IOMARKER 784 1680 I6(7:0) R180 28
        IOMARKER 784 1744 I7(7:0) R180 28
        IOMARKER 2384 1280 O(7:0) R0 28
    END SHEET
END SCHEMATIC
