VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S(31:0)
        SIGNAL S(7:0)
        SIGNAL S(15:8)
        SIGNAL S(23:16)
        SIGNAL S(31:24)
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL B
        SIGNAL A(31:0)
        SIGNAL A(31:24)
        SIGNAL A(15:8)
        SIGNAL A(23:16)
        SIGNAL A(7:0)
        PORT Output S(31:0)
        PORT Input B
        PORT Input A(31:0)
        BEGIN BLOCKDEF xor8_by_1
            TIMESTAMP 2022 1 29 13 35 58
            ARC N -40 -128 92 4 68 -8 68 -112 
            LINE N 68 -8 180 -8 
            LINE N 68 -112 180 -112 
            ARC N 132 -112 236 -8 180 -8 180 -112 
            ARC N -56 -128 76 4 52 -8 52 -112 
            RECTANGLE N 236 -76 304 -52 
            LINE N 304 -64 236 -64 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -92 72 -68 
            LINE N 0 -80 72 -80 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 xor8_by_1
            PIN S(7:0) S(7:0)
            PIN B B
            PIN A(7:0) A(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 xor8_by_1
            PIN S(7:0) S(15:8)
            PIN B B
            PIN A(7:0) A(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_4 xor8_by_1
            PIN S(7:0) S(23:16)
            PIN B B
            PIN A(7:0) A(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_5 xor8_by_1
            PIN S(7:0) S(31:24)
            PIN B B
            PIN A(7:0) A(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1072 1504 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1072 1712 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1072 1920 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1072 2128 R0
        END INSTANCE
        BEGIN BRANCH S(31:0)
            WIRE 1600 1392 1600 1440
            WIRE 1600 1440 1600 1648
            WIRE 1600 1648 1600 1744
            WIRE 1600 1744 1600 1856
            WIRE 1600 1856 1600 2064
            WIRE 1600 2064 1600 2112
            WIRE 1600 2112 1792 2112
            BEGIN DISPLAY 1600 1744 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1600 1440 1504 1440
        BUSTAP 1600 1648 1504 1648
        BUSTAP 1600 1856 1504 1856
        BUSTAP 1600 2064 1504 2064
        BEGIN BRANCH S(7:0)
            WIRE 1376 1440 1440 1440
            WIRE 1440 1440 1504 1440
            BEGIN DISPLAY 1440 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 1376 1648 1440 1648
            WIRE 1440 1648 1504 1648
            BEGIN DISPLAY 1440 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(23:16)
            WIRE 1376 1856 1440 1856
            WIRE 1440 1856 1504 1856
            BEGIN DISPLAY 1440 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:24)
            WIRE 1376 2064 1440 2064
            WIRE 1440 2064 1504 2064
            BEGIN DISPLAY 1440 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 640 2176 944 2176
            WIRE 944 2176 1056 2176
            WIRE 1056 1472 1072 1472
            WIRE 1056 1472 1056 1680
            WIRE 1056 1680 1072 1680
            WIRE 1056 1680 1056 1888
            WIRE 1056 1888 1072 1888
            WIRE 1056 1888 1056 2096
            WIRE 1056 2096 1072 2096
            WIRE 1056 2096 1056 2176
            BEGIN DISPLAY 944 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 640 2080 800 2080
            WIRE 800 1392 800 1424
            WIRE 800 1424 800 1632
            WIRE 800 1632 800 1744
            WIRE 800 1744 800 1840
            WIRE 800 1840 800 2048
            WIRE 800 2048 800 2080
            BEGIN DISPLAY 800 1744 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1424 896 1424
        BUSTAP 800 1632 896 1632
        BUSTAP 800 1840 896 1840
        BUSTAP 800 2048 896 2048
        BEGIN BRANCH A(7:0)
            WIRE 896 1424 960 1424
            WIRE 960 1424 1072 1424
            BEGIN DISPLAY 960 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 896 1632 960 1632
            WIRE 960 1632 1072 1632
            BEGIN DISPLAY 960 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 896 1840 960 1840
            WIRE 960 1840 1072 1840
            BEGIN DISPLAY 960 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 896 2048 960 2048
            WIRE 960 2048 1072 2048
            BEGIN DISPLAY 960 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 640 2176 B R180 28
        IOMARKER 640 2080 A(31:0) R180 28
        IOMARKER 1792 2112 S(31:0) R0 28
    END SHEET
END SCHEMATIC
