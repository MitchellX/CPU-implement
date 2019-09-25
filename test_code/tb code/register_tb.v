`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:03:52 04/18/2012
// Design Name:   register
// Module Name:   /home/Hawk/disk/bee4_ddr3/ttp/lab03/register_tb.v
// Project Name:  lab03
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_tb;
	// Inputs
	reg Clk;
	reg [4:0] RegARdAddr;
	reg [4:0] RegBRdAddr;
	reg [4:0] RegWrAddr;
	reg [31:0] RegWrData;
	reg RegWrite;

	// Outputs
	wire [31:0] RegARdData;
	wire [31:0] RegBRdData;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.Clk(Clk), 
		.RegARdAddr(RegARdAddr), 
		.RegBRdAddr(RegBRdAddr), 
		.RegWrAddr(RegWrAddr), 
		.RegWrData(RegWrData), 
		.RegWrite(RegWrite), 
		.RegARdData(RegARdData), 
		.RegBRdData(RegBRdData)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		RegARdAddr = 0;
		RegBRdAddr = 0;
		RegWrAddr = 0;
		RegWrData = 0;
		RegWrite = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

