#include "../lib/hw.h"
#include "../h/syscall_c.h"
#include "../h/riscv.h"
#include "../h/Thread.h"
#include "../h/Console.h" // Obavezno uključi zaglavlje
#include "../h/workers.h"
#include "../h/printer.h"
void idlef(void*) {
    while (1) thread_dispatch();
}
int main() {
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    // 3. Postavi main nit
    thread_t mainThr;
    thread_create(&mainThr, nullptr, nullptr);
    _thread::running = (_thread*)mainThr;

    printString("System initialized. Main thread started.\n");

    // 4. Kreiranje semafora za sinhronizaciju ispisa
    sem_t ispisSem;
    sem_open(&ispisSem, 1);

    // 5. Kreiranje radnih niti i idle niti
    thread_t threads[2];
    thread_t idle;
    thread_create(&threads[0], workerBodyA, ispisSem);
    thread_create(&threads[1], workerBodyB, ispisSem);
    thread_create(&idle, idlef, nullptr);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(((_thread*)threads[0])->isFinished() && ((_thread*)threads[1])->isFinished())) {
        time_sleep(10); // Spavaj malo da ne trošiš CPU dok čekaš
    }

    sem_close(ispisSem);
    printString("Test zavrsen.\n");
    return 0;
}

