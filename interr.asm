section .data
        msg db "Hello, World!", 10
        len equ $-msg
section .text
global _start
 
_start:
        ; вывод сообщения на экран
        mov eax, 4              ; номер системной функции sys_write
        mov ebx, 1              ; файл дескриптор -  1 (стандартный вывод - stdout)
        mov ecx, msg            ; сообщение для вывода
        mov edx, len            ; длина сообщения
        int 0x80                ; генерируем прерывание
        ; выход из программы
        mov eax, 1              ; номер системной функции sys_exit
        xor ebx, ebx            ; код возврата - здесь 0
        int 0x80                ; генерируем прерывание
