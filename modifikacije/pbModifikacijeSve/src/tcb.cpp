//
// Created by os on 5/17/24.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"
#include "../h/Semaphore_k.hpp"

int TCB::waiting=0;

TCB *TCB::running = nullptr;
int TCB::ID =0;


int TCB::numOfWoman=0;
int TCB::numOfMan=0;

Semaphore_k* TCB::empty= nullptr;
Semaphore_k* TCB::toilet= nullptr;
Semaphore_k* TCB::mutexMen = nullptr;
Semaphore_k* TCB::mutexWomen = nullptr;
Semaphore_k* TCB::entry = nullptr;
bool TCB::firstSet = false;

Lista<TCB> TCB::ListBarier;
bool TCB::fsBarrier =false;
int TCB::numCalls=0;
int TCB::numOFthreads=0;

//atomic broadcast
const int CAPACITY=10;
const int M=8;
int buffer[CAPACITY];
int consumerCnt[CAPACITY]={0};
Semaphore_k* emptyy;
Semaphore_k* full[M];
Semaphore_k* mutexC[CAPACITY];
bool TCB::prodConsum = false;
int TCB::newItem =0;


Semaphore_k* TCB::semMaxThreads = nullptr;
bool TCB::setMaxTh = false;
int TCB::currThr = 0;

int TCB::threadCount = 0;
int TCB::calls = 0;
bool TCB::setBarrier2=false;
Semaphore_k* TCB::firstDoor = nullptr;
Semaphore_k* TCB::secondDoor = nullptr;

//moelkul H20

bool TCB::fsH20= false;
Molecule* TCB::molecule= nullptr;
int TCB::count =0;
Semaphore_k* TCB::hydroSem = nullptr;
Semaphore_k* TCB::oxySem= nullptr;
Semaphore_k* TCB::door1= nullptr;
Semaphore_k* TCB::door2= nullptr;

//DINING SAVAGE
const int S=50;

Semaphore_k* TCB::mutex = nullptr;
Semaphore_k* TCB::semSavage = nullptr;
Semaphore_k* TCB::semCook = nullptr;
int TCB::pot = 0;
bool TCB::fsDiningSavage=false;

//HUGRY BIRDS PROBLEM

bool TCB::setHngryBird=false;
Semaphore_k* TCB::parentt = nullptr;
Semaphore_k* TCB::mutexChild = nullptr;
Semaphore_k* TCB::mutexParent = nullptr;
const int F=24;//broj crva u posudi
int TCB::pot1 = 0;

//HONEY BEE PROBLEM
int TCB::kosnica=0;
bool TCB::fsMedaPcele=false;
Semaphore_k* TCB::mtx = nullptr;
Semaphore_k* TCB::bear = nullptr;

TCB* TCB::kreiraj_thread(TCB** handle, TCB::Body body, void* arg, char* stek){
    *handle = new TCB(body,arg,stek);

    return *handle;
}

//TCB::TCB(TCB &parent):
void TCB::yield()
{
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    else if(old->isFinished()){
        delete old->stack;
        old->stack = nullptr;
    }
    running = Scheduler::get();

    if(running->isMain()) {
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
        //setujem previous privilege na 1 -> privilegovan rezim
    }
    else{
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
        //klirujem previous privilege na 0 -> korisnicki rezim
        //sret me stavlja u rezim odredjen bitom spp automatski
        //ako sam u prekidnu rutinu usla sa spp = 0
        //vracam se u korisnicki
    }
    if(old!=running){
        TCB::contextSwitch(&old->context, &running->context);
        if(running->pinged){
            printString("Alocirani blokovi do pingovanja: ");
            printInt(running->getAllocatedBlocks());
            printString("\n");
            printString("Vreme:");
            printInt(running->getRunTime());
            printString("\n");
            running->setPinged(false);
        }
    }

}

void TCB::threadWrapper()
{

    //ovde sam u sistemskom rezimu
    Riscv::popSppSpie();
    //ovde sam u korisnickom rezimu
    running->body(running->arg);

    if(running->parent && running->parent->waitingForChildren){
        running->parent->joinAllsem->signal();
        running->parent->numberOfChildren--;
    }

    //set max threads
    if(setMaxTh && currThr>0){
        currThr--;
        semMaxThreads->signal();
    }



    //korisnicki rezim
    thread_exit();//prebaci me u sistemski rezim

    //running->setFinished(true);

    //sistemski poziv thread dispatch/thread exit, nikako kao na vezbama TCB::dispatch() ili TCB::yield()
    //jer cu ako zovem interni dispatch/yield zaglaviti u prekidnoj rutini u
    //korisnickom rezimu i onda cim pokusam da upisem u sepc
    //sve crkava zbog ilegalne instrukcije
}

void TCB::join(TCB *handle) {
    if(!handle->isFinished()){
        running->setBlocked(true);
        handle->joined.addLast(running);
    }
}


void TCB::pustiSveNiti() {
    while(this->joined.peekFirst()){
        TCB* tcb=this->joined.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    }
}





TCB::TCB(Body body, void *arg, char *stek):
        body(body),
        stack(body!= nullptr?(char*)((uint64)stek-DEFAULT_STACK_SIZE): nullptr), context({(uint64)&threadWrapper,(stack != nullptr ? (uint64) (stek) : 0)}),finished(false),
        blocked(false),main(body==nullptr),arg(arg),id(ID++),msgE(nullptr),msgA(nullptr),fsSemaphores(false),message(
        nullptr),parent(nullptr),waitingForChildren(false),joinALL(false),numberOfChildren(0),joinAllsem(nullptr),allocatedBlocks(0),pinged(false),runTime(0){


    if(body!=nullptr){

        parent=running;
        if(parent){
            parent->numberOfChildren++;
        }
        if(fsBarrier){
            numOFthreads++;
        }
        if(setMaxTh){
            semMaxThreads->wait();
            currThr++;
        }
        if(setBarrier2){
            threadCount++;
        }

        Scheduler::put(this);


    }

}














int TCB::getMyID() {
    return  this->id;
}



void TCB::setUnisexBatrroom() {
    empty = new Semaphore_k(4);
    toilet = new Semaphore_k(1);
    mutexMen = new Semaphore_k(1);
    mutexWomen = new Semaphore_k(1);
    entry = new Semaphore_k(1);
}

void TCB::man(unsigned int id) {
    if(!firstSet){
        setUnisexBatrroom();
        firstSet=true;
    }

    entry->wait();
    mutexMen->wait();
    printString("Usao novi muskarac, al ne koristi jos ");
    printString("ID: ");
    printInt(id);
    printString("\n");
    numOfMan++;
    if(numOfMan==1){
        toilet->wait();
        printString("Usao jedan muskarac, zene ne mogu sad ulaziti\n");
        printString("ID: ");
        printInt(id);
        printString("\n");
    }
    mutexMen->signal();
    thread_dispatch();

    entry->signal();
    thread_dispatch();
    empty->wait();
    printString("Muskarac koristi WC\n");
    printString("ID: ");
    printInt(id);
    printString("\n");
    empty->signal();
    thread_dispatch();
    mutexMen->wait();
    printString("Muskarac izasao iz WC\n");
    printString("ID: ");
    printInt(id);
    printString("\n");
    numOfMan--;
    if(numOfMan ==0){
        toilet->signal();
        thread_dispatch();
    }
    mutexMen->signal();
    thread_dispatch();


}



void TCB::woman(unsigned int id) {
    if(!firstSet){
        setUnisexBatrroom();
        firstSet=true;
    }
    entry->wait();
    mutexWomen->wait();
    printString("Usla nova zena,al ne koristi jos,  ");
    printString("ID: ");
    printInt(id);
    printString("\n");
    numOfWoman++;
    if(numOfWoman==1){
        toilet->wait();
        printString("Usla jedna zena, muskarci ne mogu sad ulaziti\n");
        printString("ID: ");
        printInt(id);
        printString("\n");
    }
    mutexWomen->signal();
    thread_dispatch();

    entry->signal();
    thread_dispatch();
    empty->wait();
    printString("Zena koristi WC\n");
    printString("ID: ");
    printInt(id);
    printString("\n");
    empty->signal();
    thread_dispatch();
    mutexWomen->wait();
    printString("Zena izasla iz WC\n");
    printString("ID: ");
    printInt(id);
    printString("\n");
    numOfWoman--;
    if(numOfWoman ==0){
        toilet->signal();
        thread_dispatch();
    }
    mutexWomen->signal();
    thread_dispatch();


}

void TCB::barrier() {
    if(!fsBarrier){
        fsBarrier = true;
        numOFthreads++;
    }
    numCalls++;

    if(numCalls==numOFthreads){
        numCalls=0;
        numOFthreads=0;
        fsBarrier=false;
        while(ListBarier.peekFirst()){
            TCB* t =ListBarier.removeFirst();
            t->setBlocked(false);
            Scheduler::put(t);

        }
    }
    else{
        running->setBlocked(true);
        ListBarier.addLast(running);

    }

}




char const *TCB::receive() {
    running->setSem();
    printString("Receive cekam...\n");
    running->msgA->wait();
    printString("Poruka primljena uspesno\n");
    char const* msg = running->message;
    running->msgE->signal();
    return msg;

}
void TCB::send(const char *msg) {
    setSem();
    printString("Send cekam...\n");
    msgE->wait();
    printString("Poruka poslata uspesno...\n");
    message = msg;
    msgA->signal();

}

void TCB::setSem() {
    if(!fsSemaphores){
        fsSemaphores=true;
        msgA=new Semaphore_k(0);
        msgE=new Semaphore_k(1);
    }

}

void TCB::joinAll() {

    if(!joinALL){
        joinALL=true;
        joinAllsem= new Semaphore_k(0);
        waitingForChildren=true;
    }
    for(int i=0;i<numberOfChildren;i++){
        joinAllsem->wait();
    }
    joinALL=false;
    numberOfChildren=0;
}

void TCB::setMaxThreads(unsigned int num) {
    if(!setMaxTh){
        setMaxTh=true;
        currThr = num;
        semMaxThreads = new Semaphore_k(num);
    }
}

void TCB::barrier_2() {
    setBarrier_2();

    firstDoor->wait();
    calls++;
    if(calls==threadCount){
        secondDoor->signal();
    }else{
        firstDoor->signal();
    }
    secondDoor->wait();
    calls--;
    if(calls==0){
        threadCount=1;
        firstDoor->signal();
    }else{
        secondDoor->signal();
    }

}

void TCB::setBarrier_2() {
    if(!setBarrier2){
        setBarrier2=true;
        firstDoor = new Semaphore_k(1);
        secondDoor = new Semaphore_k(0);
        numCalls=0;
        threadCount++;
    }
}


//atomic broadcast

int writeIndex=0;

void TCB::producer(int id) {
    if(!prodConsum){
        setAtomicBroadcast();
        prodConsum=true;
    }
    //int writeIndex=0;
    for(int k=0;k<10;k++){
        newItem +=100;
        emptyy->wait();
        buffer[writeIndex]=newItem;
        printString("buffer[");
        printInt(writeIndex);
        printString("] - producer id = ");
        printInt(id);
        printString("\n");
        writeIndex = (writeIndex+1)%CAPACITY;
        for(int i=0;i<M;i++){
            full[i]->signal();
            thread_dispatch();
        }

    }


}

void TCB::consumer(int id) {
    if(!prodConsum){
        setAtomicBroadcast();
        prodConsum=true;
    }
    int newI;
    int readIndex=0;
    for(int k=0;k<10;k++){
        full[id]->wait();
        newI=buffer[readIndex];
        mutexC[readIndex]->wait();
        consumerCnt[readIndex]++;

        printString("New item consumed: ");
        printInt(newI);
        printString(". Nit id = ");
        printInt(id);
        printString("\n");
        if(consumerCnt[readIndex]==M){
            consumerCnt[readIndex]=0;
            emptyy->signal();
            thread_dispatch();
        }
        mutexC[readIndex]->signal();
        thread_dispatch();
        readIndex=(readIndex+1)%CAPACITY;


    }
}

void TCB::setAtomicBroadcast() {
    emptyy = new Semaphore_k(CAPACITY);
    for(int i=0;i<M;i++){
        full[i]=new Semaphore_k(0);

    }
    for(int i=0;i<CAPACITY;i++){
        mutexC[i]=new Semaphore_k(1);

    }
}

//H2O problem
void TCB::oxygen(unsigned int id) {
    if(!fsH20){
        setAtomH20();
        fsH20=true;
    }
    oxySem->wait();
    auto * molekul= new Molecule ;
    barrier(id,&molekul,"O");
    printInt(molekul->ids[0]);
    printString("-");
    printInt(molekul->ids[1]);
    printString("-");
    printInt(molekul->ids[2]);
    printString("\n");
    printString(molekul->type[0]);
    printString("-");
    printString(molekul->type[1]);
    printString("-");
    printString(molekul->type[2]);
    printString("\n");

}

void TCB::hydrogen(unsigned int id) {
    if(!fsH20){
        setAtomH20();
        fsH20=true;
    }
    hydroSem->wait();

    auto * molekul= new Molecule ;
    barrier(id,&molekul,"H");
    printInt(molekul->ids[0]);
    printString("-");
    printInt(molekul->ids[1]);
    printString("-");
    printInt(molekul->ids[2]);
    printString("\n");
    printString(molekul->type[0]);
    printString("-");
    printString(molekul->type[1]);
    printString("-");
    printString(molekul->type[2]);
    printString("\n");

}
void TCB::barrier(unsigned int id, Molecule** molekul,const char* element) {
    door1->wait();
    molecule->ids[count] = id;
    molecule->type[count] = element;
    count++;
    if (count == 3) {
        door2->signal();
    } else {
        door1->signal();
    }
    door2->wait();
    *molekul = molecule;
    count--;
    if (count == 0) {
        hydroSem->signal();
        oxySem->signal();
        hydroSem->signal();
        door1->signal();

    } else {
        door2->signal();
    }
}
void TCB::setAtomH20() {
    hydroSem = new Semaphore_k(2);
    oxySem = new Semaphore_k(1);
    door1 = new Semaphore_k(1);
    door2 = new Semaphore_k(0);
    molecule = new Molecule;
    molecule->ids = new int[3];
    molecule->type = new const char * [3];
}

void TCB::savage(int id) {
    setDiningSavages();
    mutex->wait();
    if(pot==0){
        semCook->signal();
        // thread_dispatch();
        semSavage->wait();
    }
    pot--;
    mutex->signal();
    //thread_dispatch();
    printString("Div jede\n");

}

void TCB::cook() {
    setDiningSavages();
    semCook->wait();
    printString("Kuvar priprema hranu\n");
    pot=S;
    semSavage->signal();
    //thread_dispatch();

}

void TCB::setDiningSavages() {
    if(!fsDiningSavage){
        fsDiningSavage=true;
        mutex = new Semaphore_k(1);
        semSavage = new Semaphore_k(0);
        semCook = new Semaphore_k(0);
    }

}


void TCB::birdChild(unsigned int id) {
    setHungryBirds();
    mutexChild->wait();
    pot1--;
    printString("DETE PTICA JEDE -id: ");
    printInt(id);
    printString("\n");
    if(pot1==0){
        printString("Deca sve izjela - signal roditeljima\n");
        parentt->signal();

    }else{
        mutexChild->signal();
    }
    //printString("DETE PTICA JEDE\n");

}

void TCB::birdParent(unsigned int id) {
    setHungryBirds();
    parentHuntForChildren(id);
    parentForHuntForHimself(id);

}

void TCB::parentHuntForChildren(unsigned int id) {
    parentt->wait();
    mutexParent->wait();
    printString("Roditelj lovi za decu - id: ");
    printInt(id);
    printString("\n");
    for(int i=0;i<10000;i++){
        for(int j=0;j<10000;j++);
        thread_dispatch();
    };
    printString("Roditelj napunio ciniju\n");
    pot1 = F;
    mutexParent->signal();
    mutexChild->signal();

}

void TCB::parentForHuntForHimself(unsigned int id) {
    mutexParent->wait();
    printString("Roditelj lovi za sebe - id: ");
    printInt(id);
    printString("\n");
    for(int i=0;i<10000;i++){
        for(int j=0;j<10000;j++);
        thread_dispatch();
    };
    printString("Roditelj jeo - id: ");
    printInt(id);
    printString("\n");
    mutexParent->signal();

}

void TCB::setHungryBirds() {
    if(!setHngryBird){
        parentt = new Semaphore_k(1);
        mutexParent = new Semaphore_k(1);
        mutexChild = new Semaphore_k(0);
        setHngryBird= true;
    }

}
//HONEY BEE PROBLEM
void TCB::honeybe(unsigned int id) {
    setPceleMed();
    printString("Pcela skuplja med id - ");
    printInt(id);
    printString("\n");
    for(int i=0;i<1000;i++){
        for(int j=0;j<1000;j++);
        thread_dispatch();
    }
    mtx->wait();
    printString("Pcela donela med u kosnicu -id: ");
    printInt(id);
    printString("\n");
    kosnica++;
    if(kosnica==49){
        printString("Pcele napunile kosnicu budi medveda\n");
        bear->signal();
    }else{
        mtx->signal();
    }

}

void TCB::meda() {
    setPceleMed();
    printString("Meda ceka\n");
    bear->wait();
    printString("Meda jede med...");
    printString("\n");
    for(int i=0;i<100000;i++){
        for(int j=0;j<1000;j++);
        //thread_dispatch();
    }
    printString("Meda sve izjeo signal pcelama\n");
    kosnica=0;
    mtx->signal();

}

void TCB::setPceleMed() {
    if(!fsMedaPcele){
        fsMedaPcele=true;
        mtx=new Semaphore_k(1);
        bear = new Semaphore_k(0);
    }

}


//***TESTIRANJE - mogla bih ovde da pravim join,
//samo bih dodala u threadWrapper()
//pre poslednje linije running->pustiSveNiti

