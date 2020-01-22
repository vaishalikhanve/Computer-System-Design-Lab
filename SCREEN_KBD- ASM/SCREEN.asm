@SCREEN
D=A
@loc
M=D

@256 //256 columns of alternate 21845 and 43690
D=A
@n
M=D

@32  //32 columns of each 16 bits = 512 bits
D=A
@m
M=D

@21845  //white 0101010101010101
D=A
@white
M=D


@43690 //black 1010101010101010
D=A
@black
M=D

@i
M=0

@flag
M=0

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@END
	D;JGT
	
	@k
	M=0
	
	@flag
	D=M
	@ZEROBIT
	D;JEQ
	
	@flag
	M=0
	@COL
	0;JMP
	
	(ZEROBIT)
		@flag
		M=1
		@COL
		0;JMP
	
	(COL)
		@k
		D=M
		@m
		D=D-M
		@INCLOOP
		D;JEQ
	@flag
	D=M
	@BLACK
	D;JEQ
		
	(WHITE)
		@white
		D=M
		@loc
		A=M
		M=D
		@INC
		0;JMP
	
	(BLACK)
		@black
		D=M
		@loc
		A=M
		M=D
	
	(INC)
		@k
		M=M+1
		@1
		D=A
		@loc
		M=D+M
		@INT
		0;JMP
		
	(INCLOOP)
		@i
		M=M+1
		@LOOP
		0;JMP
	
(END)
	@END
	0;JMP
