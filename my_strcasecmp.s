section .text
global my_strcasecmp

my_strcasecmp:
    xor     rax, rax      
.loop:
    mov     al, byte [rdi]
    cmp     al, byte [rsi]
    je      .continue     
    cmp     al, 0x41      
    jb      .lower1       
    cmp     al, 0x5A      
    ja      .lower1       
    sub     al, 0x20      
.lower1:

    cmp     byte [rsi], 0 
    je      .end          
    mov     ah, byte [rsi]
    cmp     ah, 0x41      
    jb      .lower2       
    cmp     ah, 0x5A      
    ja      .lower2       
    sub     ah, 0x20      
.lower2:
    cmp     al, ah        
    jne     .end          
    inc     rdi           
    inc     rsi           
    jmp     .loop         
.continue:
    inc     rdi           
    inc     rsi           
    test    al, al        
    jnz     .loop         
.end:
    sub     al, ah        
    ret