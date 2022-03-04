VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL en
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL clr
        SIGNAL XLXN_8
        SIGNAL clk
        SIGNAL XLXN_10
        SIGNAL wRegEnin
        SIGNAL wMemEnin
        SIGNAL wRegEnout
        SIGNAL wMemEnout
        SIGNAL R1dataout(31:0)
        SIGNAL R2dataout(31:0)
        SIGNAL Wregout(2)
        SIGNAL Wregout(1)
        SIGNAL Wregout(0)
        SIGNAL R1datain(31:0)
        SIGNAL R2datain(31:0)
        SIGNAL Wregin(2:0)
        SIGNAL Wregout(2:0)
        SIGNAL Wregin(2)
        SIGNAL Wregin(1)
        SIGNAL Wregin(0)
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        PORT Input en
        PORT Input clr
        PORT Input clk
        PORT Input wRegEnin
        PORT Input wMemEnin
        PORT Output wRegEnout
        PORT Output wMemEnout
        PORT Output R1dataout(31:0)
        PORT Output R2dataout(31:0)
        PORT Input R1datain(31:0)
        PORT Input R2datain(31:0)
        PORT Input Wregin(2:0)
        PORT Output Wregout(2:0)
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
        BEGIN BLOCK XLXI_7 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D wRegEnin
            PIN Q wRegEnout
        END BLOCK
        BEGIN BLOCK XLXI_1 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(31:0) R1datain(31:0)
            PIN o(31:0) R1dataout(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(31:0) R2datain(31:0)
            PIN o(31:0) R2dataout(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D wMemEnin
            PIN Q wMemEnout
        END BLOCK
        BEGIN BLOCK XLXI_11 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D Wregin(2)
            PIN Q Wregout(2)
        END BLOCK
        BEGIN BLOCK XLXI_12 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D Wregin(1)
            PIN Q Wregout(1)
        END BLOCK
        BEGIN BLOCK XLXI_13 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D Wregin(0)
            PIN Q Wregout(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_7 1152 400 R0
        BEGIN INSTANCE XLXI_1 1216 1024 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1216 1312 R0
        END INSTANCE
        INSTANCE XLXI_10 1152 752 R0
        INSTANCE XLXI_11 1168 1728 R0
        INSTANCE XLXI_12 1168 2080 R0
        INSTANCE XLXI_13 1184 2448 R0
        BEGIN BRANCH en
            WIRE 864 288 1024 288
            WIRE 1024 288 1024 560
            WIRE 1024 560 1152 560
            WIRE 1024 560 1024 864
            WIRE 1024 864 1216 864
            WIRE 1024 864 1024 1152
            WIRE 1024 1152 1024 1536
            WIRE 1024 1536 1168 1536
            WIRE 1024 1536 1024 1888
            WIRE 1024 1888 1024 2256
            WIRE 1024 2256 1184 2256
            WIRE 1024 1888 1168 1888
            WIRE 1024 1152 1216 1152
            WIRE 1024 208 1152 208
            WIRE 1024 208 1024 224
            WIRE 1024 224 1024 288
        END BRANCH
        BEGIN BRANCH clr
            WIRE 880 432 1104 432
            WIRE 1104 432 1104 720
            WIRE 1104 720 1152 720
            WIRE 1104 720 1104 1104
            WIRE 1104 1104 1104 1360
            WIRE 1104 1360 1104 1696
            WIRE 1104 1696 1168 1696
            WIRE 1104 1696 1104 2048
            WIRE 1104 2048 1168 2048
            WIRE 1104 2048 1104 2416
            WIRE 1104 2416 1184 2416
            WIRE 1104 1360 1376 1360
            WIRE 1104 1104 1376 1104
            WIRE 1104 368 1152 368
            WIRE 1104 368 1104 432
            WIRE 1376 1024 1376 1104
            WIRE 1376 1312 1376 1360
        END BRANCH
        BEGIN BRANCH clk
            WIRE 864 352 1056 352
            WIRE 1056 352 1056 624
            WIRE 1056 624 1152 624
            WIRE 1056 624 1056 1056
            WIRE 1056 1056 1056 1312
            WIRE 1056 1312 1056 1328
            WIRE 1056 1328 1056 1600
            WIRE 1056 1600 1056 1952
            WIRE 1056 1952 1056 2320
            WIRE 1056 2320 1184 2320
            WIRE 1056 1952 1168 1952
            WIRE 1056 1600 1152 1600
            WIRE 1152 1600 1168 1600
            WIRE 1056 1328 1312 1328
            WIRE 1056 1056 1312 1056
            WIRE 1056 272 1152 272
            WIRE 1056 272 1056 352
            WIRE 1312 1024 1312 1056
            WIRE 1312 1312 1312 1328
        END BRANCH
        BEGIN BRANCH wRegEnin
            WIRE 864 144 1152 144
        END BRANCH
        BEGIN BRANCH wMemEnin
            WIRE 864 496 1152 496
        END BRANCH
        IOMARKER 864 144 wRegEnin R180 28
        IOMARKER 864 288 en R180 28
        IOMARKER 864 352 clk R180 28
        IOMARKER 880 432 clr R180 28
        IOMARKER 864 496 wMemEnin R180 28
        BEGIN BRANCH wRegEnout
            WIRE 1536 144 1632 144
        END BRANCH
        BEGIN BRANCH wMemEnout
            WIRE 1536 496 1632 496
        END BRANCH
        BEGIN BRANCH R1dataout(31:0)
            WIRE 1472 864 1600 864
        END BRANCH
        BEGIN BRANCH R2dataout(31:0)
            WIRE 1472 1152 1584 1152
        END BRANCH
        BEGIN BRANCH Wregout(2)
            WIRE 1552 1472 1632 1472
        END BRANCH
        BEGIN BRANCH Wregout(1)
            WIRE 1552 1824 1648 1824
        END BRANCH
        BEGIN BRANCH Wregout(0)
            WIRE 1568 2192 1648 2192
        END BRANCH
        BEGIN BRANCH R1datain(31:0)
            WIRE 992 928 1216 928
        END BRANCH
        BEGIN BRANCH R2datain(31:0)
            WIRE 992 1216 1216 1216
        END BRANCH
        IOMARKER 992 928 R1datain(31:0) R180 28
        IOMARKER 992 1216 R2datain(31:0) R180 28
        IOMARKER 1600 864 R1dataout(31:0) R0 28
        IOMARKER 1584 1152 R2dataout(31:0) R0 28
        IOMARKER 1632 496 wMemEnout R0 28
        IOMARKER 1632 144 wRegEnout R0 28
        BEGIN BRANCH Wregin(2:0)
            WIRE 416 1440 576 1440
        END BRANCH
        BEGIN BRANCH Wregout(2:0)
            WIRE 432 1552 576 1552
        END BRANCH
        IOMARKER 416 1440 Wregin(2:0) R180 28
        IOMARKER 576 1552 Wregout(2:0) R0 28
        BEGIN BRANCH Wregin(2)
            WIRE 992 1472 1168 1472
        END BRANCH
        BEGIN BRANCH Wregin(1)
            WIRE 1008 1824 1168 1824
        END BRANCH
        BEGIN BRANCH Wregin(0)
            WIRE 992 2192 1184 2192
        END BRANCH
    END SHEET
END SCHEMATIC
