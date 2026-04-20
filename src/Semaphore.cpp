#include "../h/Semaphore.h"
#include "../h/Thread.h"

_sem::_sem(int init) : val(init), head(nullptr), tail(nullptr), closed(false)
{
}

int _sem::wait()
{
    if (!_thread::running)
        return -1;
    if (val > 0)
    {
        val--;
    }
    else
    {
        _thread::running->isReady = false;
        _thread::running->semStatus = 0;

        add(_thread::running);
        _thread::dispatch();

        if (_thread::running->semStatus < 0)
        {
            return -1;
        }
    }
    return 0;
}

int _sem::signal()
{
    _thread *t = get();
    if (t)
    {
        t->isReady = true;
        Scheduler::instance().put(t);
    }
    else
    {
        val++;
    }

    return 0;
}

void _sem::add(_thread *t)
{
    if (!t)
        return;
    t->waitnext = nullptr;

    if (!head)
    {
        head = t;
    }
    else
    {
        tail->waitnext = t;
    }
    tail = t;
}
_thread *_sem::get()
{
    if (!head)
    {
        return nullptr;
    }

    _thread *t = head;
    head = head->waitnext;

    if (!head)
    {
        tail = nullptr;
    }

    t->waitnext = nullptr;
    return t;
}

int _sem::close()
{
    closed = true;

    while (head)
    {
        _thread *t = get();
        if (t)
        {
            t->isReady = true;

            t->semStatus = -1;

            Scheduler::instance().put(t);
        }
    }

    return 0;
}