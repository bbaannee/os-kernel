#include "../h/Console.h"
#include "../lib/hw.h"

Buffer* Console::inbuff = nullptr;
Buffer* Console::outbuff = nullptr;
_sem* Console::inSem = nullptr;
_sem* Console::outSem = nullptr;

bool Console::initialized = false;

void Console::ensureInit() {
    if (initialized) return;
    inbuff  = new Buffer();
    outbuff = new Buffer();
    inSem   = new _sem(0);
    outSem  = new _sem(256);
    initialized = true;
}



char Console::getc() {
    ensureInit();

    int status = inSem->wait();

    if (status < 0) {
        return -1;
    }

    return inbuff->get();
}

void Console::putc(char c) {
    ensureInit();
    outSem->wait();
    outbuff->put(c);

    if (*((volatile uint8*)CONSOLE_STATUS) & 0x20) {
        char toSend = outbuff->get();
        *((volatile uint8*)CONSOLE_TX_DATA) = (uint8)toSend;
        outSem->signal();
    }
}