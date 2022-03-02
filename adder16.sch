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
        SIGNAL S(15:8)
        SIGNAL S(7:0)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL Cin
        SIGNAL B(15:8)
        SIGNAL B(15:0)
        SIGNAL A(15:0)
        SIGNAL A(15:8)
        SIGNAL S(15:0)
        PORT Output Cout
        PORT Input Cin
        PORT Input B(15:0)
        PORT Input A(15:0)
        PORT Output S(15:0)
        BEGIN BLOCKDEF adder8
            TIMESTAMP 2022 2 19 5 2 36
            LINE N 64 32 0 32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -128 320 64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 adder8
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN Cout XLXN_1
            PIN S(7:0) S(7:0)
            PIN Cin Cin
        END BLOCK
        BEGIN BLOCK XLXI_2 adder8
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN Cout Cout
            PIN S(7:0) S(15:8)
            PIN Cin XLXN_1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1280 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1280 896 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1216 928 1280 928
            WIRE 1216 928 1216 1024
            WIRE 1216 1024 1728 1024
            WIRE 1728 1024 1728 1200
            WIRE 1664 1200 1728 1200
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1664 800 1840 800
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 1664 864 1840 864
            WIRE 1840 864 1904 864
            BEGIN DISPLAY 1840 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1664 1264 1840 1264
            WIRE 1840 1264 1904 1264
            BEGIN DISPLAY 1840 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 976 1200 1040 1200
            WIRE 1040 1200 1120 1200
            WIRE 1120 1200 1280 1200
            BEGIN DISPLAY 1040 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1056 1264 1120 1264
            WIRE 1120 1264 1280 1264
            BEGIN DISPLAY 1120 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 1120 1328 1280 1328
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 1056 864 1120 864
            WIRE 1120 864 1280 864
            BEGIN DISPLAY 1120 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 976 800 1040 800
            WIRE 1040 800 1120 800
            WIRE 1120 800 1280 800
            BEGIN DISPLAY 1040 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:0)
            WIRE 720 1440 960 1440
            WIRE 960 720 960 800
            WIRE 960 800 960 864
            WIRE 960 864 960 1264
            WIRE 960 1264 960 1440
        END BRANCH
        BEGIN BRANCH A(15:0)
            WIRE 720 1360 880 1360
            WIRE 880 720 880 800
            WIRE 880 800 880 1200
            WIRE 880 1200 880 1360
        END BRANCH
        BUSTAP 880 800 976 800
        BUSTAP 960 864 1056 864
        BUSTAP 880 1200 976 1200
        BUSTAP 960 1264 1056 1264
        BEGIN BRANCH S(15:0)
            WIRE 2000 720 2000 864
            WIRE 2000 864 2000 1264
            WIRE 2000 1264 2000 1440
            WIRE 2000 1440 2160 1440
        END BRANCH
        BUSTAP 2000 864 1904 864
        BUSTAP 2000 1264 1904 1264
        IOMARKER 720 1440 B(15:0) R180 28
        IOMARKER 720 1360 A(15:0) R180 28
        IOMARKER 1120 1328 Cin R180 28
        IOMARKER 1840 800 Cout R0 28
        IOMARKER 2160 1440 S(15:0) R0 28
    END SHEET
END SCHEMATIC
