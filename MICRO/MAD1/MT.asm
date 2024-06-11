PUBLIC  READ_INST ,SET_DES_SOURCE,CHECK_ERROR

EXTRN VALUE:BYTE 

EXTRN AX_REG:WORD  ;;AX 
       

EXTRN BX_REG:WORD  ;;BX 
        
           

EXTRN CX_REG:WORD  ;;CX 
       
      
EXTRN DX_REG:WORD  ;;DX 
       
EXTRN BP_REG:WORD  ;;BP
EXTRN DI_REG:WORD  ;;DI
EXTRN SI_REG:WORD ;;SI   
EXTRN SP_REG:WORD ;;SP           
EXTRN MEMORY:BYTE
EXTRN CARRY:BYTE ;;; CARRY 
      



EXTRN FORBIDDEN:BYTE 
EXTRN POINT:BYTE
EXTRN ONCE_CLEAR:BYTE 
EXTRN ONCE_CHANGE:BYTE   

EXTRN INS_START:BYTE

;#############################################################################################--->ME<---######################################################################                  

 EXTRN AX_REG2:WORD  ;;AX 
       

 EXTRN BX_REG2:WORD  ;;BX 
         
           

 EXTRN CX_REG2:WORD  ;;CX 
        
      
 EXTRN DX_REG2:WORD  ;;DX 
        
       
       
        
EXTRN BP_REG2:WORD  ;;BP
EXTRN DI_REG2:WORD  ;;DI 
EXTRN SI_REG2:WORD ;;SI  
EXTRN SP_REG2:WORD ;;SP           
EXTRN MEMORY2:BYTE
EXTRN CARRY2:BYTE ;;; CARRY
EXTRN FORBIDDEN2:BYTE 
EXTRN POINT2:BYTE
EXTRN ONCE_CLEAR2:BYTE 
EXTRN ONCE_CHANGE2:BYTE



EXTRN SRC_FLAG:BYTE
EXTRN DEST_FLAG:BYTE
EXTRN SRC_SIZE:BYTE
  


EXTRN TEMP1_W:WORD
EXTRN SRC_START:WORD   ;;TEMP TO CARRY THE STRATING BIT FOR THE SOURCE AFTER READING THE DEST
EXTRN TEMP1:BYTE

EXTRN f:BYTE

EXTRN INVALID:BYTE

.MODEL SMALL
.CODE
READ_INST        PROC FAR
    
    
    mov f,0
    
    CMP INS_START,'M'
    JNE ADD1
    CMP INS_START+1,'O'
    JNE ADD1
    CMP INS_START+2,'V'
    JNE ADD1
    ;;;;;;;;;; IF IT IS MOV THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;  
    
    ;-------------------------------------------------------------------
    cmp DEST_FLAG,1          ;hosny,7          ;hosny
    je movlow
    cmp DEST_FLAG,0          ;hosny
    je memo
    MOV Al,VALUE+1
    MOV [DI],Al 
    mov al,VALUE
    inc di
    mov [di],al
    JMP RETURN  
    
    movlow:mov al,VALUE
           mov [di],al
           jmp RETURN
    
    memo:mov cl,SRC_SIZE 
    mov ch,0
    calc: mov si,offset VALUE
          add si,cx
          sub si,1 
          mov dl,[si]
          mov [di],dl
          inc di
          dec cx
          jnz  calc ;;;HOSNY HANAKA EBN EL  
          jmp RETURN
    ;-------------------------------------------------------------------             
    ADD1:;;;;;;;;;;; ADD INSTRUCTIONS   
    CMP INS_START,'A'
    JNE SUB1
    CMP INS_START+1,'D'
    JNE SUB1                       ;;EDIT JNE ROR1 TOOO TNE SUB1 WHRN SUB1 IS COMPLETED
    CMP INS_START+2,'D'
    JNE SUB1
    
    
    ;;;;;;;;;; IF IT IS ADD  ;;;;;;;;;;;;;;;;;;;;;;;;; 
    clc
    cmp DEST_FLAG,1          ;hosny
    je movlowadd
    cmp DEST_FLAG,0          ;hosny
    je memoadd
    mov Al,VALUE+1
    add [DI],Al 
    mov al,VALUE
    inc di
    adc [di],al
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    JMP RETURN  
         
    movlowadd:mov al,VALUE
              add [di],al
              pushf
              pop ax
              and ax,1d
              mov CARRY,al
              jmp RETURN
    
   memoadd:mov cl,SRC_SIZE 
    mov ch,0
           
    calcadd:mov si,offset VALUE
           add si,cx
           sub si,1
           
           mov dl,[si]
           adc [di],dl
           inc di
           dec cx
           jnz calcadd
                
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    jmp RETURN
    
    ;-----------------------------------------------------------
    SUB1:;;;;;;;;;;; SUB INSTRUCTIONS
    CMP INS_START,'S'
    JNE ADC1
    CMP INS_START+1,'U'
    JNE ADC1                       ;;EDIT JNE ROR1 TOOO TNE SUB1 WHRN SUB1 IS COMPLETED
    CMP INS_START+2,'B'
    JNE ADC1
     ;;;;;;;;;; IF IT IS SUB  ;;;;;;;;;;;;;;;;;;;;;;;;;  
    clc  
    cmp DEST_FLAG,1          ;hosny
    je movlowsub
    cmp DEST_FLAG,0          ;hosny
    je memosub
    mov Al,VALUE+1
    sub [DI],Al 
    mov al,VALUE
    inc di
    sbb [di],al
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    JMP RETURN  
         
    movlowsub:mov al,VALUE
              sub [di],al
              pushf
              pop ax
              and ax,1d
              mov CARRY,al
              jmp RETURN
    
    memosub:mov cl,SRC_SIZE 
    mov ch,0 
           
    calcsub:mov si,offset VALUE
            add si,cx
            sub si,1 
            mov dl,[si]
            sbb [di],dl
            inc di
            dec cx
            jnz calcadd
                
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    jmp RETURN
   ;------------------------------------------------------------ 
    ADC1:;;;;;;;;;;; ADC INSTRUCTIONS
    CMP INS_START,'A'
    JNE ROR1
    CMP INS_START+1,'D'  
    JNE ROR1                       ;;EDIT JNE ROR1 TOOO TNE SUB1 WHRN SUB1 IS COMPLETED
    CMP INS_START+2,'C'
    JNE ROR1
    ;;;;;;;;;; IF IT IS ADC  ;;;;;;;;;;;;;;;;;;;;;;;;;
    cmp CARRY,0
    je set
    mov al,0ffh
    add al,1
    jmp bra
    set:clc
    bra:   
    PUSHF
    cmp DEST_FLAG,1          ;hosny
    je movlowadc
    cmp DEST_FLAG,0          ;hosny
    je memoadc 
    POPF
    mov Al,VALUE+1
    adc [DI],Al 
    mov al,VALUE
    inc di
    adc [di],al
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    JMP RETURN  
         
    movlowadc:POPF
              mov al,VALUE
              adc [di],al
              pushf
              pop ax
              and ax,1d
              mov CARRY,al
              jmp RETURN
    
    memoadc:POPF
    mov cl,SRC_SIZE 
    mov ch,0
    calcadc:mov si,offset VALUE
            add si,cx
            sub si,1
            mov dl,[si]
            adc [di],dl
            inc di
            dec cx
            jnz calcadc
                
    pushf
    pop ax
    and ax,1d
    mov CARRY,al
    jmp RETURN       
    ;------------------------------------------------------
    ;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&    KARIM   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
              
    ;;;;;;;;;;;ROTATE RIGHT 
    ROR1:                          
         CMP INS_START,'R'
         JNE ROL1
         CMP INS_START+1,'O'
         JNE ROL1
         CMP INS_START+2,'R'
         JNE ROL1
    ;;;;;;;;;; IF IT IS ROR THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         mov ch,0
         MOV Cl,VALUE
         CMP CX,16D
         JA MAKE_IT_16_OR_BELOW_ROR    
         CMP DEST_FLAG,2
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
         JMP RETURN
    
    ROR_16BITS:
         MOV Bl,[DI] 
         inc di
         mov bh,[di]
         dec di
         ROR BX,CL
         MOV [DI],Bl
         inc di
         mov [di],bh  ;;;;;;;;;;;;;;;;;;;;;;SOMETIMES CARRYFLAG WILL BE ONE AS IT TAKE MOST SIGIFIGANT BIT WHILE ROTATIOG
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    
    MAKE_IT_16_OR_BELOW_ROR:
         SUB CX,16D
         CMP CX,16D
         JA MAKE_IT_16_OR_BELOW_ROR
         JBE ROR1           
    ;;;;;;;;;;;;;;END OF ROTATE RIGHT
    
    ;;;;;;;;;;;ROTATE LEFT              
    ROL1:                        
         CMP INS_START,'R'
         JNE RCL1
         CMP INS_START+1,'O'
         JNE RCL1
         CMP INS_START+2,'L'
         JNE RCL1
    ;;;;;;;;;; IF IT IS ROL THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         mov ch,0
         MOV Cl,VALUE
         CMP Cl,16D
         JA MAKE_IT_16_OR_BELOW_ROL    
         CMP DEST_FLAG,2
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
         JMP RETURN
    
    ROL_16BITS:
         MOV Bl,[DI]
         inc di
         mov bh,[di]
         dec di
         ROL BX,CL
         MOV [DI],Bl
         inc di
         mov [di],bh     ;;;;;;;;;;;;;;;;;;;;;;SOMETIMES CARRYFLAG WILL BE ONE AS IT TAKE MOST SIGIFIGANT BIT WHILE ROTATIOG
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    MAKE_IT_16_OR_BELOW_ROL:
         SUB CX,16D
         CMP CX,16D
         JA MAKE_IT_16_OR_BELOW_ROL
         JBE ROL1           
    ;;;;;;;;;;;;;;END OF ROTATE LEFT
    
    ;;;;;;;;;;;ROTATE LEFT WITH CARRY              
    RCL1:                            
         CMP INS_START,'R'
         JNE RCR1
         CMP INS_START+1,'C'
         JNE RCR1
         CMP INS_START+2,'L'
         JNE RCR1
    ;;;;;;;;;; IF IT IS RCL THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         mov ch,0
         MOV Cl,VALUE
         
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
         JMP RETURN
    
    RCL_17BITS:
         MOV Bl,[DI]
         inc di
         mov bh,[di]
         dec di
         RCL BX,CL
         MOV [DI],Bl
         inc di
         mov [di],bh  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    SET_CARRY:
         CMP DEST_FLAG,2        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
         STC
         JZ  RCL_17BITS
         JMP RCL_9BITS
    CLEAR_CARRY:
         CMP DEST_FLAG,2        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
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
         CMP INS_START,'R'
         JNE SHL1
         CMP INS_START+1,'C'
         JNE SHL1
         CMP INS_START+2,'R'
         JNE SHL1
    ;;;;;;;;;; IF IT IS RCR THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;;
         mov ch,0
         MOV Cl,VALUE
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
         JMP RETURN
    
    RCR_17BITS:
         MOV Bl,[DI]
         inc di
         mov bh,[di]
         dec di
         RCR BX,CL
         MOV [DI],Bl
         inc di
         mov [di],bh  
         ;store the carry flag
         PUSHF
         POP AX
         AND AL,1    
         MOV CARRY,AL     
         JMP RETURN
    
    SET_CARRY_RCR:
         CMP DEST_FLAG,2        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
         STC
         JZ  RCR_17BITS
         JMP RCR_9BITS
    CLEAR_CARRY_RCR:
         CMP DEST_FLAG,2        ;NOTE ==> HERE IF CARRY IS ZERO CARRYFLAG WILL BE 1
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
    CMP INS_START,'S'
    JNE SHR1
    CMP INS_START+1,'H'
    JNE SHR1
    CMP INS_START+2,'L'
    JNE SHR1

    AND VALUE,000000011111B    ; take the first 5 bits only
    mov ch,0
    MOV Cl,VALUE 
    
    
    
    cmp DEST_FLAG,2
    je shl2byte
    SHL BYTE PTR [DI],CL
    
    ;store the carry flag
    PUSHF
    POP AX
    AND AL,1    
    MOV CARRY,AL     
     
    JMP RETURN
              
    shl2byte:mov al,[di]
             inc di
             mov ah,[di]
             dec di
             shl ax,cl
             pushf
             pop bx
             and bx,1d
             mov CARRY,bl
             mov [di],al 
             inc di
             mov [di],ah
             JMP RETURN          
    SHR1:;;;;;;;;;;; SHR INSTRUCTIONS   
    CMP INS_START,'S'
    JNE NOP1
    CMP INS_START+1,'H'
    JNE NOP1
    CMP INS_START+2,'R'
    JNE NOP1
    
    AND VALUE,000000011111B    ; take the first 5 bits only
    mov ch,0
    MOV Cl,VALUE 
    
    
    
    cmp DEST_FLAG,2
    je shr2byte
    SHR BYTE PTR [DI],CL
    
    ;store the carry flag
    PUSHF
    POP AX
    AND AL,1    
    MOV CARRY,AL     
     
    JMP RETURN
              
    shr2byte:mov al,[di]
             inc di
             mov ah,[di]
             dec di
             shr ax,cl
             pushf
             pop bx
             and bx,1d
             mov CARRY,bl
             mov [di],al 
             inc di
             mov [di],ah
             JMP RETURN
                          
    ;----------------------------------------------------------------                      
    NOP1:;;;;;;;;;;;; NOP INSTRUCTIONS
    CMP INS_START,'N'
    JNE CLC1
    CMP INS_START+1,'O'
    JNE CLC1
    CMP INS_START+2,'P'
    JNE CLC1 
    ret
    ;---------------------------------------------------------------
    
    
    CLC1:;;;;;;;;;;;;;;; CLC INSTRUCTIONS
    
    CMP INS_START,'C'
    JNE INC1
    CMP INS_START+1,'L'
    JNE INC1
    CMP INS_START+2,'C' 
    JNE INC1
    
    ;AND FLAGS_REG,1111111111111110B
    
    MOV CARRY,0
    
    JMP RETURN 
    
    
    ;-------------------------------------------------------------------------
    
    INC1:;;;;;;;;;;; INC INSTRUCTION
    
    
    CMP INS_START,'I'
    JNE DEC1
    CMP INS_START+1,'N'
    JNE DEC1
    CMP INS_START+2,'C'
    JNE DEC1
    ;;;;;;;;;; IF IT IS INC THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
   ; CMP [DI],0FFFFH
   ; JE  INCCARRY 
    INC BYTE PTR [DI]
    JMP RETURN
   ; INCCARRY: MOV CARRY,1
   ;           INC [DI]
   ;           JMP LOOP1   
    ;-------------------------------------------------------------------------          
    DEC1:;;;;;;;;;;;;; DEC INSTRUCTION
    
    CMP INS_START,'D'
    JNE AND1
    CMP INS_START+1,'E'
    JNE AND1
    CMP INS_START+2,'C'
    JNE AND1
    ;;;;;;;;;; IF IT IS DEC THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
    ;CMP [DI],0000H
    ;JE DECCARRY
    DEC BYTE PTR [DI]
    JMP RETURN
    ;DECCARRY: MOV CARRY,1
    ;          DEC [DI]
    ;          JMP LOOP1
   ;--------------------------------------------------------------------------- 
    
    AND1: ;;;;;;;;;;;;;;; AND INSTRUCTION
    
    CMP INS_START,'A'
    JE FIND_FIRST_CAHR_AND
     JMP XOR1
    FIND_FIRST_CAHR_AND:

    CMP INS_START+1,'N'
    JE FIND_SECOND_CAHR_AND
     JMP XOR1
    FIND_SECOND_CAHR_AND:

    CMP INS_START+2,'D'
   JE FIND_THIRD_CAHR_AND
     JMP XOR1
    FIND_THIRD_CAHR_AND:
    ;;;;;;;;;; IF IT IS AND THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
    cmp DEST_FLAG,1          ;hosny
    je movlowand
    cmp DEST_FLAG,0          ;hosny
    je memoand
    mov Al,VALUE+1
    and [DI],Al
    cmp BYTE PTR [di],0
    je new 
    mov al,VALUE
    inc di
    and [di],al
    JMP RETURN  
    new:inc f
        mov al,VALUE
        inc di
        and [di],al
        cmp BYTE PTR [di],0
        je new1 
        JMP RETURN
    new1:inc f
        cmp f,2
        je cleer
        RET   
 movlowand:mov al,VALUE
              and [di],al
              cmp BYTE PTR [di],0
              je cleer
              jmp RETURN
    
   memoand:mov cl,SRC_SIZE 
    mov ch,0
    calcand:mov si,offset VALUE
          add si,cx
          sub si,1
          mov dl,[si]
          and [di],dl 
          cmp BYTE PTR [di],0
          je zero
          inc di
          dec cx
          jnz calcand
          zero: inc f
                inc di
                dec cx
                jnz calcand  
                
   mov cL,SRC_SIZE             
   cmp f,cL
   je cleer
   jmp RETURN
   cleer:mov CARRY,0
             jmp RETURN
   ;---------------------------------------------------------------------------          
             
  
    XOR1:;;;;;;;;;;;;;;;; XOR INSTRUCTION
    CMP INS_START,'X'
     JE FIND_FIRST_CAHR_XOR
     MOV INVALID,1
     RET
     FIND_FIRST_CAHR_XOR:

     CMP INS_START+1,'O'
    JE FIND_SECOND_CAHR_XOR
     MOV INVALID,1
     RET
     FIND_SECOND_CAHR_XOR:

    CMP INS_START+2,'R'
    JE FIND_THIRD_CAHR_XOR
     MOV INVALID,1
     RET
     FIND_THIRD_CAHR_XOR:
    ;;;;;;;;;; IF IT IS AND THEN EXCUT IT ;;;;;;;;;;;;;;;;;;;;;;;;;; 
   cmp DEST_FLAG,1          ;hosny
    je movlowxor
    cmp DEST_FLAG,0          ;hosny
    je memoxor
    mov Al,VALUE+1
    xor [DI],Al
    cmp BYTE PTR [di],0
    je newxor 
    mov al,VALUE
    inc di
    xor [di],al
    JMP RETURN  
    newxor:inc f
        mov al,VALUE
        inc di
        xor [di],al
        cmp BYTE PTR [di],0
        je newxor2 
        JMP RETURN
    newxor2:inc f
        cmp f,2
        je cleer
        JMP RETURN      
    movlowxor:mov al,VALUE
              xor [di],al
              cmp BYTE PTR [di],0
              je cleer
              jmp RETURN
    
    memoxor:mov cl,SRC_SIZE 
    mov ch,0
    calcxor:mov si,offset VALUE
          add si,cx
          sub si,1
          mov dl,[si]
          xor [di],dl
          cmp BYTE PTR [di],0
          je zeroxor
          inc di
          dec cx
          jnz calcxor
          zeroxor: inc f
                inc di
                dec cx
                jnz calcxor  
                
   mov cL,SRC_SIZE             
   cmp f,cL
   jNe  RETURN
    mov CARRY,0
  
  RETURN: ret
        
   READ_INST     ENDP       
                 
    
;#########################################################################################################################    
  
SET_DES_SOURCE     PROC FAR
     MOV SRC_START,7D
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK AX
    CMP  INS_START+4,'A'
    JNE SECOND1
    
    CMP  INS_START+5,'X'
    JNE HIGHER1 
    MOV DEST_FLAG,2H ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET AX_REG   
    JMP SOURCE_PROCESS 
       
    HIGHER1:CMP  INS_START+5,'H'
    JNE LOWER1
    MOV DI,OFFSET AX_REG+1 
    MOV DEST_FLAG,1
    JMP SOURCE_PROCESS
    
    LOWER1:CMP  INS_START+5,'L'
    JE DEST_FIND_AL 
    JMP DES_MEMORY
    DEST_FIND_AL:
    MOV DI,OFFSET AX_REG
    MOV DEST_FLAG,1   
    JMP SOURCE_PROCESS
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK BX   
    SECOND1: CMP  INS_START+4,'B'
    JNE SECOND2
    
    CMP  INS_START+5,'X'
    JNE HIGHER2 
    MOV DEST_FLAG,2 ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET BX_REG   
    JMP SOURCE_PROCESS 
    
    HIGHER2:CMP  INS_START+5,'H'
    JNE LOWER2
    MOV DEST_FLAG,1
    MOV DI,OFFSET BX_REG+1
    JMP SOURCE_PROCESS
    
    LOWER2:CMP  INS_START+5,'L'
    JE DEST_FIND_BL
    JMP SECOND4
    DEST_FIND_BL:
    MOV DEST_FLAG,1 
    MOV DI,OFFSET BX_REG
    JMP SOURCE_PROCESS
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK CX
    SECOND2: CMP  INS_START+4,'C'
    JNE SECOND3
    
    CMP  INS_START+5,'X'
    JNE HIGHER3 
    MOV DEST_FLAG,2 ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET CX_REG   
    JMP SOURCE_PROCESS 
    
    HIGHER3: CMP  INS_START+5,'H'
    JNE LOWER3
    MOV DEST_FLAG,1
    MOV DI,OFFSET CX_REG+1
    JMP SOURCE_PROCESS
    
    LOWER3:CMP  INS_START+5,'L'

     JE DEST_FIND_CL 
    JMP DES_MEMORY
    DEST_FIND_CL:

     MOV DEST_FLAG,1 
    MOV DI,OFFSET CX_REG
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;CHECK DX
    SECOND3: CMP  INS_START+4,'D'
    JNE SECOND4   
    
    CMP  INS_START+5,'X'
    JNE HIGHER4 
    MOV DEST_FLAG,2 ;KARIM ==> IF 16 BITS  EIGHT_OR-SIXTEEN_BITS WILL BE HIGH  ELSE IT WILL BE LOW
    MOV DI,OFFSET DX_REG   
    JMP SOURCE_PROCESS 
    
    HIGHER4:CMP  INS_START+5,'H'
    JNE LOWER4
    MOV DEST_FLAG,1
    MOV DI,OFFSET DX_REG+1
    JMP SOURCE_PROCESS
    
    LOWER4:CMP  INS_START+5,'L'
    JNE SECOND5
    MOV DEST_FLAG,1 
    MOV DI,OFFSET DX_REG 
    JMP SOURCE_PROCESS                      
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;; CHECK BP
    SECOND4: CMP INS_START+4,'B'
    JNE SECOND5
    
    CMP INS_START+5,'P'
     JE DEST_FIND_BP
    JMP DES_MEMORY
    DEST_FIND_BP:
     MOV DEST_FLAG,2
    MOV DI,OFFSET BP_REG
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;;;;;;;;;;;;; CHECK DI 
    SECOND5: CMP INS_START+4,'D'
    JNE SECOND6
    
    CMP INS_START+5,'I'
    JE DEST_FIND_DI 
    JMP DES_MEMORY
    
    DEST_FIND_DI:
    MOV DEST_FLAG,2
    MOV DI,OFFSET DI_REG
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;;;;;;;;;; CHECK SI
    
    SECOND6: CMP INS_START+4,'S'
    JNE SECOND7
    
    CMP INS_START+5,'I'
    JNE SECOND7
    MOV DEST_FLAG,2
    MOV DI,OFFSET SI_REG
    JMP SOURCE_PROCESS              
    
    ;;;;;;;;;;;;;;;;;;;;;;;; CHECK SP
    
    SECOND7: CMP INS_START+4,'S'
    JNE DES_MEMORY
    
    CMP INS_START+5,'P'
   JE DEST_FIND_SP 
    MOV INVALID,1
    RET
    DEST_FIND_SP:

    MOV DEST_FLAG,2
    MOV DI,OFFSET SP_REG
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;;;;;;;;;; CHECK MEMORY FOR DESTENETION
    DES_MEMORY:
   
    MOV DEST_FLAG,0
    CMP INS_START+4,'['
    JE MEMORY_START_FIND
    JMP DES_NUMBERS_ONLY
    MEMORY_START_FIND:MOV SRC_START,9
    ;;;;;;;;;;;CHECK [BX]
    CMP  INS_START+5,'B'
    JNE DES_MEMORY_SECOND1
    
    CMP INS_START+6,'X'
    JNE DES_MEMORY_SECOND1
    MOV DI,OFFSET MEMORY   
    ADD DI,BX_REG 
    JMP SOURCE_PROCESS 
    ;;;;;;;;;;;;;;;CHECK [SI]
    DES_MEMORY_SECOND1:
    CMP  INS_START+5,'S'
    JNE DES_MEMORY_SECOND2
    
    CMP INS_START+6,'I'
    JNE DES_MEMORY_SECOND2
    MOV DI,OFFSET MEMORY   
    ADD DI,SI_REG 
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;CHECK [DI]
    DES_MEMORY_SECOND2:
    CMP  INS_START+5,'D'
    JNE CHECK_NUMBER_IN_MEMRY_FOR_DEST
    
    CMP INS_START+6,'I'
    JNE CHECK_NUMBER_IN_MEMRY_FOR_DEST
    MOV DI,OFFSET MEMORY   
    ADD DI,DI_REG
    JMP SOURCE_PROCESS

    ;;;;;;;;;;;;;;CHECK INVALID MODE
    ;;; IF ITNT ONE OF THE ABOVE REGESTERS THEN IT HAS TWO options
    ;;; 1- [--]THEN ITS INVALID MODE
     ;;; 2- [-]VALID OR NOT ACCORDIND TO WHAT BETWEEN []
     CHECK_NUMBER_IN_MEMRY_FOR_DEST:CMP INS_START+7,']'
     JNE DES_MEMORY_SECOND3
     ;;HERE WE SAID THAT TER IS 2 DIGIT BETWEEN [] AND ISNT ONE OF THE 3VALID REGESTERS
     MOV INVALID,1
     RET
    ;;;;;;;;;;;;CHECK FOR [3]
    DES_MEMORY_SECOND3:
    MOV SRC_START,8
    MOV AL,INS_START+5
    CMP AL,48D
    JNB DEST_MEMPRY_NOT_BLOW_THE_RANGE;AND FLAGS_REG,1111111111111110B
    MOV INVALID,1
    RET
    DEST_MEMPRY_NOT_BLOW_THE_RANGE:
    CMP AL,70D
    JNA DEST_MEMPRY_NOT_ABOVE_THE_RANGE1
     MOV INVALID,1
    RET

    DEST_MEMPRY_NOT_ABOVE_THE_RANGE1:
    CMP AL,65D
    JNB DES_MEMOY_NUMERS_1
   
    CMP AL,57D
    JNA DES_MEMOY_NUMERS_BELOW
     MOV INVALID,1
     RET

    DES_MEMOY_NUMERS_BELOW:SUB AL,48D 
    JMP DES_MEMOY_NUMERS_2
        
    DES_MEMOY_NUMERS_1:
    SUB AL,55D         
    
    DES_MEMOY_NUMERS_2:
    MOV DI,OFFSET MEMORY 
    MOV AH,0  
    ADD DI,AX  
    JMP SOURCE_PROCESS
    
    ;;;;;;;;;;;;;;;;;;;;;;;CHECK FOR MOV 3,12
    DES_NUMBERS_ONLY: 
    MOV AL,INS_START+5
    CMP AL,','
    JE DEST_NUMBERS_ONLY_IS_ONE_DIGID  
    MOV INVALID,1
    RET
   DEST_NUMBERS_ONLY_IS_ONE_DIGID: MOV SRC_START,6
    ;;;;
    MOV AL,INS_START+4


    CMP AL,48D
    JNB DEST_MEMPRY_NOT_BLOW_THE_RANGE_NUMBERS_ONLY;AND FLAGS_REG,1111111111111110B
    MOV INVALID,1
    RET
    DEST_MEMPRY_NOT_BLOW_THE_RANGE_NUMBERS_ONLY:
    CMP AL,70D
    JNA D1EST_MEMPRY_NOT_ABOVE_THE_RANGE_NUMBERS_ONLY1
     MOV INVALID,1
    RET

    D1EST_MEMPRY_NOT_ABOVE_THE_RANGE_NUMBERS_ONLY1:
    CMP AL,65D
    JNB DES_MEMOY_NUMERS_1_NUMBERS_ONLY
   
    CMP AL,57D
    JNA DES_MEMOY_NUMERS_BELOW_NUMBERS_ONLY
     MOV INVALID,1
     RET

    DES_MEMOY_NUMERS_BELOW_NUMBERS_ONLY:SUB AL,48D 
    JMP DES_MEMOY_NUMERS_4
        
    DES_MEMOY_NUMERS_1_NUMBERS_ONLY:
    SUB AL,55D 



    DES_MEMOY_NUMERS_4:
    MOV DI,OFFSET MEMORY 
    MOV AH,0  
    ADD DI,AX
    JMP SOURCE_PROCESS
    ;;;;;;;;;;;;;;;;;;;;;;                  STEP 2         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;;;;;;;;;;FIND THE VALUE  (WORK WITH THE SOURCE AFTER FINISH THE DESTNITION) 
    SOURCE_PROCESS:  
    ;;;;;;;;;;;;;;;;; CHECK IF THE SOURCE IS REGESTER AX ;;;;;;;;;;;
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP BYTE PTR[SI],'['
    JNE SOURCE_NOT_MEMORY ;;;; IF ITS MEMORY THEN GO DIECTLY TO SOURCE MEMORY
    JMP SOURCE_MEMORY
    
    
    SOURCE_NOT_MEMORY:
    CMP  BYTE PTR[SI],'A'
    JNE SOURCE_SECOND1
    
    CMP  BYTE PTR[SI+1],'X'
    JNE SOURCE_HIGHER 
    MOV SRC_FLAG,2H 
    MOV SRC_SIZE,2
    MOV BX,OFFSET AX_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET 
       
    SOURCE_HIGHER:CMP  BYTE PTR [SI+1],'H'
    JNE SOURCE_LOWER 
    MOV SRC_FLAG,1
    MOV SRC_SIZE,1
    MOV BX,OFFSET AX_REG
    MOV AL,[BX+1]
    MOV VALUE,AL
     RET
    
    SOURCE_LOWER:
    CMP  BYTE PTR [SI+1],'L'
    JE SORCE_FIND_AL 
    JMP PREREQUIRE
    SORCE_FIND_AL:
    MOV SRC_FLAG,1 
    MOV SRC_SIZE,1
    MOV BX,OFFSET AX_REG
    MOV AL,[BX]
    MOV VALUE,AL  
     RET  
    
    
    ;;;;;;;;;;;;;;;;; CHECK IF THE SOURCE IS REGESTER BX ;;;;;;;;;;;
    SOURCE_SECOND1:
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP  BYTE PTR [SI],'B'
    JNE SOURCE_SECOND2
    
    CMP  BYTE PTR[SI+1],'X'
    JNE SOURCE_HIGHER1 
    MOV SRC_FLAG,2H 
    MOV SRC_SIZE,2
    MOV BX,OFFSET BX_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET 
       
    SOURCE_HIGHER1:CMP  BYTE PTR[SI+1],'H'
    JNE SOURCE_LOWER1 
    MOV SRC_FLAG,1
    MOV SRC_SIZE,1
    MOV BX,OFFSET BX_REG
    MOV AL,[BX+1]
    MOV VALUE,AL
     RET
    
    SOURCE_LOWER1:CMP BYTE PTR [SI+1],'L'
    JNE SOURCE_SECOND_HALF 
    MOV SRC_FLAG,1 
    MOV SRC_SIZE,1
    MOV BX,OFFSET BX_REG
    MOV AL,[BX]
    MOV VALUE,AL  
     RET 
    
    ;;;;;;;; CHECK BP AFTER B 
    SOURCE_SECOND_HALF:CMP BYTE PTR [SI+1],'P' 
    JE SORCE_FIND_BP
    JMP PREREQUIRE
    SORCE_FIND_BP:
    MOV SRC_FLAG,2 
    MOV SRC_SIZE,2
    MOV BX,OFFSET BP_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET
    
    ;;;;;;;;;;;;;;;;; CHECK IF THE SOURCE IS REGESTER CX ;;;;;;;;;;;
    SOURCE_SECOND2:
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP BYTE PTR [SI],'C'
    JNE SOURCE_SECOND3
    
    CMP BYTE PTR [SI+1],'X'
    JNE SOURCE_HIGHER2 
    MOV SRC_FLAG,2H 
    MOV SRC_SIZE,2
    MOV BX,OFFSET CX_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET 
       
    SOURCE_HIGHER2:CMP  BYTE PTR [SI+1],'H'
    JNE SOURCE_LOWER2 
    MOV SRC_FLAG,1
    MOV SRC_SIZE,1
    MOV BX,OFFSET CX_REG
    MOV AL,[BX+1]
    MOV VALUE,AL
     RET
    
    SOURCE_LOWER2:CMP BYTE PTR [SI+1],'L'
    JE SORCE_FIND_CL 
    JMP PREREQUIRE
    SORCE_FIND_CL:
    MOV SRC_FLAG,1 
    MOV SRC_SIZE,1
    MOV BX,OFFSET CX_REG
    MOV AL,[BX]
    MOV VALUE,AL  
     RET 
    
    ;;;;;;;;;;;;;;;;; CHECK IF THE SOURCE IS REGESTER DX ;;;;;;;;;;;
    SOURCE_SECOND3:
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP  BYTE PTR [SI],'D'
    JNE SOURCE_SECOND4
    
    CMP  BYTE PTR [SI+1],'X'
    JNE SOURCE_HIGHER3 
    MOV SRC_FLAG,2H 
    MOV SRC_SIZE,2
    MOV BX,OFFSET DX_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET 
       
    SOURCE_HIGHER3:CMP BYTE PTR  [SI+1],'H'
    JNE SOURCE_LOWER3 
    MOV SRC_FLAG,1
    MOV SRC_SIZE,1
    MOV BX,OFFSET DX_REG
    MOV AL,[BX+1]
    MOV VALUE,AL
     RET
    
    SOURCE_LOWER3:CMP BYTE PTR [SI+1],'L'
    JNE SOURCE_SECOND_HALF1 
    MOV SRC_FLAG,1 
    MOV SRC_SIZE,1
    MOV BX,OFFSET DX_REG
    MOV AL,[BX]
    MOV VALUE,AL  
     RET 
    
    ;;;;;;;;;;;;; CHECK DI AFTER D
    SOURCE_SECOND_HALF1:CMP BYTE PTR [SI+1],'I' 
    JE SOURCE_FIND_DI 
    JMP PREREQUIRE
   SOURCE_FIND_DI:
    MOV SRC_FLAG,2 
    MOV SRC_SIZE,2
    MOV BX,OFFSET DI_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET
     ;;;;;;;;;;;;;;;;; CHECK IF THE SOURCE IS REGESTER DX ;;;;;;;;;;;
    SOURCE_SECOND4:
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP  BYTE PTR [SI],'S'
    JNE SOURCE_MEMORY
    
    CMP  BYTE PTR [SI+1],'I'
    JNE  SOURCE_SECOND_HALF2
    MOV SRC_FLAG,2 
    MOV SRC_SIZE,2
    MOV BX,OFFSET SI_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET
    
    
    ;;;;;;;CHECK SP AFTER S
    SOURCE_SECOND_HALF2:
    CMP  BYTE PTR [SI+1],'P'
    JE SOURCE_FIND_SP
    JMP PREREQUIRE
   SOURCE_FIND_SP:
    MOV SRC_FLAG,2 
    MOV SRC_SIZE,2
    MOV BX,OFFSET SP_REG
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL 
     RET
    
    ;;;;;;;;;;;;;;;;;;;;;;; IF WE ACHIVE HERE ITS MEAN THAT IT ISNT REGESTER BUT MEMORY OR IMMIDIATE
    SOURCE_MEMORY:
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    CMP BYTE PTR [SI],'['
    JE SOURCE_FIND_MEMORY
    JMP PREREQUIRE
   SOURCE_FIND_MEMORY:
    ;;;;;; IF ACHIVED HERE THEN ITS MEMORY 
    MOV SRC_FLAG,0
    MOV AL,DEST_FLAG
    MOV SRC_SIZE,AL 
    
     ;;;;;;;;;;;CHECK [BX]     IN THE SOURCE
    CMP BYTE PTR [SI+1],'B'
    JNE SRC_MEMORY_SECOND1
    
    CMP BYTE PTR [SI+2],'X'
    JNE SRC_MEMORY_SECOND1 
    
    MOV BX,OFFSET MEMORY ;;;ACCESS THE CORESPONDING MEMRY CELL
    ADD BX,BX_REG 
    
    CMP SRC_SIZE,1
    JNE MEMORY_SOURCE_2BYTE1
    MOV AL,[BX]
    MOV VALUE,AL
     RET
    
    MEMORY_SOURCE_2BYTE1: 
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL
     RET 
    ;;;;;;;;;;;;;;;CHECK [SI]   IN THE SOURCE
    SRC_MEMORY_SECOND1:
    CMP BYTE PTR [SI+1],'S'
    JNE SRC_MEMORY_SECOND2
    
    CMP BYTE PTR [SI+2],'I'
    JNE SRC_MEMORY_SECOND2 
    
    MOV BX,OFFSET MEMORY ;;;ACCESS THE CORESPONDING MEMRY CELL
    ADD BX,SI_REG 
    
    CMP SRC_SIZE,1
    JNE MEMORY_SOURCE_2BYTE2
    MOV AL,[BX]
    MOV VALUE,AL
    RET
    
    MEMORY_SOURCE_2BYTE2: 
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL
    RET 
    ;;;;;;;;;;;;;;;CHECK [DI]  IN THE SOURCE
    SRC_MEMORY_SECOND2:
    CMP BYTE PTR [SI+1],'D'
    JNE SRC_MEMORY_NUMBERS
    
    CMP BYTE PTR [SI+2],'I'
    JNE SRC_MEMORY_NUMBERS
    
    MOV BX,OFFSET MEMORY ;;;ACCESS THE CORESPONDING MEMRY CELL
    ADD BX,DI_REG 
    
    CMP SRC_SIZE,1
    JNE MEMORY_SOURCE_2BYTE3
    MOV AL,[BX]
    MOV VALUE,AL
    RET
    
    MEMORY_SOURCE_2BYTE3: 
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL
    RET
    
    CMP BYTE PTR [SI+2],"]"
    JE SRC_MEMORY_NUMBERS
    MOV INVALID,1
    RET
    ;;;;;;;;;;;;;;;CHECK [3] IN THE SOURCE 
    SRC_MEMORY_NUMBERS: 
    MOV AL,[SI+1]
    
    CMP AL,48D
    JNB NOT_BELOOW_ASSCI_0
     MOV INVALID,1
     RET
    NOT_BELOOW_ASSCI_0:
    CMP AL,57D
    JA SOURCE_NUMBERS1
    SUB AL,48D
        
    MOV AH,1
    JMP SRC_FIND 
        
    SOURCE_NUMBERS1:CMP AL,65D
    JNB NOT_BELOOW_ASSCI_A
     MOV INVALID,1
     RET
    NOT_BELOOW_ASSCI_A:
        
    CMP AL,70D
    JNA NOT_ABOVE_ASSCI_F
     MOV INVALID,1
     RET
    NOT_ABOVE_ASSCI_F:
    SUB AL,55D
        
    SRC_FIND:
     MOV BX,OFFSET MEMORY ;;;ACCESS THE CORESPONDING MEMRY CELL
    MOV AH,0
    ADD BX,AX 
    
    CMP SRC_SIZE,1
    JNE MEMORY_SOURCE_2BYTE4
    MOV AL,[BX]
    MOV VALUE,AL
    RET
    
    MEMORY_SOURCE_2BYTE4: 
    MOV AL,[BX]
    MOV AH,[BX+1]
    MOV VALUE,AH
    MOV VALUE+1,AL
    RET   
    ;;;;;;;;;;;;;BEFORE ENTER THE SOURCE WE NEED TO SAVE THE VALUE OF THE BEGGING ACORDING TO DES MODE
    ;;;;;;;;;;;;;;; INTIALY WE COULD WORK WITH INS+7 
    
    PREREQUIRE:
    MOV CX,16
    CLEAR_VALUE:
        MOV BX,OFFSET  VALUE 
        ADD BX,CX
        DEC BX
        MOV BYTE PTR [BX],0
        LOOP CLEAR_VALUE     
    MOV SI,OFFSET INS_START
    ADD SI,SRC_START
    MOV CL,0 ;; COUNTER TO TELL US HOW MANY DIGITS THAT USER ENTERS 
    MOV CH,0  ;;;COUNTER TO TELL US HOW MANY BYTS
    MOV SRC_SIZE,0H
    FIND1:
        CMP CH,2D
        JNE MAD_1
        SUB CH,2
        INC SRC_SIZE
              
        MAD_1:MOV AL,[SI]
        MOV AH,0H 
        
        CMP AL,48D
        JB PREREQUIRE2
        CMP AL,57D
        JA MID
        SUB AL,48D
        
        MOV AH,1
        JMP FIND2 
        
        MID:CMP AL,65D
        JB PREREQUIRE2 
        
        CMP AL,70D
        JA PREREQUIRE2
        SUB AL,55D
        
        
        
        FIND2:
        INC CH 
        INC SI
        INC CL
     JMP FIND1
      
               
    PREREQUIRE2:
    ;;PUT THE NUMBER INTO THE ARRAY VALUE AFTER COUNTION ITS DIGITS
    
    CMP CH,1
    JNE SRC_PRE1
    INC SRC_SIZE
    
    SRC_PRE1:
    CMP DEST_FLAG,2
    JNE SRC_PRE2
    
    CMP SRC_SIZE,2
    JNB SRC_PRE2
    MOV SRC_SIZE,2
    
   SRC_PRE2: MOV AL,SRC_SIZE
    MOV  TEMP1,AL
    
    MOV BH,0 ;;COUNTER TO DETERMINE IF WE NEED TO MUL THE NUMBER BY 10 OR NOT          
    SOURCE_PUT_VALUE:
    ;;;RESTART BH IF IT ACHIVE 2
    CMP BH,2D
    JNE MAD_2
    SUB BH,2
    DEC TEMP1
    
    MAD_2:
    MOV CH,0                                       
    MOV SI,OFFSET INS_START          ;;;; SET SI TO THE CORRECT DEGIT
    ADD SI,SRC_START
    ADD SI,CX
    DEC SI
    
    
    MOV AL,[SI]  ;;;;; SET THE VALUE OF THE DIGID IN THE AL
    MOV AH,0H 
        
    CMP AL,48D
    JB MLTIEND1
    CMP AL,57D
    JA MID1
    SUB AL,48D
        
    MOV AH,1
    JMP FIND3 
        
    MID1:CMP AL,65D
    JB MLTIEND1 
        
    CMP AL,70D
    JA MLTIEND1
    SUB AL,55D
        
        
        
    FIND3:MOV AH,0H  
        MOV BL,10H 
        
        CMP BH,1
        JNE MAD_3
        MUL BL
        MAD_3: 
        ;;;; SET THE POSITION WE WANT TO GET VALUE FROM IT 
        MOV SI,OFFSET  VALUE     
        MOV DH,0
        MOV DL,TEMP1
       
        ADD SI,DX
        DEC SI
        ADD [SI],AL
   
    INC BH
    DEC CL
    JNZ SOURCE_PUT_VALUE
    
    MLTIEND1:  ;;ERROR
    RET
   SET_DES_SOURCE  ENDP
    
    
CHECK_ERROR  PROC FAR

      CMP src_flag,0                 ; src is memory
     JE src_0
     
     CMP src_flag,1                 ; src is 1 byte reg
     JE src_1
     
     CMP src_flag,2                 ; src is 2 byte reg
     JE src_2
     JNE src_3                      ; src is a value  
     
     
    ;#################################### <-( source is memory )-> ############################
     src_0:
          
     CMP dest_flag, 0               ; dest is memory  ( NOT Valid )
     JE memory_to_memory_err
     JNE dest_1_0 
     memory_to_memory_err:
     MOV INVALID,1
      RET 
      
     dest_1_0:                      ;example --> mov al,[0]    ( valid )
     CMP dest_flag, 1
     ;JE Execute_Instruction        
     JNE dest_2_0
     
     dest_2_0:                      ;example --> mov ax,[0]    ( valid )
     CMP dest_flag, 2
     ;JE Execute_Instruction        
     JNE dest_3_0       
     
     dest_3_0:                      ;example --> mov 2,[0]   ( NOT Valid )
     CMP dest_flag, 3
     JE memory_to_memory_err        
     
    ;#################################### <-( source is 1 byte reg )-> ############################
     src_1:
     
     CMP dest_flag, 0               ;example --> mov [5],al    ( valid ) ### check that location of memory <=15 
     ;JE Execute_Instruction        
     JNE dest_1_1 
      
     dest_1_1:                      ;example --> mov bl,al    ( valid )
     CMP dest_flag, 1
     ;JE Execute_Instruction        
     JNE dest_2_1
     
     dest_2_1:                      ;example --> mov ax,al    ( NOT Valid  )
     CMP dest_flag, 2
     JE size_mismatch_err           
     JNE dest_3_1                   
     size_mismatch_err:
     MOV INVALID,1
     RET 
     
     dest_3_1:                      ;example --> mov 4,al    ( Valid if memory location <= 15  )   ;;ALREDY DONE 
     CMP dest_flag, 3
     JE check_memory_location
     check_memory_location:
     CMP BYTE PTR [DI],15                    ; memory form 0 - F
     JA  invalid_memory_location 
     ;JNAE Execute_instruction    
     invalid_memory_location:
     MOV INVALID,1
      RET 
     
    ;#################################### <-( source is 2 byte reg )-> ############################
     src_2:
     
     CMP dest_flag, 0               ;example --> mov [5],ax    ( valid ) ### check that location of memory <=15
     ;JE Execute_Instruction        
     JNE dest_1_2 
      
     dest_1_2:                      ;example --> mov al,ax    ( NOT Valid )
     CMP dest_flag, 1
     JE size_mismatch_err           
     JNE dest_2_2
     
     dest_2_2:                      ;example --> mov bx,ax    ( Valid  )
     CMP dest_flag, 2
     ;JE Execute_Instruction        
     JNE dest_3_2
     
     
     
     dest_3_2:                      ;example --> mov 5,ax    ( Valid if memory location <= 15  )
     CMP dest_flag, 3
     JE check_memory_location
     
    ;#################################### <-( source is a value )-> ############################
     src_3:
     
     CMP dest_flag, 0                    ;example --> mov [2],value    ( valid )      ### check that location of memory <=15
     ;JE Execute_Instruction             
     JNE dest_1_3 
      
     dest_1_3:                           ;example --> mov al,value    ( Valid )
     CMP dest_flag, 1
     JE check_value_size_is_1Byte        
     JNE dest_2_3
     check_value_size_is_1Byte:
     CMP src_size,1
     JA  size_mismatch_err
     ;JNAE Execute_instruction
     
     
     dest_2_3:                           ;example --> mov ax,value    ( Valid )
     CMP dest_flag, 2
     JE check_value_size_is_2Byte        
     JNE dest_3_3
     check_value_size_is_2Byte:
     CMP src_size,2
     JA  size_mismatch_err
     ;JNA Execute_instruction
     
     
     
     
     dest_3_3:                          ;example --> mov 2,2   ( Valid for memory location <= 15 )
     CMP dest_flag, 3
     JE check_memory_location
     RET           
  CHECK_ERROR      ENDP 



END