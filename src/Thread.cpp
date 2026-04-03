#include "../h/Thread.h"


#include "../h/riscv.h"
#include "../h/Scheduler.h"

Thread* Thread::running = nullptr;

Thread* Thread::createThread(Body body) {
    return new Thread(body);
}

void Thread::yield() {
    Riscv::pushAllRegs();

    Thread::dispatch();

     Riscv::popAllRegs();
}

void Thread::dispatch() {
    Thread* old = running;

    // Ako nije gotova, vrati je u Scheduler
    if (old && !old->finished) {
        Scheduler::instance().put(old);
    }

    // Uzmi sledeću
    running = Scheduler::instance().get();

    // Ako smo zapravo promenili nit, uradi switch
    if (old != running) {
        switchContext(&old->context, &running->context);
    }
}

