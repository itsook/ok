; ok.asm

;

global _start

section .text:

_start
    mov eax, 0x4                ; write syscall (#define __NR_write)
    mov ebx, 1                  ; stdout > fd
    mov ecx, message            ; use the message as buffer
    mov edx, message_length
    int 0x80                    ; invoke syscall
    
    mov eax, 0x1
    mov ebx, 0
    int 0x80


section .data:
    message: db "ok", 0xA
    message_length equ $-message
