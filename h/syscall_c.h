//
// Created by os on 3/31/26.
//

#ifndef PROJECT_BASE_SYSCALL_C_H
#define PROJECT_BASE_SYSCALL_C_H

#include "../lib/hw.h"

void* mem_alloc(size_t size);
int mem_free(void*);

class _kThread;
typedef _kThread* kThread_t;
int kThread_create (
 kThread_t* handle,
 void(*start_routine)(void*),
 void* arg
);
void kThread_dispatch();
int kThread_exit();

class _sem;
typedef _sem* sem_t;

int sem_open(sem_t* handle, unsigned init);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

typedef unsigned long time_t;
int time_sleep (time_t);

const int EOF = -1;
char getc ();

void putc (char);

void* operator new(size_t size);
void* operator new[](size_t size);
void operator delete(void* ptr) noexcept;
void operator delete[](void* ptr) noexcept;


#endif //PROJECT_BASE_SYSCALL_C_H
