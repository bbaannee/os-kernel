#include "../lib/hw.h"
#include "../h/Thread.h"
#include "../h/printer.h"

void workerBodyA()
{
    for (uint64 i = 0; i < 10; i++)
    {
        printString("A: i=");
        printInteger(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
            {
                // busy wait
            }
        }
     
    }
}

void workerBodyB()
{
    for (uint64 i = 0; i < 61; i++)
    {
        printString("B: i=");
        printInteger(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
            {
                // busy wait
            }
        }
      
    }
}
