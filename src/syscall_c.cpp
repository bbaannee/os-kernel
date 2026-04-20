#include "../h/syscall_c.h"
#include  "../h/riscv.h"
#include "../h/Console.h"
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

int thread_create(thread_t* handle, void(*start_routine)(void *), void *arg) {
    void* volatile stack = nullptr;
    if (start_routine) {
        stack = mem_alloc(DEFAULT_STACK_SIZE);
    }


    Riscv::writeARegister(4, (uint64)stack);
    Riscv::writeARegister(3, (uint64)arg);
    Riscv::writeARegister(2, (uint64)start_routine);
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x11);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::readARegister(0);
    return (int) a0;
}

void thread_dispatch() {
    Riscv::writeARegister(0, 0x13);

    __asm__ volatile("ecall");

}

int thread_exit() {
    Riscv::writeARegister(0, 0x12);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::readARegister(0);
    return (int) a0;

}

int sem_open(sem_t*handle, unsigned init) {
    Riscv::writeARegister(2, (uint64)init);
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x21);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::readARegister(0);
    return (int) a0;

}

int sem_close(sem_t handle) {
    Riscv::writeARegister(1, (uint64)handle);

    Riscv::writeARegister(0, 0x22);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::readARegister(0);
    return (int) a0;
}

int sem_wait(sem_t id) {
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x23);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::readARegister(0);
    return (int) a0;
}

int sem_signal(sem_t id) {
    Riscv::writeARegister(1, (uint64)id);

    Riscv::writeARegister(0, 0x24);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::readARegister(0);
    return (int) a0;
}

int time_sleep(time_t t) {
    Riscv::writeARegister(1, (uint64)t);
    Riscv::writeARegister(0, 0x31);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::readARegister(0);
    return (int) a0;
}

char getc() {
     sem_wait(reinterpret_cast<sem_t>(_console::getInSem()));
    Riscv::writeARegister(0, 0x41);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::readARegister(0);
    return (char) a0;
}

void putc(char c) {
    sem_wait(reinterpret_cast<sem_t>(_console::getOutSem()));
    Riscv::writeARegister(1, (uint64)c);
    Riscv::writeARegister(0, 0x42);

    __asm__ volatile("ecall");

}

