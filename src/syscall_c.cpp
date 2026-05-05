#include "../h/syscall_c.h"
#include  "../h/riscv.h"
#include "../h/Console.h"


void *mem_alloc(size_t size) {
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;

    Riscv::w_a(1, blocks);
    Riscv::w_a(0, 0x01);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (void*) a0;


}

int mem_free (void* ptr) {
    Riscv::w_a(1, (uint64)ptr);
    Riscv::w_a(0, 0x02);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;
}

int thread_create(thread_t* handle, void(*start_routine)(void *), void *arg) {
    void* volatile stack = nullptr;
    if (start_routine) {
        stack = mem_alloc(DEFAULT_STACK_SIZE);
    }


    Riscv::w_a(4, (uint64)stack);
    Riscv::w_a(3, (uint64)arg);
    Riscv::w_a(2, (uint64)start_routine);
    Riscv::w_a(1, (uint64)handle);

    Riscv::w_a(0, 0x11);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;
}

void thread_dispatch() {
    Riscv::w_a(0, 0x13);

    __asm__ volatile("ecall");

}

int thread_exit() {
    Riscv::w_a(0, 0x12);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;

}

int thread_create_inactive(thread_t *handle, void (*start)(void *), void *arg)
{
    void* volatile stack = nullptr;
    if (start) {
        stack = mem_alloc(DEFAULT_STACK_SIZE);
    }

    Riscv::w_a(4, (uint64)stack);
    Riscv::w_a(3, (uint64)arg);
    Riscv::w_a(2, (uint64)start);
    Riscv::w_a(1, (uint64)handle);
    Riscv::w_a(0, 0x18);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;
}
int thread_activate(thread_t handle)
{
     Riscv::w_a(1, (uint64)handle);
    Riscv::w_a(0, 0x19);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;
}
int sem_open(sem_t *handle, unsigned init)
{
    Riscv::w_a(2, (uint64)init);
    Riscv::w_a(1, (uint64)handle);

    Riscv::w_a(0, 0x21);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;
}

int sem_close(sem_t handle) {
    Riscv::w_a(1, (uint64)handle);

    Riscv::w_a(0, 0x22);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;
}

int sem_wait(sem_t id) {
    Riscv::w_a(1, (uint64)id);

    Riscv::w_a(0, 0x23);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;
}

int sem_signal(sem_t id) {
    Riscv::w_a(1, (uint64)id);

    Riscv::w_a(0, 0x24);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;
}

int sem_wait_n(sem_t id, unsigned n)
{
    Riscv::w_a(2, (uint64)n);
    Riscv::w_a(1, (uint64)id);

    Riscv::w_a(0, 0x25);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;
}
int sem_signal_n(sem_t id, unsigned n)
{   
    Riscv::w_a(2, (uint64)n);
    Riscv::w_a(1, (uint64)id);

    Riscv::w_a(0, 0x26);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;
}
int time_sleep(time_t t)
{
    Riscv::w_a(1, (uint64)t);
    Riscv::w_a(0, 0x31);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (int) a0;
}

char getc() {
     sem_wait(reinterpret_cast<sem_t>(_console::getInSem()));
    Riscv::w_a(0, 0x41);

    __asm__ volatile("ecall");

    volatile long a0 = Riscv::r_a(0);
    return (char) a0;
}

void putc(char c) {
    sem_wait(reinterpret_cast<sem_t>(_console::getOutSem()));
    Riscv::w_a(1, (uint64)c);
    Riscv::w_a(0, 0x42);

    __asm__ volatile("ecall");

}

