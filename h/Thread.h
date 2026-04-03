#ifndef PROJEKAT_THREAD_H
#define PROJEKAT_THREAD_H

#include "../lib/hw.h"
#include "MemoryAllocator.h"
#include "Scheduler.h"

class Thread {
public:
    ~Thread() {delete[] stack;};
    using Body = void (*)();

    static Thread* createThread(Body body);
    
    static Thread* running;

    static void yield();


    static void dispatch();

    bool isFinished(){return finished;};

    void setFinished(bool finished){Thread::finished = finished;};
private:
    // Konstruktor je privatan
    friend class Scheduler;

    Thread(Body body): next(nullptr), body(body),stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),context({
    body!=nullptr ? (uint64) body : 0, stack!= nullptr ? (uint64)& stack[STACK_SIZE] : 0}), finished(false) {
        if (body!=nullptr) Scheduler::instance().put(this);
    }


    struct Context {
        uint64 ra;
        uint64 sp;
    };
    static void switchContext(Context *oldContext, Context *newContext);
    Thread* next;
    Body body;
    uint64* stack;
    Context context;


    bool finished;

    static uint64 constexpr STACK_SIZE = 1024;
};


#endif
