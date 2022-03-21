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
      input  [63:0]                       cpu_addr_in,
      input  [63:0]             				cpu_din,
      input                               cpu_wen,
		output [63:0]								cpu_dout,
		
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
	
	reg in_rdy_out;
	assign in_rdy = in_rdy_out;
	
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

	wire [8:0] cpu_addr;
	assign cpu_ctrl = cpu_addr_in[11];
	assign cpu_cmd = cpu_addr_in[10:9];
	assign cpu_addr = cpu_addr_in[8:0];
	
	// Need a 1 clock buffer on the output signals to capture the first and last packet
	reg [63:0] in_data_pre;
	reg [7:0] in_ctrl_pre;
	reg end_of_pkt_pre;
	
	reg fifo_wren;
	reg fifo_wren_next;

   //------------------------- Modules-------------------------------
   CVTB_memory fifo_dut (
		.cpu_addr_in      (cpu_addr), 
		.cpu_din          (cpu_din), 
		.in_data          (in_data_pre), 
		.rst              (reset), 
		.clk              (clk),
		.end_of_pkt       (end_of_pkt_pre),
		.hold					(hold), 
		.out_data			(out_data),
		.cpu_ctrl			(cpu_ctrl),
		.out_ctrl			(out_ctrl), 
		.cpu_cmd				(cpu_cmd), 
		.cpu_write			(cpu_wen),
		.dout_a           (cpu_dout),
		.in_ctrl				(in_ctrl_pre),
		.out_rdy				(out_rdy),
		.in_wr				(fifo_wren),
		.out_wr				(out_wr)
   );
   //------------------------- Logic-------------------------------
   
   always @(*) begin
      state_next = state;
      header_counter_next = header_counter;
 
      end_of_pkt_next = end_of_pkt;
      in_pkt_body_next = in_pkt_body;
      begin_pkt_next = begin_pkt;
		fifo_wren_next = fifo_wren;
      
		case(state)
			START: begin
				in_rdy_out = 1;
				if (in_ctrl != 0) begin
					state_next 		= HEADER;
					begin_pkt_next 	= 1;
					end_of_pkt_next 	= 0;   // takes matcher out of reset
					fifo_wren_next = in_wr;
				end
				else begin
					fifo_wren_next = 0;
				end
			end
			HEADER: begin
				begin_pkt_next = 0;
				in_rdy_out = 1;
				fifo_wren_next = in_wr;
				if (in_ctrl == 0) begin
					header_counter_next = header_counter + 1'b1;
					if (header_counter_next == 3) begin
					  state_next = PAYLOAD;
					end
				end
			end
			PAYLOAD: begin
				if (end_of_pkt) begin
					state_next = HOLD;
					fifo_wren_next = 0;
					in_rdy_out = 0;
				end
				else if (in_ctrl != 0) begin
					fifo_wren_next = in_wr;
					in_rdy_out = 1;
					header_counter_next 	= 0;
					end_of_pkt_next 		= 1;   // will reset matcher
					in_pkt_body_next 		= 0;
				end
				else begin
					fifo_wren_next = in_wr;
					in_pkt_body_next = 1;
					in_rdy_out = 1;
				end
			end
			HOLD: begin
				fifo_wren_next = 0;
				in_rdy_out = 0;
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
			in_data_pre <= 0;
			in_ctrl_pre <= 0;
			end_of_pkt_pre <= 0;
			fifo_wren <= 0;
      end
      else begin
         header_counter <= header_counter_next;
         state 			<= state_next;
         begin_pkt 		<= begin_pkt_next;
         end_of_pkt 	<= end_of_pkt_next;
         in_pkt_body 	<= in_pkt_body_next;
			in_data_pre <= in_data;
			in_ctrl_pre <= in_ctrl;
			end_of_pkt_pre <= end_of_pkt;
			fifo_wren <= fifo_wren_next;

         //counter <= 0;
      end // else: !if(reset)
   end // always @ (posedge clk)   


endmodule
