#include "../h/Semaphore.h"
#include "../h/Thread.h"

_sem::_sem(int init) : val(init), head(nullptr), tail(nullptr), closed(false)
{
}

int _sem::wait()
{   
    return wait_n(1);
}

int _sem::signal()
{
    return signal_n(1);
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
int _sem::wait_n(unsigned n)
{
    if(closed) return -1;
    if(n == 0) return 0;

    if(head == nullptr && val >=(int) n){
        val -= n;
        return 0;
    }else{
        _thread::running->isReady = false;
        _thread::running->requestedN = n; 
        _thread::running->semStatus = 0;

        add(_thread::running); 
        _thread::dispatch();

  
        if (_thread::running->semStatus < 0) {
            return -1;
        }
        return 0;
    }
}

int _sem::signal_n(unsigned n) {
    if (closed) return -1;
    
    val += n;

    while (head && val >= (int)head->requestedN) {
        _thread *t = get(); 
        
        val -= t->requestedN; 
        t->isReady = true;
        t->semStatus = 0;
        
        Scheduler::instance().put(t);

    }

    return 0;
}