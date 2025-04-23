//
// Created by os on 5/17/24.
//


#include "../h/syscall_c.h"
#include "../h/sifre.h"


void* mem_alloc(size_t size) {

    size_t blokovi = (size % MEM_BLOCK_SIZE == 0) ?
                    size / MEM_BLOCK_SIZE :
                     (1 + size / MEM_BLOCK_SIZE);


    //moram da prosledim size koji je u blokovima zato radim ovo deljenje gore
    //tako pise u projektu
    __asm__ volatile("mv a1, %0" : : "r"(blokovi));
    __asm__ volatile("li a0, 0x01");
    __asm__ volatile("ecall");


    void* returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return returnValue;
}

int mem_free (void* ptr) {

    __asm__ volatile("mv a1, %0" : : "r"(ptr));
    __asm__ volatile("li a0, 0x02");
    __asm__ volatile("ecall");


    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}


int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {

    void* stack_space;
    stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    if(!stack_space) return -1;


    asm volatile("mv a4, %[stek]" ::[stek] "r" ((uint64)stack_space+DEFAULT_STACK_SIZE));
    __asm__ volatile("mv a3, %[arg]": : [arg] "r" (arg));
    __asm__ volatile("mv a2, %[arg]": : [arg] "r" (start_routine));
    __asm__ volatile("mv a1, %[arg]" : : [arg] "r" (handle));
    __asm__ volatile("mv a0, %[code]" : : [code] "r" (TH_CREATE));
    __asm__ volatile("ecall");

    volatile uint64 returnval;
    __asm__ volatile("mv %0, a0": "=r"(returnval));
    return (int) returnval;
}

int thread_exit() {
    __asm__ volatile("li a0, 0x12");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

void thread_dispatch() {
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile ("ecall");

}

int sem_open(sem_t* handle, unsigned init) {
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x21");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int sem_close(sem_t handle) {
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x22");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int sem_wait(sem_t id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x23");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int sem_signal(sem_t id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x24");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

int sem_trywait(sem_t id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id)); // Postavljanje argumenta id u registar a1
    __asm__ volatile("li a0, 0x26"); // Postavljanje identifikatora sistemskog poziva za trywait (pretpostavljeni broj 0x25)
    __asm__ volatile ("ecall"); // Izvršavanje sistema

    uint64 returnValue; // Promenljiva za čuvanje povratne vrednosti
    __asm__ volatile("mv %0, a0" : "=r"(returnValue)); // Čuvanje povratne vrednosti iz a0 u returnValue
    return (int)returnValue; // Povratna vrednost funkcije
}

int sem_timedwait(sem_t id, time_t timeoutSeconds) {
    __asm__ volatile ("mv a1, %0" : : "r" (id)); // Postavljanje argumenta id u registar a1
    __asm__ volatile ("mv a2, %0" : : "r" (timeoutSeconds)); // Postavljanje argumenta timeoutSeconds u registar a2
    __asm__ volatile("li a0, 0x26"); // Postavljanje identifikatora sistemskog poziva za timedwait (pretpostavljeni broj 0x26)
    __asm__ volatile ("ecall"); // Izvršavanje sistema

    uint64 returnValue; // Promenljiva za čuvanje povratne vrednosti
    __asm__ volatile("mv %0, a0" : "=r"(returnValue)); // Čuvanje povratne vrednosti iz a0 u returnValue
    return (int)returnValue; // Povratna vrednost funkcije
}



int sem_waitN(sem_t id, unsigned init) {
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x68");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}
int sem_signalN(sem_t id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x69");
    __asm__ volatile ("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (int)returnValue;
}

char getc() {
    __asm__ volatile("li a0, 0x41");
    __asm__ volatile ("ecall");

    char returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return returnValue;
}

void putc(char c) {
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    __asm__ volatile("li a0, 0x42");
    __asm__ volatile ("ecall");
}

int time_sleep(time_t time) {
    return 0;
}

void thread_join(thread_t handle) {
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x14");
    __asm__ volatile ("ecall");
}







































int thread_id(thread_t handle){
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0,0x15");
    __asm__ volatile("ecall");

    uint64 returnValue;

    __asm__ volatile("mv %0, a0": "=r"(returnValue));
    return (int)returnValue;
}

void th_running(thread_t handle){
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile("li a0, 0x66");
    __asm__ volatile ("ecall");
}

void thread_man(unsigned int id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x50");
    __asm__ volatile ("ecall");

}

void thread_woman(unsigned int id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x51");
    __asm__ volatile ("ecall");
}

void thread_barriere() {
    __asm__ volatile("li a0,0x52");
    __asm__ volatile("ecall");

}

void thread_send(thread_t nit,const char *msg) {
    __asm__ volatile("mv a2, %0"::"r"(msg));//kome saljem poruku
    __asm__ volatile("mv a1, %0"::"r"(nit));
    __asm__ volatile("li a0, 0x53");
    __asm__ volatile("ecall");

}

const char* thread_receive() {
    __asm__ volatile("li a0,0x54");
    __asm__ volatile("ecall");

    const char* returnValue;

    __asm__ volatile("mv %0, a0": "=r"(returnValue));
    return returnValue;
}

void thread_joinALL() {
    __asm__ volatile("li a0,0x55");
    __asm__ volatile("ecall");
}

void thread_setMaxThread(int num) {
    __asm__ volatile("mv a1, %0"::"r"(num));
    __asm__ volatile("li a0, 0x56");
    __asm__ volatile("ecall");

}

void thread_barrier() {
    __asm__ volatile("li a0, 0x57");
    __asm__ volatile("ecall");

}

void thread_producer(int id) {
    __asm__ volatile("mv a1, %0"::"r"(id));
    __asm__ volatile("li a0, 0x58");
    __asm__ volatile("ecall");

}

void thread_consumer(int id) {
    __asm__ volatile("mv a1, %0"::"r"(id));
    __asm__ volatile("li a0, 0x59");
    __asm__ volatile("ecall");
}

//h20
void thread_o(unsigned int id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x60");
    __asm__ volatile ("ecall");

}

void thread_h(unsigned int id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x61");
    __asm__ volatile ("ecall");
}

void thread_savage(unsigned int id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x62");
    __asm__ volatile ("ecall");

}

void thread_cook() {
    __asm__ volatile("li a0, 0x63");
    __asm__ volatile ("ecall");
}

void thread_birdCH(unsigned int id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x64");
    __asm__ volatile ("ecall");
}

void thread_birdPA(unsigned int id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x65");
    __asm__ volatile ("ecall");

}

void thread_BEE(unsigned int id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile("li a0, 0x66");
    __asm__ volatile ("ecall");
}

void thread_BEAR() {
    __asm__ volatile("li a0, 0x67");
    __asm__ volatile ("ecall");
}

void thread_ping(thread_t handle) {
    __asm__ volatile("mv a1, %0" : :"r"(handle));
    __asm__ volatile("li a0, 0x70");
    __asm__ volatile("ecall");
}

