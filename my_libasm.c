#include <stdio.h>
#include "my_libasm.h"

int main() {
    
    
     const char* str = "Hello, world!";
    // int len = my_strlen(str);
    // printf("Length: %d\n", len);

    // char* found = my_strchr(str, 'o');
    // if (found != NULL) {
    //     printf("Character found: %c\n", *found);
    // }

    // char buffer[20];
    // my_memset(buffer, 0, sizeof(buffer));
    // printf("Buffer after memset: %s\n", buffer);

    // const char* src = "Copy this";
    // char dest[20];
    // my_memcpy(dest, src, sizeof(dest));
    // printf("Copied string: %s\n", dest);

    const char* str1 = "abc";
    const char* str2 = "abd";
    int result = my_strcmp(str1, str2);
    if (result < 0) {
        printf("String 1 is less than String 2\n");
    } else if (result > 0) {
        printf("String 1 is greater than String 2\n");
    } else {
        printf("String 1 is equal to String 2\n");
    }

    return 0;
}