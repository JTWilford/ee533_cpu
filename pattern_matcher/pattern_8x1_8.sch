VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL pattern_string(7:0)
        SIGNAL match(0)
        SIGNAL match(1)
        SIGNAL match(2)
        SIGNAL match(3)
        SIGNAL match(4)
        SIGNAL match(5)
        SIGNAL match(6)
        SIGNAL match(7)
        SIGNAL XLXN_10(7:0)
        SIGNAL XLXN_11(7:0)
        SIGNAL XLXN_12(7:0)
        SIGNAL XLXN_13(7:0)
        SIGNAL XLXN_14(7:0)
        SIGNAL XLXN_15(7:0)
        SIGNAL XLXN_16(7:0)
        SIGNAL XLXN_17(7:0)
        SIGNAL match(7:0)
        SIGNAL XLXN_19(7:0)
        SIGNAL XLXN_20(7:0)
        SIGNAL XLXN_21(7:0)
        SIGNAL XLXN_22(7:0)
        SIGNAL XLXN_23(7:0)
        SIGNAL XLXN_24(7:0)
        SIGNAL XLXN_25(7:0)
        SIGNAL XLXN_26(7:0)
        SIGNAL O(7:0)
        PORT Input pattern_string(7:0)
        PORT Input match(7:0)
        PORT Output O(7:0)
        BEGIN BLOCKDEF mux2to1_8
            TIMESTAMP 2022 4 16 17 43 48
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF patternout_8
            TIMESTAMP 2022 4 16 20 36 33
            RECTANGLE N 64 -512 320 0 
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
            RECTANGLE N 320 -492 384 -468 
            LINE N 320 -480 384 -480 
        END BLOCKDEF
        BEGIN BLOCKDEF rotate_shift
            TIMESTAMP 2022 4 16 19 56 27
            RECTANGLE N 64 -512 320 0 
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
        BEGIN BLOCK XLXI_1 mux2to1_8
            PIN sel match(0)
            PIN data1(7:0) pattern_string(7:0)
            PIN data_out(7:0) XLXN_10(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 mux2to1_8
            PIN sel match(1)
            PIN data1(7:0) pattern_string(7:0)
            PIN data_out(7:0) XLXN_11(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 mux2to1_8
            PIN sel match(2)
            PIN data1(7:0) pattern_string(7:0)
            PIN data_out(7:0) XLXN_12(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 mux2to1_8
            PIN sel match(3)
            PIN data1(7:0) pattern_string(7:0)
            PIN data_out(7:0) XLXN_13(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 mux2to1_8
            PIN sel match(4)
            PIN data1(7:0) pattern_string(7:0)
            PIN data_out(7:0) XLXN_14(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 mux2to1_8
            PIN sel match(5)
            PIN data1(7:0) pattern_string(7:0)
            PIN data_out(7:0) XLXN_15(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 mux2to1_8
            PIN sel match(6)
            PIN data1(7:0) pattern_string(7:0)
            PIN data_out(7:0) XLXN_16(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 mux2to1_8
            PIN sel match(7)
            PIN data1(7:0) pattern_string(7:0)
            PIN data_out(7:0) XLXN_17(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_17 patternout_8
            PIN I0(7:0) XLXN_19(7:0)
            PIN I1(7:0) XLXN_20(7:0)
            PIN I2(7:0) XLXN_21(7:0)
            PIN I3(7:0) XLXN_22(7:0)
            PIN I4(7:0) XLXN_23(7:0)
            PIN I5(7:0) XLXN_24(7:0)
            PIN I6(7:0) XLXN_25(7:0)
            PIN I7(7:0) XLXN_26(7:0)
            PIN O(7:0) O(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_18 rotate_shift
            PIN I0(7:0) XLXN_10(7:0)
            PIN I1(7:0) XLXN_11(7:0)
            PIN I2(7:0) XLXN_12(7:0)
            PIN I3(7:0) XLXN_13(7:0)
            PIN I4(7:0) XLXN_14(7:0)
            PIN I5(7:0) XLXN_15(7:0)
            PIN I6(7:0) XLXN_16(7:0)
            PIN I7(7:0) XLXN_17(7:0)
            PIN Out0(7:0) XLXN_19(7:0)
            PIN Out1(7:0) XLXN_20(7:0)
            PIN Out2(7:0) XLXN_21(7:0)
            PIN Out3(7:0) XLXN_22(7:0)
            PIN Out4(7:0) XLXN_23(7:0)
            PIN Out5(7:0) XLXN_24(7:0)
            PIN Out6(7:0) XLXN_25(7:0)
            PIN Out7(7:0) XLXN_26(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 848 720 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 848 912 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 848 1120 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 848 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 848 1520 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 848 1712 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 848 1920 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 848 2112 R0
        END INSTANCE
        BEGIN BRANCH pattern_string(7:0)
            WIRE 544 1344 768 1344
            WIRE 768 1344 768 1488
            WIRE 768 1488 768 1680
            WIRE 768 1680 768 1888
            WIRE 768 1888 768 2080
            WIRE 768 2080 848 2080
            WIRE 768 1888 848 1888
            WIRE 768 1680 848 1680
            WIRE 768 1488 848 1488
            WIRE 768 688 768 880
            WIRE 768 880 848 880
            WIRE 768 880 768 1088
            WIRE 768 1088 768 1280
            WIRE 768 1280 848 1280
            WIRE 768 1280 768 1344
            WIRE 768 1088 848 1088
            WIRE 768 688 848 688
        END BRANCH
        BEGIN BRANCH match(0)
            WIRE 656 624 688 624
            WIRE 688 624 848 624
            BEGIN DISPLAY 688 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH match(1)
            WIRE 656 816 672 816
            WIRE 672 816 848 816
            BEGIN DISPLAY 672 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH match(2)
            WIRE 656 1024 688 1024
            WIRE 688 1024 848 1024
            BEGIN DISPLAY 688 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH match(3)
            WIRE 656 1216 688 1216
            WIRE 688 1216 848 1216
            BEGIN DISPLAY 688 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH match(4)
            WIRE 656 1424 672 1424
            WIRE 672 1424 848 1424
            BEGIN DISPLAY 672 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH match(5)
            WIRE 656 1616 672 1616
            WIRE 672 1616 848 1616
            BEGIN DISPLAY 672 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH match(6)
            WIRE 656 1824 688 1824
            WIRE 688 1824 848 1824
            BEGIN DISPLAY 688 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH match(7)
            WIRE 656 2016 688 2016
            WIRE 688 2016 848 2016
            BEGIN DISPLAY 688 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_10(7:0)
            WIRE 1232 624 1440 624
            WIRE 1440 624 1440 1040
            WIRE 1440 1040 1552 1040
        END BRANCH
        BEGIN BRANCH XLXN_11(7:0)
            WIRE 1232 816 1424 816
            WIRE 1424 816 1424 1104
            WIRE 1424 1104 1552 1104
        END BRANCH
        BEGIN BRANCH XLXN_12(7:0)
            WIRE 1232 1024 1328 1024
            WIRE 1328 1024 1328 1168
            WIRE 1328 1168 1552 1168
        END BRANCH
        BEGIN BRANCH XLXN_13(7:0)
            WIRE 1232 1216 1328 1216
            WIRE 1328 1216 1328 1232
            WIRE 1328 1232 1552 1232
        END BRANCH
        BEGIN BRANCH XLXN_15(7:0)
            WIRE 1232 1616 1392 1616
            WIRE 1392 1360 1392 1616
            WIRE 1392 1360 1552 1360
        END BRANCH
        BEGIN BRANCH XLXN_16(7:0)
            WIRE 1232 1824 1456 1824
            WIRE 1456 1424 1456 1824
            WIRE 1456 1424 1552 1424
        END BRANCH
        BEGIN BRANCH XLXN_17(7:0)
            WIRE 1232 2016 1488 2016
            WIRE 1488 1488 1552 1488
            WIRE 1488 1488 1488 2016
        END BRANCH
        BEGIN BRANCH match(7:0)
            WIRE 560 320 736 320
        END BRANCH
        IOMARKER 560 320 match(7:0) R180 28
        BEGIN INSTANCE XLXI_18 1552 1520 R0
        END INSTANCE
        BEGIN BRANCH XLXN_19(7:0)
            WIRE 1936 1040 1952 1040
            WIRE 1952 1040 2112 1040
        END BRANCH
        BEGIN BRANCH XLXN_20(7:0)
            WIRE 1936 1104 1952 1104
            WIRE 1952 1104 2112 1104
        END BRANCH
        BEGIN BRANCH XLXN_21(7:0)
            WIRE 1936 1168 1952 1168
            WIRE 1952 1168 2112 1168
        END BRANCH
        BEGIN BRANCH XLXN_22(7:0)
            WIRE 1936 1232 1952 1232
            WIRE 1952 1232 2112 1232
        END BRANCH
        BEGIN BRANCH XLXN_23(7:0)
            WIRE 1936 1296 1952 1296
            WIRE 1952 1296 2112 1296
        END BRANCH
        BEGIN BRANCH XLXN_24(7:0)
            WIRE 1936 1360 1952 1360
            WIRE 1952 1360 2112 1360
        END BRANCH
        BEGIN BRANCH XLXN_25(7:0)
            WIRE 1936 1424 1952 1424
            WIRE 1952 1424 2112 1424
        END BRANCH
        BEGIN BRANCH O(7:0)
            WIRE 2496 1040 2624 1040
            WIRE 2624 1040 2640 1040
        END BRANCH
        IOMARKER 2640 1040 O(7:0) R0 28
        BEGIN BRANCH XLXN_14(7:0)
            WIRE 1232 1424 1328 1424
            WIRE 1328 1296 1552 1296
            WIRE 1328 1296 1328 1424
        END BRANCH
        IOMARKER 544 1344 pattern_string(7:0) R180 28
        BEGIN BRANCH XLXN_26(7:0)
            WIRE 1936 1488 1952 1488
            WIRE 1952 1488 2112 1488
        END BRANCH
        BEGIN INSTANCE XLXI_17 2112 1520 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
