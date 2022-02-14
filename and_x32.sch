VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL S(31:0)
        SIGNAL A(31:24)
        SIGNAL A(23:16)
        SIGNAL A(15:8)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL B(15:8)
        SIGNAL B(23:16)
        SIGNAL B(31:24)
        SIGNAL S(31:24)
        SIGNAL S(23:16)
        SIGNAL S(15:8)
        SIGNAL S(7:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output S(31:0)
        BEGIN BLOCKDEF and_x8
            TIMESTAMP 2022 1 29 15 55 54
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -128 64 0 
            LINE N 64 0 160 0 
            LINE N 64 -128 160 -128 
            LINE N 160 -128 192 -128 
            LINE N 160 0 192 0 
            ARC N 124 -128 252 0 192 0 192 -128 
            LINE N 320 -64 252 -64 
            RECTANGLE N 252 -76 320 -52 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and_x8
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN S(7:0) S(31:24)
        END BLOCK
        BEGIN BLOCK XLXI_2 and_x8
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN S(7:0) S(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_3 and_x8
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN S(7:0) S(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_4 and_x8
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN S(7:0) S(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1072 944 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1072 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1072 1328 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1072 1520 R0
        END INSTANCE
        BEGIN BRANCH A(31:0)
            WIRE 592 1648 880 1648
            WIRE 880 768 880 848
            WIRE 880 848 880 1040
            WIRE 880 1040 880 1152
            WIRE 880 1152 880 1232
            WIRE 880 1232 880 1424
            WIRE 880 1424 880 1568
            WIRE 880 1568 880 1648
            BEGIN DISPLAY 880 1152 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 592 1568 720 1568
            WIRE 720 768 720 912
            WIRE 720 912 720 1104
            WIRE 720 1104 720 1184
            WIRE 720 1184 720 1296
            WIRE 720 1296 720 1488
            WIRE 720 1488 720 1568
            BEGIN DISPLAY 720 1184 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 1600 768 1600 880
            WIRE 1600 880 1600 1072
            WIRE 1600 1072 1600 1168
            WIRE 1600 1168 1600 1264
            WIRE 1600 1264 1600 1456
            WIRE 1600 1456 1600 1568
            WIRE 1600 1568 1744 1568
            BEGIN DISPLAY 1600 1168 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 880 848 976 848
        BUSTAP 880 1040 976 1040
        BUSTAP 880 1232 976 1232
        BUSTAP 880 1424 976 1424
        BUSTAP 720 1488 816 1488
        BUSTAP 720 1296 816 1296
        BUSTAP 720 1104 816 1104
        BUSTAP 720 912 816 912
        BUSTAP 1600 880 1504 880
        BUSTAP 1600 1072 1504 1072
        BUSTAP 1600 1264 1504 1264
        BUSTAP 1600 1456 1504 1456
        BEGIN BRANCH A(31:24)
            WIRE 976 848 992 848
            WIRE 992 848 1072 848
            BEGIN DISPLAY 992 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 976 1040 1008 1040
            WIRE 1008 1040 1072 1040
            BEGIN DISPLAY 1008 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 976 1232 1008 1232
            WIRE 1008 1232 1072 1232
            BEGIN DISPLAY 1008 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 976 1424 1008 1424
            WIRE 1008 1424 1072 1424
            BEGIN DISPLAY 1008 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 816 1488 944 1488
            WIRE 944 1488 1072 1488
            BEGIN DISPLAY 944 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 816 1296 944 1296
            WIRE 944 1296 1072 1296
            BEGIN DISPLAY 944 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 816 1104 944 1104
            WIRE 944 1104 1072 1104
            BEGIN DISPLAY 944 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 816 912 944 912
            WIRE 944 912 1072 912
            BEGIN DISPLAY 944 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:24)
            WIRE 1392 880 1488 880
            WIRE 1488 880 1504 880
            BEGIN DISPLAY 1488 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(23:16)
            WIRE 1392 1072 1488 1072
            WIRE 1488 1072 1504 1072
            BEGIN DISPLAY 1488 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 1392 1264 1488 1264
            WIRE 1488 1264 1504 1264
            BEGIN DISPLAY 1488 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1392 1456 1488 1456
            WIRE 1488 1456 1504 1456
            BEGIN DISPLAY 1488 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 592 1648 A(31:0) R180 28
        IOMARKER 592 1568 B(31:0) R180 28
        IOMARKER 1744 1568 S(31:0) R0 28
    END SHEET
END SCHEMATIC
