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

    int waitN(int n);
    int signalN();

protected:
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
    static void joinALL();
    static void setRunning(Thread* thread);
    void man(unsigned int id);
    void woman(unsigned int id);
    void barrier();

    void send(char const* message);
    char const* receive();

    static void setMaxThreads( int num);
    static void barrier_2();

    void producer(int id);
    void consumer(int id);

    void O(unsigned int id);
    void H(unsigned int id);

    void savage(unsigned int id);
    void cook();

    void birdChild(unsigned int id);
    void birdParent(unsigned int id);

    void pcela(unsigned int id);
    void meda();

    void pingThread();
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