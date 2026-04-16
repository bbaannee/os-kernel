 #ifndef PROJEKAT_kThread_H
#define PROJEKAT_kThread_H

#include "../lib/hw.h"
#include "MemoryAllocator.h"
#include "Scheduler.h"

typedef unsigned long time_t;
class kThread {
public:

	void* operator new(size_t size){
		void* ptr = MemoryAllocator::kmalloc(size);
		return ptr;
	}
    ~kThread() {delete stack;};
    using Body = void (*)(void*);

    static kThread* createkThread(Body body, void* args, void* stack);
    
    static kThread* running;



    static void dispatch();

    bool isFinished(){return finished;};
	
	uint64 getTimeSlice() const {
		return timeSlice;
	}
    void setFinished(bool finished){kThread::finished = finished;};

	void time_sleep(time_t n);
private:
    // Konstruktor je privatan
    friend class Scheduler;
    friend class Riscv;
	friend class kSemaphore;
	kThread(Body body, void* args, void* stack_space ,uint64 time = DEFAULT_TIME_SLICE);


	struct Context {
    	uint64 ra;
    	uint64 sp;
    };
    
    static void kThreadWrapper();
    static void switchContext(Context *oldContext, Context *newContext);
    kThread* next;
	kThread* waitnext;


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
	static kThread* sleepingHead;
};


#endif
