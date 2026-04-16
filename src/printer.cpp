#include "../h/printer.h"
#include "../h/syscall_c.h" // Koristimo tvoj javni API
#include "../h/riscv.h"

void printString(char const *string)
{
    // NEMOJ gasiti prekide ovde! 
    // Tvoj novi kConsole::putc je kThread-safe i koristi semafore.
    while (*string != '\0')
    {
        putc(*string); // Koristi sistemski poziv (0x42)
        string++;
    }
}

void printInteger(uint64 integer)
{   
    static char digits[] = "0123456789";
    char buf[20]; // Povećaj malo za svaki slučaj (uint64 može biti dug)
    int i;
    uint64 x = integer;

    // Obrada nule
    if (x == 0) {
        putc('0');
        return;
    }

    i = 0;
    do
    {
        buf[i++] = digits[x % 10];
    } while ((x /= 10) != 0);

    // Ispis unazad
    while (--i >= 0) {
        putc(buf[i]);
    }
}