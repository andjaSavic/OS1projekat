//
// Created by os on 5/11/24.
//

#include "../h/memoryAllocator.hpp"
#include "../h/tcb.hpp"

memoryAllocator::BlockHeader* memoryAllocator::head = nullptr;
size_t memoryAllocator::velicinaHedera= sizeof(memoryAllocator::BlockHeader);
bool memoryAllocator::inicijalizovana =false;
size_t memoryAllocator::slobodnaMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaHedera)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE ;
size_t memoryAllocator::maxKapacitetMemorije = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaHedera)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE ;

void memoryAllocator::init() {
    head =( BlockHeader*)(HEAP_START_ADDR);
    head->size = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) - velicinaHedera;;
    head->next = nullptr;
    slobodnaMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaHedera)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE ;
    maxKapacitetMemorije = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaHedera)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE ;
}

void* memoryAllocator::mem_alloc(size_t size) {
    if(!inicijalizovana){
        init();
        inicijalizovana=true;
    }

    if (size == 0 || size > slobodnaMemorija) return nullptr;

    // Align size to MEM_BLOCK_SIZE
    if (size%MEM_BLOCK_SIZE) {
        size=MEM_BLOCK_SIZE*(1+size/MEM_BLOCK_SIZE);
    }
    //dodato


    BlockHeader* curr = head;
    BlockHeader* prev = nullptr;

    //radim first fit :(
    while (curr != nullptr) {
        if (curr->size >= size) {
            //prvi na koji sam naisla a da u njega moze da stane zadat broj bajtova
            //sta je ostalo od bloka i moze li se od tog ostatka napraviti noi blok, provera u nastavku???
            size_t remainingSize = curr->size - size;

            if (remainingSize >= sizeof(BlockHeader)) {
                //pocepaj blok na stari + novi ako je moguce
                // Ako je ostatak dovoljno veliki da u njega stane zaglavlje + informacije -> od ostatka napravi novi blok i uvezi ga
                BlockHeader* newBlock = reinterpret_cast<BlockHeader*>(reinterpret_cast<char*>(curr) + size + velicinaHedera);
                newBlock->size = remainingSize - velicinaHedera;
                newBlock->next = curr->next;

                if (prev == nullptr) {
                    head = newBlock;
                } else {
                    prev->next = newBlock;
                }

                curr->size = size;
                curr->next = nullptr;
            } else {
                // Ako blok nije dovoljno veliki da u njega stane jos nesto sem zaglavlja
                if (prev == nullptr) {
                    head = curr->next;
                } else {
                    prev->next = curr->next;
                }
                curr->next = nullptr;
            }

            //smanji slobodnu memoriju za velicinu trenutnog bloka i njegov heder
            slobodnaMemorija -= curr->size + velicinaHedera;
            //vratiti pokazivac na slobodan prostor ispod zaglavlja!!!
            return reinterpret_cast<void*>(reinterpret_cast<char*>(curr) + velicinaHedera);
        }

        prev = curr;
        curr = curr->next;
    }

    return nullptr; // No suitable block found
}

int memoryAllocator::mem_free(void* ptr) {

    if (!ptr) {
        return -1; // Nevalidna adresa, ne moze se osloboditi nesto sto ne postoji
    }

    BlockHeader* freeBlock = reinterpret_cast<BlockHeader*>(reinterpret_cast<char*>(ptr) - velicinaHedera);

    if (freeBlock->size % MEM_BLOCK_SIZE != 0 || freeBlock->size == 0 || freeBlock->next != nullptr) {
        return -1; // Nevalidan blok ili već oslobođen, ako nije poravnat onda nije ni blok, ovo trece - hoce li se ikad desiti?
        //if it works - dont touch ! :)
    }

    // Pronađi tačnu poziciju za umetanje oslobođenog bloka
    BlockHeader* curr = head;
    BlockHeader* prev = nullptr;

    while (curr && curr < freeBlock) {
        prev = curr;
        curr = curr->next;
    }

    // Uguraj oslobođeni blok
    if (!prev) {
        head = freeBlock;
    } else {
        prev->next = freeBlock;
    }

    freeBlock->next = curr;

    // Spoji susedne slobodne blokove
    while(pokusajDaSpojis(freeBlock));
    if(prev)
        //nek stoji while za svaki slucaj, isti djavo mogo je i samo if
        if (pokusajDaSpojis(prev));

    //ovde sam povecala slobodnu memoriju, jer sam oslobodila prostor - bez ovoga ne valja!!!
    slobodnaMemorija += freeBlock->size + velicinaHedera;

    return 0; // Uspeh
}

bool memoryAllocator::pokusajDaSpojis(BlockHeader* left) {

    if(left== nullptr)return false;
    BlockHeader* right = left->next;
    if(right== nullptr)return false;
    if((char*)left + left->size + sizeof(BlockHeader) != (char*)right)
    {
        return false;
    }
    BlockHeader* rightright = right->next;
    left->size += right->size + sizeof(BlockHeader);
    left->next = rightright;
    return true;
}


void memcpy(const void *src, const void *dst, int len) {
    char *src1 = (char *) src;
    char *dst1 = (char *) dst;
    for (int i = 0; i < len; i++)
        dst1[i] = src1[i];
}

