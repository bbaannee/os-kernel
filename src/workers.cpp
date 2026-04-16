#include "../lib/hw.h"
#include "../h/Thread.h"
#include "../h/printer.h"
#include  "../h/syscall_c.h"
void workerBodyA(void* arg) {
    for (int i = 0; i < 3; i++) {
        printString("Nit A: krece na spavanje (10 tica)...\n");

        // Testiramo povratnu vrednost (treba da bude 0)
        int res = time_sleep(10);

        printString("Nit A: se probudila! Status: ");
        printInteger(res);
        printString("\n");

        kThread_dispatch();
    }
}

void workerBodyB(void* arg) {
    for (int i = 0; i < 3; i++) {
        printString("Nit B: krece na krace spavanje (5 tica)...\n");

        time_sleep(5);

        printString("Nit B: se probudila!\n");

        kThread_dispatch();
    }
}

// U tvojoj main/userMain funkciji:
/*
    kThread_t tA, tB;
    kThread_create(&tA, workerSleepA, nullptr);
    kThread_create(&tB, workerSleepB, nullptr);
*/