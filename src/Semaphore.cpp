#include "../h/Semaphore.h"
#include "../h/Thread.h"

Semaphore::Semaphore(int init):val(init), head(nullptr), tail(nullptr), closed(false) {
}

int Semaphore::wait() {
    if (!Thread::running) return -1;
    if (val > 0) {
        val--;
    } else {
        Thread::running->isReady = false;
        Thread::running->semStatus = 0;

        add(Thread::running);
        Thread::dispatch();

        if (Thread::running->semStatus < 0) {
            return -1;
        }
    }
    return 0;
}

int Semaphore::signal() {
    Thread* t = get();
    if (t) {
        t->isReady = true;
        Scheduler::instance().put(t);
    } else {
        val++;
    }

    return 0;
}

void Semaphore::add(Thread* t) {
    if (!t) return;
    t->waitnext = nullptr;

    if (!head) {
        head = t;
    } else {
        tail->waitnext = t;
    }
    tail = t;
}
Thread* Semaphore::get() {
    if (!head) {
        return nullptr;
    }

    Thread* t = head;
    head = head->waitnext;

    if (!head) {
        tail = nullptr;
    }

    t->waitnext = nullptr;
    return t;
}

int Semaphore::close() {
    closed = true;

    while (head) {
        Thread* t = get();
        if (t) {
            t->isReady = true;

            t->semStatus = -1;

            Scheduler::instance().put(t);
        }
    }

    return 0;
}