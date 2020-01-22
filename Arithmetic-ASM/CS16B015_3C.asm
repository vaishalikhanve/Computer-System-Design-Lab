@2 //array=10
D=A
@arr
M=D 

@10 //n=10
D=A
@n
M=D

@i //i=0
M=0

@zero //counter for zero count
M=0

@one  //counter for ones count
M=0

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@INIT
	D;JEQ
	
	@arr
	D=M
	@i
	A=D+M //index
	D=M   //data at index A in M
	
	@ZERO
	D,JEQ
	
	@one //if number==1 then increment one counter
	M=M+1
	
	@INC
	0;JMP
	
	
(INC)
	@i
	M=M+1
	@LOOP
	0;JMP
	
(ZERO)
	@zero   //if number==0 then increment zero counter
	M=M+1
	@INC
	0;JMP
  


(INIT)
	@i
	M=0
	@SORT
	0;JMP
	
(SORT)
	@i
	D=M
	@n
	D=D-M
	@END
	D;JEQ
	
	@zero
	D=M
	@ADDONE
	D;JEQ
	 @arr
	 D=M
	 @i
	 A=D+M
	 M=0
	 @zero
	 M=M-1
	 @INCREMENT
	 0;JMP
	 
	
(ADDONE)
	@one
	D=M
	@END
	D;JEQ
	@arr
	 D=M
	 @i
	 A=D+M
	 M=1
	 @one
	 M=M-1
	 @INCREMENT
	 0;JMP
	
(INCREMENT)
	@i
	M=M+1
	@SORT
	0;JMP

(END)
    @END
    0;JMP


