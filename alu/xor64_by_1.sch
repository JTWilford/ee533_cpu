VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(63:32)
        SIGNAL A(31:0)
        SIGNAL XLXN_3
        SIGNAL B
        SIGNAL S(63:32)
        SIGNAL S(31:0)
        SIGNAL S(63:0)
        SIGNAL A(63:0)
        PORT Input B
        PORT Output S(63:0)
        PORT Input A(63:0)
        BEGIN BLOCKDEF xor32_by_1
            TIMESTAMP 2022 2 19 5 2 36
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
        BEGIN BLOCK XLXI_1 xor32_by_1
            PIN A(31:0) A(63:32)
            PIN B B
            PIN S(31:0) S(63:32)
        END BLOCK
        BEGIN BLOCK XLXI_2 xor32_by_1
            PIN A(31:0) A(31:0)
            PIN B B
            PIN S(31:0) S(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1200 1120 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1200 1360 R0
        END INSTANCE
        BEGIN BRANCH A(63:32)
            WIRE 1040 1040 1200 1040
            BEGIN DISPLAY 1040 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 1040 1280 1200 1280
            BEGIN DISPLAY 1040 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 1040 1088 1120 1088
            WIRE 1120 1088 1200 1088
            WIRE 1120 1088 1120 1328
            WIRE 1120 1328 1200 1328
        END BRANCH
        BEGIN BRANCH S(63:32)
            WIRE 1504 1056 1600 1056
            BEGIN DISPLAY 1600 1056 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 1504 1296 1600 1296
            BEGIN DISPLAY 1600 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(63:0)
            WIRE 1680 1440 1840 1440
        END BRANCH
        BEGIN BRANCH A(63:0)
            WIRE 720 1440 880 1440
        END BRANCH
        IOMARKER 720 1440 A(63:0) R180 28
        IOMARKER 1840 1440 S(63:0) R0 28
        IOMARKER 1040 1088 B R180 28
    END SHEET
END SCHEMATIC
