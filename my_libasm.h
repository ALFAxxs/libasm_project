#ifndef MY_LIBASM_H
#define MY_LIBASM_H


int my_strlen(const char* str);
char* my_strchr(const char* str, int c);
void my_memset(void* ptr, int value, int num);
void* my_memcpy(void* destination, const void* source, int num);
int my_strcmp(const char* str1, const char* str2);
void* my_memmove(void* destination, const void* source, int num);
int my_strncmp(const char* str1, const char* str2, int num);
int my_strcasecmp(const char* str1, const char* str2);
char* my_index(const char* str, int c);
int my_read(int fd, void* buffer, int count);
int my_write(int fd, const void* buffer, int count);

#endif  // MY_LIBASM_H
