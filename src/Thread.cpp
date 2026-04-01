#include "../h/Thread.h"


#include "../h/riscv.h"
#include "../h/Scheduler.h"

Thread* Thread::running = nullptr;

Thread* Thread::createThread(Body body, void *arg) {
    uint64* stack = nullptr;
    if (body != nullptr) {
        stack = new uint64[DEFAULT_STACK_SIZE / sizeof(uint64)];
    }

    Thread* t = new Thread(body, arg, stack);

    if (body != nullptr) {
        Scheduler::instance().put(t);
    }
    return t;
}

void Thread::yield() {
    Riscv::pushAllRegs();

    dispatch();

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
Thread::Thread(Body body, void *arg, uint64 *stackSpace)
    : next(nullptr), stack(stackSpace), body(body), arg(arg),finished(false)
{
    if (body != nullptr) {
        // SP ide na kraj steka (najviša adresa)
        this->context.sp = (uint64)&stack[DEFAULT_STACK_SIZE / sizeof(uint64)];
        // RA ide na wrapper
        this->context.ra = (uint64)&Thread::threadWrapper;
    } else {
        // Main nit (ona koja već radi)
        this->context.sp = 0;
        this->context.ra = 0;
    }
}

void Thread::threadWrapper() {
    // Svaka nova nit počinje odavde
    if (running->body) {
        running->body(running->arg);
    }
    running->finished = true;
    Thread::dispatch(); // Kada završi, trajno predaje procesor
}