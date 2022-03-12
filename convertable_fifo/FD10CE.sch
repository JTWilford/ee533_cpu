VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL C
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL CLR
        SIGNAL CE
        SIGNAL XLXN_6
        SIGNAL D(8)
        SIGNAL D(9)
        SIGNAL D(7:0)
        SIGNAL Q(7:0)
        SIGNAL Q(8)
        SIGNAL Q(9)
        SIGNAL Q(9:0)
        SIGNAL D(9:0)
        PORT Input C
        PORT Input CLR
        PORT Input CE
        PORT Output Q(9:0)
        PORT Input D(9:0)
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D(7:0) D(7:0)
            PIN Q(7:0) Q(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 fdce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(8)
            PIN Q Q(8)
        END BLOCK
        BEGIN BLOCK XLXI_3 fdce
            PIN C C
            PIN CE CE
            PIN CLR CLR
            PIN D D(9)
            PIN Q Q(9)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1168 1280 R0
        INSTANCE XLXI_2 1168 832 R0
        INSTANCE XLXI_3 1168 416 R0
        BEGIN BRANCH C
            WIRE 1040 336 1120 336
            WIRE 1120 336 1136 336
            WIRE 1136 336 1152 336
            WIRE 1152 336 1152 704
            WIRE 1152 704 1168 704
            WIRE 1152 704 1152 1152
            WIRE 1152 1152 1168 1152
            WIRE 1152 288 1168 288
            WIRE 1152 288 1152 336
        END BRANCH
        BEGIN BRANCH CLR
            WIRE 1040 448 1136 448
            WIRE 1136 448 1136 800
            WIRE 1136 800 1168 800
            WIRE 1136 800 1136 1248
            WIRE 1136 1248 1168 1248
            WIRE 1136 384 1168 384
            WIRE 1136 384 1136 448
        END BRANCH
        IOMARKER 1040 336 C R180 28
        IOMARKER 1040 448 CLR R180 28
        BEGIN BRANCH CE
            WIRE 1008 528 1104 528
            WIRE 1104 528 1104 640
            WIRE 1104 640 1168 640
            WIRE 1104 640 1104 1088
            WIRE 1104 1088 1168 1088
            WIRE 1104 224 1168 224
            WIRE 1104 224 1104 528
        END BRANCH
        IOMARKER 1008 528 CE R180 28
        BEGIN BRANCH D(8)
            WIRE 848 576 1168 576
        END BRANCH
        BEGIN BRANCH D(9)
            WIRE 864 160 1168 160
        END BRANCH
        BEGIN BRANCH D(7:0)
            WIRE 864 1024 1168 1024
        END BRANCH
        BEGIN BRANCH Q(7:0)
            WIRE 1552 1024 1648 1024
        END BRANCH
        BEGIN BRANCH Q(8)
            WIRE 1552 576 1648 576
        END BRANCH
        BEGIN BRANCH Q(9)
            WIRE 1552 160 1648 160
        END BRANCH
        BEGIN BRANCH Q(9:0)
            WIRE 2016 352 2112 352
        END BRANCH
        IOMARKER 2112 352 Q(9:0) R0 28
        BEGIN BRANCH D(9:0)
            WIRE 544 384 656 384
        END BRANCH
        IOMARKER 544 384 D(9:0) R180 28
    END SHEET
END SCHEMATIC
