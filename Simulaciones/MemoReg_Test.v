`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:12:55 06/09/2017
// Design Name:   MemoriaDeco
// Module Name:   D:/Data/Proyecto4/MemoReg_Test.v
// Project Name:  Proyecto4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MemoriaDeco
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MemoReg_Test;

	// Inputs
	reg [31:0] addrA;
	reg [31:0] addrB;
	reg [31:0] addrWR;
	reg [31:0] write_data;
	reg memwrite;
	reg memread;
	reg t_clk;

	// Outputs
	wire [31:0] read_dataA;
	wire [31:0] read_dataB;

	// Instantiate the Unit Under Test (UUT)
	MemoriaDeco uut (
		.addrA(addrA), 
		.addrB(addrB), 
		.addrWR(addrWR), 
		.write_data(write_data), 
		.memwrite(memwrite), 
		.memread(memread), 
		.clk(t_clk), 
		.read_dataA(read_dataA), 
		.read_dataB(read_dataB)
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
		addrA = 0;
		addrB = 0;
		addrWR = 1;
		write_data = 64;
		memwrite = 1;
		memread = 0;
		
		#100
		addrA = 0;
		addrB = 0;
		addrWR = 2;
		write_data = 128;
		memwrite = 1;
		memread = 0;


		// Wait 100 ns for global reset to finish
		#100;
		addrA = 1;
		addrB = 2;
		addrWR = 0;
		write_data = 0;
		memwrite = 0;
		memread = 1;
		
		$monitor("Ra=%d,Rb=%d",read_dataA,read_dataB);
		

        
		  
		// Add stimulus here

	end
      
endmodule
