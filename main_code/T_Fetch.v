`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:48:54 01/01/2008
// Design Name:   Fetch
// Module Name:   E:/Second_section/T_Fetch.v
// Project Name:  Second_section
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Fetch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T_Fetch;

	// Inputs
	reg B;
	reg Z;
	reg Reset;
	reg Clock;
	reg [31:0] B_addr;

	// Outputs
	wire [31:0] addr;

	// Instantiate the Unit Under Test (UUT)
	Fetch uut (
		.B(B), 
		.Z(Z), 
		.Reset(Reset), 
		.Clock(Clock), 
		.B_addr(B_addr), 
		.addr(addr)
	);

	initial begin
		// Initialize Inputs
		B = 0;
		Z = 0;
		Reset = 0;
		Clock = 0;
		B_addr = 0;

		// Wait 100 ns for global reset to finish
		#200;
		Reset=1;
        
		// Add stimulus here
		
		#600;
		B=1;Z=1;
		B_addr=32'h00000002;
		
		#200;
		B=0;Z=0;
		

	end
	
	always #100 Clock=~Clock;
      
endmodule

