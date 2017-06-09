`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:09:35 06/09/2017 
// Design Name: 
// Module Name:    MemoriaReg 
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
module MemoriaReg(
	input wire [31:0] DataIn,          // Memory Address
	input reg [31:0] DataOut,
	input wire clk
);

reg [31:0] MEMO;

// Using @(addr) will lead to unexpected behavior as memories are synchronous elements like registers
always @(posedge clk) begin
	 DataOut <= MEMO;
	 MEMO <= DataIn;
end
endmodule
