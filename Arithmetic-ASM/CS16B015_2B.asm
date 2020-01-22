@R0 
D=M  

@R1
D=D-M

@GREATER     
D;JGT 

@EQUAL
D;JEQ

@LESSER
D;JLT

@END
0;JMP
 

(GREATER)
	@R2   
	M=1 
	@END
	0;JMP  
	
(EQUAL)
	@R2   
	M=0 
	@END
	0;JMP
	
(LESSER)
	@2
	D=A
	@R2  
	M=D 
	@END
	0;JMP 
	
	
(END)
    @END
    0;JMP


