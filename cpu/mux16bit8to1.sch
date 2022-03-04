VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL en
        SIGNAL S(2:0)
        SIGNAL XLXN_4(2:0)
        SIGNAL A(15:0)
        SIGNAL B(15:0)
        SIGNAL C(15:0)
        SIGNAL D(15:0)
        SIGNAL E(15:0)
        SIGNAL F(15:0)
        SIGNAL G(15:0)
        SIGNAL H(15:0)
        SIGNAL O(15:0)
        SIGNAL O(3:0)
        SIGNAL O(7:4)
        SIGNAL O(11:8)
        SIGNAL O(15:12)
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL C(3:0)
        SIGNAL D(3:0)
        SIGNAL E(3:0)
        SIGNAL F(3:0)
        SIGNAL G(3:0)
        SIGNAL H(3:0)
        SIGNAL H(11:8)
        SIGNAL G(11:8)
        SIGNAL F(11:8)
        SIGNAL E(11:8)
        SIGNAL D(11:8)
        SIGNAL C(11:8)
        SIGNAL B(11:8)
        SIGNAL A(11:8)
        SIGNAL H(15:12)
        SIGNAL G(15:12)
        SIGNAL F(15:12)
        SIGNAL E(15:12)
        SIGNAL D(15:12)
        SIGNAL C(15:12)
        SIGNAL B(15:12)
        SIGNAL A(15:12)
        SIGNAL H(7:4)
        SIGNAL G(7:4)
        SIGNAL F(7:4)
        SIGNAL E(7:4)
        SIGNAL D(7:4)
        SIGNAL C(7:4)
        SIGNAL B(7:4)
        SIGNAL A(7:4)
        PORT Input en
        PORT Input S(2:0)
        PORT Input A(15:0)
        PORT Input B(15:0)
        PORT Input C(15:0)
        PORT Input D(15:0)
        PORT Input E(15:0)
        PORT Input F(15:0)
        PORT Input G(15:0)
        PORT Input H(15:0)
        PORT Output O(15:0)
        BEGIN BLOCKDEF mux4bit8to1
            TIMESTAMP 2022 2 14 7 15 0
            RECTANGLE N 64 -640 320 0 
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
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -620 384 -596 
            LINE N 320 -608 384 -608 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 mux4bit8to1
            PIN A(3:0) A(3:0)
            PIN B(3:0) B(3:0)
            PIN C(3:0) C(3:0)
            PIN D(3:0) D(3:0)
            PIN E(3:0) E(3:0)
            PIN F(3:0) F(3:0)
            PIN G(3:0) G(3:0)
            PIN H(3:0) H(3:0)
            PIN en en
            PIN S(2:0) S(2:0)
            PIN O(3:0) O(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 mux4bit8to1
            PIN A(3:0) A(7:4)
            PIN B(3:0) B(7:4)
            PIN C(3:0) C(7:4)
            PIN D(3:0) D(7:4)
            PIN E(3:0) E(7:4)
            PIN F(3:0) F(7:4)
            PIN G(3:0) G(7:4)
            PIN H(3:0) H(7:4)
            PIN en en
            PIN S(2:0) S(2:0)
            PIN O(3:0) O(7:4)
        END BLOCK
        BEGIN BLOCK XLXI_3 mux4bit8to1
            PIN A(3:0) A(11:8)
            PIN B(3:0) B(11:8)
            PIN C(3:0) C(11:8)
            PIN D(3:0) D(11:8)
            PIN E(3:0) E(11:8)
            PIN F(3:0) F(11:8)
            PIN G(3:0) G(11:8)
            PIN H(3:0) H(11:8)
            PIN en en
            PIN S(2:0) S(2:0)
            PIN O(3:0) O(11:8)
        END BLOCK
        BEGIN BLOCK XLXI_7 mux4bit8to1
            PIN A(3:0) A(15:12)
            PIN B(3:0) B(15:12)
            PIN C(3:0) C(15:12)
            PIN D(3:0) D(15:12)
            PIN E(3:0) E(15:12)
            PIN F(3:0) F(15:12)
            PIN G(3:0) G(15:12)
            PIN H(3:0) H(15:12)
            PIN en en
            PIN S(2:0) S(2:0)
            PIN O(3:0) O(15:12)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE XLXI_1 2320 896 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 2336 1664 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 2336 2384 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2352 3168 R0
        END INSTANCE
        BEGIN BRANCH en
            WIRE 2032 1424 2176 1424
            WIRE 2176 1424 2176 1568
            WIRE 2176 1568 2176 2288
            WIRE 2176 2288 2176 3072
            WIRE 2176 3072 2352 3072
            WIRE 2176 2288 2336 2288
            WIRE 2176 1568 2336 1568
            WIRE 2176 800 2320 800
            WIRE 2176 800 2176 1424
        END BRANCH
        BEGIN BRANCH S(2:0)
            WIRE 2016 1120 2208 1120
            WIRE 2208 1120 2208 1632
            WIRE 2208 1632 2208 2352
            WIRE 2208 2352 2208 3136
            WIRE 2208 3136 2352 3136
            WIRE 2208 2352 2336 2352
            WIRE 2208 1632 2336 1632
            WIRE 2208 864 2320 864
            WIRE 2208 864 2208 1120
        END BRANCH
        BEGIN BRANCH A(15:0)
            WIRE 1376 96 1568 96
        END BRANCH
        BEGIN BRANCH B(15:0)
            WIRE 1376 160 1568 160
        END BRANCH
        BEGIN BRANCH C(15:0)
            WIRE 1376 240 1568 240
        END BRANCH
        BEGIN BRANCH D(15:0)
            WIRE 1376 304 1568 304
        END BRANCH
        BEGIN BRANCH E(15:0)
            WIRE 1376 384 1568 384
        END BRANCH
        BEGIN BRANCH F(15:0)
            WIRE 1376 448 1568 448
        END BRANCH
        BEGIN BRANCH G(15:0)
            WIRE 1376 528 1568 528
        END BRANCH
        BEGIN BRANCH H(15:0)
            WIRE 1376 592 1568 592
        END BRANCH
        BEGIN BRANCH O(15:0)
            WIRE 1792 96 1984 96
        END BRANCH
        IOMARKER 1376 96 A(15:0) R180 28
        IOMARKER 1376 160 B(15:0) R180 28
        IOMARKER 1376 240 C(15:0) R180 28
        IOMARKER 1376 304 D(15:0) R180 28
        IOMARKER 1376 384 E(15:0) R180 28
        IOMARKER 1376 448 F(15:0) R180 28
        IOMARKER 1376 528 G(15:0) R180 28
        IOMARKER 1376 592 H(15:0) R180 28
        IOMARKER 1984 96 O(15:0) R0 28
        IOMARKER 2016 1120 S(2:0) R180 28
        BEGIN BRANCH O(3:0)
            WIRE 2704 288 2800 288
        END BRANCH
        BEGIN BRANCH O(7:4)
            WIRE 2720 1056 2800 1056
        END BRANCH
        BEGIN BRANCH O(11:8)
            WIRE 2720 1776 2816 1776
        END BRANCH
        BEGIN BRANCH O(15:12)
            WIRE 2736 2560 2800 2560
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 2224 288 2320 288
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 2240 352 2320 352
        END BRANCH
        BEGIN BRANCH C(3:0)
            WIRE 2224 416 2320 416
        END BRANCH
        BEGIN BRANCH D(3:0)
            WIRE 2240 480 2320 480
        END BRANCH
        BEGIN BRANCH E(3:0)
            WIRE 2240 544 2320 544
        END BRANCH
        BEGIN BRANCH F(3:0)
            WIRE 2240 608 2320 608
        END BRANCH
        BEGIN BRANCH G(3:0)
            WIRE 2240 672 2320 672
        END BRANCH
        BEGIN BRANCH H(3:0)
            WIRE 2256 736 2320 736
        END BRANCH
        BEGIN BRANCH H(11:8)
            WIRE 2272 2224 2336 2224
        END BRANCH
        BEGIN BRANCH G(11:8)
            WIRE 2256 2160 2336 2160
        END BRANCH
        BEGIN BRANCH F(11:8)
            WIRE 2256 2096 2336 2096
        END BRANCH
        BEGIN BRANCH E(11:8)
            WIRE 2256 2032 2336 2032
        END BRANCH
        BEGIN BRANCH D(11:8)
            WIRE 2256 1968 2336 1968
        END BRANCH
        BEGIN BRANCH C(11:8)
            WIRE 2240 1904 2336 1904
        END BRANCH
        BEGIN BRANCH B(11:8)
            WIRE 2256 1840 2336 1840
        END BRANCH
        BEGIN BRANCH A(11:8)
            WIRE 2240 1776 2336 1776
        END BRANCH
        BEGIN BRANCH H(15:12)
            WIRE 2288 3008 2352 3008
        END BRANCH
        BEGIN BRANCH G(15:12)
            WIRE 2272 2944 2352 2944
        END BRANCH
        BEGIN BRANCH F(15:12)
            WIRE 2272 2880 2352 2880
        END BRANCH
        BEGIN BRANCH E(15:12)
            WIRE 2272 2816 2352 2816
        END BRANCH
        BEGIN BRANCH D(15:12)
            WIRE 2272 2752 2352 2752
        END BRANCH
        BEGIN BRANCH C(15:12)
            WIRE 2256 2688 2352 2688
        END BRANCH
        BEGIN BRANCH B(15:12)
            WIRE 2272 2624 2352 2624
        END BRANCH
        BEGIN BRANCH A(15:12)
            WIRE 2256 2560 2352 2560
        END BRANCH
        BEGIN BRANCH H(7:4)
            WIRE 2272 1504 2336 1504
        END BRANCH
        BEGIN BRANCH G(7:4)
            WIRE 2256 1440 2336 1440
        END BRANCH
        BEGIN BRANCH F(7:4)
            WIRE 2256 1376 2336 1376
        END BRANCH
        BEGIN BRANCH E(7:4)
            WIRE 2256 1312 2336 1312
        END BRANCH
        BEGIN BRANCH D(7:4)
            WIRE 2256 1248 2336 1248
        END BRANCH
        BEGIN BRANCH C(7:4)
            WIRE 2240 1184 2336 1184
        END BRANCH
        BEGIN BRANCH B(7:4)
            WIRE 2256 1120 2336 1120
        END BRANCH
        BEGIN BRANCH A(7:4)
            WIRE 2240 1056 2336 1056
        END BRANCH
        IOMARKER 2032 1424 en R180 28
    END SHEET
END SCHEMATIC
