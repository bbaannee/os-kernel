#include "../h/syscall_cpp.hpp"
#include "../h/printer.h"
#include "../h/riscv.h"
#include "../h/Thread.h"

// 1. Testiranje nasleđivanja: Nit koja čeka na semaforu
class WorkerThread : public Thread {
private:
    Semaphore* sem;
    const char* name;
public:
    WorkerThread(const char* n, Semaphore* s) : Thread(), sem(s), name(n) {}

    void run() override {
        printString(name);
        printString(": Cekam na semaforu...\n");
        
        sem->wait(); // Ovde nit mora da stane!
        
        printString(name);
        printString(": Docekao signal i nastavljam rad!\n");
        
        for(int i = 0; i < 3; i++) {
            printString(name);
            printString(": Radi...\n");
            Thread::sleep(5);
        }
    }
};

void idlef(void*) {
    while (1) Thread::dispatch();
}

int main() {
    // --- INICIJALIZACIJA PRE UPALJENIH PREKIDA ---
    
    // Postavi trap handler
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    // Registruj main nit
    thread_t mainHandle;
    thread_create(&mainHandle, nullptr, nullptr);
    _thread::running = (_thread*)mainHandle;

    // Kreiraj idle nit
    thread_t idleHandle;
    thread_create(&idleHandle, idlef, nullptr);

    printString("--- Testiranje C++ API (Semaphore & Inheritance) ---\n");

    // Kreiraj semafor (vrednost 0 znači da će prvi wait() odmah blokirati)
    Semaphore* testSem = new Semaphore(0);

    // Kreiraj niti preko nasleđivanja (ovo testira tvoj 'wrapper')
    WorkerThread* thr1 = new WorkerThread("NIT_1", testSem);
    WorkerThread* thr2 = new WorkerThread("NIT_2", testSem);

    // Startuj niti (one će se odmah blokirati na semaforu)
    thr1->start();
    thr2->start();

    // --- PALJENJE PREKIDA ---
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // Main malo spava dok niti čekaju
    for(int i = 0; i < 2; i++) {
        printString("Main: Niti bi trebalo da su blokirane, ja spavam...\n");
        Thread::sleep(15);
    }

    // Puštamo prvu nit
    printString("Main: Signaliziram prvi put...\n");
    testSem->signal();
    Thread::sleep(10);

    // Puštamo drugu nit
    printString("Main: Signaliziram drugi put...\n");
    testSem->signal();

    // Čekamo da sve završe
    for(int i = 0; i < 5; i++) {
        Thread::sleep(10);
    }

    printString("Test zavrsen.\n");

    // Čišćenje memorije
    delete thr1;
    delete thr2;
    delete testSem;

    return 0;
}