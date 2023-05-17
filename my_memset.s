section .text
global my_memset

my_memset:
    mov     rax, rdi
    mov     rcx, rdx
    mov     rdx, rsi
    rep     stosb   
    ret