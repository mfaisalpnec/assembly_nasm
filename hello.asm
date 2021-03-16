section .data
        text db "Hello, Pakistan!!",10
        text_L  equ $-text

section .text
        global _start

_start:
        mov rax,    1
        mov rdi,    1
        mov rsi,    text
        mov rdx,    text_L
        syscall

        mov rax,    60
        mov rdi,    0
        syscall