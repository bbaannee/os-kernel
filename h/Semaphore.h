//
// Created by os on 4/6/26.
//

#ifndef PROJECT_BASE_V1_1_kSemaphore_H
#define PROJECT_BASE_V1_1_kSemaphore_H
#include "../lib/hw.h"
#include "../h/MemoryAllocator.h"
class kThread;

class kSemaphore {
public:

    void* operator new(size_t size){
        void* ptr = MemoryAllocator::kmalloc(size);
        return ptr;
    }
    kSemaphore(int init);

    int wait();

    int signal();

    int close();

private:

    void add(kThread* t);

    kThread* get ();



    int val;

    kThread* head;
    kThread* tail;
    bool closed;
};


#endif //PROJECT_BASE_V1_1_kSemaphore_H
