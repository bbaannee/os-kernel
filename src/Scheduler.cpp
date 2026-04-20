#include "../h/Scheduler.h"

#include "../h/Thread.h"

void Scheduler::put(_thread *t)
{
    if (!t)
        return;
    t->next = nullptr;

    if (!head)
    {
        head = t;
    }
    else
    {
        tail->next = t;
    }
    tail = t;
}

_thread *Scheduler::get()
{
    if (!head)
    {
        return nullptr;
    }

    _thread *t = head;
    head = head->next;

    if (!head)
    {
        tail = nullptr;
    }

    t->next = nullptr;
    return t;
}