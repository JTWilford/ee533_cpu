VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CE
        SIGNAL C
        SIGNAL R
        SIGNAL D(31:16)
        SIGNAL D(15:0)
        SIGNAL D(31:0)
        SIGNAL Q(31:16)
        SIGNAL Q(15:0)
        SIGNAL Q(31:0)
        PORT Input CE
        PORT Input C
        PORT Input R
        PORT Input D(31:0)
        PORT Output Q(31:0)
        BEGIN BLOCKDEF fd16re
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 320 -268 384 -244 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd16re
            PIN C C
            PIN CE CE
            PIN D(15:0) D(31:16)
            PIN R R
            PIN Q(15:0) Q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16re
            PIN C C
            PIN CE CE
            PIN D(15:0) D(15:0)
            PIN R R
            PIN Q(15:0) Q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1120 1056 R0
        INSTANCE XLXI_2 1120 1536 R0
        BEGIN BRANCH CE
            WIRE 880 1344 896 1344
            WIRE 896 1344 1104 1344
            WIRE 1104 1344 1120 1344
            WIRE 1104 864 1120 864
            WIRE 1104 864 1104 1344
        END BRANCH
        BEGIN BRANCH C
            WIRE 880 1408 1088 1408
            WIRE 1088 1408 1120 1408
            WIRE 1088 928 1120 928
            WIRE 1088 928 1088 1408
        END BRANCH
        BEGIN BRANCH R
            WIRE 880 1504 1072 1504
            WIRE 1072 1504 1120 1504
            WIRE 1072 1024 1120 1024
            WIRE 1072 1024 1072 1504
        END BRANCH
        BEGIN BRANCH D(31:16)
            WIRE 880 800 1120 800
            BEGIN DISPLAY 880 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(15:0)
            WIRE 880 1280 1120 1280
            BEGIN DISPLAY 880 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(31:0)
            WIRE 560 1280 720 1280
        END BRANCH
        IOMARKER 560 1280 D(31:0) R180 28
        IOMARKER 880 1344 CE R180 28
        IOMARKER 880 1408 C R180 28
        IOMARKER 880 1504 R R180 28
        BEGIN BRANCH Q(31:16)
            WIRE 1504 800 1680 800
            BEGIN DISPLAY 1680 800 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(15:0)
            WIRE 1504 1280 1680 1280
            BEGIN DISPLAY 1680 1280 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(31:0)
            WIRE 1840 1280 2000 1280
        END BRANCH
        IOMARKER 2000 1280 Q(31:0) R0 28
    END SHEET
END SCHEMATIC
