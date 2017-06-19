`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:06 06/17/2017 
// Design Name: 
// Module Name:    Display 
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
module Display(in,DE,an,out);

input [3:0] in;
input [3:0] DE;
output [3:0] an;
output [6:0] out;

assign out = (in == 4'b0000) ? 7'b1000000:
				 (in == 4'b0001) ? 7'b1111001:
				 (in == 4'b0010) ? 7'b0100100:
				 (in == 4'b0011) ? 7'b0110000:
				 (in == 4'b0100) ? 7'b0011001:
				 (in == 4'b0101) ? 7'b0010010:
				 (in == 4'b0110) ? 7'b0000010:
				 (in == 4'b0111) ? 7'b1111000:
				 (in == 4'b1000) ? 7'b0000000:
				 (in == 4'b1001) ? 7'b0010000:
				 7'b1111;
assign an = DE;

endmodule
