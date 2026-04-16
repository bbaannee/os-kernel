 #ifndef PROJEKAT_THREAD_H
#define PROJEKAT_THREAD_H

#include "../lib/hw.h"
#include "MemoryAllocator.h"
#include "Scheduler.h"

typedef unsigned long time_t;
class Thread {
public:

	void* operator new(size_t size){
		void* ptr = MemoryAllocator::kmalloc(size);
		return ptr;
	}
    ~Thread() {delete stack;};
    using Body = void (*)(void*);

    static Thread* createThread(Body body, void* args, void* stack);
    
    static Thread* running;



    static void dispatch();

    bool isFinished(){return finished;};
	
	uint64 getTimeSlice() const {
		return timeSlice;
	}
    void setFinished(bool finished){Thread::finished = finished;};

	void time_sleep(time_t n);
private:
    // Konstruktor je privatan
    friend class Scheduler;
    friend class Riscv;
	friend class Semaphore;
	Thread(Body body, void* args, void* stack_space ,uint64 time = DEFAULT_TIME_SLICE);


	struct Context {
    	uint64 ra;
    	uint64 sp;
    };
    
    static void threadWrapper();
    static void switchContext(Context *oldContext, Context *newContext);
    Thread* next;
	Thread* waitnext;


	Body body;
	void* args;
    uint64* stack;
    Context context;
    uint64 timeSlice;
	bool isReady;

    bool finished;
	int semStatus; //0 normal, -1 closed sem while wiating
	uint64 timeSleeping;
	static uint64 timeSliceCounter;
	static Thread* sleepingHead;
};


#endif
