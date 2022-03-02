VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL LT
        SIGNAL GT
        SIGNAL EQ
        SIGNAL add_out(63:0)
        SIGNAL shift_out(63:0)
        SIGNAL or_out(63:0)
        SIGNAL XLXN_11(63:0)
        SIGNAL MD
        SIGNAL R2(5:0)
        SIGNAL and_out(63:0)
        SIGNAL xnor_out(63:0)
        SIGNAL Q(63:0)
        SIGNAL R1(63:0)
        SIGNAL R2(63:0)
        BEGIN SIGNAL MD,OP(2)
        END SIGNAL
        SIGNAL OP(2:0)
        SIGNAL OVR
        PORT Output LT
        PORT Output GT
        PORT Output EQ
        PORT Input MD
        PORT Output Q(63:0)
        PORT Input R1(63:0)
        PORT Input R2(63:0)
        PORT Input OP(2:0)
        PORT Output OVR
        BEGIN BLOCKDEF adder64
            TIMESTAMP 2022 2 19 12 11 8
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF and64
            TIMESTAMP 2022 2 19 22 51 46
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF or64
            TIMESTAMP 2022 2 19 22 51 43
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF xor64_by_1
            TIMESTAMP 2022 2 20 0 26 21
            ARC N -40 -128 92 4 68 -8 68 -112 
            LINE N 68 -8 180 -8 
            LINE N 68 -112 180 -112 
            ARC N 132 -112 236 -8 180 -8 180 -112 
            ARC N -56 -128 76 4 52 -8 52 -112 
            RECTANGLE N 236 -76 304 -52 
            LINE N 304 -64 236 -64 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -92 72 -68 
            LINE N 0 -80 72 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF shift64
            TIMESTAMP 2022 2 19 13 17 1
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF lt64
            TIMESTAMP 2022 2 20 1 4 18
            RECTANGLE N 32 32 256 480 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 144 32 144 
            END LINE
            LINE N 288 144 256 144 
        END BLOCKDEF
        BEGIN BLOCKDEF gt64
            TIMESTAMP 2022 2 20 1 6 4
            RECTANGLE N 32 32 256 480 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 144 32 144 
            END LINE
            LINE N 288 176 256 176 
        END BLOCKDEF
        BEGIN BLOCKDEF nor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N 28 -144 204 32 192 -96 112 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -48 48 -48 
            LINE N 112 -144 48 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF xnor64
            TIMESTAMP 2022 2 19 23 26 46
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF mux8_to_1_x64
            TIMESTAMP 2022 2 20 1 26 59
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
        BEGIN BLOCK XLXI_1 adder64
            PIN A(63:0) R1(63:0)
            PIN B(63:0) XLXN_11(63:0)
            PIN Cin MD
            PIN Cout OVR
            PIN S(63:0) add_out(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 xor64_by_1
            PIN A(63:0) R2(63:0)
            PIN B MD
            PIN S(63:0) XLXN_11(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 shift64
            PIN A(63:0) R1(63:0)
            PIN V(5:0) R2(5:0)
            PIN M(1:0) MD,OP(2)
            PIN S(63:0) shift_out(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_30 lt64
            PIN a(63:0) R1(63:0)
            PIN b(63:0) R2(63:0)
            PIN a_lt_b LT
        END BLOCK
        BEGIN BLOCK XLXI_38 gt64
            PIN a(63:0) R1(63:0)
            PIN b(63:0) R2(63:0)
            PIN a_gt_b GT
        END BLOCK
        BEGIN BLOCK XLXI_2 and64
            PIN A(63:0) R1(63:0)
            PIN B(63:0) R2(63:0)
            PIN S(63:0) and_out(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 or64
            PIN A(63:0) R1(63:0)
            PIN B(63:0) R2(63:0)
            PIN S(63:0) or_out(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_53 nor2
            PIN I0 GT
            PIN I1 LT
            PIN O EQ
        END BLOCK
        BEGIN BLOCK XLXI_54 xnor64
            PIN A(63:0) R1(63:0)
            PIN B(63:0) R2(63:0)
            PIN S(63:0) xnor_out(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_55 mux8_to_1_x64
            PIN X0(63:0) add_out(63:0)
            PIN X1(63:0) shift_out(63:0)
            PIN X2(63:0) R1(63:0)
            PIN X3(63:0) R1(63:0)
            PIN X4(63:0) xnor_out(63:0)
            PIN X5(63:0) shift_out(63:0)
            PIN X6(63:0) or_out(63:0)
            PIN X7(63:0) and_out(63:0)
            PIN S(2:0) OP(2:0)
            PIN Q(63:0) Q(63:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1280 400 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 1280 720 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_30 1312 720 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_38 1312 1200 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1280 1936 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1280 2176 R0
        END INSTANCE
        INSTANCE XLXI_53 1680 1248 R0
        BEGIN BRANCH LT
            WIRE 1600 864 1664 864
            WIRE 1664 864 1760 864
            WIRE 1760 864 1840 864
            WIRE 1664 864 1664 1120
            WIRE 1664 1120 1680 1120
            BEGIN DISPLAY 1840 864 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH GT
            WIRE 1600 1376 1664 1376
            WIRE 1664 1376 1760 1376
            WIRE 1760 1376 1840 1376
            WIRE 1664 1184 1680 1184
            WIRE 1664 1184 1664 1376
            BEGIN DISPLAY 1840 1376 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH EQ
            WIRE 1936 1152 2080 1152
            BEGIN DISPLAY 2080 1152 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH add_out(63:0)
            WIRE 1664 304 1840 304
            BEGIN DISPLAY 1840 304 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH shift_out(63:0)
            WIRE 1664 560 1840 560
            BEGIN DISPLAY 1840 560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and_out(63:0)
            WIRE 1664 1840 1840 1840
            BEGIN DISPLAY 1840 1840 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH xnor_out(63:0)
            WIRE 1664 2320 1840 2320
            BEGIN DISPLAY 1840 2320 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH or_out(63:0)
            WIRE 1664 2080 1840 2080
            BEGIN DISPLAY 1840 2080 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R1(63:0)
            WIRE 1120 240 1280 240
            BEGIN DISPLAY 1120 240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_11(63:0)
            WIRE 1024 304 1280 304
        END BRANCH
        BEGIN INSTANCE XLXI_8 720 368 R0
        END INSTANCE
        BEGIN BRANCH MD
            WIRE 560 368 704 368
            WIRE 704 368 1280 368
            WIRE 704 336 720 336
            WIRE 704 336 704 368
            BEGIN DISPLAY 560 368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R2(63:0)
            WIRE 560 288 720 288
            BEGIN DISPLAY 560 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R1(63:0)
            WIRE 1120 560 1280 560
            BEGIN DISPLAY 1120 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R2(5:0)
            WIRE 1120 624 1280 624
            BEGIN DISPLAY 1120 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MD,OP(2)
            WIRE 1120 688 1280 688
            BEGIN DISPLAY 1120 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R1(63:0)
            WIRE 1120 800 1312 800
            BEGIN DISPLAY 1120 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R2(63:0)
            WIRE 1120 864 1312 864
            BEGIN DISPLAY 1120 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R1(63:0)
            WIRE 1120 1280 1312 1280
            BEGIN DISPLAY 1120 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R2(63:0)
            WIRE 1120 1344 1312 1344
            BEGIN DISPLAY 1120 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R1(63:0)
            WIRE 1120 1840 1280 1840
            BEGIN DISPLAY 1120 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R2(63:0)
            WIRE 1120 1904 1280 1904
            BEGIN DISPLAY 1120 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R1(63:0)
            WIRE 1120 2080 1280 2080
            BEGIN DISPLAY 1120 2080 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R2(63:0)
            WIRE 1120 2144 1280 2144
            BEGIN DISPLAY 1120 2144 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R1(63:0)
            WIRE 1120 2320 1280 2320
            BEGIN DISPLAY 1120 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R2(63:0)
            WIRE 1120 2384 1280 2384
            BEGIN DISPLAY 1120 2384 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_54 1280 2416 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_55 2640 1456 R0
        END INSTANCE
        BEGIN BRANCH add_out(63:0)
            WIRE 2480 912 2640 912
            BEGIN DISPLAY 2480 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH shift_out(63:0)
            WIRE 2480 976 2640 976
            BEGIN DISPLAY 2480 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R1(63:0)
            WIRE 2480 1040 2640 1040
            BEGIN DISPLAY 2480 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R1(63:0)
            WIRE 2480 1104 2640 1104
            BEGIN DISPLAY 2480 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH xnor_out(63:0)
            WIRE 2480 1168 2640 1168
            BEGIN DISPLAY 2480 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH shift_out(63:0)
            WIRE 2480 1232 2640 1232
            BEGIN DISPLAY 2480 1232 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH or_out(63:0)
            WIRE 2480 1296 2640 1296
            BEGIN DISPLAY 2480 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and_out(63:0)
            WIRE 2480 1360 2640 1360
            BEGIN DISPLAY 2480 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OP(2:0)
            WIRE 2480 1424 2640 1424
            BEGIN DISPLAY 2480 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(63:0)
            WIRE 3024 912 3200 912
            BEGIN DISPLAY 3200 912 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R1(63:0)
            WIRE 240 720 400 720
        END BRANCH
        BEGIN BRANCH R2(63:0)
            WIRE 240 800 400 800
        END BRANCH
        BEGIN BRANCH MD
            WIRE 240 960 400 960
        END BRANCH
        BEGIN BRANCH OP(2:0)
            WIRE 240 880 400 880
        END BRANCH
        BEGIN BRANCH Q(63:0)
            WIRE 240 1200 400 1200
        END BRANCH
        BEGIN BRANCH OVR
            WIRE 240 1280 400 1280
        END BRANCH
        BEGIN BRANCH LT
            WIRE 240 1360 400 1360
        END BRANCH
        BEGIN BRANCH GT
            WIRE 240 1440 400 1440
        END BRANCH
        BEGIN BRANCH EQ
            WIRE 240 1520 400 1520
        END BRANCH
        BEGIN BRANCH OVR
            WIRE 1664 240 1840 240
            BEGIN DISPLAY 1840 240 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 240 720 R1(63:0) R180 28
        IOMARKER 240 800 R2(63:0) R180 28
        IOMARKER 240 880 OP(2:0) R180 28
        IOMARKER 400 1200 Q(63:0) R0 28
        IOMARKER 400 1280 OVR R0 28
        IOMARKER 400 1360 LT R0 28
        IOMARKER 400 1440 GT R0 28
        IOMARKER 400 1520 EQ R0 28
        IOMARKER 240 960 MD R180 28
    END SHEET
END SCHEMATIC
