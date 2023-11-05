%include 'in_out.asm'
SECTION .data
msg db 'Введите X: ', 0
rem db 'Результат выражения (8x + 6) * 10 = : ', 0

SECTION .bss
x resb 80

SECTION .text
global _start

_start:
    mov eax, msg
    call sprintLF
    mov ecx, x
    mov edx, 80
    call sread
    mov eax, x
    call atoi 

    mov ebx, 8
    mul ebx
    add eax, 6
    mov ebx, 10
    mul ebx

    mov ebx, eax 
    mov eax, rem
    call sprint
    mov eax, ebx
    call iprintLF
    call quit

