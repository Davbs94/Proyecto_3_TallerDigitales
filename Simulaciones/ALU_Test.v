`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:16:19 06/09/2017
// Design Name:   alu
// Module Name:   D:/Data/Proyecto4/ALU_Test.v
// Project Name:  Proyecto4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Test;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [3:0] ALUop;
	reg cn;
	reg [3:0] shamt;

	// Outputs
	wire zero;
	wire overflow;
	wire [31:0] r;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.ALUop(ALUop), 
		.cn(cn), 
		.shamt(shamt), 
		.zero(zero), 
		.overflow(overflow), 
		.r(r)
	);

	initial begin
		// Initialize Inputs
		a = 50;
		
		b = 40;
		ALUop = 4'b0001;
		cn = 0;
		shamt = 0;
		$monitor("R=%d,A=%d,B=%d\n",r,a,b);

		// Wait 100 ns for global reset to finish
		#100;
		a = 100;
		
		b = 50;
		ALUop = 4'b0010;
		cn = 0;
		shamt = 0;
		$monitor("R=%d,A=%d,B=%d\n",r,a,b);
		
		#100;
		a = 3;
		
		b = 0;
		ALUop = 4'b0011;
		cn = 0;
		shamt = 0;
		$monitor("R=%d,A=%d,B=%d\n",r,a,b);
		
		#100;
		

        
		// Add stimulus here

	end

endmodule

