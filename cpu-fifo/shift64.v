`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:05:07 02/19/2022 
// Design Name: 
// Module Name:    shift64 
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
module shift64(
    input signed [63:0] A,
    input [5:0] V,
	 input [1:0] M,
    output [63:0] S
    );

	reg [63:0] out;
	assign S = out;
	
	always @(*)
	begin
		case (M)
			// Logical Left Shift
			2'b00:	out = A << V;
			// Logical Right Shift
			2'b01:	out = A >> V;
			// Arithmetic Left Shift (same as normal)
			2'b10:	out = A << V;
			// Arithmetic Right Shift
			2'b11: 	out = A >>> V;
		endcase
	end

endmodule
