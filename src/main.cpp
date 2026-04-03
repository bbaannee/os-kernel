#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include  "../h/riscv.h"
#include "../h/Thread.h"
#include  "../h/workers.h"
#include "../h/printer.h"
int main() {
    Thread* corut[3];

    corut[0] = Thread::createThread(nullptr);

    Thread::running = corut[0];

    corut[1] = Thread::createThread(workerBodyA);
    printString("Cort a created");
    corut[2] = Thread::createThread(workerBodyB);
    printString("Cort b created");
    while (!(corut[1]->isFinished() && corut[2] -> isFinished()))Thread::yield();

    for (auto& cort : corut) {delete cort;}

    printString("Finished");

    return 0;


}

