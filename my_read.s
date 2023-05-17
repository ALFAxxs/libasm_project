section .text
global my_read

my_read:
    mov     rax, 0x00
    mov     rdi, rdi 
    mov     rsi, rsi 
    mov     rdx, rdx 
    syscall          
    ret