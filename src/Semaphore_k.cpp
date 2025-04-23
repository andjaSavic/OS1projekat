//
// Created by os on 5/17/24.
//

#include "../h/Semaphore_k.hpp"
#include "../h/syscall_c.h"
#include "../test/printing.hpp"

//ovo mi treba za sem_open
Semaphore_k *Semaphore_k::kreirajSemafor(unsigned int init) {
    return new Semaphore_k(init);
}

//deblock i block pozivam u signal i wait
//slicno kao u skolskom jezgru (knjiga str. 273)
//inicijalizujes sem sa unsigned, a interna semaforska
//promenljiva moze value moze biti negativna
void Semaphore_k::deblock() {


    TCB* tcb = blocked.removeFirst();
    tcb->setBlocked(false);

    Scheduler::put(tcb);
    //printString("Jedna nit deblokirana\n");
}


void Semaphore_k::block() {
    blocked.addLast(TCB::running);
    TCB::running->setBlocked(true);
    thread_dispatch();
}



int Semaphore_k::wait() {

    if(closed) {
        return -1;
    }

    if(--value < 0) {
        block();

        if(closed) {
            return -1;
        }

    }

    return 0;
}


int Semaphore_k::trywait() {
    //U slučaju zaključavanja semafora vraća 0,
    if (closed) {
        return 0;
    }

    //u slučaju neuspeha
    //vraća negativnu vrednost (kod greške)
    if (value <= 0) {
        return -1; // Semafor nije dostupan, odustajemo od čekanja
    }
    //mogu da umnajim kad je value>0
    --value;

    //u
    //slučaju kada semafor nije zaključan 1
    return 1;

}

int Semaphore_k::signal() {

    if(closed) {
        return -1;
    }



    if(++value <= 0) {
        deblock();



    }

    return 0;

}




int Semaphore_k::close() {

    if (closed) {
        return -1;
    }

    closed = true;

    //odblokira sve niti
    if (blocked.peekFirst() != nullptr) {
        while (blocked.peekFirst()) {
            blocked.peekFirst()->setBlocked(false);             //odblokira sve niti koje su bile zablokirane
            Scheduler::put(blocked.peekFirst());
            blocked.removeFirst();
        }
    }



    return 0;
}

//nisam radila asinhronu
int Semaphore_k::timedwait(time_t timeout) {
    return 0;
}

Semaphore_k::~Semaphore_k() {
    close();
}



