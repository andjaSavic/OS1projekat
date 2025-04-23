//
// Created by os on 5/17/24.
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"
#include "../h/Semaphore_k.hpp"

TCB *TCB::running = nullptr;
int TCB::ID =0;




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
    }

}

void TCB::threadWrapper()
{

    //ovde sam u sistemskom rezimu
    Riscv::popSppSpie();
    //ovde sam u korisnickom rezimu
    running->body(running->arg);

//    if(running->parent && running->parent->waitingForChildren){
//        running->parent->semWait->signal();
//    }


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
        blocked(false),main(body==nullptr),arg(arg),id(ID++){


    if(body!=nullptr){
        Scheduler::put(this);

    }

}


















//void TCB::setSemWait() {
//    semWait = new Semaphore(0);
//}
//TCB::TCB(Body body, void *arg, char *stek):
//        body(body),
//        stack(body!= nullptr?(char*)((uint64)stek-DEFAULT_STACK_SIZE): nullptr), context({
//                        (uint64)&threadWrapper,(stack != nullptr ? (uint64) (stek) : 0)
//                }),finished(false),
//        blocked(false),main(body==nullptr),arg(arg), semWait(nullptr),
//        fsWaitAll(false),nuberOfChildren(0),parent(nullptr),waitingForChildren(
//        false),id(ID++){
//
//
//    if(body!=nullptr){
//        parent=running;
//        if(parent){
//            parent->nuberOfChildren++;
//            parent->children.addLast(this);
//        }
//
//        Scheduler::put(this);
//
//    }
//
//}
//void TCB::wait() {
//    if(!fsWaitAll ){
//        fsWaitAll= true;
//        setSemWait();
//        waitingForChildren=true;
//    }
//    for(int i =0;i<nuberOfChildren;i++){
//        semWait->wait();
//    }
//
//    //thread_dispatch();
//
//}

int TCB::getMyID() {
    return  this->id;
}









//***TESTIRANJE - mogla bih ovde da pravim join,
//samo bih dodala u threadWrapper()
//pre poslednje linije running->pustiSveNiti

