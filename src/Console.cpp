#include "../h/Console.h"
#include "../lib/hw.h"

kBuffer* _console::inbuff = nullptr;
kBuffer* _console::outbuff = nullptr;
_sem* _console::inSem = nullptr;
_sem* _console::outSem = nullptr;

bool _console::initialized = false;

void _console::ensureInit() {
    if (initialized) return;
    inbuff  = new kBuffer();
    outbuff = new kBuffer();
    inSem   = new _sem(0);
    outSem  = new _sem(256);
    initialized = true;
}



char _console::getc() {
    ensureInit();

    return inbuff->get();
}

void _console::putc(char c) {
    ensureInit();
    outbuff->put(c);

    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x01) && !_console::getInBuff()->isFull()) {
    		char c = *((volatile uint8*)CONSOLE_RX_DATA);
    		_console::getInBuff()->put(c);
    		_console::getInSem()->signal();
    	}

    	
    	while ((*((volatile uint8*)CONSOLE_STATUS) & 0x20) && !_console::getOutBuff()->isEmpty()) {
    		char c = _console::getOutBuff()->get();
    		*((volatile uint8*)CONSOLE_TX_DATA) = (uint8)c;
    		_console::getOutSem()->signal();
    	}
    	
}