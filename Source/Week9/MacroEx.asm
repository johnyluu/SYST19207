
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

MyMacro MACRO p1,p2,p3
    MOV AX, p1
    MOV bx, p2
    mov cx, p3
ENDM

org 100h

; add your code here 

MyMacro 1,2,3
MyMacro 4,5,dx

ret




