VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL en
        SIGNAL XLXN_3
        SIGNAL clr
        SIGNAL XLXN_5
        SIGNAL clk
        SIGNAL wRegEnin
        SIGNAL wRegEnout
        SIGNAL R1dataout(63:0)
        SIGNAL R2dataout(63:0)
        SIGNAL Wregout(2)
        SIGNAL Wregout(1)
        SIGNAL Wregout(0)
        SIGNAL R1datain(63:0)
        SIGNAL R2datain(63:0)
        SIGNAL Wregin(2:0)
        SIGNAL Wregout(2:0)
        SIGNAL Wregin(2)
        SIGNAL Wregin(1)
        SIGNAL Wregin(0)
        PORT Input en
        PORT Input clr
        PORT Input clk
        PORT Input wRegEnin
        PORT Output wRegEnout
        PORT Output R1dataout(63:0)
        PORT Output R2dataout(63:0)
        PORT Input R1datain(63:0)
        PORT Input R2datain(63:0)
        PORT Input Wregin(2:0)
        PORT Output Wregout(2:0)
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
        BEGIN BLOCKDEF DFF64bit
            TIMESTAMP 2022 2 18 0 38 35
            RECTANGLE N 64 -192 192 -64 
            LINE N 96 -64 96 0 
            LINE N 160 -64 160 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 192 -160 256 -160 
            RECTANGLE N 192 -172 256 -148 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D wRegEnin
            PIN Q wRegEnout
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
        BEGIN BLOCK XLXI_14 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(63:0) R1datain(63:0)
            PIN o(63:0) R1dataout(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(63:0) R2datain(63:0)
            PIN o(63:0) R2dataout(63:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1584 464 R0
        INSTANCE XLXI_11 1600 1792 R0
        INSTANCE XLXI_12 1600 2144 R0
        INSTANCE XLXI_13 1616 2512 R0
        BEGIN BRANCH en
            WIRE 1296 352 1456 352
            WIRE 1456 352 1456 624
            WIRE 1456 624 1456 928
            WIRE 1456 928 1648 928
            WIRE 1456 928 1456 1216
            WIRE 1456 1216 1456 1600
            WIRE 1456 1600 1600 1600
            WIRE 1456 1600 1456 1952
            WIRE 1456 1952 1456 2320
            WIRE 1456 2320 1616 2320
            WIRE 1456 1952 1600 1952
            WIRE 1456 1216 1648 1216
            WIRE 1456 272 1584 272
            WIRE 1456 272 1456 288
            WIRE 1456 288 1456 352
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1312 496 1536 496
            WIRE 1536 496 1536 784
            WIRE 1536 784 1536 1168
            WIRE 1536 1168 1536 1424
            WIRE 1536 1424 1536 1760
            WIRE 1536 1760 1600 1760
            WIRE 1536 1760 1536 2112
            WIRE 1536 2112 1600 2112
            WIRE 1536 2112 1536 2480
            WIRE 1536 2480 1616 2480
            WIRE 1536 1424 1808 1424
            WIRE 1536 1168 1808 1168
            WIRE 1536 432 1584 432
            WIRE 1536 432 1536 496
            WIRE 1808 1088 1808 1168
            WIRE 1808 1376 1808 1424
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1296 416 1488 416
            WIRE 1488 416 1488 688
            WIRE 1488 688 1488 1120
            WIRE 1488 1120 1488 1376
            WIRE 1488 1376 1488 1392
            WIRE 1488 1392 1488 1664
            WIRE 1488 1664 1488 2016
            WIRE 1488 2016 1488 2384
            WIRE 1488 2384 1616 2384
            WIRE 1488 2016 1600 2016
            WIRE 1488 1664 1584 1664
            WIRE 1584 1664 1600 1664
            WIRE 1488 1392 1744 1392
            WIRE 1488 1120 1744 1120
            WIRE 1488 336 1584 336
            WIRE 1488 336 1488 416
            WIRE 1744 1088 1744 1120
            WIRE 1744 1376 1744 1392
        END BRANCH
        BEGIN BRANCH wRegEnin
            WIRE 1296 208 1584 208
        END BRANCH
        BEGIN BRANCH wRegEnout
            WIRE 1968 208 2064 208
        END BRANCH
        BEGIN BRANCH R1dataout(63:0)
            WIRE 1904 928 2032 928
        END BRANCH
        BEGIN BRANCH R2dataout(63:0)
            WIRE 1904 1216 2016 1216
        END BRANCH
        BEGIN BRANCH Wregout(2)
            WIRE 1984 1536 2064 1536
        END BRANCH
        BEGIN BRANCH Wregout(1)
            WIRE 1984 1888 2080 1888
        END BRANCH
        BEGIN BRANCH Wregout(0)
            WIRE 2000 2256 2080 2256
        END BRANCH
        BEGIN BRANCH R1datain(63:0)
            WIRE 1424 992 1648 992
        END BRANCH
        BEGIN BRANCH R2datain(63:0)
            WIRE 1424 1280 1648 1280
        END BRANCH
        BEGIN BRANCH Wregin(2:0)
            WIRE 848 1504 1008 1504
        END BRANCH
        BEGIN BRANCH Wregout(2:0)
            WIRE 864 1616 1008 1616
        END BRANCH
        BEGIN BRANCH Wregin(2)
            WIRE 1424 1536 1600 1536
        END BRANCH
        BEGIN BRANCH Wregin(1)
            WIRE 1440 1888 1600 1888
        END BRANCH
        BEGIN BRANCH Wregin(0)
            WIRE 1424 2256 1616 2256
        END BRANCH
        BEGIN INSTANCE XLXI_14 1648 1088 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_15 1648 1376 R0
        END INSTANCE
        IOMARKER 1296 208 wRegEnin R180 28
        IOMARKER 1296 352 en R180 28
        IOMARKER 1296 416 clk R180 28
        IOMARKER 1312 496 clr R180 28
        IOMARKER 1424 992 R1datain(63:0) R180 28
        IOMARKER 1424 1280 R2datain(63:0) R180 28
        IOMARKER 2032 928 R1dataout(63:0) R0 28
        IOMARKER 2016 1216 R2dataout(63:0) R0 28
        IOMARKER 2064 208 wRegEnout R0 28
        IOMARKER 848 1504 Wregin(2:0) R180 28
        IOMARKER 1008 1616 Wregout(2:0) R0 28
    END SHEET
END SCHEMATIC
