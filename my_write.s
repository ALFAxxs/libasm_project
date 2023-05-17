section .text
global my_write

my_write:
    mov     rax, 0x01
    mov     rdi, rdi
    mov     rsi, rsi
    mov     rdx, rdx
    syscall         
    ret