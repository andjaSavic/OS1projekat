//
// Created by os on 5/17/24.
//

#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/tcb.hpp"


extern void userMain();




int main() {



    TCB *threads[2];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    thread_create(&threads[0], nullptr, nullptr);

    TCB::running = threads[0];

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);


    while (!threads[1]->isFinished()) {
        thread_dispatch();
    }



    printString("Vratila sam se u main\n");

    for(auto* i:threads){
        delete i;
    }



//    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//
//    auto* main = new Thread(nullptr, nullptr);
//    main->start();
//    //thread_create(&threads[0], nullptr, nullptr);
//    TCB::running = reinterpret_cast<TCB *>(main);
//    printString("Main postavljen za running\n");
//    auto* userMainn = new Thread(reinterpret_cast<void (*)(void *)>(userMain), nullptr);
//
//    userMainn->start();
//    userMainn->join();
//
//    printString("User main kraj\n");
//
//
//
//    printString("Vratila sam se u main\n");



    return 0;

};