// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


// for(int i - 1; i <= R0; i++){
//    R2 = R1 + R2}
       @i 
       //memory lovation
       M=0   
       // let i = 0

       @result 
       // refers to another location
       M=0

//LOOP

(LOOP)
        @i
        D=M 
		// D = i;
        @R1
        D=D-M 
		//D = i - R1;
        @END
        D;JEQ 
		// if(i -100)> 0 goto  END;


        @result
        D=M 
		// D = i
        @R0
        D=D+M
        @result
        M=D 
		// result = result + b;

        @i
        M=M+1 
		// i = i+ 1;
        @LOOP
        0;JMP    
		// goto LOOP

(END)
        @result
        D=M
        @R2
        M=D 
		//R2 = result;

        @END
        0;JMP 