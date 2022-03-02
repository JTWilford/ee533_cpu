VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL Cout
        SIGNAL S(63:32)
        SIGNAL S(31:0)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL B(63:32)
        SIGNAL A(63:32)
        SIGNAL B(63:0)
        SIGNAL A(63:0)
        SIGNAL S(63:0)
        SIGNAL Cin
        PORT Output Cout
        PORT Input B(63:0)
        PORT Input A(63:0)
        PORT Output S(63:0)
        PORT Input Cin
        BEGIN BLOCKDEF adder32
            TIMESTAMP 2022 2 19 12 6 14
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 adder32
            PIN A(31:0) A(63:32)
            PIN B(31:0) B(63:32)
            PIN Cin XLXN_1
            PIN Cout Cout
            PIN S(31:0) S(63:32)
        END BLOCK
        BEGIN BLOCK XLXI_2 adder32
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN Cin Cin
            PIN Cout XLXN_1
            PIN S(31:0) S(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1280 1120 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1280 1520 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1200 1088 1280 1088
            WIRE 1200 1088 1200 1184
            WIRE 1200 1184 1728 1184
            WIRE 1728 1184 1728 1360
            WIRE 1664 1360 1728 1360
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1664 960 1840 960
        END BRANCH
        BEGIN BRANCH S(63:32)
            WIRE 1664 1024 1840 1024
            WIRE 1840 1024 1904 1024
            BEGIN DISPLAY 1840 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 1664 1424 1840 1424
            WIRE 1840 1424 1904 1424
            BEGIN DISPLAY 1840 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 976 1360 1040 1360
            WIRE 1040 1360 1120 1360
            WIRE 1120 1360 1280 1360
            BEGIN DISPLAY 1040 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 1056 1424 1120 1424
            WIRE 1120 1424 1280 1424
            BEGIN DISPLAY 1120 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(63:32)
            WIRE 1056 1024 1120 1024
            WIRE 1120 1024 1280 1024
            BEGIN DISPLAY 1120 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(63:32)
            WIRE 976 960 1040 960
            WIRE 1040 960 1120 960
            WIRE 1120 960 1280 960
            BEGIN DISPLAY 1040 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(63:0)
            WIRE 800 1600 960 1600
            WIRE 960 880 960 1024
            WIRE 960 1024 960 1424
            WIRE 960 1424 960 1600
        END BRANCH
        BEGIN BRANCH A(63:0)
            WIRE 800 1520 880 1520
            WIRE 880 880 880 960
            WIRE 880 960 880 1360
            WIRE 880 1360 880 1520
        END BRANCH
        BEGIN BRANCH S(63:0)
            WIRE 2000 880 2000 1024
            WIRE 2000 1024 2000 1424
            WIRE 2000 1424 2000 1600
            WIRE 2000 1600 2160 1600
        END BRANCH
        BUSTAP 880 960 976 960
        BUSTAP 880 1360 976 1360
        BUSTAP 960 1024 1056 1024
        BUSTAP 960 1424 1056 1424
        BUSTAP 2000 1024 1904 1024
        BUSTAP 2000 1424 1904 1424
        BEGIN BRANCH Cin
            WIRE 1120 1488 1280 1488
        END BRANCH
        IOMARKER 800 1600 B(63:0) R180 28
        IOMARKER 800 1520 A(63:0) R180 28
        IOMARKER 1120 1488 Cin R180 28
        IOMARKER 1840 960 Cout R0 28
        IOMARKER 2160 1600 S(63:0) R0 28
    END SHEET
END SCHEMATIC
