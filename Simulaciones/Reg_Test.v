`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:02:56 06/09/2017
// Design Name:   MemoriaReg
// Module Name:   D:/Data/Proyecto4/Reg_Test.v
// Project Name:  Proyecto4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MemoriaReg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Reg_Test;

	// Inputs
	reg [31:0] DataIn;
	reg t_clk;

	// Outputs
	wire [31:0] DataOut;

	// Instantiate the Unit Under Test (UUT)
	MemoriaReg uut (
		.DataIn(DataIn), 
		.DataOut(DataOut), 
		.clk(t_clk)
	);
	
   always 
		begin 
		t_clk <= 1;
		#50;
		t_clk <= 0;
		#50;
		end

	initial begin
		// Initialize Inputs
		DataIn = 64;
		$monitor("DataOut=%d",DataOut);
		#100;
        
		DataIn = 128;
		$monitor("DataOut=%d",DataOut);
		#100;
		
		DataIn = 256;
		$monitor("DataOut=%d",DataOut);
		
	end
      
endmodule

