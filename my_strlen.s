; my_strlen.s

global my_strlen

section .text
my_strlen:
    xor rax, rax     
    cmp byte [rdi], 0
    je .end          
.loop:
    inc rdi          
    inc rax          
    cmp byte [rdi], 0
    jne .loop        
.end:
    ret  