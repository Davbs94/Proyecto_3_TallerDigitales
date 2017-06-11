`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:16:56 06/10/2017
// Design Name:   Control
// Module Name:   D:/Data/Proyecto4/Control_Test.v
// Project Name:  Proyecto4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Control_Test;

	// Inputs
	reg clk;
	reg reset;
	reg [5:0] OPCODE;

	// Outputs
	wire PC_LD;
	wire SEL_DIR;
	wire MEM_WD;
	wire MEM_RD;
	wire IR_W;
	wire SEL_DEST;
	wire SEL_DAT;
	wire REG_RD;
	wire REG_WR;
	wire [1:0] SEL_OPERA;
	wire SEL_OPERAB;
	wire [1:0] SEL_PC;
	wire OP_ALU;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.clk(clk), 
		.reset(reset), 
		.OPCODE(OPCODE), 
		.PC_LD(PC_LD), 
		.SEL_DIR(SEL_DIR), 
		.MEM_WD(MEM_WD), 
		.MEM_RD(MEM_RD), 
		.IR_W(IR_W), 
		.SEL_DEST(SEL_DEST), 
		.SEL_DAT(SEL_DAT), 
		.REG_RD(REG_RD), 
		.REG_WR(REG_WR), 
		.SEL_OPERA(SEL_OPERA), 
		.SEL_OPERAB(SEL_OPERAB), 
		.SEL_PC(SEL_PC), 
		.OP_ALU(OP_ALU)
	);
   
	always 
		begin 
		clk <= 1;
		#50;
		clk <= 0;
		#50;
		end
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		OPCODE = 0;
		#100
		reset = 0;
		OPCODE = 20;
		

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

