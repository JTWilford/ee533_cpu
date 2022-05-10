`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:07:34 03/14/2022 
// Design Name: 
// Module Name:    test_data_generator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module test_data_generator(
    input out_rdy,
    output out_wr,
    output [7:0] out_ctrl,
    output [63:0] out_data,
    input clk,
    input rst
    );

	// Interest Packet:
	//	450000271aac4000
	//	40fc212d7f000001
	//	7f00000105110709
	//	08072f7570706974
	//	790a0467458b6b

	// Data Packet:
	//	450001e51c634000
	//	40fc1db87f000001
	//	7f00000106fd01cd
	//	070908072f757070
	//	69747915fd01be4c
	//	6f72656d20697073
	//	756d20646f6c6f72
	//	2073697420616d65
	//	742c20636f6e7365
	//	6374657475722061
	//	646970697363696e
	//	6720656c69742c20
	//	73656420646f2065
	//	6975736d6f642074
	//	656d706f7220696e
	//	6369646964756e74
	//	207574206c61626f
	//	726520657420646f
	//	6c6f7265206d6167
	//	6e6120616c697175
	//	612e20557420656e
	//	696d206164206d69
	//	6e696d2076656e69
	//	616d2c2071756973
	//	206e6f7374727564
	//	2065786572636974
	//	6174696f6e20756c
	//	6c616d636f206c61
	//	626f726973206e69
	//	736920757420616c
	//	6971756970206578
	//	20656120636f6d6d
	//	6f646f20636f6e73
	//	65717561742e2044
	//	7569732061757465
	//	2069727572652064
	//	6f6c6f7220696e20
	//	726570726568656e
	//	646572697420696e
	//	20766f6c75707461
	//	74652076656c6974
	//	2065737365206369
	//	6c6c756d20646f6c
	//	6f72652065752066
	//	7567696174206e75
	//	6c6c612070617269
	//	617475722e204578
	//	6365707465757220
	//	73696e74206f6363
	//	6165636174206375
	//	7069646174617420
	//	6e6f6e2070726f69
	//	64656e742c207375
	//	6e7420696e206375
	//	6c70612071756920
	//	6f66666963696120
	//	6465736572756e74
	//	206d6f6c6c697420
	//	616e696d20696420
	//	657374206c61626f
	//	72756d2e00
	 wire [63:0] msg [74:0];
	 wire [7:0] ctrl [74:0];
	 assign msg[0] = "badisbad";
	 assign ctrl[0] = 1;
	 // IP header
	 assign msg[1] = 64'h450000271aac4000;
	 assign ctrl[1] = 0;
	 assign msg[2] = 64'h40fc212d7f000001;
	 assign ctrl[2] = 0;
	 // End of IP header and begining of NDN packet
	 assign msg[3] = 64'h7f00000105110709;
	 assign ctrl[3] = 0;
	 assign msg[4] = 64'h08072f7570706974;
	 assign ctrl[4] = 0;
	 assign msg[5] = 64'h790a0467458b6b00;
	 assign ctrl[5] = 0;
	 assign msg[6] = "badisbad";
	 assign ctrl[6] = 1;
	 assign msg[7] = "badisbad";
	 assign ctrl[7] = 0;
	 assign msg[8] = "badisbad";
	 assign ctrl[8] = 1;
	 assign msg[9] = 64'h450001e51c634000;
	 assign ctrl[9] = 0;
	 assign msg[10] = 64'h40fc1db87f000001;
	 assign ctrl[10] = 0;
	 assign msg[11] = 64'h7f00000106fd01cd;
	 assign ctrl[11] = 0;
	 assign msg[12] = 64'h070908072f757070;
	 assign ctrl[12] = 0;
	 assign msg[13] = 64'h69747915fd01be4c;
	 assign ctrl[13] = 0;
	 assign msg[14] = 64'h6f72656d20697073;
	 assign ctrl[14] = 0;
	 assign msg[15] = 64'h756d20646f6c6f72;
	 assign ctrl[15] = 0;
	 assign msg[16] = 64'h2073697420616d65;
	 assign ctrl[16] = 0;
	 assign msg[17] = 64'h742c20636f6e7365;
	 assign ctrl[17] = 0;
	 assign msg[18] = 64'h6374657475722061;
	 assign ctrl[18] = 0;
	 assign msg[19] = 64'h646970697363696e;
	 assign ctrl[19] = 0;
	 assign msg[20] = 64'h6720656c69742c20;
	 assign ctrl[20] = 0;
	 assign msg[21] = 64'h73656420646f2065;
	 assign ctrl[21] = 0;
	 assign msg[22] = 64'h6975736d6f642074;
	 assign ctrl[22] = 0;
	 assign msg[23] = 64'h656d706f7220696e;
	 assign ctrl[23] = 0;
	 assign msg[24] = 64'h6369646964756e74;
	 assign ctrl[24] = 0;
	 assign msg[25] = 64'h207574206c61626f;
	 assign ctrl[25] = 0;
	 assign msg[26] = 64'h726520657420646f;
	 assign ctrl[26] = 0;
	 assign msg[27] = 64'h6c6f7265206d6167;
	 assign ctrl[27] = 0;
	 assign msg[28] = 64'h6e6120616c697175;
	 assign ctrl[28] = 0;
	 assign msg[29] = 64'h612e20557420656e;
	 assign ctrl[29] = 0;
	 assign msg[30] = 64'h696d206164206d69;
	 assign ctrl[30] = 0;
	 assign msg[31] = 64'h6e696d2076656e69;
	 assign ctrl[31] = 0;
	 assign msg[32] = 64'h616d2c2071756973;
	 assign ctrl[32] = 0;
	 assign msg[33] = 64'h206e6f7374727564;
	 assign ctrl[33] = 0;
	 assign msg[34] = 64'h2065786572636974;
	 assign ctrl[34] = 0;
	 assign msg[35] = 64'h6174696f6e20756c;
	 assign ctrl[35] = 0;
	 assign msg[36] = 64'h6c616d636f206c61;
	 assign ctrl[36] = 0;
	 assign msg[37] = 64'h626f726973206e69;
	 assign ctrl[37] = 0;
	 assign msg[38] = 64'h736920757420616c;
	 assign ctrl[38] = 0;
	 assign msg[39] = 64'h6971756970206578;
	 assign ctrl[39] = 0;
	 assign msg[40] = 64'h20656120636f6d6d;
	 assign ctrl[40] = 0;
	 assign msg[41] = 64'h6f646f20636f6e73;
	 assign ctrl[41] = 0;
	 assign msg[42] = 64'h65717561742e2044;
	 assign ctrl[42] = 0;
	 assign msg[43] = 64'h7569732061757465;
	 assign ctrl[43] = 0;
	 assign msg[44] = 64'h2069727572652064;
	 assign ctrl[44] = 0;
	 assign msg[45] = 64'h6f6c6f7220696e20;
	 assign ctrl[45] = 0;
	 assign msg[46] = 64'h726570726568656e;
	 assign ctrl[46] = 0;
	 assign msg[47] = 64'h646572697420696e;
	 assign ctrl[47] = 0;
	 assign msg[48] = 64'h20766f6c75707461;
	 assign ctrl[48] = 0;
	 assign msg[49] = 64'h74652076656c6974;
	 assign ctrl[49] = 0;
	 assign msg[50] = 64'h2065737365206369;
	 assign ctrl[50] = 0;
	 assign msg[51] = 64'h6c6c756d20646f6c;
	 assign ctrl[51] = 0;
	 assign msg[52] = 64'h6f72652065752066;
	 assign ctrl[52] = 0;
	 assign msg[53] = 64'h7567696174206e75;
	 assign ctrl[53] = 0;
	 assign msg[54] = 64'h6c6c612070617269;
	 assign ctrl[54] = 0;
	 assign msg[55] = 64'h617475722e204578;
	 assign ctrl[55] = 0;
	 assign msg[56] = 64'h6365707465757220;
	 assign ctrl[56] = 0;
	 assign msg[57] = 64'h73696e74206f6363;
	 assign ctrl[57] = 0;
	 assign msg[58] = 64'h6165636174206375;
	 assign ctrl[58] = 0;
	 assign msg[59] = 64'h7069646174617420;
	 assign ctrl[59] = 0;
	 assign msg[60] = 64'h6e6f6e2070726f69;
	 assign ctrl[60] = 0;
	 assign msg[61] = 64'h64656e742c207375;
	 assign ctrl[61] = 0;
	 assign msg[62] = 64'h6e7420696e206375;
	 assign ctrl[62] = 0;
	 assign msg[63] = 64'h6c70612071756920;
	 assign ctrl[63] = 0;
	 assign msg[64] = 64'h6f66666963696120;
	 assign ctrl[64] = 0;
	 assign msg[65] = 64'h6465736572756e74;
	 assign ctrl[65] = 0;
	 assign msg[66] = 64'h206d6f6c6c697420;
	 assign ctrl[66] = 0;
	 assign msg[67] = 64'h616e696d20696420;
	 assign ctrl[67] = 0;
	 assign msg[68] = 64'h657374206c61626f;
	 assign ctrl[68] = 0;
	 assign msg[69] = 64'h72756d2e00000000;
	 assign ctrl[69] = 0;
	 assign msg[70] = "badisbad";
	 assign ctrl[70] = 1;
	 assign msg[71] = "badisbad";
	 assign ctrl[71] = 0;
	 assign msg[72] = "badisbad";
	 assign ctrl[72] = 0;
	 
	 reg [63:0] dout;
	 reg [7:0] cout;
	 reg wout;
	 
	 
	reg [7:0] counter;
	reg [7:0] counter_next;

    assign out_data = dout;
	 assign out_ctrl = cout;

    assign out_wr = wout;

    always @(posedge clk) begin
        if (rst) begin
            counter <= 64'd0;
            counter_next <= 64'd1;
				dout <= 64'd0;
				cout <= 8'd0;
				wout <= 1'd0;
        end
        else begin
            if (out_rdy) begin
					if (counter < 72) counter <= counter + 1;
					else counter <= 0;
					if (counter_next < 72) counter_next <= counter_next + 1;
					else counter_next <= 0;
				end
				if (counter_next == 1 || counter_next == 9) begin
					wout <= 1;
				end
				else if (counter_next == 8 || counter_next == 72) begin
					wout <= 0;
				end
				dout <= msg[counter];
				cout <= ctrl[counter];
        end
    end


endmodule
