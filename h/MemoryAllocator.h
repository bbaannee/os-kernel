//
// Created by os on 3/30/26.
//
#
#ifndef PROJECT_BASE_MEMORYALLOCATOR_H
#define PROJECT_BASE_MEMORYALLOCATOR_H

#include "../lib/hw.h"

class MemoryAllocator
{
public:
    MemoryAllocator() = delete;

    MemoryAllocator(const MemoryAllocator &) = delete;
    MemoryAllocator &operator=(const MemoryAllocator &) = delete;

    static void *kmalloc(size_t size);
    static int kfree(void *addr);

private:
    static void init();
    struct segmentHeader
    {
        segmentHeader *next;
        size_t size; // free space without header in bytes
    };

    static segmentHeader *head;
    static bool isinit;
    static void tryMerge(segmentHeader *block);
};

#endif // PROJECT_BASE_MEMORYALLOCATOR_H
