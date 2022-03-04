VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL inc_ins(8:0)
        SIGNAL inc_ins(8)
        SIGNAL br_ins(8)
        SIGNAL XLXN_6
        SIGNAL ins_out(8)
        SIGNAL inc_ins(7)
        SIGNAL br_ins(7)
        SIGNAL branch
        SIGNAL ins_out(7)
        SIGNAL inc_ins(6)
        SIGNAL br_ins(6)
        SIGNAL XLXN_14
        SIGNAL ins_out(6)
        SIGNAL inc_ins(5)
        SIGNAL br_ins(5)
        SIGNAL XLXN_18
        SIGNAL ins_out(5)
        SIGNAL inc_ins(4)
        SIGNAL br_ins(4)
        SIGNAL XLXN_22
        SIGNAL ins_out(4)
        SIGNAL inc_ins(3)
        SIGNAL br_ins(3)
        SIGNAL XLXN_26
        SIGNAL ins_out(3)
        SIGNAL inc_ins(2)
        SIGNAL br_ins(2)
        SIGNAL XLXN_30
        SIGNAL ins_out(2)
        SIGNAL inc_ins(1)
        SIGNAL br_ins(1)
        SIGNAL XLXN_34
        SIGNAL ins_out(1)
        SIGNAL inc_ins(0)
        SIGNAL br_ins(0)
        SIGNAL XLXN_70
        SIGNAL br_ins(8:0)
        SIGNAL ins_out(8:0)
        SIGNAL ins_out(0)
        PORT Input inc_ins(8:0)
        PORT Input branch
        PORT Input br_ins(8:0)
        PORT Output ins_out(8:0)
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 m2_1
            PIN D0 inc_ins(8)
            PIN D1 br_ins(8)
            PIN S0 branch
            PIN O ins_out(8)
        END BLOCK
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 inc_ins(7)
            PIN D1 br_ins(7)
            PIN S0 branch
            PIN O ins_out(7)
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 inc_ins(6)
            PIN D1 br_ins(6)
            PIN S0 branch
            PIN O ins_out(6)
        END BLOCK
        BEGIN BLOCK XLXI_4 m2_1
            PIN D0 inc_ins(5)
            PIN D1 br_ins(5)
            PIN S0 branch
            PIN O ins_out(5)
        END BLOCK
        BEGIN BLOCK XLXI_5 m2_1
            PIN D0 inc_ins(4)
            PIN D1 br_ins(4)
            PIN S0 branch
            PIN O ins_out(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 m2_1
            PIN D0 inc_ins(3)
            PIN D1 br_ins(3)
            PIN S0 branch
            PIN O ins_out(3)
        END BLOCK
        BEGIN BLOCK XLXI_7 m2_1
            PIN D0 inc_ins(2)
            PIN D1 br_ins(2)
            PIN S0 branch
            PIN O ins_out(2)
        END BLOCK
        BEGIN BLOCK XLXI_8 m2_1
            PIN D0 inc_ins(1)
            PIN D1 br_ins(1)
            PIN S0 branch
            PIN O ins_out(1)
        END BLOCK
        BEGIN BLOCK XLXI_17 m2_1
            PIN D0 inc_ins(0)
            PIN D1 br_ins(0)
            PIN S0 branch
            PIN O ins_out(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH inc_ins(8:0)
            WIRE 624 240 784 240
        END BRANCH
        INSTANCE XLXI_1 1440 320 R0
        BEGIN BRANCH inc_ins(8)
            WIRE 1344 160 1440 160
        END BRANCH
        BEGIN BRANCH br_ins(8)
            WIRE 1344 224 1440 224
        END BRANCH
        BEGIN BRANCH ins_out(8)
            WIRE 1760 192 1872 192
        END BRANCH
        INSTANCE XLXI_2 1440 592 R0
        BEGIN BRANCH inc_ins(7)
            WIRE 1344 432 1440 432
        END BRANCH
        BEGIN BRANCH br_ins(7)
            WIRE 1344 496 1440 496
        END BRANCH
        BEGIN BRANCH branch
            WIRE 1040 1232 1408 1232
            WIRE 1408 1232 1408 1440
            WIRE 1408 1440 1440 1440
            WIRE 1408 1440 1408 1712
            WIRE 1408 1712 1440 1712
            WIRE 1408 1712 1408 2016
            WIRE 1408 2016 1440 2016
            WIRE 1408 2016 1408 2288
            WIRE 1408 2288 1424 2288
            WIRE 1424 2288 1440 2288
            WIRE 1408 2288 1408 2576
            WIRE 1408 2576 1456 2576
            WIRE 1408 288 1440 288
            WIRE 1408 288 1408 560
            WIRE 1408 560 1440 560
            WIRE 1408 560 1408 576
            WIRE 1408 576 1408 864
            WIRE 1408 864 1440 864
            WIRE 1408 864 1408 1136
            WIRE 1408 1136 1440 1136
            WIRE 1408 1136 1408 1216
            WIRE 1408 1216 1408 1232
        END BRANCH
        BEGIN BRANCH ins_out(7)
            WIRE 1760 464 1872 464
        END BRANCH
        INSTANCE XLXI_3 1440 896 R0
        BEGIN BRANCH inc_ins(6)
            WIRE 1344 736 1440 736
        END BRANCH
        BEGIN BRANCH br_ins(6)
            WIRE 1344 800 1440 800
        END BRANCH
        BEGIN BRANCH ins_out(6)
            WIRE 1760 768 1872 768
        END BRANCH
        INSTANCE XLXI_4 1440 1168 R0
        BEGIN BRANCH inc_ins(5)
            WIRE 1344 1008 1440 1008
        END BRANCH
        BEGIN BRANCH br_ins(5)
            WIRE 1344 1072 1440 1072
        END BRANCH
        BEGIN BRANCH ins_out(5)
            WIRE 1760 1040 1872 1040
        END BRANCH
        INSTANCE XLXI_5 1440 1472 R0
        BEGIN BRANCH inc_ins(4)
            WIRE 1344 1312 1440 1312
        END BRANCH
        BEGIN BRANCH br_ins(4)
            WIRE 1344 1376 1440 1376
        END BRANCH
        BEGIN BRANCH ins_out(4)
            WIRE 1760 1344 1872 1344
        END BRANCH
        INSTANCE XLXI_6 1440 1744 R0
        BEGIN BRANCH inc_ins(3)
            WIRE 1344 1584 1440 1584
        END BRANCH
        BEGIN BRANCH br_ins(3)
            WIRE 1344 1648 1440 1648
        END BRANCH
        BEGIN BRANCH ins_out(3)
            WIRE 1760 1616 1872 1616
        END BRANCH
        INSTANCE XLXI_7 1440 2048 R0
        BEGIN BRANCH inc_ins(2)
            WIRE 1344 1888 1440 1888
        END BRANCH
        BEGIN BRANCH br_ins(2)
            WIRE 1344 1952 1440 1952
        END BRANCH
        BEGIN BRANCH ins_out(2)
            WIRE 1760 1920 1872 1920
        END BRANCH
        INSTANCE XLXI_8 1440 2320 R0
        BEGIN BRANCH inc_ins(1)
            WIRE 1344 2160 1440 2160
        END BRANCH
        BEGIN BRANCH br_ins(1)
            WIRE 1344 2224 1440 2224
        END BRANCH
        BEGIN BRANCH ins_out(1)
            WIRE 1760 2192 1872 2192
        END BRANCH
        INSTANCE XLXI_17 1456 2608 R0
        BEGIN BRANCH inc_ins(0)
            WIRE 1344 2448 1456 2448
        END BRANCH
        BEGIN BRANCH br_ins(0)
            WIRE 1344 2512 1456 2512
        END BRANCH
        IOMARKER 624 240 inc_ins(8:0) R180 28
        BEGIN BRANCH br_ins(8:0)
            WIRE 624 320 800 320
        END BRANCH
        IOMARKER 624 320 br_ins(8:0) R180 28
        IOMARKER 1040 1232 branch R180 28
        BEGIN BRANCH ins_out(8:0)
            WIRE 2288 304 2448 304
        END BRANCH
        IOMARKER 2448 304 ins_out(8:0) R0 28
        BEGIN BRANCH ins_out(0)
            WIRE 1776 2480 1872 2480
        END BRANCH
    END SHEET
END SCHEMATIC
