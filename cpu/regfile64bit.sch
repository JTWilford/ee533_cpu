VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL H(63:0)
        SIGNAL F(63:0)
        SIGNAL XLXN_6
        SIGNAL r1data(63:0)
        SIGNAL r0data(63:0)
        SIGNAL G(63:0)
        SIGNAL E(63:0)
        SIGNAL D(63:0)
        SIGNAL C(63:0)
        SIGNAL B(63:0)
        SIGNAL A(63:0)
        SIGNAL wdata(63:0)
        SIGNAL en
        SIGNAL waddr(2)
        SIGNAL waddr(1)
        SIGNAL waddr(0)
        SIGNAL waddr(2:0)
        SIGNAL r0addr(2:0)
        SIGNAL r1addr(2:0)
        SIGNAL XLXN_10
        SIGNAL XLXN_9
        SIGNAL XLXN_5
        SIGNAL XLXN_4
        SIGNAL XLXN_3
        SIGNAL XLXN_2
        SIGNAL wena
        SIGNAL XLXN_52
        SIGNAL XLXN_53
        SIGNAL XLXN_54
        SIGNAL XLXN_55
        SIGNAL XLXN_56
        SIGNAL XLXN_57
        SIGNAL XLXN_58
        SIGNAL XLXN_59
        SIGNAL clk
        SIGNAL clr
        SIGNAL XLXN_67
        PORT Output r1data(63:0)
        PORT Output r0data(63:0)
        PORT Input wdata(63:0)
        PORT Input en
        PORT Input waddr(2:0)
        PORT Input r0addr(2:0)
        PORT Input r1addr(2:0)
        PORT Input wena
        PORT Input clk
        PORT Input clr
        BEGIN BLOCKDEF d3_8e
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -576 64 -576 
            LINE N 0 -512 64 -512 
            LINE N 0 -448 64 -448 
            LINE N 384 -576 320 -576 
            LINE N 384 -512 320 -512 
            LINE N 384 -448 320 -448 
            LINE N 384 -384 320 -384 
            LINE N 384 -320 320 -320 
            LINE N 384 -256 320 -256 
            LINE N 384 -192 320 -192 
            LINE N 384 -128 320 -128 
            RECTANGLE N 64 -640 320 -64 
            LINE N 0 -128 64 -128 
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
        BEGIN BLOCKDEF mux64bit8to1
            TIMESTAMP 2022 2 18 0 35 3
            RECTANGLE N 64 -640 320 0 
            RECTANGLE N 0 -620 64 -596 
            LINE N 64 -608 0 -608 
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
            RECTANGLE N 320 -620 384 -596 
            LINE N 320 -608 384 -608 
        END BLOCKDEF
        BEGIN BLOCKDEF DFF64bit
            TIMESTAMP 2022 2 18 0 38 35
            RECTANGLE N 64 -192 192 -64 
            LINE N 96 -64 96 0 
            LINE N 160 -64 160 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 192 -160 256 -160 
            RECTANGLE N 192 -172 256 -148 
        END BLOCKDEF
        BEGIN BLOCK XLXI_19 and2
            PIN I0 XLXN_4
            PIN I1 wena
            PIN O XLXN_55
        END BLOCK
        BEGIN BLOCK XLXI_10 and2
            PIN I0 XLXN_67
            PIN I1 wena
            PIN O XLXN_59
        END BLOCK
        BEGIN BLOCK XLXI_9 and2
            PIN I0 XLXN_10
            PIN I1 wena
            PIN O XLXN_58
        END BLOCK
        BEGIN BLOCK XLXI_8 and2
            PIN I0 XLXN_9
            PIN I1 wena
            PIN O XLXN_57
        END BLOCK
        BEGIN BLOCK XLXI_7 and2
            PIN I0 XLXN_5
            PIN I1 wena
            PIN O XLXN_56
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 XLXN_6
            PIN I1 wena
            PIN O XLXN_54
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 XLXN_3
            PIN I1 wena
            PIN O XLXN_53
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 XLXN_2
            PIN I1 wena
            PIN O XLXN_52
        END BLOCK
        BEGIN BLOCK XLXI_1 d3_8e
            PIN A0 waddr(0)
            PIN A1 waddr(1)
            PIN A2 waddr(2)
            PIN E en
            PIN D0 XLXN_2
            PIN D1 XLXN_3
            PIN D2 XLXN_6
            PIN D3 XLXN_4
            PIN D4 XLXN_5
            PIN D5 XLXN_9
            PIN D6 XLXN_10
            PIN D7 XLXN_67
        END BLOCK
        BEGIN BLOCK XLXI_26 mux64bit8to1
            PIN S(2:0) r0addr(2:0)
            PIN en en
            PIN A(63:0) A(63:0)
            PIN B(63:0) B(63:0)
            PIN C(63:0) C(63:0)
            PIN D(63:0) D(63:0)
            PIN E(63:0) E(63:0)
            PIN F(63:0) F(63:0)
            PIN G(63:0) G(63:0)
            PIN H(63:0) H(63:0)
            PIN O(63:0) r0data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_27 mux64bit8to1
            PIN S(2:0) r1addr(2:0)
            PIN en en
            PIN A(63:0) A(63:0)
            PIN B(63:0) B(63:0)
            PIN C(63:0) C(63:0)
            PIN D(63:0) D(63:0)
            PIN E(63:0) E(63:0)
            PIN F(63:0) F(63:0)
            PIN G(63:0) G(63:0)
            PIN H(63:0) H(63:0)
            PIN O(63:0) r1data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_29 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_52
            PIN i(63:0) wdata(63:0)
            PIN o(63:0) A(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_30 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_53
            PIN i(63:0) wdata(63:0)
            PIN o(63:0) B(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_31 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_54
            PIN i(63:0) wdata(63:0)
            PIN o(63:0) C(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_32 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_55
            PIN i(63:0) wdata(63:0)
            PIN o(63:0) D(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_33 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_56
            PIN i(63:0) wdata(63:0)
            PIN o(63:0) E(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_34 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_57
            PIN i(63:0) wdata(63:0)
            PIN o(63:0) F(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_35 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_58
            PIN i(63:0) wdata(63:0)
            PIN o(63:0) G(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_36 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_59
            PIN i(63:0) wdata(63:0)
            PIN o(63:0) H(63:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        IOMARKER 2976 928 en R0 28
        IOMARKER 2704 1184 r1addr(2:0) R270 28
        IOMARKER 3184 1344 r1data(63:0) R0 28
        IOMARKER 3168 240 r0data(63:0) R0 28
        IOMARKER 1776 240 wdata(63:0) R270 28
        IOMARKER 368 832 waddr(2:0) R180 28
        IOMARKER 2672 240 r0addr(2:0) R180 28
        IOMARKER 1392 464 wena R270 28
        INSTANCE XLXI_19 1488 1264 R0
        INSTANCE XLXI_10 1472 2032 R0
        INSTANCE XLXI_9 1472 1856 R0
        INSTANCE XLXI_8 1488 1680 R0
        INSTANCE XLXI_7 1488 1504 R0
        INSTANCE XLXI_6 1488 1088 R0
        INSTANCE XLXI_5 1504 912 R0
        INSTANCE XLXI_4 1504 736 R0
        INSTANCE XLXI_1 704 1584 R0
        BEGIN BRANCH H(63:0)
            WIRE 2144 2160 2560 2160
            WIRE 2560 816 2560 1920
            WIRE 2560 1920 2560 2160
            WIRE 2560 1920 2736 1920
            WIRE 2560 816 2704 816
        END BRANCH
        BEGIN BRANCH F(63:0)
            WIRE 2144 1664 2208 1664
            WIRE 2208 1664 2208 1680
            WIRE 2208 1680 2496 1680
            WIRE 2496 1680 2496 1792
            WIRE 2496 1792 2736 1792
            WIRE 2496 688 2704 688
            WIRE 2496 688 2496 1680
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1088 1136 1104 1136
            WIRE 1104 1120 1488 1120
            WIRE 1104 1120 1104 1136
            WIRE 1488 1024 1488 1120
        END BRANCH
        BEGIN BRANCH r1data(63:0)
            WIRE 3120 1344 3184 1344
        END BRANCH
        BEGIN BRANCH r0data(63:0)
            WIRE 3088 240 3168 240
        END BRANCH
        BEGIN BRANCH G(63:0)
            WIRE 2144 1904 2528 1904
            WIRE 2528 752 2528 1856
            WIRE 2528 1856 2528 1904
            WIRE 2528 1856 2736 1856
            WIRE 2528 752 2704 752
        END BRANCH
        BEGIN BRANCH E(63:0)
            WIRE 2128 1408 2464 1408
            WIRE 2464 1408 2464 1728
            WIRE 2464 1728 2736 1728
            WIRE 2464 624 2464 1408
            WIRE 2464 624 2704 624
        END BRANCH
        BEGIN BRANCH D(63:0)
            WIRE 2128 1168 2432 1168
            WIRE 2432 1168 2432 1664
            WIRE 2432 1664 2736 1664
            WIRE 2432 560 2432 1168
            WIRE 2432 560 2704 560
        END BRANCH
        BEGIN BRANCH C(63:0)
            WIRE 2144 896 2400 896
            WIRE 2400 896 2400 1600
            WIRE 2400 1600 2736 1600
            WIRE 2400 496 2704 496
            WIRE 2400 496 2400 896
        END BRANCH
        BEGIN BRANCH B(63:0)
            WIRE 2144 640 2368 640
            WIRE 2368 640 2368 1536
            WIRE 2368 1536 2736 1536
            WIRE 2368 432 2704 432
            WIRE 2368 432 2368 640
        END BRANCH
        BEGIN BRANCH A(63:0)
            WIRE 2144 368 2336 368
            WIRE 2336 368 2336 1472
            WIRE 2336 1472 2736 1472
            WIRE 2336 368 2704 368
        END BRANCH
        BEGIN BRANCH wdata(63:0)
            WIRE 1776 240 1776 432
            WIRE 1776 432 1888 432
            WIRE 1776 432 1776 704
            WIRE 1776 704 1776 960
            WIRE 1776 960 1776 1232
            WIRE 1776 1232 1776 1472
            WIRE 1776 1472 1776 1728
            WIRE 1776 1728 1776 1968
            WIRE 1776 1968 1776 2224
            WIRE 1776 2224 1888 2224
            WIRE 1776 1968 1888 1968
            WIRE 1776 1728 1888 1728
            WIRE 1776 1472 1872 1472
            WIRE 1776 1232 1872 1232
            WIRE 1776 960 1888 960
            WIRE 1776 704 1888 704
        END BRANCH
        BEGIN BRANCH en
            WIRE 608 1456 704 1456
            WIRE 608 1456 608 2448
            WIRE 608 2448 2640 2448
            WIRE 2640 304 2704 304
            WIRE 2640 304 2640 928
            WIRE 2640 928 2640 1408
            WIRE 2640 1408 2736 1408
            WIRE 2640 1408 2640 2448
            WIRE 2640 928 2976 928
        END BRANCH
        BEGIN BRANCH waddr(2)
            WIRE 640 1136 704 1136
        END BRANCH
        BEGIN BRANCH waddr(1)
            WIRE 624 1072 704 1072
        END BRANCH
        BEGIN BRANCH waddr(0)
            WIRE 624 1008 704 1008
        END BRANCH
        BEGIN BRANCH waddr(2:0)
            WIRE 368 832 544 832
        END BRANCH
        BEGIN BRANCH r0addr(2:0)
            WIRE 2672 240 2704 240
        END BRANCH
        BEGIN BRANCH r1addr(2:0)
            WIRE 2704 1184 2704 1344
            WIRE 2704 1344 2736 1344
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1088 1392 1248 1392
            WIRE 1248 1392 1248 1792
            WIRE 1248 1792 1472 1792
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1088 1328 1264 1328
            WIRE 1264 1328 1264 1616
            WIRE 1264 1616 1488 1616
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1088 1264 1280 1264
            WIRE 1280 1264 1280 1440
            WIRE 1280 1440 1488 1440
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1088 1200 1488 1200
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1088 1072 1312 1072
            WIRE 1312 848 1312 1072
            WIRE 1312 848 1504 848
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1088 1008 1296 1008
            WIRE 1296 672 1296 1008
            WIRE 1296 672 1504 672
        END BRANCH
        BEGIN BRANCH wena
            WIRE 1392 464 1392 608
            WIRE 1392 608 1504 608
            WIRE 1392 608 1392 784
            WIRE 1392 784 1504 784
            WIRE 1392 784 1392 960
            WIRE 1392 960 1488 960
            WIRE 1392 960 1392 1136
            WIRE 1392 1136 1392 1376
            WIRE 1392 1376 1488 1376
            WIRE 1392 1376 1392 1552
            WIRE 1392 1552 1488 1552
            WIRE 1392 1552 1392 1728
            WIRE 1392 1728 1392 1904
            WIRE 1392 1904 1472 1904
            WIRE 1392 1728 1472 1728
            WIRE 1392 1136 1488 1136
        END BRANCH
        BEGIN INSTANCE XLXI_26 2704 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_27 2736 1952 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_29 1888 528 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_30 1888 800 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_31 1888 1056 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_32 1872 1328 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_33 1872 1568 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_34 1888 1824 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_35 1888 2064 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_36 1888 2320 R0
        END INSTANCE
        BEGIN BRANCH XLXN_52
            WIRE 1760 640 1824 640
            WIRE 1824 368 1824 640
            WIRE 1824 368 1888 368
        END BRANCH
        BEGIN BRANCH XLXN_53
            WIRE 1760 816 1840 816
            WIRE 1840 640 1840 816
            WIRE 1840 640 1888 640
        END BRANCH
        BEGIN BRANCH XLXN_54
            WIRE 1744 992 1760 992
            WIRE 1760 896 1760 992
            WIRE 1760 896 1888 896
        END BRANCH
        BEGIN BRANCH XLXN_55
            WIRE 1744 1168 1872 1168
        END BRANCH
        BEGIN BRANCH XLXN_56
            WIRE 1744 1408 1872 1408
        END BRANCH
        BEGIN BRANCH XLXN_57
            WIRE 1744 1584 1808 1584
            WIRE 1808 1584 1808 1664
            WIRE 1808 1664 1888 1664
        END BRANCH
        BEGIN BRANCH XLXN_58
            WIRE 1728 1760 1808 1760
            WIRE 1808 1760 1808 1904
            WIRE 1808 1904 1888 1904
        END BRANCH
        BEGIN BRANCH XLXN_59
            WIRE 1728 1936 1760 1936
            WIRE 1760 1936 1760 2160
            WIRE 1760 2160 1888 2160
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1856 592 1984 592
            WIRE 1856 592 1856 800
            WIRE 1856 800 1856 816
            WIRE 1856 816 1984 816
            WIRE 1856 816 1856 1072
            WIRE 1856 1072 1984 1072
            WIRE 1856 1072 1856 1344
            WIRE 1856 1344 1968 1344
            WIRE 1856 1344 1856 1600
            WIRE 1856 1600 1968 1600
            WIRE 1856 1600 1856 1840
            WIRE 1856 1840 1984 1840
            WIRE 1856 1840 1856 2064
            WIRE 1856 2064 1856 2080
            WIRE 1856 2080 1856 2320
            WIRE 1856 2320 1856 2336
            WIRE 1856 2336 1984 2336
            WIRE 1856 2336 1856 2496
            WIRE 1856 2080 1984 2080
            WIRE 1968 1328 1968 1344
            WIRE 1968 1568 1968 1600
            WIRE 1984 528 1984 592
            WIRE 1984 800 1984 816
            WIRE 1984 1056 1984 1072
            WIRE 1984 1824 1984 1840
            WIRE 1984 2064 1984 2080
            WIRE 1984 2320 1984 2336
        END BRANCH
        IOMARKER 1856 2496 clk R90 28
        BEGIN BRANCH clr
            WIRE 2032 1328 2032 1360
            WIRE 2032 1360 2240 1360
            WIRE 2240 1360 2240 1600
            WIRE 2240 1600 2240 1856
            WIRE 2240 1856 2240 2096
            WIRE 2240 2096 2240 2336
            WIRE 2240 2336 2240 2544
            WIRE 2032 1568 2032 1600
            WIRE 2032 1600 2240 1600
            WIRE 2048 528 2048 592
            WIRE 2048 592 2240 592
            WIRE 2240 592 2240 800
            WIRE 2240 800 2240 1104
            WIRE 2240 1104 2240 1360
            WIRE 2048 800 2048 816
            WIRE 2048 816 2208 816
            WIRE 2048 1056 2048 1104
            WIRE 2048 1104 2240 1104
            WIRE 2048 1824 2048 1856
            WIRE 2048 1856 2240 1856
            WIRE 2048 2064 2048 2096
            WIRE 2048 2096 2240 2096
            WIRE 2048 2320 2048 2336
            WIRE 2048 2336 2240 2336
            WIRE 2208 800 2208 816
            WIRE 2208 800 2240 800
        END BRANCH
        IOMARKER 2240 2544 clr R90 28
        BEGIN BRANCH XLXN_67
            WIRE 1088 1456 1232 1456
            WIRE 1232 1456 1232 1968
            WIRE 1232 1968 1472 1968
        END BRANCH
    END SHEET
END SCHEMATIC
