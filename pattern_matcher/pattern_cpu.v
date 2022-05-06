`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:28 05/03/2022 
// Design Name: 
// Module Name:    pattern_cpu 
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
module pattern_cpu(
    input [63:0] cpu_din,
    input [63:0] cpu_ain,
    input cpu_wren,
    output [63:0] cpu_dout,
    input clk,
    input rst
);
   
    reg [127:0] string;
    reg [63:0] pattern;
    reg [7:0] wildcard;

    reg [63:0] out;
    wire [15:0] pattern_out;
    assign cpu_dout = out;
	 
	pattern_matcher dut_match(
		.character_in (string),
        .pattern_in   (pattern),
        .wildcard     (wildcard),

        .outcome      (pattern_out)
	 );

    always @ (posedge clk) begin
        if (rst) begin
            string <= 0;
            pattern <= 0;
            wildcard <= 0;
            out <= 0; 
        end
        else begin
            // Access data buffer
            if (cpu_ain[2] == 0) begin
                if (cpu_wren) begin
                    case(cpu_ain[1:0])
								2'd3: wildcard[7:0] <= cpu_din[7:0];
                        2'd2: pattern[63:0]  <= cpu_din;
                        2'd1: string[63:0]   <= cpu_din;
                        2'd0: string[127:64] <= cpu_din;
                    endcase
                end
                else begin
                    case(cpu_ain[1:0])
                        2'd3: out <= {56'd0, wildcard[7:0]};
                        2'd2: out <= pattern[63:0];
                        2'd1: out <= string[127:64];
                        2'd0: out <= string[63:0];
                    endcase
                end
            end
            // Access results
            else begin
                    out[63:0] <= {48'd0, pattern_out};
            end
        end
    end
endmodule
   