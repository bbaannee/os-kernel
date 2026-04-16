#ifndef PROJEKAT_kConsole_H
#define PROJEKAT_kConsole_H

#include "../h/Semaphore.h"
#include "../h/Buffer.h"

class kConsole {
public:
    // Zabrana pravljenja objekata klase kConsole
    kConsole() = delete;
    kConsole(const kConsole&) = delete;
    kConsole& operator=(const kConsole&) = delete;



    // Sistemski pozivi (0x41 i 0x42)
    static char getc();
    static void putc(char c);

    // Geteri za prekidnu rutinu (kConsole_handler)
    static Buffer* getInBuff() { return inbuff; }
    static Buffer* getOutBuff() { return outbuff; }
    static kSemaphore* getInSem() { return inSem; }
    static kSemaphore* getOutSem() { return outSem; }

private:
    // Statički članovi - pokazivači na bafere i semafore
    static Buffer *inbuff;
    static Buffer *outbuff;
    static kSemaphore *inSem;
    static kSemaphore *outSem;

    static bool initialized;
    static void ensureInit();
};

#endif //PROJEKAT_kConsole_H