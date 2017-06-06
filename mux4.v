`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:53:48 05/30/2017 
// Design Name: 
// Module Name:    mux4 
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
module mux3( select,a,b,c,d, q );

input[1:0] select;
input[31:0] a,b,c,d;
output reg q;

wire[1:0] select;
wire[31:0] a,b,c,d;

always @( select or d )
begin
   if( select == 0)
      q = a;

   if( select == 1)
      q = b;

   if( select == 2)
      q = c;

   if( select == 3)
      q = d;
end

endmodule
