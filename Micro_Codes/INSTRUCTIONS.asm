
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


.MODEL SMALL
.STACK 64
.DATA
STRING1 DB "ENDER THE INSTRUCTION : $"  
NEWLINE DB 10,13,'$'

INDATA LABEL BYTE
SIZE DB 40
ACTUALSIZE DB ?
INS DB ,30 DUP (?)


VALUE DB ? 

AL_REG LABEL BYTE 
AX_REG DB 0  ;;AX 
AH_REG LABEL BYTE 
       DB 0

BL_REG LABEL BYTE 
BX_REG DB 0  ;;BX 
BH_REG LABEL BYTE
       DB 0 
           

CL_REG LABEL BYTE 
CX_REG DB 0  ;;CX 
CH_REG LABEL BYTE
       DB 0
      
DL_REG LABEL BYTE 
DX_REG DB 0  ;;DX 
DH_REG LABEL BYTE
       DB 0
       
       
        
BP_REG DW 0  ;;BP
 
DI_REG DW 0  ;;DI
     
      
SI_REG DW 0 ;;SI
    
SP_REG DW 0 ;;SP           


    
CARRY DB 0 ;;; CARRY       

QUANTITY DB 0 ;;; QUANTITY USING IN ROTATION

  
                  
.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    
MYLOOP:
    MOV DX,OFFSET STRING1
    MOV AH,9
    INT 21H
    

           
    MOV DX,OFFSET INDATA  
    MOV AH,0AH
    INT 21H 
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    
    
    
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK AX
    CMP  INS+4,'A'
    JNE SECOND1 
    
    CMP  INS+5,'H'
    JNE LOWER1
    MOV DI,OFFSET AX_REG+1
    JMP FIND1
    
    LOWER1:CMP  INS+5,'L'
    JNE LOOP1 
    MOV DI,OFFSET AX_REG   
    JMP FIND1
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK BX   
    SECOND1: CMP  INS+4,'B'
    JNE SECOND2 
    
    CMP  INS+5,'H'
    JNE LOWER2
    MOV DI,OFFSET BX_REG+1
    JMP FIND1
    
    LOWER2:CMP  INS+5,'L'
    JNE LOOP1 
    MOV DI,OFFSET BX_REG
    
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK CX
    SECOND2: CMP  INS+4,'C'
    JNE SECOND3 
    
    CMP  INS+5,'H'
    JNE LOWER3
    MOV DI,OFFSET CX_REG+1
    JMP FIND1
    
    LOWER3:CMP  INS+5,'L'
    JNE LOOP1 
    MOV DI,OFFSET CX_REG
    
    
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK DX
    SECOND3: CMP  INS+4,'D'
    JNE LAB1 
    
    CMP  INS+5,'H'
    JNE LOWER4
    MOV DI,OFFSET DX_REG+1
    JMP FIND1
    
    LOWER4:CMP  INS+5,'L'
    JNE LOOP1 
    MOV DI,OFFSET DX_REG 
                          
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;STEP 2
    ;;;;;;;;;;;FIND THE VALUE
    FIND1:MOV AL,INS+7
    SUB AL,48D  
    MOV BL,10H
    MUL BL
    MOV VALUE,AL
                 
    MOV AL,INS+8
    SUB AL,48D
    ADD VALUE,AL
             
             
             
             
             
             
    ;;;;;;;;;;;STEP 3 EXCUTE THE INSTRUCTION
    ;;;;;;;;;;; MOV INSTRUCTIONS   
    CMP INS,'M'
    JNE ADD1
    CMP INS+1,'O'
    JNE ADD1
    CMP INS+2,'V'
    JNE ADD1
    ;;;;;;;;;; IF IT IS MOV THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
    

   
    ;;;;;;;;;PUT THE VALUE INTO THE REGISTER 
    MOV AL,VALUE
    MOV [DI],AL
    JMP LOOP1
                 
    ADD1:;;;;;;;;;;; ADD INSTRUCTIONS   
    CMP INS,'A'
    JNE ROR1
    CMP INS+1,'D'
    JNE ROR1
    CMP INS+2,'D'
    JNE ROR1
    
    
     ;;;;;;;;;; IF IT IS ADD  ;;;;;;;;;;;;;;;;;;;;;;;;;

    ;;;;;;;;;PUT THE VALUE INTO THE REGISTER 
    MOV AL,VALUE
    ADD [DI],AL
    JMP LOOP1
    
    
    SUB1:;;;;;;;;;;; SUB INSTRUCTIONS
    
    
    
    
    
    
    ADC1:;;;;;;;;;;; ADC INSTRUCTIONS
    
    
             
             
    ;&&&&&&&&&&&&&&&&&&    KARIM   &&&&&&&&&&&&&&&&&&&&&&&&&&&&
    
    
    ROR1:                               ;;;;;;;;;;; ROR INSTRUCTIONS   
         CMP INS,'R'
         JNE ROL1
         CMP INS+1,'O'
         JNE ROL1
         CMP INS+2,'R'
         JNE ROL1
    ;;;;;;;;;; IF IT IS ROR THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         MOV AH,[DI]
         MOV CL,AL      ;;;;I FOUND THAT AL HAS THE QUANTITY STILL NOW
         ROR AH,CL 
         MOV AL_REG , AH
         JMP LOOP1
               
 
                 
    ROL1:                               ;;;;;;;;;;; ROL INSTRUCTIONS   
         CMP INS,'R'
         JNE RCR1
         CMP INS+1,'O'
         JNE RCR1
         CMP INS+2,'L'
         JNE RCR1
    ;;;;;;;;;; IF IT IS ROL THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         MOV AH,[DI]
         MOV CL,AL      ;;;;I FOUND THAT AL HAS THE QUANTITY STILL NOW
         ROL AH,CL 
         MOV AL_REG , AH
         JMP LOOP1       
        
    RCR1:                               ;;;;;;;;;;; RCR INSTRUCTIONS 
         CMP INS,'R'
         JNE RCL1
         CMP INS+1,'C'
         JNE RCL1
         CMP INS+2,'R'
         JNE RCL1
    ;;;;;;;;;; IF IT IS RCR THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         MOV AH,[DI]
         MOV CL,AL      ;;;;I FOUND THAT AL HAS THE QUANTITY STILL NOW 
         STC            ; I DON'T KNOW HOW I WILL KNOW THE CARRY OR IT WILL BE 1 ALL THE TIME IN RCR AND RCL ???????
         RCR AH,CL 
         MOV AL_REG , AH
         JMP LOOP1       
    
    
    
    RCL1:                               ;;;;;;;;;;; RCL INSTRUCTIONS
         CMP INS,'R'
         JNE SHL1
         CMP INS+1,'C'
         JNE SHL1
         CMP INS+2,'L'
         JNE SHL1
    ;;;;;;;;;; IF IT IS RCL THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         MOV AH,[DI]
         MOV CL,AL      ;;;;I FOUND THAT AL HAS THE QUANTITY STILL NOW
         STC            ; I DON'T KNOW HOW I WILL KNOW THE CARRY OR IT WILL BE 1 ALL THE TIME IN RCR AND RCL ???????
         RCL AH,CL 
         MOV AL_REG , AH
         JMP LOOP1       
   
    
    
    
    ;&&&&&&&&&&&&&&&&&& END OF KARIM   &&&&&&&&&&&&&&&&&&&&&&&&&&&&
    
    
    SHL1:;;;;;;;;;;; SHL INSTRUCTIONS
    
    
    
    
    SHR1:;;;;;;;;;;; SHR INSTRUCTIONS   
    
                          
                          
    NOP1:;;;;;;;;;;;; NOP INSTRUCTIONS
    
    
    
    
    CLC1:;;;;;;;;;;;;;;; CLC INSTRUCTIONS
    
    
    
    INC1:;;;;;;;;;;; INC INSTRUCTION
    
    
    
    
    DEC1:;;;;;;;;;;;;; DEC INSTRUCTION
    
    
    
    
    AND1: ;;;;;;;;;;;;;;; AND INSTRUCTION
    
    
    
    XOR1:;;;;;;;;;;;;;;;; XOR INSTRUCTION
    
    
    
    LOOP1:JMP MYLOOP
   LAB1: HLT
    MAIN ENDP
END MAIN

ret




