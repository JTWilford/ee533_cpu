VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL character_in(127:0)
        SIGNAL XLXN_2(63:0)
        SIGNAL XLXN_3(63:0)
        SIGNAL XLXN_4(7:0)
        SIGNAL XLXN_5(7:0)
        SIGNAL pattern(63:0)
        SIGNAL amask(7:0)
        SIGNAL match8(7:0)
        SIGNAL match7(7:0)
        SIGNAL match6(7:0)
        SIGNAL match5(7:0)
        SIGNAL match4(7:0)
        SIGNAL match3(7:0)
        SIGNAL match2(7:0)
        SIGNAL match1(7:0)
        SIGNAL match0(7:0)
        SIGNAL XLXN_18(63:0)
        SIGNAL XLXN_19(63:0)
        SIGNAL XLXN_20(63:0)
        SIGNAL XLXN_21(63:0)
        SIGNAL XLXN_22(63:0)
        SIGNAL XLXN_23(63:0)
        SIGNAL XLXN_24(63:0)
        SIGNAL XLXN_25(63:0)
        SIGNAL XLXN_26(63:0)
        PORT Input character_in(127:0)
        PORT Input pattern(63:0)
        PORT Input amask(7:0)
        PORT Output match8(7:0)
        PORT Output match7(7:0)
        PORT Output match6(7:0)
        PORT Output match5(7:0)
        PORT Output match4(7:0)
        PORT Output match3(7:0)
        PORT Output match2(7:0)
        PORT Output match1(7:0)
        PORT Output match0(7:0)
        BEGIN BLOCKDEF character_comparetor_64
            TIMESTAMP 2022 4 16 23 59 58
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 384 -44 448 -20 
            LINE N 384 -32 448 -32 
            RECTANGLE N 64 -132 384 64 
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
        END BLOCKDEF
        BEGIN BLOCKDEF character_distributor
            TIMESTAMP 2022 4 16 23 15 6
            RECTANGLE N 64 -576 464 0 
            RECTANGLE N 0 -556 64 -532 
            LINE N 64 -544 0 -544 
            RECTANGLE N 464 -556 528 -532 
            LINE N 464 -544 528 -544 
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
        BEGIN BLOCK XLXI_1 character_comparetor_64
            PIN pattern(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match(7:0) match0(7:0)
            PIN character_in(63:0) XLXN_18(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 character_comparetor_64
            PIN pattern(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match(7:0) match1(7:0)
            PIN character_in(63:0) XLXN_19(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 character_comparetor_64
            PIN pattern(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match(7:0) match2(7:0)
            PIN character_in(63:0) XLXN_20(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 character_comparetor_64
            PIN pattern(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match(7:0) match3(7:0)
            PIN character_in(63:0) XLXN_21(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 character_comparetor_64
            PIN pattern(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match(7:0) match4(7:0)
            PIN character_in(63:0) XLXN_22(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 character_comparetor_64
            PIN pattern(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match(7:0) match5(7:0)
            PIN character_in(63:0) XLXN_23(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 character_comparetor_64
            PIN pattern(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match(7:0) match6(7:0)
            PIN character_in(63:0) XLXN_24(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 character_comparetor_64
            PIN pattern(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match(7:0) match7(7:0)
            PIN character_in(63:0) XLXN_25(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_13 character_distributor
            PIN character_in(127:0) character_in(127:0)
            PIN char_out0(63:0) XLXN_18(63:0)
            PIN char_out1(63:0) XLXN_19(63:0)
            PIN char_out2(63:0) XLXN_20(63:0)
            PIN char_out3(63:0) XLXN_21(63:0)
            PIN char_out4(63:0) XLXN_22(63:0)
            PIN char_out5(63:0) XLXN_23(63:0)
            PIN char_out6(63:0) XLXN_24(63:0)
            PIN char_out7(63:0) XLXN_25(63:0)
            PIN char_out8(63:0) XLXN_26(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 character_comparetor_64
            PIN pattern(63:0) pattern(63:0)
            PIN amask(7:0) amask(7:0)
            PIN match(7:0) match8(7:0)
            PIN character_in(63:0) XLXN_26(63:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1280 448 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1280 720 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1264 976 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1264 1232 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 1264 1504 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 1264 1760 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 1280 2016 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 1280 2288 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_13 384 1488 R0
        END INSTANCE
        BEGIN BRANCH character_in(127:0)
            WIRE 288 944 384 944
        END BRANCH
        IOMARKER 288 944 character_in(127:0) R180 28
        BEGIN INSTANCE XLXI_14 1280 2576 R0
        END INSTANCE
        BEGIN BRANCH pattern(63:0)
            WIRE 704 400 1104 400
            WIRE 1104 400 1104 624
            WIRE 1104 624 1104 880
            WIRE 1104 880 1104 1136
            WIRE 1104 1136 1104 1408
            WIRE 1104 1408 1104 1664
            WIRE 1104 1664 1104 1920
            WIRE 1104 1920 1104 2192
            WIRE 1104 2192 1280 2192
            WIRE 1104 2192 1104 2480
            WIRE 1104 2480 1280 2480
            WIRE 1104 1920 1280 1920
            WIRE 1104 1664 1264 1664
            WIRE 1104 1408 1264 1408
            WIRE 1104 1136 1264 1136
            WIRE 1104 880 1264 880
            WIRE 1104 624 1280 624
            WIRE 1104 352 1280 352
            WIRE 1104 352 1104 400
        END BRANCH
        BEGIN BRANCH amask(7:0)
            WIRE 720 560 1152 560
            WIRE 1152 560 1152 688
            WIRE 1152 688 1280 688
            WIRE 1152 688 1152 944
            WIRE 1152 944 1264 944
            WIRE 1152 944 1152 1200
            WIRE 1152 1200 1264 1200
            WIRE 1152 1200 1152 1472
            WIRE 1152 1472 1264 1472
            WIRE 1152 1472 1152 1728
            WIRE 1152 1728 1264 1728
            WIRE 1152 1728 1152 1984
            WIRE 1152 1984 1152 2256
            WIRE 1152 2256 1280 2256
            WIRE 1152 2256 1152 2544
            WIRE 1152 2544 1280 2544
            WIRE 1152 1984 1280 1984
            WIRE 1152 416 1280 416
            WIRE 1152 416 1152 560
        END BRANCH
        BEGIN BRANCH match8(7:0)
            WIRE 1728 2544 1856 2544
        END BRANCH
        BEGIN BRANCH match7(7:0)
            WIRE 1728 2256 1856 2256
        END BRANCH
        BEGIN BRANCH match6(7:0)
            WIRE 1728 1984 1856 1984
        END BRANCH
        BEGIN BRANCH match5(7:0)
            WIRE 1712 1728 1840 1728
        END BRANCH
        BEGIN BRANCH match4(7:0)
            WIRE 1712 1472 1840 1472
        END BRANCH
        BEGIN BRANCH match3(7:0)
            WIRE 1712 1200 1840 1200
        END BRANCH
        BEGIN BRANCH match2(7:0)
            WIRE 1712 944 1840 944
        END BRANCH
        BEGIN BRANCH match1(7:0)
            WIRE 1728 688 1856 688
        END BRANCH
        BEGIN BRANCH match0(7:0)
            WIRE 1728 416 1856 416
        END BRANCH
        BEGIN BRANCH XLXN_18(63:0)
            WIRE 912 944 944 944
            WIRE 944 480 944 944
            WIRE 944 480 1280 480
        END BRANCH
        BEGIN BRANCH XLXN_19(63:0)
            WIRE 912 1008 976 1008
            WIRE 976 752 976 1008
            WIRE 976 752 1280 752
        END BRANCH
        BEGIN BRANCH XLXN_20(63:0)
            WIRE 912 1072 1088 1072
            WIRE 1088 1008 1088 1072
            WIRE 1088 1008 1264 1008
        END BRANCH
        BEGIN BRANCH XLXN_21(63:0)
            WIRE 912 1136 1088 1136
            WIRE 1088 1136 1088 1264
            WIRE 1088 1264 1264 1264
        END BRANCH
        BEGIN BRANCH XLXN_22(63:0)
            WIRE 912 1200 1072 1200
            WIRE 1072 1200 1072 1536
            WIRE 1072 1536 1264 1536
        END BRANCH
        BEGIN BRANCH XLXN_23(63:0)
            WIRE 912 1264 1056 1264
            WIRE 1056 1264 1056 1792
            WIRE 1056 1792 1264 1792
        END BRANCH
        BEGIN BRANCH XLXN_24(63:0)
            WIRE 912 1328 1040 1328
            WIRE 1040 1328 1040 2048
            WIRE 1040 2048 1280 2048
        END BRANCH
        BEGIN BRANCH XLXN_25(63:0)
            WIRE 912 1392 1024 1392
            WIRE 1024 1392 1024 2320
            WIRE 1024 2320 1280 2320
        END BRANCH
        BEGIN BRANCH XLXN_26(63:0)
            WIRE 912 1456 1008 1456
            WIRE 1008 1456 1008 2608
            WIRE 1008 2608 1280 2608
        END BRANCH
        IOMARKER 704 400 pattern(63:0) R180 28
        IOMARKER 720 560 amask(7:0) R180 28
        IOMARKER 1856 416 match0(7:0) R0 28
        IOMARKER 1856 688 match1(7:0) R0 28
        IOMARKER 1840 944 match2(7:0) R0 28
        IOMARKER 1840 1200 match3(7:0) R0 28
        IOMARKER 1840 1472 match4(7:0) R0 28
        IOMARKER 1840 1728 match5(7:0) R0 28
        IOMARKER 1856 1984 match6(7:0) R0 28
        IOMARKER 1856 2256 match7(7:0) R0 28
        IOMARKER 1856 2544 match8(7:0) R0 28
    END SHEET
END SCHEMATIC
