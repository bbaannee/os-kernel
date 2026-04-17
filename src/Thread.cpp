#include "../h/Thread.h"



#include "../h/riscv.h"
#include "../h/Scheduler.h"
#include "../h/syscall_c.h"

_thread* _thread::running = nullptr;

uint64 _thread::timeSliceCounter = 0;

_thread* _thread::sleepingHead = nullptr;

_thread* _thread::createThread(Body body, void* args, void* stack) {
    return new _thread(body, args, stack, DEFAULT_TIME_SLICE);
}


void _thread::dispatch() {
    _thread* old = running;

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


void _thread::time_sleep(time_t n) {
    if (n == 0) return;

    _thread* curr = sleepingHead;
    _thread* prev = nullptr;

    while (curr && n >= curr->timeSleeping) {
        n -= curr->timeSleeping;
        prev = curr;
        curr = curr->waitnext;
    }

    _thread::running->timeSleeping = n;
    _thread::running->waitnext = curr;

    if (!prev) {
        sleepingHead = _thread::running;
    } else {
        prev->waitnext = _thread::running;
    }

    if (curr) {
        curr->timeSleeping -= n;
    }

    _thread::running->isReady = false;
    _thread::dispatch();
}

_thread::_thread(Body body, void* args, void* stack_space ,uint64 time): next(nullptr), waitnext(nullptr), body(body), args(args), stack((uint64*)stack_space),
                                                                       timeSlice(time), isReady(true), finished(false), semStatus(0), timeSleeping(0) {
    if (body != nullptr) {
        context.ra = (uint64)&threadWrapper;
        context.sp = ((uint64)stack_space + DEFAULT_STACK_SIZE) & ~0xFUL;
    } else {
        context.ra = 0;
        context.sp = 0;
    }
}

void _thread::threadWrapper(){

Riscv::popSppSpie();
if (running->body)running -> body(running->args);

running -> setFinished(true);

thread_dispatch();
}
