//
// Created by os on 4/1/26.
//

#ifndef PROJEKAT_SCHEDULER_H
#define PROJEKAT_SCHEDULER_H

class _thread;

class Scheduler
{
public:
    static Scheduler &instance()
    {
        static Scheduler instance;
        return instance;
    }

    Scheduler(const Scheduler &) = delete;
    Scheduler &operator=(const Scheduler &) = delete;

    void put(_thread *t);

    _thread *get();

private:
    Scheduler() : head(nullptr), tail(nullptr) {};
    _thread *head;
    _thread *tail;
};

#endif // PROJEKAT_SCHEDULER_H
