`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:26 06/08/2017 
// Design Name: 
// Module Name:    ZeroExtender 
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
module ZeroExtender(
	input[15:0] extend,
	output[31:0] extended
);



always @( extend ) begin
    extended[31:0] <= {16'h0000, extend[15:0]};
end

endmodule
