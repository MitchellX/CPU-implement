`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:34:55 01/01/2008 
// Design Name: 
// Module Name:    Fetch 
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
module Fetch(
    input B,
    input Z,
    input Reset,
    input Clock,
    input [31:0] B_addr,
    output [31:0] addr
    );
	 reg [31:0] PC;
	 wire [31:0] sum0, B_addr1, sum1, next_pc;
	 wire sel = Z & B;
	 
	 Left_2_Shifter U0(B_addr, B_addr1);
	 
	 ADD32 U1(PC,4, sum0);
	 ADD32 U2(sum0, B_addr1, sum1);
	 MUX32_2_1 M1(sum0, sum1, sel, next_pc);
	 
	 assign addr = PC;
	 
	 always @ (posedge Clock or negedge Reset) begin
		if (Reset == 0) PC = 0;
		else            PC = next_pc;
	 end
	 
endmodule
	
	

