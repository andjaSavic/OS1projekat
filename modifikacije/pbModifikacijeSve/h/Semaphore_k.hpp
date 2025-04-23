//
// Created by os on 5/17/24.
//

#ifndef SEMAPHORE_K_HPP
#define SEMAPHORE_K_HPP

#include "List.hpp"
#include "tcb.hpp"


class Semaphore_k {
private:
    bool closed;
    int value;
    Lista<TCB> blocked;
protected:
    void block();

    void deblock();


public:
    using sem_t = Semaphore_k*;
    void* operator new(size_t size) {
        return memoryAllocator::mem_alloc(size);
    }
    void* operator new[](size_t size) {
        return memoryAllocator::mem_alloc(size);
    }

    void operator delete(void *ptr) {
        memoryAllocator::mem_free(ptr);
    }
    void operator delete[](void *ptr) {
        memoryAllocator::mem_free(ptr);
    }

    Semaphore_k(unsigned init = 0):closed(false),value(init){

    };

    int wait();

    int signal();

    int trywait();

    //nisam radila asinhronu
    int timedwait(time_t timeout);

    static Semaphore_k *kreirajSemafor(unsigned init = 1);

    int close();
    ~Semaphore_k();

    //modifikacija semafor sa zetonima
    int signalN();

    int waitN(unsigned int n =0);


//NE ZNAM STO ALI OVO PRAVI PROBLEM//

};


#endif
