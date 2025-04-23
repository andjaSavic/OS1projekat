//
// Created by os on 5/11/24.
//

#ifndef MEMORYALLOCATOR_HPP
#define MEMORYALLOCATOR_HPP
#include "../lib/hw.h"

void memcpy(const void *src, const void *dst, int len);

class memoryAllocator {
protected:
    struct BlockHeader{
        BlockHeader* next;
        size_t size;
    };

public:

    static void* mem_alloc(size_t size);
    static int mem_free (void* ptr);


    static BlockHeader* head;

    memoryAllocator(memoryAllocator &) = delete;
    void operator=(const memoryAllocator&) = delete;

    static void  init();
    static size_t velicinaHedera;
    static size_t slobodnaMemorija;
    static size_t maxKapacitetMemorije;
private:
    memoryAllocator(){}
    static bool pokusajDaSpojis(BlockHeader* cur);
    static bool inicijalizovana;

};



#endif //PROJECT_BASE_V1_1_1_MEMORYALLOCATOR_HPP



