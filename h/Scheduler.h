//
// Created by os on 4/1/26.
//

#ifndef PROJEKAT_SCHEDULER_H
#define PROJEKAT_SCHEDULER_H

class kThread;

class Scheduler {
public:
    static Scheduler& instance(){static Scheduler instance; return instance;}

    Scheduler(const Scheduler&) = delete;
    Scheduler& operator=(const Scheduler&) = delete;


    void put(kThread* t);

    kThread* get();
private:
    Scheduler():head(nullptr), tail(nullptr){};
    kThread* head;
    kThread* tail;
};

#endif //PROJEKAT_SCHEDULER_H
