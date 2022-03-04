VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL reg1_data_in(63:0)
        SIGNAL reg1_data_out(63:0)
        SIGNAL reg2_data_in(63:0)
        SIGNAL reg2_data_out(63:0)
        SIGNAL imm_in(63:0)
        SIGNAL imm_out(63:0)
        SIGNAL wr_reg_addr(2:0)
        SIGNAL ins_pointer_in(8:0)
        SIGNAL XLXN_11
        SIGNAL en
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL clk
        SIGNAL ins_pointer_in(8)
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL clr
        SIGNAL ins_pointer_in(7:0)
        SIGNAL ins_pointer_out(7:0)
        SIGNAL ins_pointer_out(8)
        SIGNAL zero
        SIGNAL zero_out
        SIGNAL ins_pointer_out(8:0)
        SIGNAL wr_reg_addr_out(2:0)
        SIGNAL wr_reg_addr_out(2)
        SIGNAL wr_reg_addr_out(1)
        SIGNAL wr_reg_addr_out(0)
        SIGNAL wr_reg_addr(2)
        SIGNAL wr_reg_addr(1)
        SIGNAL wr_reg_addr(0)
        PORT Input reg1_data_in(63:0)
        PORT Output reg1_data_out(63:0)
        PORT Input reg2_data_in(63:0)
        PORT Output reg2_data_out(63:0)
        PORT Input imm_in(63:0)
        PORT Output imm_out(63:0)
        PORT Input wr_reg_addr(2:0)
        PORT Input ins_pointer_in(8:0)
        PORT Input en
        PORT Input clk
        PORT Input clr
        PORT Input zero
        PORT Output zero_out
        PORT Output ins_pointer_out(8:0)
        PORT Output wr_reg_addr_out(2:0)
        PORT Input wr_reg_addr(2)
        PORT Input wr_reg_addr(1)
        PORT Input wr_reg_addr(0)
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
        BEGIN BLOCK XLXI_19 fd8ce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D(7:0) ins_pointer_in(7:0)
            PIN Q(7:0) ins_pointer_out(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_1 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en
            PIN i(63:0) reg1_data_in(63:0)
            PIN o(63:0) reg1_data_out(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(63:0) reg2_data_in(63:0)
            PIN o(63:0) reg2_data_out(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D wr_reg_addr(2)
            PIN Q wr_reg_addr_out(2)
        END BLOCK
        BEGIN BLOCK XLXI_11 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D wr_reg_addr(1)
            PIN Q wr_reg_addr_out(1)
        END BLOCK
        BEGIN BLOCK XLXI_18 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D wr_reg_addr(0)
            PIN Q wr_reg_addr_out(0)
        END BLOCK
        BEGIN BLOCK XLXI_3 DFF64bit
            PIN clk clk
            PIN clr clr
            PIN en en
            PIN i(63:0) imm_in(63:0)
            PIN o(63:0) imm_out(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D zero
            PIN Q zero_out
        END BLOCK
        BEGIN BLOCK XLXI_27 fdce
            PIN C clk
            PIN CE en
            PIN CLR clr
            PIN D ins_pointer_in(8)
            PIN Q ins_pointer_out(8)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        INSTANCE XLXI_10 1408 2320 R0
        INSTANCE XLXI_11 1408 2656 R0
        INSTANCE XLXI_18 1408 3008 R0
        INSTANCE XLXI_5 1392 1184 R0
        BEGIN INSTANCE XLXI_1 1440 1392 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1440 1664 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1440 1904 R0
        END INSTANCE
        BEGIN BRANCH reg1_data_in(63:0)
            WIRE 832 1296 1440 1296
        END BRANCH
        BEGIN BRANCH reg1_data_out(63:0)
            WIRE 1696 1232 1856 1232
        END BRANCH
        IOMARKER 1856 1232 reg1_data_out(63:0) R0 28
        BEGIN BRANCH reg2_data_in(63:0)
            WIRE 848 1568 1440 1568
        END BRANCH
        BEGIN BRANCH reg2_data_out(63:0)
            WIRE 1696 1504 1888 1504
        END BRANCH
        BEGIN BRANCH imm_in(63:0)
            WIRE 912 1808 1440 1808
        END BRANCH
        BEGIN BRANCH imm_out(63:0)
            WIRE 1696 1744 1872 1744
        END BRANCH
        IOMARKER 1888 1504 reg2_data_out(63:0) R0 28
        IOMARKER 1872 1744 imm_out(63:0) R0 28
        BEGIN BRANCH wr_reg_addr(2:0)
            WIRE 640 2160 816 2160
        END BRANCH
        BEGIN BRANCH ins_pointer_in(8:0)
            WIRE 576 240 752 240
        END BRANCH
        INSTANCE XLXI_27 1408 384 R0
        INSTANCE XLXI_19 1408 768 R0
        IOMARKER 576 240 ins_pointer_in(8:0) R180 28
        IOMARKER 640 2160 wr_reg_addr(2:0) R180 28
        BEGIN BRANCH en
            WIRE 976 816 1328 816
            WIRE 1328 816 1328 992
            WIRE 1328 992 1328 1504
            WIRE 1328 1504 1328 1744
            WIRE 1328 1744 1328 2128
            WIRE 1328 2128 1328 2464
            WIRE 1328 2464 1328 2816
            WIRE 1328 2816 1408 2816
            WIRE 1328 2464 1408 2464
            WIRE 1328 2128 1408 2128
            WIRE 1328 1744 1440 1744
            WIRE 1328 1504 1440 1504
            WIRE 1328 992 1392 992
            WIRE 1328 192 1408 192
            WIRE 1328 192 1328 576
            WIRE 1328 576 1408 576
            WIRE 1328 576 1328 816
        END BRANCH
        IOMARKER 832 1296 reg1_data_in(63:0) R180 28
        IOMARKER 848 1568 reg2_data_in(63:0) R180 28
        IOMARKER 912 1808 imm_in(63:0) R180 28
        BEGIN BRANCH clk
            WIRE 976 752 1248 752
            WIRE 1248 752 1248 1056
            WIRE 1248 1056 1248 1440
            WIRE 1248 1440 1248 1680
            WIRE 1248 1680 1248 1904
            WIRE 1248 1904 1248 1920
            WIRE 1248 1920 1248 2192
            WIRE 1248 2192 1248 2528
            WIRE 1248 2528 1248 2880
            WIRE 1248 2880 1408 2880
            WIRE 1248 2528 1408 2528
            WIRE 1248 2192 1408 2192
            WIRE 1248 1920 1536 1920
            WIRE 1248 1680 1536 1680
            WIRE 1248 1440 1536 1440
            WIRE 1248 1056 1392 1056
            WIRE 1248 256 1408 256
            WIRE 1248 256 1248 640
            WIRE 1248 640 1408 640
            WIRE 1248 640 1248 752
            WIRE 1536 1392 1536 1440
            WIRE 1536 1664 1536 1680
            WIRE 1536 1904 1536 1920
        END BRANCH
        BEGIN BRANCH ins_pointer_in(8)
            WIRE 1152 128 1360 128
            WIRE 1360 128 1408 128
        END BRANCH
        BEGIN BRANCH clr
            WIRE 976 880 1360 880
            WIRE 1360 880 1360 1152
            WIRE 1360 1152 1360 1376
            WIRE 1360 1376 1360 1648
            WIRE 1360 1648 1360 1904
            WIRE 1360 1904 1360 2288
            WIRE 1360 2288 1360 2624
            WIRE 1360 2624 1360 2976
            WIRE 1360 2976 1408 2976
            WIRE 1360 2624 1408 2624
            WIRE 1360 2288 1408 2288
            WIRE 1360 1904 1376 1904
            WIRE 1376 1904 1376 1984
            WIRE 1376 1984 1600 1984
            WIRE 1360 1376 1376 1376
            WIRE 1376 1376 1376 1392
            WIRE 1376 1392 1376 1456
            WIRE 1376 1456 1600 1456
            WIRE 1360 1152 1392 1152
            WIRE 1344 1648 1360 1648
            WIRE 1344 1648 1344 1696
            WIRE 1344 1696 1600 1696
            WIRE 1360 352 1408 352
            WIRE 1360 352 1360 736
            WIRE 1360 736 1408 736
            WIRE 1360 736 1360 880
            WIRE 1600 1392 1600 1456
            WIRE 1600 1664 1600 1696
            WIRE 1600 1904 1600 1984
        END BRANCH
        BEGIN BRANCH ins_pointer_in(7:0)
            WIRE 1152 512 1408 512
        END BRANCH
        BEGIN BRANCH ins_pointer_out(7:0)
            WIRE 1792 512 1984 512
        END BRANCH
        BEGIN BRANCH ins_pointer_out(8)
            WIRE 1792 128 1952 128
        END BRANCH
        BEGIN BRANCH zero
            WIRE 1184 928 1392 928
        END BRANCH
        IOMARKER 1184 928 zero R180 28
        BEGIN BRANCH zero_out
            WIRE 1776 928 1920 928
        END BRANCH
        IOMARKER 1920 928 zero_out R0 28
        BEGIN BRANCH ins_pointer_out(8:0)
            WIRE 1984 320 2176 320
        END BRANCH
        IOMARKER 2176 320 ins_pointer_out(8:0) R0 28
        BEGIN BRANCH wr_reg_addr_out(2:0)
            WIRE 1984 2480 2176 2480
        END BRANCH
        IOMARKER 2176 2480 wr_reg_addr_out(2:0) R0 28
        BEGIN BRANCH wr_reg_addr_out(2)
            WIRE 1792 2064 1872 2064
        END BRANCH
        BEGIN BRANCH wr_reg_addr_out(1)
            WIRE 1792 2400 1888 2400
        END BRANCH
        BEGIN BRANCH wr_reg_addr_out(0)
            WIRE 1792 2752 1888 2752
        END BRANCH
        BEGIN BRANCH wr_reg_addr(2)
            WIRE 1136 2064 1408 2064
        END BRANCH
        BEGIN BRANCH wr_reg_addr(1)
            WIRE 1152 2400 1376 2400
            WIRE 1376 2400 1392 2400
            WIRE 1392 2400 1408 2400
        END BRANCH
        BEGIN BRANCH wr_reg_addr(0)
            WIRE 1136 2752 1408 2752
        END BRANCH
        IOMARKER 1136 2064 wr_reg_addr(2) R180 28
        IOMARKER 1152 2400 wr_reg_addr(1) R180 28
        IOMARKER 1136 2752 wr_reg_addr(0) R180 28
        IOMARKER 976 752 clk R180 28
        IOMARKER 976 816 en R180 28
        IOMARKER 976 880 clr R180 28
    END SHEET
END SCHEMATIC
