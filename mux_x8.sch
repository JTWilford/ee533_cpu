VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL Q
        SIGNAL A(7)
        SIGNAL B(7)
        SIGNAL A(6)
        SIGNAL A(5)
        SIGNAL B(5)
        SIGNAL A(4)
        SIGNAL B(4)
        SIGNAL S(7)
        SIGNAL S(6)
        SIGNAL S(5)
        SIGNAL S(4)
        SIGNAL A(3)
        SIGNAL B(3)
        SIGNAL A(2)
        SIGNAL B(2)
        SIGNAL A(1)
        SIGNAL B(1)
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL B(6)
        SIGNAL B(7:0)
        SIGNAL A(7:0)
        SIGNAL S(7:0)
        PORT Input Q
        PORT Input B(7:0)
        PORT Input A(7:0)
        PORT Output S(7:0)
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 A(7)
            PIN D1 B(7)
            PIN S0 Q
            PIN O S(7)
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 A(6)
            PIN D1 B(6)
            PIN S0 Q
            PIN O S(6)
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 A(5)
            PIN D1 B(5)
            PIN S0 Q
            PIN O S(5)
        END BLOCK
        BEGIN BLOCK XLXI_4 m2_1
            PIN D0 A(4)
            PIN D1 B(4)
            PIN S0 Q
            PIN O S(4)
        END BLOCK
        BEGIN BLOCK XLXI_5 m2_1
            PIN D0 A(3)
            PIN D1 B(3)
            PIN S0 Q
            PIN O S(3)
        END BLOCK
        BEGIN BLOCK XLXI_6 m2_1
            PIN D0 A(2)
            PIN D1 B(2)
            PIN S0 Q
            PIN O S(2)
        END BLOCK
        BEGIN BLOCK XLXI_7 m2_1
            PIN D0 A(1)
            PIN D1 B(1)
            PIN S0 Q
            PIN O S(1)
        END BLOCK
        BEGIN BLOCK XLXI_8 m2_1
            PIN D0 A(0)
            PIN D1 B(0)
            PIN S0 Q
            PIN O S(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 720 800 R0
        INSTANCE XLXI_2 720 1040 R0
        INSTANCE XLXI_3 720 1280 R0
        INSTANCE XLXI_4 720 1520 R0
        INSTANCE XLXI_5 720 1760 R0
        INSTANCE XLXI_6 720 2000 R0
        INSTANCE XLXI_7 720 2240 R0
        INSTANCE XLXI_8 720 2480 R0
        BEGIN BRANCH Q
            WIRE 240 2448 704 2448
            WIRE 704 2448 720 2448
            WIRE 704 768 720 768
            WIRE 704 768 704 1008
            WIRE 704 1008 720 1008
            WIRE 704 1008 704 1248
            WIRE 704 1248 720 1248
            WIRE 704 1248 704 1488
            WIRE 704 1488 720 1488
            WIRE 704 1488 704 1728
            WIRE 704 1728 720 1728
            WIRE 704 1728 704 1968
            WIRE 704 1968 720 1968
            WIRE 704 1968 704 2208
            WIRE 704 2208 720 2208
            WIRE 704 2208 704 2416
            WIRE 704 2416 704 2448
            BEGIN DISPLAY 704 2416 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 560 640 640 640
            WIRE 640 640 720 640
            BEGIN DISPLAY 640 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 560 704 640 704
            WIRE 640 704 720 704
            BEGIN DISPLAY 640 704 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 560 880 640 880
            WIRE 640 880 720 880
            BEGIN DISPLAY 640 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 560 944 640 944
            WIRE 640 944 720 944
            BEGIN DISPLAY 640 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 560 1120 640 1120
            WIRE 640 1120 720 1120
            BEGIN DISPLAY 640 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 560 1184 640 1184
            WIRE 640 1184 720 1184
            BEGIN DISPLAY 640 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 560 1360 640 1360
            WIRE 640 1360 720 1360
            BEGIN DISPLAY 640 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 560 1424 640 1424
            WIRE 640 1424 720 1424
            BEGIN DISPLAY 640 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 1040 672 1136 672
            WIRE 1136 672 1200 672
            BEGIN DISPLAY 1136 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 1040 912 1136 912
            WIRE 1136 912 1200 912
            BEGIN DISPLAY 1136 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 1040 1152 1136 1152
            WIRE 1136 1152 1200 1152
            BEGIN DISPLAY 1136 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 1040 1392 1136 1392
            WIRE 1136 1392 1200 1392
            BEGIN DISPLAY 1136 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 560 1600 640 1600
            WIRE 640 1600 720 1600
            BEGIN DISPLAY 640 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 560 1664 640 1664
            WIRE 640 1664 720 1664
            BEGIN DISPLAY 640 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 560 1840 640 1840
            WIRE 640 1840 720 1840
            BEGIN DISPLAY 640 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 560 1904 640 1904
            WIRE 640 1904 720 1904
            BEGIN DISPLAY 640 1904 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 560 2080 640 2080
            WIRE 640 2080 720 2080
            BEGIN DISPLAY 640 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 560 2144 640 2144
            WIRE 640 2144 720 2144
            BEGIN DISPLAY 640 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 560 2320 640 2320
            WIRE 640 2320 720 2320
            BEGIN DISPLAY 640 2320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 560 2384 640 2384
            WIRE 640 2384 720 2384
            BEGIN DISPLAY 640 2384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 1040 1632 1136 1632
            WIRE 1136 1632 1200 1632
            BEGIN DISPLAY 1136 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 1040 1872 1120 1872
            WIRE 1120 1872 1200 1872
            BEGIN DISPLAY 1120 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1040 2112 1136 2112
            WIRE 1136 2112 1200 2112
            BEGIN DISPLAY 1136 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 1040 2352 1120 2352
            WIRE 1120 2352 1200 2352
            BEGIN DISPLAY 1120 2352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 240 2320 320 2320
            WIRE 320 2320 400 2320
            BEGIN DISPLAY 320 2320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 240 2240 320 2240
            WIRE 320 2240 400 2240
            BEGIN DISPLAY 320 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1280 2240 1360 2240
            WIRE 1360 2240 1440 2240
            BEGIN DISPLAY 1360 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1440 2240 S(7:0) R0 28
        IOMARKER 240 2448 Q R180 28
        IOMARKER 240 2320 B(7:0) R180 28
        IOMARKER 240 2240 A(7:0) R180 28
    END SHEET
END SCHEMATIC
