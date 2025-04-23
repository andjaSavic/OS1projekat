//
// Created by os on 9/19/24.
//

#include "Test8.hpp"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"

static int ID=1;
static int X=13;
class A1:public Thread{
    int id;
    int type;
    //0-man
    //1-woman
public:
    A1(int t):Thread(),id(ID++),type(t){
        printString("Nit kreirana - id: ");
        printInt(id);
        printString("\n");
    }
protected:
    void run() override;
};

void A1::run() {
    for(int m=0;m<3;m++){
        printString("Nit, pocetak wrappera- id: ");
        printInt(id);
        printString("\n");
        printString("Iteracija: ");
        printInt(m);
        printString("\n");
        for(int i=0;i<1000;i++){
            for(int j=0;j<1000;j++){}
            thread_dispatch();
        }
        printString("Nit - id: ");
        printInt(id);
        printString("\n");
        printString("Iteracija: ");
        printInt(m);
        printString("\n");
        if(type){
            woman(id);
        }else if(type==0){
            man(id);
        }
        thread_dispatch();
        printString("Jedna itercija gotova\n");
    }

}
void test8(){
    A1* niz[X];
    for(int i=0;i<X;i++){
        if(i%3==0){
            niz[i]=new A1(0);
        }else{
            niz[i]=new A1(1);
        }
    }
    for(auto nit:niz){
        nit->start();
    }

    for(auto nit:niz){
        nit->join();
    }
    for(auto nit:niz){
        delete nit;
    }
    printString("TEST 8 - unisex WC gotov\n");
};


//BARIJERA - 1. nacin preko liste
static int IDD=1;

class A2:public Thread{
    int id;
public:
    A2():Thread(),id(IDD++){
        printString("Nit A kreirana\n");
    }
protected:
    void run() override;
};

void A2::run(){
    for(int m=0;m<3;m++){
        printString("Pocetak wrappera - nit id: ");
        printInt(id);
        printString(" i iteracija ");
        printInt(m);
        printString(". Obrada...\n");
        for(int i=0;i<1000;i++){
            for(int j=0;j<10000;j++){

            }
            thread_dispatch();
        }
        printString("Nit id: ");
        printInt(id);
        printString(" poziva barijeru, iteracija: ");
        printInt(m);
        printString("\n");
        barrier();
        printString("Nit id: ");
        printInt(id);
        printString(" prosla barijeru, iteracija: ");
        printInt(m);
        printString("\n");
    }
    printString("Gotove sve tri iteracije\n");
    printString("Nit id: ");
    printInt(id);
    printString("\n");
}

void testBarijera(){
    A2* niti[6];
    for(auto & nit:niti){
        nit = new A2();
    }
    for(auto & nit:niti){
        nit->start();
    }
    for(auto & nit:niti){
        nit->join();
    }
    for(auto & nit:niti){
        delete nit;
    }
    printString("TEST 8 - sinhronizacija na BARIJERI uspesno zavrsen\n");
}

//Barijera 2. nacin preko semafora
int z = 1;
class A6:public Thread{
    int id;
public:
    A6():Thread(),id(z++){
        printString("Nit id - ");
        printInt(id);
        printString(" kreirana\n");
    }
protected:
    void run() override;
};

void A6::run() {
    for(int i=0;i<3;i++){

        printString("Nit id - ");
        printInt(id);
        printString(" i pocetak obrade, iteracija: ");
        printInt(i);
        printString("\n");
        for(int j=0;j<10000;j++){
            for(int k=0;k<1000;k++){}
            thread_dispatch();
        }
        printString("Nit id - ");
        printInt(id);
        printString(" poziva barijeru, iteracija: ");
        printInt(i);
        printString("\n");
        Thread::barrier_2();
        printString("Nit id - ");
        printInt(id);
        printString(" prosla barijeru, iteracija: ");
        printInt(i);
        printString("\n");

    }
    printString("Nit id - ");
    printInt(id);
    printString(" zavrsila\n");
}
void testBarijera2(){
    A6* niz[10];
    for(auto & nit:niz){
        nit = new A6();
    }
    for(auto& nit : niz){
        nit->start();
    }
    for(auto& nit : niz){
        nit->join();
    }
    for(auto& nit : niz){
        delete nit;
    }
    printString("Test 8 - blokiranje na barijeri sa dvojakim vratima- USPESNO ZAVRSEN\n");
}

//SEND - RECEIVE
//POZIVAJUCA NIT - ona u cijem run wrapperu se poziva nit->send() se suspednuje ako nit nije primila
//neku poruku a poslata joj je
//POZIVAJUCA NIT - ona u cijem kontekstu se zove receive() se suspenduje ako nema poruka
int IDd=1;

class A3:public Thread{
    int id;

    Thread* toSend1;
    Thread* toSend2;

public:
    A3():Thread(),id(IDd++),toSend1(nullptr),toSend2(nullptr){
        printString("Nit A kreirana - id: ");
        printInt(id);
        printString("\n");
    }
    void setToSend(Thread* t1, Thread* t2){
        toSend1 = t1;
        toSend2 = t2;
    }
protected:
    void run() override;
};
void A3::run(){
    for(int m=1;m<6;m++){
        printString("A: ");
        printInt(m);
        printString("\n");
        for(int i=0;i<1000;i++){
            for(int j=0;j<10000;j++){

            }
            thread_dispatch();
        }

        printString("A: ");
        printInt(m);
        printString("\n");
        printString("A salje B\n");
        toSend1->send("B: poruka od A za B\n");
            printString("A salje C\n");
        toSend2->send("C: poruka od A za C\n ");
        printString("A poslala sve i sad prima: ");
        printInt(m);
        printString("\n");

//        printString("A prima poruke: ");
//        printInt(m);
//        printString(". put\n");
        printString(receive());
        printString(receive());
        printString("A sve primila: ");
        printInt(m);
        printString("\n");
    }
//    printString("Gotove sve tri iteracije\n");
//    printString("Nit A id: ");
//    printInt(id);
//    printString("\n");
}

class B3:public Thread{
    int id;

    Thread* toSend1;
    Thread* toSend2;

public:
    B3():Thread(),id(IDd++),toSend1(nullptr),toSend2(nullptr){
        printString("Nit B kreirana - id: ");
        printInt(id);
        printString("\n");
    }
    void setToSend(Thread* t1, Thread* t2){
        toSend1 = t1;
        toSend2 = t2;
    }
protected:
    void run() override;
};
void B3::run(){
    for(int m=1;m<6;m++){
        printString("B: ");
        printInt(m);
        printString("\n");
        for(int i=0;i<1000;i++){
            for(int j=0;j<10000;j++){

            }
            thread_dispatch();
        }

        printString("B: ");
        printInt(m);
        printString("\n");
        printString("B salje niti A\n");
        toSend1->send("A: poruka od B za A\n");
        printString("B poslala i sad prima: ");
        printInt(m);
        printString("\n");

//        printString("B prima poruke: ");
//        printInt(m);
//        printString(". put\n");
        printString(receive());
        printString(receive());
        printString("B primila sve: ");
        printInt(m);
        printString("\n");
    }
//    printString("Gotove sve tri iteracije\n");
//    printString("Nit B id: ");
//    printInt(id);
//    printString("\n");
}

class C3:public Thread{
    int id;

    Thread* toSend1;
    Thread* toSend2;

public:
    C3():Thread(),id(IDd++),toSend1(nullptr),toSend2(nullptr){
        printString("Nit kreirana - id: ");
        printInt(id);
        printString("\n");
    }
    void setToSend(Thread* t1, Thread* t2){
        toSend1 = t1;
        toSend2 = t2;
    }
protected:
    void run() override;
};
void C3::run(){
    for(int m=1;m<6;m++){
//        printString("Pocetak wrappera C- nit id: ");
//        printInt(id);
//        printString(" i iteracija ");
//        printInt(m);
//        printString(". Obrada...\n");
        printString("C: ");
        printInt(m);
        printString("\n");
        for(int i=0;i<1000;i++){
            for(int j=0;j<10000;j++){

            }
            thread_dispatch();
        }

        printString("C: ");
        printInt(m);
        printString("\n");
        printString("C salje poruku niti A\n");
        toSend1->send("A: poruka od C za A\n");
        printString("C salje8 poruku niti B\n");
        toSend2->send("B: poruka od C za B\n ");
        printString("C sve poruke poslate i sad prima: ");
        printInt(m);
        printString("\n");
        printString(receive());
        printString("C primila : ");
        printInt(m);
        printString("\n");

    }
//    printString("Gotove sve tri iteracije\n");
//    printString("Nit C id: ");
//    printInt(id);
//    printString("\n");
}

void testSEND_RECEIVE(){
    A3* a3 = new A3();
    B3* b3=new B3();
    C3* c3 = new C3();

    a3->setToSend(b3,c3);
    b3->setToSend(a3, nullptr);
    c3->setToSend(a3,b3);

    a3->start();
    b3->start();
    c3->start();

    a3->join();
    b3->join();
    c3->join();

    delete a3;
    delete b3;
    delete c3;

    printString("TEST 8 - Send/Receive message uspesno zavrsen\n");
}

int IDdd=1;

class A4:public Thread{
    int id;

public:
    A4():Thread(),id(IDdd++){
        printString("Nit A kreirana - id: ");
        printInt(id);
        printString("\n");
    }
protected:
    void run() override;
};


class B4:public Thread{
    int id;

public:
    B4():Thread(),id(IDdd++){
        printString("Nit B kreirana - id: ");
        printInt(id);
        printString("\n");
    }
protected:
    void run() override;
};

class C4:public Thread{
    int id;

public:
    C4():Thread(),id(IDdd++){
        printString("Nit C kreirana - id: ");
        printInt(id);
        printString("\n");
    }
protected:
    void run() override;
};

void A4::run(){

    B4* b1 = new B4();
    B4* b2 = new B4();
    B4* b3 = new B4();
    C4* c1 = new C4();
    b1->start();
    b2->start();
    b3->start();
    c1->start();
    printString("A obrada...\n ");
    for(int i=0;i<1000;i++){
        for(int j=0;j<10000;j++){

        }
        thread_dispatch();
    }
    joinALL();
    printString("A zavrsila\n");


}

void B4::run(){

    C4* c1 = new C4();
    C4* c2 = new C4();
    C4* c3 = new C4();
    c1->start();
    c2->start();
    c3->start();
    printString("B obrada...\n");
    for(int i=0;i<1000;i++){
        for(int j=0;j<10000;j++){

        }
        thread_dispatch();
    }
    joinALL();
    printString("B zavrsila \n");

}
void C4::run(){

    printString("C obrada...\n ");

    printString("\n");
    for(int i=0;i<1000;i++){
        for(int j=0;j<10000;j++){

        }
        thread_dispatch();
    }

    printString("C zavrsila \n");
    thread_dispatch();


}

void test_JOIN_all(){
    A4* a4 = new A4();
    a4->start();
    a4->join();
    delete a4;

    printString("TEST 8 - join ALL uspesno zavrsen\n");

}

//set Max User Threads
static int identifikator=1;
class A5:public Thread{
    int id;
public:
    A5():Thread(),id(identifikator++){
        printString("Nit A kreirana, ID: ");
        printInt(id);
        printString("\n");
    }
protected:
    void run() override;

};

void A5::run() {
    //int id = getThreadId();
    printString("Thread ID = ");
    printInt(id);
    printString(": START!\n");
    for(int i=0;i<5;i++){
        //int id = getThreadId();
        printString("Thread ID = ");
        printInt(id);
        printString(": HELLO! ");
        printString("Iteration: ");
        printInt(i);
        printString("\n");
        for(int j=0;j<10000;j++){
            for(int k=0;k<10000;k++){}
            thread_dispatch();
        }
//        printString("Thread ID = ");
//        printInt(id);
//        printString(": BACK FROM PROCESSING!\n");
//        printString("Iteration: ");
//        printInt(i);
//        printString("\n");

    }
    printString("Thread ID = ");
    printInt(id);
    printString(": END!\n");
}

void testSetMaxThreads(){
    Thread* threads[21];
    Thread::setMaxThreads(7);
    for(auto& th:threads){
        th=new A5();
    }
    for(auto& th:threads){
        th->start();
    }
    for(auto& th:threads){
        th->join();
    }
    for(auto& th:threads){
        delete th;
    }
    printString("TEST 8 - Maksimalan Broj Korisnickih Niti - USPESNO ZAVRSEN\n");

};
static int x=0;
class A7:public Thread{
    int id;
public:
    A7(): Thread(),id(x++){
        printString("Producer kreiran\n");
    }
protected:
    void run() override {

        printString("Producer run wrapper\n");
        for (int i = 0; i < 1000; i++) {
            for (int j = 0; j < 1000; j++) {}
            thread_dispatch();
        }
        printString("Pozivam producer metod\n");
        Thread::producer(id);

        printString("Producer finished\n");
        thread_dispatch();
    }
};

class B7:public Thread {

    int id;
public:
    B7() : Thread(), id(x++) {
        printString("Consumer kreiran\n");
    }

protected:
    void run() override{
//    }
        printString("Consumer run wrapper\n");
        for (int i = 0;i < 1000; i++) {
            for (int j = 0; j < 1000; j++) {}
            thread_dispatch();
        }
        printString("Pozivam consumer metod\n");
        Thread::consumer(id);

        printString("Consumer finished\n");

        thread_dispatch();
    }
};

void testAtomicBroadcast(){
    Thread* array[9];
    array[0] = new A7();
    //array[1] = new A7();

    x=0;
    for(int i=1;i<9;i++){
        array[i] = new B7();
    }
    for(auto& nit:array){
        nit->start();
    }

    for(auto& nit:array){
        nit->join();
    }

    for(auto& nit:array){
        delete nit;
    }
    printString("test 8 - atomic broadcast uspesno zavrsen\n");
}

static int BR=1;
static int TH=15;
class A8:public Thread{
    int id;
    int type;
    //0-oxygen
    //1-hidrogen
public:
    A8(int t):Thread(),id(BR++),type(t){
        printString("Nit kreirana - id: ");
        printInt(id);
        printString("\n");
    }
protected:
    void run() override;
};

void A8::run() {
    for(int m=0;m<3;m++){
        printString("Nit, pocetak wrappera- id: ");
        printInt(id);
        printString("\n");
        printString("Iteracija: ");
        printInt(m);
        printString("\n");
        for(int i=0;i<1000;i++){
            for(int j=0;j<1000;j++){}
            thread_dispatch();
        }
        printString("Nit - id: ");
        printInt(id);
        printString("\n");
        printString("Iteracija: ");
        printInt(m);
        printString("\n");
        if(type){
            H(id);
        }else if(type==0){
            O(id);
        }
        thread_dispatch();
        printString("Jedna itercija gotova\n");
    }

}
void testH2O(){
    A8* niz[TH];
    for(int i=0;i<TH;i++){
        if(i%3==0){
            niz[i]=new A8(0);
        }else{
            niz[i]=new A8(1);
        }
    }
    for(auto nit:niz){
        nit->start();
    }

    for(auto nit:niz){
        nit->join();
    }
    for(auto nit:niz){
        delete nit;
    }
    printString("TEST 8 - molekul kiseonika gotov\n");
};

static int iden=1;
static int XX=49;
class A9:public Thread{
    int id;
    int type;
    //0-savage
    //1-cook
public:
    A9(int t):Thread(),id(iden++),type(t){
        printString("Nit kreirana - id: ");
        printInt(id);
        printString("\n");
    }
protected:
    void run() override;
};

void A9::run() {
    for(int m=0;m<3;m++){
        printString("Nit, pocetak wrappera- id: ");
        printInt(id);
        printString("\n");
        printString("Iteracija: ");
        printInt(m);
        printString("\n");
        for(int i=0;i<1000;i++){
            for(int j=0;j<1000;j++){}
            thread_dispatch();
        }
        printString("Nit - id: ");
        printInt(id);
        printString("\n");
        printString("Iteracija: ");
        printInt(m);
        printString("\n");
        if(type){
            cook();
        }else if(type==0){
            savage(id);
        }
        thread_dispatch();
        printString("Jedna itercija gotova\n");
    }

}

void testDiningSavages(){
    A9* niz[XX];
    for(int i=0;i<30;i++){
        niz[i]=new A9(0);
    }
    niz[30] = new A9(1);
    for(int i=31;i<XX;i++){
        niz[i]=new A9(0);
    }
    for(auto nit:niz){
        nit->start();
    }

    for(auto nit:niz){
        nit->join();
    }
    for(auto nit:niz){
        delete nit;
    }
    printString("TEST 8 - DINING SAVAGE gotov\n");
};

static int num=1;
static int BIR=50;
class A10:public Thread{
    int id;
    int type;
    //0-child
    //1-parent
public:
    A10(int t):Thread(),id(num++),type(t){
        printString("Nit kreirana - id: ");
        printInt(id);
        printString("\n");
    }
protected:
    void run() override;
};

void A10::run() {
    for(int m=0;m<3;m++){
        printString("Nit, pocetak wrappera- id: ");
        printInt(id);
        printString("\n");
        printString("Iteracija: ");
        printInt(m);
        printString("\n");
        for(int i=0;i<1000;i++){
            for(int j=0;j<1000;j++){}
            thread_dispatch();
        }
        printString("Nit - id: ");
        printInt(id);
        printString("\n");
        printString("Iteracija: ");
        printInt(m);
        printString("\n");
        if(type){
            birdParent(id);
        }else if(type==0){
            birdChild(id);
        }
        //thread_dispatch();
        printString("Jedna itercija gotova\n");
    }

}

void testHungryBirds(){
    A10* niz[BIR];
    for(int i=0;i<BIR;i++){
        switch (i) {
            case 0:{
                niz[0]=new A10(0);
                break;
            }
            case 1:{
                niz[1] =new A10(1);
                break;
            }
            case 31:{
                niz[31] = new A10(1);
                break;
            }
            default:{
                niz[i] = new A10(0);
                break;
            }

        }
    }

    for(auto nit:niz){
        nit->start();
    }

    for(auto nit:niz){
        nit->join();
    }
    for(auto nit:niz){
        delete nit;
    }
    printString("TEST 8 - HUNGRY BIRDS - gotov\n");
}

static int number=1;
static int animals=50;
class A11:public Thread{
    int id;
    int type;
    //0-pcela
    //1-medved
public:
    A11(int t):Thread(),id(number++),type(t){
        printString("Nit kreirana - id: ");
        printInt(id);
        printString("\n");
    }
protected:
    void run() override;
};

void A11::run() {
    for(int m=0;m<3;m++){
        printString("Nit, pocetak wrappera- id: ");
        printInt(id);
        printString("\n");
        printString("Iteracija: ");
        printInt(m);
        printString("\n");
        for(int i=0;i<1000;i++){
            for(int j=0;j<1000;j++){}
            thread_dispatch();
        }
        printString("Nit - id: ");
        printInt(id);
        printString("\n");
        printString("Iteracija: ");
        printInt(m);
        printString("\n");
        if(type){
            meda();
        }else if(type==0){
            pcela(id);
        }
        //thread_dispatch();
        printString("Jedna itercija gotova\n");
    }

}




void testBeeBear() {
    A11* niz[animals];
    for(int i=0;i<animals;i++){
        switch (i) {

            case 5:{
                niz[5] =new A11(1);
                break;
            }

            default:{
                niz[i] = new A11(0);
                break;
            }

        }
    }

    for(auto nit:niz){
        nit->start();
    }

    for(auto nit:niz){
        nit->join();
    }
    for(auto nit:niz){
        delete nit;
    }
    printString("TEST 8 - HUNGRY BIRDS - gotov\n");
}
class A12:public Thread{
public:

    A12():Thread(){

    }
protected:
    void run() override;
};

class B12:public Thread{
public:

    B12():Thread(){

    }
protected:
    virtual void run();
};
Semaphore* sem2;
Semaphore* sem3;
void A12::run() {
    printString("Nit A obrada...\n");
    for(int i=0;i<1000;i++){
        for(int j=0;j<1000;j++){}
        thread_dispatch();
    };
    printString("Nit A hoce 10 zetona...\n");
    sem2->waitN(10);
    printString("Nit uzela 10 zetona \n");




    printString("A: zavrsila\n");

}

void B12::run() {

    for(int i =0;i<5;i++){
        sem2->signalN();
        printString("Nit B signalizira semafor 2\n");

    }

    for(int i=0;i<1000;i++){
        for(int j=0;j<1000;j++){}
        thread_dispatch();
    };
    printString("Nit B hoce 5 zetona\n");
    sem3->waitN(5);
    printString("Nit B uzela 5 zetona.\n");


    printString("B: Zavrsila!\n");

}


void testSemaforSaZetonima() {
    sem2 = new Semaphore(5);
    sem3 = new Semaphore(5);
    A12* a = new A12();
    B12* b = new B12();


    a->start();
    b->start();


    a->join();
    b->join();

//    delete sem2;
//    delete sem3;
    delete a;
    delete b;
};

class A13:public Thread {
private:

public:
    Thread* toPing;
    void setToPing(Thread* t1){
        toPing=t1;
    }
    A13() : Thread() {};
protected:
    virtual void run();
};

void A13::run(){
//    int* test = new int[600];
//    test[0]=1;
    for(int i=0;i<10;i++){
        for(uint64 j=0;j<30000;j++){
            for(int k=0;k<1000;k++){}
            thread_dispatch();
        }
        printString("A: ");
        printInt(i);
        printString("\n");
        if(i==7){
            printString("A: Pinging B...\n");
            toPing->pingThread();
        }
        printString("\n");
        thread_dispatch();
    }
}


class B13:public Thread {
private:

public:
    B13() : Thread() {};
protected:
    virtual void run();
};

void B13::run(){

    for(int i=0;i<10;i++){
        for(uint64 j=0;j<30000;j++){
            for(int k=0;k<1000;k++){}
            thread_dispatch();
        }
        printString("B: ");
        printInt(i);
        printString("\n");
        thread_dispatch();
    }
}

class C13:public Thread {
private:

public:
    Thread* toPing;
    C13(void* t) : Thread() {toPing = (Thread*)t;};

protected:
    virtual void run();
};

void C13::run(){
//    int* test = new int[600];
//    test[0]=1;
    for(int i=0;i<10;i++){
        for(uint64 j=0;j<30000;j++){
            for(int k=0;k<1000;k++){}
            thread_dispatch();
        }
        printString("C: ");
        printInt(i);
        printString("\n");
        if(i==5){
            printString("C: Pinging A...\n");
            toPing->pingThread();
        }
        thread_dispatch();
    }
}


void testPing(){
    //Thread *threads[3];


    A13* a1=new A13();
    printString("A kreiran\n");
    B13* b1=new B13();
    printString("B kreiran\n");
    C13* c1 =new C13(a1);

    a1->setToPing(c1);

    printString("C krieran\n");

    a1->start();
    b1->start();
    c1->start();

    //a1->join();
    b1->join();
    c1->join();

    delete a1;
    delete c1;
    delete b1;

    printString("TEST 8 - PING thread uspesno gotov\n");

}

static Semaphore* s;
static Semaphore* waitNiti;
class testTRYWait: public Thread{
private:
    Semaphore * sem;
public:
    testTRYWait(Semaphore* s): Thread(), sem(s){};

protected:
    void run() override{
        int i = 3;
        while(i>0){
            int id = getThreadId();
            int res = sem->trywait();
            //thread_dispatch();
            if(res==1){
                printString("Nit usla u kriticnu sekciju i smanjila semafor, njen id je: ");
                printInt(id,10,0);
                printString("\n");
                for(int j=0;j<10000;j++){
                    for(int k=0;k<30000;k++){}
                    thread_dispatch();
                }
                sem->signal();
                printString("Nit izasla iz kriticne sekcije, njen id je: ");
                printInt(id,10,0);
                printString("\n");

                break;



            }
            else if(res == -1){
                printString("Nit nije uspela da se prodje semafor, nastavlja dalje, njen id je: ");
                printInt(id,10,0);
                printString("\n");
                for(int j=0;j<10000;j++){
                    for(int k=0;k<30000;k++){}
                    thread_dispatch();
                }
            }
            else{
                printString("Semafor zatvoren i oslobodjen\n");
            }
            i--;
            thread_dispatch();

        }
        waitNiti->signal();
        printString("Nit zavrsila\n");
    };

};


void testTryWait(){
    Thread* th[10];
    s=new Semaphore(4);
    waitNiti=new Semaphore(0);
    for(int i=0;i<10;i++){
        th[i] = new testTRYWait(s);
    }

    for(int i=0;i<10;i++){
        th[i]->start();
    }

    for(int i=0;i<10;i++){
        waitNiti->wait();
    }

    for(int i=0;i<10;i++){
        delete th[i];
    }
    delete s;
    delete waitNiti;


    printString("Modifikacija TRY-wait, TEST 8, uspesno zavrsena\n");

}