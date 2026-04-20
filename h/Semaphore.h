//
// Created by os on 4/6/26.
//

#ifndef PROJECT_BASE_V1_1_SEMAPHORE_H
#define PROJECT_BASE_V1_1_SEMAPHORE_H
#include "../h/MemoryAllocator.h"
class _thread;

class _sem {
public:

    void* operator new(size_t size){
        void* ptr = MemoryAllocator::kmalloc(size);
        return ptr;
    }
    _sem(int init);

    int wait();

    int signal();

    int close();

private:

    void add(_thread* t);

    _thread* get ();



    int val;

    _thread* head;
    _thread* tail;
    bool closed;
};


#endif //PROJECT_BASE_V1_1_SEMAPHORE_H
