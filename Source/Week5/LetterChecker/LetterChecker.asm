
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h

; to check if given bl is a letter and convert
; to opposite case size.

mov bl, 'Z'

cmp bl, 'A'
jl not_a_letter

cmp bl, 'Z'
jle convert_to_lower

cmp bl, 'a'
jl not_a_letter

cmp bl, 'z'
jle convert_to_upper

not_a_letter:
    print 'is not a letter'
    jmp stop
    
convert_to_lower:
    print 'converted to lower'
    add bl, 20h
    jmp stop
    
convert_to_upper:
    print 'converted to upper'
    sub bl, 20h
    
stop:
    ret




