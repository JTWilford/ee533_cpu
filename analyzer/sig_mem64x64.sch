VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL XLXN_2(0:0)
        SIGNAL rd_addr(5:0)
        SIGNAL wr_ptr(5:0)
        SIGNAL din(63:0)
        SIGNAL dout(63:0)
        SIGNAL rst
        SIGNAL XLXN_10
        SIGNAL wr_ptr(7:0)
        SIGNAL XLXN_12(7:0)
        SIGNAL XLXN_14(7:0)
        SIGNAL wr_ptr_next(7:0)
        PORT Input clk
        PORT Input rd_addr(5:0)
        PORT Input din(63:0)
        PORT Output dout(63:0)
        BEGIN BLOCKDEF bram64x64
            TIMESTAMP 2022 3 2 7 24 28
            RECTANGLE N 32 32 544 576 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 112 32 112 
            END LINE
            LINE N 0 144 32 144 
            BEGIN LINE W 0 208 32 208 
            END LINE
            LINE N 0 272 32 272 
            BEGIN LINE W 0 336 32 336 
            END LINE
            LINE N 0 528 32 528 
            BEGIN LINE W 576 336 544 336 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF fd8re
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 0 -32 64 -32 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 320 -268 384 -244 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF add8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 336 -128 336 -148 
            LINE N 384 -128 336 -128 
            LINE N 64 -288 64 -432 
            LINE N 128 -256 64 -288 
            LINE N 64 -224 128 -256 
            LINE N 64 -80 64 -224 
            LINE N 384 -160 64 -80 
            LINE N 384 -336 384 -160 
            LINE N 384 -352 384 -336 
            LINE N 64 -432 384 -352 
            LINE N 128 -448 64 -448 
            LINE N 128 -416 128 -448 
            LINE N 0 -448 64 -448 
            RECTANGLE N 384 -268 448 -244 
            LINE N 448 -256 384 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -332 64 -308 
            RECTANGLE N 0 -204 64 -180 
            LINE N 240 -64 384 -64 
            LINE N 240 -124 240 -64 
            LINE N 448 -64 384 -64 
            LINE N 448 -128 384 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF constant
            TIMESTAMP 2006 1 1 10 10 10
            RECTANGLE N 0 0 112 64 
            LINE N 144 32 112 32 
        END BLOCKDEF
        BEGIN BLOCKDEF mux2x1_8
            TIMESTAMP 2022 3 2 9 51 22
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 bram64x64
            PIN addra(5:0) wr_ptr(5:0)
            PIN dina(63:0) din(63:0)
            PIN ena XLXN_2(0:0)
            PIN wea(0:0) XLXN_2(0:0)
            PIN clka clk
            PIN addrb(5:0) rd_addr(5:0)
            PIN clkb clk
            PIN doutb(63:0) dout(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd8re
            PIN C clk
            PIN CE XLXN_10
            PIN D(7:0) wr_ptr_next(7:0)
            PIN R rst
            PIN Q(7:0) wr_ptr(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 add8
            PIN A(7:0) wr_ptr(7:0)
            PIN B(7:0) XLXN_14(7:0)
            PIN CI
            PIN CO
            PIN OFL
            PIN S(7:0) XLXN_12(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 constant
            BEGIN ATTR CValue "1"
                DELETE all:1 sym:0
                EDITNAME all:1 sch:0
                VALUETYPE BitVector 32 Hexadecimal
            END ATTR
            PIN O XLXN_14(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 mux2x1_8
            PIN S
            PIN I0(7:0) wr_ptr(7:0)
            PIN I1(7:0) XLXN_12(7:0)
            PIN O(7:0) wr_ptr_next(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 720 320 R0
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 560 848 704 848
            WIRE 704 848 720 848
            WIRE 704 592 720 592
            WIRE 704 592 704 848
        END BRANCH
        BEGIN BRANCH XLXN_2(0:0)
            WIRE 704 464 720 464
            WIRE 704 464 704 528
            WIRE 704 528 720 528
        END BRANCH
        BEGIN BRANCH rd_addr(5:0)
            WIRE 560 656 720 656
        END BRANCH
        BEGIN BRANCH wr_ptr(5:0)
            WIRE 560 400 720 400
            BEGIN DISPLAY 560 400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH din(63:0)
            WIRE 560 432 720 432
        END BRANCH
        BEGIN BRANCH dout(63:0)
            WIRE 1296 656 1440 656
        END BRANCH
        BEGIN BRANCH rst
            WIRE 560 1344 720 1344
            BEGIN DISPLAY 560 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 560 1248 720 1248
            BEGIN DISPLAY 560 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wr_ptr_next(7:0)
            WIRE 560 1120 640 1120
            WIRE 640 1120 720 1120
            BEGIN DISPLAY 560 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_5 720 1376 R0
        BEGIN BRANCH XLXN_10
            WIRE 560 1184 720 1184
        END BRANCH
        BEGIN BRANCH wr_ptr(7:0)
            WIRE 1104 1120 1280 1120
            BEGIN DISPLAY 1280 1120 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 560 432 din(63:0) R180 28
        IOMARKER 560 656 rd_addr(5:0) R180 28
        IOMARKER 560 848 clk R180 28
        IOMARKER 1440 656 dout(63:0) R0 28
        INSTANCE XLXI_9 1680 1600 R0
        BEGIN BRANCH XLXN_12(7:0)
            WIRE 2128 1344 2240 1344
            WIRE 2240 1344 2416 1344
        END BRANCH
        BEGIN BRANCH wr_ptr(7:0)
            WIRE 1520 1280 1680 1280
            BEGIN DISPLAY 1520 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_14(7:0)
            WIRE 1424 1408 1520 1408
            WIRE 1520 1408 1680 1408
        END BRANCH
        BEGIN INSTANCE XLXI_10 1280 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 2416 1376 R0
        END INSTANCE
        BEGIN BRANCH wr_ptr(7:0)
            WIRE 2320 1280 2416 1280
            BEGIN DISPLAY 2320 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wr_ptr_next(7:0)
            WIRE 2800 1216 2880 1216
            BEGIN DISPLAY 2880 1216 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
