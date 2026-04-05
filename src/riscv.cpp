#include "../h/riscv.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.h"
#include "../h/Thread.h"

void Riscv::popSppSpie(){
	__asm__ volatile("csrw sepc, ra");
	__asm__ volatile ("sret");
}
void Riscv::handleSupervisorTrap(uint64* regs) {

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
		uint64 call = regs[10]; // x10 je A0
        uint64 arg1 = regs[11]; // x11 je A1
        
        uint64 sepc = r_sepc() + 4;
        uint64 sstatus = r_sstatus();

        switch(call) {
            case 0x01: {
                size_t bytes = (size_t)arg1 * MEM_BLOCK_SIZE;
                void* ret = MemoryAllocator::kmalloc(bytes);
                regs[10] = (uint64)ret; // Upisujemo povratnu vrednost direktno u x10 na steku
                break;
            }
            case 0x02: {
                int ret = MemoryAllocator::kfree((void*)arg1);
                regs[10] = (uint64)ret;
                break;
            }
            default:
			{
				Thread::timeSliceCounter = 0;
                Thread::dispatch();
                break;
			}
				
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
				

        
    	w_sstatus(sstatus);
    	w_sepc(sepc);
	}
	else if (scause == 0x8000000000000009UL) {
        console_handler();
    } else if (scause == 0x8000000000000001UL) {
    	Thread::timeSliceCounter++;
    if(Thread::timeSliceCounter >= Thread::running -> getTimeSlice())
    {
    	uint64 sepc = r_sepc();
    	uint64 sstatus = r_sstatus();
    	Thread::timeSliceCounter = 0;
    	Thread::dispatch();
    	w_sstatus(sstatus);
    	w_sepc(sepc);
    	
    }
        mc_sip(SIP_SSIP);
    } else {
       
    }
}

