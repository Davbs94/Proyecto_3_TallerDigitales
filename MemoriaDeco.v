`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:16 06/05/2017 
// Design Name: 
// Module Name:    MemoriaDeco 
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
module MemoriaDeco (
input wire [31:0] addrA,          // Memory Address
input wire [31:0] addrB,          // Memory Address
input wire [31:0] addrWR,          // Memory Address
input wire [31:0] write_data,    // Memory Address Contents
input wire memwrite, memread,
input wire clk,                  // All synchronous elements, including memories, should have a clock signal
output reg [31:0] read_dataA,      // Output of Memory Address Contents
output reg [31:0] read_dataB      // Output of Memory Address Contents
);

reg [31:0] MEMO[0:31];  // 256 words of 32-bit memory

integer i;

initial begin
  for (i = 0; i < 32; i = i + 1) begin
    MEMO[i] = i;
  end
end

// Using @(addr) will lead to unexpected behavior as memories are synchronous elements like registers
always @(posedge clk) begin
  // Use memread to indicate a valid address is on the line and read the memory into a register at that address when memread is asserted
  if (memread == 1'b1) begin
    read_dataA <= MEMO[addrA];
	 read_dataB <= MEMO[addrB];	 
  end
end

always @(negedge clk) begin
	if (memwrite == 1'b1) begin
		MEMO[addrWR] <= write_data;
	end
end

endmodule
