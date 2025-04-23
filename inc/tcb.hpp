
#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"



int main();


class Semaphore_k;
//Thread Control Block

class TCB
{
public:

    using Body = void (*)(void*);
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

    static TCB* kreiraj_thread(TCB** handle, TCB::Body body, void* arg, char * stek);

    static TCB *running;

    ~TCB() { delete[] stack;

    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return this->blocked; }

    void setBlocked(bool value) { this->blocked = value; }

    bool isMain() const { return this->main; }



    //void setSemWait();

    static void duplicate(TCB*, TCB*);
    TCB(TCB&);

    //projektna odluka - ipak necu da koristim yield
     static void yield();



//stek se alocira po bajtovima, pa mi je tipa char*
//sp je promenljiva koja cuva adrese a one su tipa uint64 pa zato i sp uint64
Body body;
private:


    friend class Riscv;



    TCB(Body body, void* arg,char * stek);



    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    char *stack;
    Context context;
    bool finished;
    bool blocked;
    bool main;
    void* arg;
public:
    //Semaphore* semWait;
    static int ID;
    int getMyID();


private:
    //mozda mi zatreba?

    Lista<TCB> joined;


    //List children;

    //bool fsWaitAll;
    //int nuberOfChildren;

    //TCB* parent;
    //bool waitingForChildren;



    int id;
    //threadWrapper treba prvi da se izvrsi za svaku nit koju sam napravil
    static void threadWrapper();


    //napisana u asembleru, clion samo ne moze da prepozna zato je zuto
    static void contextSwitch(Context *oldContext, Context *runningContext);

    //znaci, ne zelim da mi iko zove interni dispatch zato sam ga stavila u private
    static void dispatch();

    static void join(TCB* handle);
    void pustiSveNiti();


    void wait();



};

#endif