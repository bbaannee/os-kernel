#include "../h/Scheduler.h"
#include "../h/Thread.h"
void Scheduler::put(Thread* t) {
    if (!t) return;
    t->next = nullptr;

    if (!head) {
        head = t;
    } else {
        tail->next = t;
    }
    tail = t;
}

Thread* Scheduler::get() {
    if (!head) {
        return nullptr;
    }

    Thread* t = head;
    head = head->next;

    if (!head) {
        tail = nullptr;
    }

    t->next = nullptr;
    return t;
}