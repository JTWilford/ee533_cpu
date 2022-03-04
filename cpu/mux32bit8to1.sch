VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S(2:0)
        SIGNAL en
        SIGNAL O(15:0)
        SIGNAL O(31:16)
        SIGNAL A(15:0)
        SIGNAL B(15:0)
        SIGNAL C(15:0)
        SIGNAL D(15:0)
        SIGNAL E(15:0)
        SIGNAL F(15:0)
        SIGNAL G(15:0)
        SIGNAL H(15:0)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL C(31:0)
        SIGNAL D(31:0)
        SIGNAL E(31:0)
        SIGNAL F(31:0)
        SIGNAL G(31:0)
        SIGNAL H(31:0)
        SIGNAL A(31:16)
        SIGNAL B(31:16)
        SIGNAL C(31:16)
        SIGNAL D(31:16)
        SIGNAL E(31:16)
        SIGNAL F(31:16)
        SIGNAL G(31:16)
        SIGNAL H(31:16)
        SIGNAL O(31:0)
        PORT Input S(2:0)
        PORT Input en
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Input C(31:0)
        PORT Input D(31:0)
        PORT Input E(31:0)
        PORT Input F(31:0)
        PORT Input G(31:0)
        PORT Input H(31:0)
        PORT Output O(31:0)
        BEGIN BLOCKDEF mux16bit8to1
            TIMESTAMP 2022 2 14 7 29 14
            RECTANGLE N 64 -640 320 0 
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
            RECTANGLE N 320 -620 384 -596 
            LINE N 320 -608 384 -608 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 mux16bit8to1
            PIN en en
            PIN S(2:0) S(2:0)
            PIN A(15:0) A(15:0)
            PIN B(15:0) B(15:0)
            PIN C(15:0) C(15:0)
            PIN D(15:0) D(15:0)
            PIN E(15:0) E(15:0)
            PIN F(15:0) F(15:0)
            PIN G(15:0) G(15:0)
            PIN H(15:0) H(15:0)
            PIN O(15:0) O(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 mux16bit8to1
            PIN en en
            PIN S(2:0) S(2:0)
            PIN A(15:0) A(31:16)
            PIN B(15:0) B(31:16)
            PIN C(15:0) C(31:16)
            PIN D(15:0) D(31:16)
            PIN E(15:0) E(31:16)
            PIN F(15:0) F(31:16)
            PIN G(15:0) G(31:16)
            PIN H(15:0) H(31:16)
            PIN O(15:0) O(31:16)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1248 1072 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1248 1792 R0
        END INSTANCE
        BEGIN BRANCH S(2:0)
            WIRE 976 672 1056 672
            WIRE 1056 672 1056 1248
            WIRE 1056 1248 1248 1248
            WIRE 1056 528 1248 528
            WIRE 1056 528 1056 672
        END BRANCH
        BEGIN BRANCH en
            WIRE 992 928 1152 928
            WIRE 1152 928 1152 1184
            WIRE 1152 1184 1248 1184
            WIRE 1152 464 1248 464
            WIRE 1152 464 1152 928
        END BRANCH
        BEGIN BRANCH O(15:0)
            WIRE 1632 464 1712 464
        END BRANCH
        BEGIN BRANCH O(31:16)
            WIRE 1632 1184 1712 1184
        END BRANCH
        BEGIN BRANCH A(15:0)
            WIRE 1200 592 1248 592
        END BRANCH
        BEGIN BRANCH B(15:0)
            WIRE 1200 656 1248 656
        END BRANCH
        BEGIN BRANCH C(15:0)
            WIRE 1200 720 1248 720
        END BRANCH
        BEGIN BRANCH D(15:0)
            WIRE 1200 784 1248 784
        END BRANCH
        BEGIN BRANCH E(15:0)
            WIRE 1200 848 1248 848
        END BRANCH
        BEGIN BRANCH F(15:0)
            WIRE 1200 912 1216 912
            WIRE 1216 912 1248 912
        END BRANCH
        BEGIN BRANCH G(15:0)
            WIRE 1200 976 1248 976
        END BRANCH
        BEGIN BRANCH H(15:0)
            WIRE 1200 1040 1248 1040
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 320 544 368 544
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 320 608 368 608
        END BRANCH
        BEGIN BRANCH C(31:0)
            WIRE 320 672 368 672
        END BRANCH
        BEGIN BRANCH D(31:0)
            WIRE 320 736 368 736
        END BRANCH
        BEGIN BRANCH E(31:0)
            WIRE 320 800 368 800
        END BRANCH
        BEGIN BRANCH F(31:0)
            WIRE 320 864 336 864
            WIRE 336 864 368 864
        END BRANCH
        BEGIN BRANCH G(31:0)
            WIRE 320 928 368 928
        END BRANCH
        BEGIN BRANCH H(31:0)
            WIRE 320 992 368 992
        END BRANCH
        BEGIN BRANCH A(31:16)
            WIRE 1200 1312 1248 1312
        END BRANCH
        BEGIN BRANCH B(31:16)
            WIRE 1200 1376 1248 1376
        END BRANCH
        BEGIN BRANCH C(31:16)
            WIRE 1200 1440 1248 1440
        END BRANCH
        BEGIN BRANCH D(31:16)
            WIRE 1200 1504 1248 1504
        END BRANCH
        BEGIN BRANCH E(31:16)
            WIRE 1200 1568 1248 1568
        END BRANCH
        BEGIN BRANCH F(31:16)
            WIRE 1200 1632 1216 1632
            WIRE 1216 1632 1248 1632
        END BRANCH
        BEGIN BRANCH G(31:16)
            WIRE 1200 1696 1248 1696
        END BRANCH
        BEGIN BRANCH H(31:16)
            WIRE 1200 1760 1248 1760
        END BRANCH
        IOMARKER 320 544 A(31:0) R180 28
        IOMARKER 320 608 B(31:0) R180 28
        IOMARKER 320 672 C(31:0) R180 28
        IOMARKER 320 736 D(31:0) R180 28
        IOMARKER 320 800 E(31:0) R180 28
        IOMARKER 320 864 F(31:0) R180 28
        IOMARKER 320 928 G(31:0) R180 28
        IOMARKER 320 992 H(31:0) R180 28
        BEGIN BRANCH O(31:0)
            WIRE 496 544 560 544
        END BRANCH
        IOMARKER 560 544 O(31:0) R0 28
        IOMARKER 976 672 S(2:0) R180 28
        IOMARKER 992 928 en R180 28
    END SHEET
END SCHEMATIC
