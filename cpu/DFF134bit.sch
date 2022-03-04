VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_3
        SIGNAL XLXN_5
        SIGNAL XLXN_23
        SIGNAL en
        SIGNAL XLXN_25
        SIGNAL clr
        SIGNAL XLXN_27
        SIGNAL clk
        SIGNAL EX_MemtoReg
        SIGNAL EX_Reg_write
        SIGNAL MEM_MetoReg
        SIGNAL MEM_Reg_write
        SIGNAL reg_dataout(63:0)
        SIGNAL ALUdataout(63:0)
        SIGNAL Wregout(2)
        SIGNAL Wregout(1)
        SIGNAL Wregout(0)
        SIGNAL reg_data(63:0)
        SIGNAL ALUdata(63:0)
        SIGNAL Wregin(2)
        SIGNAL Wregin(1)
        SIGNAL Wregin(0)
        SIGNAL Wregout(2:0)
        SIGNAL Wregin(2:0)
        SIGNAL XLXN_45
        SIGNAL XLXN_46
        SIGNAL XLXN_47
        SIGNAL EX_mem_write
        SIGNAL MEM_mem_write
        PORT Input en
        PORT Input clr
        PORT Input clk
        PORT Input EX_MemtoReg
        PORT Input EX_Reg_write
        PORT Output MEM_MetoReg
        PORT Output MEM_Reg_write
        PORT Output reg_dataout(63:0)
        PORT Output ALUdataout(63:0)
        PORT Input reg_data(63:0)
        PORT Input ALUdata(63:0)
        PORT Output Wregout(2:0)
        PORT Input Wregin(2:0)
        PORT Input EX_mem_write
        PORT Output MEM_mem_write
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
            PIN D EX_MemtoReg
            PIN Q MEM_MetoReg
        END BLOCK
        BEGIN BLOCK XLXI_10 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D EX_Reg_write
            PIN Q MEM_Reg_write
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
            PIN i(63:0) reg_data(63:0)
            PIN o(63:0) reg_dataout(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(63:0) ALUdata(63:0)
            PIN o(63:0) ALUdataout(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_23 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D EX_mem_write
            PIN Q MEM_mem_write
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        INSTANCE XLXI_1 1520 1152 R0
        INSTANCE XLXI_10 1520 1504 R0
        INSTANCE XLXI_11 1536 2480 R0
        INSTANCE XLXI_12 1536 2832 R0
        INSTANCE XLXI_13 1552 3200 R0
        BEGIN BRANCH en
            WIRE 1232 1040 1392 1040
            WIRE 1392 1040 1392 1312
            WIRE 1392 1312 1520 1312
            WIRE 1392 1312 1392 1616
            WIRE 1392 1616 1584 1616
            WIRE 1392 1616 1392 1904
            WIRE 1392 1904 1392 2288
            WIRE 1392 2288 1536 2288
            WIRE 1392 2288 1392 2640
            WIRE 1392 2640 1392 3008
            WIRE 1392 3008 1552 3008
            WIRE 1392 2640 1536 2640
            WIRE 1392 1904 1584 1904
            WIRE 1392 544 1536 544
            WIRE 1392 544 1392 960
            WIRE 1392 960 1520 960
            WIRE 1392 960 1392 976
            WIRE 1392 976 1392 1040
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1248 1184 1472 1184
            WIRE 1472 1184 1472 1472
            WIRE 1472 1472 1520 1472
            WIRE 1472 1472 1472 1856
            WIRE 1472 1856 1472 2112
            WIRE 1472 2112 1472 2448
            WIRE 1472 2448 1536 2448
            WIRE 1472 2448 1472 2800
            WIRE 1472 2800 1536 2800
            WIRE 1472 2800 1472 3168
            WIRE 1472 3168 1552 3168
            WIRE 1472 2112 1744 2112
            WIRE 1472 1856 1744 1856
            WIRE 1472 704 1536 704
            WIRE 1472 704 1472 1120
            WIRE 1472 1120 1520 1120
            WIRE 1472 1120 1472 1184
            WIRE 1744 1776 1744 1856
            WIRE 1744 2064 1744 2112
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1232 1104 1424 1104
            WIRE 1424 1104 1424 1376
            WIRE 1424 1376 1520 1376
            WIRE 1424 1376 1424 1808
            WIRE 1424 1808 1424 2064
            WIRE 1424 2064 1424 2080
            WIRE 1424 2080 1424 2352
            WIRE 1424 2352 1424 2704
            WIRE 1424 2704 1424 3072
            WIRE 1424 3072 1552 3072
            WIRE 1424 2704 1536 2704
            WIRE 1424 2352 1520 2352
            WIRE 1520 2352 1536 2352
            WIRE 1424 2080 1680 2080
            WIRE 1424 1808 1680 1808
            WIRE 1424 608 1536 608
            WIRE 1424 608 1424 1024
            WIRE 1424 1024 1520 1024
            WIRE 1424 1024 1424 1104
            WIRE 1680 1776 1680 1808
            WIRE 1680 2064 1680 2080
        END BRANCH
        BEGIN BRANCH EX_MemtoReg
            WIRE 1232 896 1520 896
        END BRANCH
        BEGIN BRANCH EX_Reg_write
            WIRE 1232 1248 1520 1248
        END BRANCH
        BEGIN BRANCH MEM_MetoReg
            WIRE 1904 896 2000 896
        END BRANCH
        BEGIN BRANCH MEM_Reg_write
            WIRE 1904 1248 2000 1248
        END BRANCH
        BEGIN BRANCH reg_dataout(63:0)
            WIRE 1840 1616 1968 1616
        END BRANCH
        BEGIN BRANCH ALUdataout(63:0)
            WIRE 1840 1904 1952 1904
        END BRANCH
        BEGIN BRANCH Wregout(2)
            WIRE 1920 2224 2000 2224
        END BRANCH
        BEGIN BRANCH Wregout(1)
            WIRE 1920 2576 2016 2576
        END BRANCH
        BEGIN BRANCH Wregout(0)
            WIRE 1936 2944 2016 2944
        END BRANCH
        BEGIN BRANCH reg_data(63:0)
            WIRE 1360 1680 1584 1680
        END BRANCH
        BEGIN BRANCH ALUdata(63:0)
            WIRE 1360 1968 1584 1968
        END BRANCH
        BEGIN BRANCH Wregin(2)
            WIRE 1360 2224 1536 2224
        END BRANCH
        BEGIN BRANCH Wregin(1)
            WIRE 1376 2576 1536 2576
        END BRANCH
        BEGIN BRANCH Wregin(0)
            WIRE 1360 2944 1552 2944
        END BRANCH
        BEGIN INSTANCE XLXI_14 1584 1776 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_15 1584 2064 R0
        END INSTANCE
        BEGIN BRANCH Wregout(2:0)
            WIRE 2272 2400 2416 2400
        END BRANCH
        BEGIN BRANCH Wregin(2:0)
            WIRE 1136 2528 1296 2528
        END BRANCH
        IOMARKER 1232 896 EX_MemtoReg R180 28
        IOMARKER 1232 1040 en R180 28
        IOMARKER 1232 1104 clk R180 28
        IOMARKER 1248 1184 clr R180 28
        IOMARKER 1232 1248 EX_Reg_write R180 28
        IOMARKER 1360 1680 reg_data(63:0) R180 28
        IOMARKER 1360 1968 ALUdata(63:0) R180 28
        IOMARKER 1968 1616 reg_dataout(63:0) R0 28
        IOMARKER 1952 1904 ALUdataout(63:0) R0 28
        IOMARKER 2000 1248 MEM_Reg_write R0 28
        IOMARKER 2000 896 MEM_MetoReg R0 28
        IOMARKER 2416 2400 Wregout(2:0) R0 28
        IOMARKER 1136 2528 Wregin(2:0) R180 28
        INSTANCE XLXI_23 1536 736 R0
        BEGIN BRANCH EX_mem_write
            WIRE 1280 480 1536 480
        END BRANCH
        BEGIN BRANCH MEM_mem_write
            WIRE 1920 480 2016 480
        END BRANCH
        IOMARKER 1280 480 EX_mem_write R180 28
        IOMARKER 2016 480 MEM_mem_write R0 28
    END SHEET
END SCHEMATIC
