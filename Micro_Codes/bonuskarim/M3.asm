        EXTRN VALUE1:BYTE
        EXTRN VALUE2:BYTE
        EXTRN PRODUCT:BYTE
        PUBLIC SUBPROG2
.MODEL SMALL
.CODE
SUBPROG2 PROC FAR
        MOV AL,VALUE1
        MOV CL,VALUE2
        MUL CL ;MUL VALUE1 * VALUE2
        MOV PRODUCT,AL ;STORE PRODUCT
        RET
SUBPROG2 ENDP
END