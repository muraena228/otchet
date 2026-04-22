#include <unistd.h>  // для write

int main() {
    const char msg[] = "Hello, World!\n";
    // sys_write(1, msg, sizeof(msg)-1)  -- вычитаем 1, если не хотим '\0'
    write(1, msg, sizeof(msg) - 1);
    return 0;  // sys_exit(0)
}
