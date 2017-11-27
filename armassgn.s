PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
ENTRY 
__main  FUNCTION
 
VLDR.F32 S0, =1 
 
VLDR.F32 S1, =3 
VLDR.F32 S2, =1 
VLDR.F32 S3, =1 
MOV R4, #3      
SUB R5, R4, #1  
VLDR.F32 S6, =1 
VLDR.F32 S7, =0 
VLDR.F32 S8, =0  
 
loop CMPNE R5, #1         
VMUL.F32 S6, S6, S1 
 
VMUL.F32  S2, S2, S3
VADD.F32  S3, S3, S0
 
VDIV.F32 S7, S6, S2
VADD.F32 S8, S8, S7
SUB R5, R5, #1
BNE loop
 
 
    VADD.F32 S9, S8, S0 
 
 
stop B stop 
     ENDFUNC
     END