%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
fx: db 'f(x)=12x-7 ',0

SECTION .text
global _start
_start:
    mov eax, fx
    call sprintLF
    pop ecx         ; Извлекаем из стека количество аргументов
    pop edx         ; Извлекаем из стека имя программы
    sub ecx, 1      ; Уменьшаем на 1, так как не считаем имя программы
    mov esi, 0      ; Инициализируем `esi` для хранения промежуточной суммы

next:
    cmp ecx, 0
    jz _end 
    pop eax         ; Извлекаем следующий аргумент из стека
    call atoi       ; Преобразуем символ в число
    imul eax, 12    ; Умножаем аргумент на 12
    sub eax, 7      ; Вычитаем 7 из результата
    add esi, eax    ; Добавляем результат к промежуточной сумме
    dec ecx         ; Уменьшаем счетчик аргументов
    jmp next        ; Переходим к следующему аргументу

_end:
    mov eax, msg    ; Вывод сообщения "Результат: "
    call sprint
    mov eax, esi    ; Записываем сумму в `eax`
    call iprintLF   ; Печать результата
    call quit       ; Завершение программы
