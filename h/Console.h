#ifndef PROJEKAT_CONSOLE_H
#define PROJEKAT_CONSOLE_H

#include "../h/Semaphore.h"
#include "../h/Buffer.h"

class _console
{
public:
    _console() = delete;
    _console(const _console &) = delete;
    _console &operator=(const _console &) = delete;

    static char getc();
    static void putc(char c);

    static kBuffer *getInBuff()
    {
        ensureInit();
        return inbuff;
    }
    static kBuffer *getOutBuff()
    {
        ensureInit();
        return outbuff;
    }
    static _sem *getInSem()
    {
        ensureInit();
        return inSem;
    }
    static _sem *getOutSem()
    {
        ensureInit();
        return outSem;
    }

private:
    static kBuffer *inbuff;
    static kBuffer *outbuff;
    static _sem *inSem;
    static _sem *outSem;

    static bool initialized;
    static void ensureInit();
};

#endif // PROJEKAT_CONSOLE_H