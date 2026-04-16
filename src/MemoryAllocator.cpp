#include "../h/MemoryAllocator.h"
bool MemoryAllocator::isinit = false;
MemoryAllocator::segmentHeader* MemoryAllocator::head = nullptr;
int MemoryAllocator::kfree(void *addr) {
    if(!isinit){ isinit = true; init(); }
    if(!addr) return -1;

    segmentHeader* newFree = (segmentHeader*)((char*)addr - MEM_BLOCK_SIZE);

    if((size_t)newFree < (size_t)HEAP_START_ADDR || (size_t)newFree >= (size_t)HEAP_END_ADDR) {
        return -1;
    }

    segmentHeader* curr = head;
    segmentHeader* prev = nullptr;


    while(curr) {
        if(curr == newFree) {
            return -1;
        }
        if(curr > newFree) break;

        prev = curr;
        curr = curr->next;
    }

    if(prev) {
        newFree->next = prev->next;
        prev->next = newFree;
    } else {
        newFree->next = head;
        head = newFree;
    }

    tryMerge(newFree);
    tryMerge(prev);

    return 0;
}

void *MemoryAllocator::kmalloc(size_t size) {  // argument is in bytes
    if(!isinit){
        isinit = true;
        init();
    }



    size_t bytes_needed = (size_t)((size + MEM_BLOCK_SIZE - 1 ) / MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    void* address = nullptr;
    segmentHeader* curr = head;
    segmentHeader* prev = nullptr;
    for(;curr; curr = curr -> next){
        if(curr -> size >= bytes_needed) {
            address = (void*) ((size_t) curr + MEM_BLOCK_SIZE);
            break;
        }
        prev = curr;
    }

    if(!curr) return nullptr;
    size_t remaining_bytes = curr->size - bytes_needed;
    segmentHeader* next_free_node = nullptr;
    if(remaining_bytes >= 2*MEM_BLOCK_SIZE){  //there is enough space for header and minimum one block
        next_free_node = (segmentHeader*)((char*)curr + bytes_needed + MEM_BLOCK_SIZE);
        next_free_node -> next = curr -> next;
        next_free_node -> size = remaining_bytes - MEM_BLOCK_SIZE;
        curr -> size = bytes_needed;
    }else{
        next_free_node = curr -> next;
    }

    if(prev){
        prev -> next = next_free_node;
    }else{
        head = next_free_node;
    }

    return address;
}

void MemoryAllocator::init() {
    size_t start = (size_t)HEAP_START_ADDR;
    size_t end = (size_t)HEAP_END_ADDR;

    start = start % MEM_BLOCK_SIZE == 0 ? start :   (start - start % MEM_BLOCK_SIZE) + MEM_BLOCK_SIZE;
    end = end % MEM_BLOCK_SIZE == 0 ? end : (end - end % MEM_BLOCK_SIZE);

    head = (segmentHeader*) start;
    head->size = end - start - MEM_BLOCK_SIZE;
    head -> next = nullptr;
}



void MemoryAllocator::tryMerge(segmentHeader *block) {
    if(!block) return;

    segmentHeader* next_seg = block -> next;

    if(!next_seg) return;

    if((char*) block +  MEM_BLOCK_SIZE + block -> size == (char*) next_seg){
        block -> next = next_seg -> next;
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    }
}
