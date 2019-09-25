`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:02:54 01/01/2008 
// Design Name: 
// Module Name:    Control_Unit 
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
module Control_Unit(
	
		input [5:0] op, func,
		output RegDst, RegWrite, AlUSrc,
		output MemWrite, memRead, MemtoReg,
		output Branch,
		output [2:0] ALU_op
    );
	
		wire [1:0] ALUctr;
		
		Control U0( .op(op),
						.RegWr(RegWr),
						.ALUSrc(ALUSrc),
						.MemWr(MemWr),
						.MemRead(MeMRead),
						.MemtoReg(MemtoReg),
						.Branch(Branch),
						.Jump(Jump));
		U1(.func(func), .ALUctr(ALUctr), .ALUop(ALUop));

endmodule
