#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include  "../h/riscv.h"
#include "../h/Thread.h"
#include  "../h/workers.h"
#include "../h/printer.h"


int main()
{
    Thread *threads[3];

    threads[0] = Thread::createThread(nullptr);
    Thread::running = threads[0];

    threads[1] = Thread::createThread(workerBodyA);
    printString("ThreadA created\n");
    threads[2] = Thread::createThread(workerBodyB);
    printString("ThreadB created\n");


    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        Thread::yield();
    }



    printString("Finished\n");

    return 0;
}

