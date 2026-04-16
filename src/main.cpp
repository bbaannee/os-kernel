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

    // 2. INICIJALIZACIJA KONZOLE (Pre svega ostalog!)
    // Ovo alocira bafere i semafore unutar Console klase
    Console::init();

    // 3. Postavi main nit
    thread_t mainThr;
    thread_create(&mainThr, nullptr, nullptr);
    Thread::running = (Thread*)mainThr;

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

    while (!(((Thread*)threads[0])->isFinished() && ((Thread*)threads[1])->isFinished())) {
        time_sleep(10); // Spavaj malo da ne trošiš CPU dok čekaš
    }

    sem_close(ispisSem);
    printString("Test zavrsen.\n");
    return 0;
}

