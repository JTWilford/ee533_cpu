VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(2:0)
        SIGNAL XLXN_2(2:0)
        SIGNAL pattern_in(63:0)
        SIGNAL wildcard(7:0)
        SIGNAL XLXN_6(7:0)
        SIGNAL XLXN_19(63:0)
        SIGNAL character_in(127:0)
        SIGNAL outcome(15:0)
        SIGNAL XLXN_29(7:0)
        SIGNAL XLXN_30(7:0)
        SIGNAL XLXN_31(7:0)
        SIGNAL XLXN_32(7:0)
        SIGNAL XLXN_33(7:0)
        SIGNAL XLXN_34(7:0)
        SIGNAL XLXN_35(7:0)
        SIGNAL XLXN_36(7:0)
        SIGNAL XLXN_37(7:0)
        PORT Input pattern_in(63:0)
        PORT Input wildcard(7:0)
        PORT Input character_in(127:0)
        PORT Output outcome(15:0)
        BEGIN BLOCKDEF pattern_filter
            TIMESTAMP 2022 4 16 1 24 57
            RECTANGLE N 64 -128 448 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 448 -108 512 -84 
            LINE N 448 -96 512 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF find_last_one
            TIMESTAMP 2022 4 16 2 46 27
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF find_first_one
            TIMESTAMP 2022 4 16 1 40 3
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF pattern_string
            TIMESTAMP 2022 4 17 0 16 8
            RECTANGLE N 320 84 384 108 
            LINE N 320 96 384 96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -128 320 128 
        END BLOCKDEF
        BEGIN BLOCKDEF character_compare_all
            TIMESTAMP 2022 4 17 0 23 0
            RECTANGLE N 64 -576 416 0 
            LINE N 416 -32 480 -32 
            RECTANGLE N 416 -44 480 -20 
            LINE N 416 -96 480 -96 
            RECTANGLE N 416 -108 480 -84 
            LINE N 416 -160 480 -160 
            RECTANGLE N 416 -172 480 -148 
            LINE N 416 -224 480 -224 
            RECTANGLE N 416 -236 480 -212 
            LINE N 416 -288 480 -288 
            RECTANGLE N 416 -300 480 -276 
            LINE N 416 -352 480 -352 
            RECTANGLE N 416 -364 480 -340 
            LINE N 416 -416 480 -416 
            RECTANGLE N 416 -428 480 -404 
            LINE N 416 -480 480 -480 
            RECTANGLE N 416 -492 480 -468 
            LINE N 416 -544 480 -544 
            RECTANGLE N 416 -556 480 -532 
            LINE N 64 -80 0 -80 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -512 0 -512 
            RECTANGLE N 0 -524 64 -500 
        END BLOCKDEF
        BEGIN BLOCKDEF pattern_9x1_output
            TIMESTAMP 2022 4 16 22 56 30
            RECTANGLE N 64 -640 448 0 
            RECTANGLE N 0 -620 64 -596 
            LINE N 64 -608 0 -608 
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
            RECTANGLE N 448 -620 512 -596 
            LINE N 448 -608 512 -608 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 pattern_filter
            PIN pattern_in(63:0) pattern_in(63:0)
            PIN wildcard(7:0) wildcard(7:0)
            PIN pattern_out(63:0) XLXN_19(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 find_last_one
            PIN data(7:0) wildcard(7:0)
            PIN index(2:0) XLXN_2(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 find_first_one
            PIN x(7:0) wildcard(7:0)
            PIN y(2:0) XLXN_1(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 pattern_string
            PIN first_in(2:0) XLXN_1(2:0)
            PIN last_in(2:0) XLXN_2(2:0)
            PIN out_string(7:0) XLXN_6(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 character_compare_all
            PIN match8(7:0) XLXN_29(7:0)
            PIN match7(7:0) XLXN_30(7:0)
            PIN match6(7:0) XLXN_31(7:0)
            PIN match5(7:0) XLXN_32(7:0)
            PIN match4(7:0) XLXN_33(7:0)
            PIN match3(7:0) XLXN_34(7:0)
            PIN match2(7:0) XLXN_35(7:0)
            PIN match1(7:0) XLXN_36(7:0)
            PIN match0(7:0) XLXN_37(7:0)
            PIN amask(7:0) wildcard(7:0)
            PIN pattern(63:0) XLXN_19(63:0)
            PIN character_in(127:0) character_in(127:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 pattern_9x1_output
            PIN match0(7:0) XLXN_37(7:0)
            PIN match1(7:0) XLXN_36(7:0)
            PIN match2(7:0) XLXN_35(7:0)
            PIN match3(7:0) XLXN_34(7:0)
            PIN match4(7:0) XLXN_33(7:0)
            PIN match5(7:0) XLXN_32(7:0)
            PIN match6(7:0) XLXN_31(7:0)
            PIN match7(7:0) XLXN_30(7:0)
            PIN match8(7:0) XLXN_29(7:0)
            PIN pattern_string(7:0) XLXN_6(7:0)
            PIN Outcome(15:0) outcome(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE XLXI_2 2176 2016 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 2192 1728 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 2704 1872 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1(2:0)
            WIRE 2576 1696 2640 1696
            WIRE 2640 1696 2640 1776
            WIRE 2640 1776 2704 1776
        END BRANCH
        BEGIN BRANCH XLXN_2(2:0)
            WIRE 2560 1984 2624 1984
            WIRE 2624 1840 2624 1984
            WIRE 2624 1840 2704 1840
        END BRANCH
        BEGIN INSTANCE XLXI_1 1424 1792 R0
        END INSTANCE
        BEGIN BRANCH pattern_in(63:0)
            WIRE 1280 1696 1424 1696
        END BRANCH
        BEGIN BRANCH wildcard(7:0)
            WIRE 1296 1760 1360 1760
            WIRE 1360 1760 1424 1760
            WIRE 1360 1760 1360 1856
            WIRE 1360 1856 2032 1856
            WIRE 2032 1856 2032 1984
            WIRE 2032 1984 2176 1984
            WIRE 2032 1232 2416 1232
            WIRE 2032 1232 2032 1696
            WIRE 2032 1696 2192 1696
            WIRE 2032 1696 2032 1856
        END BRANCH
        IOMARKER 1280 1696 pattern_in(63:0) R180 28
        IOMARKER 1296 1760 wildcard(7:0) R180 28
        BEGIN BRANCH XLXN_6(7:0)
            WIRE 3088 1968 3104 1968
            WIRE 3104 1344 3200 1344
            WIRE 3104 1344 3104 1968
        END BRANCH
        BEGIN INSTANCE XLXI_8 3200 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2416 1312 R0
        END INSTANCE
        BEGIN BRANCH XLXN_19(63:0)
            WIRE 1936 1696 1984 1696
            WIRE 1984 1024 1984 1696
            WIRE 1984 1024 2416 1024
        END BRANCH
        BEGIN BRANCH character_in(127:0)
            WIRE 1888 800 2416 800
        END BRANCH
        IOMARKER 1888 800 character_in(127:0) R180 28
        BEGIN BRANCH outcome(15:0)
            WIRE 3712 768 3872 768
        END BRANCH
        IOMARKER 3872 768 outcome(15:0) R0 28
        BEGIN BRANCH XLXN_29(7:0)
            WIRE 2896 1280 3200 1280
        END BRANCH
        BEGIN BRANCH XLXN_30(7:0)
            WIRE 2896 1216 3200 1216
        END BRANCH
        BEGIN BRANCH XLXN_31(7:0)
            WIRE 2896 1152 3200 1152
        END BRANCH
        BEGIN BRANCH XLXN_32(7:0)
            WIRE 2896 1088 3200 1088
        END BRANCH
        BEGIN BRANCH XLXN_33(7:0)
            WIRE 2896 1024 3184 1024
            WIRE 3184 1024 3200 1024
        END BRANCH
        BEGIN BRANCH XLXN_34(7:0)
            WIRE 2896 960 3200 960
        END BRANCH
        BEGIN BRANCH XLXN_35(7:0)
            WIRE 2896 896 3200 896
        END BRANCH
        BEGIN BRANCH XLXN_36(7:0)
            WIRE 2896 832 3200 832
        END BRANCH
        BEGIN BRANCH XLXN_37(7:0)
            WIRE 2896 768 3200 768
        END BRANCH
    END SHEET
END SCHEMATIC
