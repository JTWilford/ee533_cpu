VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S(2:0)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL C(31:0)
        SIGNAL D(31:0)
        SIGNAL E(31:0)
        SIGNAL F(31:0)
        SIGNAL G(31:0)
        SIGNAL H(31:0)
        SIGNAL O(31:0)
        SIGNAL XLXN_11(2:0)
        SIGNAL A(63:32)
        SIGNAL B(63:32)
        SIGNAL C(63:32)
        SIGNAL D(63:32)
        SIGNAL E(63:32)
        SIGNAL F(63:32)
        SIGNAL G(63:32)
        SIGNAL H(63:32)
        SIGNAL O(63:32)
        SIGNAL XLXN_21
        SIGNAL en
        SIGNAL A(63:0)
        SIGNAL B(63:0)
        SIGNAL C(63:0)
        SIGNAL D(63:0)
        SIGNAL E(63:0)
        SIGNAL F(63:0)
        SIGNAL G(63:0)
        SIGNAL H(63:0)
        SIGNAL O(63:0)
        PORT Input S(2:0)
        PORT Input en
        PORT Input A(63:0)
        PORT Input B(63:0)
        PORT Input C(63:0)
        PORT Input D(63:0)
        PORT Input E(63:0)
        PORT Input F(63:0)
        PORT Input G(63:0)
        PORT Input H(63:0)
        PORT Output O(63:0)
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
        BEGIN BLOCK XLXI_1 mux32bit8to1
            PIN S(2:0) S(2:0)
            PIN en en
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN C(31:0) C(31:0)
            PIN D(31:0) D(31:0)
            PIN E(31:0) E(31:0)
            PIN F(31:0) F(31:0)
            PIN G(31:0) G(31:0)
            PIN H(31:0) H(31:0)
            PIN O(31:0) O(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 mux32bit8to1
            PIN S(2:0) S(2:0)
            PIN en en
            PIN A(31:0) A(63:32)
            PIN B(31:0) B(63:32)
            PIN C(31:0) C(63:32)
            PIN D(31:0) D(63:32)
            PIN E(31:0) E(63:32)
            PIN F(31:0) F(63:32)
            PIN G(31:0) G(63:32)
            PIN H(31:0) H(63:32)
            PIN O(31:0) O(63:32)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1056 1248 R0
        END INSTANCE
        BEGIN BRANCH S(2:0)
            WIRE 784 960 848 960
            WIRE 848 960 848 1424
            WIRE 848 1424 992 1424
            WIRE 992 1424 1072 1424
            WIRE 848 640 976 640
            WIRE 976 640 1056 640
            WIRE 848 640 848 960
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 976 768 1056 768
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 992 832 1056 832
        END BRANCH
        BEGIN BRANCH C(31:0)
            WIRE 976 896 1056 896
        END BRANCH
        BEGIN BRANCH D(31:0)
            WIRE 976 960 1056 960
        END BRANCH
        BEGIN BRANCH E(31:0)
            WIRE 976 1024 1056 1024
        END BRANCH
        BEGIN BRANCH F(31:0)
            WIRE 960 1088 1056 1088
        END BRANCH
        BEGIN BRANCH G(31:0)
            WIRE 976 1152 1056 1152
        END BRANCH
        BEGIN BRANCH H(31:0)
            WIRE 976 1216 1056 1216
        END BRANCH
        BEGIN BRANCH O(31:0)
            WIRE 1440 640 1472 640
        END BRANCH
        BEGIN INSTANCE XLXI_3 1072 2032 R0
        END INSTANCE
        BEGIN BRANCH A(63:32)
            WIRE 992 1552 1072 1552
        END BRANCH
        BEGIN BRANCH B(63:32)
            WIRE 1008 1616 1072 1616
        END BRANCH
        BEGIN BRANCH C(63:32)
            WIRE 992 1680 1072 1680
        END BRANCH
        BEGIN BRANCH D(63:32)
            WIRE 992 1744 1072 1744
        END BRANCH
        BEGIN BRANCH E(63:32)
            WIRE 992 1808 1072 1808
        END BRANCH
        BEGIN BRANCH F(63:32)
            WIRE 976 1872 1072 1872
        END BRANCH
        BEGIN BRANCH G(63:32)
            WIRE 992 1936 1072 1936
        END BRANCH
        BEGIN BRANCH H(63:32)
            WIRE 992 2000 1072 2000
        END BRANCH
        BEGIN BRANCH O(63:32)
            WIRE 1456 1424 1488 1424
        END BRANCH
        BEGIN BRANCH en
            WIRE 800 1152 864 1152
            WIRE 864 1152 896 1152
            WIRE 896 1152 896 1488
            WIRE 896 1488 1072 1488
            WIRE 896 704 1056 704
            WIRE 896 704 896 1152
        END BRANCH
        BEGIN BRANCH A(63:0)
            WIRE 288 832 336 832
        END BRANCH
        BEGIN BRANCH B(63:0)
            WIRE 288 896 336 896
        END BRANCH
        BEGIN BRANCH C(63:0)
            WIRE 288 960 336 960
        END BRANCH
        BEGIN BRANCH D(63:0)
            WIRE 288 1024 336 1024
        END BRANCH
        BEGIN BRANCH E(63:0)
            WIRE 288 1088 336 1088
        END BRANCH
        BEGIN BRANCH F(63:0)
            WIRE 288 1152 304 1152
            WIRE 304 1152 336 1152
        END BRANCH
        BEGIN BRANCH G(63:0)
            WIRE 288 1216 336 1216
        END BRANCH
        BEGIN BRANCH H(63:0)
            WIRE 288 1280 336 1280
        END BRANCH
        BEGIN BRANCH O(63:0)
            WIRE 464 832 528 832
        END BRANCH
        IOMARKER 288 832 A(63:0) R180 28
        IOMARKER 288 896 B(63:0) R180 28
        IOMARKER 288 960 C(63:0) R180 28
        IOMARKER 288 1024 D(63:0) R180 28
        IOMARKER 288 1088 E(63:0) R180 28
        IOMARKER 288 1152 F(63:0) R180 28
        IOMARKER 288 1216 G(63:0) R180 28
        IOMARKER 288 1280 H(63:0) R180 28
        IOMARKER 528 832 O(63:0) R0 28
        IOMARKER 784 960 S(2:0) R180 28
        IOMARKER 800 1152 en R180 28
    END SHEET
END SCHEMATIC
