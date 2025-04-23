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
//void thread_wait();
int thread_id(thread_t handle);
void th_running(thread_t handle);

//void thread_8();
class Semaphore_k;
typedef Semaphore_k* sem_t;
int sem_open(sem_t* handle, unsigned init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

int sem_trywait(sem_t id);

int sem_timedwait(sem_t id,time_t timeout);



const int EOF =-1;
char getc();

void putc(char c);



#endif //syscall_c
