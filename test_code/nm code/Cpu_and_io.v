`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:31 12/19/2017 
// Design Name: 
// Module Name:    Computer_and_io 
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
module Cpu_and_io(
    input Reset , Clock , 
	 
    //output [31:0] IO_addr , IO_Result,	 
		 
		 
	 //以下用于IO输入输出
	 input BtnIn,          //单步脉冲输入
	 output [7:0] seg,      //数码管7段
	 output [5:0] AN_SEL ,
    output LED0 , LED1  	
    );
	 
	 reg  [31:0] clockdiv = 0;
	 wire  BtnOut; 
	 wire ClkIn;
	 
 
	 wire [31:0] PC;
	 wire [31:0] AluResult;
	 
	 //单步执行时钟控制
	 BTN_Anti_Jitter anti_jitter( clockdiv[12] , BtnIn , BtnOut ); //按钮去抖动
	
   // assign BTN_Out = BTN_IN;
	// assign IO_addr = addr;
	// assign IO_Result = Result;
	
	assign LED0 = BtnIn;
	assign LED1 = Reset;
	 always @ (posedge Clock)  clockdiv <= clockdiv + 1;
	 
	 //数码管显示
	 wire [23:0] disp;
	 assign disp = {PC[7:0],AluResult[15:0]};
	 Hex7seg_decode hex7(disp , clockdiv[18:16] , seg , AN_SEL);
	 
	 assign ClkIn=BtnOut;
	 
// Instantiate the module
Mips_cpu CPU (
    .ClkIn(ClkIn), 
    .Rst(Reset), 
	 .PC(PC),
    .AluResult(AluResult)
    );

endmodule
