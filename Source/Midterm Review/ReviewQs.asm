
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h

;32. 3 * 2 + (4-2), result in AX when done
; (4-2)
;MOV bx,4
;MOV cx,2
;sub bx,cx
       
; 3*2
;MOV ax,3 
;MOV dx,2
;mul dx

;6+2
;ADD ax, bx
  
  
;33 write my name in console
;print 'Johny'


;34 set DS register to 0x2000
;store word valie 0xCDEF at offset 0x0FF0 in that segment
;what is effective address of location
;where value 0xCDEF was stored 
;sets ds to 2000h   

;mov ax, 0x2000
;MOV ds, ax
;mov ax, 0xCDEF
;mov [0x0FF0], ax 

; effective address = ds:offset
; eff = 2000h x 10h + 0ff0
; eff = 20000h +0ff0
; eff = 20ff0h
              
              
MOV AL, 1
MOV BL, 3
CALL m2
CALL m2
CALL m2
CALL m2 
CALL m2 
CALL m2
CALL m2
CALL m2
CALL m2
CALL m2
CALL m2  

RET  

m2 PROC
MUL BL
RET
m2 ENDP
END





