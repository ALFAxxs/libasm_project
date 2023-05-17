section .text
global my_strcmp

my_strcmp:
    xor     rax, rax      
.loop:
    mov     al, byte [rdi]
    cmp     al, byte [rsi]
    jne     .end          
    inc     rdi           
    inc     rsi           
    test    al, al        
    jnz     .loop         
    jmp     .equal        
.end:
    sub     al, byte [rsi]
.equal:
    ret