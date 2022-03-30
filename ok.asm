; mode: nasm-linux

; $ nasm -felf64 ok.asm
; $ ld -o ok ok.o
; $ ./ok

BITS 64
global _start

segment .text

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, sr
    mov rdx, sl
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

segment .data

sr: db "ok", 10
sl: equ $-sr
