#include "../h/Console.h"
#include "../lib/hw.h"

Buffer* kConsole::inbuff = nullptr;
Buffer* kConsole::outbuff = nullptr;
kSemaphore* kConsole::inSem = nullptr;
kSemaphore* kConsole::outSem = nullptr;

bool kConsole::initialized = false;

void kConsole::ensureInit() {
    if (initialized) return;
    inbuff  = new Buffer();
    outbuff = new Buffer();
    inSem   = new kSemaphore(0);
    outSem  = new kSemaphore(256);
    initialized = true;
}


char kConsole::getc() {
    ensureInit();
    int status = inSem->wait();

    if (status < 0) {
        return -1;
    }

    return inbuff->get();
}

void kConsole::putc(char c) {
    ensureInit();
    outSem->wait();
    outbuff->put(c);

    if (*((volatile uint8*)CONSOLE_STATUS) & 0x20) {
        char toSend = outbuff->get();
        *((volatile uint8*)CONSOLE_TX_DATA) = (uint8)toSend;
        outSem->signal();
    }
}