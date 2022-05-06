VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL match0(7:0)
        SIGNAL match1(7:0)
        SIGNAL XLXN_3(7:0)
        SIGNAL XLXN_4(7:0)
        SIGNAL match2(7:0)
        SIGNAL XLXN_7(7:0)
        SIGNAL match3(7:0)
        SIGNAL XLXN_9(7:0)
        SIGNAL match4(7:0)
        SIGNAL XLXN_11(7:0)
        SIGNAL match5(7:0)
        SIGNAL XLXN_13(7:0)
        SIGNAL match6(7:0)
        SIGNAL XLXN_15(7:0)
        SIGNAL match7(7:0)
        SIGNAL XLXN_17(7:0)
        SIGNAL match8(7:0)
        SIGNAL XLXN_19(7:0)
        SIGNAL pattern_string(7:0)
        SIGNAL XLXN_21(7:0)
        SIGNAL XLXN_24(15:0)
        SIGNAL XLXN_25(15:0)
        SIGNAL XLXN_26(15:0)
        SIGNAL XLXN_27(15:0)
        SIGNAL XLXN_28(15:0)
        SIGNAL XLXN_29(15:0)
        SIGNAL XLXN_30(15:0)
        SIGNAL XLXN_31(15:0)
        SIGNAL XLXN_32(15:0)
        SIGNAL XLXN_33(7:0)
        SIGNAL XLXN_34(7:0)
        SIGNAL XLXN_35(7:0)
        SIGNAL Outcome(15:0)
        PORT Input match0(7:0)
        PORT Input match1(7:0)
        PORT Input match2(7:0)
        PORT Input match3(7:0)
        PORT Input match4(7:0)
        PORT Input match5(7:0)
        PORT Input match6(7:0)
        PORT Input match7(7:0)
        PORT Input match8(7:0)
        PORT Input pattern_string(7:0)
        PORT Output Outcome(15:0)
        BEGIN BLOCKDEF pattern_8x1_8
            TIMESTAMP 2022 4 16 21 26 30
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -64 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF patternout_16
            TIMESTAMP 2022 4 16 20 36 16
            RECTANGLE N 64 -576 320 0 
            RECTANGLE N 0 -556 64 -532 
            LINE N 64 -544 0 -544 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -556 384 -532 
            LINE N 320 -544 384 -544 
        END BLOCKDEF
        BEGIN BLOCKDEF output_extend
            TIMESTAMP 2022 4 16 22 46 52
            RECTANGLE N 64 -576 320 0 
            RECTANGLE N 0 -556 64 -532 
            LINE N 64 -544 0 -544 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -556 384 -532 
            LINE N 320 -544 384 -544 
            RECTANGLE N 320 -492 384 -468 
            LINE N 320 -480 384 -480 
            RECTANGLE N 320 -428 384 -404 
            LINE N 320 -416 384 -416 
            RECTANGLE N 320 -364 384 -340 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 pattern_8x1_8
            PIN match(7:0) match1(7:0)
            PIN O(7:0) XLXN_4(7:0)
            PIN pattern_string(7:0) pattern_string(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 pattern_8x1_8
            PIN match(7:0) match2(7:0)
            PIN O(7:0) XLXN_7(7:0)
            PIN pattern_string(7:0) pattern_string(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 pattern_8x1_8
            PIN match(7:0) match3(7:0)
            PIN O(7:0) XLXN_9(7:0)
            PIN pattern_string(7:0) pattern_string(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 pattern_8x1_8
            PIN match(7:0) match4(7:0)
            PIN O(7:0) XLXN_11(7:0)
            PIN pattern_string(7:0) pattern_string(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 pattern_8x1_8
            PIN match(7:0) match5(7:0)
            PIN O(7:0) XLXN_13(7:0)
            PIN pattern_string(7:0) pattern_string(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 pattern_8x1_8
            PIN match(7:0) match6(7:0)
            PIN O(7:0) XLXN_15(7:0)
            PIN pattern_string(7:0) pattern_string(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 pattern_8x1_8
            PIN match(7:0) match7(7:0)
            PIN O(7:0) XLXN_17(7:0)
            PIN pattern_string(7:0) pattern_string(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 pattern_8x1_8
            PIN match(7:0) match8(7:0)
            PIN O(7:0) XLXN_19(7:0)
            PIN pattern_string(7:0) pattern_string(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 pattern_8x1_8
            PIN match(7:0) match0(7:0)
            PIN O(7:0) XLXN_3(7:0)
            PIN pattern_string(7:0) pattern_string(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 patternout_16
            PIN I0(15:0) XLXN_24(15:0)
            PIN I1(15:0) XLXN_25(15:0)
            PIN I2(15:0) XLXN_26(15:0)
            PIN I3(15:0) XLXN_27(15:0)
            PIN I4(15:0) XLXN_28(15:0)
            PIN I5(15:0) XLXN_29(15:0)
            PIN I6(15:0) XLXN_30(15:0)
            PIN I7(15:0) XLXN_31(15:0)
            PIN I8(15:0) XLXN_32(15:0)
            PIN O(15:0) Outcome(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 output_extend
            PIN I0(7:0) XLXN_3(7:0)
            PIN I1(7:0) XLXN_4(7:0)
            PIN I2(7:0) XLXN_7(7:0)
            PIN I3(7:0) XLXN_9(7:0)
            PIN I4(7:0) XLXN_11(7:0)
            PIN I5(7:0) XLXN_13(7:0)
            PIN I6(7:0) XLXN_15(7:0)
            PIN I7(7:0) XLXN_17(7:0)
            PIN I8(7:0) XLXN_19(7:0)
            PIN Out0(15:0) XLXN_24(15:0)
            PIN Out1(15:0) XLXN_25(15:0)
            PIN Out2(15:0) XLXN_26(15:0)
            PIN Out3(15:0) XLXN_27(15:0)
            PIN Out4(15:0) XLXN_28(15:0)
            PIN Out5(15:0) XLXN_29(15:0)
            PIN Out6(15:0) XLXN_30(15:0)
            PIN Out7(15:0) XLXN_31(15:0)
            PIN Out8(15:0) XLXN_32(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 928 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 928 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 928 1520 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 928 1696 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 928 1920 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 928 2096 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 928 2304 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 928 2480 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 928 928 R0
        END INSTANCE
        BEGIN BRANCH match0(7:0)
            WIRE 800 896 928 896
        END BRANCH
        BEGIN BRANCH match1(7:0)
            WIRE 816 1104 928 1104
        END BRANCH
        BEGIN BRANCH XLXN_3(7:0)
            WIRE 1312 896 1440 896
            WIRE 1440 896 1584 896
            WIRE 1584 896 1584 1440
            WIRE 1584 1440 1728 1440
        END BRANCH
        BEGIN BRANCH XLXN_4(7:0)
            WIRE 1312 1104 1440 1104
            WIRE 1440 1104 1568 1104
            WIRE 1568 1104 1568 1504
            WIRE 1568 1504 1728 1504
        END BRANCH
        BEGIN BRANCH match2(7:0)
            WIRE 800 1280 928 1280
        END BRANCH
        BEGIN BRANCH XLXN_7(7:0)
            WIRE 1312 1280 1440 1280
            WIRE 1440 1280 1552 1280
            WIRE 1552 1280 1552 1568
            WIRE 1552 1568 1728 1568
        END BRANCH
        BEGIN BRANCH match3(7:0)
            WIRE 800 1488 928 1488
        END BRANCH
        BEGIN BRANCH XLXN_9(7:0)
            WIRE 1312 1488 1440 1488
            WIRE 1440 1488 1440 1632
            WIRE 1440 1632 1728 1632
        END BRANCH
        BEGIN BRANCH match4(7:0)
            WIRE 800 1664 928 1664
        END BRANCH
        BEGIN BRANCH XLXN_11(7:0)
            WIRE 1312 1664 1440 1664
            WIRE 1440 1664 1440 1696
            WIRE 1440 1696 1728 1696
        END BRANCH
        BEGIN BRANCH match5(7:0)
            WIRE 800 1888 928 1888
        END BRANCH
        BEGIN BRANCH XLXN_13(7:0)
            WIRE 1312 1888 1440 1888
            WIRE 1440 1760 1728 1760
            WIRE 1440 1760 1440 1888
        END BRANCH
        BEGIN BRANCH match6(7:0)
            WIRE 800 2064 928 2064
        END BRANCH
        BEGIN BRANCH XLXN_15(7:0)
            WIRE 1312 2064 1440 2064
            WIRE 1440 2064 1584 2064
            WIRE 1584 1824 1584 2064
            WIRE 1584 1824 1728 1824
        END BRANCH
        BEGIN BRANCH match7(7:0)
            WIRE 800 2272 928 2272
        END BRANCH
        BEGIN BRANCH XLXN_17(7:0)
            WIRE 1312 2272 1440 2272
            WIRE 1440 2272 1600 2272
            WIRE 1600 1888 1600 2272
            WIRE 1600 1888 1728 1888
        END BRANCH
        BEGIN BRANCH match8(7:0)
            WIRE 800 2448 928 2448
        END BRANCH
        BEGIN BRANCH XLXN_19(7:0)
            WIRE 1312 2448 1440 2448
            WIRE 1440 2448 1616 2448
            WIRE 1616 1952 1616 2448
            WIRE 1616 1952 1728 1952
        END BRANCH
        BEGIN BRANCH pattern_string(7:0)
            WIRE 640 1792 864 1792
            WIRE 864 1792 864 1952
            WIRE 864 1952 864 2128
            WIRE 864 2128 864 2336
            WIRE 864 2336 864 2512
            WIRE 864 2512 928 2512
            WIRE 864 2336 928 2336
            WIRE 864 2128 928 2128
            WIRE 864 1952 928 1952
            WIRE 864 960 928 960
            WIRE 864 960 864 1168
            WIRE 864 1168 864 1344
            WIRE 864 1344 864 1552
            WIRE 864 1552 864 1728
            WIRE 864 1728 928 1728
            WIRE 864 1728 864 1792
            WIRE 864 1552 928 1552
            WIRE 864 1344 928 1344
            WIRE 864 1168 928 1168
        END BRANCH
        IOMARKER 640 1792 pattern_string(7:0) R180 28
        BEGIN INSTANCE XLXI_11 1728 1984 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 2304 1984 R0
        END INSTANCE
        BEGIN BRANCH XLXN_24(15:0)
            WIRE 2112 1440 2304 1440
        END BRANCH
        BEGIN BRANCH XLXN_25(15:0)
            WIRE 2112 1504 2304 1504
        END BRANCH
        BEGIN BRANCH XLXN_26(15:0)
            WIRE 2112 1568 2304 1568
        END BRANCH
        BEGIN BRANCH XLXN_27(15:0)
            WIRE 2112 1632 2304 1632
        END BRANCH
        BEGIN BRANCH XLXN_28(15:0)
            WIRE 2112 1696 2304 1696
        END BRANCH
        BEGIN BRANCH XLXN_29(15:0)
            WIRE 2112 1760 2304 1760
        END BRANCH
        BEGIN BRANCH XLXN_30(15:0)
            WIRE 2112 1824 2304 1824
        END BRANCH
        BEGIN BRANCH XLXN_31(15:0)
            WIRE 2112 1888 2304 1888
        END BRANCH
        BEGIN BRANCH XLXN_32(15:0)
            WIRE 2112 1952 2304 1952
        END BRANCH
        IOMARKER 800 896 match0(7:0) R180 28
        IOMARKER 816 1104 match1(7:0) R180 28
        IOMARKER 800 1280 match2(7:0) R180 28
        IOMARKER 800 1488 match3(7:0) R180 28
        IOMARKER 800 1664 match4(7:0) R180 28
        IOMARKER 800 1888 match5(7:0) R180 28
        IOMARKER 800 2064 match6(7:0) R180 28
        IOMARKER 800 2272 match7(7:0) R180 28
        IOMARKER 800 2448 match8(7:0) R180 28
        BEGIN BRANCH Outcome(15:0)
            WIRE 2688 1440 2848 1440
        END BRANCH
        IOMARKER 2848 1440 Outcome(15:0) R0 28
    END SHEET
END SCHEMATIC
