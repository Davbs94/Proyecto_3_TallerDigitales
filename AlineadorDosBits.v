`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:57:42 06/08/2017 
// Design Name: 
// Module Name:    AlineadorDosBits 
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
module AlineadorDosBits(
	input wire [31:0] EntraceData,
	output reg [31:0] OutputData
    );

	initial
	begin
		OutputData = EntraceData<<2;
	end

endmodule
