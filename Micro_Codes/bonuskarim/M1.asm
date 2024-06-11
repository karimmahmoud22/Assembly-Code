        EXTRN SUBPROG1:FAR
        EXTRN SUBPROG2:FAR
        PUBLIC VALUE1, VALUE2, SUM, PRODUCT
.MODEL SMALL
.STACK 64
.DATA
        VALUE1 DB 2
        VALUE2 DB 3
        SUM DB ?
        PRODUCT DB ?
.CODE
MAIN PROC FAR
        Mov Ax,@DATA
        MOV DS,Ax
        CALL SUBPROG1 ;CALL SUBPROG1 TO ADD VALUE1 + VALUE2
        CALL SUBPROG2 ;CALL SUBPROG2 TO MUL VALUE1 * VALUE2
        mov ah,2
        mov dl,SUM
        add dl,30h
        int 21h
        mov ah,2
        mov dl,'-'
        int 21h
        mov ah,2
        mov dl,PRODUCT
        add dl,30h
        int 21h
        MOV AH,4CH
        INT 21H ;GO BACK TO DOS
MAIN ENDP
END MAIN