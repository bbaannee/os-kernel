#include "../lib/hw.h"

#include "../lib/console.h"
#include  "../h/riscv.h"
#include "../h/MemoryAllocator.h"
#include "../h/syscall_c.h"


extern "C" void trapRoutin();
int main() {

    Riscv::w_stvec((uint64)& Riscv::supervisorTrap);
    char* niz = (char*)mem_alloc(10*sizeof(char));
    if(niz == nullptr) __putc('?');
    // ...
    int status = mem_free(niz);
    if(status != 0) __putc('?');
return 0;
}
