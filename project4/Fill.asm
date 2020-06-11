// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
// addr= SCREEN

// if kbd not ==0 then JNE
// if kbd ==0 the jeq

// loop till addr at last pixel of memory map.
// RAM[aar]=-1
// addr=addr+1

@8192
D=A;
@i
M=D;
@SCREEN
D=A
@addr
M=D
@KBD
D=M
@WHITE
D;JEQ
@BLACK
D;JNE
(WHITE)
@addr
A=M
M=0
@addr
M=M+1
@i
M=M-1;
D=M;
@END
D;JEQ
@8
0;JMP
(BLACK)
@addr
A=M
M=-1
@addr
M=M+1
@i
M=M-1;
D=M;
@END
D;JEQ
@8
0;JMP
(END)
@0
0;JMP


