#include "../h/riscv.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.h"

void Riscv::handleEcall(uint64* regs) {
    // regs[10] je x10 (a0), regs[11] je x11 (a1)
    uint64 a0_val = regs[10];
    uint64 a1_val = regs[11];

    uint64 sepc = r_sepc() + 4;
    uint64 sstatus = r_sstatus();

    switch(a0_val) {
        case 0x01: { // MEM_ALLOC
            // Direktno koristimo a1_val koji smo izvukli iz regs[11]
            uint64 size_in_bytes = a1_val * MEM_BLOCK_SIZE;
            void* result = MemoryAllocator::kmalloc(size_in_bytes);

            // Upisujemo rezultat direktno u regs[10] (to je a0 na steku)
            regs[10] = (uint64)result;
            break;
        }
        case 0x02: { // MEM_FREE
            void* ptr = (void*)a1_val;
            int result = MemoryAllocator::kfree(ptr);

            // Rezultat statusa oslobađanja u a0 na steku
            regs[10] = (uint64)result;
            break;
        }
        default:
            break;
    }

    w_sstatus(sstatus);
    w_sepc(sepc);
}

void Riscv::handleConsole() {
}

void Riscv::handleTimer() {
}

void Riscv::unknownsCause() {
}

void Riscv::handleSupervisorTrap(uint64* regs) {

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
        handleEcall(regs);
    } else if (scause == 0x8000000000000009UL) {
        handleConsole();
    } else if (scause == 0x8000000000000001UL) {
        handleTimer();
    } else {
        unknownsCause();
    }
}

