#include "../h/syscall_c.h"
#include  "../h/riscv.h"
void *mem_alloc(size_t size) {
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;

    Riscv::writeARegister(1, blocks);
    Riscv::writeARegister(0, 0x01);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::readARegister(0);
    return (void*) a0;


}

int mem_free (void* ptr) {
    Riscv::writeARegister(1, (uint64)ptr);
    Riscv::writeARegister(0, 0x02);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::readARegister(0);
    return (int) a0;
}

void* operator new(size_t size) {
    return mem_alloc(size);
}


void* operator new[](size_t size) {
    return mem_alloc(size);
}


void operator delete(void* ptr) noexcept {
    mem_free(ptr);
}

void operator delete[](void* ptr) noexcept {
    mem_free(ptr);
}