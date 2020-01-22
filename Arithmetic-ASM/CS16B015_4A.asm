@MOD
0;JMP


(MOD)
	@R1
	D=M
	
	@R0
	M=M-D
	D=M
	@CHECK
	D;JLT
	@MOD
	0;JMP
	


(CHECK)
	@R0
	D=M
	@R1
	D=D+M
	@R2
	M=D
	@END
	0;JMP
(END)
	@END
	0;JMP