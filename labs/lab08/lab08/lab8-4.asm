%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
fx: db 'f(x)=2x+15 ',0

SECTION .text
global _start
_start:
mov eax, fx
call sprintLF
pop ecx 
pop edx
sub ecx,1
mov esi, 0

next:
cmp ecx,0h
jz _end 
pop eax
call atoi
mov ebx,2 
mul ebx
add eax,15
add esi,eax

loop next

_end:
mov eax, msg
call sprint
mov eax, esi
call iprintLF
call quit

