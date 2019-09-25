`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:58:49 12/19/2017
// Design Name:   Mips_cpu
// Module Name:   D:/computer_org_lab/lab4test/Mips_cpu_tb.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mips_cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mips_cpu_tb;

	// Inputs
	reg ClkIn;
	reg Rst;

	// Outputs
	wire [31:0] PC;
	wire [31:0] AluResult;
   wire [31:0] Instruction;
	wire [29:0] PCBranch;
	wire [31:0] RegARdData;
	// Instantiate the Unit Under Test (UUT)
	Mips_cpu uut (
		.ClkIn(ClkIn), 
		.Rst(Rst), 
		.PC(PC), 
		.Instruction(Instruction),
		.AluResult(AluResult)
		
	);

	initial begin
		// Initialize Inputs
		ClkIn = 0;
		Rst = 0;

		#20
		Rst = 1;
		// Wait 100 ns for global Rst to finish
		#80;
       Rst = 0; 
		  
		// Add stimulus here

		#100000
		Rst=1;
	end
	always #5 ClkIn = !ClkIn;
endmodule

