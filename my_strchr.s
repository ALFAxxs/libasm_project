section .text
global my_strchr

my_strchr:
    mov     rcx, rdi
    mov     al, dil 
    repne   scasb   
    jz      .found  
    xor     rax, rax
    ret
.found:
    dec     rdi     
    mov     rax, rdi
    ret