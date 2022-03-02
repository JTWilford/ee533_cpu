VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A
        SIGNAL B
        SIGNAL CI
        SIGNAL S
        SIGNAL CO
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        PORT Input A
        PORT Input B
        PORT Input CI
        PORT Output S
        PORT Output CO
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
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 CI
            PIN I1 XLXN_16
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 CI
            PIN I1 A
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 CI
            PIN I1 B
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_6 or3
            PIN I0 XLXN_13
            PIN I1 XLXN_14
            PIN I2 XLXN_15
            PIN O CO
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 960 576 R0
        INSTANCE XLXI_2 1424 608 R0
        INSTANCE XLXI_3 960 816 R0
        INSTANCE XLXI_4 960 976 R0
        INSTANCE XLXI_5 960 1136 R0
        INSTANCE XLXI_6 1424 1008 R0
        BEGIN BRANCH A
            WIRE 720 448 768 448
            WIRE 768 448 816 448
            WIRE 816 448 960 448
            WIRE 816 448 816 688
            WIRE 816 688 960 688
            WIRE 816 688 816 848
            WIRE 816 848 960 848
            BEGIN DISPLAY 768 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B
            WIRE 720 512 768 512
            WIRE 768 512 864 512
            WIRE 864 512 960 512
            WIRE 864 512 864 752
            WIRE 864 752 960 752
            WIRE 864 752 864 1008
            WIRE 864 1008 960 1008
            BEGIN DISPLAY 768 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CI
            WIRE 720 576 768 576
            WIRE 768 576 912 576
            WIRE 912 576 1328 576
            WIRE 912 576 912 912
            WIRE 912 912 960 912
            WIRE 912 912 912 1072
            WIRE 912 1072 960 1072
            WIRE 1328 544 1328 576
            WIRE 1328 544 1424 544
            BEGIN DISPLAY 768 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S
            WIRE 1680 512 1856 512
            WIRE 1856 512 1920 512
            BEGIN DISPLAY 1856 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CO
            WIRE 1680 880 1856 880
            WIRE 1856 880 1920 880
            BEGIN DISPLAY 1856 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1216 1040 1424 1040
            WIRE 1424 944 1424 1040
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1216 880 1424 880
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1216 720 1424 720
            WIRE 1424 720 1424 816
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1216 480 1424 480
        END BRANCH
        IOMARKER 720 448 A R180 28
        IOMARKER 720 512 B R180 28
        IOMARKER 720 576 CI R180 28
        IOMARKER 1920 512 S R0 28
        IOMARKER 1920 880 CO R0 28
    END SHEET
END SCHEMATIC
