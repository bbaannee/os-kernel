#include "../h/syscall_c.h"
#include "../h/riscv.h"

void *mem_alloc(size_t size) {
    // Izračunaj broj blokova (64 bajta po bloku)
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    uint64 ret;

    __asm__ volatile (
        "mv a1, %[blk];"    // 1. Stavi broj blokova u a1
        "li a0, 0x01;"      // 2. Stavi kod operacije (1) u a0
        "ecall;"            // 3. Izvrši sistemski poziv
        "mv %[res], a0;"    // 4. Sačuvaj rezultat koji je kernel vratio u a0
        : [res] "=r" (ret)              // Izlaz: promenljiva 'ret'
        : [blk] "r" (blocks)            // Ulaz: promenljiva 'blocks'
        : "a0", "a1", "memory"          // Javljamo kompajleru da menjamo ove registre
    );

    return (void*)ret;
}

int mem_free(void* ptr) {
    uint64 ret;

    __asm__ volatile (
        "mv a1, %[p];"      // 1. Stavi pokazivač u a1
        "li a0, 0x02;"      // 2. Stavi kod operacije (2) u a0
        "ecall;"            // 3. Izvrši sistemski poziv
        "mv %[res], a0;"    // 4. Sačuvaj rezultat u 'ret'
        : [res] "=r" (ret)
        : [p] "r" (ptr)
        : "a0", "a1", "memory"
    );

    return (int)ret;
}

// Ostali operatori ostaju isti jer samo pozivaju gornje funkcije
void* operator new(size_t size) { return mem_alloc(size); }
void* operator new[](size_t size) { return mem_alloc(size); }
void operator delete(void* ptr) noexcept { mem_free(ptr); }
void operator delete[](void* ptr) noexcept { mem_free(ptr); }