//
// Created by os on 5/17/24.
//

#ifndef SIFRE_H
#define SIFRE_H
#include "../lib/hw.h"
enum kodOperacije:uint64{
    MALLOC =0X01,
    MFREE=0X02,
    TH_CREATE=0X11,
    TH_EXIT = 0X12,
    TH_DISPATH =0X13,
    TH_JOIN =0X14,
    SEM_OPEN = 0X21,
    SEM_CLOSE =0X22,
    SEM_WAIT=0X23,
    SEM_SIGNAL=0X24,
    SEM_TIMEDWAIT=0X25,
    SEM_TRYWAT=0X26,
    SLEEP=0X31,
    GETC=0X41,
    PUTC=0X42,
//znaci ne smem dodavati sis pozive koji ne pisu?
    TH_ID=0x15,
    TH_WAIT =0x54,
    TH_SET_RUNNING=0x66,
    TH_TEST_8=0x50
};

enum uzrok:uint64{
    KORISNICKI_POZ=0x0000000000000008UL,
    SISTEMSKI_POZ =0x0000000000000009UL,
    TIMER =0x8000000000000001UL,
    KONZ =0x8000000000000009UL
};

#endif
