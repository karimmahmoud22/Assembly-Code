print macro arg    
lea dx,arg    
mov ah,09h    
int 21h    
endm

.DATA
cr equ 0dh    
lf equ 0ah    
m1 db cr,lf,"Enter the string:$"    
m2 db cr,lf,"Enter the sub string:$"    
m3 db cr,lf,"sub string found $"    
m4 db cr,lf,"sub string not found $"    
str db 100 dup(?)    
rev db 100 dup(?)    
count1 db 0000h    
count2 db 0000h    
count5 db 0000h    


count6 db 0000h    

mes db 'Found','$'
NEWLINE DB 10,13,'$'


.CODE

start:  mov ax,data        
mov ds,ax        
mov si,offset str        
mov di,offset rev        
mov cl,00h        
print m1

l0:mov ah,01h        
int 21h        
cmp al,0dh        
je l1        
mov [si],al        
inc si        
inc cl        
mov count1,cl       
mov count5,cl
jmp l0    

l1:print m2       
mov cl,00h

l2:mov ah,01h       
int 21h       
cmp al,0dh       
je l3       
mov [di],al       
inc di       
inc cl       
mov count2,cl        
jmp l2

l3:mov si,offset str       
mov di,offset rev 

lpag:mov al,[si]
cmp al,00
jz asd       
mov bl,[di]       
cmp al,bl       
jne lpne
inc si      
inc bh
dec count2       
jnz lpne       

lpne: inc di          
dec count1          
mov dl,count1          
cmp dl,00h
jnz lpag


kk:
mov bl,count5
mov count5,bl          
mov dl,bl
mov ch,count5
mov count1,ch
inc si
mov di , offset rev
jmp lpag


asd:
inc bh
MOV DX,OFFSET NEWLINE
MOV AH,9
INT 21H 
mov ah, 2
add bh,30H
mov dl,bh
int 21h  

end start