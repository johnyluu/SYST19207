
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'    ;to use print
org 100h  


;CMP instruction for conditional jumps, 
;compares

;mov AL, 5
;mov bl, 6
;cmp AL, BL; ZF= 1 (equal), if ZF=0 (not Equal)
  
  
;jmp instruction for unconditional jump
;    mov al, 5
;    jmp label1 ; jump over 2 lines
;    PRINT 'Not Jumped'
;    Mov AL,0 
;label1:
;    print 'Got Here!'
 

;JNE for not equal
;    mov AL,3
;    cmp al,3
;    JNE label1
;    print 'Al =3.'
;    jmp exit
;label1:
;    print 'AL <>3'
;    exit: 
 

; looping example
;mov ax,0              ; ax like acumulator
;mov bx,20              ; counter like i
;back:
;    add ax, bx
;    sub bx, 2         ;take away x each time
;    cmp bx, 0         ;compare bx with 0 if not loop again
;    jne back
;    hlt

  
; looping with LOOP
; automatically decrements CX register by 1
; jumps to label if CX does not equal 0
;mov ax, 0
;mov cx, 5
;back:
;    add ax, cx
;    LOOP back
;    hlt
 
 

; if construct does not exist exactly, use cmp
    mov ax, -7
    cmp ax, 0
    JGE pos        ; if ax is more than 0 then skip negation
    NEG ax
pos:
    hlt
    
ret