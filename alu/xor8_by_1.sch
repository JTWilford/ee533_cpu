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
        SIGNAL B
        SIGNAL A(7)
        SIGNAL A(6)
        SIGNAL A(5)
        SIGNAL A(4)
        SIGNAL A(3)
        SIGNAL A(2)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL S(0)
        SIGNAL S(1)
        SIGNAL S(2)
        SIGNAL S(3)
        SIGNAL S(4)
        SIGNAL S(5)
        SIGNAL S(6)
        SIGNAL S(7)
        SIGNAL A(7:0)
        SIGNAL S(7:0)
        PORT Input B
        PORT Input A(7:0)
        PORT Output S(7:0)
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A(0)
            PIN O S(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 B
            PIN I1 A(1)
            PIN O S(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 xor2
            PIN I0 B
            PIN I1 A(2)
            PIN O S(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 xor2
            PIN I0 B
            PIN I1 A(3)
            PIN O S(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 xor2
            PIN I0 B
            PIN I1 A(4)
            PIN O S(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 xor2
            PIN I0 B
            PIN I1 A(5)
            PIN O S(5)
        END BLOCK
        BEGIN BLOCK XLXI_7 xor2
            PIN I0 B
            PIN I1 A(6)
            PIN O S(6)
        END BLOCK
        BEGIN BLOCK XLXI_8 xor2
            PIN I0 B
            PIN I1 A(7)
            PIN O S(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 896 656 R0
        INSTANCE XLXI_2 896 816 R0
        INSTANCE XLXI_3 896 976 R0
        INSTANCE XLXI_4 896 1120 R0
        INSTANCE XLXI_5 896 1264 R0
        INSTANCE XLXI_6 896 1424 R0
        INSTANCE XLXI_7 896 1584 R0
        INSTANCE XLXI_8 896 1744 R0
        BEGIN BRANCH B
            WIRE 560 1168 640 1168
            WIRE 640 1168 880 1168
            WIRE 880 1168 880 1200
            WIRE 880 1200 896 1200
            WIRE 880 1200 880 1360
            WIRE 880 1360 896 1360
            WIRE 880 1360 880 1520
            WIRE 880 1520 896 1520
            WIRE 880 1520 880 1680
            WIRE 880 1680 896 1680
            WIRE 880 592 896 592
            WIRE 880 592 880 752
            WIRE 880 752 896 752
            WIRE 880 752 880 912
            WIRE 880 912 896 912
            WIRE 880 912 880 1056
            WIRE 880 1056 896 1056
            WIRE 880 1056 880 1168
            BEGIN DISPLAY 640 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 816 1616 848 1616
            WIRE 848 1616 896 1616
            BEGIN DISPLAY 848 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 816 1456 832 1456
            WIRE 832 1456 896 1456
            BEGIN DISPLAY 832 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 816 1296 832 1296
            WIRE 832 1296 896 1296
            BEGIN DISPLAY 832 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 816 1136 832 1136
            WIRE 832 1136 896 1136
            BEGIN DISPLAY 832 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 816 992 832 992
            WIRE 832 992 896 992
            BEGIN DISPLAY 832 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 816 848 832 848
            WIRE 832 848 896 848
            BEGIN DISPLAY 832 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 816 688 832 688
            WIRE 832 688 896 688
            BEGIN DISPLAY 832 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 816 528 832 528
            WIRE 832 528 896 528
            BEGIN DISPLAY 832 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 560 1168 B R180 28
        BEGIN BRANCH S(0)
            WIRE 1152 560 1200 560
            WIRE 1200 560 1280 560
            BEGIN DISPLAY 1200 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 1152 720 1200 720
            WIRE 1200 720 1280 720
            BEGIN DISPLAY 1200 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 1152 880 1200 880
            WIRE 1200 880 1280 880
            BEGIN DISPLAY 1200 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 1152 1024 1200 1024
            WIRE 1200 1024 1280 1024
            BEGIN DISPLAY 1200 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 1152 1168 1200 1168
            WIRE 1200 1168 1280 1168
            BEGIN DISPLAY 1200 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 1152 1328 1200 1328
            WIRE 1200 1328 1280 1328
            BEGIN DISPLAY 1200 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 1152 1488 1200 1488
            WIRE 1200 1488 1280 1488
            BEGIN DISPLAY 1200 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 1152 1648 1200 1648
            WIRE 1200 1648 1280 1648
            BEGIN DISPLAY 1200 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 560 1280 640 1280
            WIRE 640 1280 720 1280
            BEGIN DISPLAY 640 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1360 1280 1440 1280
            WIRE 1440 1280 1520 1280
            BEGIN DISPLAY 1440 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1520 1280 S(7:0) R0 28
        IOMARKER 560 1280 A(7:0) R180 28
    END SHEET
END SCHEMATIC
