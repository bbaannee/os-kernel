#include "../h/riscv.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.h"
#include "../h/Thread.h"
#include  "../h/Semaphore.h"
#include "../h/Console.h"
void Riscv::popSppSpie()
{
	__asm__ volatile("csrw sepc, ra");
	__asm__ volatile("sret");
}
void Riscv::handleSupervisorTrap(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7){

	uint64 scause = r_scause();

	if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
		uint64 call = a0;
		uint64 volatile sepc = r_sepc() + 4;
		uint64 volatile sstatus = r_sstatus();

		switch(call) {
			case 0x01: {
				size_t bytes = a1 * MEM_BLOCK_SIZE;
				writeARegister(0, (uint64)MemoryAllocator::kmalloc(bytes));
				break;
			}
			case 0x02: {
				writeARegister(0, (uint64)MemoryAllocator::kfree((void*)a1));
				break;
			}
			case 0x11: {
				Thread** handle = (Thread**) a1;
				Thread::Body body =(Thread::Body) a2;
				void* volatile arg = (void*) a3;
				void* volatile stack_space = (void*) a4;

				*handle =  Thread::createThread(body, arg, stack_space);

				if(*handle) {
					if (body!=nullptr) Scheduler::instance().put(*handle);
					writeARegister(0, 0);
				} else
					writeARegister(0, -1);
				break;
			}
			case 0x12: {
				Thread::timeSliceCounter = 0;
				if (Thread::running) {
					Thread::running -> setFinished(true);		//possible need to notify if someone is wating for this thread on join
					writeARegister(0, 0);
				}else {
					writeARegister(0, -1);
				}


				Thread::dispatch();
				break;
			}
			case 0x13: {
				Thread::timeSliceCounter = 0;
				Thread::dispatch();
				break;
			}
			case 0x21: {
				Semaphore** handle = (Semaphore**) a1;


				*handle = new Semaphore(a2);

				if(*handle) {
					writeARegister(0, 0);
				} else
					writeARegister(0, -1);
				break;
			}
			case 0x22: {
				Semaphore* s = (Semaphore*)a1;
				if (s == nullptr) {
					writeARegister(0, -1);
				}else {
					writeARegister(0, s->close());
					delete s;
				}

				break;
			}
			case 0x23: {
				Semaphore* s = (Semaphore*)a1;
				if (s == nullptr) {
					writeARegister(0, -1);
				}else {
					writeARegister(0, s->wait());
				}

				break;
			}
			case 0x24: {
				Semaphore* s = (Semaphore*)a1;
				if (s == nullptr) {
					writeARegister(0, -1);
				}else {
					writeARegister(0, s->signal());
				}
				break;
			}
			case 0x31: {
				if (Thread::running == nullptr) {
					writeARegister(0, -1);
				}else {
					Thread::running -> time_sleep(a1);
					writeARegister(0, 0);
				}

				break;
			}
			case 0x41: {
				char c = Console::getc();
				writeARegister(0, (uint64)c);
				break;
			}

			case 0x42: { // putc
				char c = (char)a1; // Karakter koji je korisnik prosledio
				Console::putc(c);
				break;
			}
			default: {
				break;
			}
		}

		w_sstatus(sstatus);
		w_sepc(sepc);

    } else if (scause == 0x8000000000000009UL) {
    	int irq = plic_claim(); // Potvrđujemo prekid PLIC kontroleru

    	if (irq == CONSOLE_IRQ) { // Proveravamo da li je prekid stigao baš sa konzole (obično 10)

    		// RX deo: Čitamo sve dok hardver ima podataka I dok imamo gde da ih smestimo
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x01) && !Console::getInBuff()->isFull()) {
    		char c = *((volatile uint8*)CONSOLE_RX_DATA);
    		Console::getInBuff()->put(c);
    		Console::getInSem()->signal();
    	}

    	// TX deo: Šaljemo sve dok je hardver spreman I dok imamo šta da pošaljemo
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x20) && !Console::getOutBuff()->isEmpty()) {
    		char c = Console::getOutBuff()->get();
    		*((volatile uint8*)CONSOLE_TX_DATA) = (uint8)c;
    		Console::getOutSem()->signal();
    	}
    	}

    	plic_complete(irq); // Obaveštavamo PLIC da je obrada završena
    } else if (scause == 0x8000000000000001UL) {
    	Thread::timeSliceCounter++;
    	if (Thread::sleepingHead) {
    		if (Thread::sleepingHead->timeSleeping > 0) {
    			Thread::sleepingHead->timeSleeping--;
    		}

    		while (Thread::sleepingHead && Thread::sleepingHead -> timeSleeping == 0) {
    			Thread* t = Thread::sleepingHead;

    			Thread::sleepingHead = t->waitnext;

    			t->waitnext = nullptr;
    			t->isReady = true;
    			Scheduler::instance().put(t);
    		}

    	}
    if(Thread::timeSliceCounter >= Thread::running -> getTimeSlice())
    {
    	uint64 volatile sepc = r_sepc();
    	uint64 volatile sstatus = r_sstatus();
    	Thread::timeSliceCounter = 0;
    	Thread::dispatch();
    	w_sstatus(sstatus);
    	w_sepc(sepc);
    	
    }
        mc_sip(SIP_SSIP);
    }
}

