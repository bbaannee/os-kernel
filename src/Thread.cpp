#include "../h/Thread.h"


#include "../h/riscv.h"
#include "../h/Scheduler.h"

Thread* Thread::running = nullptr;

uint64 Thread::timeSliceCounter = 0;


Thread* Thread::createThread(Body body) {
    return new Thread(body, TIME_SLICE);
}

void Thread::yield() {
    
    __asm__ volatile ("ecall");
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


void Thread::threadWrapper(){

Riscv::popSppSpie();
running -> body();

running -> setFinished(true);

Thread::yield();
}
