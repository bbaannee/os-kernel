#include "../lib/hw.h"
#include "../h/syscall_c.h"
#include "../h/riscv.h"
#include "../h/Thread.h"
#include "../h/Console.h" // Obavezno uključi zaglavlje
#include "../h/workers.h"
#include "../h/printer.h"
void idlef(void*) {
    while (1) kThread_dispatch();
}
int main() {
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    
    // 3. Postavi main nit
    kThread_t mainThr;
    kThread_create(&mainThr, nullptr, nullptr);
    kThread::running = (kThread*)mainThr;

    printString("System initialized. Main kThread started.\n");

    // 4. Kreiranje semafora za sinhronizaciju ispisa
    sem_t ispisSem;
    sem_open(&ispisSem, 1);

    // 5. Kreiranje radnih niti i idle niti
    kThread_t kThreads[2];
    kThread_t idle;
    kThread_create(&kThreads[0], workerBodyA, ispisSem);
    kThread_create(&kThreads[1], workerBodyB, ispisSem);
    kThread_create(&idle, idlef, nullptr);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(((kThread*)kThreads[0])->isFinished() && ((kThread*)kThreads[1])->isFinished())) {
        time_sleep(10); // Spavaj malo da ne trošiš CPU dok čekaš
    }

    sem_close(ispisSem);
    printString("Test zavrsen.\n");
    return 0;
}

