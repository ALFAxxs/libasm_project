section .text
global my_index


my_index:
    mov     rax, rdi
    mov     al, dil 
    repne   scasb   
    jz      .found  
    xor     rax, rax 
    ret
.found:
    dec     rdi     
    mov     rax, rdi
    ret
