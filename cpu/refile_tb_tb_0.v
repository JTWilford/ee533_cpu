////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2003 Xilinx, Inc.
// All Right Reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1.03
//  \   \         Application : ISE
//  /   /         Filename : refile_tb.tfw
// /___/   /\     Timestamp : Sun Mar  6 23:23:59 2022
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: refile_tb_tb_0
//Device: Xilinx
//
`timescale 1ns/1ps

module refile_tb_tb_0;
    reg clk = 1'b0;
    reg rd_en = 1'b0;
    reg [2:0] r0addr = 3'b000;
    reg [2:0] r1addr = 3'b000;
    reg [2:0] wraddr = 3'b100;
    reg [63:0] wr_din = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    reg wr_en = 1'b0;
    wire [63:0] r0_data;
    wire [63:0] r1_data;

    parameter PERIOD_clk = 200;
    parameter real DUTY_CYCLE_clk = 0.5;
    parameter OFFSET_clk = 100;
    parameter PERIOD_rd_en = 400;
    parameter real DUTY_CYCLE_rd_en = 0.5;
    parameter OFFSET_rd_en = 0;

    initial    // Clock process for clk
    begin
        #OFFSET_clk;
        forever
        begin
            clk = 1'b0;
            #(PERIOD_clk-(PERIOD_clk*DUTY_CYCLE_clk)) clk = 1'b1;
            #(PERIOD_clk*DUTY_CYCLE_clk);
        end
    end

    initial    // Clock process for rd_en
    begin
        #OFFSET_rd_en;
        forever
        begin
            rd_en = 1'b0;
            #(PERIOD_rd_en-(PERIOD_rd_en*DUTY_CYCLE_rd_en)) rd_en = 1'b1;
            #(PERIOD_rd_en*DUTY_CYCLE_rd_en);
        end
    end

    regfile64bit UUT (
        .clk(clk),
        .rd_en(rd_en),
        .r0addr(r0addr),
        .r1addr(r1addr),
        .wraddr(wraddr),
        .wr_din(wr_din),
        .wr_en(wr_en),
        .r0_data(r0_data),
        .r1_data(r1_data));

    initial begin // Process for clk
    end

    initial begin // Process for rd_en
        // -------------  Current Time:  185ns
        #205;
        wr_en = 1'b1;
        r1addr = 3'b001;
        wr_din = 64'b0000000000000000000000000000000000000000000000000000000000001000;
        // -------------------------------------
        // -------------  Current Time:  585ns
        #400;
        wr_en = 1'b0;
        r0addr = 3'b010;
        r1addr = 3'b011;
        wr_din = 64'b0000000000000000000000000000000000000000000000000000000000000111;
        // -------------------------------------
        // -------------  Current Time:  985ns
        #400;
        r0addr = 3'b100;
        r1addr = 3'b101;
        wr_din = 64'b0000000000000000000000000000000000000000000000000000000000000110;
        // -------------------------------------
        // -------------  Current Time:  1385ns
        #400;
        wr_en = 1'b1;
        r0addr = 3'b000;
        r1addr = 3'b111;
        wraddr = 3'b101;
        wr_din = 64'b0000000000000000000000000000000000000000000000000000000000000101;
        // -------------------------------------
        // -------------  Current Time:  1785ns
        #400;
        r0addr = 3'b010;
        r1addr = 3'b001;
        wraddr = 3'b001;
        wr_din = 64'b0000000000000000000000000000000000000000000000000000000000000100;
        // -------------------------------------
        // -------------  Current Time:  2185ns
        #400;
        wr_en = 1'b0;
        r0addr = 3'b100;
        r1addr = 3'b011;
        wr_din = 64'b0000000000000000000000000000000000000000000000000000000000000011;
        // -------------------------------------
        // -------------  Current Time:  2585ns
        #400;
        r0addr = 3'b000;
        r1addr = 3'b101;
        wr_din = 64'b0000000000000000000000000000000000000000000000000000000000000010;
        // -------------------------------------
        // -------------  Current Time:  2800ns
        #200;
        wr_din = 64'b0000000000000000000000000000000000000000000000000000000000000000;
        // -------------------------------------
        // -------------  Current Time:  2985ns
        #200;
        r0addr = 3'b010;
        r1addr = 3'b111;
        wr_din = 64'b0000000000000000000000000000000000000000000000000000000000000001;
        // -------------------------------------
    end

endmodule

