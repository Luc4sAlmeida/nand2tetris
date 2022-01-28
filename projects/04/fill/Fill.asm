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

(LOOP)

    @SCREEN
    D=A

    @screenAddr
    M=D

    @i
    M=0

    @8192
    M=A
    D=M

    @max
    M=D

    @KBD
    D=M;

    @DRAW
    D; JGT

    @CLEAR
    0; JMP

(DRAW)
    @i
    D=M;

    @screenAddr
    A=M+D;
    M=-1

    @i
    M=D+1

    @max
    M=M-1
    D=M;

    @DRAW
    D; JGT

    @LOOP
    0; JMP

(CLEAR)
    @i
    D=M;

    @screenAddr
    A=M+D;
    M=0

    @i
    M=D+1

    @max
    M=M-1
    D=M;

    @CLEAR
    D; JGT

    @LOOP
    0; JMP


