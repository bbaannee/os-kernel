#include "../h/Buffer.h"
#include "../h/Semaphore.h"

Buffer::Buffer(): count(0), head(0), tail(0){

}

void Buffer::put(char c) {
    buffer[tail] = c;
    tail = (tail + 1 ) % Buffer::capacity;
    count++;
}


char Buffer::get() {
    char x = buffer[head];
    head = (head + 1 ) % Buffer::capacity;
    count--;
    return x;
}

bool Buffer::isFull() {
    return count == capacity;
}

bool Buffer::isEmpty() {
    return count == 0;
}
