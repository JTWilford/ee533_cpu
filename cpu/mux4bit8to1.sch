VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL C(0)
        SIGNAL D(0)
        SIGNAL E(0)
        SIGNAL F(0)
        SIGNAL G(0)
        SIGNAL H(0)
        SIGNAL A(1)
        SIGNAL B(1)
        SIGNAL C(1)
        SIGNAL D(1)
        SIGNAL E(1)
        SIGNAL F(1)
        SIGNAL G(1)
        SIGNAL H(1)
        SIGNAL A(2)
        SIGNAL B(2)
        SIGNAL C(2)
        SIGNAL D(2)
        SIGNAL E(2)
        SIGNAL F(2)
        SIGNAL G(2)
        SIGNAL H(2)
        SIGNAL A(3)
        SIGNAL B(3)
        SIGNAL C(3)
        SIGNAL D(3)
        SIGNAL E(3)
        SIGNAL F(3)
        SIGNAL G(3)
        SIGNAL H(3)
        SIGNAL O(0)
        SIGNAL O(1)
        SIGNAL O(3)
        SIGNAL O(2)
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL C(3:0)
        SIGNAL D(3:0)
        SIGNAL E(3:0)
        SIGNAL F(3:0)
        SIGNAL G(3:0)
        SIGNAL H(3:0)
        SIGNAL O(3:0)
        SIGNAL XLXN_47
        SIGNAL en
        SIGNAL XLXN_51
        SIGNAL S(0)
        SIGNAL XLXN_53
        SIGNAL S(1)
        SIGNAL XLXN_55
        SIGNAL S(2)
        SIGNAL XLXN_57
        SIGNAL XLXN_58
        SIGNAL XLXN_59
        SIGNAL XLXN_60
        SIGNAL XLXN_61
        SIGNAL XLXN_62
        SIGNAL XLXN_63
        SIGNAL S(2:0)
        PORT Input A(3:0)
        PORT Input B(3:0)
        PORT Input C(3:0)
        PORT Input D(3:0)
        PORT Input E(3:0)
        PORT Input F(3:0)
        PORT Input G(3:0)
        PORT Input H(3:0)
        PORT Output O(3:0)
        PORT Input en
        PORT Input S(2:0)
        BEGIN BLOCKDEF m8_1e
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -224 96 -224 
            LINE N 0 -160 96 -160 
            LINE N 0 -96 96 -96 
            LINE N 0 -288 96 -288 
            LINE N 0 -352 96 -352 
            LINE N 0 -416 96 -416 
            LINE N 0 -544 96 -544 
            LINE N 0 -608 96 -608 
            LINE N 0 -672 96 -672 
            LINE N 0 -736 96 -736 
            LINE N 160 -160 96 -160 
            LINE N 160 -268 160 -160 
            LINE N 128 -224 96 -224 
            LINE N 128 -264 128 -224 
            LINE N 192 -96 96 -96 
            LINE N 192 -276 192 -96 
            LINE N 224 -32 96 -32 
            LINE N 224 -280 224 -32 
            LINE N 320 -512 256 -512 
            LINE N 96 -768 96 -256 
            LINE N 256 -704 96 -768 
            LINE N 256 -288 256 -704 
            LINE N 96 -256 256 -288 
            LINE N 0 -32 96 -32 
            LINE N 0 -480 96 -480 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 m8_1e
            PIN D0 A(0)
            PIN D1 B(0)
            PIN D2 C(0)
            PIN D3 D(0)
            PIN D4 E(0)
            PIN D5 F(0)
            PIN D6 G(0)
            PIN D7 H(0)
            PIN E en
            PIN S0 S(0)
            PIN S1 S(1)
            PIN S2 S(2)
            PIN O O(0)
        END BLOCK
        BEGIN BLOCK XLXI_12 m8_1e
            PIN D0 A(1)
            PIN D1 B(1)
            PIN D2 C(1)
            PIN D3 D(1)
            PIN D4 E(1)
            PIN D5 F(1)
            PIN D6 G(1)
            PIN D7 H(1)
            PIN E en
            PIN S0 S(0)
            PIN S1 S(1)
            PIN S2 S(2)
            PIN O O(1)
        END BLOCK
        BEGIN BLOCK XLXI_13 m8_1e
            PIN D0 A(2)
            PIN D1 B(2)
            PIN D2 C(2)
            PIN D3 D(2)
            PIN D4 E(2)
            PIN D5 F(2)
            PIN D6 G(2)
            PIN D7 H(2)
            PIN E en
            PIN S0 S(0)
            PIN S1 S(1)
            PIN S2 S(2)
            PIN O O(2)
        END BLOCK
        BEGIN BLOCK XLXI_14 m8_1e
            PIN D0 A(3)
            PIN D1 B(3)
            PIN D2 C(3)
            PIN D3 D(3)
            PIN D4 E(3)
            PIN D5 F(3)
            PIN D6 G(3)
            PIN D7 H(3)
            PIN E en
            PIN S0 S(0)
            PIN S1 S(1)
            PIN S2 S(2)
            PIN O O(3)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_3 464 1296 R0
        BEGIN BRANCH A(0)
            WIRE 400 560 464 560
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 400 624 464 624
        END BRANCH
        BEGIN BRANCH C(0)
            WIRE 400 688 464 688
        END BRANCH
        BEGIN BRANCH D(0)
            WIRE 400 752 464 752
        END BRANCH
        BEGIN BRANCH E(0)
            WIRE 400 816 464 816
        END BRANCH
        BEGIN BRANCH F(0)
            WIRE 384 880 464 880
        END BRANCH
        BEGIN BRANCH G(0)
            WIRE 400 944 464 944
        END BRANCH
        BEGIN BRANCH H(0)
            WIRE 400 1008 464 1008
        END BRANCH
        INSTANCE XLXI_12 448 2208 R0
        BEGIN BRANCH A(1)
            WIRE 384 1472 448 1472
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 384 1536 448 1536
        END BRANCH
        BEGIN BRANCH C(1)
            WIRE 384 1600 448 1600
        END BRANCH
        BEGIN BRANCH D(1)
            WIRE 384 1664 448 1664
        END BRANCH
        BEGIN BRANCH E(1)
            WIRE 384 1728 448 1728
        END BRANCH
        BEGIN BRANCH F(1)
            WIRE 368 1792 448 1792
        END BRANCH
        BEGIN BRANCH G(1)
            WIRE 384 1856 448 1856
        END BRANCH
        BEGIN BRANCH H(1)
            WIRE 384 1920 448 1920
        END BRANCH
        INSTANCE XLXI_13 1184 1296 R0
        BEGIN BRANCH A(2)
            WIRE 1120 560 1184 560
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 1120 624 1184 624
        END BRANCH
        BEGIN BRANCH C(2)
            WIRE 1120 688 1184 688
        END BRANCH
        BEGIN BRANCH D(2)
            WIRE 1120 752 1184 752
        END BRANCH
        BEGIN BRANCH E(2)
            WIRE 1120 816 1184 816
        END BRANCH
        BEGIN BRANCH F(2)
            WIRE 1104 880 1184 880
        END BRANCH
        BEGIN BRANCH G(2)
            WIRE 1120 944 1184 944
        END BRANCH
        BEGIN BRANCH H(2)
            WIRE 1120 1008 1184 1008
        END BRANCH
        INSTANCE XLXI_14 1168 2208 R0
        BEGIN BRANCH A(3)
            WIRE 1104 1472 1168 1472
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 1104 1536 1168 1536
        END BRANCH
        BEGIN BRANCH C(3)
            WIRE 1104 1600 1168 1600
        END BRANCH
        BEGIN BRANCH D(3)
            WIRE 1104 1664 1168 1664
        END BRANCH
        BEGIN BRANCH E(3)
            WIRE 1104 1728 1168 1728
        END BRANCH
        BEGIN BRANCH F(3)
            WIRE 1088 1792 1168 1792
        END BRANCH
        BEGIN BRANCH G(3)
            WIRE 1104 1856 1168 1856
        END BRANCH
        BEGIN BRANCH H(3)
            WIRE 1104 1920 1168 1920
        END BRANCH
        BEGIN BRANCH O(0)
            WIRE 784 784 864 784
        END BRANCH
        BEGIN BRANCH O(1)
            WIRE 768 1696 880 1696
        END BRANCH
        BEGIN BRANCH O(3)
            WIRE 1488 1696 1584 1696
        END BRANCH
        BEGIN BRANCH O(2)
            WIRE 1504 784 1600 784
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 528 128 768 128
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 544 208 784 208
        END BRANCH
        BEGIN BRANCH C(3:0)
            WIRE 576 272 816 272
        END BRANCH
        BEGIN BRANCH D(3:0)
            WIRE 592 352 832 352
        END BRANCH
        BEGIN BRANCH E(3:0)
            WIRE 976 128 1216 128
        END BRANCH
        BEGIN BRANCH F(3:0)
            WIRE 992 208 1232 208
        END BRANCH
        BEGIN BRANCH G(3:0)
            WIRE 1024 272 1264 272
        END BRANCH
        BEGIN BRANCH H(3:0)
            WIRE 1040 352 1280 352
        END BRANCH
        BEGIN BRANCH O(3:0)
            WIRE 1520 208 1760 208
        END BRANCH
        IOMARKER 1760 208 O(3:0) R0 28
        IOMARKER 528 128 A(3:0) R180 28
        IOMARKER 544 208 B(3:0) R180 28
        IOMARKER 576 272 C(3:0) R180 28
        IOMARKER 592 352 D(3:0) R180 28
        IOMARKER 1040 352 H(3:0) R180 28
        IOMARKER 1024 272 G(3:0) R180 28
        IOMARKER 992 208 F(3:0) R180 28
        IOMARKER 976 128 E(3:0) R180 28
        BEGIN BRANCH en
            WIRE 384 1328 464 1328
            WIRE 464 1328 848 1328
            WIRE 448 2176 448 2192
            WIRE 448 2192 976 2192
            WIRE 976 2192 1168 2192
            WIRE 464 1264 464 1328
            WIRE 848 1264 848 1328
            WIRE 848 1264 976 1264
            WIRE 976 1264 1184 1264
            WIRE 976 1264 976 2192
            WIRE 1168 2176 1168 2192
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 112 672 192 672
            WIRE 192 672 192 1072
            WIRE 192 1072 464 1072
            WIRE 192 1072 192 1984
            WIRE 192 1984 448 1984
            WIRE 192 480 896 480
            WIRE 896 480 896 1072
            WIRE 896 1072 1184 1072
            WIRE 896 1072 896 1984
            WIRE 896 1984 1168 1984
            WIRE 192 480 192 672
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 144 720 224 720
            WIRE 224 720 224 1136
            WIRE 224 1136 464 1136
            WIRE 224 1136 224 2048
            WIRE 224 2048 448 2048
            WIRE 224 496 944 496
            WIRE 944 496 944 1136
            WIRE 944 1136 1184 1136
            WIRE 944 1136 944 2048
            WIRE 944 2048 1152 2048
            WIRE 1152 2048 1168 2048
            WIRE 224 496 224 720
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 176 768 256 768
            WIRE 256 768 256 1200
            WIRE 256 1200 464 1200
            WIRE 256 1200 256 2112
            WIRE 256 2112 448 2112
            WIRE 256 512 1008 512
            WIRE 1008 512 1008 1200
            WIRE 1008 1200 1184 1200
            WIRE 1008 1200 1008 2112
            WIRE 1008 2112 1168 2112
            WIRE 256 512 256 768
        END BRANCH
        BEGIN BRANCH S(2:0)
            WIRE 1632 352 1760 352
        END BRANCH
        IOMARKER 1632 352 S(2:0) R180 28
        IOMARKER 384 1328 en R180 28
    END SHEET
END SCHEMATIC
