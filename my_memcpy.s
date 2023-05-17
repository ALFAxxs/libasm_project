section .text
global my_memcpy


my_memcpy:
    mov     rax, rdi
    mov     rcx, rdx
    mov     rdx, rsi
    rep     movsb   
    ret