section .text
global my_memmove

my_memmove:
    mov     rax, rdi
    cmp     rdi, rsi
    je      .end    
    jg      .forward
    std             
    sub     rdi, rcx
    sub     rsi, rcx
    neg     rcx     
    dec     rcx     
    std          
       
.back:
    mov     al, byte [rsi+rcx] 
    mov     byte [rdi+rcx], al 
    loop    .back
    cld          
    jmp     .end 
.forward:
    cld          
    rep     movsb
.end:
    ret