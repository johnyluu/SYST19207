
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h

; add your code here
; write a program to check given number is divided by 5 or not
mov ax, 6
mov bx, 5
div bx
cmp dx, 0
 JE equal
 print 'is not divisible by 5'
 hlt
equal: 
    print 'is divisble by 5'
    hlt



ret




