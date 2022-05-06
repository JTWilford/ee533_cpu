VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_3(7:0)
        SIGNAL character_in(63:0)
        SIGNAL XLXN_23(63:0)
        SIGNAL pattern(63:0)
        SIGNAL XLXN_26(63:0)
        SIGNAL XLXN_5(63:0)
        SIGNAL match(0)
        SIGNAL XLXN_7(63:0)
        SIGNAL match(1)
        SIGNAL XLXN_9(63:0)
        SIGNAL match(2)
        SIGNAL XLXN_11(63:0)
        SIGNAL match(3)
        SIGNAL XLXN_13(63:0)
        SIGNAL match(4)
        SIGNAL XLXN_15(63:0)
        SIGNAL match(5)
        SIGNAL XLXN_17(63:0)
        SIGNAL match(6)
        SIGNAL XLXN_19(63:0)
        SIGNAL match(7)
        SIGNAL amask(7:0)
        SIGNAL XLXN_44(7:0)
        SIGNAL match(7:0)
        SIGNAL XLXN_46(63:0)
        SIGNAL XLXN_47(63:0)
        SIGNAL XLXN_48(63:0)
        SIGNAL XLXN_49(63:0)
        PORT Input character_in(63:0)
        PORT Input pattern(63:0)
        PORT Input amask(7:0)
        PORT Output match(7:0)
        BEGIN BLOCKDEF character_rotate
            TIMESTAMP 2022 4 16 23 41 25
            RECTANGLE N 64 -512 464 0 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -480 0 -480 
            RECTANGLE N 464 -492 528 -468 
            LINE N 464 -480 528 -480 
            RECTANGLE N 464 -428 528 -404 
            LINE N 464 -416 528 -416 
            RECTANGLE N 464 -364 528 -340 
            LINE N 464 -352 528 -352 
            RECTANGLE N 464 -300 528 -276 
            LINE N 464 -288 528 -288 
            RECTANGLE N 464 -236 528 -212 
            LINE N 464 -224 528 -224 
            RECTANGLE N 464 -172 528 -148 
            LINE N 464 -160 528 -160 
            RECTANGLE N 464 -108 528 -84 
            LINE N 464 -96 528 -96 
            RECTANGLE N 464 -44 528 -20 
            LINE N 464 -32 528 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2022 4 16 17 29 54
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 character_rotate
            PIN pattern_in(63:0) character_in(63:0)
            PIN pattern_out0(63:0) XLXN_5(63:0)
            PIN pattern_out1(63:0) XLXN_7(63:0)
            PIN pattern_out2(63:0) XLXN_9(63:0)
            PIN pattern_out3(63:0) XLXN_11(63:0)
            PIN pattern_out4(63:0) XLXN_13(63:0)
            PIN pattern_out5(63:0) XLXN_15(63:0)
            PIN pattern_out6(63:0) XLXN_17(63:0)
            PIN pattern_out7(63:0) XLXN_19(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(63:0) XLXN_5(63:0)
            PIN b(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match match(0)
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(63:0) XLXN_7(63:0)
            PIN b(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match match(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(63:0) XLXN_9(63:0)
            PIN b(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match match(2)
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(63:0) XLXN_11(63:0)
            PIN b(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match match(3)
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(63:0) XLXN_13(63:0)
            PIN b(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match match(4)
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(63:0) XLXN_15(63:0)
            PIN b(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match match(5)
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(63:0) XLXN_17(63:0)
            PIN b(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match match(6)
        END BLOCK
        BEGIN BLOCK XLXI_9 comparator
            PIN a(63:0) XLXN_19(63:0)
            PIN b(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match match(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 464 1168 R0
        END INSTANCE
        BEGIN BRANCH character_in(63:0)
            WIRE 336 688 464 688
        END BRANCH
        IOMARKER 336 688 character_in(63:0) R180 28
        BEGIN BRANCH pattern(63:0)
            WIRE 896 2032 1248 2032
            WIRE 1248 2032 1248 2192
            WIRE 1248 2192 1360 2192
            WIRE 1248 336 1360 336
            WIRE 1248 336 1248 592
            WIRE 1248 592 1360 592
            WIRE 1248 592 1248 864
            WIRE 1248 864 1360 864
            WIRE 1248 864 1248 1120
            WIRE 1248 1120 1360 1120
            WIRE 1248 1120 1248 1408
            WIRE 1248 1408 1360 1408
            WIRE 1248 1408 1248 1664
            WIRE 1248 1664 1360 1664
            WIRE 1248 1664 1248 1936
            WIRE 1248 1936 1360 1936
            WIRE 1248 1936 1248 2032
        END BRANCH
        BEGIN BRANCH XLXN_5(63:0)
            WIRE 992 688 1104 688
            WIRE 1104 272 1360 272
            WIRE 1104 272 1104 688
        END BRANCH
        BEGIN BRANCH match(0)
            WIRE 1744 272 1792 272
            WIRE 1792 272 1824 272
            BEGIN DISPLAY 1792 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_7(63:0)
            WIRE 992 752 1232 752
            WIRE 1232 528 1360 528
            WIRE 1232 528 1232 752
        END BRANCH
        BEGIN BRANCH match(1)
            WIRE 1744 528 1792 528
            WIRE 1792 528 1824 528
            BEGIN DISPLAY 1792 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_9(63:0)
            WIRE 992 816 1232 816
            WIRE 1232 800 1360 800
            WIRE 1232 800 1232 816
        END BRANCH
        BEGIN BRANCH match(2)
            WIRE 1744 800 1792 800
            WIRE 1792 800 1824 800
            BEGIN DISPLAY 1792 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_11(63:0)
            WIRE 992 880 1232 880
            WIRE 1232 880 1232 1056
            WIRE 1232 1056 1360 1056
        END BRANCH
        BEGIN BRANCH match(3)
            WIRE 1744 1056 1792 1056
            WIRE 1792 1056 1824 1056
            BEGIN DISPLAY 1792 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_13(63:0)
            WIRE 992 944 1200 944
            WIRE 1200 944 1200 1344
            WIRE 1200 1344 1360 1344
        END BRANCH
        BEGIN BRANCH match(4)
            WIRE 1744 1344 1776 1344
            WIRE 1776 1344 1824 1344
            BEGIN DISPLAY 1776 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_15(63:0)
            WIRE 992 1008 1152 1008
            WIRE 1152 1008 1152 1600
            WIRE 1152 1600 1360 1600
        END BRANCH
        BEGIN BRANCH match(5)
            WIRE 1744 1600 1792 1600
            WIRE 1792 1600 1824 1600
            BEGIN DISPLAY 1792 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_17(63:0)
            WIRE 992 1072 1104 1072
            WIRE 1104 1072 1104 1872
            WIRE 1104 1872 1360 1872
        END BRANCH
        BEGIN BRANCH match(6)
            WIRE 1744 1872 1792 1872
            WIRE 1792 1872 1824 1872
            BEGIN DISPLAY 1792 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_19(63:0)
            WIRE 992 1136 1056 1136
            WIRE 1056 1136 1056 2128
            WIRE 1056 2128 1360 2128
        END BRANCH
        BEGIN BRANCH match(7)
            WIRE 1744 2128 1792 2128
            WIRE 1792 2128 1824 2128
            BEGIN DISPLAY 1792 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(7:0)
            WIRE 896 1808 1280 1808
            WIRE 1280 1808 1280 2000
            WIRE 1280 2000 1360 2000
            WIRE 1280 2000 1280 2256
            WIRE 1280 2256 1360 2256
            WIRE 1280 400 1360 400
            WIRE 1280 400 1280 656
            WIRE 1280 656 1360 656
            WIRE 1280 656 1280 928
            WIRE 1280 928 1360 928
            WIRE 1280 928 1280 1184
            WIRE 1280 1184 1360 1184
            WIRE 1280 1184 1280 1472
            WIRE 1280 1472 1360 1472
            WIRE 1280 1472 1280 1728
            WIRE 1280 1728 1360 1728
            WIRE 1280 1728 1280 1808
        END BRANCH
        BEGIN BRANCH match(7:0)
            WIRE 2176 608 2352 608
        END BRANCH
        BEGIN INSTANCE XLXI_2 1360 432 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1360 688 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1360 960 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1360 1216 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1360 1504 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1360 1760 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1360 2032 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 1360 2288 R0
        END INSTANCE
        IOMARKER 2352 608 match(7:0) R0 28
        IOMARKER 896 1808 amask(7:0) R180 28
        IOMARKER 896 2032 pattern(63:0) R180 28
    END SHEET
END SCHEMATIC
