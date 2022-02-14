VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(7)
        SIGNAL B(7)
        SIGNAL A(6)
        SIGNAL B(6)
        SIGNAL S(6)
        SIGNAL S(7)
        SIGNAL A(5)
        SIGNAL B(5)
        SIGNAL A(4)
        SIGNAL B(4)
        SIGNAL S(5)
        SIGNAL S(4)
        SIGNAL A(3)
        SIGNAL B(3)
        SIGNAL A(2)
        SIGNAL B(2)
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL A(1)
        SIGNAL B(1)
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL S(7:0)
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output S(7:0)
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 B(7)
            PIN I1 A(7)
            PIN O S(7)
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 B(6)
            PIN I1 A(6)
            PIN O S(6)
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 B(5)
            PIN I1 A(5)
            PIN O S(5)
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 B(4)
            PIN I1 A(4)
            PIN O S(4)
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 B(3)
            PIN I1 A(3)
            PIN O S(3)
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 B(2)
            PIN I1 A(2)
            PIN O S(2)
        END BLOCK
        BEGIN BLOCK XLXI_7 and2
            PIN I0 B(1)
            PIN I1 A(1)
            PIN O S(1)
        END BLOCK
        BEGIN BLOCK XLXI_8 and2
            PIN I0 B(0)
            PIN I1 A(0)
            PIN O S(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1008 976 R0
        INSTANCE XLXI_2 1008 1152 R0
        INSTANCE XLXI_3 1008 1328 R0
        INSTANCE XLXI_4 1008 1504 R0
        INSTANCE XLXI_5 1008 1680 R0
        INSTANCE XLXI_6 1008 1856 R0
        INSTANCE XLXI_7 1008 2032 R0
        INSTANCE XLXI_8 1008 2208 R0
        BEGIN BRANCH A(7)
            WIRE 880 848 960 848
            WIRE 960 848 1008 848
            BEGIN DISPLAY 960 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 880 912 960 912
            WIRE 960 912 1008 912
            BEGIN DISPLAY 960 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 880 1024 960 1024
            WIRE 960 1024 1008 1024
            BEGIN DISPLAY 960 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 880 1088 960 1088
            WIRE 960 1088 1008 1088
            BEGIN DISPLAY 960 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 1264 1056 1360 1056
            WIRE 1360 1056 1440 1056
            BEGIN DISPLAY 1360 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 1264 880 1360 880
            WIRE 1360 880 1440 880
            BEGIN DISPLAY 1360 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 880 1200 960 1200
            WIRE 960 1200 1008 1200
            BEGIN DISPLAY 960 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 880 1264 960 1264
            WIRE 960 1264 1008 1264
            BEGIN DISPLAY 960 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 880 1376 960 1376
            WIRE 960 1376 1008 1376
            BEGIN DISPLAY 960 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 880 1440 960 1440
            WIRE 960 1440 1008 1440
            BEGIN DISPLAY 960 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 1264 1232 1360 1232
            WIRE 1360 1232 1440 1232
            BEGIN DISPLAY 1360 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 1264 1408 1360 1408
            WIRE 1360 1408 1440 1408
            BEGIN DISPLAY 1360 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 880 1552 960 1552
            WIRE 960 1552 1008 1552
            BEGIN DISPLAY 960 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 880 1616 960 1616
            WIRE 960 1616 1008 1616
            BEGIN DISPLAY 960 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 880 1728 960 1728
            WIRE 960 1728 1008 1728
            BEGIN DISPLAY 960 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 880 1792 960 1792
            WIRE 960 1792 1008 1792
            BEGIN DISPLAY 960 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 1264 1584 1360 1584
            WIRE 1360 1584 1440 1584
            BEGIN DISPLAY 1360 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 1264 1760 1360 1760
            WIRE 1360 1760 1440 1760
            BEGIN DISPLAY 1360 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 880 1904 960 1904
            WIRE 960 1904 1008 1904
            BEGIN DISPLAY 960 1904 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 880 1968 960 1968
            WIRE 960 1968 1008 1968
            BEGIN DISPLAY 960 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 880 2080 960 2080
            WIRE 960 2080 1008 2080
            BEGIN DISPLAY 960 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 880 2144 960 2144
            WIRE 960 2144 1008 2144
            BEGIN DISPLAY 960 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1264 1936 1360 1936
            WIRE 1360 1936 1440 1936
            BEGIN DISPLAY 1360 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 1264 2112 1360 2112
            WIRE 1360 2112 1440 2112
            BEGIN DISPLAY 1360 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 560 1040 640 1040
            WIRE 640 1040 720 1040
            BEGIN DISPLAY 640 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 560 1120 640 1120
            WIRE 640 1120 720 1120
            BEGIN DISPLAY 640 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1520 1040 1600 1040
            WIRE 1600 1040 1680 1040
            BEGIN DISPLAY 1600 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 560 1040 A(7:0) R180 28
        IOMARKER 560 1120 B(7:0) R180 28
        IOMARKER 1680 1040 S(7:0) R0 28
    END SHEET
END SCHEMATIC
