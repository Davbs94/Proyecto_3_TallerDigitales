`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:39 06/09/2017 
// Design Name: 
// Module Name:    Sumador 
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
module Sumador(
	input [31:0] SumandoA,
	input [31:0] SumandoB,
	input Acarreo,
	output reg [31:0] Resultado,
	output reg SignoMasSignificativo
    );


	reg [32:0] res;
	
	always @(SumandoA,SumandoB,Acarreo)
		res = SumandoA + SumandoB + Acarreo;
	
	assign SignoMasSignificativo=res[32];
	assign Resultado = res[31:0];



endmodule
