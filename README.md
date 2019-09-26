# CPU-implement
单周期CPU的Verilog实现
![](assignment.png)

# 总体要求
<br>设计以下单元：</br>  
多路选择器、  
扩展器、  
ALU加法器、  
数据存储器、  
指令存储器、  
取指部件与控制器、  
寄存器与寄存器组、  
单周期CPU的封装设计  
<br>

设计的MIPS单周期CPU结构至少可实现以下8条指令：  
add rd,rt,rs  
sub rd,rt,rs  
addi rt,rs,imm16  
ori  rt,rs,imm16  
lw  rt,rs,imm16  
sw  rt,rs,imm16  
beq rs,rt,imm16  
j   target  
