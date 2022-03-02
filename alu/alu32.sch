VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ff_OVR
        SIGNAL A(15:0)
        SIGNAL A(31:16)
        SIGNAL CE
        SIGNAL CLK
        SIGNAL RST
        SIGNAL B(15:0)
        SIGNAL B(31:16)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL ff_A(31:0)
        SIGNAL ff_A(31:16)
        SIGNAL ff_A(15:0)
        SIGNAL ff_B(31:0)
        SIGNAL ff_B(15:0)
        SIGNAL ff_B(31:16)
        SIGNAL S(15:0)
        SIGNAL S(31:16)
        SIGNAL OVR
        SIGNAL S(31:0)
        SIGNAL ff_S(15:0)
        SIGNAL ff_S(31:16)
        SIGNAL XLXN_1
        SIGNAL XLXN_4
        SIGNAL XLXN_7
        SIGNAL ff_A(31:24)
        SIGNAL ff_A(23:16)
        SIGNAL xor_B(31:24)
        SIGNAL xor_B(23:16)
        SIGNAL ff_A(15:8)
        SIGNAL xor_B(15:8)
        SIGNAL ff_A(7:0)
        SIGNAL xor_B(7:0)
        SIGNAL add_S(7:0)
        SIGNAL add_S(15:8)
        SIGNAL add_S(23:16)
        SIGNAL add_S(31:24)
        SIGNAL add_S(31:0)
        SIGNAL opSub
        SIGNAL shft_S(31:0)
        SIGNAL ff_B(4:0)
        SIGNAL invB
        SIGNAL xor_B(31:0)
        SIGNAL xor_A(31:0)
        SIGNAL invA
        SIGNAL and_S(31:0)
        SIGNAL invLogi
        SIGNAL logi_S(31:0)
        SIGNAL opNoop
        SIGNAL Op(0)
        SIGNAL Op(1)
        SIGNAL Op(2)
        SIGNAL ff_Op2
        SIGNAL ff_Op1
        SIGNAL ff_Op0
        SIGNAL opShift
        SIGNAL opAnd
        SIGNAL opOr
        SIGNAL opNand
        SIGNAL opNor
        SIGNAL opAdd
        SIGNAL XLXN_366(31:0)
        SIGNAL ff_S(31:0)
        SIGNAL Op(2:0)
        SIGNAL XLXN_371
        SIGNAL add_OVR
        SIGNAL XLXN_376
        PORT Input CE
        PORT Input CLK
        PORT Input RST
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output OVR
        PORT Output S(31:0)
        PORT Input Op(2:0)
        BEGIN BLOCKDEF adder8
            TIMESTAMP 2022 1 29 11 44 44
            LINE N 64 32 0 32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -128 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd16re
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 320 -268 384 -244 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fdre
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF xor32_by_1
            TIMESTAMP 2022 1 29 13 43 22
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
        BEGIN BLOCKDEF shift32
            TIMESTAMP 2022 1 29 15 29 38
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and_x32
            TIMESTAMP 2022 1 29 16 3 54
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -128 64 0 
            LINE N 64 0 160 0 
            LINE N 64 -128 160 -128 
            LINE N 160 -128 192 -128 
            LINE N 160 0 192 0 
            ARC N 124 -128 252 0 192 0 192 -128 
            LINE N 320 -64 252 -64 
            RECTANGLE N 252 -76 320 -52 
        END BLOCKDEF
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
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF mux_x32
            TIMESTAMP 2022 1 29 17 4 19
            LINE N 64 -144 0 -144 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -80 0 -80 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -168 64 -56 
            LINE N 64 -56 192 -88 
            LINE N 192 -88 192 -120 
            LINE N 192 -132 64 -168 
            LINE N 192 -120 192 -132 
            LINE N 192 -112 256 -112 
            RECTANGLE N 192 -124 256 -100 
            LINE N 96 -64 96 0 
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
        BEGIN BLOCK ALU_rA_low fd16re
            PIN C CLK
            PIN CE CE
            PIN D(15:0) A(15:0)
            PIN R RST
            PIN Q(15:0) ff_A(15:0)
        END BLOCK
        BEGIN BLOCK ALU_rA_hi fd16re
            PIN C CLK
            PIN CE CE
            PIN D(15:0) A(31:16)
            PIN R RST
            PIN Q(15:0) ff_A(31:16)
        END BLOCK
        BEGIN BLOCK ALU_rB_low fd16re
            PIN C CLK
            PIN CE CE
            PIN D(15:0) B(15:0)
            PIN R RST
            PIN Q(15:0) ff_B(15:0)
        END BLOCK
        BEGIN BLOCK ALU_rB_hi fd16re
            PIN C CLK
            PIN CE CE
            PIN D(15:0) B(31:16)
            PIN R RST
            PIN Q(15:0) ff_B(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_9 fd16re
            PIN C CLK
            PIN CE CE
            PIN D(15:0) ff_S(15:0)
            PIN R opNoop
            PIN Q(15:0) S(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 fd16re
            PIN C CLK
            PIN CE CE
            PIN D(15:0) ff_S(31:16)
            PIN R opNoop
            PIN Q(15:0) S(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_14 fdre
            PIN C CLK
            PIN CE CE
            PIN D ff_OVR
            PIN R opNoop
            PIN Q OVR
        END BLOCK
        BEGIN BLOCK XLXI_2 adder8
            PIN A(7:0) ff_A(15:8)
            PIN B(7:0) xor_B(15:8)
            PIN Cout XLXN_4
            PIN S(7:0) add_S(15:8)
            PIN Cin XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_3 adder8
            PIN A(7:0) ff_A(23:16)
            PIN B(7:0) xor_B(23:16)
            PIN Cout XLXN_7
            PIN S(7:0) add_S(23:16)
            PIN Cin XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_4 adder8
            PIN A(7:0) ff_A(31:24)
            PIN B(7:0) xor_B(31:24)
            PIN Cout add_OVR
            PIN S(7:0) add_S(31:24)
            PIN Cin XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_1 adder8
            PIN A(7:0) ff_A(7:0)
            PIN B(7:0) xor_B(7:0)
            PIN Cout XLXN_1
            PIN S(7:0) add_S(7:0)
            PIN Cin opSub
        END BLOCK
        BEGIN BLOCK XLXI_59 shift32
            PIN A(31:0) ff_A(31:0)
            PIN Q(4:0) ff_B(4:0)
            PIN S(31:0) shft_S(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_57 xor32_by_1
            PIN A(31:0) ff_B(31:0)
            PIN B invB
            PIN S(31:0) xor_B(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_64 xor32_by_1
            PIN A(31:0) ff_A(31:0)
            PIN B invA
            PIN S(31:0) xor_A(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_65 and_x32
            PIN A(31:0) xor_A(31:0)
            PIN B(31:0) xor_B(31:0)
            PIN S(31:0) and_S(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_68 xor32_by_1
            PIN A(31:0) and_S(31:0)
            PIN B invLogi
            PIN S(31:0) logi_S(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_73 d3_8e
            PIN A0 ff_Op0
            PIN A1 ff_Op1
            PIN A2 ff_Op2
            PIN E CE
            PIN D0 opNoop
            PIN D1 opShift
            PIN D2 opAdd
            PIN D3 opSub
            PIN D4 opAnd
            PIN D5 opOr
            PIN D6 opNand
            PIN D7 opNor
        END BLOCK
        BEGIN BLOCK XLXI_74 fdre
            PIN C CLK
            PIN CE CE
            PIN D Op(0)
            PIN R RST
            PIN Q ff_Op0
        END BLOCK
        BEGIN BLOCK XLXI_75 fdre
            PIN C CLK
            PIN CE CE
            PIN D Op(1)
            PIN R RST
            PIN Q ff_Op1
        END BLOCK
        BEGIN BLOCK XLXI_76 fdre
            PIN C CLK
            PIN CE CE
            PIN D Op(2)
            PIN R RST
            PIN Q ff_Op2
        END BLOCK
        BEGIN BLOCK XLXI_77 or2
            PIN I0 opNor
            PIN I1 opOr
            PIN O invA
        END BLOCK
        BEGIN BLOCK XLXI_79 or2
            PIN I0 invA
            PIN I1 opSub
            PIN O invB
        END BLOCK
        BEGIN BLOCK XLXI_80 or2
            PIN I0 opNand
            PIN I1 opOr
            PIN O invLogi
        END BLOCK
        BEGIN BLOCK XLXI_81 mux_x32
            PIN A(31:0) shft_S(31:0)
            PIN B(31:0) add_S(31:0)
            PIN Q ff_Op1
            PIN S(31:0) XLXN_366(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_82 mux_x32
            PIN A(31:0) XLXN_366(31:0)
            PIN B(31:0) logi_S(31:0)
            PIN Q ff_Op2
            PIN S(31:0) ff_S(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_83 or2
            PIN I0 opSub
            PIN I1 opAdd
            PIN O XLXN_371
        END BLOCK
        BEGIN BLOCK XLXI_84 and2
            PIN I0 XLXN_371
            PIN I1 add_OVR
            PIN O ff_OVR
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        INSTANCE ALU_rA_low 2272 2624 R0
        INSTANCE ALU_rA_hi 2272 2240 R0
        BEGIN BRANCH A(15:0)
            WIRE 2096 2368 2176 2368
            WIRE 2176 2368 2272 2368
            BEGIN DISPLAY 2176 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:16)
            WIRE 2096 1984 2176 1984
            WIRE 2176 1984 2272 1984
            BEGIN DISPLAY 2176 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 2096 2048 2176 2048
            WIRE 2176 2048 2272 2048
            BEGIN DISPLAY 2176 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2096 2112 2176 2112
            WIRE 2176 2112 2272 2112
            BEGIN DISPLAY 2176 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RST
            WIRE 2096 2208 2176 2208
            WIRE 2176 2208 2272 2208
            BEGIN DISPLAY 2176 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 2096 2432 2176 2432
            WIRE 2176 2432 2272 2432
            BEGIN DISPLAY 2176 2432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2096 2496 2176 2496
            WIRE 2176 2496 2272 2496
            BEGIN DISPLAY 2176 2496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RST
            WIRE 2096 2592 2176 2592
            WIRE 2176 2592 2272 2592
            BEGIN DISPLAY 2176 2592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE ALU_rB_low 2272 1840 R0
        INSTANCE ALU_rB_hi 2272 1456 R0
        BEGIN BRANCH B(15:0)
            WIRE 2096 1584 2176 1584
            WIRE 2176 1584 2272 1584
            BEGIN DISPLAY 2176 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:16)
            WIRE 2096 1200 2176 1200
            WIRE 2176 1200 2272 1200
            BEGIN DISPLAY 2176 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 2096 1264 2176 1264
            WIRE 2176 1264 2272 1264
            BEGIN DISPLAY 2176 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2096 1328 2176 1328
            WIRE 2176 1328 2272 1328
            BEGIN DISPLAY 2176 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RST
            WIRE 2096 1424 2176 1424
            WIRE 2176 1424 2272 1424
            BEGIN DISPLAY 2176 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 2096 1648 2176 1648
            WIRE 2176 1648 2272 1648
            BEGIN DISPLAY 2176 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2096 1712 2176 1712
            WIRE 2176 1712 2272 1712
            BEGIN DISPLAY 2176 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RST
            WIRE 2096 1808 2176 1808
            WIRE 2176 1808 2272 1808
            BEGIN DISPLAY 2176 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 1856 2368 1936 2368
            WIRE 1936 2368 2016 2368
            BEGIN DISPLAY 1936 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 1856 2288 1936 2288
            WIRE 1936 2288 2016 2288
            BEGIN DISPLAY 1936 2288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_A(31:0)
            WIRE 2816 1968 2816 1984
            WIRE 2816 1984 2816 2160
            WIRE 2816 2160 2816 2368
            WIRE 2816 2368 2816 2448
            BEGIN DISPLAY 2816 2160 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2816 1984 2720 1984
        BUSTAP 2816 2368 2720 2368
        BEGIN BRANCH ff_A(31:16)
            WIRE 2656 1984 2688 1984
            WIRE 2688 1984 2720 1984
            BEGIN DISPLAY 2688 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_A(15:0)
            WIRE 2656 2368 2688 2368
            WIRE 2688 2368 2720 2368
            BEGIN DISPLAY 2688 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_B(31:0)
            WIRE 2816 1168 2816 1200
            WIRE 2816 1200 2816 1344
            WIRE 2816 1344 2816 1584
            WIRE 2816 1584 2816 1648
            BEGIN DISPLAY 2816 1344 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2816 1200 2720 1200
        BUSTAP 2816 1584 2720 1584
        BEGIN BRANCH ff_B(15:0)
            WIRE 2656 1584 2688 1584
            WIRE 2688 1584 2720 1584
            BEGIN DISPLAY 2688 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_B(31:16)
            WIRE 2656 1200 2688 1200
            WIRE 2688 1200 2720 1200
            BEGIN DISPLAY 2688 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2096 1264 CE R180 28
        IOMARKER 2096 1328 CLK R180 28
        IOMARKER 2096 1424 RST R180 28
        IOMARKER 1856 2368 A(31:0) R180 28
        IOMARKER 1856 2288 B(31:0) R180 28
        INSTANCE XLXI_9 4912 2624 R0
        INSTANCE XLXI_10 4912 2240 R0
        BEGIN BRANCH S(15:0)
            WIRE 5296 2368 5392 2368
            WIRE 5392 2368 5472 2368
            BEGIN DISPLAY 5392 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:16)
            WIRE 5296 1984 5392 1984
            WIRE 5392 1984 5472 1984
            BEGIN DISPLAY 5392 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 4752 2432 4832 2432
            WIRE 4832 2432 4912 2432
            BEGIN DISPLAY 4832 2432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 4752 2496 4832 2496
            WIRE 4832 2496 4912 2496
            BEGIN DISPLAY 4832 2496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opNoop
            WIRE 4752 2592 4832 2592
            WIRE 4832 2592 4912 2592
            BEGIN DISPLAY 4832 2592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opNoop
            WIRE 4752 2208 4832 2208
            WIRE 4832 2208 4912 2208
            BEGIN DISPLAY 4832 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 4752 2112 4832 2112
            WIRE 4832 2112 4912 2112
            BEGIN DISPLAY 4832 2112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 4752 2048 4832 2048
            WIRE 4832 2048 4912 2048
            BEGIN DISPLAY 4832 2048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_14 4912 1792 R0
        BEGIN BRANCH ff_OVR
            WIRE 4608 1856 4672 1856
            WIRE 4672 1536 4672 1856
            WIRE 4672 1536 4752 1536
            WIRE 4752 1536 4832 1536
            WIRE 4832 1536 4912 1536
            BEGIN DISPLAY 4832 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 4752 1600 4832 1600
            WIRE 4832 1600 4912 1600
            BEGIN DISPLAY 4832 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 4752 1664 4832 1664
            WIRE 4832 1664 4912 1664
            BEGIN DISPLAY 4832 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opNoop
            WIRE 4752 1760 4832 1760
            WIRE 4832 1760 4912 1760
            BEGIN DISPLAY 4832 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OVR
            WIRE 5296 1536 5392 1536
            WIRE 5392 1536 5472 1536
            BEGIN DISPLAY 5392 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 5472 2608 5552 2608
            WIRE 5552 2608 5632 2608
            BEGIN DISPLAY 5552 2608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_S(15:0)
            WIRE 4752 2368 4832 2368
            WIRE 4832 2368 4912 2368
            BEGIN DISPLAY 4832 2368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_S(31:16)
            WIRE 4752 1984 4832 1984
            WIRE 4832 1984 4912 1984
            BEGIN DISPLAY 4832 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 5472 1536 OVR R0 28
        IOMARKER 5632 2608 S(31:0) R0 28
        BEGIN INSTANCE XLXI_2 3552 1344 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 3552 976 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 3552 624 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 3552 1712 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 3472 1376 3552 1376
            WIRE 3472 1376 3472 1472
            WIRE 3472 1472 4000 1472
            WIRE 4000 1472 4000 1616
            WIRE 3936 1616 4000 1616
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 3472 1008 3552 1008
            WIRE 3472 1008 3472 1104
            WIRE 3472 1104 4000 1104
            WIRE 4000 1104 4000 1248
            WIRE 3936 1248 4000 1248
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 3472 656 3552 656
            WIRE 3472 656 3472 736
            WIRE 3472 736 4000 736
            WIRE 4000 736 4000 880
            WIRE 3936 880 4000 880
        END BRANCH
        BEGIN BRANCH ff_A(31:24)
            WIRE 3280 528 3360 528
            WIRE 3360 528 3552 528
            BEGIN DISPLAY 3360 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_A(23:16)
            WIRE 3280 880 3360 880
            WIRE 3360 880 3552 880
            BEGIN DISPLAY 3360 880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH xor_B(31:24)
            WIRE 3280 592 3360 592
            WIRE 3360 592 3552 592
            BEGIN DISPLAY 3360 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH xor_B(23:16)
            WIRE 3280 944 3360 944
            WIRE 3360 944 3552 944
            BEGIN DISPLAY 3360 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_A(15:8)
            WIRE 3280 1248 3360 1248
            WIRE 3360 1248 3552 1248
            BEGIN DISPLAY 3360 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH xor_B(15:8)
            WIRE 3280 1312 3360 1312
            WIRE 3360 1312 3552 1312
            BEGIN DISPLAY 3360 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_A(7:0)
            WIRE 3280 1616 3360 1616
            WIRE 3360 1616 3552 1616
            BEGIN DISPLAY 3360 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH xor_B(7:0)
            WIRE 3280 1680 3360 1680
            WIRE 3360 1680 3552 1680
            BEGIN DISPLAY 3360 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH add_S(7:0)
            WIRE 3936 1680 4048 1680
            WIRE 4048 1680 4144 1680
            BEGIN DISPLAY 4048 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH add_S(15:8)
            WIRE 3936 1312 4048 1312
            WIRE 4048 1312 4144 1312
            BEGIN DISPLAY 4048 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH add_S(23:16)
            WIRE 3936 944 4064 944
            WIRE 4064 944 4144 944
            BEGIN DISPLAY 4064 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH add_S(31:24)
            WIRE 3936 592 4064 592
            WIRE 4064 592 4144 592
            BEGIN DISPLAY 4064 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH add_OVR
            WIRE 3936 528 4160 528
            WIRE 4160 528 4176 528
            WIRE 4176 528 4240 528
            BEGIN DISPLAY 4176 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opSub
            WIRE 3280 1744 3360 1744
            WIRE 3360 1744 3552 1744
            BEGIN DISPLAY 3360 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH add_S(31:0)
            WIRE 4240 576 4240 592
            WIRE 4240 592 4240 944
            WIRE 4240 944 4240 1104
            WIRE 4240 1104 4240 1136
            WIRE 4240 1136 4240 1312
            WIRE 4240 1312 4240 1680
            WIRE 4240 1680 4240 1696
            BEGIN DISPLAY 4240 1136 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4240 944 4144 944
        BUSTAP 4240 592 4144 592
        BUSTAP 4240 1312 4144 1312
        BUSTAP 4240 1680 4144 1680
        BEGIN INSTANCE XLXI_59 3552 2496 R0
        END INSTANCE
        BEGIN BRANCH shft_S(31:0)
            WIRE 3936 2400 4080 2400
            WIRE 4080 2400 4160 2400
            BEGIN DISPLAY 4080 2400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_A(31:0)
            WIRE 3280 2400 3360 2400
            WIRE 3360 2400 3552 2400
            BEGIN DISPLAY 3360 2400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_B(4:0)
            WIRE 3280 2464 3360 2464
            WIRE 3360 2464 3552 2464
            BEGIN DISPLAY 3360 2464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_57 3280 2000 R0
        END INSTANCE
        BEGIN BRANCH ff_B(31:0)
            WIRE 3120 1920 3152 1920
            WIRE 3152 1920 3280 1920
            BEGIN DISPLAY 3152 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH invB
            WIRE 3120 1968 3152 1968
            WIRE 3152 1968 3280 1968
            BEGIN DISPLAY 3152 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH xor_B(31:0)
            WIRE 3584 1936 3680 1936
            WIRE 3680 1936 3760 1936
            BEGIN DISPLAY 3680 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_64 3280 2208 R0
        END INSTANCE
        BEGIN BRANCH xor_A(31:0)
            WIRE 3584 2144 3680 2144
            WIRE 3680 2144 3760 2144
            BEGIN DISPLAY 3680 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_A(31:0)
            WIRE 3120 2128 3168 2128
            WIRE 3168 2128 3280 2128
            BEGIN DISPLAY 3168 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH invA
            WIRE 3120 2176 3152 2176
            WIRE 3152 2176 3280 2176
            BEGIN DISPLAY 3152 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_65 3600 2784 R0
        END INSTANCE
        BEGIN BRANCH xor_A(31:0)
            WIRE 3440 2688 3520 2688
            WIRE 3520 2688 3600 2688
            BEGIN DISPLAY 3520 2688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH xor_B(31:0)
            WIRE 3440 2752 3520 2752
            WIRE 3520 2752 3600 2752
            BEGIN DISPLAY 3520 2752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH and_S(31:0)
            WIRE 3920 2720 4080 2720
            WIRE 4080 2720 4160 2720
            BEGIN DISPLAY 4080 2720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_68 3600 3040 R0
        END INSTANCE
        BEGIN BRANCH and_S(31:0)
            WIRE 3440 2960 3504 2960
            WIRE 3504 2960 3600 2960
            BEGIN DISPLAY 3504 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH invLogi
            WIRE 3440 3008 3488 3008
            WIRE 3488 3008 3600 3008
            BEGIN DISPLAY 3488 3008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH logi_S(31:0)
            WIRE 3904 2976 4080 2976
            WIRE 4080 2976 4160 2976
            BEGIN DISPLAY 4080 2976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_74 2272 3008 R0
        INSTANCE XLXI_75 2272 3376 R0
        INSTANCE XLXI_76 2272 3744 R0
        BEGIN BRANCH CE
            WIRE 2096 2816 2176 2816
            WIRE 2176 2816 2272 2816
            BEGIN DISPLAY 2176 2816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2096 2880 2176 2880
            WIRE 2176 2880 2272 2880
            BEGIN DISPLAY 2176 2880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RST
            WIRE 2096 2976 2176 2976
            WIRE 2176 2976 2272 2976
            BEGIN DISPLAY 2176 2976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 2096 3184 2176 3184
            WIRE 2176 3184 2272 3184
            BEGIN DISPLAY 2176 3184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2096 3248 2176 3248
            WIRE 2176 3248 2272 3248
            BEGIN DISPLAY 2176 3248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RST
            WIRE 2096 3344 2176 3344
            WIRE 2176 3344 2272 3344
            BEGIN DISPLAY 2176 3344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 2096 3552 2176 3552
            WIRE 2176 3552 2272 3552
            BEGIN DISPLAY 2176 3552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 2096 3616 2176 3616
            WIRE 2176 3616 2272 3616
            BEGIN DISPLAY 2176 3616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RST
            WIRE 2096 3712 2176 3712
            WIRE 2176 3712 2272 3712
            BEGIN DISPLAY 2176 3712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Op(0)
            WIRE 2096 2752 2160 2752
            WIRE 2160 2752 2272 2752
            BEGIN DISPLAY 2160 2752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Op(1)
            WIRE 2096 3120 2160 3120
            WIRE 2160 3120 2272 3120
            BEGIN DISPLAY 2160 3120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Op(2)
            WIRE 2096 3488 2160 3488
            WIRE 2160 3488 2272 3488
            BEGIN DISPLAY 2160 3488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_Op2
            WIRE 2656 3488 2736 3488
            WIRE 2736 3488 2800 3488
            BEGIN DISPLAY 2736 3488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_Op1
            WIRE 2656 3120 2720 3120
            WIRE 2720 3120 2800 3120
            BEGIN DISPLAY 2720 3120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_Op0
            WIRE 2656 2752 2720 2752
            WIRE 2720 2752 2800 2752
            BEGIN DISPLAY 2720 2752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_73 2992 3728 R0
        BEGIN BRANCH ff_Op0
            WIRE 2880 3152 2928 3152
            WIRE 2928 3152 2992 3152
            BEGIN DISPLAY 2928 3152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_Op1
            WIRE 2880 3216 2928 3216
            WIRE 2928 3216 2992 3216
            BEGIN DISPLAY 2928 3216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_Op2
            WIRE 2880 3280 2928 3280
            WIRE 2928 3280 2992 3280
            BEGIN DISPLAY 2928 3280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opNoop
            WIRE 3376 3152 3440 3152
            WIRE 3440 3152 3520 3152
            BEGIN DISPLAY 3440 3152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opShift
            WIRE 3376 3216 3440 3216
            WIRE 3440 3216 3520 3216
            BEGIN DISPLAY 3440 3216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opAdd
            WIRE 3376 3280 3440 3280
            WIRE 3440 3280 3520 3280
            BEGIN DISPLAY 3440 3280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opSub
            WIRE 3376 3344 3440 3344
            WIRE 3440 3344 3520 3344
            BEGIN DISPLAY 3440 3344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opAnd
            WIRE 3376 3408 3440 3408
            WIRE 3440 3408 3520 3408
            BEGIN DISPLAY 3440 3408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opOr
            WIRE 3376 3472 3440 3472
            WIRE 3440 3472 3520 3472
            BEGIN DISPLAY 3440 3472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opNand
            WIRE 3376 3536 3440 3536
            WIRE 3440 3536 3520 3536
            BEGIN DISPLAY 3440 3536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opNor
            WIRE 3376 3600 3440 3600
            WIRE 3440 3600 3520 3600
            BEGIN DISPLAY 3440 3600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE
            WIRE 2880 3600 2928 3600
            WIRE 2928 3600 2992 3600
            BEGIN DISPLAY 2928 3600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_77 3760 3248 R0
        BEGIN BRANCH opOr
            WIRE 3680 3120 3712 3120
            WIRE 3712 3120 3760 3120
            BEGIN DISPLAY 3712 3120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opNor
            WIRE 3680 3184 3712 3184
            WIRE 3712 3184 3760 3184
            BEGIN DISPLAY 3712 3184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH invA
            WIRE 4016 3152 4048 3152
            WIRE 4048 3152 4080 3152
            BEGIN DISPLAY 4048 3152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH invB
            WIRE 4016 3360 4048 3360
            WIRE 4048 3360 4080 3360
            BEGIN DISPLAY 4048 3360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_79 3760 3456 R0
        BEGIN BRANCH opSub
            WIRE 3680 3328 3712 3328
            WIRE 3712 3328 3760 3328
            BEGIN DISPLAY 3712 3328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH invA
            WIRE 3680 3392 3712 3392
            WIRE 3712 3392 3760 3392
            BEGIN DISPLAY 3712 3392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_80 3760 3632 R0
        BEGIN BRANCH opOr
            WIRE 3680 3504 3728 3504
            WIRE 3728 3504 3760 3504
            BEGIN DISPLAY 3728 3504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opNand
            WIRE 3680 3568 3728 3568
            WIRE 3728 3568 3760 3568
            BEGIN DISPLAY 3728 3568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH invLogi
            WIRE 4016 3536 4048 3536
            WIRE 4048 3536 4080 3536
            BEGIN DISPLAY 4048 3536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_81 4480 3184 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_82 4880 3216 R0
        END INSTANCE
        BEGIN BRANCH logi_S(31:0)
            WIRE 4800 3136 4880 3136
            WIRE 4800 3136 4800 3248
            WIRE 4800 3248 4800 3280
            BEGIN DISPLAY 4800 3248 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH add_S(31:0)
            WIRE 4320 3104 4384 3104
            WIRE 4384 3104 4480 3104
            BEGIN DISPLAY 4384 3104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH shft_S(31:0)
            WIRE 4320 3040 4384 3040
            WIRE 4384 3040 4480 3040
            BEGIN DISPLAY 4384 3040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_366(31:0)
            WIRE 4736 3072 4880 3072
        END BRANCH
        BEGIN BRANCH ff_S(31:0)
            WIRE 5136 3104 5232 3104
            WIRE 5232 3104 5280 3104
            BEGIN DISPLAY 5232 3104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_Op2
            WIRE 4976 3216 4976 3248
            WIRE 4976 3248 4976 3280
            BEGIN DISPLAY 4976 3248 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ff_Op1
            WIRE 4576 3184 4576 3232
            WIRE 4576 3232 4576 3264
            BEGIN DISPLAY 4576 3232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Op(2:0)
            WIRE 1840 2480 1920 2480
            WIRE 1920 2480 2000 2480
            BEGIN DISPLAY 1920 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1840 2480 Op(2:0) R180 28
        INSTANCE XLXI_83 4064 1984 R0
        BEGIN BRANCH XLXN_371
            WIRE 4320 1888 4352 1888
        END BRANCH
        INSTANCE XLXI_84 4352 1952 R0
        BEGIN BRANCH add_OVR
            WIRE 4240 1824 4304 1824
            WIRE 4304 1824 4320 1824
            WIRE 4320 1824 4352 1824
            BEGIN DISPLAY 4304 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opAdd
            WIRE 3968 1856 4016 1856
            WIRE 4016 1856 4064 1856
            BEGIN DISPLAY 4016 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opSub
            WIRE 3968 1920 4016 1920
            WIRE 4016 1920 4064 1920
            BEGIN DISPLAY 4016 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
