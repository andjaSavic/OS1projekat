//
// Created by os on 5/11/24.
//

#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "List.hpp"

class TCB;

class Scheduler
{
public:
    static Lista<TCB> readyThreadQueue;

public:
    static TCB *get();

    static void put(TCB *ccb);

};

#endif