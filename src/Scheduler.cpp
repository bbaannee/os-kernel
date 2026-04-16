#include "../h/Scheduler.h"

#include "../h/Thread.h"
#include "../h/printer.h"

void Scheduler::put(kThread* t) {
    if (!t) return;
    t->next = nullptr;

    if (!head) {
        head = t;
    } else {
        tail->next = t;
    }
    tail = t;
}

kThread* Scheduler::get() {
    if (!head) {
        return nullptr;
    }

    kThread* t = head;
    head = head->next;

    if (!head) {
        tail = nullptr;
    }

    t->next = nullptr;
    return t;
}