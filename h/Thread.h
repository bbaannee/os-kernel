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
	
	uint64 getTimeSlice() const {
	return timeSlice;
	}
    void setFinished(bool finished){Thread::finished = finished;};
private:
    // Konstruktor je privatan
    friend class Scheduler;
    friend class Riscv;

    Thread(Body body, uint64 timeSlice): next(nullptr), body(body),stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),context({
    (uint64)&threadWrapper, stack!= nullptr ? (uint64)& stack[STACK_SIZE] : 0}),
    timeSlice(timeSlice), finished(false) {
        if (body!=nullptr) Scheduler::instance().put(this);
    }


    struct Context {
        uint64 ra;
        uint64 sp;
    };
    
    static void threadWrapper();
    static void switchContext(Context *oldContext, Context *newContext);
    Thread* next;
    Body body;
    uint64* stack;
    Context context;
    uint64 timeSlice;


    bool finished;
	static uint64 timeSliceCounter;
	
    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
};


#endif
