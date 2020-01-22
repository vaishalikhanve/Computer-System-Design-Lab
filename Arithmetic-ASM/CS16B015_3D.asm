@i
M=0

@j
M=0

@3  //n
D=A
@n
M=D

@3
D=A
@m
M=D

@0		
D=M
@arrA
M=D

@1		
D=M
@arrB
M=D

@2		
D=M
@arrC
M=D


(FORLOOPI)
	@i
	D=M
	@n		//Value of n
	D=D-M
	@END
	D;JGE
	
	@j
	M=0
	
	(FORLOOPJ)
		@j
		D=M
		@m		//Value of m
		D=D-M
		@ENDJ
		D;JGE
		
		@arrA
		A=M
		D=M 
		
		@arrB
		A=M
		D=D+M
		
		@arrC
		A=M
		A=A+i
		A=A+j
		M=D
		
		@arrA
		M=M+1
		@arrB
		M=M+1
		
		
		@j
		M=M+1
		
		@FORLOOPJ
		0;JMP
	
	(ENDJ)
		@i
		M=M+1
		@FORLOOPI
		0;JMP

(END)
	@END
	0;JMP