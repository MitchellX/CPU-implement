`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:10:00 01/14/2013
// Design Name:   Ctr
// Module Name:   D:/hc_work/Anvyl/Anvyl_lab/Anvyl_COD/labs/lab2/Ctr_tb.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ctr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ctr_tb;

	// Inputs
	reg [5:0] OpCode;
	reg [5:0] Funct;

	// Outputs
	wire RegDst;
	wire ALUSrc;
	wire MemToReg;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire [3:0] ALUControl;
	wire Jump;

	// Instantiate the Unit Under Test (UUT)
	Ctr uut (
		.OpCode(OpCode), 
		.Funct(Funct),
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemToReg(MemToReg), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUControl(ALUControl), 
		.Jump(Jump)
	);

	initial begin
		// R-type Add
		OpCode = 6'b000000;
		Funct = 6'b100000;
		//R-type Subtract
		#10;
		OpCode = 6'b000000;
		Funct = 6'b100010;
		//LW
		#10;
		OpCode = 6'b100011;
		Funct = 6'bxxxxxx;		
		//SW
		#10;
		OpCode = 6'b101011;
		Funct = 6'bxxxxxx;
		//BEQ
		#10;
		OpCode = 6'b000100;
		//Jump
		#10;
		OpCode = 6'b000010;
        
		// Add stimulus here

	end
      
endmodule

