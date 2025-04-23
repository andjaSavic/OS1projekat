 //
// Created by os on 5/17/24.
//


#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.h"
#include "../h/tcb.hpp"
#include "../h/Semaphore_k.hpp"
//***Semafor deo***
Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle, init);
}

Semaphore::~Semaphore() {
    if(myHandle){
        sem_close(this->myHandle);
        mem_free(myHandle);
        myHandle = nullptr;
    }


}

int Semaphore::wait() {
    return sem_wait(this->myHandle);
}

int Semaphore::signal() {
    return sem_signal(this->myHandle);
}


//da li i jedan od ovih testova proverava trywait? ----> NE, SMOR :(
int Semaphore::trywait() {
    return sem_trywait(this->myHandle);
}

//nisam radila asinhronu
int Semaphore::timedwait(time_t t) {
    return sem_timedwait(this->myHandle,t);
}

 int Semaphore::waitN(int n) {
     return sem_waitN(this->myHandle,n);
 }

 int Semaphore::signalN() {
     return sem_signalN(this->myHandle);
 }


//***Thread deo***
void Thread::dispatch() {
    thread_dispatch();
}

Thread::Thread(void (*body)(void *), void *arg) {

    myHandle= nullptr;
    this->body=body;
    this->arg=arg;



}


Thread::~Thread() {
    myHandle->setFinished(true);
    delete this->myHandle;
}

int Thread::start() {

    if(myHandle == nullptr){ thread_create(&myHandle,body,arg);
        return 0;
    }
    return -1;
}

Thread::Thread(){
    myHandle=nullptr;
    body = threadWrapper;
    arg = this;
}



int Thread::sleep(time_t time) {
    return 0;
}


void Thread::threadWrapper(void *thread) {
    ((Thread*)thread)->run();
}




 void Thread::setRunning(Thread *thread) {
     th_running(thread->myHandle);
 }

 int Thread::getThreadId() {
    return thread_id(myHandle);
 }

 void Thread::join() {
     thread_join(myHandle);
 }

 void Thread::man(unsigned int id) {
     thread_man(id);

 }

 void Thread::woman(unsigned int id) {
     thread_woman(id);
 }

 void Thread::barrier() {
    thread_barriere();
 }




 void Thread::send(char const* message) {
     thread_send(myHandle,message);
 }

 char const* Thread::receive() {
    return thread_receive();
 }

 void Thread::joinALL() {
    thread_joinALL();
 }

 void Thread::setMaxThreads(int num) {
     thread_setMaxThread(num);
 }

 void Thread::barrier_2() {
    thread_barrier();
 }

 void Thread::consumer(int id) {
     thread_consumer(id);

 }

 void Thread::producer(int id) {
    thread_producer(id);
 }

 void Thread::O(unsigned int id) {
     thread_o(id);

 }

 void Thread::H(unsigned int id) {
     thread_h(id);
 }

 void Thread::savage(unsigned int id) {
     thread_savage(id);

 }

 void Thread::cook() {
     thread_cook();
 }

 void Thread::birdChild(unsigned int id) {
     thread_birdCH(id);
 }

 void Thread::birdParent(unsigned int id) {
     thread_birdPA(id);
 }

 void Thread::meda() {
     thread_BEAR();

 }

 void Thread::pcela(unsigned int id) {
     thread_BEE(id);
 }

 void Thread::pingThread() {
     thread_ping(myHandle);
 }

 //**Konzola deo***
void Console::putc(char c) {
    syscall_c::putc(c);
}

char Console::getc() {
    return syscall_c::getc();
}

//***Ostalo - nisam radila***