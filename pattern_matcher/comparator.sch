VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a(63:0)
        SIGNAL b(63:0)
        SIGNAL amask(7:0)
        SIGNAL XLXN_63
        SIGNAL XLXN_70
        SIGNAL XLXN_69
        SIGNAL XLXN_68
        SIGNAL XLXN_67
        SIGNAL XLXN_66
        SIGNAL XLXN_64
        SIGNAL amask(0)
        SIGNAL amask(1)
        SIGNAL amask(2)
        SIGNAL XLXN_27
        SIGNAL XLXN_26
        SIGNAL XLXN_25
        SIGNAL amask(3)
        SIGNAL XLXN_23
        SIGNAL amask(4)
        SIGNAL XLXN_21
        SIGNAL amask(5)
        SIGNAL amask(6)
        SIGNAL XLXN_17
        SIGNAL XLXN_16
        SIGNAL b(23:16)
        SIGNAL a(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL b(31:24)
        SIGNAL a(31:24)
        SIGNAL b(39:32)
        SIGNAL a(39:32)
        SIGNAL b(47:40)
        SIGNAL a(47:40)
        SIGNAL b(55:48)
        SIGNAL a(55:48)
        SIGNAL a(63:56)
        SIGNAL b(63:56)
        SIGNAL XLXN_146
        SIGNAL amask(7)
        SIGNAL XLXN_148
        SIGNAL XLXN_149
        SIGNAL XLXN_150
        SIGNAL XLXN_153
        SIGNAL match
        PORT Input a(63:0)
        PORT Input b(63:0)
        PORT Input amask(7:0)
        PORT Output match
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2022 1 30 1 41 34
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF xnor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
            CIRCLE N 212 -104 228 -88 
            LINE N 228 -96 256 -96 
            LINE N 60 -28 60 -28 
        END BLOCKDEF
        BEGIN BLOCKDEF and8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -512 
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 0 -384 64 -384 
            LINE N 0 -448 64 -448 
            LINE N 0 -512 64 -512 
            LINE N 64 -336 144 -336 
            LINE N 144 -240 64 -240 
            ARC N 96 -336 192 -240 144 -240 144 -336 
            LINE N 256 -288 192 -288 
        END BLOCKDEF
        BEGIN BLOCK XLXI_49 xnor2
            PIN I0 amask(2)
            PIN I1 XLXN_27
            PIN O XLXN_68
        END BLOCK
        BEGIN BLOCK XLXI_48 xnor2
            PIN I0 amask(1)
            PIN I1 XLXN_26
            PIN O XLXN_69
        END BLOCK
        BEGIN BLOCK XLXI_47 xnor2
            PIN I0 amask(0)
            PIN I1 XLXN_25
            PIN O XLXN_70
        END BLOCK
        BEGIN BLOCK XLXI_46 xnor2
            PIN I0 amask(3)
            PIN I1 XLXN_23
            PIN O XLXN_67
        END BLOCK
        BEGIN BLOCK XLXI_45 xnor2
            PIN I0 amask(4)
            PIN I1 XLXN_21
            PIN O XLXN_66
        END BLOCK
        BEGIN BLOCK XLXI_44 xnor2
            PIN I0 amask(5)
            PIN I1 XLXN_17
            PIN O XLXN_64
        END BLOCK
        BEGIN BLOCK XLXI_43 xnor2
            PIN I0 amask(6)
            PIN I1 XLXN_16
            PIN O XLXN_63
        END BLOCK
        BEGIN BLOCK XLXI_40 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_39 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_38 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_37 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_36 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_35 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_34 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_64 comp8
            PIN A(7:0) a(63:56)
            PIN B(7:0) b(63:56)
            PIN EQ XLXN_146
        END BLOCK
        BEGIN BLOCK XLXI_65 xnor2
            PIN I0 amask(7)
            PIN I1 XLXN_146
            PIN O XLXN_149
        END BLOCK
        BEGIN BLOCK XLXI_67 and8
            PIN I0 XLXN_70
            PIN I1 XLXN_69
            PIN I2 XLXN_68
            PIN I3 XLXN_67
            PIN I4 XLXN_66
            PIN I5 XLXN_64
            PIN I6 XLXN_63
            PIN I7 XLXN_149
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH a(63:0)
            WIRE 1168 80 1376 80
        END BRANCH
        BEGIN BRANCH b(63:0)
            WIRE 1168 144 1376 144
        END BRANCH
        BEGIN BRANCH amask(7:0)
            WIRE 1616 112 1856 112
        END BRANCH
        IOMARKER 1168 80 a(63:0) R180 28
        IOMARKER 1168 144 b(63:0) R180 28
        IOMARKER 1616 112 amask(7:0) R180 28
        INSTANCE XLXI_49 1984 1136 R0
        INSTANCE XLXI_48 1984 1568 R0
        INSTANCE XLXI_47 2000 2000 R0
        INSTANCE XLXI_46 928 2176 R0
        INSTANCE XLXI_45 928 1792 R0
        INSTANCE XLXI_44 928 1392 R0
        INSTANCE XLXI_43 928 976 R0
        INSTANCE XLXI_40 1552 1232 R0
        INSTANCE XLXI_39 1552 1664 R0
        INSTANCE XLXI_38 1552 2096 R0
        INSTANCE XLXI_37 464 2272 R0
        INSTANCE XLXI_36 464 1888 R0
        INSTANCE XLXI_35 464 1488 R0
        INSTANCE XLXI_34 464 1072 R0
        BEGIN BRANCH XLXN_70
            WIRE 2256 1904 2576 1904
            WIRE 2576 1600 2576 1904
        END BRANCH
        BEGIN BRANCH XLXN_68
            WIRE 2240 1040 2416 1040
            WIRE 2416 1040 2416 1472
            WIRE 2416 1472 2576 1472
        END BRANCH
        BEGIN BRANCH XLXN_67
            WIRE 1184 2080 2352 2080
            WIRE 2352 1408 2352 2080
            WIRE 2352 1408 2576 1408
        END BRANCH
        BEGIN BRANCH XLXN_66
            WIRE 1184 1696 1968 1696
            WIRE 1968 1344 1968 1696
            WIRE 1968 1344 2576 1344
        END BRANCH
        BEGIN BRANCH XLXN_64
            WIRE 1184 1296 1200 1296
            WIRE 1200 1296 1200 1680
            WIRE 1200 1680 2320 1680
            WIRE 2320 1280 2320 1680
            WIRE 2320 1280 2576 1280
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 1936 1936 1952 1936
            WIRE 1952 1936 2000 1936
            BEGIN DISPLAY 1960 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 1936 1504 1952 1504
            WIRE 1952 1504 1984 1504
            BEGIN DISPLAY 1954 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 1936 1072 1952 1072
            WIRE 1952 1072 1984 1072
            BEGIN DISPLAY 1954 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1936 1008 1984 1008
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 1936 1440 1984 1440
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1936 1872 2000 1872
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 864 2112 880 2112
            WIRE 880 2112 928 2112
            BEGIN DISPLAY 887 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 848 2048 928 2048
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 864 1728 880 1728
            WIRE 880 1728 928 1728
            BEGIN DISPLAY 886 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 848 1664 928 1664
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 864 1328 880 1328
            WIRE 880 1328 928 1328
            BEGIN DISPLAY 886 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 864 912 880 912
            WIRE 880 912 928 912
            BEGIN DISPLAY 887 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 848 1264 928 1264
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 848 848 928 848
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1440 1104 1472 1104
            WIRE 1472 1104 1552 1104
            BEGIN DISPLAY 1476 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1456 912 1488 912
            WIRE 1488 912 1552 912
            BEGIN DISPLAY 1489 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1440 1344 1472 1344
            WIRE 1472 1344 1552 1344
            BEGIN DISPLAY 1478 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1440 1536 1472 1536
            WIRE 1472 1536 1552 1536
            BEGIN DISPLAY 1471 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1440 1776 1472 1776
            WIRE 1472 1776 1552 1776
            BEGIN DISPLAY 1479 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1456 1968 1488 1968
            WIRE 1488 1968 1552 1968
            BEGIN DISPLAY 1482 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 352 2144 384 2144
            WIRE 384 2144 464 2144
            BEGIN DISPLAY 386 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 368 1952 400 1952
            WIRE 400 1952 464 1952
            BEGIN DISPLAY 394 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 352 1760 384 1760
            WIRE 384 1760 464 1760
            BEGIN DISPLAY 379 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 352 1568 384 1568
            WIRE 384 1568 464 1568
            BEGIN DISPLAY 381 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 384 1360 400 1360
            WIRE 400 1360 464 1360
            BEGIN DISPLAY 403 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 384 1168 400 1168
            WIRE 400 1168 464 1168
            BEGIN DISPLAY 400 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 352 944 368 944
            WIRE 368 944 464 944
            BEGIN DISPLAY 374 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(55:48)
            WIRE 368 752 384 752
            WIRE 384 752 464 752
            BEGIN DISPLAY 389 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_64 464 608 R0
        INSTANCE XLXI_65 928 512 R0
        BEGIN BRANCH a(63:56)
            WIRE 352 288 384 288
            WIRE 384 288 464 288
            BEGIN DISPLAY 384 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(63:56)
            WIRE 368 480 384 480
            WIRE 384 480 464 480
            BEGIN DISPLAY 384 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_146
            WIRE 848 384 928 384
        END BRANCH
        BEGIN BRANCH amask(7)
            WIRE 848 448 880 448
            WIRE 880 448 928 448
            BEGIN DISPLAY 880 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_149
            WIRE 1184 416 2576 416
            WIRE 2576 416 2576 1152
        END BRANCH
        BEGIN BRANCH XLXN_63
            WIRE 1184 880 1200 880
            WIRE 1200 880 1200 1216
            WIRE 1200 1216 2576 1216
        END BRANCH
        BEGIN BRANCH XLXN_69
            WIRE 2240 1472 2256 1472
            WIRE 2256 1472 2256 1536
            WIRE 2256 1536 2576 1536
        END BRANCH
        BEGIN BRANCH match
            WIRE 2832 1376 2960 1376
        END BRANCH
        IOMARKER 2960 1376 match R0 28
        INSTANCE XLXI_67 2576 1664 R0
    END SHEET
END SCHEMATIC
