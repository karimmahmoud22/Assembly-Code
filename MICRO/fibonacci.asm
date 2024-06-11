;Author: Ahmed Asaad
;Title:  The sum of the first ten nums in fibonachi series: 0 + 1 + 1 + 2 + 3 + 5 + 8 + 13 + 21 + 34 = 58h = 88

        .MODEL SMALL
        .STACK 64
        .Data


        .code

MAIN PROC FAR
    
    ;APPLY the technique of two pointers, prevous and current
    mov al, 1   ;Assume AL, is the previous element
    mov ah, 1   ;Assume AH, is the currnet elemnt
    mov bl, 2   ;This is the variable which contains the sum of the numbers
    mov cx, 7   ;Counter to count the rest of the FIB series as we have already stored the first three numbers
        
    myLoop: 
        mov dl, ah ;TEMP variable to store the current value of ah before adding
        add ah, al ;Add al to ah and store the next number in ah
        mov al, dl ;Make al point to the previous element in the series
        add bl, ah ;Add the current number to bl to sum all the numbers in the series
        
        dec cx     ;Decrement the Counter
    jnz myLoop  
    
    ;Stor the Result in AX
    mov ah, 0
    mov al, bl
    
    HLT
    
MAIN ENDP
End MAIN