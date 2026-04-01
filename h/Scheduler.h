//
// Created by os on 4/1/26.
//

#ifndef PROJEKAT_SCHEDULER_H
#define PROJEKAT_SCHEDULER_H

class Thread;

class Scheduler {
public:
    static Scheduler& instance(){static Scheduler instance; return instance;}

    Scheduler(const Scheduler&) = delete;
    Scheduler& operator=(const Scheduler&) = delete;


    void put(Thread* t);

    Thread* get();
private:
    Scheduler():head(nullptr), tail(nullptr){};
    Thread* head;
    Thread* tail;
};

#endif //PROJEKAT_SCHEDULER_H
