section .text
global my_strncmp

my_strncmp:
    mov     rax, 0        
    xor     rcx, rcx      
.loop:
    cmp     rcx, rdx      
    je      .end          
    mov     al, byte [rdi]
    mov     ah, byte [rsi]
    cmp     al, ah        
    jne     .end          
    test    al, al        
    je      .end          
    inc     rdi           
    inc     rsi           
    inc     rcx           
    jmp     .loop         
.end:
    sub     al, ah        
    
    ret