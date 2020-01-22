@R0 
D=M  

@1
D=D&A

@ODD     
D;JGT 


@R1  //RAM[1]=EVEN location 
M=0 
@END
0;JMP  

(ODD)
	@R2   //RAM[2]=ODD location
	M=1 
	@END
	0;JMP    

(END)
    @END
    0;JMP


