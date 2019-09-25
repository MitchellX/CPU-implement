`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:24 10/23/2015 
// Design Name: 
// Module Name:    MUX32_2_1 
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
module MUX32_2_1(
    input [31:0] A , B ,
	 input Sel ,
	 output [31:0] O
    );

    assign O = Sel ? B : A;

endmodule
