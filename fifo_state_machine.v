`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:25:18 03/10/2022 
// Design Name: 
// Module Name:    fifo_state_machine 
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

module convertable_fifo_controller
   #(
      parameter DATA_WIDTH = 64,
      parameter CTRL_WIDTH = DATA_WIDTH/8
   )
   (  
		input  [DATA_WIDTH-1:0]             in_data,
      input  [CTRL_WIDTH-1:0]             in_ctrl,
      input                               in_wr,
      output                              in_rdy,

      output [DATA_WIDTH-1:0]             out_data,
      output [CTRL_WIDTH-1:0]             out_ctrl,
      output                              out_wr,
      input                               out_rdy,

      // --- CPU interface
      // input  [63:0]                       cpu_addr_in,
      // input  [63:0]             				cpu_din,
      // input                               cpu_wen,
		// output [63:0]								cpu_dout,
		
      // --- Register interface
      // input                               reg_req_in,
      // input                               reg_ack_in,
      // input                               reg_rd_wr_L_in,
      // input  [`UDP_REG_ADDR_WIDTH-1:0]    reg_addr_in,
      // input  [`CPCI_NF2_DATA_WIDTH-1:0]   reg_data_in,
      // input  [UDP_REG_SRC_WIDTH-1:0]      reg_src_in,

      // output                              reg_req_out,
      // output                              reg_ack_out,
      // output                              reg_rd_wr_L_out,
      // output  [`UDP_REG_ADDR_WIDTH-1:0]   reg_addr_out,
      // output  [`CPCI_NF2_DATA_WIDTH-1:0]  reg_data_out,
      // output  [UDP_REG_SRC_WIDTH-1:0]     reg_src_out,

      // misc
      input                                reset,
      input                                clk
   );

   // Define the log2 function
   // `LOG2_FUNC

   //------------------------- Signals-------------------------------
   // internal state
   reg [1:0]                     state, state_next;
   reg                           in_pkt_body, in_pkt_body_next;
   reg                           end_of_pkt, end_of_pkt_next;
   reg                           begin_pkt, begin_pkt_next;
   reg [2:0]                     header_counter, header_counter_next;
   //reg                           counter;

   // local parameter
   parameter                     START 	= 2'b00;
   parameter                     HEADER 	= 2'b01;
   parameter                     PAYLOAD 	= 2'b10;
	parameter							HOLD		= 2'b11;

   //------------------------- Local assignments -------------------------------
	wire hold;
	assign in_rdy = ~hold;
	
	wire cpu_ctrl;
	wire [1:0] cpu_cmd;
   
   // Functional signals are wrapped into cpu_addr
   //
   // cpu_ctrl =  [11]
   //    set means accessing control signals
   //
   // cpu_cmd  =  [10:9]
   //          !ctrl    ctrl
   //    00 -> Data  /  Tail
   //    01 -> Ctrl  /  Head
   //    10 -> Ctrl  /  Full
   //    11 -> Ctrl  /  Done
   //
   // cpu_addr =  [8:0]
   //    Specifies address to access data (!ctrl only)
	
	wire [63:0] cpu_addr_in;
   wire [63:0] cpu_din;
   wire cpu_wen;
	wire [63:0] cpu_dout;
	reg div_clk;

	wire [8:0] cpu_addr;
	assign cpu_ctrl = cpu_addr_in[11];
	assign cpu_cmd = cpu_addr_in[10:9];
	assign cpu_addr = cpu_addr_in[8:0];
	
	reg fifo_wren;

   always @(posedge clk)
	begin
      if (reset) div_clk <= 0;
      else div_clk <= ~div_clk;
	end

   //------------------------- Modules-------------------------------
   CVTB_memory fifo_dut (
		.cpu_addr_in      (cpu_addr), 
		.cpu_din          (cpu_din), 
		.in_data          (in_data), 
		.rst              (reset), 
		.clk              (clk),
		.end_of_pkt       (end_of_pkt),
		.hold					(hold), 
		.out_data			(out_data),
		.cpu_ctrl			(cpu_ctrl),
		.out_ctrl			(out_ctrl), 
		.cpu_cmd				(cpu_cmd), 
		.cpu_write			(cpu_wen),
		.dout_a           (cpu_dout),
		.in_ctrl				(in_ctrl),
		.out_rdy				(out_rdy),
		.in_wr				(fifo_wren),
		.out_wr				(out_wr)
   );

   datapath64bit UUT (
        .clk(div_clk),
		  .instruction(),
		  .PC(),
        .rst(reset),
        .one(16'd1),
		  .MEM_ADDR(),
		  .MEM_WEN(),
        .en(1'b1),
		  .MEM_DIN(),
		  .INS_WEN(1'd0),
		  .INS_DIN(32'd0),
		  .INS_ADDR(9'd0),
		  .DATA_WEN(1'd0),
		  .DATA_DIN(64'd0),
		  .DATA_ADDR(8'd0),
		  .DATA_DOUT(),
		  .INS_DOUT(),
		  .clk_2x(clk),
		  .PERF_DIN(cpu_dout), 
		  .PERF_ADDR(cpu_addr_in), 
		  .PERF_DOUT(cpu_din), 
		  .PERF_WREN(cpu_wen)
		  );
	
	
   //------------------------- Logic-------------------------------
   
   always @(*) begin
      state_next = state;
      header_counter_next = header_counter;
 
      end_of_pkt_next = end_of_pkt;
      in_pkt_body_next = in_pkt_body;
      begin_pkt_next = begin_pkt;
      
		case(state)
			START: begin
				if (in_ctrl != 0) begin
					state_next 		= HEADER;
					begin_pkt_next 	= 1;
					end_of_pkt_next 	= 0;   // takes matcher out of reset
					fifo_wren = in_wr;
				end
				else begin
					fifo_wren = 0;
				end
			end
			HEADER: begin
				begin_pkt_next = 0;
				fifo_wren = in_wr;
				if (in_ctrl == 0) begin
					header_counter_next = header_counter + 1'b1;
					if (header_counter_next == 3) begin
					  state_next = PAYLOAD;
					end
				end
			end
			PAYLOAD: begin
				fifo_wren = in_wr;
				if (in_ctrl != 0) begin
					state_next = HOLD;
					header_counter_next 	= 0;
					end_of_pkt_next 		= 1;   // will reset matcher
					in_pkt_body_next 		= 0;
				end
				else begin
					in_pkt_body_next = 1;
				end
			end
			HOLD: begin
				fifo_wren = 0;
				if (~hold) begin
					state_next = START;
				end
			end
		endcase // case(state)
   end // always @ (*)
   
   always @(posedge clk) begin
      if(reset) begin
         header_counter <= 0;
         state 			<= START;
         begin_pkt 		<= 0;
         end_of_pkt 	<= 0;
         in_pkt_body 	<= 0;
      end
      else begin
         header_counter <= header_counter_next;
         state 			<= state_next;
         begin_pkt 		<= begin_pkt_next;
         end_of_pkt 	<= end_of_pkt_next;
         in_pkt_body 	<= in_pkt_body_next;
         //counter <= 0;
      end // else: !if(reset)
   end // always @ (posedge clk)   


endmodule
