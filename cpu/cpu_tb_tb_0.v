////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2003 Xilinx, Inc.
// All Right Reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : ISE
//  /   /         Filename : cpu_tb.tfw
// /___/   /\     Timestamp : Sat Mar  5 06:19:35 2022
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: cpu_tb_tb_0
//Device: Xilinx
//
`timescale 1ns/1ps

`define DEBUG 1

module cpu_tb_tb_0;
    reg clk = 1'b0;
	 reg div_clk = 1'b0;
    reg en = 1'b0;
    reg [15:0] one = 16'b0000000000000000;
    reg rst = 1'b0;
	 reg [63:0] perf_din = 64'd0;

    parameter PERIOD = 200;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 100;

    initial    // Clock process for clk
    begin
        #OFFSET;
        forever
        begin
            clk = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clk = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end
	 
	 always @(posedge clk)
	 begin
		div_clk <= ~div_clk;
	 end

	
    datapath64bit UUT (
        .clk(div_clk),
        .rst(rst),
        .en(en),
		  .INS_WEN(1'd0),
		  .INS_DIN(32'd0),
		  .INS_ADDR(12'd0),
		  .DATA_WEN(1'd0),
		  .DATA_DIN(64'd0),
		  .DATA_ADDR(10'd0),
		  .DATA_DOUT(),
		  .INS_DOUT(),
		  .clk_2x(clk),
		  .PERF_DIN(64'd69), 
		  .PERF_ADDR(), 
		  .PERF_DOUT(), 
		  .PERF_WREN()
		  );

    initial begin
        // -------------  Current Time:  100ns
        #100;
        rst = 1'b1;
        one = 16'b0000000000000001;
		  perf_din = 64'd0;
        // -------------------------------------
        // -------------  Current Time:  185ns
        #85;
        // -------------------------------------
        // -------------  Current Time:  385ns
        #200;
        rst = 1'b0;
		  en = 1'b1;
		  perf_din = 64'd0;
        // -------------------------------------
        // -------------  Current Time:  6800ns
		  #6415;
		  perf_din = 64'd1;
        // -------------------------------------
        // -------------  Current Time:  13200ns
		  #6400;
		  perf_din = 64'd2;
        // -------------------------------------
        // -------------  Current Time:  13400ns
		  #200;
		  perf_din = 64'd9;
        // -------------------------------------
        // -------------  Current Time:  16400ns
		  #3000;
		  perf_din = 64'h0000000000486921;
    end

endmodule

