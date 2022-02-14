VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL Q(0)
        SIGNAL A(31)
        SIGNAL A(30)
        SIGNAL A(29)
        SIGNAL A(28)
        SIGNAL A(27)
        SIGNAL A(26)
        SIGNAL A(25)
        SIGNAL A(24)
        SIGNAL A(23)
        SIGNAL A(22)
        SIGNAL A(21)
        SIGNAL A(20)
        SIGNAL A(19)
        SIGNAL A(18)
        SIGNAL A(17)
        SIGNAL A(16)
        SIGNAL A(15)
        SIGNAL A(14)
        SIGNAL A(13)
        SIGNAL A(12)
        SIGNAL A(11)
        SIGNAL A(10)
        SIGNAL A(9)
        SIGNAL A(8)
        SIGNAL A(7)
        SIGNAL A(6)
        SIGNAL A(5)
        SIGNAL A(4)
        SIGNAL A(3)
        SIGNAL A(2)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL Q(1)
        SIGNAL A1_0
        SIGNAL A1_1
        SIGNAL A1_2
        SIGNAL A1_3
        SIGNAL A1_4
        SIGNAL A1_5
        SIGNAL A1_6
        SIGNAL A1_7
        SIGNAL A1_25
        SIGNAL A1_26
        SIGNAL A1_27
        SIGNAL A1_28
        SIGNAL A1_29
        SIGNAL A1_30
        SIGNAL A1_31
        SIGNAL A1_24
        SIGNAL A1_17
        SIGNAL A1_18
        SIGNAL A1_19
        SIGNAL A1_20
        SIGNAL A1_21
        SIGNAL A1_22
        SIGNAL A1_23
        SIGNAL A1_16
        SIGNAL A1_9
        SIGNAL A1_10
        SIGNAL A1_11
        SIGNAL A1_12
        SIGNAL A1_13
        SIGNAL A1_14
        SIGNAL A1_15
        SIGNAL A1_8
        SIGNAL A2_0
        SIGNAL A2_1
        SIGNAL A2_2
        SIGNAL A2_3
        SIGNAL A2_4
        SIGNAL A2_5
        SIGNAL A2_6
        SIGNAL A2_7
        SIGNAL A2_25
        SIGNAL A2_26
        SIGNAL A2_27
        SIGNAL A2_28
        SIGNAL A2_29
        SIGNAL A2_30
        SIGNAL A2_31
        SIGNAL A2_24
        SIGNAL A2_17
        SIGNAL A2_18
        SIGNAL A2_19
        SIGNAL A2_20
        SIGNAL A2_21
        SIGNAL A2_22
        SIGNAL A2_23
        SIGNAL A2_16
        SIGNAL A2_9
        SIGNAL A2_10
        SIGNAL A2_11
        SIGNAL A2_12
        SIGNAL A2_13
        SIGNAL A2_14
        SIGNAL A2_15
        SIGNAL A2_8
        SIGNAL Q(2)
        SIGNAL A3_0
        SIGNAL A3_1
        SIGNAL A3_2
        SIGNAL A3_3
        SIGNAL A3_4
        SIGNAL A3_5
        SIGNAL A3_6
        SIGNAL A3_7
        SIGNAL A3_25
        SIGNAL A3_26
        SIGNAL A3_27
        SIGNAL A3_28
        SIGNAL A3_29
        SIGNAL A3_30
        SIGNAL A3_31
        SIGNAL A3_24
        SIGNAL A3_17
        SIGNAL A3_18
        SIGNAL A3_19
        SIGNAL A3_20
        SIGNAL A3_21
        SIGNAL A3_22
        SIGNAL A3_23
        SIGNAL A3_16
        SIGNAL A3_9
        SIGNAL A3_10
        SIGNAL A3_11
        SIGNAL A3_12
        SIGNAL A3_13
        SIGNAL A3_14
        SIGNAL A3_15
        SIGNAL A3_8
        SIGNAL Q(3)
        SIGNAL A4_0
        SIGNAL A4_1
        SIGNAL A4_2
        SIGNAL A4_3
        SIGNAL A4_4
        SIGNAL A4_5
        SIGNAL A4_6
        SIGNAL A4_7
        SIGNAL A4_25
        SIGNAL A4_26
        SIGNAL A4_27
        SIGNAL A4_28
        SIGNAL A4_29
        SIGNAL A4_30
        SIGNAL A4_31
        SIGNAL A4_24
        SIGNAL A4_17
        SIGNAL A4_18
        SIGNAL A4_19
        SIGNAL A4_20
        SIGNAL A4_21
        SIGNAL A4_22
        SIGNAL A4_23
        SIGNAL A4_16
        SIGNAL A4_9
        SIGNAL A4_10
        SIGNAL A4_11
        SIGNAL A4_12
        SIGNAL A4_13
        SIGNAL A4_14
        SIGNAL A4_15
        SIGNAL A4_8
        SIGNAL Q(4)
        SIGNAL S(0)
        SIGNAL S(1)
        SIGNAL S(2)
        SIGNAL S(3)
        SIGNAL S(4)
        SIGNAL S(5)
        SIGNAL S(6)
        SIGNAL S(7)
        SIGNAL S(25)
        SIGNAL S(26)
        SIGNAL S(27)
        SIGNAL S(28)
        SIGNAL S(29)
        SIGNAL S(30)
        SIGNAL S(31)
        SIGNAL S(24)
        SIGNAL S(17)
        SIGNAL S(18)
        SIGNAL S(19)
        SIGNAL S(20)
        SIGNAL S(21)
        SIGNAL S(22)
        SIGNAL S(23)
        SIGNAL S(16)
        SIGNAL S(9)
        SIGNAL S(10)
        SIGNAL S(11)
        SIGNAL S(12)
        SIGNAL S(13)
        SIGNAL S(14)
        SIGNAL S(15)
        SIGNAL S(8)
        SIGNAL S(31:0)
        SIGNAL A(31:0)
        SIGNAL Q(4:0)
        PORT Output S(31:0)
        PORT Input A(31:0)
        PORT Input Q(4:0)
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
        BEGIN BLOCK XLXI_7 m2_1
            PIN D0 A(31)
            PIN D1 A(30)
            PIN S0 Q(0)
            PIN O A1_31
        END BLOCK
        BEGIN BLOCK XLXI_8 m2_1
            PIN D0 A(30)
            PIN D1 A(29)
            PIN S0 Q(0)
            PIN O A1_30
        END BLOCK
        BEGIN BLOCK XLXI_9 m2_1
            PIN D0 A(29)
            PIN D1 A(28)
            PIN S0 Q(0)
            PIN O A1_29
        END BLOCK
        BEGIN BLOCK XLXI_10 m2_1
            PIN D0 A(28)
            PIN D1 A(27)
            PIN S0 Q(0)
            PIN O A1_28
        END BLOCK
        BEGIN BLOCK XLXI_11 m2_1
            PIN D0 A(27)
            PIN D1 A(26)
            PIN S0 Q(0)
            PIN O A1_27
        END BLOCK
        BEGIN BLOCK XLXI_12 m2_1
            PIN D0 A(26)
            PIN D1 A(25)
            PIN S0 Q(0)
            PIN O A1_26
        END BLOCK
        BEGIN BLOCK XLXI_13 m2_1
            PIN D0 A(25)
            PIN D1 A(24)
            PIN S0 Q(0)
            PIN O A1_25
        END BLOCK
        BEGIN BLOCK XLXI_14 m2_1
            PIN D0 A(24)
            PIN D1 A(23)
            PIN S0 Q(0)
            PIN O A1_24
        END BLOCK
        BEGIN BLOCK XLXI_15 m2_1
            PIN D0 A(23)
            PIN D1 A(22)
            PIN S0 Q(0)
            PIN O A1_23
        END BLOCK
        BEGIN BLOCK XLXI_16 m2_1
            PIN D0 A(22)
            PIN D1 A(21)
            PIN S0 Q(0)
            PIN O A1_22
        END BLOCK
        BEGIN BLOCK XLXI_17 m2_1
            PIN D0 A(21)
            PIN D1 A(20)
            PIN S0 Q(0)
            PIN O A1_21
        END BLOCK
        BEGIN BLOCK XLXI_18 m2_1
            PIN D0 A(20)
            PIN D1 A(19)
            PIN S0 Q(0)
            PIN O A1_20
        END BLOCK
        BEGIN BLOCK XLXI_19 m2_1
            PIN D0 A(19)
            PIN D1 A(18)
            PIN S0 Q(0)
            PIN O A1_19
        END BLOCK
        BEGIN BLOCK XLXI_20 m2_1
            PIN D0 A(18)
            PIN D1 A(17)
            PIN S0 Q(0)
            PIN O A1_18
        END BLOCK
        BEGIN BLOCK XLXI_21 m2_1
            PIN D0 A(17)
            PIN D1 A(16)
            PIN S0 Q(0)
            PIN O A1_17
        END BLOCK
        BEGIN BLOCK XLXI_22 m2_1
            PIN D0 A(16)
            PIN D1 A(15)
            PIN S0 Q(0)
            PIN O A1_16
        END BLOCK
        BEGIN BLOCK XLXI_23 m2_1
            PIN D0 A(15)
            PIN D1 A(14)
            PIN S0 Q(0)
            PIN O A1_15
        END BLOCK
        BEGIN BLOCK XLXI_24 m2_1
            PIN D0 A(14)
            PIN D1 A(13)
            PIN S0 Q(0)
            PIN O A1_14
        END BLOCK
        BEGIN BLOCK XLXI_25 m2_1
            PIN D0 A(13)
            PIN D1 A(12)
            PIN S0 Q(0)
            PIN O A1_13
        END BLOCK
        BEGIN BLOCK XLXI_26 m2_1
            PIN D0 A(12)
            PIN D1 A(11)
            PIN S0 Q(0)
            PIN O A1_12
        END BLOCK
        BEGIN BLOCK XLXI_27 m2_1
            PIN D0 A(11)
            PIN D1 A(10)
            PIN S0 Q(0)
            PIN O A1_11
        END BLOCK
        BEGIN BLOCK XLXI_28 m2_1
            PIN D0 A(10)
            PIN D1 A(9)
            PIN S0 Q(0)
            PIN O A1_10
        END BLOCK
        BEGIN BLOCK XLXI_29 m2_1
            PIN D0 A(9)
            PIN D1 A(8)
            PIN S0 Q(0)
            PIN O A1_9
        END BLOCK
        BEGIN BLOCK XLXI_30 m2_1
            PIN D0 A(8)
            PIN D1 A(7)
            PIN S0 Q(0)
            PIN O A1_8
        END BLOCK
        BEGIN BLOCK XLXI_31 m2_1
            PIN D0 A(7)
            PIN D1 A(6)
            PIN S0 Q(0)
            PIN O A1_7
        END BLOCK
        BEGIN BLOCK XLXI_32 m2_1
            PIN D0 A(6)
            PIN D1 A(5)
            PIN S0 Q(0)
            PIN O A1_6
        END BLOCK
        BEGIN BLOCK XLXI_33 m2_1
            PIN D0 A(5)
            PIN D1 A(4)
            PIN S0 Q(0)
            PIN O A1_5
        END BLOCK
        BEGIN BLOCK XLXI_34 m2_1
            PIN D0 A(4)
            PIN D1 A(3)
            PIN S0 Q(0)
            PIN O A1_4
        END BLOCK
        BEGIN BLOCK XLXI_35 m2_1
            PIN D0 A(3)
            PIN D1 A(2)
            PIN S0 Q(0)
            PIN O A1_3
        END BLOCK
        BEGIN BLOCK XLXI_36 m2_1
            PIN D0 A(2)
            PIN D1 A(1)
            PIN S0 Q(0)
            PIN O A1_2
        END BLOCK
        BEGIN BLOCK XLXI_37 m2_1
            PIN D0 A(1)
            PIN D1 A(0)
            PIN S0 Q(0)
            PIN O A1_1
        END BLOCK
        BEGIN BLOCK XLXI_101 m2_1
            PIN D0 A(0)
            PIN D1 A(31)
            PIN S0 Q(0)
            PIN O A1_0
        END BLOCK
        BEGIN BLOCK XLXI_102 m2_1
            PIN D0 A1_30
            PIN D1 A1_28
            PIN S0 Q(1)
            PIN O A2_30
        END BLOCK
        BEGIN BLOCK XLXI_103 m2_1
            PIN D0 A1_29
            PIN D1 A1_27
            PIN S0 Q(1)
            PIN O A2_29
        END BLOCK
        BEGIN BLOCK XLXI_104 m2_1
            PIN D0 A1_28
            PIN D1 A1_26
            PIN S0 Q(1)
            PIN O A2_28
        END BLOCK
        BEGIN BLOCK XLXI_105 m2_1
            PIN D0 A1_27
            PIN D1 A1_25
            PIN S0 Q(1)
            PIN O A2_27
        END BLOCK
        BEGIN BLOCK XLXI_106 m2_1
            PIN D0 A1_26
            PIN D1 A1_24
            PIN S0 Q(1)
            PIN O A2_26
        END BLOCK
        BEGIN BLOCK XLXI_107 m2_1
            PIN D0 A1_25
            PIN D1 A1_23
            PIN S0 Q(1)
            PIN O A2_25
        END BLOCK
        BEGIN BLOCK XLXI_108 m2_1
            PIN D0 A1_24
            PIN D1 A1_22
            PIN S0 Q(1)
            PIN O A2_24
        END BLOCK
        BEGIN BLOCK XLXI_109 m2_1
            PIN D0 A1_23
            PIN D1 A1_21
            PIN S0 Q(1)
            PIN O A2_23
        END BLOCK
        BEGIN BLOCK XLXI_110 m2_1
            PIN D0 A1_22
            PIN D1 A1_20
            PIN S0 Q(1)
            PIN O A2_22
        END BLOCK
        BEGIN BLOCK XLXI_111 m2_1
            PIN D0 A1_21
            PIN D1 A1_19
            PIN S0 Q(1)
            PIN O A2_21
        END BLOCK
        BEGIN BLOCK XLXI_112 m2_1
            PIN D0 A1_20
            PIN D1 A1_18
            PIN S0 Q(1)
            PIN O A2_20
        END BLOCK
        BEGIN BLOCK XLXI_113 m2_1
            PIN D0 A1_19
            PIN D1 A1_17
            PIN S0 Q(1)
            PIN O A2_19
        END BLOCK
        BEGIN BLOCK XLXI_114 m2_1
            PIN D0 A1_18
            PIN D1 A1_16
            PIN S0 Q(1)
            PIN O A2_18
        END BLOCK
        BEGIN BLOCK XLXI_115 m2_1
            PIN D0 A1_17
            PIN D1 A1_15
            PIN S0 Q(1)
            PIN O A2_17
        END BLOCK
        BEGIN BLOCK XLXI_116 m2_1
            PIN D0 A1_16
            PIN D1 A1_14
            PIN S0 Q(1)
            PIN O A2_16
        END BLOCK
        BEGIN BLOCK XLXI_117 m2_1
            PIN D0 A1_15
            PIN D1 A1_13
            PIN S0 Q(1)
            PIN O A2_15
        END BLOCK
        BEGIN BLOCK XLXI_118 m2_1
            PIN D0 A1_14
            PIN D1 A1_12
            PIN S0 Q(1)
            PIN O A2_14
        END BLOCK
        BEGIN BLOCK XLXI_119 m2_1
            PIN D0 A1_13
            PIN D1 A1_11
            PIN S0 Q(1)
            PIN O A2_13
        END BLOCK
        BEGIN BLOCK XLXI_120 m2_1
            PIN D0 A1_12
            PIN D1 A1_10
            PIN S0 Q(1)
            PIN O A2_12
        END BLOCK
        BEGIN BLOCK XLXI_121 m2_1
            PIN D0 A1_11
            PIN D1 A1_9
            PIN S0 Q(1)
            PIN O A2_11
        END BLOCK
        BEGIN BLOCK XLXI_122 m2_1
            PIN D0 A1_10
            PIN D1 A1_8
            PIN S0 Q(1)
            PIN O A2_10
        END BLOCK
        BEGIN BLOCK XLXI_123 m2_1
            PIN D0 A1_9
            PIN D1 A1_7
            PIN S0 Q(1)
            PIN O A2_9
        END BLOCK
        BEGIN BLOCK XLXI_124 m2_1
            PIN D0 A1_8
            PIN D1 A1_6
            PIN S0 Q(1)
            PIN O A2_8
        END BLOCK
        BEGIN BLOCK XLXI_125 m2_1
            PIN D0 A1_7
            PIN D1 A1_5
            PIN S0 Q(1)
            PIN O A2_7
        END BLOCK
        BEGIN BLOCK XLXI_126 m2_1
            PIN D0 A1_6
            PIN D1 A1_4
            PIN S0 Q(1)
            PIN O A2_6
        END BLOCK
        BEGIN BLOCK XLXI_127 m2_1
            PIN D0 A1_5
            PIN D1 A1_3
            PIN S0 Q(1)
            PIN O A2_5
        END BLOCK
        BEGIN BLOCK XLXI_128 m2_1
            PIN D0 A1_4
            PIN D1 A1_2
            PIN S0 Q(1)
            PIN O A2_4
        END BLOCK
        BEGIN BLOCK XLXI_129 m2_1
            PIN D0 A1_3
            PIN D1 A1_1
            PIN S0 Q(1)
            PIN O A2_3
        END BLOCK
        BEGIN BLOCK XLXI_130 m2_1
            PIN D0 A1_2
            PIN D1 A1_0
            PIN S0 Q(1)
            PIN O A2_2
        END BLOCK
        BEGIN BLOCK XLXI_131 m2_1
            PIN D0 A1_1
            PIN D1 A1_31
            PIN S0 Q(1)
            PIN O A2_1
        END BLOCK
        BEGIN BLOCK XLXI_132 m2_1
            PIN D0 A1_0
            PIN D1 A1_30
            PIN S0 Q(1)
            PIN O A2_0
        END BLOCK
        BEGIN BLOCK XLXI_133 m2_1
            PIN D0 A1_31
            PIN D1 A1_29
            PIN S0 Q(1)
            PIN O A2_31
        END BLOCK
        BEGIN BLOCK XLXI_134 m2_1
            PIN D0 A2_30
            PIN D1 A2_26
            PIN S0 Q(2)
            PIN O A3_30
        END BLOCK
        BEGIN BLOCK XLXI_135 m2_1
            PIN D0 A2_29
            PIN D1 A2_25
            PIN S0 Q(2)
            PIN O A3_29
        END BLOCK
        BEGIN BLOCK XLXI_136 m2_1
            PIN D0 A2_28
            PIN D1 A2_24
            PIN S0 Q(2)
            PIN O A3_28
        END BLOCK
        BEGIN BLOCK XLXI_137 m2_1
            PIN D0 A2_27
            PIN D1 A2_23
            PIN S0 Q(2)
            PIN O A3_27
        END BLOCK
        BEGIN BLOCK XLXI_138 m2_1
            PIN D0 A2_26
            PIN D1 A2_22
            PIN S0 Q(2)
            PIN O A3_26
        END BLOCK
        BEGIN BLOCK XLXI_139 m2_1
            PIN D0 A2_25
            PIN D1 A2_21
            PIN S0 Q(2)
            PIN O A3_25
        END BLOCK
        BEGIN BLOCK XLXI_140 m2_1
            PIN D0 A2_24
            PIN D1 A2_20
            PIN S0 Q(2)
            PIN O A3_24
        END BLOCK
        BEGIN BLOCK XLXI_141 m2_1
            PIN D0 A2_23
            PIN D1 A2_19
            PIN S0 Q(2)
            PIN O A3_23
        END BLOCK
        BEGIN BLOCK XLXI_142 m2_1
            PIN D0 A2_22
            PIN D1 A2_18
            PIN S0 Q(2)
            PIN O A3_22
        END BLOCK
        BEGIN BLOCK XLXI_143 m2_1
            PIN D0 A2_21
            PIN D1 A2_17
            PIN S0 Q(2)
            PIN O A3_21
        END BLOCK
        BEGIN BLOCK XLXI_144 m2_1
            PIN D0 A2_20
            PIN D1 A2_16
            PIN S0 Q(2)
            PIN O A3_20
        END BLOCK
        BEGIN BLOCK XLXI_145 m2_1
            PIN D0 A2_19
            PIN D1 A2_15
            PIN S0 Q(2)
            PIN O A3_19
        END BLOCK
        BEGIN BLOCK XLXI_146 m2_1
            PIN D0 A2_18
            PIN D1 A2_14
            PIN S0 Q(2)
            PIN O A3_18
        END BLOCK
        BEGIN BLOCK XLXI_147 m2_1
            PIN D0 A2_17
            PIN D1 A2_13
            PIN S0 Q(2)
            PIN O A3_17
        END BLOCK
        BEGIN BLOCK XLXI_148 m2_1
            PIN D0 A2_16
            PIN D1 A2_12
            PIN S0 Q(2)
            PIN O A3_16
        END BLOCK
        BEGIN BLOCK XLXI_149 m2_1
            PIN D0 A2_15
            PIN D1 A2_11
            PIN S0 Q(2)
            PIN O A3_15
        END BLOCK
        BEGIN BLOCK XLXI_150 m2_1
            PIN D0 A2_14
            PIN D1 A2_10
            PIN S0 Q(2)
            PIN O A3_14
        END BLOCK
        BEGIN BLOCK XLXI_151 m2_1
            PIN D0 A2_13
            PIN D1 A2_9
            PIN S0 Q(2)
            PIN O A3_13
        END BLOCK
        BEGIN BLOCK XLXI_152 m2_1
            PIN D0 A2_12
            PIN D1 A2_8
            PIN S0 Q(2)
            PIN O A3_12
        END BLOCK
        BEGIN BLOCK XLXI_153 m2_1
            PIN D0 A2_11
            PIN D1 A2_7
            PIN S0 Q(2)
            PIN O A3_11
        END BLOCK
        BEGIN BLOCK XLXI_154 m2_1
            PIN D0 A2_10
            PIN D1 A2_6
            PIN S0 Q(2)
            PIN O A3_10
        END BLOCK
        BEGIN BLOCK XLXI_155 m2_1
            PIN D0 A2_9
            PIN D1 A2_5
            PIN S0 Q(2)
            PIN O A3_9
        END BLOCK
        BEGIN BLOCK XLXI_156 m2_1
            PIN D0 A2_8
            PIN D1 A2_4
            PIN S0 Q(2)
            PIN O A3_8
        END BLOCK
        BEGIN BLOCK XLXI_157 m2_1
            PIN D0 A2_7
            PIN D1 A2_3
            PIN S0 Q(2)
            PIN O A3_7
        END BLOCK
        BEGIN BLOCK XLXI_158 m2_1
            PIN D0 A2_6
            PIN D1 A2_2
            PIN S0 Q(2)
            PIN O A3_6
        END BLOCK
        BEGIN BLOCK XLXI_159 m2_1
            PIN D0 A2_5
            PIN D1 A2_1
            PIN S0 Q(2)
            PIN O A3_5
        END BLOCK
        BEGIN BLOCK XLXI_160 m2_1
            PIN D0 A2_4
            PIN D1 A2_0
            PIN S0 Q(2)
            PIN O A3_4
        END BLOCK
        BEGIN BLOCK XLXI_161 m2_1
            PIN D0 A2_3
            PIN D1 A2_31
            PIN S0 Q(2)
            PIN O A3_3
        END BLOCK
        BEGIN BLOCK XLXI_162 m2_1
            PIN D0 A2_2
            PIN D1 A2_30
            PIN S0 Q(2)
            PIN O A3_2
        END BLOCK
        BEGIN BLOCK XLXI_163 m2_1
            PIN D0 A2_1
            PIN D1 A2_29
            PIN S0 Q(2)
            PIN O A3_1
        END BLOCK
        BEGIN BLOCK XLXI_164 m2_1
            PIN D0 A2_0
            PIN D1 A2_28
            PIN S0 Q(2)
            PIN O A3_0
        END BLOCK
        BEGIN BLOCK XLXI_165 m2_1
            PIN D0 A2_31
            PIN D1 A2_27
            PIN S0 Q(2)
            PIN O A3_31
        END BLOCK
        BEGIN BLOCK XLXI_196 m2_1
            PIN D0 A3_30
            PIN D1 A3_22
            PIN S0 Q(3)
            PIN O A4_30
        END BLOCK
        BEGIN BLOCK XLXI_197 m2_1
            PIN D0 A3_29
            PIN D1 A3_21
            PIN S0 Q(3)
            PIN O A4_29
        END BLOCK
        BEGIN BLOCK XLXI_198 m2_1
            PIN D0 A3_28
            PIN D1 A3_20
            PIN S0 Q(3)
            PIN O A4_28
        END BLOCK
        BEGIN BLOCK XLXI_199 m2_1
            PIN D0 A3_27
            PIN D1 A3_19
            PIN S0 Q(3)
            PIN O A4_27
        END BLOCK
        BEGIN BLOCK XLXI_200 m2_1
            PIN D0 A3_26
            PIN D1 A3_18
            PIN S0 Q(3)
            PIN O A4_26
        END BLOCK
        BEGIN BLOCK XLXI_201 m2_1
            PIN D0 A3_25
            PIN D1 A3_17
            PIN S0 Q(3)
            PIN O A4_25
        END BLOCK
        BEGIN BLOCK XLXI_202 m2_1
            PIN D0 A3_24
            PIN D1 A3_16
            PIN S0 Q(3)
            PIN O A4_24
        END BLOCK
        BEGIN BLOCK XLXI_203 m2_1
            PIN D0 A3_23
            PIN D1 A3_15
            PIN S0 Q(3)
            PIN O A4_23
        END BLOCK
        BEGIN BLOCK XLXI_204 m2_1
            PIN D0 A3_22
            PIN D1 A3_14
            PIN S0 Q(3)
            PIN O A4_22
        END BLOCK
        BEGIN BLOCK XLXI_205 m2_1
            PIN D0 A3_21
            PIN D1 A3_13
            PIN S0 Q(3)
            PIN O A4_21
        END BLOCK
        BEGIN BLOCK XLXI_206 m2_1
            PIN D0 A3_20
            PIN D1 A3_12
            PIN S0 Q(3)
            PIN O A4_20
        END BLOCK
        BEGIN BLOCK XLXI_207 m2_1
            PIN D0 A3_19
            PIN D1 A3_11
            PIN S0 Q(3)
            PIN O A4_19
        END BLOCK
        BEGIN BLOCK XLXI_208 m2_1
            PIN D0 A3_18
            PIN D1 A3_10
            PIN S0 Q(3)
            PIN O A4_18
        END BLOCK
        BEGIN BLOCK XLXI_209 m2_1
            PIN D0 A3_17
            PIN D1 A3_9
            PIN S0 Q(3)
            PIN O A4_17
        END BLOCK
        BEGIN BLOCK XLXI_210 m2_1
            PIN D0 A3_16
            PIN D1 A3_8
            PIN S0 Q(3)
            PIN O A4_16
        END BLOCK
        BEGIN BLOCK XLXI_211 m2_1
            PIN D0 A3_15
            PIN D1 A3_7
            PIN S0 Q(3)
            PIN O A4_15
        END BLOCK
        BEGIN BLOCK XLXI_212 m2_1
            PIN D0 A3_14
            PIN D1 A3_6
            PIN S0 Q(3)
            PIN O A4_14
        END BLOCK
        BEGIN BLOCK XLXI_213 m2_1
            PIN D0 A3_13
            PIN D1 A3_5
            PIN S0 Q(3)
            PIN O A4_13
        END BLOCK
        BEGIN BLOCK XLXI_214 m2_1
            PIN D0 A3_12
            PIN D1 A3_4
            PIN S0 Q(3)
            PIN O A4_12
        END BLOCK
        BEGIN BLOCK XLXI_215 m2_1
            PIN D0 A3_11
            PIN D1 A3_3
            PIN S0 Q(3)
            PIN O A4_11
        END BLOCK
        BEGIN BLOCK XLXI_216 m2_1
            PIN D0 A3_10
            PIN D1 A3_2
            PIN S0 Q(3)
            PIN O A4_10
        END BLOCK
        BEGIN BLOCK XLXI_217 m2_1
            PIN D0 A3_9
            PIN D1 A3_1
            PIN S0 Q(3)
            PIN O A4_9
        END BLOCK
        BEGIN BLOCK XLXI_218 m2_1
            PIN D0 A3_8
            PIN D1 A3_0
            PIN S0 Q(3)
            PIN O A4_8
        END BLOCK
        BEGIN BLOCK XLXI_219 m2_1
            PIN D0 A3_7
            PIN D1 A3_31
            PIN S0 Q(3)
            PIN O A4_7
        END BLOCK
        BEGIN BLOCK XLXI_220 m2_1
            PIN D0 A3_6
            PIN D1 A3_30
            PIN S0 Q(3)
            PIN O A4_6
        END BLOCK
        BEGIN BLOCK XLXI_221 m2_1
            PIN D0 A3_5
            PIN D1 A3_29
            PIN S0 Q(3)
            PIN O A4_5
        END BLOCK
        BEGIN BLOCK XLXI_222 m2_1
            PIN D0 A3_4
            PIN D1 A3_28
            PIN S0 Q(3)
            PIN O A4_4
        END BLOCK
        BEGIN BLOCK XLXI_223 m2_1
            PIN D0 A3_3
            PIN D1 A3_27
            PIN S0 Q(3)
            PIN O A4_3
        END BLOCK
        BEGIN BLOCK XLXI_224 m2_1
            PIN D0 A3_2
            PIN D1 A3_26
            PIN S0 Q(3)
            PIN O A4_2
        END BLOCK
        BEGIN BLOCK XLXI_225 m2_1
            PIN D0 A3_1
            PIN D1 A3_25
            PIN S0 Q(3)
            PIN O A4_1
        END BLOCK
        BEGIN BLOCK XLXI_226 m2_1
            PIN D0 A3_0
            PIN D1 A3_24
            PIN S0 Q(3)
            PIN O A4_0
        END BLOCK
        BEGIN BLOCK XLXI_227 m2_1
            PIN D0 A3_31
            PIN D1 A3_23
            PIN S0 Q(3)
            PIN O A4_31
        END BLOCK
        BEGIN BLOCK XLXI_228 m2_1
            PIN D0 A4_30
            PIN D1 A4_14
            PIN S0 Q(4)
            PIN O S(30)
        END BLOCK
        BEGIN BLOCK XLXI_229 m2_1
            PIN D0 A4_29
            PIN D1 A4_13
            PIN S0 Q(4)
            PIN O S(29)
        END BLOCK
        BEGIN BLOCK XLXI_230 m2_1
            PIN D0 A4_28
            PIN D1 A4_12
            PIN S0 Q(4)
            PIN O S(28)
        END BLOCK
        BEGIN BLOCK XLXI_231 m2_1
            PIN D0 A4_27
            PIN D1 A4_11
            PIN S0 Q(4)
            PIN O S(27)
        END BLOCK
        BEGIN BLOCK XLXI_232 m2_1
            PIN D0 A4_26
            PIN D1 A4_10
            PIN S0 Q(4)
            PIN O S(26)
        END BLOCK
        BEGIN BLOCK XLXI_233 m2_1
            PIN D0 A4_25
            PIN D1 A4_9
            PIN S0 Q(4)
            PIN O S(25)
        END BLOCK
        BEGIN BLOCK XLXI_234 m2_1
            PIN D0 A4_24
            PIN D1 A4_8
            PIN S0 Q(4)
            PIN O S(24)
        END BLOCK
        BEGIN BLOCK XLXI_235 m2_1
            PIN D0 A4_23
            PIN D1 A4_7
            PIN S0 Q(4)
            PIN O S(23)
        END BLOCK
        BEGIN BLOCK XLXI_236 m2_1
            PIN D0 A4_22
            PIN D1 A4_6
            PIN S0 Q(4)
            PIN O S(22)
        END BLOCK
        BEGIN BLOCK XLXI_237 m2_1
            PIN D0 A4_21
            PIN D1 A4_5
            PIN S0 Q(4)
            PIN O S(21)
        END BLOCK
        BEGIN BLOCK XLXI_238 m2_1
            PIN D0 A4_20
            PIN D1 A4_4
            PIN S0 Q(4)
            PIN O S(20)
        END BLOCK
        BEGIN BLOCK XLXI_239 m2_1
            PIN D0 A4_19
            PIN D1 A4_3
            PIN S0 Q(4)
            PIN O S(19)
        END BLOCK
        BEGIN BLOCK XLXI_240 m2_1
            PIN D0 A4_18
            PIN D1 A4_2
            PIN S0 Q(4)
            PIN O S(18)
        END BLOCK
        BEGIN BLOCK XLXI_241 m2_1
            PIN D0 A4_17
            PIN D1 A4_1
            PIN S0 Q(4)
            PIN O S(17)
        END BLOCK
        BEGIN BLOCK XLXI_242 m2_1
            PIN D0 A4_16
            PIN D1 A4_0
            PIN S0 Q(4)
            PIN O S(16)
        END BLOCK
        BEGIN BLOCK XLXI_243 m2_1
            PIN D0 A4_15
            PIN D1 A4_31
            PIN S0 Q(4)
            PIN O S(15)
        END BLOCK
        BEGIN BLOCK XLXI_244 m2_1
            PIN D0 A4_14
            PIN D1 A4_30
            PIN S0 Q(4)
            PIN O S(14)
        END BLOCK
        BEGIN BLOCK XLXI_245 m2_1
            PIN D0 A4_13
            PIN D1 A4_29
            PIN S0 Q(4)
            PIN O S(13)
        END BLOCK
        BEGIN BLOCK XLXI_246 m2_1
            PIN D0 A4_12
            PIN D1 A4_28
            PIN S0 Q(4)
            PIN O S(12)
        END BLOCK
        BEGIN BLOCK XLXI_247 m2_1
            PIN D0 A4_11
            PIN D1 A4_27
            PIN S0 Q(4)
            PIN O S(11)
        END BLOCK
        BEGIN BLOCK XLXI_248 m2_1
            PIN D0 A4_10
            PIN D1 A4_26
            PIN S0 Q(4)
            PIN O S(10)
        END BLOCK
        BEGIN BLOCK XLXI_249 m2_1
            PIN D0 A4_9
            PIN D1 A4_25
            PIN S0 Q(4)
            PIN O S(9)
        END BLOCK
        BEGIN BLOCK XLXI_250 m2_1
            PIN D0 A4_8
            PIN D1 A4_24
            PIN S0 Q(4)
            PIN O S(8)
        END BLOCK
        BEGIN BLOCK XLXI_251 m2_1
            PIN D0 A4_7
            PIN D1 A4_23
            PIN S0 Q(4)
            PIN O S(7)
        END BLOCK
        BEGIN BLOCK XLXI_252 m2_1
            PIN D0 A4_6
            PIN D1 A4_22
            PIN S0 Q(4)
            PIN O S(6)
        END BLOCK
        BEGIN BLOCK XLXI_253 m2_1
            PIN D0 A4_5
            PIN D1 A4_21
            PIN S0 Q(4)
            PIN O S(5)
        END BLOCK
        BEGIN BLOCK XLXI_254 m2_1
            PIN D0 A4_4
            PIN D1 A4_20
            PIN S0 Q(4)
            PIN O S(4)
        END BLOCK
        BEGIN BLOCK XLXI_255 m2_1
            PIN D0 A4_3
            PIN D1 A4_19
            PIN S0 Q(4)
            PIN O S(3)
        END BLOCK
        BEGIN BLOCK XLXI_256 m2_1
            PIN D0 A4_2
            PIN D1 A4_18
            PIN S0 Q(4)
            PIN O S(2)
        END BLOCK
        BEGIN BLOCK XLXI_257 m2_1
            PIN D0 A4_1
            PIN D1 A4_17
            PIN S0 Q(4)
            PIN O S(1)
        END BLOCK
        BEGIN BLOCK XLXI_258 m2_1
            PIN D0 A4_0
            PIN D1 A4_16
            PIN S0 Q(4)
            PIN O S(0)
        END BLOCK
        BEGIN BLOCK XLXI_259 m2_1
            PIN D0 A4_31
            PIN D1 A4_15
            PIN S0 Q(4)
            PIN O S(31)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5382 7609
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        INSTANCE XLXI_7 640 208 R0
        INSTANCE XLXI_8 640 448 R0
        INSTANCE XLXI_9 640 688 R0
        INSTANCE XLXI_10 640 928 R0
        INSTANCE XLXI_11 640 1168 R0
        INSTANCE XLXI_12 640 1408 R0
        INSTANCE XLXI_13 640 1648 R0
        INSTANCE XLXI_14 640 1888 R0
        INSTANCE XLXI_15 640 2128 R0
        INSTANCE XLXI_16 640 2368 R0
        INSTANCE XLXI_17 640 2608 R0
        INSTANCE XLXI_18 640 2848 R0
        INSTANCE XLXI_19 640 3088 R0
        INSTANCE XLXI_20 640 3328 R0
        INSTANCE XLXI_21 640 3568 R0
        INSTANCE XLXI_22 640 3808 R0
        INSTANCE XLXI_23 640 4048 R0
        INSTANCE XLXI_24 640 4288 R0
        INSTANCE XLXI_25 640 4528 R0
        INSTANCE XLXI_26 640 4768 R0
        INSTANCE XLXI_27 640 5008 R0
        INSTANCE XLXI_28 640 5248 R0
        INSTANCE XLXI_29 640 5488 R0
        INSTANCE XLXI_30 640 5728 R0
        INSTANCE XLXI_31 640 5968 R0
        INSTANCE XLXI_32 640 6208 R0
        INSTANCE XLXI_33 640 6448 R0
        INSTANCE XLXI_34 640 6688 R0
        INSTANCE XLXI_35 640 6928 R0
        INSTANCE XLXI_36 640 7168 R0
        INSTANCE XLXI_37 640 7408 R0
        INSTANCE XLXI_101 640 7632 R0
        BEGIN BRANCH Q(0)
            WIRE 624 176 640 176
            WIRE 624 176 624 416
            WIRE 624 416 640 416
            WIRE 624 416 624 656
            WIRE 624 656 640 656
            WIRE 624 656 624 896
            WIRE 624 896 640 896
            WIRE 624 896 624 1136
            WIRE 624 1136 640 1136
            WIRE 624 1136 624 1376
            WIRE 624 1376 640 1376
            WIRE 624 1376 624 1616
            WIRE 624 1616 640 1616
            WIRE 624 1616 624 1856
            WIRE 624 1856 640 1856
            WIRE 624 1856 624 2096
            WIRE 624 2096 640 2096
            WIRE 624 2096 624 2336
            WIRE 624 2336 640 2336
            WIRE 624 2336 624 2576
            WIRE 624 2576 640 2576
            WIRE 624 2576 624 2816
            WIRE 624 2816 640 2816
            WIRE 624 2816 624 3056
            WIRE 624 3056 640 3056
            WIRE 624 3056 624 3296
            WIRE 624 3296 640 3296
            WIRE 624 3296 624 3536
            WIRE 624 3536 640 3536
            WIRE 624 3536 624 3776
            WIRE 624 3776 640 3776
            WIRE 624 3776 624 4016
            WIRE 624 4016 640 4016
            WIRE 624 4016 624 4256
            WIRE 624 4256 640 4256
            WIRE 624 4256 624 4496
            WIRE 624 4496 640 4496
            WIRE 624 4496 624 4736
            WIRE 624 4736 640 4736
            WIRE 624 4736 624 4976
            WIRE 624 4976 640 4976
            WIRE 624 4976 624 5216
            WIRE 624 5216 640 5216
            WIRE 624 5216 624 5456
            WIRE 624 5456 640 5456
            WIRE 624 5456 624 5696
            WIRE 624 5696 640 5696
            WIRE 624 5696 624 5936
            WIRE 624 5936 640 5936
            WIRE 624 5936 624 6176
            WIRE 624 6176 640 6176
            WIRE 624 6176 624 6416
            WIRE 624 6416 640 6416
            WIRE 624 6416 624 6656
            WIRE 624 6656 640 6656
            WIRE 624 6656 624 6896
            WIRE 624 6896 640 6896
            WIRE 624 6896 624 7136
            WIRE 624 7136 640 7136
            WIRE 624 7136 624 7376
            WIRE 624 7376 640 7376
            WIRE 624 7376 624 7568
            WIRE 624 7568 624 7600
            WIRE 624 7600 640 7600
            BEGIN DISPLAY 624 7568 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31)
            WIRE 480 48 560 48
            WIRE 560 48 640 48
            BEGIN DISPLAY 560 48 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(30)
            WIRE 480 112 560 112
            WIRE 560 112 640 112
            BEGIN DISPLAY 560 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(30)
            WIRE 480 288 560 288
            WIRE 560 288 640 288
            BEGIN DISPLAY 560 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(29)
            WIRE 480 352 560 352
            WIRE 560 352 640 352
            BEGIN DISPLAY 560 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(29)
            WIRE 480 528 560 528
            WIRE 560 528 640 528
            BEGIN DISPLAY 560 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(28)
            WIRE 480 592 560 592
            WIRE 560 592 640 592
            BEGIN DISPLAY 560 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(28)
            WIRE 480 768 560 768
            WIRE 560 768 640 768
            BEGIN DISPLAY 560 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(27)
            WIRE 480 832 560 832
            WIRE 560 832 640 832
            BEGIN DISPLAY 560 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(27)
            WIRE 480 1008 560 1008
            WIRE 560 1008 640 1008
            BEGIN DISPLAY 560 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(26)
            WIRE 480 1072 560 1072
            WIRE 560 1072 640 1072
            BEGIN DISPLAY 560 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(26)
            WIRE 480 1248 560 1248
            WIRE 560 1248 640 1248
            BEGIN DISPLAY 560 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(25)
            WIRE 480 1312 560 1312
            WIRE 560 1312 640 1312
            BEGIN DISPLAY 560 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(25)
            WIRE 480 1488 560 1488
            WIRE 560 1488 640 1488
            BEGIN DISPLAY 560 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(24)
            WIRE 480 1552 560 1552
            WIRE 560 1552 640 1552
            BEGIN DISPLAY 560 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(24)
            WIRE 480 1728 560 1728
            WIRE 560 1728 640 1728
            BEGIN DISPLAY 560 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23)
            WIRE 480 1792 560 1792
            WIRE 560 1792 640 1792
            BEGIN DISPLAY 560 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23)
            WIRE 480 1968 560 1968
            WIRE 560 1968 640 1968
            BEGIN DISPLAY 560 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(22)
            WIRE 480 2032 560 2032
            WIRE 560 2032 640 2032
            BEGIN DISPLAY 560 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(22)
            WIRE 480 2208 560 2208
            WIRE 560 2208 640 2208
            BEGIN DISPLAY 560 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(21)
            WIRE 480 2272 560 2272
            WIRE 560 2272 640 2272
            BEGIN DISPLAY 560 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(21)
            WIRE 480 2448 560 2448
            WIRE 560 2448 640 2448
            BEGIN DISPLAY 560 2448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(20)
            WIRE 480 2512 560 2512
            WIRE 560 2512 640 2512
            BEGIN DISPLAY 560 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(20)
            WIRE 480 2688 560 2688
            WIRE 560 2688 640 2688
            BEGIN DISPLAY 560 2688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(19)
            WIRE 480 2752 560 2752
            WIRE 560 2752 640 2752
            BEGIN DISPLAY 560 2752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(19)
            WIRE 480 2928 560 2928
            WIRE 560 2928 640 2928
            BEGIN DISPLAY 560 2928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(18)
            WIRE 480 2992 560 2992
            WIRE 560 2992 640 2992
            BEGIN DISPLAY 560 2992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(18)
            WIRE 480 3168 560 3168
            WIRE 560 3168 640 3168
            BEGIN DISPLAY 560 3168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(17)
            WIRE 480 3232 560 3232
            WIRE 560 3232 640 3232
            BEGIN DISPLAY 560 3232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(17)
            WIRE 480 3408 560 3408
            WIRE 560 3408 640 3408
            BEGIN DISPLAY 560 3408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(16)
            WIRE 480 3472 560 3472
            WIRE 560 3472 640 3472
            BEGIN DISPLAY 560 3472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(16)
            WIRE 480 3648 560 3648
            WIRE 560 3648 640 3648
            BEGIN DISPLAY 560 3648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15)
            WIRE 480 3712 560 3712
            WIRE 560 3712 640 3712
            BEGIN DISPLAY 560 3712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15)
            WIRE 480 3888 560 3888
            WIRE 560 3888 640 3888
            BEGIN DISPLAY 560 3888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(14)
            WIRE 480 3952 560 3952
            WIRE 560 3952 640 3952
            BEGIN DISPLAY 560 3952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(14)
            WIRE 480 4128 560 4128
            WIRE 560 4128 640 4128
            BEGIN DISPLAY 560 4128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(13)
            WIRE 480 4192 560 4192
            WIRE 560 4192 640 4192
            BEGIN DISPLAY 560 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(13)
            WIRE 480 4368 560 4368
            WIRE 560 4368 640 4368
            BEGIN DISPLAY 560 4368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(12)
            WIRE 480 4432 560 4432
            WIRE 560 4432 640 4432
            BEGIN DISPLAY 560 4432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(12)
            WIRE 480 4608 560 4608
            WIRE 560 4608 640 4608
            BEGIN DISPLAY 560 4608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(11)
            WIRE 480 4672 560 4672
            WIRE 560 4672 640 4672
            BEGIN DISPLAY 560 4672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(11)
            WIRE 480 4848 560 4848
            WIRE 560 4848 640 4848
            BEGIN DISPLAY 560 4848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(10)
            WIRE 480 4912 560 4912
            WIRE 560 4912 640 4912
            BEGIN DISPLAY 560 4912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(10)
            WIRE 480 5088 560 5088
            WIRE 560 5088 640 5088
            BEGIN DISPLAY 560 5088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(9)
            WIRE 480 5152 560 5152
            WIRE 560 5152 640 5152
            BEGIN DISPLAY 560 5152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(9)
            WIRE 480 5328 560 5328
            WIRE 560 5328 640 5328
            BEGIN DISPLAY 560 5328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(8)
            WIRE 480 5392 560 5392
            WIRE 560 5392 640 5392
            BEGIN DISPLAY 560 5392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(8)
            WIRE 480 5568 560 5568
            WIRE 560 5568 640 5568
            BEGIN DISPLAY 560 5568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 480 5632 560 5632
            WIRE 560 5632 640 5632
            BEGIN DISPLAY 560 5632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7)
            WIRE 480 5808 560 5808
            WIRE 560 5808 640 5808
            BEGIN DISPLAY 560 5808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 480 5872 560 5872
            WIRE 560 5872 640 5872
            BEGIN DISPLAY 560 5872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(6)
            WIRE 480 6048 560 6048
            WIRE 560 6048 640 6048
            BEGIN DISPLAY 560 6048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 480 6112 560 6112
            WIRE 560 6112 640 6112
            BEGIN DISPLAY 560 6112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5)
            WIRE 480 6288 560 6288
            WIRE 560 6288 640 6288
            BEGIN DISPLAY 560 6288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 480 6352 560 6352
            WIRE 560 6352 640 6352
            BEGIN DISPLAY 560 6352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(4)
            WIRE 480 6528 560 6528
            WIRE 560 6528 640 6528
            BEGIN DISPLAY 560 6528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 480 6592 560 6592
            WIRE 560 6592 640 6592
            BEGIN DISPLAY 560 6592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3)
            WIRE 480 6768 560 6768
            WIRE 560 6768 640 6768
            BEGIN DISPLAY 560 6768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 480 6832 560 6832
            WIRE 560 6832 640 6832
            BEGIN DISPLAY 560 6832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(2)
            WIRE 480 7008 560 7008
            WIRE 560 7008 640 7008
            BEGIN DISPLAY 560 7008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 480 7072 560 7072
            WIRE 560 7072 640 7072
            BEGIN DISPLAY 560 7072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1)
            WIRE 480 7248 560 7248
            WIRE 560 7248 640 7248
            BEGIN DISPLAY 560 7248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 480 7312 560 7312
            WIRE 560 7312 640 7312
            BEGIN DISPLAY 560 7312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(0)
            WIRE 480 7472 560 7472
            WIRE 560 7472 640 7472
            BEGIN DISPLAY 560 7472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31)
            WIRE 480 7536 560 7536
            WIRE 560 7536 640 7536
            BEGIN DISPLAY 560 7536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_102 1424 448 R0
        INSTANCE XLXI_103 1424 688 R0
        INSTANCE XLXI_104 1424 928 R0
        INSTANCE XLXI_105 1424 1168 R0
        INSTANCE XLXI_106 1424 1408 R0
        INSTANCE XLXI_107 1424 1648 R0
        INSTANCE XLXI_108 1424 1888 R0
        INSTANCE XLXI_109 1424 2128 R0
        INSTANCE XLXI_110 1424 2368 R0
        INSTANCE XLXI_111 1424 2608 R0
        INSTANCE XLXI_112 1424 2848 R0
        INSTANCE XLXI_113 1424 3088 R0
        INSTANCE XLXI_114 1424 3328 R0
        INSTANCE XLXI_115 1424 3568 R0
        INSTANCE XLXI_116 1424 3808 R0
        INSTANCE XLXI_117 1424 4048 R0
        INSTANCE XLXI_118 1424 4288 R0
        INSTANCE XLXI_119 1424 4528 R0
        INSTANCE XLXI_120 1424 4768 R0
        INSTANCE XLXI_121 1424 5008 R0
        INSTANCE XLXI_122 1424 5248 R0
        INSTANCE XLXI_123 1424 5488 R0
        INSTANCE XLXI_124 1424 5728 R0
        INSTANCE XLXI_125 1424 5968 R0
        INSTANCE XLXI_126 1424 6208 R0
        INSTANCE XLXI_127 1424 6448 R0
        INSTANCE XLXI_128 1424 6688 R0
        INSTANCE XLXI_129 1424 6928 R0
        INSTANCE XLXI_130 1424 7168 R0
        INSTANCE XLXI_131 1424 7408 R0
        INSTANCE XLXI_132 1424 7632 R0
        BEGIN BRANCH Q(1)
            WIRE 1408 176 1424 176
            WIRE 1408 176 1408 416
            WIRE 1408 416 1424 416
            WIRE 1408 416 1408 656
            WIRE 1408 656 1424 656
            WIRE 1408 656 1408 896
            WIRE 1408 896 1424 896
            WIRE 1408 896 1408 1136
            WIRE 1408 1136 1424 1136
            WIRE 1408 1136 1408 1376
            WIRE 1408 1376 1424 1376
            WIRE 1408 1376 1408 1616
            WIRE 1408 1616 1424 1616
            WIRE 1408 1616 1408 1856
            WIRE 1408 1856 1424 1856
            WIRE 1408 1856 1408 2096
            WIRE 1408 2096 1424 2096
            WIRE 1408 2096 1408 2336
            WIRE 1408 2336 1424 2336
            WIRE 1408 2336 1408 2576
            WIRE 1408 2576 1424 2576
            WIRE 1408 2576 1408 2816
            WIRE 1408 2816 1424 2816
            WIRE 1408 2816 1408 3056
            WIRE 1408 3056 1424 3056
            WIRE 1408 3056 1408 3296
            WIRE 1408 3296 1424 3296
            WIRE 1408 3296 1408 3536
            WIRE 1408 3536 1424 3536
            WIRE 1408 3536 1408 3776
            WIRE 1408 3776 1424 3776
            WIRE 1408 3776 1408 4016
            WIRE 1408 4016 1424 4016
            WIRE 1408 4016 1408 4256
            WIRE 1408 4256 1424 4256
            WIRE 1408 4256 1408 4496
            WIRE 1408 4496 1424 4496
            WIRE 1408 4496 1408 4736
            WIRE 1408 4736 1424 4736
            WIRE 1408 4736 1408 4976
            WIRE 1408 4976 1424 4976
            WIRE 1408 4976 1408 5216
            WIRE 1408 5216 1424 5216
            WIRE 1408 5216 1408 5456
            WIRE 1408 5456 1424 5456
            WIRE 1408 5456 1408 5696
            WIRE 1408 5696 1424 5696
            WIRE 1408 5696 1408 5936
            WIRE 1408 5936 1424 5936
            WIRE 1408 5936 1408 6176
            WIRE 1408 6176 1424 6176
            WIRE 1408 6176 1408 6416
            WIRE 1408 6416 1424 6416
            WIRE 1408 6416 1408 6656
            WIRE 1408 6656 1424 6656
            WIRE 1408 6656 1408 6896
            WIRE 1408 6896 1424 6896
            WIRE 1408 6896 1408 7136
            WIRE 1408 7136 1424 7136
            WIRE 1408 7136 1408 7376
            WIRE 1408 7376 1424 7376
            WIRE 1408 7376 1408 7568
            WIRE 1408 7568 1408 7600
            WIRE 1408 7600 1424 7600
            BEGIN DISPLAY 1408 7568 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_133 1424 208 R0
        BEGIN BRANCH A1_31
            WIRE 1280 48 1360 48
            WIRE 1360 48 1424 48
            BEGIN DISPLAY 1360 48 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_29
            WIRE 1280 112 1360 112
            WIRE 1360 112 1424 112
            BEGIN DISPLAY 1360 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_30
            WIRE 1280 288 1360 288
            WIRE 1360 288 1424 288
            BEGIN DISPLAY 1360 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_28
            WIRE 1280 352 1360 352
            WIRE 1360 352 1424 352
            BEGIN DISPLAY 1360 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_29
            WIRE 1280 528 1360 528
            WIRE 1360 528 1424 528
            BEGIN DISPLAY 1360 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_27
            WIRE 1280 592 1360 592
            WIRE 1360 592 1424 592
            BEGIN DISPLAY 1360 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_28
            WIRE 1280 768 1360 768
            WIRE 1360 768 1424 768
            BEGIN DISPLAY 1360 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_26
            WIRE 1280 832 1360 832
            WIRE 1360 832 1424 832
            BEGIN DISPLAY 1360 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_27
            WIRE 1280 1008 1360 1008
            WIRE 1360 1008 1424 1008
            BEGIN DISPLAY 1360 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_25
            WIRE 1280 1072 1360 1072
            WIRE 1360 1072 1424 1072
            BEGIN DISPLAY 1360 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_26
            WIRE 1280 1248 1360 1248
            WIRE 1360 1248 1424 1248
            BEGIN DISPLAY 1360 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_24
            WIRE 1280 1312 1360 1312
            WIRE 1360 1312 1424 1312
            BEGIN DISPLAY 1360 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_25
            WIRE 1280 1488 1360 1488
            WIRE 1360 1488 1424 1488
            BEGIN DISPLAY 1360 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_23
            WIRE 1280 1552 1360 1552
            WIRE 1360 1552 1424 1552
            BEGIN DISPLAY 1360 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_24
            WIRE 1280 1728 1360 1728
            WIRE 1360 1728 1424 1728
            BEGIN DISPLAY 1360 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_22
            WIRE 1280 1792 1360 1792
            WIRE 1360 1792 1424 1792
            BEGIN DISPLAY 1360 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_23
            WIRE 1280 1968 1360 1968
            WIRE 1360 1968 1424 1968
            BEGIN DISPLAY 1360 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_21
            WIRE 1280 2032 1360 2032
            WIRE 1360 2032 1424 2032
            BEGIN DISPLAY 1360 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_22
            WIRE 1280 2208 1360 2208
            WIRE 1360 2208 1424 2208
            BEGIN DISPLAY 1360 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_20
            WIRE 1280 2272 1360 2272
            WIRE 1360 2272 1424 2272
            BEGIN DISPLAY 1360 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_21
            WIRE 1280 2448 1360 2448
            WIRE 1360 2448 1424 2448
            BEGIN DISPLAY 1360 2448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_19
            WIRE 1280 2512 1360 2512
            WIRE 1360 2512 1424 2512
            BEGIN DISPLAY 1360 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_20
            WIRE 1280 2688 1360 2688
            WIRE 1360 2688 1424 2688
            BEGIN DISPLAY 1360 2688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_18
            WIRE 1280 2752 1360 2752
            WIRE 1360 2752 1424 2752
            BEGIN DISPLAY 1360 2752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_19
            WIRE 1280 2928 1360 2928
            WIRE 1360 2928 1424 2928
            BEGIN DISPLAY 1360 2928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_17
            WIRE 1280 2992 1360 2992
            WIRE 1360 2992 1424 2992
            BEGIN DISPLAY 1360 2992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_18
            WIRE 1280 3168 1360 3168
            WIRE 1360 3168 1424 3168
            BEGIN DISPLAY 1360 3168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_16
            WIRE 1280 3232 1360 3232
            WIRE 1360 3232 1424 3232
            BEGIN DISPLAY 1360 3232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_17
            WIRE 1280 3408 1360 3408
            WIRE 1360 3408 1424 3408
            BEGIN DISPLAY 1360 3408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_15
            WIRE 1280 3472 1360 3472
            WIRE 1360 3472 1424 3472
            BEGIN DISPLAY 1360 3472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_16
            WIRE 1280 3648 1360 3648
            WIRE 1360 3648 1424 3648
            BEGIN DISPLAY 1360 3648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_14
            WIRE 1280 3712 1360 3712
            WIRE 1360 3712 1424 3712
            BEGIN DISPLAY 1360 3712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_15
            WIRE 1280 3888 1360 3888
            WIRE 1360 3888 1424 3888
            BEGIN DISPLAY 1360 3888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_13
            WIRE 1280 3952 1360 3952
            WIRE 1360 3952 1424 3952
            BEGIN DISPLAY 1360 3952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_14
            WIRE 1280 4128 1360 4128
            WIRE 1360 4128 1424 4128
            BEGIN DISPLAY 1360 4128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_12
            WIRE 1280 4192 1360 4192
            WIRE 1360 4192 1424 4192
            BEGIN DISPLAY 1360 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_13
            WIRE 1280 4368 1360 4368
            WIRE 1360 4368 1424 4368
            BEGIN DISPLAY 1360 4368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_11
            WIRE 1280 4432 1360 4432
            WIRE 1360 4432 1424 4432
            BEGIN DISPLAY 1360 4432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_12
            WIRE 1280 4608 1360 4608
            WIRE 1360 4608 1424 4608
            BEGIN DISPLAY 1360 4608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_10
            WIRE 1280 4672 1360 4672
            WIRE 1360 4672 1424 4672
            BEGIN DISPLAY 1360 4672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_11
            WIRE 1280 4848 1360 4848
            WIRE 1360 4848 1424 4848
            BEGIN DISPLAY 1360 4848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_9
            WIRE 1280 4912 1360 4912
            WIRE 1360 4912 1424 4912
            BEGIN DISPLAY 1360 4912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_10
            WIRE 1280 5088 1360 5088
            WIRE 1360 5088 1424 5088
            BEGIN DISPLAY 1360 5088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_8
            WIRE 1280 5152 1360 5152
            WIRE 1360 5152 1424 5152
            BEGIN DISPLAY 1360 5152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_9
            WIRE 1280 5328 1360 5328
            WIRE 1360 5328 1424 5328
            BEGIN DISPLAY 1360 5328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_7
            WIRE 1280 5392 1360 5392
            WIRE 1360 5392 1424 5392
            BEGIN DISPLAY 1360 5392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_8
            WIRE 1280 5568 1360 5568
            WIRE 1360 5568 1424 5568
            BEGIN DISPLAY 1360 5568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_6
            WIRE 1280 5632 1360 5632
            WIRE 1360 5632 1424 5632
            BEGIN DISPLAY 1360 5632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_7
            WIRE 1280 5808 1360 5808
            WIRE 1360 5808 1424 5808
            BEGIN DISPLAY 1360 5808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_5
            WIRE 1280 5872 1360 5872
            WIRE 1360 5872 1424 5872
            BEGIN DISPLAY 1360 5872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_6
            WIRE 1280 6048 1360 6048
            WIRE 1360 6048 1424 6048
            BEGIN DISPLAY 1360 6048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_4
            WIRE 1280 6112 1360 6112
            WIRE 1360 6112 1424 6112
            BEGIN DISPLAY 1360 6112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_5
            WIRE 1280 6288 1360 6288
            WIRE 1360 6288 1424 6288
            BEGIN DISPLAY 1360 6288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_3
            WIRE 1280 6352 1360 6352
            WIRE 1360 6352 1424 6352
            BEGIN DISPLAY 1360 6352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_4
            WIRE 1280 6528 1360 6528
            WIRE 1360 6528 1424 6528
            BEGIN DISPLAY 1360 6528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_2
            WIRE 1280 6592 1360 6592
            WIRE 1360 6592 1424 6592
            BEGIN DISPLAY 1360 6592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_3
            WIRE 1280 6768 1360 6768
            WIRE 1360 6768 1424 6768
            BEGIN DISPLAY 1360 6768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_1
            WIRE 1280 6832 1360 6832
            WIRE 1360 6832 1424 6832
            BEGIN DISPLAY 1360 6832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_2
            WIRE 1280 7008 1360 7008
            WIRE 1360 7008 1424 7008
            BEGIN DISPLAY 1360 7008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_0
            WIRE 1280 7072 1360 7072
            WIRE 1360 7072 1424 7072
            BEGIN DISPLAY 1360 7072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_1
            WIRE 1280 7248 1360 7248
            WIRE 1360 7248 1424 7248
            BEGIN DISPLAY 1360 7248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_31
            WIRE 1280 7312 1360 7312
            WIRE 1360 7312 1424 7312
            BEGIN DISPLAY 1360 7312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_0
            WIRE 1280 7472 1360 7472
            WIRE 1360 7472 1424 7472
            BEGIN DISPLAY 1360 7472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_30
            WIRE 1280 7536 1360 7536
            WIRE 1360 7536 1424 7536
            BEGIN DISPLAY 1360 7536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_0
            WIRE 960 7504 1040 7504
            WIRE 1040 7504 1120 7504
            BEGIN DISPLAY 1040 7504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_1
            WIRE 960 7280 1040 7280
            WIRE 1040 7280 1120 7280
            BEGIN DISPLAY 1040 7280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_2
            WIRE 960 7040 1040 7040
            WIRE 1040 7040 1120 7040
            BEGIN DISPLAY 1040 7040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_3
            WIRE 960 6800 1040 6800
            WIRE 1040 6800 1120 6800
            BEGIN DISPLAY 1040 6800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_4
            WIRE 960 6560 1040 6560
            WIRE 1040 6560 1120 6560
            BEGIN DISPLAY 1040 6560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_5
            WIRE 960 6320 1040 6320
            WIRE 1040 6320 1120 6320
            BEGIN DISPLAY 1040 6320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_6
            WIRE 960 6080 1040 6080
            WIRE 1040 6080 1120 6080
            BEGIN DISPLAY 1040 6080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_7
            WIRE 960 5840 1040 5840
            WIRE 1040 5840 1120 5840
            BEGIN DISPLAY 1040 5840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_25
            WIRE 960 1520 1040 1520
            WIRE 1040 1520 1120 1520
            BEGIN DISPLAY 1040 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_26
            WIRE 960 1280 1040 1280
            WIRE 1040 1280 1120 1280
            BEGIN DISPLAY 1040 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_27
            WIRE 960 1040 1040 1040
            WIRE 1040 1040 1120 1040
            BEGIN DISPLAY 1040 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_28
            WIRE 960 800 1040 800
            WIRE 1040 800 1120 800
            BEGIN DISPLAY 1040 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_29
            WIRE 960 560 1040 560
            WIRE 1040 560 1120 560
            BEGIN DISPLAY 1040 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_30
            WIRE 960 320 1040 320
            WIRE 1040 320 1120 320
            BEGIN DISPLAY 1040 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_31
            WIRE 960 80 1056 80
            WIRE 1056 80 1120 80
            BEGIN DISPLAY 1056 80 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_24
            WIRE 960 1760 1040 1760
            WIRE 1040 1760 1120 1760
            BEGIN DISPLAY 1040 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_17
            WIRE 960 3440 1040 3440
            WIRE 1040 3440 1120 3440
            BEGIN DISPLAY 1040 3440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_18
            WIRE 960 3200 1040 3200
            WIRE 1040 3200 1120 3200
            BEGIN DISPLAY 1040 3200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_19
            WIRE 960 2960 1040 2960
            WIRE 1040 2960 1120 2960
            BEGIN DISPLAY 1040 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_20
            WIRE 960 2720 1040 2720
            WIRE 1040 2720 1120 2720
            BEGIN DISPLAY 1040 2720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_21
            WIRE 960 2480 1024 2480
            WIRE 1024 2480 1120 2480
            BEGIN DISPLAY 1024 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_22
            WIRE 960 2240 1040 2240
            WIRE 1040 2240 1120 2240
            BEGIN DISPLAY 1040 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_23
            WIRE 960 2000 1040 2000
            WIRE 1040 2000 1120 2000
            BEGIN DISPLAY 1040 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_16
            WIRE 960 3680 1040 3680
            WIRE 1040 3680 1120 3680
            BEGIN DISPLAY 1040 3680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_9
            WIRE 960 5360 1040 5360
            WIRE 1040 5360 1120 5360
            BEGIN DISPLAY 1040 5360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_10
            WIRE 960 5120 1040 5120
            WIRE 1040 5120 1120 5120
            BEGIN DISPLAY 1040 5120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_11
            WIRE 960 4880 1040 4880
            WIRE 1040 4880 1120 4880
            BEGIN DISPLAY 1040 4880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_12
            WIRE 960 4640 1056 4640
            WIRE 1056 4640 1120 4640
            BEGIN DISPLAY 1056 4640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_13
            WIRE 960 4400 1040 4400
            WIRE 1040 4400 1120 4400
            BEGIN DISPLAY 1040 4400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_14
            WIRE 960 4160 1040 4160
            WIRE 1040 4160 1120 4160
            BEGIN DISPLAY 1040 4160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_15
            WIRE 960 3920 1040 3920
            WIRE 1040 3920 1120 3920
            BEGIN DISPLAY 1040 3920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1_8
            WIRE 960 5600 1040 5600
            WIRE 1040 5600 1120 5600
            BEGIN DISPLAY 1040 5600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_0
            WIRE 1744 7504 1840 7504
            WIRE 1840 7504 1904 7504
            BEGIN DISPLAY 1840 7504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_1
            WIRE 1744 7280 1840 7280
            WIRE 1840 7280 1904 7280
            BEGIN DISPLAY 1840 7280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_2
            WIRE 1744 7040 1840 7040
            WIRE 1840 7040 1904 7040
            BEGIN DISPLAY 1840 7040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_3
            WIRE 1744 6800 1840 6800
            WIRE 1840 6800 1904 6800
            BEGIN DISPLAY 1840 6800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_4
            WIRE 1744 6560 1840 6560
            WIRE 1840 6560 1904 6560
            BEGIN DISPLAY 1840 6560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_5
            WIRE 1744 6320 1840 6320
            WIRE 1840 6320 1904 6320
            BEGIN DISPLAY 1840 6320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_6
            WIRE 1744 6080 1840 6080
            WIRE 1840 6080 1904 6080
            BEGIN DISPLAY 1840 6080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_7
            WIRE 1744 5840 1840 5840
            WIRE 1840 5840 1904 5840
            BEGIN DISPLAY 1840 5840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_25
            WIRE 1744 1520 1840 1520
            WIRE 1840 1520 1904 1520
            BEGIN DISPLAY 1840 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_26
            WIRE 1744 1280 1840 1280
            WIRE 1840 1280 1904 1280
            BEGIN DISPLAY 1840 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_27
            WIRE 1744 1040 1840 1040
            WIRE 1840 1040 1904 1040
            BEGIN DISPLAY 1840 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_28
            WIRE 1744 800 1840 800
            WIRE 1840 800 1904 800
            BEGIN DISPLAY 1840 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_29
            WIRE 1744 560 1840 560
            WIRE 1840 560 1904 560
            BEGIN DISPLAY 1840 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_30
            WIRE 1744 320 1840 320
            WIRE 1840 320 1904 320
            BEGIN DISPLAY 1840 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_31
            WIRE 1744 80 1840 80
            WIRE 1840 80 1904 80
            BEGIN DISPLAY 1840 80 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_24
            WIRE 1744 1760 1840 1760
            WIRE 1840 1760 1904 1760
            BEGIN DISPLAY 1840 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_17
            WIRE 1744 3440 1840 3440
            WIRE 1840 3440 1904 3440
            BEGIN DISPLAY 1840 3440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_18
            WIRE 1744 3200 1840 3200
            WIRE 1840 3200 1904 3200
            BEGIN DISPLAY 1840 3200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_19
            WIRE 1744 2960 1840 2960
            WIRE 1840 2960 1904 2960
            BEGIN DISPLAY 1840 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_20
            WIRE 1744 2720 1840 2720
            WIRE 1840 2720 1904 2720
            BEGIN DISPLAY 1840 2720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_21
            WIRE 1744 2480 1840 2480
            WIRE 1840 2480 1904 2480
            BEGIN DISPLAY 1840 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_22
            WIRE 1744 2240 1840 2240
            WIRE 1840 2240 1904 2240
            BEGIN DISPLAY 1840 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_23
            WIRE 1744 2000 1840 2000
            WIRE 1840 2000 1904 2000
            BEGIN DISPLAY 1840 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_16
            WIRE 1744 3680 1840 3680
            WIRE 1840 3680 1904 3680
            BEGIN DISPLAY 1840 3680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_9
            WIRE 1744 5360 1840 5360
            WIRE 1840 5360 1904 5360
            BEGIN DISPLAY 1840 5360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_10
            WIRE 1744 5120 1840 5120
            WIRE 1840 5120 1904 5120
            BEGIN DISPLAY 1840 5120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_11
            WIRE 1744 4880 1840 4880
            WIRE 1840 4880 1904 4880
            BEGIN DISPLAY 1840 4880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_12
            WIRE 1744 4640 1840 4640
            WIRE 1840 4640 1904 4640
            BEGIN DISPLAY 1840 4640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_13
            WIRE 1744 4400 1840 4400
            WIRE 1840 4400 1904 4400
            BEGIN DISPLAY 1840 4400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_14
            WIRE 1744 4160 1840 4160
            WIRE 1840 4160 1904 4160
            BEGIN DISPLAY 1840 4160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_15
            WIRE 1744 3920 1840 3920
            WIRE 1840 3920 1904 3920
            BEGIN DISPLAY 1840 3920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_8
            WIRE 1744 5600 1840 5600
            WIRE 1840 5600 1904 5600
            BEGIN DISPLAY 1840 5600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_134 2384 448 R0
        INSTANCE XLXI_135 2384 688 R0
        INSTANCE XLXI_136 2384 928 R0
        INSTANCE XLXI_137 2384 1168 R0
        INSTANCE XLXI_138 2384 1408 R0
        INSTANCE XLXI_139 2384 1648 R0
        INSTANCE XLXI_140 2384 1888 R0
        INSTANCE XLXI_141 2384 2128 R0
        INSTANCE XLXI_142 2384 2368 R0
        INSTANCE XLXI_143 2384 2608 R0
        INSTANCE XLXI_144 2384 2848 R0
        INSTANCE XLXI_145 2384 3088 R0
        INSTANCE XLXI_146 2384 3328 R0
        INSTANCE XLXI_147 2384 3568 R0
        INSTANCE XLXI_148 2384 3808 R0
        INSTANCE XLXI_149 2384 4048 R0
        INSTANCE XLXI_150 2384 4288 R0
        INSTANCE XLXI_151 2384 4528 R0
        INSTANCE XLXI_152 2384 4768 R0
        INSTANCE XLXI_153 2384 5008 R0
        INSTANCE XLXI_154 2384 5248 R0
        INSTANCE XLXI_155 2384 5488 R0
        INSTANCE XLXI_156 2384 5728 R0
        INSTANCE XLXI_157 2384 5968 R0
        INSTANCE XLXI_158 2384 6208 R0
        INSTANCE XLXI_159 2384 6448 R0
        INSTANCE XLXI_160 2384 6688 R0
        INSTANCE XLXI_161 2384 6928 R0
        INSTANCE XLXI_162 2384 7168 R0
        INSTANCE XLXI_163 2384 7408 R0
        INSTANCE XLXI_164 2384 7632 R0
        BEGIN BRANCH Q(2)
            WIRE 2368 176 2384 176
            WIRE 2368 176 2368 416
            WIRE 2368 416 2384 416
            WIRE 2368 416 2368 656
            WIRE 2368 656 2384 656
            WIRE 2368 656 2368 896
            WIRE 2368 896 2384 896
            WIRE 2368 896 2368 1136
            WIRE 2368 1136 2384 1136
            WIRE 2368 1136 2368 1376
            WIRE 2368 1376 2384 1376
            WIRE 2368 1376 2368 1616
            WIRE 2368 1616 2384 1616
            WIRE 2368 1616 2368 1856
            WIRE 2368 1856 2384 1856
            WIRE 2368 1856 2368 2096
            WIRE 2368 2096 2384 2096
            WIRE 2368 2096 2368 2336
            WIRE 2368 2336 2384 2336
            WIRE 2368 2336 2368 2576
            WIRE 2368 2576 2384 2576
            WIRE 2368 2576 2368 2816
            WIRE 2368 2816 2384 2816
            WIRE 2368 2816 2368 3056
            WIRE 2368 3056 2384 3056
            WIRE 2368 3056 2368 3296
            WIRE 2368 3296 2384 3296
            WIRE 2368 3296 2368 3536
            WIRE 2368 3536 2384 3536
            WIRE 2368 3536 2368 3776
            WIRE 2368 3776 2384 3776
            WIRE 2368 3776 2368 4016
            WIRE 2368 4016 2384 4016
            WIRE 2368 4016 2368 4256
            WIRE 2368 4256 2384 4256
            WIRE 2368 4256 2368 4496
            WIRE 2368 4496 2384 4496
            WIRE 2368 4496 2368 4736
            WIRE 2368 4736 2384 4736
            WIRE 2368 4736 2368 4976
            WIRE 2368 4976 2384 4976
            WIRE 2368 4976 2368 5216
            WIRE 2368 5216 2384 5216
            WIRE 2368 5216 2368 5456
            WIRE 2368 5456 2384 5456
            WIRE 2368 5456 2368 5696
            WIRE 2368 5696 2384 5696
            WIRE 2368 5696 2368 5936
            WIRE 2368 5936 2384 5936
            WIRE 2368 5936 2368 6176
            WIRE 2368 6176 2384 6176
            WIRE 2368 6176 2368 6416
            WIRE 2368 6416 2384 6416
            WIRE 2368 6416 2368 6656
            WIRE 2368 6656 2384 6656
            WIRE 2368 6656 2368 6896
            WIRE 2368 6896 2384 6896
            WIRE 2368 6896 2368 7136
            WIRE 2368 7136 2384 7136
            WIRE 2368 7136 2368 7376
            WIRE 2368 7376 2384 7376
            WIRE 2368 7376 2368 7568
            WIRE 2368 7568 2368 7600
            WIRE 2368 7600 2384 7600
            BEGIN DISPLAY 2368 7568 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_31
            WIRE 2240 48 2320 48
            WIRE 2320 48 2384 48
            BEGIN DISPLAY 2320 48 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_27
            WIRE 2240 112 2320 112
            WIRE 2320 112 2384 112
            BEGIN DISPLAY 2320 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_30
            WIRE 2240 288 2320 288
            WIRE 2320 288 2384 288
            BEGIN DISPLAY 2320 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_26
            WIRE 2240 352 2320 352
            WIRE 2320 352 2384 352
            BEGIN DISPLAY 2320 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_29
            WIRE 2240 528 2320 528
            WIRE 2320 528 2384 528
            BEGIN DISPLAY 2320 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_25
            WIRE 2240 592 2320 592
            WIRE 2320 592 2384 592
            BEGIN DISPLAY 2320 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_28
            WIRE 2240 768 2320 768
            WIRE 2320 768 2384 768
            BEGIN DISPLAY 2320 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_24
            WIRE 2240 832 2320 832
            WIRE 2320 832 2384 832
            BEGIN DISPLAY 2320 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_27
            WIRE 2240 1008 2320 1008
            WIRE 2320 1008 2384 1008
            BEGIN DISPLAY 2320 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_23
            WIRE 2240 1072 2320 1072
            WIRE 2320 1072 2384 1072
            BEGIN DISPLAY 2320 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_26
            WIRE 2240 1248 2320 1248
            WIRE 2320 1248 2384 1248
            BEGIN DISPLAY 2320 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_22
            WIRE 2240 1312 2320 1312
            WIRE 2320 1312 2384 1312
            BEGIN DISPLAY 2320 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_25
            WIRE 2240 1488 2320 1488
            WIRE 2320 1488 2384 1488
            BEGIN DISPLAY 2320 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_21
            WIRE 2240 1552 2320 1552
            WIRE 2320 1552 2384 1552
            BEGIN DISPLAY 2320 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_24
            WIRE 2240 1728 2320 1728
            WIRE 2320 1728 2384 1728
            BEGIN DISPLAY 2320 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_20
            WIRE 2240 1792 2320 1792
            WIRE 2320 1792 2384 1792
            BEGIN DISPLAY 2320 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_23
            WIRE 2240 1968 2320 1968
            WIRE 2320 1968 2384 1968
            BEGIN DISPLAY 2320 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_19
            WIRE 2240 2032 2320 2032
            WIRE 2320 2032 2384 2032
            BEGIN DISPLAY 2320 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_22
            WIRE 2240 2208 2320 2208
            WIRE 2320 2208 2384 2208
            BEGIN DISPLAY 2320 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_18
            WIRE 2240 2272 2320 2272
            WIRE 2320 2272 2384 2272
            BEGIN DISPLAY 2320 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_21
            WIRE 2240 2448 2320 2448
            WIRE 2320 2448 2384 2448
            BEGIN DISPLAY 2320 2448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_17
            WIRE 2240 2512 2320 2512
            WIRE 2320 2512 2384 2512
            BEGIN DISPLAY 2320 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_20
            WIRE 2240 2688 2320 2688
            WIRE 2320 2688 2384 2688
            BEGIN DISPLAY 2320 2688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_16
            WIRE 2240 2752 2320 2752
            WIRE 2320 2752 2384 2752
            BEGIN DISPLAY 2320 2752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_19
            WIRE 2240 2928 2320 2928
            WIRE 2320 2928 2384 2928
            BEGIN DISPLAY 2320 2928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_15
            WIRE 2240 2992 2320 2992
            WIRE 2320 2992 2384 2992
            BEGIN DISPLAY 2320 2992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_18
            WIRE 2240 3168 2320 3168
            WIRE 2320 3168 2384 3168
            BEGIN DISPLAY 2320 3168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_14
            WIRE 2240 3232 2320 3232
            WIRE 2320 3232 2384 3232
            BEGIN DISPLAY 2320 3232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_17
            WIRE 2240 3408 2320 3408
            WIRE 2320 3408 2384 3408
            BEGIN DISPLAY 2320 3408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_13
            WIRE 2240 3472 2320 3472
            WIRE 2320 3472 2384 3472
            BEGIN DISPLAY 2320 3472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_16
            WIRE 2240 3648 2320 3648
            WIRE 2320 3648 2384 3648
            BEGIN DISPLAY 2320 3648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_12
            WIRE 2240 3712 2320 3712
            WIRE 2320 3712 2384 3712
            BEGIN DISPLAY 2320 3712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_15
            WIRE 2240 3888 2320 3888
            WIRE 2320 3888 2384 3888
            BEGIN DISPLAY 2320 3888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_11
            WIRE 2240 3952 2320 3952
            WIRE 2320 3952 2384 3952
            BEGIN DISPLAY 2320 3952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_14
            WIRE 2240 4128 2320 4128
            WIRE 2320 4128 2384 4128
            BEGIN DISPLAY 2320 4128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_10
            WIRE 2240 4192 2320 4192
            WIRE 2320 4192 2384 4192
            BEGIN DISPLAY 2320 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_13
            WIRE 2240 4368 2320 4368
            WIRE 2320 4368 2384 4368
            BEGIN DISPLAY 2320 4368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_9
            WIRE 2240 4432 2320 4432
            WIRE 2320 4432 2384 4432
            BEGIN DISPLAY 2320 4432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_12
            WIRE 2240 4608 2320 4608
            WIRE 2320 4608 2384 4608
            BEGIN DISPLAY 2320 4608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_8
            WIRE 2240 4672 2320 4672
            WIRE 2320 4672 2384 4672
            BEGIN DISPLAY 2320 4672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_11
            WIRE 2240 4848 2320 4848
            WIRE 2320 4848 2384 4848
            BEGIN DISPLAY 2320 4848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_7
            WIRE 2240 4912 2320 4912
            WIRE 2320 4912 2384 4912
            BEGIN DISPLAY 2320 4912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_10
            WIRE 2240 5088 2320 5088
            WIRE 2320 5088 2384 5088
            BEGIN DISPLAY 2320 5088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_6
            WIRE 2240 5152 2320 5152
            WIRE 2320 5152 2384 5152
            BEGIN DISPLAY 2320 5152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_9
            WIRE 2240 5328 2320 5328
            WIRE 2320 5328 2384 5328
            BEGIN DISPLAY 2320 5328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_5
            WIRE 2240 5392 2320 5392
            WIRE 2320 5392 2384 5392
            BEGIN DISPLAY 2320 5392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_8
            WIRE 2240 5568 2320 5568
            WIRE 2320 5568 2384 5568
            BEGIN DISPLAY 2320 5568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_4
            WIRE 2240 5632 2320 5632
            WIRE 2320 5632 2384 5632
            BEGIN DISPLAY 2320 5632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_7
            WIRE 2240 5808 2320 5808
            WIRE 2320 5808 2384 5808
            BEGIN DISPLAY 2320 5808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_3
            WIRE 2240 5872 2320 5872
            WIRE 2320 5872 2384 5872
            BEGIN DISPLAY 2320 5872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_6
            WIRE 2240 6048 2320 6048
            WIRE 2320 6048 2384 6048
            BEGIN DISPLAY 2320 6048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_2
            WIRE 2240 6112 2320 6112
            WIRE 2320 6112 2384 6112
            BEGIN DISPLAY 2320 6112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_5
            WIRE 2240 6288 2320 6288
            WIRE 2320 6288 2384 6288
            BEGIN DISPLAY 2320 6288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_1
            WIRE 2240 6352 2320 6352
            WIRE 2320 6352 2384 6352
            BEGIN DISPLAY 2320 6352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_4
            WIRE 2240 6528 2320 6528
            WIRE 2320 6528 2384 6528
            BEGIN DISPLAY 2320 6528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_0
            WIRE 2240 6592 2320 6592
            WIRE 2320 6592 2384 6592
            BEGIN DISPLAY 2320 6592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_3
            WIRE 2240 6768 2320 6768
            WIRE 2320 6768 2384 6768
            BEGIN DISPLAY 2320 6768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_31
            WIRE 2240 6832 2320 6832
            WIRE 2320 6832 2384 6832
            BEGIN DISPLAY 2320 6832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_2
            WIRE 2240 7008 2320 7008
            WIRE 2320 7008 2384 7008
            BEGIN DISPLAY 2320 7008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_30
            WIRE 2240 7072 2320 7072
            WIRE 2320 7072 2384 7072
            BEGIN DISPLAY 2320 7072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_1
            WIRE 2240 7248 2320 7248
            WIRE 2320 7248 2384 7248
            BEGIN DISPLAY 2320 7248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_29
            WIRE 2240 7312 2320 7312
            WIRE 2320 7312 2384 7312
            BEGIN DISPLAY 2320 7312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_0
            WIRE 2240 7472 2320 7472
            WIRE 2320 7472 2384 7472
            BEGIN DISPLAY 2320 7472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2_28
            WIRE 2240 7536 2320 7536
            WIRE 2320 7536 2384 7536
            BEGIN DISPLAY 2320 7536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_0
            WIRE 2704 7504 2800 7504
            WIRE 2800 7504 2864 7504
            BEGIN DISPLAY 2800 7504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_1
            WIRE 2704 7280 2800 7280
            WIRE 2800 7280 2864 7280
            BEGIN DISPLAY 2800 7280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_2
            WIRE 2704 7040 2800 7040
            WIRE 2800 7040 2864 7040
            BEGIN DISPLAY 2800 7040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_3
            WIRE 2704 6800 2800 6800
            WIRE 2800 6800 2864 6800
            BEGIN DISPLAY 2800 6800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_4
            WIRE 2704 6560 2800 6560
            WIRE 2800 6560 2864 6560
            BEGIN DISPLAY 2800 6560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_5
            WIRE 2704 6320 2800 6320
            WIRE 2800 6320 2864 6320
            BEGIN DISPLAY 2800 6320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_6
            WIRE 2704 6080 2800 6080
            WIRE 2800 6080 2864 6080
            BEGIN DISPLAY 2800 6080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_7
            WIRE 2704 5840 2800 5840
            WIRE 2800 5840 2864 5840
            BEGIN DISPLAY 2800 5840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_25
            WIRE 2704 1520 2800 1520
            WIRE 2800 1520 2864 1520
            BEGIN DISPLAY 2800 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_26
            WIRE 2704 1280 2800 1280
            WIRE 2800 1280 2864 1280
            BEGIN DISPLAY 2800 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_27
            WIRE 2704 1040 2800 1040
            WIRE 2800 1040 2864 1040
            BEGIN DISPLAY 2800 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_28
            WIRE 2704 800 2800 800
            WIRE 2800 800 2864 800
            BEGIN DISPLAY 2800 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_29
            WIRE 2704 560 2800 560
            WIRE 2800 560 2864 560
            BEGIN DISPLAY 2800 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_30
            WIRE 2704 320 2800 320
            WIRE 2800 320 2864 320
            BEGIN DISPLAY 2800 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_31
            WIRE 2704 80 2800 80
            WIRE 2800 80 2864 80
            BEGIN DISPLAY 2800 80 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_24
            WIRE 2704 1760 2800 1760
            WIRE 2800 1760 2864 1760
            BEGIN DISPLAY 2800 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_17
            WIRE 2704 3440 2800 3440
            WIRE 2800 3440 2864 3440
            BEGIN DISPLAY 2800 3440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_18
            WIRE 2704 3200 2800 3200
            WIRE 2800 3200 2864 3200
            BEGIN DISPLAY 2800 3200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_19
            WIRE 2704 2960 2800 2960
            WIRE 2800 2960 2864 2960
            BEGIN DISPLAY 2800 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_20
            WIRE 2704 2720 2800 2720
            WIRE 2800 2720 2864 2720
            BEGIN DISPLAY 2800 2720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_21
            WIRE 2704 2480 2800 2480
            WIRE 2800 2480 2864 2480
            BEGIN DISPLAY 2800 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_22
            WIRE 2704 2240 2800 2240
            WIRE 2800 2240 2864 2240
            BEGIN DISPLAY 2800 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_23
            WIRE 2704 2000 2800 2000
            WIRE 2800 2000 2864 2000
            BEGIN DISPLAY 2800 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_16
            WIRE 2704 3680 2800 3680
            WIRE 2800 3680 2864 3680
            BEGIN DISPLAY 2800 3680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_9
            WIRE 2704 5360 2800 5360
            WIRE 2800 5360 2864 5360
            BEGIN DISPLAY 2800 5360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_10
            WIRE 2704 5120 2800 5120
            WIRE 2800 5120 2864 5120
            BEGIN DISPLAY 2800 5120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_11
            WIRE 2704 4880 2800 4880
            WIRE 2800 4880 2864 4880
            BEGIN DISPLAY 2800 4880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_12
            WIRE 2704 4640 2800 4640
            WIRE 2800 4640 2864 4640
            BEGIN DISPLAY 2800 4640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_13
            WIRE 2704 4400 2800 4400
            WIRE 2800 4400 2864 4400
            BEGIN DISPLAY 2800 4400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_14
            WIRE 2704 4160 2800 4160
            WIRE 2800 4160 2864 4160
            BEGIN DISPLAY 2800 4160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_15
            WIRE 2704 3920 2800 3920
            WIRE 2800 3920 2864 3920
            BEGIN DISPLAY 2800 3920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_8
            WIRE 2704 5600 2800 5600
            WIRE 2800 5600 2864 5600
            BEGIN DISPLAY 2800 5600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_165 2384 208 R0
        INSTANCE XLXI_196 3184 448 R0
        INSTANCE XLXI_197 3184 688 R0
        INSTANCE XLXI_198 3184 928 R0
        INSTANCE XLXI_199 3184 1168 R0
        INSTANCE XLXI_200 3184 1408 R0
        INSTANCE XLXI_201 3184 1648 R0
        INSTANCE XLXI_202 3184 1888 R0
        INSTANCE XLXI_203 3184 2128 R0
        INSTANCE XLXI_204 3184 2368 R0
        INSTANCE XLXI_205 3184 2608 R0
        INSTANCE XLXI_206 3184 2848 R0
        INSTANCE XLXI_207 3184 3088 R0
        INSTANCE XLXI_208 3184 3328 R0
        INSTANCE XLXI_209 3184 3568 R0
        INSTANCE XLXI_210 3184 3808 R0
        INSTANCE XLXI_211 3184 4048 R0
        INSTANCE XLXI_212 3184 4288 R0
        INSTANCE XLXI_213 3184 4528 R0
        INSTANCE XLXI_214 3184 4768 R0
        INSTANCE XLXI_215 3184 5008 R0
        INSTANCE XLXI_216 3184 5248 R0
        INSTANCE XLXI_217 3184 5488 R0
        INSTANCE XLXI_218 3184 5728 R0
        INSTANCE XLXI_219 3184 5968 R0
        INSTANCE XLXI_220 3184 6208 R0
        INSTANCE XLXI_221 3184 6448 R0
        INSTANCE XLXI_222 3184 6688 R0
        INSTANCE XLXI_223 3184 6928 R0
        INSTANCE XLXI_224 3184 7168 R0
        INSTANCE XLXI_225 3184 7408 R0
        INSTANCE XLXI_226 3184 7632 R0
        BEGIN BRANCH Q(3)
            WIRE 3168 176 3184 176
            WIRE 3168 176 3168 416
            WIRE 3168 416 3184 416
            WIRE 3168 416 3168 656
            WIRE 3168 656 3184 656
            WIRE 3168 656 3168 896
            WIRE 3168 896 3184 896
            WIRE 3168 896 3168 1136
            WIRE 3168 1136 3184 1136
            WIRE 3168 1136 3168 1376
            WIRE 3168 1376 3184 1376
            WIRE 3168 1376 3168 1616
            WIRE 3168 1616 3184 1616
            WIRE 3168 1616 3168 1856
            WIRE 3168 1856 3184 1856
            WIRE 3168 1856 3168 2096
            WIRE 3168 2096 3184 2096
            WIRE 3168 2096 3168 2336
            WIRE 3168 2336 3184 2336
            WIRE 3168 2336 3168 2576
            WIRE 3168 2576 3184 2576
            WIRE 3168 2576 3168 2816
            WIRE 3168 2816 3184 2816
            WIRE 3168 2816 3168 3056
            WIRE 3168 3056 3184 3056
            WIRE 3168 3056 3168 3296
            WIRE 3168 3296 3184 3296
            WIRE 3168 3296 3168 3536
            WIRE 3168 3536 3184 3536
            WIRE 3168 3536 3168 3776
            WIRE 3168 3776 3184 3776
            WIRE 3168 3776 3168 4016
            WIRE 3168 4016 3184 4016
            WIRE 3168 4016 3168 4256
            WIRE 3168 4256 3184 4256
            WIRE 3168 4256 3168 4496
            WIRE 3168 4496 3184 4496
            WIRE 3168 4496 3168 4736
            WIRE 3168 4736 3184 4736
            WIRE 3168 4736 3168 4976
            WIRE 3168 4976 3184 4976
            WIRE 3168 4976 3168 5216
            WIRE 3168 5216 3184 5216
            WIRE 3168 5216 3168 5456
            WIRE 3168 5456 3184 5456
            WIRE 3168 5456 3168 5696
            WIRE 3168 5696 3184 5696
            WIRE 3168 5696 3168 5936
            WIRE 3168 5936 3184 5936
            WIRE 3168 5936 3168 6176
            WIRE 3168 6176 3184 6176
            WIRE 3168 6176 3168 6416
            WIRE 3168 6416 3184 6416
            WIRE 3168 6416 3168 6656
            WIRE 3168 6656 3184 6656
            WIRE 3168 6656 3168 6896
            WIRE 3168 6896 3184 6896
            WIRE 3168 6896 3168 7136
            WIRE 3168 7136 3184 7136
            WIRE 3168 7136 3168 7376
            WIRE 3168 7376 3184 7376
            WIRE 3168 7376 3168 7568
            WIRE 3168 7568 3168 7600
            WIRE 3168 7600 3184 7600
            BEGIN DISPLAY 3168 7568 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_31
            WIRE 3040 48 3120 48
            WIRE 3120 48 3184 48
            BEGIN DISPLAY 3120 48 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_23
            WIRE 3040 112 3120 112
            WIRE 3120 112 3184 112
            BEGIN DISPLAY 3120 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_30
            WIRE 3040 288 3136 288
            WIRE 3136 288 3184 288
            BEGIN DISPLAY 3136 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_22
            WIRE 3040 352 3120 352
            WIRE 3120 352 3184 352
            BEGIN DISPLAY 3120 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_29
            WIRE 3040 528 3120 528
            WIRE 3120 528 3184 528
            BEGIN DISPLAY 3120 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_21
            WIRE 3040 592 3120 592
            WIRE 3120 592 3184 592
            BEGIN DISPLAY 3120 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_28
            WIRE 3040 768 3120 768
            WIRE 3120 768 3184 768
            BEGIN DISPLAY 3120 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_20
            WIRE 3040 832 3120 832
            WIRE 3120 832 3184 832
            BEGIN DISPLAY 3120 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_27
            WIRE 3040 1008 3120 1008
            WIRE 3120 1008 3184 1008
            BEGIN DISPLAY 3120 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_19
            WIRE 3040 1072 3120 1072
            WIRE 3120 1072 3184 1072
            BEGIN DISPLAY 3120 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_26
            WIRE 3040 1248 3120 1248
            WIRE 3120 1248 3184 1248
            BEGIN DISPLAY 3120 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_18
            WIRE 3040 1312 3120 1312
            WIRE 3120 1312 3184 1312
            BEGIN DISPLAY 3120 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_25
            WIRE 3040 1488 3120 1488
            WIRE 3120 1488 3184 1488
            BEGIN DISPLAY 3120 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_17
            WIRE 3040 1552 3120 1552
            WIRE 3120 1552 3184 1552
            BEGIN DISPLAY 3120 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_24
            WIRE 3040 1728 3120 1728
            WIRE 3120 1728 3184 1728
            BEGIN DISPLAY 3120 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_16
            WIRE 3040 1792 3120 1792
            WIRE 3120 1792 3184 1792
            BEGIN DISPLAY 3120 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_23
            WIRE 3040 1968 3120 1968
            WIRE 3120 1968 3184 1968
            BEGIN DISPLAY 3120 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_15
            WIRE 3040 2032 3120 2032
            WIRE 3120 2032 3184 2032
            BEGIN DISPLAY 3120 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_22
            WIRE 3040 2208 3120 2208
            WIRE 3120 2208 3184 2208
            BEGIN DISPLAY 3120 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_14
            WIRE 3040 2272 3120 2272
            WIRE 3120 2272 3184 2272
            BEGIN DISPLAY 3120 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_21
            WIRE 3040 2448 3120 2448
            WIRE 3120 2448 3184 2448
            BEGIN DISPLAY 3120 2448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_13
            WIRE 3040 2512 3120 2512
            WIRE 3120 2512 3184 2512
            BEGIN DISPLAY 3120 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_20
            WIRE 3040 2688 3120 2688
            WIRE 3120 2688 3184 2688
            BEGIN DISPLAY 3120 2688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_12
            WIRE 3040 2752 3120 2752
            WIRE 3120 2752 3184 2752
            BEGIN DISPLAY 3120 2752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_19
            WIRE 3040 2928 3120 2928
            WIRE 3120 2928 3184 2928
            BEGIN DISPLAY 3120 2928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_11
            WIRE 3040 2992 3120 2992
            WIRE 3120 2992 3184 2992
            BEGIN DISPLAY 3120 2992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_18
            WIRE 3040 3168 3120 3168
            WIRE 3120 3168 3184 3168
            BEGIN DISPLAY 3120 3168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_10
            WIRE 3040 3232 3120 3232
            WIRE 3120 3232 3184 3232
            BEGIN DISPLAY 3120 3232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_17
            WIRE 3040 3408 3120 3408
            WIRE 3120 3408 3184 3408
            BEGIN DISPLAY 3120 3408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_9
            WIRE 3040 3472 3120 3472
            WIRE 3120 3472 3184 3472
            BEGIN DISPLAY 3120 3472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_16
            WIRE 3040 3648 3120 3648
            WIRE 3120 3648 3184 3648
            BEGIN DISPLAY 3120 3648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_8
            WIRE 3040 3712 3120 3712
            WIRE 3120 3712 3184 3712
            BEGIN DISPLAY 3120 3712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_15
            WIRE 3040 3888 3120 3888
            WIRE 3120 3888 3184 3888
            BEGIN DISPLAY 3120 3888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_7
            WIRE 3040 3952 3120 3952
            WIRE 3120 3952 3184 3952
            BEGIN DISPLAY 3120 3952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_14
            WIRE 3040 4128 3120 4128
            WIRE 3120 4128 3184 4128
            BEGIN DISPLAY 3120 4128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_6
            WIRE 3040 4192 3120 4192
            WIRE 3120 4192 3184 4192
            BEGIN DISPLAY 3120 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_13
            WIRE 3040 4368 3120 4368
            WIRE 3120 4368 3184 4368
            BEGIN DISPLAY 3120 4368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_5
            WIRE 3040 4432 3120 4432
            WIRE 3120 4432 3184 4432
            BEGIN DISPLAY 3120 4432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_12
            WIRE 3040 4608 3120 4608
            WIRE 3120 4608 3184 4608
            BEGIN DISPLAY 3120 4608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_4
            WIRE 3040 4672 3120 4672
            WIRE 3120 4672 3184 4672
            BEGIN DISPLAY 3120 4672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_11
            WIRE 3040 4848 3120 4848
            WIRE 3120 4848 3184 4848
            BEGIN DISPLAY 3120 4848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_3
            WIRE 3040 4912 3120 4912
            WIRE 3120 4912 3184 4912
            BEGIN DISPLAY 3120 4912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_10
            WIRE 3040 5088 3120 5088
            WIRE 3120 5088 3184 5088
            BEGIN DISPLAY 3120 5088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_2
            WIRE 3040 5152 3120 5152
            WIRE 3120 5152 3184 5152
            BEGIN DISPLAY 3120 5152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_9
            WIRE 3040 5328 3120 5328
            WIRE 3120 5328 3184 5328
            BEGIN DISPLAY 3120 5328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_1
            WIRE 3040 5392 3120 5392
            WIRE 3120 5392 3184 5392
            BEGIN DISPLAY 3120 5392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_8
            WIRE 3040 5568 3120 5568
            WIRE 3120 5568 3184 5568
            BEGIN DISPLAY 3120 5568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_0
            WIRE 3040 5632 3120 5632
            WIRE 3120 5632 3184 5632
            BEGIN DISPLAY 3120 5632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_7
            WIRE 3040 5808 3120 5808
            WIRE 3120 5808 3184 5808
            BEGIN DISPLAY 3120 5808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_31
            WIRE 3040 5872 3120 5872
            WIRE 3120 5872 3184 5872
            BEGIN DISPLAY 3120 5872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_6
            WIRE 3040 6048 3120 6048
            WIRE 3120 6048 3184 6048
            BEGIN DISPLAY 3120 6048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_30
            WIRE 3040 6112 3120 6112
            WIRE 3120 6112 3184 6112
            BEGIN DISPLAY 3120 6112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_5
            WIRE 3040 6288 3120 6288
            WIRE 3120 6288 3184 6288
            BEGIN DISPLAY 3120 6288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_29
            WIRE 3040 6352 3120 6352
            WIRE 3120 6352 3184 6352
            BEGIN DISPLAY 3120 6352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_4
            WIRE 3040 6528 3120 6528
            WIRE 3120 6528 3184 6528
            BEGIN DISPLAY 3120 6528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_28
            WIRE 3040 6592 3120 6592
            WIRE 3120 6592 3184 6592
            BEGIN DISPLAY 3120 6592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_3
            WIRE 3040 6768 3120 6768
            WIRE 3120 6768 3184 6768
            BEGIN DISPLAY 3120 6768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_27
            WIRE 3040 6832 3120 6832
            WIRE 3120 6832 3184 6832
            BEGIN DISPLAY 3120 6832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_2
            WIRE 3040 7008 3120 7008
            WIRE 3120 7008 3184 7008
            BEGIN DISPLAY 3120 7008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_26
            WIRE 3040 7072 3120 7072
            WIRE 3120 7072 3184 7072
            BEGIN DISPLAY 3120 7072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_1
            WIRE 3040 7248 3120 7248
            WIRE 3120 7248 3184 7248
            BEGIN DISPLAY 3120 7248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_25
            WIRE 3040 7312 3120 7312
            WIRE 3120 7312 3184 7312
            BEGIN DISPLAY 3120 7312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_0
            WIRE 3040 7472 3120 7472
            WIRE 3120 7472 3184 7472
            BEGIN DISPLAY 3120 7472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3_24
            WIRE 3040 7536 3120 7536
            WIRE 3120 7536 3184 7536
            BEGIN DISPLAY 3120 7536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_0
            WIRE 3504 7504 3600 7504
            WIRE 3600 7504 3664 7504
            BEGIN DISPLAY 3600 7504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_1
            WIRE 3504 7280 3600 7280
            WIRE 3600 7280 3664 7280
            BEGIN DISPLAY 3600 7280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_2
            WIRE 3504 7040 3600 7040
            WIRE 3600 7040 3664 7040
            BEGIN DISPLAY 3600 7040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_3
            WIRE 3504 6800 3600 6800
            WIRE 3600 6800 3664 6800
            BEGIN DISPLAY 3600 6800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_4
            WIRE 3504 6560 3600 6560
            WIRE 3600 6560 3664 6560
            BEGIN DISPLAY 3600 6560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_5
            WIRE 3504 6320 3600 6320
            WIRE 3600 6320 3664 6320
            BEGIN DISPLAY 3600 6320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_6
            WIRE 3504 6080 3600 6080
            WIRE 3600 6080 3664 6080
            BEGIN DISPLAY 3600 6080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_7
            WIRE 3504 5840 3600 5840
            WIRE 3600 5840 3664 5840
            BEGIN DISPLAY 3600 5840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_25
            WIRE 3504 1520 3600 1520
            WIRE 3600 1520 3664 1520
            BEGIN DISPLAY 3600 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_26
            WIRE 3504 1280 3600 1280
            WIRE 3600 1280 3664 1280
            BEGIN DISPLAY 3600 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_27
            WIRE 3504 1040 3600 1040
            WIRE 3600 1040 3664 1040
            BEGIN DISPLAY 3600 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_28
            WIRE 3504 800 3600 800
            WIRE 3600 800 3664 800
            BEGIN DISPLAY 3600 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_29
            WIRE 3504 560 3600 560
            WIRE 3600 560 3664 560
            BEGIN DISPLAY 3600 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_30
            WIRE 3504 320 3600 320
            WIRE 3600 320 3664 320
            BEGIN DISPLAY 3600 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_31
            WIRE 3504 80 3600 80
            WIRE 3600 80 3664 80
            BEGIN DISPLAY 3600 80 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_24
            WIRE 3504 1760 3600 1760
            WIRE 3600 1760 3664 1760
            BEGIN DISPLAY 3600 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_17
            WIRE 3504 3440 3600 3440
            WIRE 3600 3440 3664 3440
            BEGIN DISPLAY 3600 3440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_18
            WIRE 3504 3200 3600 3200
            WIRE 3600 3200 3664 3200
            BEGIN DISPLAY 3600 3200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_19
            WIRE 3504 2960 3600 2960
            WIRE 3600 2960 3664 2960
            BEGIN DISPLAY 3600 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_20
            WIRE 3504 2720 3600 2720
            WIRE 3600 2720 3664 2720
            BEGIN DISPLAY 3600 2720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_21
            WIRE 3504 2480 3600 2480
            WIRE 3600 2480 3664 2480
            BEGIN DISPLAY 3600 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_22
            WIRE 3504 2240 3600 2240
            WIRE 3600 2240 3664 2240
            BEGIN DISPLAY 3600 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_23
            WIRE 3504 2000 3600 2000
            WIRE 3600 2000 3664 2000
            BEGIN DISPLAY 3600 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_16
            WIRE 3504 3680 3600 3680
            WIRE 3600 3680 3664 3680
            BEGIN DISPLAY 3600 3680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_9
            WIRE 3504 5360 3600 5360
            WIRE 3600 5360 3664 5360
            BEGIN DISPLAY 3600 5360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_10
            WIRE 3504 5120 3600 5120
            WIRE 3600 5120 3664 5120
            BEGIN DISPLAY 3600 5120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_11
            WIRE 3504 4880 3600 4880
            WIRE 3600 4880 3664 4880
            BEGIN DISPLAY 3600 4880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_12
            WIRE 3504 4640 3600 4640
            WIRE 3600 4640 3664 4640
            BEGIN DISPLAY 3600 4640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_13
            WIRE 3504 4400 3600 4400
            WIRE 3600 4400 3664 4400
            BEGIN DISPLAY 3600 4400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_14
            WIRE 3504 4160 3600 4160
            WIRE 3600 4160 3664 4160
            BEGIN DISPLAY 3600 4160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_15
            WIRE 3504 3920 3600 3920
            WIRE 3600 3920 3664 3920
            BEGIN DISPLAY 3600 3920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_8
            WIRE 3504 5600 3600 5600
            WIRE 3600 5600 3664 5600
            BEGIN DISPLAY 3600 5600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_227 3184 208 R0
        INSTANCE XLXI_228 3984 448 R0
        INSTANCE XLXI_229 3984 688 R0
        INSTANCE XLXI_230 3984 928 R0
        INSTANCE XLXI_231 3984 1168 R0
        INSTANCE XLXI_232 3984 1408 R0
        INSTANCE XLXI_233 3984 1648 R0
        INSTANCE XLXI_234 3984 1888 R0
        INSTANCE XLXI_235 3984 2128 R0
        INSTANCE XLXI_236 3984 2368 R0
        INSTANCE XLXI_237 3984 2608 R0
        INSTANCE XLXI_238 3984 2848 R0
        INSTANCE XLXI_239 3984 3088 R0
        INSTANCE XLXI_240 3984 3328 R0
        INSTANCE XLXI_241 3984 3568 R0
        INSTANCE XLXI_242 3984 3808 R0
        INSTANCE XLXI_243 3984 4048 R0
        INSTANCE XLXI_244 3984 4288 R0
        INSTANCE XLXI_245 3984 4528 R0
        INSTANCE XLXI_246 3984 4768 R0
        INSTANCE XLXI_247 3984 5008 R0
        INSTANCE XLXI_248 3984 5248 R0
        INSTANCE XLXI_249 3984 5488 R0
        INSTANCE XLXI_250 3984 5728 R0
        INSTANCE XLXI_251 3984 5968 R0
        INSTANCE XLXI_252 3984 6208 R0
        INSTANCE XLXI_253 3984 6448 R0
        INSTANCE XLXI_254 3984 6688 R0
        INSTANCE XLXI_255 3984 6928 R0
        INSTANCE XLXI_256 3984 7168 R0
        INSTANCE XLXI_257 3984 7408 R0
        INSTANCE XLXI_258 3984 7632 R0
        BEGIN BRANCH Q(4)
            WIRE 3968 176 3984 176
            WIRE 3968 176 3968 416
            WIRE 3968 416 3984 416
            WIRE 3968 416 3968 656
            WIRE 3968 656 3984 656
            WIRE 3968 656 3968 896
            WIRE 3968 896 3984 896
            WIRE 3968 896 3968 1136
            WIRE 3968 1136 3984 1136
            WIRE 3968 1136 3968 1376
            WIRE 3968 1376 3984 1376
            WIRE 3968 1376 3968 1616
            WIRE 3968 1616 3984 1616
            WIRE 3968 1616 3968 1856
            WIRE 3968 1856 3984 1856
            WIRE 3968 1856 3968 2096
            WIRE 3968 2096 3984 2096
            WIRE 3968 2096 3968 2336
            WIRE 3968 2336 3984 2336
            WIRE 3968 2336 3968 2576
            WIRE 3968 2576 3984 2576
            WIRE 3968 2576 3968 2816
            WIRE 3968 2816 3984 2816
            WIRE 3968 2816 3968 3056
            WIRE 3968 3056 3984 3056
            WIRE 3968 3056 3968 3296
            WIRE 3968 3296 3984 3296
            WIRE 3968 3296 3968 3536
            WIRE 3968 3536 3984 3536
            WIRE 3968 3536 3968 3776
            WIRE 3968 3776 3984 3776
            WIRE 3968 3776 3968 4016
            WIRE 3968 4016 3984 4016
            WIRE 3968 4016 3968 4256
            WIRE 3968 4256 3984 4256
            WIRE 3968 4256 3968 4496
            WIRE 3968 4496 3984 4496
            WIRE 3968 4496 3968 4736
            WIRE 3968 4736 3984 4736
            WIRE 3968 4736 3968 4976
            WIRE 3968 4976 3984 4976
            WIRE 3968 4976 3968 5216
            WIRE 3968 5216 3984 5216
            WIRE 3968 5216 3968 5456
            WIRE 3968 5456 3984 5456
            WIRE 3968 5456 3968 5696
            WIRE 3968 5696 3984 5696
            WIRE 3968 5696 3968 5936
            WIRE 3968 5936 3984 5936
            WIRE 3968 5936 3968 6176
            WIRE 3968 6176 3984 6176
            WIRE 3968 6176 3968 6416
            WIRE 3968 6416 3984 6416
            WIRE 3968 6416 3968 6656
            WIRE 3968 6656 3984 6656
            WIRE 3968 6656 3968 6896
            WIRE 3968 6896 3984 6896
            WIRE 3968 6896 3968 7136
            WIRE 3968 7136 3984 7136
            WIRE 3968 7136 3968 7376
            WIRE 3968 7376 3984 7376
            WIRE 3968 7376 3968 7568
            WIRE 3968 7568 3968 7600
            WIRE 3968 7600 3984 7600
            BEGIN DISPLAY 3968 7568 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_31
            WIRE 3840 48 3920 48
            WIRE 3920 48 3984 48
            BEGIN DISPLAY 3920 48 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_15
            WIRE 3840 112 3920 112
            WIRE 3920 112 3984 112
            BEGIN DISPLAY 3920 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_30
            WIRE 3840 288 3920 288
            WIRE 3920 288 3984 288
            BEGIN DISPLAY 3920 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_14
            WIRE 3840 352 3920 352
            WIRE 3920 352 3984 352
            BEGIN DISPLAY 3920 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_29
            WIRE 3840 528 3920 528
            WIRE 3920 528 3984 528
            BEGIN DISPLAY 3920 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_13
            WIRE 3840 592 3936 592
            WIRE 3936 592 3984 592
            BEGIN DISPLAY 3936 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_28
            WIRE 3840 768 3920 768
            WIRE 3920 768 3984 768
            BEGIN DISPLAY 3920 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_12
            WIRE 3840 832 3920 832
            WIRE 3920 832 3984 832
            BEGIN DISPLAY 3920 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_27
            WIRE 3840 1008 3920 1008
            WIRE 3920 1008 3984 1008
            BEGIN DISPLAY 3920 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_11
            WIRE 3840 1072 3920 1072
            WIRE 3920 1072 3984 1072
            BEGIN DISPLAY 3920 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_26
            WIRE 3840 1248 3920 1248
            WIRE 3920 1248 3984 1248
            BEGIN DISPLAY 3920 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_10
            WIRE 3840 1312 3920 1312
            WIRE 3920 1312 3984 1312
            BEGIN DISPLAY 3920 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_25
            WIRE 3840 1488 3936 1488
            WIRE 3936 1488 3984 1488
            BEGIN DISPLAY 3936 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_9
            WIRE 3840 1552 3920 1552
            WIRE 3920 1552 3984 1552
            BEGIN DISPLAY 3920 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_24
            WIRE 3840 1728 3920 1728
            WIRE 3920 1728 3984 1728
            BEGIN DISPLAY 3920 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_8
            WIRE 3840 1792 3920 1792
            WIRE 3920 1792 3984 1792
            BEGIN DISPLAY 3920 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_23
            WIRE 3840 1968 3920 1968
            WIRE 3920 1968 3984 1968
            BEGIN DISPLAY 3920 1968 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_7
            WIRE 3840 2032 3920 2032
            WIRE 3920 2032 3984 2032
            BEGIN DISPLAY 3920 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_22
            WIRE 3840 2208 3920 2208
            WIRE 3920 2208 3984 2208
            BEGIN DISPLAY 3920 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_6
            WIRE 3840 2272 3920 2272
            WIRE 3920 2272 3984 2272
            BEGIN DISPLAY 3920 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_21
            WIRE 3840 2448 3936 2448
            WIRE 3936 2448 3984 2448
            BEGIN DISPLAY 3936 2448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_5
            WIRE 3840 2512 3920 2512
            WIRE 3920 2512 3984 2512
            BEGIN DISPLAY 3920 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_20
            WIRE 3840 2688 3920 2688
            WIRE 3920 2688 3984 2688
            BEGIN DISPLAY 3920 2688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_4
            WIRE 3840 2752 3920 2752
            WIRE 3920 2752 3984 2752
            BEGIN DISPLAY 3920 2752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_19
            WIRE 3840 2928 3920 2928
            WIRE 3920 2928 3984 2928
            BEGIN DISPLAY 3920 2928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_3
            WIRE 3840 2992 3920 2992
            WIRE 3920 2992 3984 2992
            BEGIN DISPLAY 3920 2992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_18
            WIRE 3840 3168 3920 3168
            WIRE 3920 3168 3984 3168
            BEGIN DISPLAY 3920 3168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_2
            WIRE 3840 3232 3920 3232
            WIRE 3920 3232 3984 3232
            BEGIN DISPLAY 3920 3232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_17
            WIRE 3840 3408 3920 3408
            WIRE 3920 3408 3984 3408
            BEGIN DISPLAY 3920 3408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_1
            WIRE 3840 3472 3920 3472
            WIRE 3920 3472 3984 3472
            BEGIN DISPLAY 3920 3472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_16
            WIRE 3840 3648 3920 3648
            WIRE 3920 3648 3984 3648
            BEGIN DISPLAY 3920 3648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_0
            WIRE 3840 3712 3920 3712
            WIRE 3920 3712 3984 3712
            BEGIN DISPLAY 3920 3712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_15
            WIRE 3840 3888 3920 3888
            WIRE 3920 3888 3984 3888
            BEGIN DISPLAY 3920 3888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_31
            WIRE 3840 3952 3920 3952
            WIRE 3920 3952 3984 3952
            BEGIN DISPLAY 3920 3952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_14
            WIRE 3840 4128 3920 4128
            WIRE 3920 4128 3984 4128
            BEGIN DISPLAY 3920 4128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_30
            WIRE 3840 4192 3920 4192
            WIRE 3920 4192 3984 4192
            BEGIN DISPLAY 3920 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_13
            WIRE 3840 4368 3920 4368
            WIRE 3920 4368 3984 4368
            BEGIN DISPLAY 3920 4368 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_29
            WIRE 3840 4432 3920 4432
            WIRE 3920 4432 3984 4432
            BEGIN DISPLAY 3920 4432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_12
            WIRE 3840 4608 3920 4608
            WIRE 3920 4608 3984 4608
            BEGIN DISPLAY 3920 4608 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_28
            WIRE 3840 4672 3920 4672
            WIRE 3920 4672 3984 4672
            BEGIN DISPLAY 3920 4672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_11
            WIRE 3840 4848 3920 4848
            WIRE 3920 4848 3984 4848
            BEGIN DISPLAY 3920 4848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_27
            WIRE 3840 4912 3920 4912
            WIRE 3920 4912 3984 4912
            BEGIN DISPLAY 3920 4912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_10
            WIRE 3840 5088 3920 5088
            WIRE 3920 5088 3984 5088
            BEGIN DISPLAY 3920 5088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_26
            WIRE 3840 5152 3920 5152
            WIRE 3920 5152 3984 5152
            BEGIN DISPLAY 3920 5152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_9
            WIRE 3840 5328 3920 5328
            WIRE 3920 5328 3984 5328
            BEGIN DISPLAY 3920 5328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_25
            WIRE 3840 5392 3920 5392
            WIRE 3920 5392 3984 5392
            BEGIN DISPLAY 3920 5392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_8
            WIRE 3840 5568 3920 5568
            WIRE 3920 5568 3984 5568
            BEGIN DISPLAY 3920 5568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_24
            WIRE 3840 5632 3920 5632
            WIRE 3920 5632 3984 5632
            BEGIN DISPLAY 3920 5632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_7
            WIRE 3840 5808 3920 5808
            WIRE 3920 5808 3984 5808
            BEGIN DISPLAY 3920 5808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_23
            WIRE 3840 5872 3920 5872
            WIRE 3920 5872 3984 5872
            BEGIN DISPLAY 3920 5872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_6
            WIRE 3840 6048 3920 6048
            WIRE 3920 6048 3984 6048
            BEGIN DISPLAY 3920 6048 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_22
            WIRE 3840 6112 3920 6112
            WIRE 3920 6112 3984 6112
            BEGIN DISPLAY 3920 6112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_5
            WIRE 3840 6288 3920 6288
            WIRE 3920 6288 3984 6288
            BEGIN DISPLAY 3920 6288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_21
            WIRE 3840 6352 3920 6352
            WIRE 3920 6352 3984 6352
            BEGIN DISPLAY 3920 6352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_4
            WIRE 3840 6528 3920 6528
            WIRE 3920 6528 3984 6528
            BEGIN DISPLAY 3920 6528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_20
            WIRE 3840 6592 3920 6592
            WIRE 3920 6592 3984 6592
            BEGIN DISPLAY 3920 6592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_3
            WIRE 3840 6768 3920 6768
            WIRE 3920 6768 3984 6768
            BEGIN DISPLAY 3920 6768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_19
            WIRE 3840 6832 3920 6832
            WIRE 3920 6832 3984 6832
            BEGIN DISPLAY 3920 6832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_2
            WIRE 3840 7008 3920 7008
            WIRE 3920 7008 3984 7008
            BEGIN DISPLAY 3920 7008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_18
            WIRE 3840 7072 3920 7072
            WIRE 3920 7072 3984 7072
            BEGIN DISPLAY 3920 7072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_1
            WIRE 3840 7248 3920 7248
            WIRE 3920 7248 3984 7248
            BEGIN DISPLAY 3920 7248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_17
            WIRE 3840 7312 3920 7312
            WIRE 3920 7312 3984 7312
            BEGIN DISPLAY 3920 7312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_0
            WIRE 3840 7472 3920 7472
            WIRE 3920 7472 3984 7472
            BEGIN DISPLAY 3920 7472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4_16
            WIRE 3840 7536 3920 7536
            WIRE 3920 7536 3984 7536
            BEGIN DISPLAY 3920 7536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(0)
            WIRE 4304 7504 4400 7504
            WIRE 4400 7504 4464 7504
            BEGIN DISPLAY 4400 7504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(1)
            WIRE 4304 7280 4400 7280
            WIRE 4400 7280 4464 7280
            BEGIN DISPLAY 4400 7280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(2)
            WIRE 4304 7040 4400 7040
            WIRE 4400 7040 4464 7040
            BEGIN DISPLAY 4400 7040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(3)
            WIRE 4304 6800 4400 6800
            WIRE 4400 6800 4464 6800
            BEGIN DISPLAY 4400 6800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(4)
            WIRE 4304 6560 4400 6560
            WIRE 4400 6560 4464 6560
            BEGIN DISPLAY 4400 6560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(5)
            WIRE 4304 6320 4400 6320
            WIRE 4400 6320 4464 6320
            BEGIN DISPLAY 4400 6320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(6)
            WIRE 4304 6080 4400 6080
            WIRE 4400 6080 4464 6080
            BEGIN DISPLAY 4400 6080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7)
            WIRE 4304 5840 4400 5840
            WIRE 4400 5840 4464 5840
            BEGIN DISPLAY 4400 5840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(25)
            WIRE 4304 1520 4400 1520
            WIRE 4400 1520 4464 1520
            BEGIN DISPLAY 4400 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(26)
            WIRE 4304 1280 4400 1280
            WIRE 4400 1280 4464 1280
            BEGIN DISPLAY 4400 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(27)
            WIRE 4304 1040 4400 1040
            WIRE 4400 1040 4464 1040
            BEGIN DISPLAY 4400 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(28)
            WIRE 4304 800 4400 800
            WIRE 4400 800 4464 800
            BEGIN DISPLAY 4400 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(29)
            WIRE 4304 560 4400 560
            WIRE 4400 560 4464 560
            BEGIN DISPLAY 4400 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(30)
            WIRE 4304 320 4400 320
            WIRE 4400 320 4464 320
            BEGIN DISPLAY 4400 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(31)
            WIRE 4304 80 4400 80
            WIRE 4400 80 4464 80
            BEGIN DISPLAY 4400 80 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(24)
            WIRE 4304 1760 4400 1760
            WIRE 4400 1760 4464 1760
            BEGIN DISPLAY 4400 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(17)
            WIRE 4304 3440 4400 3440
            WIRE 4400 3440 4464 3440
            BEGIN DISPLAY 4400 3440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(18)
            WIRE 4304 3200 4400 3200
            WIRE 4400 3200 4464 3200
            BEGIN DISPLAY 4400 3200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(19)
            WIRE 4304 2960 4400 2960
            WIRE 4400 2960 4464 2960
            BEGIN DISPLAY 4400 2960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(20)
            WIRE 4304 2720 4400 2720
            WIRE 4400 2720 4464 2720
            BEGIN DISPLAY 4400 2720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(21)
            WIRE 4304 2480 4400 2480
            WIRE 4400 2480 4464 2480
            BEGIN DISPLAY 4400 2480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(22)
            WIRE 4304 2240 4400 2240
            WIRE 4400 2240 4464 2240
            BEGIN DISPLAY 4400 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(23)
            WIRE 4304 2000 4400 2000
            WIRE 4400 2000 4464 2000
            BEGIN DISPLAY 4400 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(16)
            WIRE 4304 3680 4400 3680
            WIRE 4400 3680 4464 3680
            BEGIN DISPLAY 4400 3680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(9)
            WIRE 4304 5360 4400 5360
            WIRE 4400 5360 4464 5360
            BEGIN DISPLAY 4400 5360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(10)
            WIRE 4304 5120 4400 5120
            WIRE 4400 5120 4464 5120
            BEGIN DISPLAY 4400 5120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(11)
            WIRE 4304 4880 4400 4880
            WIRE 4400 4880 4464 4880
            BEGIN DISPLAY 4400 4880 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(12)
            WIRE 4304 4640 4400 4640
            WIRE 4400 4640 4464 4640
            BEGIN DISPLAY 4400 4640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(13)
            WIRE 4304 4400 4400 4400
            WIRE 4400 4400 4464 4400
            BEGIN DISPLAY 4400 4400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(14)
            WIRE 4304 4160 4400 4160
            WIRE 4400 4160 4464 4160
            BEGIN DISPLAY 4400 4160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(15)
            WIRE 4304 3920 4400 3920
            WIRE 4400 3920 4464 3920
            BEGIN DISPLAY 4400 3920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(8)
            WIRE 4304 5600 4400 5600
            WIRE 4400 5600 4464 5600
            BEGIN DISPLAY 4400 5600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_259 3984 208 R0
        BEGIN BRANCH S(31:0)
            WIRE 4720 7200 4800 7200
            WIRE 4800 7200 4880 7200
            BEGIN DISPLAY 4800 7200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 160 7200 240 7200
            WIRE 240 7200 320 7200
            BEGIN DISPLAY 240 7200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Q(4:0)
            WIRE 160 7280 240 7280
            WIRE 240 7280 320 7280
            BEGIN DISPLAY 240 7280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4880 7200 S(31:0) R0 28
        IOMARKER 160 7200 A(31:0) R180 28
        IOMARKER 160 7280 Q(4:0) R180 28
    END SHEET
END SCHEMATIC
