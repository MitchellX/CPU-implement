`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:44:55 01/01/2008 
// Design Name: 
// Module Name:    Control 
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
module Control(
		input [5:0] op,
		output RegWr, ALUSrc, RegDst,
		output MemWr, MemRead, MemtoReg,
		output Branch, Jump,
		output Extop,
		output [2:0] ALUop
    );
		
		wire Rt = ~|op;
		wire lw = op[5] & ~op[4] & ~op[3] & ~op[2] & op[1] & op[0];
		wire sw = op[5] &~op[4] & op[3] & ~op[2] & op[1] & op[0];
		wire beq = ~op[5] &~op[4] & ~op[3] & op[2] & ~op[1] & ~op[0];
		wire ori = ~op[5] &~op[4] & op[3] & op[2] & ~op[1] & op[0];
		wire addiu = ~op[5] &~op[4] & op[3] & ~op[2] & ~op[1] & op[0];
		wire jump = ~op[5] &~op[4] & ~op[3] & ~op[2] & op[1] & ~op[0];
			
		assign RegDst = Rt;
		assign RegWr = Rt|lw|ori|addiu;
		assign ALUSrc = lw|sw|ori|addiu;
		assign MemWr = sw;
		assign MemRead = lw;
		assign MemtoReg = lw;
		assign Branch = beq;
		assign Jump = jump;
		
		assign ALUop[2] = beq;
		assign ALUop[1] = ori;
		assign ALUop[0] = Rt;


endmodule
