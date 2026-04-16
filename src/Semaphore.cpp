#include "../h/Semaphore.h"
#include "../h/Thread.h"

kSemaphore::kSemaphore(int init):val(init), head(nullptr), tail(nullptr), closed(false) {
}

int kSemaphore::wait() {
    if (!kThread::running) return -1;
    if (val > 0) {
        val--;
    } else {
        kThread::running->isReady = false;
        kThread::running->semStatus = 0;

        add(kThread::running);
        kThread::dispatch();

        if (kThread::running->semStatus < 0) {
            return -1;
        }
    }
    return 0;
}

int kSemaphore::signal() {
    kThread* t = get();
    if (t) {
        t->isReady = true;
        Scheduler::instance().put(t);
    } else {
        val++;
    }

    return 0;
}

void kSemaphore::add(kThread* t) {
    if (!t) return;
    t->waitnext = nullptr;

    if (!head) {
        head = t;
    } else {
        tail->waitnext = t;
    }
    tail = t;
}
kThread* kSemaphore::get() {
    if (!head) {
        return nullptr;
    }

    kThread* t = head;
    head = head->waitnext;

    if (!head) {
        tail = nullptr;
    }

    t->waitnext = nullptr;
    return t;
}

int kSemaphore::close() {
    closed = true;

    while (head) {
        kThread* t = get();
        if (t) {
            t->isReady = true;

            t->semStatus = -1;

            Scheduler::instance().put(t);
        }
    }

    return 0;
}