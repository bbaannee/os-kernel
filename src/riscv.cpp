#include "../h/riscv.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.h"
#include "../h/Thread.h"
#include "../h/Semaphore.h"
#include "../h/Console.h"
void Riscv::popSppSpie()
{
	__asm__ volatile("csrw sepc, ra");
	Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
	__asm__ volatile("sret");
}
void Riscv::handleSupervisorTrap(uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7)
{

	uint64 scause = r_scause();

	if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
	{
		uint64 call = a0;
		uint64 volatile sepc = r_sepc() + 4;
		uint64 volatile sstatus = r_sstatus();

		switch (call)
		{
		case 0x01:
		{
			size_t bytes = a1 * MEM_BLOCK_SIZE;
			writeARegister(0, (uint64)MemoryAllocator::kmalloc(bytes));
			break;
		}
		case 0x02:
		{
			writeARegister(0, (uint64)MemoryAllocator::kfree((void *)a1));
			break;
		}
		case 0x11:
		{
			_thread **handle = (_thread **)a1;
			_thread::Body body = (_thread::Body)a2;
			void *volatile arg = (void *)a3;
			void *volatile stack_space = (void *)a4;

			*handle = _thread::createThread(body, arg, stack_space);

			if (*handle)
			{
				if (body != nullptr)
					Scheduler::instance().put(*handle);
				writeARegister(0, 0);
			}
			else
				writeARegister(0, -1);
			break;
		}
		case 0x12:
		{
			_thread::timeSliceCounter = 0;
			if (_thread::running)
			{
				_thread::running->setFinished(true); // possible need to notify if someone is wating for this thread on join
				writeARegister(0, 0);
			}
			else
			{
				writeARegister(0, -1);
			}

			_thread::dispatch();
			break;
		}
		case 0x13:
		{
			_thread::timeSliceCounter = 0;
			_thread::dispatch();
			break;
		}
		case 0x21:
		{
			_sem **handle = (_sem **)a1;

			*handle = new _sem(a2);

			if (*handle)
			{
				writeARegister(0, 0);
			}
			else
				writeARegister(0, -1);
			break;
		}
		case 0x22:
		{
			_sem *s = (_sem *)a1;
			if (s == nullptr)
			{
				writeARegister(0, -1);
			}
			else
			{
				writeARegister(0, s->close());
				delete s;
			}

			break;
		}
		case 0x23:
		{
			_sem *s = (_sem *)a1;
			if (s == nullptr)
			{
				writeARegister(0, -1);
			}
			else
			{
				writeARegister(0, s->wait());
			}

			break;
		}
		case 0x24:
		{
			_sem *s = (_sem *)a1;
			if (s == nullptr)
			{
				writeARegister(0, -1);
			}
			else
			{
				writeARegister(0, s->signal());
			}
			break;
		}
		case 0x25:{
			_sem *s = (_sem *)a1;
			unsigned n = (unsigned)a2;
			if (s == nullptr)
			{
				writeARegister(0, -1);
			}
			else
			{
				writeARegister(0, s->wait_n(n));
			}
			break;
		}
		case 0x26:{
			_sem *s = (_sem *)a1;
			unsigned n = (unsigned)a2;
			if (s == nullptr)
			{
				writeARegister(0, -1);
			}
			else
			{
				writeARegister(0, s->signal_n(n));
			}
			break;
		}
		case 0x31:
		{
			if (_thread::running == nullptr)
			{
				writeARegister(0, -1);
			}
			else
			{
				_thread::running->time_sleep(a1);
				writeARegister(0, 0);
			}

			break;
		}
		case 0x41:
		{
			char c = _console::getc();
			writeARegister(0, (uint64)c);
			break;
		}

		case 0x42:
		{					   // putc
			char c = (char)a1; // Karakter koji je korisnik prosledio
			_console::putc(c);
			break;
		}
		default:
		{
			break;
		}
		}

		w_sstatus(sstatus);
		w_sepc(sepc);
	}
	else if (scause == 0x8000000000000009UL)
	{
		int irq = plic_claim(); // Potvrđujemo prekid PLIC kontroleru

		if (irq == CONSOLE_IRQ)
		{ // Proveravamo da li je prekid stigao baš sa konzole (obično 10)

			// RX deo: Čitamo sve dok hardver ima podataka I dok imamo gde da ih smestimo
			while ((*((volatile uint8 *)CONSOLE_STATUS) & 0x01) && !_console::getInBuff()->isFull())
			{
				char c = *((volatile uint8 *)CONSOLE_RX_DATA);
				_console::getInBuff()->put(c);
				_console::getInSem()->signal();
			}

			// TX deo: Šaljemo sve dok je hardver spreman I dok imamo šta da pošaljemo
			while ((*((volatile uint8 *)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty())
			{
				char c = _console::getOutBuff()->get();
				*((volatile uint8 *)CONSOLE_TX_DATA) = (uint8)c;
				_console::getOutSem()->signal();
			}
		}

		plic_complete(irq); // Obaveštavamo PLIC da je obrada završena
	}
	else if (scause == 0x8000000000000001UL)
	{
		_thread::timeSliceCounter++;
		if (_thread::sleepingHead)
		{
			if (_thread::sleepingHead->timeSleeping > 0)
			{
				_thread::sleepingHead->timeSleeping--;
			}

			while (_thread::sleepingHead && _thread::sleepingHead->timeSleeping == 0)
			{
				_thread *t = _thread::sleepingHead;

				_thread::sleepingHead = t->waitnext;

				t->waitnext = nullptr;
				t->isReady = true;
				Scheduler::instance().put(t);
			}
		}
		if (_thread::timeSliceCounter >= _thread::running->getTimeSlice())
		{
			uint64 volatile sepc = r_sepc();
			uint64 volatile sstatus = r_sstatus();
			_thread::timeSliceCounter = 0;
			_thread::dispatch();
			w_sstatus(sstatus);
			w_sepc(sepc);
		}
		mc_sip(SIP_SSIP);
	}else{
		uint64 sepc = r_sepc();
        // unexpected trap cause
        for (const char* p = "Unexpected trap cause: "; *p; p++)
            _console::putc(*p);
        for (int i = 15; i >= 0; i--)
        {
            char c = "0123456789abcdef"[(scause >> i*4) & 0xf];
            _console::putc(c);
        }
        _console::putc(' ');
        for (int i = 15; i >= 0; i--)
        {
            char c = "0123456789abcdef"[(sepc >> i*4) & 0xf];
            _console::putc(c);
        }
        
        // halt the machine
        while (1);
	}
}
