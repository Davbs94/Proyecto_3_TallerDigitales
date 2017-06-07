`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:14 06/06/2017 
// Design Name: 
// Module Name:    SignExtender 
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
module SignExtender(
	extend,clk,extended
);

input[15:0] extend;
input clk;
output[31:0] extended;


always @( posedge clk ) begin
    extended[31:0] <= { {16{extend[15]}}, extend[15:0] };
end

endmodule
