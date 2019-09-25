`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:09:36 11/12/2015 
// Design Name: 
// Module Name:    DATA_RAM 
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
module INST_ROM(
		input [31:0] addr,
		output[31:0] Inst
    );

   reg [31:0] ram [0:31];
	
	assign ram[5'h00] = 32'h00000000;
//	assign ram[5'h00] = 32'h3c011234;	//lui R1,0x1234
	assign ram[5'h01] = 32'h3c025678;	//lui R2,0x5678
	
	
	assign Inst = ram[addr[6:2]];
	
endmodule
