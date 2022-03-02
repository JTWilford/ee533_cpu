VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Q
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL S(31:0)
        SIGNAL A(31:24)
        SIGNAL B(31:24)
        SIGNAL A(23:16)
        SIGNAL S(31:24)
        SIGNAL S(23:16)
        SIGNAL S(15:8)
        SIGNAL A(15:8)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL S(7:0)
        SIGNAL B(23:16)
        SIGNAL B(15:8)
        PORT Input Q
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output S(31:0)
        BEGIN BLOCKDEF mux_x8
            TIMESTAMP 2022 1 29 16 54 18
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -184 64 -72 
            LINE N 64 -72 192 -104 
            LINE N 192 -104 192 -136 
            LINE N 192 -148 64 -184 
            LINE N 192 -136 192 -148 
            LINE N 192 -128 256 -128 
            RECTANGLE N 192 -140 256 -116 
            LINE N 96 -80 96 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 mux_x8
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN S(7:0) S(31:24)
            PIN Q Q
        END BLOCK
        BEGIN BLOCK XLXI_2 mux_x8
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN S(7:0) S(23:16)
            PIN Q Q
        END BLOCK
        BEGIN BLOCK XLXI_3 mux_x8
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN S(7:0) S(15:8)
            PIN Q Q
        END BLOCK
        BEGIN BLOCK XLXI_4 mux_x8
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN S(7:0) S(7:0)
            PIN Q Q
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 880 640 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 880 880 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 880 1120 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 880 1360 R0
        END INSTANCE
        BEGIN BRANCH Q
            WIRE 320 1440 800 1440
            WIRE 800 672 800 912
            WIRE 800 912 800 1152
            WIRE 800 1152 800 1344
            WIRE 800 1344 800 1360
            WIRE 800 1360 800 1440
            WIRE 800 1360 880 1360
            WIRE 880 1360 976 1360
            WIRE 800 1152 976 1152
            WIRE 800 912 976 912
            WIRE 800 672 976 672
            WIRE 976 624 976 672
            WIRE 976 864 976 912
            WIRE 976 1104 976 1152
            WIRE 976 1344 976 1360
            BEGIN DISPLAY 880 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 320 1360 640 1360
            WIRE 640 464 640 480
            WIRE 640 480 640 720
            WIRE 640 720 640 864
            WIRE 640 864 640 960
            WIRE 640 960 640 1200
            WIRE 640 1200 640 1296
            WIRE 640 1296 640 1360
            BEGIN DISPLAY 640 864 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 320 1296 560 1296
            WIRE 560 464 560 544
            WIRE 560 544 560 784
            WIRE 560 784 560 864
            WIRE 560 864 560 1024
            WIRE 560 1024 560 1264
            WIRE 560 1264 560 1296
            BEGIN DISPLAY 560 864 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 1360 464 1360 512
            WIRE 1360 512 1360 752
            WIRE 1360 752 1360 864
            WIRE 1360 864 1360 992
            WIRE 1360 992 1360 1232
            WIRE 1360 1232 1360 1296
            WIRE 1360 1296 1600 1296
            BEGIN DISPLAY 1360 864 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 640 480 736 480
        BUSTAP 560 544 656 544
        BUSTAP 640 720 736 720
        BUSTAP 560 784 656 784
        BUSTAP 640 960 736 960
        BUSTAP 560 1024 656 1024
        BUSTAP 640 1200 736 1200
        BUSTAP 560 1264 656 1264
        BUSTAP 1360 1232 1264 1232
        BUSTAP 1360 992 1264 992
        BUSTAP 1360 752 1264 752
        BUSTAP 1360 512 1264 512
        BEGIN BRANCH A(31:24)
            WIRE 736 480 752 480
            WIRE 752 480 880 480
            BEGIN DISPLAY 752 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 656 544 720 544
            WIRE 720 544 880 544
            BEGIN DISPLAY 720 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 736 720 752 720
            WIRE 752 720 880 720
            BEGIN DISPLAY 752 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 656 784 688 784
            WIRE 688 784 720 784
            WIRE 720 784 752 784
            WIRE 752 784 880 784
            BEGIN DISPLAY 720 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31:24)
            WIRE 1136 512 1232 512
            WIRE 1232 512 1264 512
            BEGIN DISPLAY 1232 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(23:16)
            WIRE 1136 752 1232 752
            WIRE 1232 752 1264 752
            BEGIN DISPLAY 1232 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15:8)
            WIRE 1136 992 1248 992
            WIRE 1248 992 1264 992
            BEGIN DISPLAY 1248 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 736 960 752 960
            WIRE 752 960 880 960
            BEGIN DISPLAY 752 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 656 1024 720 1024
            WIRE 720 1024 752 1024
            WIRE 752 1024 880 1024
            BEGIN DISPLAY 720 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 736 1200 752 1200
            WIRE 752 1200 880 1200
            BEGIN DISPLAY 752 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 656 1264 720 1264
            WIRE 720 1264 880 1264
            BEGIN DISPLAY 720 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 1136 1232 1248 1232
            WIRE 1248 1232 1264 1232
            BEGIN DISPLAY 1248 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 320 1440 Q R180 28
        IOMARKER 320 1360 A(31:0) R180 28
        IOMARKER 320 1296 B(31:0) R180 28
        IOMARKER 1600 1296 S(31:0) R0 28
    END SHEET
END SCHEMATIC
