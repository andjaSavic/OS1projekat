//
// Created by os on 5/17/24.
//

#include "../h/riscv.hpp"
#include "../h/sifre.h"
#include "../h/tcb.hpp"
#include "../h/Semaphore_k.hpp"
#include "../test/printing.hpp"
#include "../lib/console.h"



void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

using Body = void (*)(void*);



void Riscv::handleSupervisorTrap()
{
    volatile uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc();
    volatile uint64 sstatus = r_sstatus();
    //volatile uint64 stval = r_stval();
    if (scause == KORISNICKI_POZ || scause == SISTEMSKI_POZ)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        //uint64 volatile sepc = r_sepc() + 4;
        //uint64 volatile sstatus = r_sstatus();
        sepc+=4;
        uint64 codeOperation;
        __asm__ volatile ("ld %0,10*8(fp)":"=r"(codeOperation));
        int returnValue;
        Semaphore_k* semHandlePtr;
        switch (codeOperation) {
            //MEMORY DEO
            case MALLOC:
                //mem_alloc(size)

                uint64 size;
                void *ptr;
                __asm__ volatile ("ld %0,11*8(fp)":"=r"(size));
                ptr = memoryAllocator::mem_alloc(size*MEM_BLOCK_SIZE);
                //ptr = MemAlloc::getInstance().mem_alloc(size*MEM_BLOCK_SIZE);
                __asm__ volatile ("sd %0, 10*8(fp)"::"r"(ptr));
                break;

            case MFREE: {
                //mem_free(ptr)

                uint64 a;
                __asm__ volatile ("ld %0,11*8(fp)":"=r"(a));
                void *volatile memptr = (void *) a;

                returnValue = memoryAllocator::mem_free(memptr);
                //returnValue = MemAlloc::getInstance().mem_free(memptr);

                __asm__ volatile ("sd %0, 10*8(fp)"::"r"(returnValue));
                break;
            }
                //THREAD DEO

            case TH_CREATE: {
                //thread_create
                uint64 thandle;
                __asm__ volatile ("ld %[handle], 11*8(fp)" : [handle]"=r"(thandle));
                uint64 startR;
                __asm__ volatile ("ld %[rs], 12*8(fp)" : [rs]"=r"(startR));
                TCB::Body funct = (TCB::Body) startR;
                void *arg;
                __asm__ volatile("ld %[arg], 13*8(fp)": [arg] "=r"(arg));
                TCB **threadHandle = (TCB **) thandle;
                char* volatile stek;
                __asm__ volatile("ld %[stek], 14*8(fp)": [stek] "=r"(stek));

                //stek =(char*) memoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);

                *threadHandle = TCB::kreiraj_thread(threadHandle, funct, arg, stek);
                uint64 retVal = 0;
                if (threadHandle == nullptr)retVal = -1;
                __asm__ volatile ("sd %0, 10*8(fp)"::"r"(retVal));


                break;
            }
            case TH_EXIT:
                //thread_exit()

                TCB::running->pustiSveNiti();
                TCB::running->setFinished(true);

                __asm__ volatile ("li t0, 0");
                __asm__ volatile ("sw t0, 80(x8)");
                TCB::dispatch();
                break;

            case TH_DISPATH:
                //thread_dispatch()
                TCB::dispatch();
                break;
            case TH_JOIN:
                thread_t thandl;
                __asm__ volatile("ld %[handle], 11*8(fp)":[handle]"=r"(thandl));
                TCB::join(thandl);
                TCB::dispatch();
                break;

            case TH_ID:{
                thread_t thandle1;
                __asm__ volatile("ld %[handle], 11*8(fp)":[handle]"=r"(thandle1));
                returnValue=thandle1->getMyID();
                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));

                break;
            }
            case TH_SET_RUNNING:{
                thread_t thandle;
                __asm__ volatile("ld %[handle], 11*8(fp)":[handle]"=r"(thandle));
                TCB::running = thandle;
                break;
            }
            case TH_TEST_M:{
                unsigned int id;
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
                TCB::man(id);
                TCB::dispatch();
                break;
            }
            case TH_TEST_W:{
                unsigned int id;
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
                TCB::woman(id);
                TCB::dispatch();
                break;
            }
            case 0x53:{
                char const* mess;
                thread_t nit;
                __asm__ volatile("ld %[m], 12*8(fp)":[m]"=r"(mess));
                __asm__ volatile("ld %[n], 11*8(fp)":[n]"=r"(nit));
                nit->send(mess);
                TCB::dispatch();
                break;
            }
            case 0x54:{

                char const* retMess;

                retMess=TCB::receive();
                __asm__ volatile ("sd %0, 10*8(fp)"::"r"(retMess));
                //TCB::dispatch();
                break;
            }
            case 0x55:{
                TCB::running->joinAll();
                TCB::dispatch();
                break;
            }
            case 0x56:{
                unsigned int num;
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(num));
                TCB::setMaxThreads(num);
                //TCB::dispatch();
                break;
            }
            case 0x57:{
                TCB::barrier_2();
                TCB::dispatch();
                break;
            }
            case 0x58:{
                //producer
                int id;
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
                TCB::running->producer(id);
                TCB::dispatch();
                break;
            }
            case 0x59:{
                //consumer
                int id;
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
                TCB::running->consumer(id);
                TCB::dispatch();
                break;
            }
            case 0x60:{
                //O
                unsigned int id;
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
                TCB::oxygen(id);
                TCB::dispatch();
                break;
            }
            case 0x61:{
                //H
                unsigned int id;
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
                TCB::hydrogen(id);
                TCB::dispatch();
                break;
            }
            case 0x62:{
                //savage
                unsigned int id;
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
                TCB::savage(id);
                TCB::dispatch();
                break;
            }
            case 0x63:{
                //cook
                TCB::cook();
                TCB::dispatch();
                break;
            }
            case 0x64:{
                //dete ptica
                unsigned int id;
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
                TCB::birdChild(id);
                TCB::dispatch();
                break;
            }
            case 0x65:{
                //dete roditelj
                unsigned int id;
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
                TCB::birdParent(id);
                TCB::dispatch();
                break;
            }
            case 0x66:{
                //PCELA
                unsigned int id;
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
                TCB::honeybe(id);
                TCB::dispatch();
                break;
            }
            case 0x67:{
                //MEDVED
                TCB::meda();
                TCB::dispatch();
                break;
            }
            case 0x68:{
                unsigned in;

                __asm__ volatile ("ld %[handle], 11*8(fp)" : [handle]"=r"(semHandlePtr));
                __asm__ volatile ("ld %[init], 12*8(fp)" : [init]"=r"(in));
                if (semHandlePtr != nullptr) {
                    returnValue = semHandlePtr->waitN(in);
                } else returnValue = -2;

                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
                TCB::dispatch();
                break;
            }
            case 0x69:{
                __asm__ volatile ("ld %[handle], 11*8(fp)" : [handle]"=r"(semHandlePtr));

                if (semHandlePtr != nullptr) {
                    returnValue = semHandlePtr->signalN();
                } else returnValue = -2;

                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
                TCB::dispatch();
                break;
            }
            case 0x70: {
                //PING
                thread_t modhandle;
                __asm__ volatile("ld %[handle],11*8(fp)":[handle]"=r"(modhandle));
                modhandle->pingThread();
                TCB::dispatch();
                break;
            }
            //SEMAFOR DEO
            case SEM_OPEN:{
                //sem_open
                unsigned init;
                Semaphore_k **semHandle;
                __asm__ volatile ("ld %[handle], 11*8(fp)" : [handle]"=r"(semHandle));
                __asm__ volatile ("ld %[init], 12*8(fp)" : [init]"=r"(init));

                *semHandle = Semaphore_k::kreirajSemafor(init);
                int ret = 0;
                if (semHandle == nullptr) {
                    ret = -1;
                } else {
                    ret = 0;
                }
                __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));

            }

            case SEM_CLOSE:
                //sem_close


                __asm__ volatile("ld %[arg], 11*8(fp)": [arg] "=r"(semHandlePtr));

                if (semHandlePtr != nullptr) {
                    returnValue = semHandlePtr->close();
                } else returnValue = -2;

                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
                break;

            case SEM_WAIT:
                //sem_wait
                __asm__ volatile("ld %[arg], 11*8(fp)": [arg] "=r"(semHandlePtr));
                if (semHandlePtr != nullptr) {
                    returnValue = semHandlePtr->wait();
                } else returnValue = -2;

                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
                break;
            case SEM_SIGNAL:
                //sem_signal
                __asm__ volatile("ld %[arg], 11*8(fp)": [arg] "=r"(semHandlePtr));
                if (semHandlePtr != nullptr) {
                    returnValue = semHandlePtr->signal();
                } else returnValue = -2;

                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
                break;

            case SEM_TRYWAT:
                //sem_signal
                __asm__ volatile("ld %[arg], 11*8(fp)": [arg] "=r"(semHandlePtr));
                if (semHandlePtr != nullptr) {
                    returnValue = semHandlePtr->trywait();
                } else returnValue = -2;

                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
                break;
            //ISPIS DEO - njihov putc/getc
            case GETC: {
                //volatile char c = __getc();
                char c=__getc();
                __asm__ volatile("sd %0,10*8(fp)"::"r"(c));
                break;
            }
            case PUTC:{
                //putc
                volatile uint64 ch;
                __asm__ volatile("ld t2, 8*11(fp)");
                __asm__ volatile("mv %0, t2" : "=r" (ch));
                __putc((char)ch);
                break;

            }
            case 0x52:{
                TCB::barrier();
                TCB::dispatch();
                break;
            }
            default:

                break;
        }


    }
    else if(scause == KONZ){
        //radim sa njihovim console_handlerom
        console_handler();
        w_sstatus(sstatus);
        w_sepc(sepc);
        w_sstatus(sstatus);
        //spoljasnji hardverski prekid (od konzole)

    }
    else if(scause == TIMER){
       // interrupt: da; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        if(TCB::running!= nullptr)TCB::running->incrementTime();

    }


    else
    {

        printString("scause: ");
        printInt(scause);
        printString("\n");
        printString("sepc: ");
        printInt(sepc,16,0);
        printString("\n");

//        printString("\n");
        //stavila sam praznu petlju
        //da mi u testu sedam
        //kad pukne, ne bi ispisivao
        //scause 2 petsto puta

        __asm__ volatile("li a0,0x5555");
        __asm__ volatile("li a1,0x100000");
        __asm__ volatile("sw a0, 0(a1)");
        //while(1);

    }
    w_sstatus(sstatus);
    w_sepc(sepc);


}
