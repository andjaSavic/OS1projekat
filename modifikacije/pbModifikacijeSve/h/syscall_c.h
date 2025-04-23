//
// Created by os on 5/17/24.
//

#ifndef syscall_c
#define syscall_c

#include "../lib/hw.h"

#include "memoryAllocator.hpp"

using Body = void (*)(void*);

class TCB;
typedef TCB* thread_t;
void* mem_alloc(size_t size);

int mem_free(void* p);



int thread_create(thread_t* handle,
                  void (*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();
int time_sleep(time_t time);




void thread_join(thread_t handle);

int thread_id(thread_t handle);
void th_running(thread_t handle);

void thread_man(unsigned id);
void thread_woman(unsigned id);

void thread_barriere();//preko liste

void thread_send(thread_t nit, char const* msg);
const char* thread_receive();
void thread_joinALL();

void thread_setMaxThread( int num);

void thread_barrier();//preko semafora

void thread_producer(int id);
void thread_consumer(int id);

void thread_o(unsigned id);
void thread_h(unsigned id);

void thread_savage(unsigned id);
void thread_cook( );

void thread_birdCH(unsigned int id);
void thread_birdPA(unsigned int id);

void thread_BEE(unsigned int id);
void thread_BEAR();

void thread_ping(thread_t handle);

class Semaphore_k;
typedef Semaphore_k* sem_t;
int sem_open(sem_t* handle, unsigned init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

int sem_trywait(sem_t id);

int sem_timedwait(sem_t id,time_t timeout);

int sem_waitN(sem_t id,unsigned init);
int sem_signalN(sem_t id);

const int EOF =-1;
char getc();

void putc(char c);



#endif //syscall_c
