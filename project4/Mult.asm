// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@1
D=M
@end
D;JEQ
@0
D=M
@end
D;JEQ
@i
M=1
@2
M=D
(LOOP)
@i
M=M+1
D=M
@1
D=D-M
@END
D-M;JGT
@0
D=M
@2
M=M+D
@LOOP
0;JMP

(END)
0;JMP
(end)
@2
M=0
@end
0;JMP