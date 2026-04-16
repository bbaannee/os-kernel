#include "../h/Thread.h"



#include "../h/riscv.h"
#include "../h/Scheduler.h"
#include "../h/syscall_c.h"

Thread* Thread::running = nullptr;

uint64 Thread::timeSliceCounter = 0;

Thread* Thread::sleepingHead = nullptr;

Thread* Thread::createThread(Body body, void* args, void* stack) {
    return new Thread(body, args, stack, DEFAULT_TIME_SLICE);
}


void Thread::dispatch() {
    Thread* old = running;

    // Ako nije gotova, vrati je u Scheduler
    if (old && !old->finished && old ->isReady) {
        Scheduler::instance().put(old);
    }

    // Uzmi sledeću
    running = Scheduler::instance().get();

    // Ako smo zapravo promenili nit, uradi switch
    if (old != running) {
        switchContext(&old->context, &running->context);
    }
}


void Thread::time_sleep(time_t n) {
    if (n == 0) return;

    Thread* curr = sleepingHead;
    Thread* prev = nullptr;

    while (curr && n >= curr->timeSleeping) {
        n -= curr->timeSleeping;
        prev = curr;
        curr = curr->waitnext;
    }

    Thread::running->timeSleeping = n;
    Thread::running->waitnext = curr;

    if (!prev) {
        sleepingHead = Thread::running;
    } else {
        prev->waitnext = Thread::running;
    }

    if (curr) {
        curr->timeSleeping -= n;
    }

    Thread::running->isReady = false;
    Thread::dispatch();
}

Thread::Thread(Body body, void* args, void* stack_space ,uint64 time): next(nullptr), waitnext(nullptr), body(body), args(args), stack((uint64*)stack_space),
                                                                       timeSlice(time), isReady(true), finished(false), semStatus(0), timeSleeping(0) {
    if (body != nullptr) {
        context.ra = (uint64)&threadWrapper;
        context.sp = ((uint64)stack_space + DEFAULT_STACK_SIZE) & ~0xFUL;
    } else {
        context.ra = 0;
        context.sp = 0;
    }
}

void Thread::threadWrapper(){

Riscv::popSppSpie();
if (running->body)running -> body(running->args);

running -> setFinished(true);

thread_dispatch();
}
