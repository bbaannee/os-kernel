#include "../h/syscall_cpp.hpp"
#include "../h/riscv.h"
#include "../h/Thread.h"


    sem_t mainsem;
    extern void userMain();
void testwrapper(void*){
    userMain();
    sem_signal(mainsem);
}
void idlef(void*) {
    while (1) thread_dispatch();
}

int main() {
    
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    // Registruj main nit
    thread_t mainHandle;
    thread_create(&mainHandle, nullptr, nullptr);
    _thread::running = (_thread*)mainHandle;

    // Kreiraj idle nit
    thread_t idleHandle;
    thread_create(&idleHandle, idlef, nullptr);


    sem_open(&mainsem, 0);

    thread_t testthread;
    thread_create(&testthread, testwrapper, nullptr);
    

    sem_wait(mainsem);

    return 0;
}