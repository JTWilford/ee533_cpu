VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL wena
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL r1addr(2:0)
        SIGNAL r0addr(2:0)
        SIGNAL waddr(2:0)
        SIGNAL waddr(0)
        SIGNAL waddr(1)
        SIGNAL waddr(2)
        SIGNAL en
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL wdata(31:0)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL C(31:0)
        SIGNAL D(31:0)
        SIGNAL E(31:0)
        SIGNAL F(31:0)
        SIGNAL G(31:0)
        SIGNAL r0data(31:0)
        SIGNAL r1data(31:0)
        SIGNAL XLXN_6
        SIGNAL H(31:0)
        SIGNAL clk
        SIGNAL XLXN_60
        SIGNAL XLXN_61
        SIGNAL XLXN_63
        SIGNAL XLXN_64
        SIGNAL clr
        PORT Input wena
        PORT Input r1addr(2:0)
        PORT Input r0addr(2:0)
        PORT Input waddr(2:0)
        PORT Input en
        PORT Input wdata(31:0)
        PORT Output r0data(31:0)
        PORT Output r1data(31:0)
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
        BEGIN BLOCKDEF mux32bit8to1
            TIMESTAMP 2022 2 14 7 37 55
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
        BEGIN BLOCKDEF DFF32bit
            TIMESTAMP 2022 2 15 1 28 35
            RECTANGLE N 64 -192 192 -64 
            LINE N 96 -64 96 0 
            LINE N 160 -64 160 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 192 -160 256 -160 
            RECTANGLE N 192 -172 256 -148 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 d3_8e
            PIN A0 waddr(0)
            PIN A1 waddr(1)
            PIN A2 waddr(2)
            PIN E en
            PIN D0 XLXN_4
            PIN D1 XLXN_5
            PIN D2 XLXN_6
            PIN D3 XLXN_7
            PIN D4 XLXN_8
            PIN D5 XLXN_9
            PIN D6 XLXN_10
            PIN D7 XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_2 mux32bit8to1
            PIN S(2:0) r0addr(2:0)
            PIN en en
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN C(31:0) C(31:0)
            PIN D(31:0) D(31:0)
            PIN E(31:0) E(31:0)
            PIN F(31:0) F(31:0)
            PIN G(31:0) G(31:0)
            PIN H(31:0) H(31:0)
            PIN O(31:0) r0data(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 mux32bit8to1
            PIN S(2:0) r1addr(2:0)
            PIN en en
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN C(31:0) C(31:0)
            PIN D(31:0) D(31:0)
            PIN E(31:0) E(31:0)
            PIN F(31:0) F(31:0)
            PIN G(31:0) G(31:0)
            PIN H(31:0) H(31:0)
            PIN O(31:0) r1data(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 XLXN_4
            PIN I1 wena
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 XLXN_5
            PIN I1 wena
            PIN O XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 XLXN_6
            PIN I1 wena
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_7 and2
            PIN I0 XLXN_7
            PIN I1 wena
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_14 and2
            PIN I0 XLXN_8
            PIN I1 wena
            PIN O XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_15 and2
            PIN I0 XLXN_9
            PIN I1 wena
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_16 and2
            PIN I0 XLXN_10
            PIN I1 wena
            PIN O XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_17 and2
            PIN I0 XLXN_11
            PIN I1 wena
            PIN O XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_18 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_14
            PIN i(31:0) wdata(31:0)
            PIN o(31:0) B(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_19 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_15
            PIN i(31:0) wdata(31:0)
            PIN o(31:0) C(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_20 DFF32bit
            PIN clk clk
            PIN clr
            PIN en XLXN_16
            PIN i(31:0) wdata(31:0)
            PIN o(31:0) D(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_21 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_17
            PIN i(31:0) wdata(31:0)
            PIN o(31:0) E(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_22 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_18
            PIN i(31:0) wdata(31:0)
            PIN o(31:0) F(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_23 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_19
            PIN i(31:0) wdata(31:0)
            PIN o(31:0) G(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_24 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_20
            PIN i(31:0) wdata(31:0)
            PIN o(31:0) H(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_25 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en XLXN_13
            PIN i(31:0) wdata(31:0)
            PIN o(31:0) A(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 624 1568 R0
        BEGIN INSTANCE XLXI_2 2624 832 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 2656 1936 R0
        END INSTANCE
        INSTANCE XLXI_4 1424 720 R0
        INSTANCE XLXI_5 1424 896 R0
        INSTANCE XLXI_6 1408 1072 R0
        INSTANCE XLXI_14 1408 1488 R0
        INSTANCE XLXI_15 1408 1664 R0
        INSTANCE XLXI_16 1392 1840 R0
        INSTANCE XLXI_17 1392 2016 R0
        BEGIN BRANCH wena
            WIRE 1312 448 1312 592
            WIRE 1312 592 1424 592
            WIRE 1312 592 1312 768
            WIRE 1312 768 1424 768
            WIRE 1312 768 1312 944
            WIRE 1312 944 1408 944
            WIRE 1312 944 1312 1120
            WIRE 1312 1120 1312 1360
            WIRE 1312 1360 1408 1360
            WIRE 1312 1360 1312 1536
            WIRE 1312 1536 1408 1536
            WIRE 1312 1536 1312 1712
            WIRE 1312 1712 1312 1888
            WIRE 1312 1888 1392 1888
            WIRE 1312 1712 1392 1712
            WIRE 1312 1120 1408 1120
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1008 992 1216 992
            WIRE 1216 656 1216 992
            WIRE 1216 656 1424 656
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1008 1056 1232 1056
            WIRE 1232 832 1232 1056
            WIRE 1232 832 1424 832
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1008 1184 1408 1184
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1008 1248 1200 1248
            WIRE 1200 1248 1200 1424
            WIRE 1200 1424 1408 1424
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1008 1312 1184 1312
            WIRE 1184 1312 1184 1600
            WIRE 1184 1600 1408 1600
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1008 1376 1168 1376
            WIRE 1168 1376 1168 1776
            WIRE 1168 1776 1392 1776
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1008 1440 1152 1440
            WIRE 1152 1440 1152 1952
            WIRE 1152 1952 1392 1952
        END BRANCH
        IOMARKER 1312 448 wena R270 28
        BEGIN BRANCH r1addr(2:0)
            WIRE 2624 1168 2624 1328
            WIRE 2624 1328 2656 1328
        END BRANCH
        BEGIN BRANCH r0addr(2:0)
            WIRE 2592 224 2624 224
        END BRANCH
        IOMARKER 2592 224 r0addr(2:0) R180 28
        BEGIN BRANCH waddr(2:0)
            WIRE 288 816 464 816
        END BRANCH
        IOMARKER 288 816 waddr(2:0) R180 28
        BEGIN BRANCH waddr(0)
            WIRE 544 992 624 992
        END BRANCH
        BEGIN BRANCH waddr(1)
            WIRE 544 1056 624 1056
        END BRANCH
        BEGIN BRANCH waddr(2)
            WIRE 560 1120 624 1120
        END BRANCH
        BEGIN INSTANCE XLXI_18 1808 784 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_19 1808 1040 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_22 1808 1808 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_23 1808 2048 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_24 1808 2304 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_25 1808 512 R0
        END INSTANCE
        BEGIN BRANCH en
            WIRE 528 1440 624 1440
            WIRE 528 1440 528 2432
            WIRE 528 2432 2560 2432
            WIRE 2560 288 2624 288
            WIRE 2560 288 2560 912
            WIRE 2560 912 2560 1392
            WIRE 2560 1392 2656 1392
            WIRE 2560 1392 2560 2432
            WIRE 2560 912 2896 912
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1680 624 1744 624
            WIRE 1744 352 1744 624
            WIRE 1744 352 1808 352
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1680 800 1760 800
            WIRE 1760 624 1760 800
            WIRE 1760 624 1808 624
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1664 976 1728 976
            WIRE 1728 880 1728 976
            WIRE 1728 880 1808 880
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1664 1152 1792 1152
        END BRANCH
        BEGIN INSTANCE XLXI_20 1792 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_21 1792 1552 R0
        END INSTANCE
        BEGIN BRANCH XLXN_17
            WIRE 1664 1392 1792 1392
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1664 1568 1728 1568
            WIRE 1728 1568 1728 1648
            WIRE 1728 1648 1808 1648
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1648 1744 1728 1744
            WIRE 1728 1744 1728 1888
            WIRE 1728 1888 1808 1888
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1648 1920 1728 1920
            WIRE 1728 1920 1728 2144
            WIRE 1728 2144 1808 2144
        END BRANCH
        BEGIN BRANCH wdata(31:0)
            WIRE 1696 224 1696 416
            WIRE 1696 416 1808 416
            WIRE 1696 416 1696 688
            WIRE 1696 688 1696 944
            WIRE 1696 944 1696 1216
            WIRE 1696 1216 1696 1456
            WIRE 1696 1456 1696 1712
            WIRE 1696 1712 1696 1952
            WIRE 1696 1952 1696 2208
            WIRE 1696 2208 1808 2208
            WIRE 1696 1952 1808 1952
            WIRE 1696 1712 1808 1712
            WIRE 1696 1456 1792 1456
            WIRE 1696 1216 1792 1216
            WIRE 1696 944 1808 944
            WIRE 1696 688 1808 688
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 2064 352 2256 352
            WIRE 2256 352 2256 1456
            WIRE 2256 1456 2656 1456
            WIRE 2256 352 2624 352
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 2064 624 2288 624
            WIRE 2288 624 2288 1520
            WIRE 2288 1520 2656 1520
            WIRE 2288 416 2624 416
            WIRE 2288 416 2288 624
        END BRANCH
        BEGIN BRANCH C(31:0)
            WIRE 2064 880 2320 880
            WIRE 2320 880 2320 1584
            WIRE 2320 1584 2656 1584
            WIRE 2320 480 2624 480
            WIRE 2320 480 2320 880
        END BRANCH
        BEGIN BRANCH D(31:0)
            WIRE 2048 1152 2352 1152
            WIRE 2352 1152 2352 1648
            WIRE 2352 1648 2656 1648
            WIRE 2352 544 2352 1152
            WIRE 2352 544 2624 544
        END BRANCH
        BEGIN BRANCH E(31:0)
            WIRE 2048 1392 2384 1392
            WIRE 2384 1392 2384 1712
            WIRE 2384 1712 2656 1712
            WIRE 2384 608 2384 1392
            WIRE 2384 608 2624 608
        END BRANCH
        BEGIN BRANCH G(31:0)
            WIRE 2064 1888 2448 1888
            WIRE 2448 736 2448 1840
            WIRE 2448 1840 2448 1888
            WIRE 2448 1840 2656 1840
            WIRE 2448 736 2624 736
        END BRANCH
        BEGIN BRANCH r0data(31:0)
            WIRE 3008 224 3088 224
        END BRANCH
        BEGIN BRANCH r1data(31:0)
            WIRE 3040 1328 3104 1328
        END BRANCH
        IOMARKER 1696 224 wdata(31:0) R270 28
        INSTANCE XLXI_7 1408 1248 R0
        BEGIN BRANCH XLXN_6
            WIRE 1008 1120 1024 1120
            WIRE 1024 1104 1408 1104
            WIRE 1024 1104 1024 1120
            WIRE 1408 1008 1408 1104
        END BRANCH
        IOMARKER 3088 224 r0data(31:0) R0 28
        IOMARKER 3104 1328 r1data(31:0) R0 28
        IOMARKER 2624 1168 r1addr(2:0) R270 28
        BEGIN BRANCH F(31:0)
            WIRE 2064 1648 2128 1648
            WIRE 2128 1648 2128 1664
            WIRE 2128 1664 2416 1664
            WIRE 2416 1664 2416 1776
            WIRE 2416 1776 2656 1776
            WIRE 2416 672 2624 672
            WIRE 2416 672 2416 1664
        END BRANCH
        BEGIN BRANCH H(31:0)
            WIRE 2064 2144 2480 2144
            WIRE 2480 800 2480 1904
            WIRE 2480 1904 2480 2144
            WIRE 2480 1904 2656 1904
            WIRE 2480 800 2624 800
        END BRANCH
        IOMARKER 2896 912 en R0 28
        BEGIN BRANCH clk
            WIRE 1744 1104 1744 1344
            WIRE 1744 1344 1744 1600
            WIRE 1744 1600 1744 1840
            WIRE 1744 1840 1744 2096
            WIRE 1744 2096 1904 2096
            WIRE 1744 2096 1744 2384
            WIRE 1744 2384 1824 2384
            WIRE 1824 2384 1904 2384
            WIRE 1824 2384 1824 2576
            WIRE 1744 1840 1904 1840
            WIRE 1744 1600 1888 1600
            WIRE 1744 1344 1888 1344
            WIRE 1744 1104 1776 1104
            WIRE 1776 1104 1904 1104
            WIRE 1776 528 1904 528
            WIRE 1776 528 1776 800
            WIRE 1776 800 1776 1104
            WIRE 1776 800 1904 800
            WIRE 1888 1312 1888 1344
            WIRE 1888 1552 1888 1600
            WIRE 1904 512 1904 528
            WIRE 1904 784 1904 800
            WIRE 1904 1040 1904 1104
            WIRE 1904 1808 1904 1840
            WIRE 1904 2048 1904 2096
            WIRE 1904 2304 1904 2384
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1952 1552 1952 1600
            WIRE 1952 1600 2096 1600
            WIRE 1968 512 1968 528
            WIRE 1968 528 2144 528
            WIRE 1968 784 1968 816
            WIRE 1968 816 2112 816
            WIRE 2112 816 2112 1072
            WIRE 2112 1072 2112 1552
            WIRE 2112 1552 2112 1808
            WIRE 2112 1808 2112 2048
            WIRE 2112 2048 2112 2368
            WIRE 2112 1808 2128 1808
            WIRE 2128 1808 2128 1824
            WIRE 1968 1040 1968 1072
            WIRE 1968 1072 2112 1072
            WIRE 1968 1808 1968 1824
            WIRE 1968 1824 2128 1824
            WIRE 1968 2048 2112 2048
            WIRE 1968 2304 1968 2368
            WIRE 1968 2368 2048 2368
            WIRE 2048 2368 2112 2368
            WIRE 2048 2368 2048 2560
            WIRE 2096 1552 2096 1600
            WIRE 2096 1552 2112 1552
            WIRE 2112 512 2144 512
            WIRE 2144 512 2144 528
            WIRE 2112 512 2112 816
        END BRANCH
        IOMARKER 1824 2576 clk R90 28
        IOMARKER 2048 2560 clr R90 28
    END SHEET
END SCHEMATIC
