//
// Created by os on 5/17/24.
//

#ifndef syscall_cpp
#define syscall_cpp

#include "syscall_c.h"


void* operator new(size_t size);
void operator delete(void* p) noexcept;

class Semaphore {
public:
    explicit Semaphore(unsigned init = 1);
    virtual ~Semaphore();

    int wait();
    int signal();
    int timedwait(time_t timeout) ;
    int trywait();

private:
    sem_t myHandle;
};

class Thread {
public:

    Thread(void (*body)(void*), void* arg);
    virtual ~Thread();

    int start();
    static void dispatch();
    static int sleep(time_t time);
    int getThreadId();


    void join();
//    static void waitAll();
    static void setRunning(Thread* thread);
protected:
    Thread();
    virtual void run(){};
    //thread_t myHandle;

private:

    thread_t myHandle;
    void (*body)(void*);
    void* arg;
    //const char* message;


    //wrapper za poziv run() metode
    static void threadWrapper(void* thread);
};







class Console {
public:
    static void putc(char c);
    static char getc();
};

//Nisam radila asinhronu
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
private:
    time_t period;
};


#endif //syscall_cpp