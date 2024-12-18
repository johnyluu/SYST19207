
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h
mov bl, 'a'

cmp bl,'A'
jl not_a_letter

cmp bl,'Z'
jle convert_to_lower

cmp bl,'a'
jl Not_A_Letter

cmp bl,'z'
jle convert_to_upper

not_a_letter:                                                                                                           
jmp stop

convert_to_lower:
add bl,20h
jmp stop

convert_to_upper:
sub bl,20h

stop:
ret

DEFINE_PRINT_STRING
DEFINE_GET_STRING   
   
END