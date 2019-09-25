`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:41:00 01/01/2008 
// Design Name: 
// Module Name:    ADD32 
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
module ADD32(A,B,C);
	input [31:0] A,B;
	output [31:0] C;
	
	assign C = A + B;


endmodule
