#ifndef PROJEKAT_CONSOLE_H
#define PROJEKAT_CONSOLE_H

#include "../h/Semaphore.h"
#include "../h/Buffer.h"

class _console {
public:
    // Zabrana pravljenja objekata klase Console
    _console() = delete;
    _console(const _console&) = delete;
    _console& operator=(const _console&) = delete;


    // Sistemski pozivi (0x41 i 0x42)
    static char getc();
    static void putc(char c);

    // Geteri za prekidnu rutinu (console_handler)
    static Buffer* getInBuff() { ensureInit(); return inbuff; }
    static Buffer* getOutBuff() { ensureInit(); return outbuff; }
    static _sem* getInSem() { ensureInit(); return inSem; }
    static _sem* getOutSem() { ensureInit(); return outSem; }

private:
    // Statički članovi - pokazivači na bafere i semafore
    static Buffer *inbuff;
    static Buffer *outbuff;
    static _sem *inSem;
    static _sem *outSem;

    static bool initialized;
    static void ensureInit();
};

#endif //PROJEKAT_CONSOLE_H