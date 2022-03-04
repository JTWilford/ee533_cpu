VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clr
        SIGNAL clk
        SIGNAL Memdataout(31:0)
        SIGNAL Memdataout(63:32)
        SIGNAL Wregout(2)
        SIGNAL Wregout(1)
        SIGNAL Wregout(0)
        SIGNAL Wregin(2:0)
        SIGNAL Wregout(2:0)
        SIGNAL Wregin(2)
        SIGNAL Wregin(1)
        SIGNAL Wregin(0)
        SIGNAL en
        SIGNAL Memdatain(31:0)
        SIGNAL Memdatain(63:32)
        SIGNAL Memdatain(63:0)
        SIGNAL Memdataout(63:0)
        SIGNAL wRegEnout
        SIGNAL wRegEnin
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        PORT Input clr
        PORT Input clk
        PORT Input Wregin(2:0)
        PORT Output Wregout(2:0)
        PORT Input en
        PORT Input Memdatain(63:0)
        PORT Output Memdataout(63:0)
        PORT Output wRegEnout
        PORT Input wRegEnin
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
        BEGIN BLOCK XLXI_2 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(31:0) Memdatain(31:0)
            PIN o(31:0) Memdataout(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 DFF32bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(31:0) Memdatain(63:32)
            PIN o(31:0) Memdataout(63:32)
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
        BEGIN BLOCK XLXI_1 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D wRegEnin
            PIN Q wRegEnout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1472 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1472 1424 R0
        END INSTANCE
        INSTANCE XLXI_11 1424 1840 R0
        INSTANCE XLXI_12 1424 2192 R0
        INSTANCE XLXI_13 1440 2560 R0
        BEGIN BRANCH clk
            WIRE 1136 592 1312 592
            WIRE 1312 592 1312 1168
            WIRE 1312 1168 1568 1168
            WIRE 1312 1168 1312 1440
            WIRE 1312 1440 1312 1712
            WIRE 1312 1712 1312 2064
            WIRE 1312 2064 1312 2432
            WIRE 1312 2432 1440 2432
            WIRE 1312 2064 1424 2064
            WIRE 1312 1712 1424 1712
            WIRE 1312 1440 1568 1440
            WIRE 1312 416 1440 416
            WIRE 1312 416 1312 592
            WIRE 1568 1136 1568 1168
            WIRE 1568 1424 1568 1440
        END BRANCH
        BEGIN BRANCH Memdataout(31:0)
            WIRE 1728 976 1856 976
        END BRANCH
        BEGIN BRANCH Memdataout(63:32)
            WIRE 1728 1264 1840 1264
        END BRANCH
        BEGIN BRANCH Wregout(2)
            WIRE 1808 1584 1888 1584
        END BRANCH
        BEGIN BRANCH Wregout(1)
            WIRE 1808 1936 1904 1936
        END BRANCH
        BEGIN BRANCH Wregout(0)
            WIRE 1824 2304 1904 2304
        END BRANCH
        BEGIN BRANCH Wregin(2:0)
            WIRE 672 1552 832 1552
        END BRANCH
        BEGIN BRANCH Wregout(2:0)
            WIRE 688 1664 832 1664
        END BRANCH
        BEGIN BRANCH Wregin(2)
            WIRE 1248 1584 1424 1584
        END BRANCH
        BEGIN BRANCH Wregin(1)
            WIRE 1264 1936 1424 1936
        END BRANCH
        BEGIN BRANCH Wregin(0)
            WIRE 1248 2304 1440 2304
        END BRANCH
        IOMARKER 672 1552 Wregin(2:0) R180 28
        IOMARKER 832 1664 Wregout(2:0) R0 28
        BEGIN BRANCH en
            WIRE 1136 512 1280 512
            WIRE 1280 512 1280 528
            WIRE 1280 528 1280 976
            WIRE 1280 976 1472 976
            WIRE 1280 976 1280 1264
            WIRE 1280 1264 1280 1648
            WIRE 1280 1648 1424 1648
            WIRE 1280 1648 1280 2000
            WIRE 1280 2000 1280 2368
            WIRE 1280 2368 1440 2368
            WIRE 1280 2000 1424 2000
            WIRE 1280 1264 1472 1264
            WIRE 1280 528 1360 528
            WIRE 1360 352 1360 528
            WIRE 1360 352 1440 352
        END BRANCH
        BEGIN BRANCH Memdatain(31:0)
            WIRE 1168 1040 1472 1040
        END BRANCH
        BEGIN BRANCH Memdatain(63:32)
            WIRE 1200 1328 1472 1328
        END BRANCH
        BEGIN BRANCH Memdatain(63:0)
            WIRE 496 1248 784 1248
        END BRANCH
        IOMARKER 496 1248 Memdatain(63:0) R180 28
        BEGIN BRANCH Memdataout(63:0)
            WIRE 480 1376 768 1376
        END BRANCH
        IOMARKER 768 1376 Memdataout(63:0) R0 28
        BEGIN BRANCH clr
            WIRE 1120 688 1360 688
            WIRE 1360 688 1360 1216
            WIRE 1360 1216 1360 1472
            WIRE 1360 1472 1360 1808
            WIRE 1360 1808 1424 1808
            WIRE 1360 1808 1360 2160
            WIRE 1360 2160 1424 2160
            WIRE 1360 2160 1360 2528
            WIRE 1360 2528 1440 2528
            WIRE 1360 1472 1632 1472
            WIRE 1360 1216 1632 1216
            WIRE 1360 688 1440 688
            WIRE 1440 512 1440 688
            WIRE 1632 1136 1632 1216
            WIRE 1632 1424 1632 1472
        END BRANCH
        BEGIN BRANCH wRegEnout
            WIRE 1824 288 1872 288
            WIRE 1872 288 1872 480
            WIRE 1872 480 1888 480
        END BRANCH
        BEGIN BRANCH wRegEnin
            WIRE 1136 288 1424 288
            WIRE 1424 288 1440 288
        END BRANCH
        IOMARKER 1120 688 clr R180 28
        IOMARKER 1136 592 clk R180 28
        IOMARKER 1136 512 en R180 28
        IOMARKER 1888 480 wRegEnout R0 28
        INSTANCE XLXI_1 1440 544 R0
        IOMARKER 1136 288 wRegEnin R180 28
    END SHEET
END SCHEMATIC
