MACRO page_1

MOV AH,2
    MOV DL,30
    MOV DH,10
    INT 10h


    MOV AH,9
    LEA DX,Msg1
    INT 21H 
    
    MOV AH,2
    MOV DL,30
    MOV DH,12
    INT 10h


    MOV AH,9
    LEA DX,Msg2
    INT 21H
    
    MOV AH,2
    MOV DL,30
    MOV DH,14
    INT 10h
    
    MOV AH,9
    LEA DX,Msg3
    INT 21H
    
    
    
    mov cx,1
    pageLoop:
    mov cx,1    ;infinite loop
    mov ah,0
    int 16h
    
    check_F1:
        cmp ah,60       ; must be changed to the scan code of f1 = 59
        JE endLabel
     
     
    check_F2:
        cmp ah,60
        JE endLabel 
     
     
    check_Esc:cmp al,27
        JE endLabel
        JNE pageLoop  
    
    endLabel:hlt

ENDM