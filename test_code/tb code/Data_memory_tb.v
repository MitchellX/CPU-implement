`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:30:14 01/04/2012
// Design Name:   Data_memory
// Module Name:   E:/Digilent/Project_development/Genesys/SingleCycle_MIPS/Data_memory_tb.v
// Project Name:  SingleCycle_MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Data_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Data_memory_tb;

	// Inputs
	reg Clk;
	reg [31:0] DmemAddr;
	reg DmemWrite;
	reg [31:0] DmemWrData;

	// Outputs
	wire [31:0] DmemRdData;

	// Instantiate the Unit Under Test (UUT)
	Data_memory uut (
		.Clk(Clk), 
		.DmemAddr(DmemAddr), 
		.DmemRdData(DmemRdData), 
		.DmemWrite(DmemWrite), 
		.DmemWrData(DmemWrData)
	);

reg [7:0] index;
	initial begin
		// Initialize Inputs
		Clk = 0;
		DmemAddr = 0;
		DmemWrData = 0;
		DmemWrite = 1;
		//write data into memory
		for(index = 0;index<=7;index = index +1)
			begin
			#10;
			DmemAddr <= index ;
			DmemWrData <= index;
			end
		//read data from memory
		DmemWrite = 0;
		for(index = 0;index<=7;index = index +1)
			begin
			#10;
			DmemAddr <= index ;
			end				
	end
//Clock Generator	
always #2 Clk = !Clk;
      
endmodule

