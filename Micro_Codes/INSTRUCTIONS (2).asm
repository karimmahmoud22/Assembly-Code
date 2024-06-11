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
INS DB ,40 DUP (?)


VALUE DW ? 

AL_REG LABEL BYTE 
AX_REG DW 0  ;;AX 
AH_REG LABEL BYTE 
       DB 0

BL_REG LABEL BYTE 
BX_REG DW 0  ;;BX 
BH_REG LABEL BYTE
       DB 0 
           

CL_REG LABEL BYTE 
CX_REG DW 0  ;;CX 
CH_REG LABEL BYTE
       DB 0
      
DL_REG LABEL BYTE 
DX_REG DW 0  ;;DX 
DH_REG LABEL BYTE
       DB 0
       
       
        
BP_REG DW 0  ;;BP
 
DI_REG DW 0  ;;DI
     
      
SI_REG DW 0 ;;SI
    
SP_REG DW 0 ;;SP           

MEMORY DB 16 DUP (0)
    
CARRY DB 0 ;;; CARRY 
      
DES_FLAG DB 0
SOURCE_FLAG DB 0

FLAGS_REG DW 0
  
EIGHT_OR_SIXTEEN_BITS DB 7      ;KARIM      7==>8BITS ;; 17 ==> 16BITS

TEMP1 DB 0

                  
.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    
    MYLOOP:
    MOV EIGHT_OR_SIXTEEN_BITS,7
    MOV DX,OFFSET STRING1
    MOV AH,9
    INT 21H
    

           
    MOV DX,OFFSET INDATA  
    MOV AH,0AH
    INT 21H 
    
    MOV DX,OFFSET NEWLINE
    MOV AH,9
    INT 21H
    
    
    
    MOV VALUE,0H    
    MOV CX,4 
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK AX
    CMP  INS+4,'A'
    JNE SECOND1
    
    CMP  INS+5,'X'
    JNE HIGHER1 
    MOV EIGHT_OR_SIXTEEN_BITS,17 ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET AX_REG   
    JMP FIND1 
       
    HIGHER1:CMP  INS+5,'H'
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
    
    CMP  INS+5,'X'
    JNE HIGHER2 
    MOV EIGHT_OR_SIXTEEN_BITS,17 ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET BX_REG   
    JMP FIND1 
    
    HIGHER2:CMP  INS+5,'H'
    JNE LOWER2
    MOV DI,OFFSET BX_REG+1
    JMP FIND1
    
    LOWER2:CMP  INS+5,'L'
    JNE SECOND4 
    MOV DI,OFFSET BX_REG
    JMP FIND1
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK CX
    SECOND2: CMP  INS+4,'C'
    JNE SECOND3
    
    CMP  INS+5,'X'
    JNE HIGHER3 
    MOV EIGHT_OR_SIXTEEN_BITS,17 ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET CX_REG   
    JMP FIND1 
    
    HIGHER3: CMP  INS+5,'H'
    JNE LOWER3
    MOV DI,OFFSET CX_REG+1
    JMP FIND1
    
    LOWER3:CMP  INS+5,'L'
    JNE LOOP1 
    MOV DI,OFFSET CX_REG
    JMP FIND1
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK DX
    SECOND3: CMP  INS+4,'D'
    JNE SECOND4   
    
    CMP  INS+5,'X'
    JNE HIGHER4 
    MOV EIGHT_OR_SIXTEEN_BITS,17 ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET DX_REG   
    JMP FIND1 
    
    HIGHER4:CMP  INS+5,'H'
    JNE LOWER4
    MOV DI,OFFSET DX_REG+1
    JMP FIND1
    
    LOWER4:CMP  INS+5,'L'
    JNE SECOND5 
    MOV DI,OFFSET DX_REG 
    JMP FIND1                      
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;; CHECK BP
    SECOND4: CMP INS+4,'B'
    JNE SECOND5
    
    CMP INS+5,'P'
    JNE LOOP1
    MOV DI,OFFSET BP_REG
    JMP FIND1
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;; CHECK DI 
    SECOND5: CMP INS+4,'D'
    JNE SECOND6
    
    CMP INS+5,'I'
    JNE LOOP1
    MOV DI,OFFSET DI_REG
    JMP FIND1
    
    ;;;;;;;;;;;;;;;;;;;;;;;; CHECK SI
    
    SECOND6: CMP INS+4,'S'
    JNE SECOND7
    
    CMP INS+5,'I'
    JNE SECOND7
    MOV DI,OFFSET SI_REG
    JMP FIND1              
    
    ;;;;;;;;;;;;;;;;;;;;;;;; CHECK SP
    
    SECOND7: CMP INS+4,'S'
    JNE LOOP1
    
    CMP INS+5,'P'
    JNE LOOP1
    MOV DI,OFFSET SP_REG
    JMP FIND1
    
    ;;;;;;;;;;;STEP 2
    ;;;;;;;;;;;FIND THE VALUE
 
    
    FIND1:
        MOV SI,OFFSET INS
        ADD SI,11D
        SUB SI,CX
        MOV AL,[SI]
        MOV AH,0H 
        
        CMP AL,48D
        JB MLTIEND
        CMP AL,57D
        JA MID
        SUB AL,48D
        MOV AH,1
        JMP FIND2 
        
        MID:CMP AL,65D
        JB MLTIEND ;;;;;;;;;; WE MUST PUT ERROR HERE
        
        CMP AL,70D
        JA MLTIEND
        
        
        
        
        FIND2:MOV AH,0H  
        MOV BL,10H 
        MOV BH,00H
        MOV TEMP1,CL
        DEC TEMP1
       
        MLT:CMP TEMP1,0
        JE  MLTI
            MUL BX      
            DEC TEMP1
        JMP MLT
            
       MLTI: 
        ADD VALUE,AX
     LOOP FIND1
      
                 
              
    MLTIEND:CMP CX,0;SHR VALUE,12         
           JE INSTRUCTIONS  
           PUSH CX
           MOV CL,4
           SHR VALUE,CL
           POP CX
           DEC CX
           JMP MLTIEND 
             
             
    ;;;;;;;;;;;STEP 3 EXCUTE THE INSTRUCTION 
    INSTRUCTIONS:
    ;;;;;;;;;;; MOV INSTRUCTIONS 
      
    CMP INS,'M'
    JNE ADD1
    CMP INS+1,'O'
    JNE ADD1
    CMP INS+2,'V'
    JNE ADD1
    ;;;;;;;;;; IF IT IS MOV THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
    MOV AX,VALUE
    MOV [DI],AX
    JMP LOOP1
                 
    ADD1:;;;;;;;;;;; ADD INSTRUCTIONS   
    CMP INS,'A'
    JNE ROR1
    CMP INS+1,'D'
    JNE ROR1                       ;;EDIT JNE ROR1 TOOO TNE SUB1 WHRN SUB1 IS COMPLETED
    CMP INS+2,'D'
    JNE ROR1
    
    
    ;;;;;;;;;; IF IT IS ADD  ;;;;;;;;;;;;;;;;;;;;;;;;;
    MOV AX,VALUE
    ADD [DI],AX
    JMP LOOP1
    
    
    SUB1:;;;;;;;;;;; SUB INSTRUCTIONS
    
    
    
    
    
    
    ADC1:;;;;;;;;;;; ADC INSTRUCTIONS
    
    
    
    
    ;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    KARIM   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
              
    ;;;;;;;;;;;ROTATE RIGHT 
    ROR1:                          
         CMP INS,'R'
         JNE ROL1
         CMP INS+1,'O'
         JNE ROL1
         CMP INS+2,'R'
         JNE ROL1
    ;;;;;;;;;; IF IT IS ROR THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         MOV CX,VALUE
         CMP CX,16D
         JA MAKE_IT_16_OR_BELOW_ROR    
         CMP EIGHT_OR_SIXTEEN_BITS,17
         JZ  ROR_16BITS
    ROR_8BITS:
         MOV BL,[DI]
         ROR BL,CL
         MOV [DI],BL  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP LOOP1
    
    ROR_16BITS:
         MOV BX,[DI]
         ROR BX,CL
         MOV [DI],BX  ;;;;;;;;;;;;;;;;;;;;;;SOMETIMES CARRYFLAG WILL BE ONE AS IT TAKE MOST SIGIFIGANT BIT WHILE ROTATIOG
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP LOOP1
    
    
    MAKE_IT_16_OR_BELOW_ROR:
         SUB CX,16D
         CMP CX,16D
         JA MAKE_IT_16_OR_BELOW_ROR
         JBE ROR1           
    ;;;;;;;;;;;;;;END OF ROTATE RIGHT
    
    ;;;;;;;;;;;ROTATE LEFT              
    ROL1:                        
         CMP INS,'R'
         JNE RCL1
         CMP INS+1,'O'
         JNE RCL1
         CMP INS+2,'L'
         JNE RCL1
    ;;;;;;;;;; IF IT IS ROL THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         MOV CX,VALUE
         CMP CX,16D
         JA MAKE_IT_16_OR_BELOW_ROL    
         CMP EIGHT_OR_SIXTEEN_BITS,17
         JZ  ROL_16BITS
    ROL_8BITS:
         MOV BL,[DI]
         ROL BL,CL
         MOV [DI],BL  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP LOOP1
    
    ROL_16BITS:
         MOV BX,[DI]
         ROL BX,CL
         MOV [DI],BX     ;;;;;;;;;;;;;;;;;;;;;;SOMETIMES CARRYFLAG WILL BE ONE AS IT TAKE MOST SIGIFIGANT BIT WHILE ROTATIOG
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP LOOP1
    
    MAKE_IT_16_OR_BELOW_ROL:
         SUB CX,16D
         CMP CX,16D
         JA MAKE_IT_16_OR_BELOW_ROL
         JBE ROL1           
    ;;;;;;;;;;;;;;END OF ROTATE LEFT
    
    ;;;;;;;;;;;ROTATE LEFT WITH CARRY              
    RCL1:                            
         CMP INS,'R'
         JNE RCR1
         CMP INS+1,'C'
         JNE RCR1
         CMP INS+2,'L'
         JNE RCR1
    ;;;;;;;;;; IF IT IS RCL THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         MOV CX,VALUE
         CMP CX,17D
         JA MAKE_IT_17_OR_BELOW_RCL    
         CMP CARRY,1
         JZ SET_CARRY
         JC CLEAR_CARRY 
    RCL_9BITS:
         MOV BL,[DI]
         RCL BL,CL
         MOV [DI],BL  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP LOOP1
    
    RCL_17BITS:
         MOV BX,[DI]
         RCL BX,CL
         MOV [DI],BX  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP LOOP1
    
    SET_CARRY:
         CMP EIGHT_OR_SIXTEEN_BITS,17        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
         STC
         JZ  RCL_17BITS
         JMP RCL_9BITS
    CLEAR_CARRY:
         CMP EIGHT_OR_SIXTEEN_BITS,17        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
         CLC
         JZ  RCL_17BITS
         JMP RCL_9BITS
         
    MAKE_IT_17_OR_BELOW_RCL:
         SUB CX,17D
         CMP CX,17D
         JA MAKE_IT_17_OR_BELOW_RCL
         JBE RCL1           
    ;;;;;;;;;;;;;;END OF ROTATE LEFT WITH CARRY
    
    ;;;;;;;;;;;ROTATE RIGHT WITH CARRY              
    RCR1:                         
         CMP INS,'R'
         JNE SHL1
         CMP INS+1,'C'
         JNE SHL1
         CMP INS+2,'R'
         JNE SHL1
    ;;;;;;;;;; IF IT IS RCR THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         MOV CX,VALUE
         CMP CX,17D
         JA MAKE_IT_17_OR_BELOW_RCR    
         CMP CARRY,1
         JZ SET_CARRY_RCR
         JC CLEAR_CARRY_RCR 
    RCR_9BITS:
         MOV BL,[DI]
         RCR BL,CL
         MOV [DI],BL  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP LOOP1
    
    RCR_17BITS:
         MOV BX,[DI]
         RCR BX,CL
         MOV [DI],BX  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP LOOP1
    
    SET_CARRY_RCR:
         CMP EIGHT_OR_SIXTEEN_BITS,17        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
         STC
         JZ  RCR_17BITS
         JMP RCR_9BITS
    CLEAR_CARRY_RCR:
         CMP EIGHT_OR_SIXTEEN_BITS,17        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
         CLC
         JZ  RCR_17BITS
         JMP RCR_9BITS
         
    MAKE_IT_17_OR_BELOW_RCR:
         SUB CX,17D
         CMP CX,17D
         JA MAKE_IT_17_OR_BELOW_RCR
         JBE RCR1           
    ;;;;;;;;;;;;;;END OF ROTATE RIGHT WITH CARRY    
    
    ;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& END OF KARIM   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    
    SHL1:;;;;;;;;;;; SHL INSTRUCTIONS
    CMP INS,'S'
    JNE SHR1
    CMP INS+1,'H'
    JNE SHR1
    CMP INS+2,'L'
    JNE SHR1

    AND VALUE,000000011111B    ; take the first 5 bits only
    MOV CX,VALUE
    SHL [DI],CL
    
    ;store the carry flag
    PUSHF
    POP AX
    AND AL,1    
    MOV CARRY,AL     
     
    JMP LOOP1
    
    SHR1:;;;;;;;;;;; SHR INSTRUCTIONS   
    CMP INS,'S'
    JNE NOP1
    CMP INS+1,'H'
    JNE NOP1
    CMP INS+2,'R'
    JNE NOP1
    
    AND VALUE,000000011111B    ; take the first 5 bits only
    MOV CX,VALUE
    SHR [DI],CL
    
    ;store the carry flag
    PUSHF
    POP AX
    AND AL,1    
    MOV CARRY,AL     
     
    JMP LOOP1
                          
                          
    NOP1:;;;;;;;;;;;; NOP INSTRUCTIONS
    CMP INS,'N'
    JNE CLC1
    CMP INS+1,'O'
    JNE CLC1
    CMP INS+2,'P'
    JE LOOP1 
    JNE CLC1
    
    
    
    CLC1:;;;;;;;;;;;;;;; CLC INSTRUCTIONS
    
    CMP INS,'C'
    JNE INC1
    CMP INS+1,'L'
    JNE INC1
    CMP INS+2,'C' 
    JNE INC1
    
    ;AND FLAGS_REG,1111111111111110B
    
    MOV CARRY,0
    
    JMP LOOP1 
    
    
    
    
    INC1:;;;;;;;;;;; INC INSTRUCTION
    
    
    CMP INS,'I'
    JNE DEC1
    CMP INS+1,'N'
    JNE DEC1
    CMP INS+2,'C'
    JNE DEC1
    ;;;;;;;;;; IF IT IS INC THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
    CMP [DI],0FFFFH
    JE  INCCARRY 
    INC [DI]
    JMP LOOP1
    INCCARRY: MOV CARRY,1
              INC [DI]
              JMP LOOP1
    DEC1:;;;;;;;;;;;;; DEC INSTRUCTION
    
    CMP INS,'D'
    JNE AND1
    CMP INS+1,'E'
    JNE AND1
    CMP INS+2,'C'
    JNE AND1
    ;;;;;;;;;; IF IT IS DEC THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
    CMP [DI],0000H
    JE DECCARRY
    DEC [DI]
    JMP LOOP1
    DECCARRY: MOV CARRY,1
              DEC [DI]
              JMP LOOP1
    
    
    AND1: ;;;;;;;;;;;;;;; AND INSTRUCTION
    
    CMP INS,'A'
    JNE XOR1
    CMP INS+1,'N'
    JNE XOR1
    CMP INS+2,'D'
    JNE XOR1
    ;;;;;;;;;; IF IT IS AND THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
    MOV AX,VALUE
    AND [DI],AX
    JMP LOOP1
    
    XOR1:;;;;;;;;;;;;;;;; XOR INSTRUCTION
    CMP INS,'X'
    JNE LOOP1
    CMP INS+1,'O'
    JNE LOOP1
    CMP INS+2,'R'
    JNE LOOP1
    ;;;;;;;;;; IF IT IS AND THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
    MOV AX,VALUE
    XOR [DI],AX
    JMP LOOP1
    
    
    LOOP1:JMP MYLOOP
   LAB1: HLT
    MAIN ENDP
END MAIN

ret