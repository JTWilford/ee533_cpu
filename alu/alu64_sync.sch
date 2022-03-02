VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL sR1(63:0)
        SIGNAL sR2(63:0)
        SIGNAL sOP(2:0)
        SIGNAL sOP(0)
        SIGNAL sOP(1)
        SIGNAL sOP(2)
        SIGNAL sMD
        SIGNAL sQ(63:0)
        SIGNAL sOVR
        SIGNAL sLT
        SIGNAL sGT
        SIGNAL sEQ
        SIGNAL OVR
        SIGNAL LT
        SIGNAL GT
        SIGNAL EQ
        SIGNAL Q(63:0)
        SIGNAL XLXN_52
        SIGNAL XLXN_54
        SIGNAL XLXN_56
        SIGNAL CE
        SIGNAL C
        SIGNAL R
        SIGNAL R1(63:0)
        SIGNAL R2(63:0)
        SIGNAL OP(0)
        SIGNAL OP(1)
        SIGNAL OP(2)
        SIGNAL MD
        SIGNAL OP(2:0)
        PORT Output OVR
        PORT Output LT
        PORT Output GT
        PORT Output EQ
        PORT Output Q(63:0)
        PORT Input CE
        PORT Input C
        PORT Input R
        PORT Input R1(63:0)
        PORT Input R2(63:0)
        PORT Input MD
        PORT Input OP(2:0)
        BEGIN BLOCKDEF alu64
            TIMESTAMP 2022 2 20 2 29 57
            RECTANGLE N 64 -320 320 0 
            LINE N 320 -32 384 -32 
            LINE N 320 -96 384 -96 
            LINE N 320 -160 384 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 320 -224 384 -224 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -300 384 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF FD64RE
            TIMESTAMP 2022 2 19 12 29 10
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -160 0 -160 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF fd4re
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -448 320 -448 
            LINE N 384 -384 320 -384 
            LINE N 0 -384 64 -384 
            LINE N 0 -448 64 -448 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
            LINE N 0 -128 64 -128 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 64 -512 320 -64 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 0 -32 64 -32 
            LINE N 0 -192 64 -192 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 FD64RE
            PIN C C
            PIN CE CE
            PIN D(63:0) R2(63:0)
            PIN Q(63:0) sR2(63:0)
            PIN R R
        END BLOCK
        BEGIN BLOCK XLXI_2 FD64RE
            PIN C C
            PIN CE CE
            PIN D(63:0) R1(63:0)
            PIN Q(63:0) sR1(63:0)
            PIN R R
        END BLOCK
        BEGIN BLOCK XLXI_5 fd4re
            PIN C C
            PIN CE CE
            PIN D0 OP(0)
            PIN D1 OP(1)
            PIN D2 OP(2)
            PIN D3 MD
            PIN R R
            PIN Q0 sOP(0)
            PIN Q1 sOP(1)
            PIN Q2 sOP(2)
            PIN Q3 sMD
        END BLOCK
        BEGIN BLOCK XLXI_1 alu64
            PIN EQ sEQ
            PIN GT sGT
            PIN LT sLT
            PIN MD sMD
            PIN OP(2:0) sOP(2:0)
            PIN OVR sOVR
            PIN Q(63:0) sQ(63:0)
            PIN R1(63:0) sR1(63:0)
            PIN R2(63:0) sR2(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd4re
            PIN C C
            PIN CE CE
            PIN D0 sOVR
            PIN D1 sLT
            PIN D2 sGT
            PIN D3 sEQ
            PIN R R
            PIN Q0 OVR
            PIN Q1 LT
            PIN Q2 GT
            PIN Q3 EQ
        END BLOCK
        BEGIN BLOCK XLXI_7 FD64RE
            PIN C C
            PIN CE CE
            PIN D(63:0) sQ(63:0)
            PIN Q(63:0) Q(63:0)
            PIN R R
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_3 800 1344 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 800 944 R0
        END INSTANCE
        INSTANCE XLXI_5 800 1968 R0
        BEGIN INSTANCE XLXI_1 1520 1008 R0
        END INSTANCE
        INSTANCE XLXI_4 2400 1568 R0
        BEGIN INSTANCE XLXI_7 2400 944 R0
        END INSTANCE
        BEGIN BRANCH sR1(63:0)
            WIRE 1184 720 1280 720
            WIRE 1280 720 1520 720
            BEGIN DISPLAY 1280 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sR2(63:0)
            WIRE 1184 1120 1264 1120
            WIRE 1264 1120 1344 1120
            WIRE 1344 784 1344 1120
            WIRE 1344 784 1520 784
            BEGIN DISPLAY 1264 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sOP(2:0)
            WIRE 1408 848 1520 848
            WIRE 1408 848 1408 1280
            WIRE 1408 1280 1408 1520
            WIRE 1408 1520 1408 1584
            WIRE 1408 1584 1408 1648
            WIRE 1408 1648 1408 1664
            BEGIN DISPLAY 1408 1280 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1408 1648 1312 1648
        BUSTAP 1408 1584 1312 1584
        BUSTAP 1408 1520 1312 1520
        BEGIN BRANCH sOP(0)
            WIRE 1184 1520 1280 1520
            WIRE 1280 1520 1312 1520
            BEGIN DISPLAY 1280 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sOP(1)
            WIRE 1184 1584 1280 1584
            WIRE 1280 1584 1312 1584
            BEGIN DISPLAY 1280 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sOP(2)
            WIRE 1184 1648 1280 1648
            WIRE 1280 1648 1312 1648
            BEGIN DISPLAY 1280 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sMD
            WIRE 1184 1712 1280 1712
            WIRE 1280 1712 1440 1712
            WIRE 1440 912 1440 1712
            WIRE 1440 912 1520 912
            BEGIN DISPLAY 1280 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sQ(63:0)
            WIRE 1904 720 2000 720
            WIRE 2000 720 2400 720
            BEGIN DISPLAY 2000 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sOVR
            WIRE 1904 784 1952 784
            WIRE 1952 784 2080 784
            WIRE 2080 784 2080 1120
            WIRE 2080 1120 2400 1120
            BEGIN DISPLAY 1952 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sLT
            WIRE 1904 848 1952 848
            WIRE 1952 848 2064 848
            WIRE 2064 848 2064 1184
            WIRE 2064 1184 2400 1184
            BEGIN DISPLAY 1952 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sGT
            WIRE 1904 912 1952 912
            WIRE 1952 912 2048 912
            WIRE 2048 912 2048 1248
            WIRE 2048 1248 2400 1248
            BEGIN DISPLAY 1952 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH sEQ
            WIRE 1904 976 1952 976
            WIRE 1952 976 2032 976
            WIRE 2032 976 2032 1312
            WIRE 2032 1312 2400 1312
            BEGIN DISPLAY 1952 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OVR
            WIRE 2784 1120 2960 1120
        END BRANCH
        BEGIN BRANCH LT
            WIRE 2784 1184 2960 1184
        END BRANCH
        BEGIN BRANCH GT
            WIRE 2784 1248 2960 1248
        END BRANCH
        BEGIN BRANCH EQ
            WIRE 2784 1312 2960 1312
        END BRANCH
        BEGIN BRANCH Q(63:0)
            WIRE 2784 720 2960 720
        END BRANCH
        BEGIN BRANCH CE
            WIRE 2240 1376 2384 1376
            WIRE 2384 1376 2400 1376
            WIRE 2384 784 2400 784
            WIRE 2384 784 2384 1376
            BEGIN DISPLAY 2240 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 2240 1440 2368 1440
            WIRE 2368 1440 2400 1440
            WIRE 2368 848 2400 848
            WIRE 2368 848 2368 1440
            BEGIN DISPLAY 2240 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R
            WIRE 2240 1536 2352 1536
            WIRE 2352 1536 2400 1536
            WIRE 2352 912 2400 912
            WIRE 2352 912 2352 1536
            BEGIN DISPLAY 2240 1536 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R1(63:0)
            WIRE 560 720 800 720
        END BRANCH
        BEGIN BRANCH R2(63:0)
            WIRE 560 1120 800 1120
        END BRANCH
        BEGIN BRANCH OP(0)
            WIRE 704 1520 800 1520
            BEGIN DISPLAY 704 1520 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OP(1)
            WIRE 704 1584 800 1584
            BEGIN DISPLAY 704 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OP(2)
            WIRE 704 1648 800 1648
            BEGIN DISPLAY 704 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MD
            WIRE 704 1712 800 1712
            BEGIN DISPLAY 704 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 560 784 CE R180 28
        IOMARKER 560 848 C R180 28
        IOMARKER 560 912 R R180 28
        IOMARKER 560 720 R1(63:0) R180 28
        IOMARKER 560 1120 R2(63:0) R180 28
        BEGIN BRANCH OP(2:0)
            WIRE 400 1280 560 1280
        END BRANCH
        IOMARKER 400 1280 OP(2:0) R180 28
        IOMARKER 2960 1120 OVR R0 28
        IOMARKER 2960 1184 LT R0 28
        IOMARKER 2960 1248 GT R0 28
        IOMARKER 2960 1312 EQ R0 28
        IOMARKER 2960 720 Q(63:0) R0 28
        BEGIN BRANCH MD
            WIRE 400 1360 560 1360
        END BRANCH
        IOMARKER 400 1360 MD R180 28
        BEGIN BRANCH R
            WIRE 560 912 752 912
            WIRE 752 912 800 912
            WIRE 752 912 752 1312
            WIRE 752 1312 800 1312
            WIRE 752 1312 752 1936
            WIRE 752 1936 800 1936
        END BRANCH
        BEGIN BRANCH C
            WIRE 560 848 768 848
            WIRE 768 848 800 848
            WIRE 768 848 768 1248
            WIRE 768 1248 800 1248
            WIRE 768 1248 768 1840
            WIRE 768 1840 800 1840
        END BRANCH
        BEGIN BRANCH CE
            WIRE 560 784 784 784
            WIRE 784 784 800 784
            WIRE 784 784 784 1184
            WIRE 784 1184 800 1184
            WIRE 784 1184 784 1776
            WIRE 784 1776 800 1776
        END BRANCH
    END SHEET
END SCHEMATIC
