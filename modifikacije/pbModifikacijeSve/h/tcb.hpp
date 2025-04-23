
#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"



int main();
typedef struct Molecule{
    int* ids;
    char const **type;
}Molecule;


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

    //modifikacija PING thread
    void incrementMemory(int increment){
        this->allocatedBlocks+=increment;
    }
    void pingThread(){
        this->pinged = true;
    }
    void setPinged(bool value){
        this->pinged = value;
    }
    int getAllocatedBlocks() const{
        return this->allocatedBlocks;
    }
    int getRunTime() const{
        return this->runTime;
    }
    void incrementTime(){
        this->runTime++;
    }

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




    int id;
    //threadWrapper treba prvi da se izvrsi za svaku nit koju sam napravil
    static void threadWrapper();


    //napisana u asembleru, clion samo ne moze da prepozna zato je zuto
    static void contextSwitch(Context *oldContext, Context *runningContext);

    //znaci, ne zelim da mi iko zove interni dispatch zato sam ga stavila u private
    static void dispatch();

    static void join(TCB* handle);
    void pustiSveNiti();




    //unisex Bathrom problem
    static Semaphore_k* empty;
    static Semaphore_k* toilet;
    static Semaphore_k* mutexMen;
    static Semaphore_k* mutexWomen;
    static Semaphore_k* entry;

    static int numOfMan;
    static int numOfWoman;

    static void man(unsigned int id);
    static void woman(unsigned int id);
    static void setUnisexBatrroom();
    static bool firstSet;

    //blocking on barrier
    static Lista<TCB>ListBarier;
    static void barrier();
    static bool fsBarrier;
    static int numCalls;
    static int numOFthreads;





private:

    //send - receive mechanisam; message transfer
    Semaphore_k* msgE;
    Semaphore_k* msgA;
    bool fsSemaphores;
    char const* message;

    void send(char const* msg);
    static char const* receive();
    void setSem();

    //joinAll - waiting for all children it creates
    void joinAll();
    TCB* parent;
    bool waitingForChildren;
    bool joinALL;
    int numberOfChildren;
    Semaphore_k* joinAllsem;

    //set max threads
    static Semaphore_k* semMaxThreads;
    static bool setMaxTh;
    static int currThr;

    static void setMaxThreads(unsigned int num);

    //barrier - preko semafora
    static int threadCount;
    static int calls;
    static Semaphore_k* firstDoor;
    static Semaphore_k* secondDoor;

    static void barrier_2();
    static void setBarrier_2();
    static bool setBarrier2;

    //atomic broadcast

    void setAtomicBroadcast();

    void producer(int id);

    void consumer(int id);
    static bool prodConsum;
    static int newItem;


    //molekul vode
    static int count;
    static Molecule* molecule;

    static Semaphore_k* hydroSem;
    static Semaphore_k* oxySem;
    static Semaphore_k* door1;
    static Semaphore_k* door2;
    static void oxygen(unsigned int id);
    static void hydrogen(unsigned int id);
    static void barrier(unsigned int id,Molecule** molecule,const char* element);
    static void setAtomH20();
    static bool fsH20;


    //DINING SAVAGE
    static Semaphore_k* mutex;
    static Semaphore_k* semSavage;
    static Semaphore_k* semCook;
    static void savage(int id);
    static void cook();
    static void setDiningSavages();
    static int pot;//porcije u kazanu
    static bool fsDiningSavage;

    //HUNGRY BIRDS
    static Semaphore_k* parentt;
    static Semaphore_k* mutexChild;
    static Semaphore_k* mutexParent;

    static bool setHngryBird;
    static void birdChild(unsigned int);
    static void birdParent(unsigned int);
    static void parentHuntForChildren(unsigned int id);
    static void parentForHuntForHimself(unsigned int id);
    static void setHungryBirds();
    static int pot1;

    //HONEY BEE PROBLEM
    static int kosnica;
    static bool fsMedaPcele;
    static Semaphore_k* mtx;
    static Semaphore_k* bear;
    static void setPceleMed();
    static void honeybe(unsigned int id);
    static void meda();

    //modifikacija PING thread
    int allocatedBlocks;
    bool pinged;
    int runTime;
public:
    static int waiting;

};

#endif

