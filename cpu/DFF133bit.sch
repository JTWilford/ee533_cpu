VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL en
        SIGNAL clr
        SIGNAL clk
        SIGNAL MEM_MemtoReg
        SIGNAL MEM_Reg_write
        SIGNAL WB_MetoReg
        SIGNAL WB_Reg_write
        SIGNAL mem_dataout(63:0)
        SIGNAL ALUdataout(63:0)
        SIGNAL Wregout(2)
        SIGNAL Wregout(1)
        SIGNAL Wregout(0)
        SIGNAL mem_data(63:0)
        SIGNAL ALUdata(63:0)
        SIGNAL Wregin(2)
        SIGNAL Wregin(1)
        SIGNAL Wregin(0)
        SIGNAL Wregout(2:0)
        SIGNAL Wregin(2:0)
        PORT Input en
        PORT Input clr
        PORT Input clk
        PORT Input MEM_MemtoReg
        PORT Input MEM_Reg_write
        PORT Output WB_MetoReg
        PORT Output WB_Reg_write
        PORT Output mem_dataout(63:0)
        PORT Output ALUdataout(63:0)
        PORT Input mem_data(63:0)
        PORT Input ALUdata(63:0)
        PORT Output Wregout(2:0)
        PORT Input Wregin(2:0)
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
            PIN D MEM_MemtoReg
            PIN Q WB_MetoReg
        END BLOCK
        BEGIN BLOCK XLXI_10 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D MEM_Reg_write
            PIN Q WB_Reg_write
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
            PIN i(63:0) mem_data(63:0)
            PIN o(63:0) mem_dataout(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(63:0) ALUdata(63:0)
            PIN o(63:0) ALUdataout(63:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1408 576 R0
        INSTANCE XLXI_10 1408 928 R0
        INSTANCE XLXI_11 1424 1904 R0
        INSTANCE XLXI_12 1424 2256 R0
        INSTANCE XLXI_13 1440 2624 R0
        BEGIN BRANCH en
            WIRE 1120 464 1280 464
            WIRE 1280 464 1280 736
            WIRE 1280 736 1408 736
            WIRE 1280 736 1280 1040
            WIRE 1280 1040 1472 1040
            WIRE 1280 1040 1280 1328
            WIRE 1280 1328 1280 1712
            WIRE 1280 1712 1424 1712
            WIRE 1280 1712 1280 2064
            WIRE 1280 2064 1280 2432
            WIRE 1280 2432 1440 2432
            WIRE 1280 2064 1424 2064
            WIRE 1280 1328 1472 1328
            WIRE 1280 384 1408 384
            WIRE 1280 384 1280 400
            WIRE 1280 400 1280 464
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1136 608 1360 608
            WIRE 1360 608 1360 896
            WIRE 1360 896 1408 896
            WIRE 1360 896 1360 1280
            WIRE 1360 1280 1360 1536
            WIRE 1360 1536 1360 1872
            WIRE 1360 1872 1424 1872
            WIRE 1360 1872 1360 2224
            WIRE 1360 2224 1424 2224
            WIRE 1360 2224 1360 2592
            WIRE 1360 2592 1440 2592
            WIRE 1360 1536 1632 1536
            WIRE 1360 1280 1632 1280
            WIRE 1360 544 1408 544
            WIRE 1360 544 1360 608
            WIRE 1632 1200 1632 1280
            WIRE 1632 1488 1632 1536
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1120 528 1312 528
            WIRE 1312 528 1312 800
            WIRE 1312 800 1408 800
            WIRE 1312 800 1312 1232
            WIRE 1312 1232 1312 1488
            WIRE 1312 1488 1312 1504
            WIRE 1312 1504 1312 1776
            WIRE 1312 1776 1312 2128
            WIRE 1312 2128 1312 2496
            WIRE 1312 2496 1440 2496
            WIRE 1312 2128 1424 2128
            WIRE 1312 1776 1408 1776
            WIRE 1408 1776 1424 1776
            WIRE 1312 1504 1568 1504
            WIRE 1312 1232 1568 1232
            WIRE 1312 448 1408 448
            WIRE 1312 448 1312 528
            WIRE 1568 1200 1568 1232
            WIRE 1568 1488 1568 1504
        END BRANCH
        BEGIN BRANCH MEM_MemtoReg
            WIRE 1120 320 1408 320
        END BRANCH
        BEGIN BRANCH MEM_Reg_write
            WIRE 1120 672 1408 672
        END BRANCH
        BEGIN BRANCH WB_MetoReg
            WIRE 1792 320 1888 320
        END BRANCH
        BEGIN BRANCH WB_Reg_write
            WIRE 1792 672 1888 672
        END BRANCH
        BEGIN BRANCH mem_dataout(63:0)
            WIRE 1728 1040 1856 1040
        END BRANCH
        BEGIN BRANCH ALUdataout(63:0)
            WIRE 1728 1328 1840 1328
        END BRANCH
        BEGIN BRANCH Wregout(2)
            WIRE 1808 1648 1888 1648
        END BRANCH
        BEGIN BRANCH Wregout(1)
            WIRE 1808 2000 1904 2000
        END BRANCH
        BEGIN BRANCH Wregout(0)
            WIRE 1824 2368 1904 2368
        END BRANCH
        BEGIN BRANCH mem_data(63:0)
            WIRE 1248 1104 1472 1104
        END BRANCH
        BEGIN BRANCH ALUdata(63:0)
            WIRE 1248 1392 1472 1392
        END BRANCH
        BEGIN BRANCH Wregin(2)
            WIRE 1248 1648 1424 1648
        END BRANCH
        BEGIN BRANCH Wregin(1)
            WIRE 1264 2000 1424 2000
        END BRANCH
        BEGIN BRANCH Wregin(0)
            WIRE 1248 2368 1440 2368
        END BRANCH
        IOMARKER 1120 320 MEM_MemtoReg R180 28
        IOMARKER 1120 464 en R180 28
        IOMARKER 1120 528 clk R180 28
        IOMARKER 1136 608 clr R180 28
        IOMARKER 1120 672 MEM_Reg_write R180 28
        IOMARKER 1248 1104 mem_data(63:0) R180 28
        IOMARKER 1248 1392 ALUdata(63:0) R180 28
        IOMARKER 1856 1040 mem_dataout(63:0) R0 28
        IOMARKER 1840 1328 ALUdataout(63:0) R0 28
        IOMARKER 1888 672 WB_Reg_write R0 28
        IOMARKER 1888 320 WB_MetoReg R0 28
        BEGIN INSTANCE XLXI_14 1472 1200 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_15 1472 1488 R0
        END INSTANCE
        BEGIN BRANCH Wregout(2:0)
            WIRE 2160 1824 2304 1824
        END BRANCH
        IOMARKER 2304 1824 Wregout(2:0) R0 28
        BEGIN BRANCH Wregin(2:0)
            WIRE 1024 1952 1184 1952
        END BRANCH
        IOMARKER 1024 1952 Wregin(2:0) R180 28
    END SHEET
END SCHEMATIC
