#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) {
    return mem_alloc(size);
}


void operator delete(void* ptr) {
    mem_free(ptr);
}

Thread::Thread(void (*body)(void *), void *arg)
{
    this->body = body;
    this->arg = arg;
    thread_create_inactive(&myHandle, body, arg);
}

Thread::~Thread() = default;

int Thread::start()
{
    return thread_activate(myHandle);
}
void Thread::dispatch()
{
    thread_dispatch();
}

int Thread::sleep(time_t t)
{
    return time_sleep(t);
}

void Thread::wrapper(void * arg)
{
    Thread* t = (Thread*) arg;
    t->run();
}

Thread::Thread()
{
    myHandle = 0;
    body = wrapper;
    arg = this;
    thread_create_inactive(&myHandle, body, arg);
}

Semaphore::Semaphore(unsigned init)
{
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore()
{
    if (!myHandle) return;
    sem_close(myHandle);
    myHandle = 0;
}

int Semaphore::wait()
{
    return sem_wait(myHandle);
}

int Semaphore::signal()
{
    return sem_signal(myHandle);
}

void PeriodicThread::terminate()
{
    this->period = (time_t) -1;
}

PeriodicThread::PeriodicThread(time_t period) : Thread()
{
    this->period = period;
}

void PeriodicThread::run()
{
    while(this->period != (time_t) -1){
        Thread::sleep(period);
        periodicActivation();
    }
}

char Console::getc()
{
    return ::getc();
}

void Console::putc(char c)
{
    ::putc(c);
}
