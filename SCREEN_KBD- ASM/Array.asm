@16384
D=A
@n
M=D

@i
M=0

@LOOP
0;JMP

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@END
	D;JEQ
	@LOOP
	0;JMP

(END)
	@END
	0;JMP