section .data
  ok: db "ok", 10
  oklen: equ $-ok

section .text
  global _start
  _start:
    mov rax,1
    mov rdi,1
    mov rsi,ok
    mov rdx,oklen
    syscall

    mov rax,60
    mov rdi,0
    syscall
