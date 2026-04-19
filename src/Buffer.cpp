#include "../h/Buffer.h"
#include "../h/Semaphore.h"

kBuffer::kBuffer(): count(0), head(0), tail(0){

}

void kBuffer::put(char c) {
    buffer[tail] = c;
    tail = (tail + 1 ) % kBuffer::capacity;
    count++;
}


char kBuffer::get() {
    char x = buffer[head];
    head = (head + 1 ) % kBuffer::capacity;
    count--;
    return x;
}

bool kBuffer::isFull() {
    return count == capacity;
}

bool kBuffer::isEmpty() {
    return count == 0;
}
