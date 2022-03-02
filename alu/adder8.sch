VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL A(0)
        SIGNAL B(0)
        SIGNAL B(1)
        SIGNAL A(1)
        SIGNAL B(2)
        SIGNAL A(2)
        SIGNAL B(3)
        SIGNAL A(3)
        SIGNAL B(4)
        SIGNAL A(4)
        SIGNAL B(5)
        SIGNAL A(5)
        SIGNAL B(6)
        SIGNAL A(6)
        SIGNAL B(7)
        SIGNAL A(7)
        SIGNAL S(7)
        SIGNAL S(6)
        SIGNAL S(5)
        SIGNAL S(4)
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL Cout
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL S(7:0)
        SIGNAL Cin
        PORT Output Cout
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output S(7:0)
        PORT Input Cin
        BEGIN BLOCKDEF full_adder
            TIMESTAMP 2022 1 29 11 1 44
            RECTANGLE N 64 -240 320 -48 
            LINE N 64 -208 0 -208 
            LINE N 320 -144 384 -144 
            LINE N 192 0 192 -48 
            LINE N 192 -288 192 -240 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 full_adder
            PIN A A(0)
            PIN S S(0)
            PIN CI Cin
            PIN CO XLXN_1
            PIN B B(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 full_adder
            PIN A A(1)
            PIN S S(1)
            PIN CI XLXN_1
            PIN CO XLXN_2
            PIN B B(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 full_adder
            PIN A A(2)
            PIN S S(2)
            PIN CI XLXN_2
            PIN CO XLXN_3
            PIN B B(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 full_adder
            PIN A A(3)
            PIN S S(3)
            PIN CI XLXN_3
            PIN CO XLXN_4
            PIN B B(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 full_adder
            PIN A A(4)
            PIN S S(4)
            PIN CI XLXN_4
            PIN CO XLXN_5
            PIN B B(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 full_adder
            PIN A A(5)
            PIN S S(5)
            PIN CI XLXN_5
            PIN CO XLXN_6
            PIN B B(5)
        END BLOCK
        BEGIN BLOCK XLXI_7 full_adder
            PIN A A(6)
            PIN S S(6)
            PIN CI XLXN_6
            PIN CO XLXN_7
            PIN B B(6)
        END BLOCK
        BEGIN BLOCK XLXI_22 full_adder
            PIN A A(7)
            PIN S S(7)
            PIN CI XLXN_7
            PIN CO Cout
            PIN B B(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 3280 1712 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_2 2880 1712 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_3 2480 1712 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2080 1712 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1680 1712 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1280 1712 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_7 880 1712 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_22 480 1712 R270
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 2880 1520 2992 1520
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 2480 1520 2592 1520
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 2080 1520 2192 1520
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1680 1520 1792 1520
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1280 1520 1392 1520
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 880 1520 992 1520
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 480 1520 592 1520
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 3072 1712 3072 1808
            WIRE 3072 1808 3072 1840
            BEGIN DISPLAY 3072 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(0)
            WIRE 3200 1712 3200 1808
            WIRE 3200 1808 3200 1840
            BEGIN DISPLAY 3200 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1)
            WIRE 2800 1712 2800 1808
            WIRE 2800 1808 2800 1840
            BEGIN DISPLAY 2800 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 2672 1712 2672 1808
            WIRE 2672 1808 2672 1840
            BEGIN DISPLAY 2672 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(2)
            WIRE 2400 1712 2400 1808
            WIRE 2400 1808 2400 1840
            BEGIN DISPLAY 2400 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 2272 1712 2272 1808
            WIRE 2272 1808 2272 1840
            BEGIN DISPLAY 2272 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3)
            WIRE 2000 1712 2000 1808
            WIRE 2000 1808 2000 1840
            BEGIN DISPLAY 2000 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 1872 1712 1872 1808
            WIRE 1872 1808 1872 1840
            BEGIN DISPLAY 1872 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(4)
            WIRE 1600 1712 1600 1808
            WIRE 1600 1808 1600 1840
            BEGIN DISPLAY 1600 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 1472 1712 1472 1808
            WIRE 1472 1808 1472 1840
            BEGIN DISPLAY 1472 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5)
            WIRE 1200 1712 1200 1808
            WIRE 1200 1808 1200 1840
            BEGIN DISPLAY 1200 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 1072 1712 1072 1808
            WIRE 1072 1808 1072 1840
            BEGIN DISPLAY 1072 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(6)
            WIRE 800 1712 800 1808
            WIRE 800 1808 800 1840
            BEGIN DISPLAY 800 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 672 1712 672 1808
            WIRE 672 1808 672 1840
            BEGIN DISPLAY 672 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7)
            WIRE 400 1712 400 1808
            WIRE 400 1808 400 1840
            BEGIN DISPLAY 400 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 272 1712 272 1808
            WIRE 272 1808 272 1840
            BEGIN DISPLAY 272 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 336 1200 336 1232
            WIRE 336 1232 336 1328
            BEGIN DISPLAY 336 1232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 736 1200 736 1232
            WIRE 736 1232 736 1328
            BEGIN DISPLAY 736 1232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 1136 1200 1136 1232
            WIRE 1136 1232 1136 1328
            BEGIN DISPLAY 1136 1232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 1536 1200 1536 1232
            WIRE 1536 1232 1536 1328
            BEGIN DISPLAY 1536 1232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 1936 1200 1936 1232
            WIRE 1936 1232 1936 1328
            BEGIN DISPLAY 1936 1232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 2336 1200 2336 1232
            WIRE 2336 1232 2336 1328
            BEGIN DISPLAY 2336 1232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 2736 1200 2736 1232
            WIRE 2736 1232 2736 1328
            BEGIN DISPLAY 2736 1232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 3136 1200 3136 1232
            WIRE 3136 1232 3136 1328
            BEGIN DISPLAY 3136 1232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 128 1200 128 1232
            WIRE 128 1232 128 1520
            WIRE 128 1520 192 1520
            BEGIN DISPLAY 128 1232 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 240 2080 272 2080
            WIRE 272 2080 400 2080
            BEGIN DISPLAY 272 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 240 2160 272 2160
            WIRE 272 2160 400 2160
            BEGIN DISPLAY 272 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 240 1040 272 1040
            WIRE 272 1040 400 1040
            BEGIN DISPLAY 272 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 240 960 272 960
            WIRE 272 960 400 960
            BEGIN DISPLAY 272 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 240 2080 A(7:0) R180 28
        IOMARKER 240 2160 B(7:0) R180 28
        IOMARKER 400 1040 S(7:0) R0 28
        IOMARKER 400 960 Cout R0 28
        BEGIN BRANCH Cin
            WIRE 3280 1520 3360 1520
            WIRE 3360 1520 3360 1808
            WIRE 3360 1808 3360 1840
            BEGIN DISPLAY 3360 1808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 240 2240 256 2240
            WIRE 256 2240 400 2240
            BEGIN DISPLAY 256 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 240 2240 Cin R180 28
    END SHEET
END SCHEMATIC
