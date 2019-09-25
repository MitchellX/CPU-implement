`timescale 1ns / 1ps

`define ANDCTL 4'b0000
`define ORCTL  4'b0001
`define ADDCTL 4'b0010
`define SUBCTL 4'b0110

`define SLTCTL 4'b0111

`define SLLCTL 4'b1000
`define SRLCTL	4'b1001
`define NORCLT	4'b1100
`define XORCLT	4'b1101
`define NOTCARECTL 4'b0000
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:48:38 01/04/2012
// Design Name:   ALU
// Module Name:   E:/Digilent/Project_development/Genesys/SingleCycle_MIPS/ALU_tb.v
// Project Name:  SingleCycle_MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:

// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [31:0] SrcA;
	reg [31:0] SrcB;
	reg [3:0] ALUCtr;

	// Outputs
	wire Zero;
	wire [31:0] ALURes;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.SrcA(SrcA), 
		.SrcB(SrcB), 
		.ALUCtr(ALUCtr), 
		.Zero(Zero), 
		.ALURes(ALURes)
	);

	initial begin
		// AND
		SrcA = 32'hf0f0ffff;
		SrcB = 32'h0000f0f0;
		ALUCtr = `ANDCTL;		
		//OR
		#10;
		ALUCtr = `ADDCTL;
		//Add
		#10;
		ALUCtr = `SUBCTL;
		//Subtract
		#10;
		ALUCtr = `ORCTL;
		#10;
		ALUCtr = `ANDCTL;		
	  
	  //Set on Less than
		#10;
		ALUCtr = `SLTCTL;		
		//Others situation
	  //Set on Less than
		
		#10;
		ALUCtr = `SLTCTL;
		//Others situation
		SrcA = 32'h00000fff;
		SrcB = 32'h0000f0f0;
		
		#10;
		ALUCtr = 4'b1111;
        
		// Add stimulus here

	end
      
endmodule

