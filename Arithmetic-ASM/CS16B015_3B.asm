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

@even //number of evens
M=0

@odd //number of odds
M=0

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@STORE
	D;JEQ
	
	@arr
	D=M
	@i
	A=D+M //index
	D=M   //data at index A in M
	
	@1
	D=D&A
	@ODD
	D,JGT
	
	@even //if number is even then increment even counter
	M=M+1
	
	@INC
	0;JMP
	
	
(INC)
	@i
	M=M+1
	@LOOP
	0;JMP
	
(ODD)
	@odd   //if odd then increment odd counter
	M=M+1
	@INC
	0;JMP
  



(STORE)
	@even  //store number of even numbers at position RAM[0]
	D=M
	@R0
	M=D
	
	@odd  //store number of odd numbers at position RAM[1]
	D=M
	@R1
	M=D
	
	@END
	0;JMP
	
(END)
    @END
    0;JMP


