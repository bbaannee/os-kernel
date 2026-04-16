//
// Created by os on 4/9/26.
//

#ifndef PROJEKAT_BUFFER_H
#define PROJEKAT_BUFFER_H
#include "../h/Semaphore.h"

class Buffer {
    public:
Buffer();
    void put(char c);
    char get();

    bool isFull();
    bool isEmpty();
    private:
    int count;
    int head, tail;

    static const int capacity = 256;
    char buffer[capacity];

};



#endif //PROJEKAT_BUFFER_H
