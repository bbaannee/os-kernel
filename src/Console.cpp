#include "../h/Console.h"
#include "../lib/hw.h"

Buffer* Console::inbuff = nullptr;
Buffer* Console::outbuff = nullptr;
Semaphore* Console::inSem = nullptr;
Semaphore* Console::outSem = nullptr;

void Console::init() {
    inbuff = new Buffer();
    outbuff = new Buffer();
    inSem = new Semaphore(0);
    outSem = new Semaphore(256);
}


char Console::getc() {

    int status = inSem->wait();

    if (status < 0) {
        return -1;
    }

    return inbuff->get();
}

void Console::putc(char c) {
    outSem->wait();
    outbuff->put(c);

    if (*((volatile uint8*)CONSOLE_STATUS) & 0x20) {
        char toSend = outbuff->get();
        *((volatile uint8*)CONSOLE_TX_DATA) = (uint8)toSend;
        outSem->signal();
    }
}