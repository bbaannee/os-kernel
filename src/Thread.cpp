#include "../h/Thread.h"



#include "../h/riscv.h"
#include "../h/Scheduler.h"
#include "../h/syscall_c.h"

kThread* kThread::running = nullptr;

uint64 kThread::timeSliceCounter = 0;

kThread* kThread::sleepingHead = nullptr;

kThread* kThread::createkThread(Body body, void* args, void* stack) {
    return new kThread(body, args, stack, DEFAULT_TIME_SLICE);
}


void kThread::dispatch() {
    kThread* old = running;

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


void kThread::time_sleep(time_t n) {
    if (n == 0) return;

    kThread* curr = sleepingHead;
    kThread* prev = nullptr;

    while (curr && n >= curr->timeSleeping) {
        n -= curr->timeSleeping;
        prev = curr;
        curr = curr->waitnext;
    }

    kThread::running->timeSleeping = n;
    kThread::running->waitnext = curr;

    if (!prev) {
        sleepingHead = kThread::running;
    } else {
        prev->waitnext = kThread::running;
    }

    if (curr) {
        curr->timeSleeping -= n;
    }

    kThread::running->isReady = false;
    kThread::dispatch();
}

kThread::kThread(Body body, void* args, void* stack_space ,uint64 time): next(nullptr), waitnext(nullptr), body(body), args(args), stack((uint64*)stack_space),
                                                                       timeSlice(time), isReady(true), finished(false), semStatus(0), timeSleeping(0) {
    if (body != nullptr) {
        context.ra = (uint64)&kThreadWrapper;
        context.sp = ((uint64)stack_space + DEFAULT_STACK_SIZE) & ~0xFUL;
    } else {
        context.ra = 0;
        context.sp = 0;
    }
}

void kThread::kThreadWrapper(){

Riscv::popSppSpie();
if (running->body)running -> body(running->args);

running -> setFinished(true);

kThread_dispatch();
}
