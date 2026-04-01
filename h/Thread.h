#ifndef PROJEKAT_THREAD_H
#define PROJEKAT_THREAD_H

#include "../lib/hw.h"
#include "MemoryAllocator.h"

class Thread {
public:
    using Body = void (*)(void*);
    
    // Staticka metoda za kreiranje
    static Thread* createThread(Body body, void* arg = nullptr);
    
    static Thread* running;
    static void yield();


    static void dispatch();


private:
    // Konstruktor je privatan
    friend class Scheduler;
    Thread(Body body, void* arg, uint64* stackSpace);

    struct Context {
        uint64 ra;
        uint64 sp;
    };
    static void switchContext(Context *oldContext, Context *newContext);
    Thread* next;
    Context context;
    uint64* stack; 
    Body body;
    void* arg;
    bool finished;

    // Wrapper koji pokrece body i sredjuje nit nakon zavrsetka
    static void threadWrapper();
};


#endif
