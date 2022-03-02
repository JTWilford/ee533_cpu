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
        SIGNAL D(63:32)
        SIGNAL D(31:0)
        SIGNAL Q(31:0)
        SIGNAL Q(63:32)
        SIGNAL Q(63:0)
        SIGNAL D(63:0)
        PORT Input CE
        PORT Input C
        PORT Input R
        PORT Output Q(63:0)
        PORT Input D(63:0)
        BEGIN BLOCKDEF FD32RE
            TIMESTAMP 2022 2 19 12 25 41
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -160 0 -160 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 FD32RE
            PIN C C
            PIN CE CE
            PIN D(31:0) D(63:32)
            PIN Q(31:0) Q(63:32)
            PIN R R
        END BLOCK
        BEGIN BLOCK XLXI_2 FD32RE
            PIN C C
            PIN CE CE
            PIN D(31:0) D(31:0)
            PIN Q(31:0) Q(31:0)
            PIN R R
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1200 1584 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1200 1984 R0
        END INSTANCE
        BEGIN BRANCH CE
            WIRE 960 1824 1184 1824
            WIRE 1184 1824 1200 1824
            WIRE 1184 1424 1200 1424
            WIRE 1184 1424 1184 1824
        END BRANCH
        BEGIN BRANCH C
            WIRE 960 1888 1168 1888
            WIRE 1168 1888 1200 1888
            WIRE 1168 1488 1200 1488
            WIRE 1168 1488 1168 1888
        END BRANCH
        BEGIN BRANCH R
            WIRE 960 1952 1152 1952
            WIRE 1152 1952 1200 1952
            WIRE 1152 1552 1200 1552
            WIRE 1152 1552 1152 1952
        END BRANCH
        BEGIN BRANCH D(63:32)
            WIRE 1040 1360 1200 1360
            BEGIN DISPLAY 1040 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH D(31:0)
            WIRE 1040 1760 1200 1760
            BEGIN DISPLAY 1040 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(31:0)
            WIRE 1584 1760 1760 1760
            BEGIN DISPLAY 1760 1760 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(63:32)
            WIRE 1584 1360 1760 1360
            BEGIN DISPLAY 1760 1360 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(63:0)
            WIRE 1760 1600 1920 1600
        END BRANCH
        BEGIN BRANCH D(63:0)
            WIRE 880 1600 1040 1600
        END BRANCH
        IOMARKER 880 1600 D(63:0) R180 28
        IOMARKER 960 1824 CE R180 28
        IOMARKER 960 1888 C R180 28
        IOMARKER 960 1952 R R180 28
        IOMARKER 1920 1600 Q(63:0) R0 28
    END SHEET
END SCHEMATIC
