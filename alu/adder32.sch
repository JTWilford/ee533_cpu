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
        SIGNAL S(31:16)
        SIGNAL S(15:0)
        SIGNAL A(31:16)
        SIGNAL B(31:16)
        SIGNAL A(15:0)
        SIGNAL B(15:0)
        SIGNAL Cin
        SIGNAL B(31:0)
        SIGNAL A(31:0)
        SIGNAL S(31:0)
        PORT Output Cout
        PORT Input Cin
        PORT Input B(31:0)
        PORT Input A(31:0)
        PORT Output S(31:0)
        BEGIN BLOCKDEF adder16
            TIMESTAMP 2022 2 19 12 1 43
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
        BEGIN BLOCK XLXI_1 adder16
            PIN A(15:0) A(31:16)
            PIN B(15:0) B(31:16)
            PIN Cin XLXN_1
            PIN Cout Cout
            PIN S(15:0) S(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 adder16
            PIN A(15:0) A(15:0)
            PIN B(15:0) B(15:0)
            PIN Cin Cin
            PIN Cout XLXN_1
            PIN S(15:0) S(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1280 1120 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1280 1504 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1216 1088 1280 1088
            WIRE 1216 1088 1216 1184
            WIRE 1216 1184 1728 1184
            WIRE 1728 1184 1728 1344
            WIRE 1664 1344 1728 1344
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1664 960 1840 960
        END BRANCH
        BEGIN BRANCH S(31:16)
            WIRE 1664 1024 1840 1024
            WIRE 1840 1024 1904 1024
            BEGIN DISPLAY 1840 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15:0)
            WIRE 1664 1408 1840 1408
            WIRE 1840 1408 1904 1408
            BEGIN DISPLAY 1840 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:16)
            WIRE 896 960 960 960
            WIRE 960 960 1040 960
            WIRE 1040 960 1280 960
            BEGIN DISPLAY 960 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:16)
            WIRE 976 1024 1040 1024
            WIRE 1040 1024 1280 1024
            BEGIN DISPLAY 1040 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:0)
            WIRE 896 1344 960 1344
            WIRE 960 1344 1040 1344
            WIRE 1040 1344 1280 1344
            BEGIN DISPLAY 960 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:0)
            WIRE 976 1408 1040 1408
            WIRE 1040 1408 1280 1408
            BEGIN DISPLAY 1040 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 1120 1472 1280 1472
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 640 1600 880 1600
            WIRE 880 880 880 960
            WIRE 880 960 880 1024
            WIRE 880 1024 880 1344
            WIRE 880 1344 880 1408
            WIRE 880 1408 880 1600
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 640 1520 800 1520
            WIRE 800 880 800 960
            WIRE 800 960 800 1344
            WIRE 800 1344 800 1520
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 2000 880 2000 1024
            WIRE 2000 1024 2000 1408
            WIRE 2000 1408 2000 1600
            WIRE 2000 1600 2176 1600
        END BRANCH
        BUSTAP 2000 1024 1904 1024
        BUSTAP 2000 1408 1904 1408
        BUSTAP 800 960 896 960
        BUSTAP 800 1344 896 1344
        BUSTAP 880 1408 976 1408
        BUSTAP 880 1024 976 1024
        IOMARKER 1120 1472 Cin R180 28
        IOMARKER 1840 960 Cout R0 28
        IOMARKER 640 1600 B(31:0) R180 28
        IOMARKER 640 1520 A(31:0) R180 28
        IOMARKER 2176 1600 S(31:0) R0 28
    END SHEET
END SCHEMATIC
