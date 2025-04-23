
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00016117          	auipc	sp,0x16
    80000004:	9c013103          	ld	sp,-1600(sp) # 800159c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	09c0d0ef          	jal	ra,8000d0b8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
# 1 "src/registersUtil.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
    80001000:	f0010113          	addi	sp,sp,-256
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 32 "<command-line>" 2
# 1 "src/registersUtil.S"
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04b13c23          	sd	a1,88(sp)
    80001024:	06c13023          	sd	a2,96(sp)
    80001028:	06d13423          	sd	a3,104(sp)
    8000102c:	06e13823          	sd	a4,112(sp)
    80001030:	06f13c23          	sd	a5,120(sp)
    80001034:	09013023          	sd	a6,128(sp)
    80001038:	09113423          	sd	a7,136(sp)
    8000103c:	09213823          	sd	s2,144(sp)
    80001040:	09313c23          	sd	s3,152(sp)
    80001044:	0b413023          	sd	s4,160(sp)
    80001048:	0b513423          	sd	s5,168(sp)
    8000104c:	0b613823          	sd	s6,176(sp)
    80001050:	0b713c23          	sd	s7,184(sp)
    80001054:	0d813023          	sd	s8,192(sp)
    80001058:	0d913423          	sd	s9,200(sp)
    8000105c:	0da13823          	sd	s10,208(sp)
    80001060:	0db13c23          	sd	s11,216(sp)
    80001064:	0fc13023          	sd	t3,224(sp)
    80001068:	0fd13423          	sd	t4,232(sp)
    8000106c:	0fe13823          	sd	t5,240(sp)
    80001070:	0ff13c23          	sd	t6,248(sp)
# 1 "src/registersUtil.S"
    80001074:	00008067          	ret

0000000080001078 <_ZN5Riscv12popRegistersEv>:
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 32 "<command-line>" 2
# 1 "src/registersUtil.S"
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    80001078:	01813183          	ld	gp,24(sp)
    8000107c:	02013203          	ld	tp,32(sp)
    80001080:	02813283          	ld	t0,40(sp)
    80001084:	03013303          	ld	t1,48(sp)
    80001088:	03813383          	ld	t2,56(sp)
    8000108c:	04013403          	ld	s0,64(sp)
    80001090:	04813483          	ld	s1,72(sp)
    80001094:	05813583          	ld	a1,88(sp)
    80001098:	06013603          	ld	a2,96(sp)
    8000109c:	06813683          	ld	a3,104(sp)
    800010a0:	07013703          	ld	a4,112(sp)
    800010a4:	07813783          	ld	a5,120(sp)
    800010a8:	08013803          	ld	a6,128(sp)
    800010ac:	08813883          	ld	a7,136(sp)
    800010b0:	09013903          	ld	s2,144(sp)
    800010b4:	09813983          	ld	s3,152(sp)
    800010b8:	0a013a03          	ld	s4,160(sp)
    800010bc:	0a813a83          	ld	s5,168(sp)
    800010c0:	0b013b03          	ld	s6,176(sp)
    800010c4:	0b813b83          	ld	s7,184(sp)
    800010c8:	0c013c03          	ld	s8,192(sp)
    800010cc:	0c813c83          	ld	s9,200(sp)
    800010d0:	0d013d03          	ld	s10,208(sp)
    800010d4:	0d813d83          	ld	s11,216(sp)
    800010d8:	0e013e03          	ld	t3,224(sp)
    800010dc:	0e813e83          	ld	t4,232(sp)
    800010e0:	0f013f03          	ld	t5,240(sp)
    800010e4:	0f813f83          	ld	t6,248(sp)
    addi sp,sp,-256
    800010e8:	10010113          	addi	sp,sp,256
    .irp index, 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    800010ec:	00008067          	ret

00000000800010f0 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    800010f0:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    800010f4:	00013023          	sd	zero,0(sp)
    800010f8:	00113423          	sd	ra,8(sp)
    800010fc:	00213823          	sd	sp,16(sp)
    80001100:	00313c23          	sd	gp,24(sp)
    80001104:	02413023          	sd	tp,32(sp)
    80001108:	02513423          	sd	t0,40(sp)
    8000110c:	02613823          	sd	t1,48(sp)
    80001110:	02713c23          	sd	t2,56(sp)
    80001114:	04813023          	sd	s0,64(sp)
    80001118:	04913423          	sd	s1,72(sp)
    8000111c:	04a13823          	sd	a0,80(sp)
    80001120:	04b13c23          	sd	a1,88(sp)
    80001124:	06c13023          	sd	a2,96(sp)
    80001128:	06d13423          	sd	a3,104(sp)
    8000112c:	06e13823          	sd	a4,112(sp)
    80001130:	06f13c23          	sd	a5,120(sp)
    80001134:	09013023          	sd	a6,128(sp)
    80001138:	09113423          	sd	a7,136(sp)
    8000113c:	09213823          	sd	s2,144(sp)
    80001140:	09313c23          	sd	s3,152(sp)
    80001144:	0b413023          	sd	s4,160(sp)
    80001148:	0b513423          	sd	s5,168(sp)
    8000114c:	0b613823          	sd	s6,176(sp)
    80001150:	0b713c23          	sd	s7,184(sp)
    80001154:	0d813023          	sd	s8,192(sp)
    80001158:	0d913423          	sd	s9,200(sp)
    8000115c:	0da13823          	sd	s10,208(sp)
    80001160:	0db13c23          	sd	s11,216(sp)
    80001164:	0fc13023          	sd	t3,224(sp)
    80001168:	0fd13423          	sd	t4,232(sp)
    8000116c:	0fe13823          	sd	t5,240(sp)
    80001170:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001174:	174030ef          	jal	ra,800042e8 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001178:	00013003          	ld	zero,0(sp)
    8000117c:	00813083          	ld	ra,8(sp)
    80001180:	01013103          	ld	sp,16(sp)
    80001184:	01813183          	ld	gp,24(sp)
    80001188:	02013203          	ld	tp,32(sp)
    8000118c:	02813283          	ld	t0,40(sp)
    80001190:	03013303          	ld	t1,48(sp)
    80001194:	03813383          	ld	t2,56(sp)
    80001198:	04013403          	ld	s0,64(sp)
    8000119c:	04813483          	ld	s1,72(sp)
    800011a0:	05013503          	ld	a0,80(sp)
    800011a4:	05813583          	ld	a1,88(sp)
    800011a8:	06013603          	ld	a2,96(sp)
    800011ac:	06813683          	ld	a3,104(sp)
    800011b0:	07013703          	ld	a4,112(sp)
    800011b4:	07813783          	ld	a5,120(sp)
    800011b8:	08013803          	ld	a6,128(sp)
    800011bc:	08813883          	ld	a7,136(sp)
    800011c0:	09013903          	ld	s2,144(sp)
    800011c4:	09813983          	ld	s3,152(sp)
    800011c8:	0a013a03          	ld	s4,160(sp)
    800011cc:	0a813a83          	ld	s5,168(sp)
    800011d0:	0b013b03          	ld	s6,176(sp)
    800011d4:	0b813b83          	ld	s7,184(sp)
    800011d8:	0c013c03          	ld	s8,192(sp)
    800011dc:	0c813c83          	ld	s9,200(sp)
    800011e0:	0d013d03          	ld	s10,208(sp)
    800011e4:	0d813d83          	ld	s11,216(sp)
    800011e8:	0e013e03          	ld	t3,224(sp)
    800011ec:	0e813e83          	ld	t4,232(sp)
    800011f0:	0f013f03          	ld	t5,240(sp)
    800011f4:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800011f8:	10010113          	addi	sp,sp,256

    sret
    800011fc:	10200073          	sret

0000000080001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001200:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001204:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001208:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000120c:	0085b103          	ld	sp,8(a1)

    80001210:	00008067          	ret

0000000080001214 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001214:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001218:	00b29a63          	bne	t0,a1,8000122c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000121c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001220:	fe029ae3          	bnez	t0,80001214 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001224:	00000513          	li	a0,0
    jr ra                  # Return.
    80001228:	00008067          	ret

000000008000122c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000122c:	00100513          	li	a0,1
    80001230:	00008067          	ret

0000000080001234 <_Z9mem_allocm>:

#include "../h/syscall_c.h"
#include "../h/sifre.h"


void* mem_alloc(size_t size) {
    80001234:	ff010113          	addi	sp,sp,-16
    80001238:	00813423          	sd	s0,8(sp)
    8000123c:	01010413          	addi	s0,sp,16

    size_t blokovi = (size % MEM_BLOCK_SIZE == 0) ?
    80001240:	03f57793          	andi	a5,a0,63
    80001244:	02079263          	bnez	a5,80001268 <_Z9mem_allocm+0x34>
    80001248:	00655513          	srli	a0,a0,0x6
                     (1 + size / MEM_BLOCK_SIZE);


    //moram da prosledim size koji je u blokovima zato radim ovo deljenje gore
    //tako pise u projektu
    __asm__ volatile("mv a1, %0" : : "r"(blokovi));
    8000124c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01");
    80001250:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    80001254:	00000073          	ecall


    void* returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001258:	00050513          	mv	a0,a0
    return returnValue;
}
    8000125c:	00813403          	ld	s0,8(sp)
    80001260:	01010113          	addi	sp,sp,16
    80001264:	00008067          	ret
                     (1 + size / MEM_BLOCK_SIZE);
    80001268:	00655513          	srli	a0,a0,0x6
    size_t blokovi = (size % MEM_BLOCK_SIZE == 0) ?
    8000126c:	00150513          	addi	a0,a0,1
    80001270:	fddff06f          	j	8000124c <_Z9mem_allocm+0x18>

0000000080001274 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80001274:	ff010113          	addi	sp,sp,-16
    80001278:	00813423          	sd	s0,8(sp)
    8000127c:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a1, %0" : : "r"(ptr));
    80001280:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02");
    80001284:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    80001288:	00000073          	ecall


    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    8000128c:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001290:	0005051b          	sext.w	a0,a0
    80001294:	00813403          	ld	s0,8(sp)
    80001298:	01010113          	addi	sp,sp,16
    8000129c:	00008067          	ret

00000000800012a0 <_Z13thread_createPP3TCBPFvPvES2_>:


int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    800012a0:	fc010113          	addi	sp,sp,-64
    800012a4:	02113c23          	sd	ra,56(sp)
    800012a8:	02813823          	sd	s0,48(sp)
    800012ac:	02913423          	sd	s1,40(sp)
    800012b0:	03213023          	sd	s2,32(sp)
    800012b4:	01313c23          	sd	s3,24(sp)
    800012b8:	04010413          	addi	s0,sp,64
    800012bc:	00050493          	mv	s1,a0
    800012c0:	00058913          	mv	s2,a1
    800012c4:	00060993          	mv	s3,a2

    void* stack_space;
    stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800012c8:	00001537          	lui	a0,0x1
    800012cc:	00000097          	auipc	ra,0x0
    800012d0:	f68080e7          	jalr	-152(ra) # 80001234 <_Z9mem_allocm>
    if(!stack_space) return -1;
    800012d4:	04050a63          	beqz	a0,80001328 <_Z13thread_createPP3TCBPFvPvES2_+0x88>


    asm volatile("mv a4, %[stek]" ::[stek] "r" ((uint64)stack_space+DEFAULT_STACK_SIZE));
    800012d8:	000017b7          	lui	a5,0x1
    800012dc:	00f507b3          	add	a5,a0,a5
    800012e0:	00078713          	mv	a4,a5
    __asm__ volatile("mv a3, %[arg]": : [arg] "r" (arg));
    800012e4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %[arg]": : [arg] "r" (start_routine));
    800012e8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %[arg]" : : [arg] "r" (handle));
    800012ec:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %[code]" : : [code] "r" (TH_CREATE));
    800012f0:	01100793          	li	a5,17
    800012f4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012f8:	00000073          	ecall

    volatile uint64 returnval;
    __asm__ volatile("mv %0, a0": "=r"(returnval));
    800012fc:	00050793          	mv	a5,a0
    80001300:	fcf43423          	sd	a5,-56(s0)
    return (int) returnval;
    80001304:	fc843503          	ld	a0,-56(s0)
    80001308:	0005051b          	sext.w	a0,a0
}
    8000130c:	03813083          	ld	ra,56(sp)
    80001310:	03013403          	ld	s0,48(sp)
    80001314:	02813483          	ld	s1,40(sp)
    80001318:	02013903          	ld	s2,32(sp)
    8000131c:	01813983          	ld	s3,24(sp)
    80001320:	04010113          	addi	sp,sp,64
    80001324:	00008067          	ret
    if(!stack_space) return -1;
    80001328:	fff00513          	li	a0,-1
    8000132c:	fe1ff06f          	j	8000130c <_Z13thread_createPP3TCBPFvPvES2_+0x6c>

0000000080001330 <_Z11thread_exitv>:

int thread_exit() {
    80001330:	ff010113          	addi	sp,sp,-16
    80001334:	00813423          	sd	s0,8(sp)
    80001338:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000133c:	01200513          	li	a0,18
    __asm__ volatile ("ecall");
    80001340:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001344:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001348:	0005051b          	sext.w	a0,a0
    8000134c:	00813403          	ld	s0,8(sp)
    80001350:	01010113          	addi	sp,sp,16
    80001354:	00008067          	ret

0000000080001358 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001358:	ff010113          	addi	sp,sp,-16
    8000135c:	00813423          	sd	s0,8(sp)
    80001360:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001364:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    80001368:	00000073          	ecall

}
    8000136c:	00813403          	ld	s0,8(sp)
    80001370:	01010113          	addi	sp,sp,16
    80001374:	00008067          	ret

0000000080001378 <_Z8sem_openPP11Semaphore_kj>:

int sem_open(sem_t* handle, unsigned init) {
    80001378:	ff010113          	addi	sp,sp,-16
    8000137c:	00813423          	sd	s0,8(sp)
    80001380:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    80001384:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001388:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000138c:	02100513          	li	a0,33
    __asm__ volatile ("ecall");
    80001390:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001394:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001398:	0005051b          	sext.w	a0,a0
    8000139c:	00813403          	ld	s0,8(sp)
    800013a0:	01010113          	addi	sp,sp,16
    800013a4:	00008067          	ret

00000000800013a8 <_Z9sem_closeP11Semaphore_k>:

int sem_close(sem_t handle) {
    800013a8:	ff010113          	addi	sp,sp,-16
    800013ac:	00813423          	sd	s0,8(sp)
    800013b0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    800013b4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800013b8:	02200513          	li	a0,34
    __asm__ volatile ("ecall");
    800013bc:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800013c0:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800013c4:	0005051b          	sext.w	a0,a0
    800013c8:	00813403          	ld	s0,8(sp)
    800013cc:	01010113          	addi	sp,sp,16
    800013d0:	00008067          	ret

00000000800013d4 <_Z8sem_waitP11Semaphore_k>:

int sem_wait(sem_t id) {
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00813423          	sd	s0,8(sp)
    800013dc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800013e0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013e4:	02300513          	li	a0,35
    __asm__ volatile ("ecall");
    800013e8:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800013ec:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800013f0:	0005051b          	sext.w	a0,a0
    800013f4:	00813403          	ld	s0,8(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z10sem_signalP11Semaphore_k>:

int sem_signal(sem_t id) {
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00813423          	sd	s0,8(sp)
    80001408:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    8000140c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001410:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    80001414:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001418:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    8000141c:	0005051b          	sext.w	a0,a0
    80001420:	00813403          	ld	s0,8(sp)
    80001424:	01010113          	addi	sp,sp,16
    80001428:	00008067          	ret

000000008000142c <_Z11sem_trywaitP11Semaphore_k>:

int sem_trywait(sem_t id) {
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00813423          	sd	s0,8(sp)
    80001434:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id)); // Postavljanje argumenta id u registar a1
    80001438:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x26"); // Postavljanje identifikatora sistemskog poziva za trywait (pretpostavljeni broj 0x25)
    8000143c:	02600513          	li	a0,38
    __asm__ volatile ("ecall"); // Izvršavanje sistema
    80001440:	00000073          	ecall

    uint64 returnValue; // Promenljiva za čuvanje povratne vrednosti
    __asm__ volatile("mv %0, a0" : "=r"(returnValue)); // Čuvanje povratne vrednosti iz a0 u returnValue
    80001444:	00050513          	mv	a0,a0
    return (int)returnValue; // Povratna vrednost funkcije
}
    80001448:	0005051b          	sext.w	a0,a0
    8000144c:	00813403          	ld	s0,8(sp)
    80001450:	01010113          	addi	sp,sp,16
    80001454:	00008067          	ret

0000000080001458 <_Z13sem_timedwaitP11Semaphore_km>:

int sem_timedwait(sem_t id, time_t timeoutSeconds) {
    80001458:	ff010113          	addi	sp,sp,-16
    8000145c:	00813423          	sd	s0,8(sp)
    80001460:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id)); // Postavljanje argumenta id u registar a1
    80001464:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a2, %0" : : "r" (timeoutSeconds)); // Postavljanje argumenta timeoutSeconds u registar a2
    80001468:	00058613          	mv	a2,a1
    __asm__ volatile("li a0, 0x26"); // Postavljanje identifikatora sistemskog poziva za timedwait (pretpostavljeni broj 0x26)
    8000146c:	02600513          	li	a0,38
    __asm__ volatile ("ecall"); // Izvršavanje sistema
    80001470:	00000073          	ecall

    uint64 returnValue; // Promenljiva za čuvanje povratne vrednosti
    __asm__ volatile("mv %0, a0" : "=r"(returnValue)); // Čuvanje povratne vrednosti iz a0 u returnValue
    80001474:	00050513          	mv	a0,a0
    return (int)returnValue; // Povratna vrednost funkcije
}
    80001478:	0005051b          	sext.w	a0,a0
    8000147c:	00813403          	ld	s0,8(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_Z9sem_waitNP11Semaphore_kj>:



int sem_waitN(sem_t id, unsigned init) {
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00813423          	sd	s0,8(sp)
    80001490:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    80001494:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001498:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x68");
    8000149c:	06800513          	li	a0,104
    __asm__ volatile ("ecall");
    800014a0:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800014a4:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800014a8:	0005051b          	sext.w	a0,a0
    800014ac:	00813403          	ld	s0,8(sp)
    800014b0:	01010113          	addi	sp,sp,16
    800014b4:	00008067          	ret

00000000800014b8 <_Z11sem_signalNP11Semaphore_k>:
int sem_signalN(sem_t id) {
    800014b8:	ff010113          	addi	sp,sp,-16
    800014bc:	00813423          	sd	s0,8(sp)
    800014c0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800014c4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x69");
    800014c8:	06900513          	li	a0,105
    __asm__ volatile ("ecall");
    800014cc:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800014d0:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800014d4:	0005051b          	sext.w	a0,a0
    800014d8:	00813403          	ld	s0,8(sp)
    800014dc:	01010113          	addi	sp,sp,16
    800014e0:	00008067          	ret

00000000800014e4 <_Z4getcv>:

char getc() {
    800014e4:	ff010113          	addi	sp,sp,-16
    800014e8:	00813423          	sd	s0,8(sp)
    800014ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800014f0:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    800014f4:	00000073          	ecall

    char returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800014f8:	00050513          	mv	a0,a0
    return returnValue;
}
    800014fc:	0ff57513          	andi	a0,a0,255
    80001500:	00813403          	ld	s0,8(sp)
    80001504:	01010113          	addi	sp,sp,16
    80001508:	00008067          	ret

000000008000150c <_Z4putcc>:

void putc(char c) {
    8000150c:	ff010113          	addi	sp,sp,-16
    80001510:	00813423          	sd	s0,8(sp)
    80001514:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    80001518:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000151c:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    80001520:	00000073          	ecall
}
    80001524:	00813403          	ld	s0,8(sp)
    80001528:	01010113          	addi	sp,sp,16
    8000152c:	00008067          	ret

0000000080001530 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    80001530:	ff010113          	addi	sp,sp,-16
    80001534:	00813423          	sd	s0,8(sp)
    80001538:	01010413          	addi	s0,sp,16
    return 0;
}
    8000153c:	00000513          	li	a0,0
    80001540:	00813403          	ld	s0,8(sp)
    80001544:	01010113          	addi	sp,sp,16
    80001548:	00008067          	ret

000000008000154c <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle) {
    8000154c:	ff010113          	addi	sp,sp,-16
    80001550:	00813423          	sd	s0,8(sp)
    80001554:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001558:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    8000155c:	01400513          	li	a0,20
    __asm__ volatile ("ecall");
    80001560:	00000073          	ecall
}
    80001564:	00813403          	ld	s0,8(sp)
    80001568:	01010113          	addi	sp,sp,16
    8000156c:	00008067          	ret

0000000080001570 <_Z9thread_idP3TCB>:





int thread_id(thread_t handle){
    80001570:	ff010113          	addi	sp,sp,-16
    80001574:	00813423          	sd	s0,8(sp)
    80001578:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    8000157c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0,0x15");
    80001580:	01500513          	li	a0,21
    __asm__ volatile("ecall");
    80001584:	00000073          	ecall

    uint64 returnValue;

    __asm__ volatile("mv %0, a0": "=r"(returnValue));
    80001588:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    8000158c:	0005051b          	sext.w	a0,a0
    80001590:	00813403          	ld	s0,8(sp)
    80001594:	01010113          	addi	sp,sp,16
    80001598:	00008067          	ret

000000008000159c <_Z10th_runningP3TCB>:

void th_running(thread_t handle){
    8000159c:	ff010113          	addi	sp,sp,-16
    800015a0:	00813423          	sd	s0,8(sp)
    800015a4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    800015a8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x66");
    800015ac:	06600513          	li	a0,102
    __asm__ volatile ("ecall");
    800015b0:	00000073          	ecall
}
    800015b4:	00813403          	ld	s0,8(sp)
    800015b8:	01010113          	addi	sp,sp,16
    800015bc:	00008067          	ret

00000000800015c0 <_Z10thread_manj>:

void thread_man(unsigned int id) {
    800015c0:	ff010113          	addi	sp,sp,-16
    800015c4:	00813423          	sd	s0,8(sp)
    800015c8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800015cc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x50");
    800015d0:	05000513          	li	a0,80
    __asm__ volatile ("ecall");
    800015d4:	00000073          	ecall

}
    800015d8:	00813403          	ld	s0,8(sp)
    800015dc:	01010113          	addi	sp,sp,16
    800015e0:	00008067          	ret

00000000800015e4 <_Z12thread_womanj>:

void thread_woman(unsigned int id) {
    800015e4:	ff010113          	addi	sp,sp,-16
    800015e8:	00813423          	sd	s0,8(sp)
    800015ec:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800015f0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x51");
    800015f4:	05100513          	li	a0,81
    __asm__ volatile ("ecall");
    800015f8:	00000073          	ecall
}
    800015fc:	00813403          	ld	s0,8(sp)
    80001600:	01010113          	addi	sp,sp,16
    80001604:	00008067          	ret

0000000080001608 <_Z15thread_barrierev>:

void thread_barriere() {
    80001608:	ff010113          	addi	sp,sp,-16
    8000160c:	00813423          	sd	s0,8(sp)
    80001610:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x52");
    80001614:	05200513          	li	a0,82
    __asm__ volatile("ecall");
    80001618:	00000073          	ecall

}
    8000161c:	00813403          	ld	s0,8(sp)
    80001620:	01010113          	addi	sp,sp,16
    80001624:	00008067          	ret

0000000080001628 <_Z11thread_sendP3TCBPKc>:

void thread_send(thread_t nit,const char *msg) {
    80001628:	ff010113          	addi	sp,sp,-16
    8000162c:	00813423          	sd	s0,8(sp)
    80001630:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0"::"r"(msg));//kome saljem poruku
    80001634:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(nit));
    80001638:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x53");
    8000163c:	05300513          	li	a0,83
    __asm__ volatile("ecall");
    80001640:	00000073          	ecall

}
    80001644:	00813403          	ld	s0,8(sp)
    80001648:	01010113          	addi	sp,sp,16
    8000164c:	00008067          	ret

0000000080001650 <_Z14thread_receivev>:

const char* thread_receive() {
    80001650:	ff010113          	addi	sp,sp,-16
    80001654:	00813423          	sd	s0,8(sp)
    80001658:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x54");
    8000165c:	05400513          	li	a0,84
    __asm__ volatile("ecall");
    80001660:	00000073          	ecall

    const char* returnValue;

    __asm__ volatile("mv %0, a0": "=r"(returnValue));
    80001664:	00050513          	mv	a0,a0
    return returnValue;
}
    80001668:	00813403          	ld	s0,8(sp)
    8000166c:	01010113          	addi	sp,sp,16
    80001670:	00008067          	ret

0000000080001674 <_Z14thread_joinALLv>:

void thread_joinALL() {
    80001674:	ff010113          	addi	sp,sp,-16
    80001678:	00813423          	sd	s0,8(sp)
    8000167c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x55");
    80001680:	05500513          	li	a0,85
    __asm__ volatile("ecall");
    80001684:	00000073          	ecall
}
    80001688:	00813403          	ld	s0,8(sp)
    8000168c:	01010113          	addi	sp,sp,16
    80001690:	00008067          	ret

0000000080001694 <_Z19thread_setMaxThreadi>:

void thread_setMaxThread(int num) {
    80001694:	ff010113          	addi	sp,sp,-16
    80001698:	00813423          	sd	s0,8(sp)
    8000169c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(num));
    800016a0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x56");
    800016a4:	05600513          	li	a0,86
    __asm__ volatile("ecall");
    800016a8:	00000073          	ecall

}
    800016ac:	00813403          	ld	s0,8(sp)
    800016b0:	01010113          	addi	sp,sp,16
    800016b4:	00008067          	ret

00000000800016b8 <_Z14thread_barrierv>:

void thread_barrier() {
    800016b8:	ff010113          	addi	sp,sp,-16
    800016bc:	00813423          	sd	s0,8(sp)
    800016c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x57");
    800016c4:	05700513          	li	a0,87
    __asm__ volatile("ecall");
    800016c8:	00000073          	ecall

}
    800016cc:	00813403          	ld	s0,8(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret

00000000800016d8 <_Z15thread_produceri>:

void thread_producer(int id) {
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00813423          	sd	s0,8(sp)
    800016e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    800016e4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x58");
    800016e8:	05800513          	li	a0,88
    __asm__ volatile("ecall");
    800016ec:	00000073          	ecall

}
    800016f0:	00813403          	ld	s0,8(sp)
    800016f4:	01010113          	addi	sp,sp,16
    800016f8:	00008067          	ret

00000000800016fc <_Z15thread_consumeri>:

void thread_consumer(int id) {
    800016fc:	ff010113          	addi	sp,sp,-16
    80001700:	00813423          	sd	s0,8(sp)
    80001704:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001708:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x59");
    8000170c:	05900513          	li	a0,89
    __asm__ volatile("ecall");
    80001710:	00000073          	ecall
}
    80001714:	00813403          	ld	s0,8(sp)
    80001718:	01010113          	addi	sp,sp,16
    8000171c:	00008067          	ret

0000000080001720 <_Z8thread_oj>:

//h20
void thread_o(unsigned int id) {
    80001720:	ff010113          	addi	sp,sp,-16
    80001724:	00813423          	sd	s0,8(sp)
    80001728:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    8000172c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x60");
    80001730:	06000513          	li	a0,96
    __asm__ volatile ("ecall");
    80001734:	00000073          	ecall

}
    80001738:	00813403          	ld	s0,8(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret

0000000080001744 <_Z8thread_hj>:

void thread_h(unsigned int id) {
    80001744:	ff010113          	addi	sp,sp,-16
    80001748:	00813423          	sd	s0,8(sp)
    8000174c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001750:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x61");
    80001754:	06100513          	li	a0,97
    __asm__ volatile ("ecall");
    80001758:	00000073          	ecall
}
    8000175c:	00813403          	ld	s0,8(sp)
    80001760:	01010113          	addi	sp,sp,16
    80001764:	00008067          	ret

0000000080001768 <_Z13thread_savagej>:

void thread_savage(unsigned int id) {
    80001768:	ff010113          	addi	sp,sp,-16
    8000176c:	00813423          	sd	s0,8(sp)
    80001770:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001774:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x62");
    80001778:	06200513          	li	a0,98
    __asm__ volatile ("ecall");
    8000177c:	00000073          	ecall

}
    80001780:	00813403          	ld	s0,8(sp)
    80001784:	01010113          	addi	sp,sp,16
    80001788:	00008067          	ret

000000008000178c <_Z11thread_cookv>:

void thread_cook() {
    8000178c:	ff010113          	addi	sp,sp,-16
    80001790:	00813423          	sd	s0,8(sp)
    80001794:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x63");
    80001798:	06300513          	li	a0,99
    __asm__ volatile ("ecall");
    8000179c:	00000073          	ecall
}
    800017a0:	00813403          	ld	s0,8(sp)
    800017a4:	01010113          	addi	sp,sp,16
    800017a8:	00008067          	ret

00000000800017ac <_Z13thread_birdCHj>:

void thread_birdCH(unsigned int id) {
    800017ac:	ff010113          	addi	sp,sp,-16
    800017b0:	00813423          	sd	s0,8(sp)
    800017b4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800017b8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x64");
    800017bc:	06400513          	li	a0,100
    __asm__ volatile ("ecall");
    800017c0:	00000073          	ecall
}
    800017c4:	00813403          	ld	s0,8(sp)
    800017c8:	01010113          	addi	sp,sp,16
    800017cc:	00008067          	ret

00000000800017d0 <_Z13thread_birdPAj>:

void thread_birdPA(unsigned int id) {
    800017d0:	ff010113          	addi	sp,sp,-16
    800017d4:	00813423          	sd	s0,8(sp)
    800017d8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800017dc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x65");
    800017e0:	06500513          	li	a0,101
    __asm__ volatile ("ecall");
    800017e4:	00000073          	ecall

}
    800017e8:	00813403          	ld	s0,8(sp)
    800017ec:	01010113          	addi	sp,sp,16
    800017f0:	00008067          	ret

00000000800017f4 <_Z10thread_BEEj>:

void thread_BEE(unsigned int id) {
    800017f4:	ff010113          	addi	sp,sp,-16
    800017f8:	00813423          	sd	s0,8(sp)
    800017fc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001800:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x66");
    80001804:	06600513          	li	a0,102
    __asm__ volatile ("ecall");
    80001808:	00000073          	ecall
}
    8000180c:	00813403          	ld	s0,8(sp)
    80001810:	01010113          	addi	sp,sp,16
    80001814:	00008067          	ret

0000000080001818 <_Z11thread_BEARv>:

void thread_BEAR() {
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00813423          	sd	s0,8(sp)
    80001820:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x67");
    80001824:	06700513          	li	a0,103
    __asm__ volatile ("ecall");
    80001828:	00000073          	ecall
}
    8000182c:	00813403          	ld	s0,8(sp)
    80001830:	01010113          	addi	sp,sp,16
    80001834:	00008067          	ret

0000000080001838 <_Z11thread_pingP3TCB>:

void thread_ping(thread_t handle) {
    80001838:	ff010113          	addi	sp,sp,-16
    8000183c:	00813423          	sd	s0,8(sp)
    80001840:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : :"r"(handle));
    80001844:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x70");
    80001848:	07000513          	li	a0,112
    __asm__ volatile("ecall");
    8000184c:	00000073          	ecall
}
    80001850:	00813403          	ld	s0,8(sp)
    80001854:	01010113          	addi	sp,sp,16
    80001858:	00008067          	ret

000000008000185c <main>:
extern void userMain();




int main() {
    8000185c:	fd010113          	addi	sp,sp,-48
    80001860:	02113423          	sd	ra,40(sp)
    80001864:	02813023          	sd	s0,32(sp)
    80001868:	00913c23          	sd	s1,24(sp)
    8000186c:	01213823          	sd	s2,16(sp)
    80001870:	03010413          	addi	s0,sp,48



    TCB *threads[2];

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001874:	00014797          	auipc	a5,0x14
    80001878:	1447b783          	ld	a5,324(a5) # 800159b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000187c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001880:	00200793          	li	a5,2
    80001884:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    thread_create(&threads[0], nullptr, nullptr);
    80001888:	00000613          	li	a2,0
    8000188c:	00000593          	li	a1,0
    80001890:	fd040513          	addi	a0,s0,-48
    80001894:	00000097          	auipc	ra,0x0
    80001898:	a0c080e7          	jalr	-1524(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>

    TCB::running = threads[0];
    8000189c:	fd043703          	ld	a4,-48(s0)
    800018a0:	00014797          	auipc	a5,0x14
    800018a4:	1287b783          	ld	a5,296(a5) # 800159c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018a8:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    800018ac:	00000613          	li	a2,0
    800018b0:	00014597          	auipc	a1,0x14
    800018b4:	0f05b583          	ld	a1,240(a1) # 800159a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800018b8:	fd840513          	addi	a0,s0,-40
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	9e4080e7          	jalr	-1564(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>


    while (!threads[1]->isFinished()) {
    800018c4:	fd843783          	ld	a5,-40(s0)

    ~TCB() { delete[] stack;

    }

    bool isFinished() const { return finished; }
    800018c8:	0207c783          	lbu	a5,32(a5)
    800018cc:	00079863          	bnez	a5,800018dc <main+0x80>
        thread_dispatch();
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	a88080e7          	jalr	-1400(ra) # 80001358 <_Z15thread_dispatchv>
    800018d8:	fedff06f          	j	800018c4 <main+0x68>
    }



    printString("Vratila sam se u main\n");
    800018dc:	0000e517          	auipc	a0,0xe
    800018e0:	74450513          	addi	a0,a0,1860 # 80010020 <CONSOLE_STATUS+0x10>
    800018e4:	00006097          	auipc	ra,0x6
    800018e8:	dc8080e7          	jalr	-568(ra) # 800076ac <_Z11printStringPKc>

    for(auto* i:threads){
    800018ec:	fd040493          	addi	s1,s0,-48
    800018f0:	0140006f          	j	80001904 <main+0xa8>
        memoryAllocator::mem_free(ptr);
    800018f4:	00090513          	mv	a0,s2
    800018f8:	00003097          	auipc	ra,0x3
    800018fc:	278080e7          	jalr	632(ra) # 80004b70 <_ZN15memoryAllocator8mem_freeEPv>
    80001900:	00848493          	addi	s1,s1,8
    80001904:	fe040793          	addi	a5,s0,-32
    80001908:	02f48063          	beq	s1,a5,80001928 <main+0xcc>
    8000190c:	0004b903          	ld	s2,0(s1)
        delete i;
    80001910:	fe0908e3          	beqz	s2,80001900 <main+0xa4>
    ~TCB() { delete[] stack;
    80001914:	00893503          	ld	a0,8(s2)
    80001918:	fc050ee3          	beqz	a0,800018f4 <main+0x98>
    8000191c:	00002097          	auipc	ra,0x2
    80001920:	1d8080e7          	jalr	472(ra) # 80003af4 <_ZdaPv>
    80001924:	fd1ff06f          	j	800018f4 <main+0x98>



    return 0;

    80001928:	00000513          	li	a0,0
    8000192c:	02813083          	ld	ra,40(sp)
    80001930:	02013403          	ld	s0,32(sp)
    80001934:	01813483          	ld	s1,24(sp)
    80001938:	01013903          	ld	s2,16(sp)
    8000193c:	03010113          	addi	sp,sp,48
    80001940:	00008067          	ret

0000000080001944 <_Z41__static_initialization_and_destruction_0ii>:
        fsMedaPcele=true;
        mtx=new Semaphore_k(1);
        bear = new Semaphore_k(0);
    }

}
    80001944:	ff010113          	addi	sp,sp,-16
    80001948:	00813423          	sd	s0,8(sp)
    8000194c:	01010413          	addi	s0,sp,16
    80001950:	00100793          	li	a5,1
    80001954:	00f50863          	beq	a0,a5,80001964 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001958:	00813403          	ld	s0,8(sp)
    8000195c:	01010113          	addi	sp,sp,16
    80001960:	00008067          	ret
    80001964:	000107b7          	lui	a5,0x10
    80001968:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000196c:	fef596e3          	bne	a1,a5,80001958 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    Lista() : head(0), tail(0) {}
    80001970:	00014797          	auipc	a5,0x14
    80001974:	0c078793          	addi	a5,a5,192 # 80015a30 <_ZN3TCB10ListBarierE>
    80001978:	0007b023          	sd	zero,0(a5)
    8000197c:	0007b423          	sd	zero,8(a5)
    80001980:	fd9ff06f          	j	80001958 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001984 <_ZN3TCB13threadWrapperEv>:
{
    80001984:	fe010113          	addi	sp,sp,-32
    80001988:	00113c23          	sd	ra,24(sp)
    8000198c:	00813823          	sd	s0,16(sp)
    80001990:	00913423          	sd	s1,8(sp)
    80001994:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001998:	00003097          	auipc	ra,0x3
    8000199c:	930080e7          	jalr	-1744(ra) # 800042c8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800019a0:	00014497          	auipc	s1,0x14
    800019a4:	09048493          	addi	s1,s1,144 # 80015a30 <_ZN3TCB10ListBarierE>
    800019a8:	0104b783          	ld	a5,16(s1)
    800019ac:	0007b703          	ld	a4,0(a5)
    800019b0:	0287b503          	ld	a0,40(a5)
    800019b4:	000700e7          	jalr	a4
    if(running->parent && running->parent->waitingForChildren){
    800019b8:	0104b783          	ld	a5,16(s1)
    800019bc:	0687b783          	ld	a5,104(a5)
    800019c0:	00078663          	beqz	a5,800019cc <_ZN3TCB13threadWrapperEv+0x48>
    800019c4:	0707c703          	lbu	a4,112(a5)
    800019c8:	02071c63          	bnez	a4,80001a00 <_ZN3TCB13threadWrapperEv+0x7c>
    if(setMaxTh && currThr>0){
    800019cc:	00014797          	auipc	a5,0x14
    800019d0:	07c7c783          	lbu	a5,124(a5) # 80015a48 <_ZN3TCB8setMaxThE>
    800019d4:	00078863          	beqz	a5,800019e4 <_ZN3TCB13threadWrapperEv+0x60>
    800019d8:	00014797          	auipc	a5,0x14
    800019dc:	0747a783          	lw	a5,116(a5) # 80015a4c <_ZN3TCB7currThrE>
    800019e0:	04f04463          	bgtz	a5,80001a28 <_ZN3TCB13threadWrapperEv+0xa4>
    thread_exit();//prebaci me u sistemski rezim
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	94c080e7          	jalr	-1716(ra) # 80001330 <_Z11thread_exitv>
}
    800019ec:	01813083          	ld	ra,24(sp)
    800019f0:	01013403          	ld	s0,16(sp)
    800019f4:	00813483          	ld	s1,8(sp)
    800019f8:	02010113          	addi	sp,sp,32
    800019fc:	00008067          	ret
        running->parent->joinAllsem->signal();
    80001a00:	0787b503          	ld	a0,120(a5)
    80001a04:	00003097          	auipc	ra,0x3
    80001a08:	4c4080e7          	jalr	1220(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
        running->parent->numberOfChildren--;
    80001a0c:	00014797          	auipc	a5,0x14
    80001a10:	0347b783          	ld	a5,52(a5) # 80015a40 <_ZN3TCB7runningE>
    80001a14:	0687b703          	ld	a4,104(a5)
    80001a18:	07472783          	lw	a5,116(a4)
    80001a1c:	fff7879b          	addiw	a5,a5,-1
    80001a20:	06f72a23          	sw	a5,116(a4)
    80001a24:	fa9ff06f          	j	800019cc <_ZN3TCB13threadWrapperEv+0x48>
        currThr--;
    80001a28:	00014717          	auipc	a4,0x14
    80001a2c:	00870713          	addi	a4,a4,8 # 80015a30 <_ZN3TCB10ListBarierE>
    80001a30:	fff7879b          	addiw	a5,a5,-1
    80001a34:	00f72e23          	sw	a5,28(a4)
        semMaxThreads->signal();
    80001a38:	02073503          	ld	a0,32(a4)
    80001a3c:	00003097          	auipc	ra,0x3
    80001a40:	48c080e7          	jalr	1164(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    80001a44:	fa1ff06f          	j	800019e4 <_ZN3TCB13threadWrapperEv+0x60>

0000000080001a48 <_ZN3TCB5yieldEv>:
{
    80001a48:	ff010113          	addi	sp,sp,-16
    80001a4c:	00813423          	sd	s0,8(sp)
    80001a50:	01010413          	addi	s0,sp,16
    return a0;
}


inline void Riscv::w_a0(uint64 writeValue) {
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    80001a54:	01300793          	li	a5,19
    80001a58:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001a5c:	00000073          	ecall
}
    80001a60:	00813403          	ld	s0,8(sp)
    80001a64:	01010113          	addi	sp,sp,16
    80001a68:	00008067          	ret

0000000080001a6c <_ZN3TCB8dispatchEv>:
{
    80001a6c:	fe010113          	addi	sp,sp,-32
    80001a70:	00113c23          	sd	ra,24(sp)
    80001a74:	00813823          	sd	s0,16(sp)
    80001a78:	00913423          	sd	s1,8(sp)
    80001a7c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001a80:	00014497          	auipc	s1,0x14
    80001a84:	fc04b483          	ld	s1,-64(s1) # 80015a40 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001a88:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001a8c:	00079663          	bnez	a5,80001a98 <_ZN3TCB8dispatchEv+0x2c>

    void setFinished(bool value) { finished = value; }

    bool isBlocked() const { return this->blocked; }
    80001a90:	0214c703          	lbu	a4,33(s1)
    80001a94:	06070a63          	beqz	a4,80001b08 <_ZN3TCB8dispatchEv+0x9c>
    else if(old->isFinished()){
    80001a98:	00078c63          	beqz	a5,80001ab0 <_ZN3TCB8dispatchEv+0x44>
        delete old->stack;
    80001a9c:	0084b503          	ld	a0,8(s1)
    80001aa0:	00050663          	beqz	a0,80001aac <_ZN3TCB8dispatchEv+0x40>
    80001aa4:	00002097          	auipc	ra,0x2
    80001aa8:	028080e7          	jalr	40(ra) # 80003acc <_ZdlPv>
        old->stack = nullptr;
    80001aac:	0004b423          	sd	zero,8(s1)
    running = Scheduler::get();
    80001ab0:	00003097          	auipc	ra,0x3
    80001ab4:	67c080e7          	jalr	1660(ra) # 8000512c <_ZN9Scheduler3getEv>
    80001ab8:	00014797          	auipc	a5,0x14
    80001abc:	f8a7b423          	sd	a0,-120(a5) # 80015a40 <_ZN3TCB7runningE>

    void setBlocked(bool value) { this->blocked = value; }

    bool isMain() const { return this->main; }
    80001ac0:	02254783          	lbu	a5,34(a0)
    if(running->isMain()) {
    80001ac4:	04078a63          	beqz	a5,80001b18 <_ZN3TCB8dispatchEv+0xac>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ac8:	10000793          	li	a5,256
    80001acc:	1007a073          	csrs	sstatus,a5
    if(old!=running){
    80001ad0:	02a48263          	beq	s1,a0,80001af4 <_ZN3TCB8dispatchEv+0x88>
        TCB::contextSwitch(&old->context, &running->context);
    80001ad4:	01050593          	addi	a1,a0,16
    80001ad8:	01048513          	addi	a0,s1,16
    80001adc:	fffff097          	auipc	ra,0xfffff
    80001ae0:	724080e7          	jalr	1828(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
        if(running->pinged){
    80001ae4:	00014797          	auipc	a5,0x14
    80001ae8:	f5c7b783          	ld	a5,-164(a5) # 80015a40 <_ZN3TCB7runningE>
    80001aec:	0847c783          	lbu	a5,132(a5)
    80001af0:	02079a63          	bnez	a5,80001b24 <_ZN3TCB8dispatchEv+0xb8>
}
    80001af4:	01813083          	ld	ra,24(sp)
    80001af8:	01013403          	ld	s0,16(sp)
    80001afc:	00813483          	ld	s1,8(sp)
    80001b00:	02010113          	addi	sp,sp,32
    80001b04:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    80001b08:	00048513          	mv	a0,s1
    80001b0c:	00003097          	auipc	ra,0x3
    80001b10:	688080e7          	jalr	1672(ra) # 80005194 <_ZN9Scheduler3putEP3TCB>
    80001b14:	f9dff06f          	j	80001ab0 <_ZN3TCB8dispatchEv+0x44>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001b18:	10000793          	li	a5,256
    80001b1c:	1007b073          	csrc	sstatus,a5
}
    80001b20:	fb1ff06f          	j	80001ad0 <_ZN3TCB8dispatchEv+0x64>
            printString("Alocirani blokovi do pingovanja: ");
    80001b24:	0000e517          	auipc	a0,0xe
    80001b28:	51450513          	addi	a0,a0,1300 # 80010038 <CONSOLE_STATUS+0x28>
    80001b2c:	00006097          	auipc	ra,0x6
    80001b30:	b80080e7          	jalr	-1152(ra) # 800076ac <_Z11printStringPKc>
            printInt(running->getAllocatedBlocks());
    80001b34:	00014497          	auipc	s1,0x14
    80001b38:	efc48493          	addi	s1,s1,-260 # 80015a30 <_ZN3TCB10ListBarierE>
    80001b3c:	0104b783          	ld	a5,16(s1)
    80001b40:	00000613          	li	a2,0
    80001b44:	00a00593          	li	a1,10
    80001b48:	0807a503          	lw	a0,128(a5)
    80001b4c:	00006097          	auipc	ra,0x6
    80001b50:	d10080e7          	jalr	-752(ra) # 8000785c <_Z8printIntiii>
            printString("\n");
    80001b54:	0000f517          	auipc	a0,0xf
    80001b58:	e8c50513          	addi	a0,a0,-372 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80001b5c:	00006097          	auipc	ra,0x6
    80001b60:	b50080e7          	jalr	-1200(ra) # 800076ac <_Z11printStringPKc>
            printString("Vreme:");
    80001b64:	0000e517          	auipc	a0,0xe
    80001b68:	4fc50513          	addi	a0,a0,1276 # 80010060 <CONSOLE_STATUS+0x50>
    80001b6c:	00006097          	auipc	ra,0x6
    80001b70:	b40080e7          	jalr	-1216(ra) # 800076ac <_Z11printStringPKc>
            printInt(running->getRunTime());
    80001b74:	0104b783          	ld	a5,16(s1)
    80001b78:	00000613          	li	a2,0
    80001b7c:	00a00593          	li	a1,10
    80001b80:	0887a503          	lw	a0,136(a5)
    80001b84:	00006097          	auipc	ra,0x6
    80001b88:	cd8080e7          	jalr	-808(ra) # 8000785c <_Z8printIntiii>
            printString("\n");
    80001b8c:	0000f517          	auipc	a0,0xf
    80001b90:	e5450513          	addi	a0,a0,-428 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80001b94:	00006097          	auipc	ra,0x6
    80001b98:	b18080e7          	jalr	-1256(ra) # 800076ac <_Z11printStringPKc>
            running->setPinged(false);
    80001b9c:	0104b783          	ld	a5,16(s1)
    }
    void pingThread(){
        this->pinged = true;
    }
    void setPinged(bool value){
        this->pinged = value;
    80001ba0:	08078223          	sb	zero,132(a5)
}
    80001ba4:	f51ff06f          	j	80001af4 <_ZN3TCB8dispatchEv+0x88>

0000000080001ba8 <_ZN3TCB4joinEPS_>:
    bool isFinished() const { return finished; }
    80001ba8:	02054783          	lbu	a5,32(a0)
    if(!handle->isFinished()){
    80001bac:	00078463          	beqz	a5,80001bb4 <_ZN3TCB4joinEPS_+0xc>
    80001bb0:	00008067          	ret
void TCB::join(TCB *handle) {
    80001bb4:	fe010113          	addi	sp,sp,-32
    80001bb8:	00113c23          	sd	ra,24(sp)
    80001bbc:	00813823          	sd	s0,16(sp)
    80001bc0:	00913423          	sd	s1,8(sp)
    80001bc4:	01213023          	sd	s2,0(sp)
    80001bc8:	02010413          	addi	s0,sp,32
    80001bcc:	00050493          	mv	s1,a0
        running->setBlocked(true);
    80001bd0:	00014917          	auipc	s2,0x14
    80001bd4:	e7093903          	ld	s2,-400(s2) # 80015a40 <_ZN3TCB7runningE>
    void setBlocked(bool value) { this->blocked = value; }
    80001bd8:	00100793          	li	a5,1
    80001bdc:	02f900a3          	sb	a5,33(s2)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001be0:	01000513          	li	a0,16
    80001be4:	00002097          	auipc	ra,0x2
    80001be8:	e98080e7          	jalr	-360(ra) # 80003a7c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001bec:	01253023          	sd	s2,0(a0)
    80001bf0:	00053423          	sd	zero,8(a0)
        if (tail)
    80001bf4:	0384b783          	ld	a5,56(s1)
    80001bf8:	02078263          	beqz	a5,80001c1c <_ZN3TCB4joinEPS_+0x74>
        {
            tail->next = elem;
    80001bfc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001c00:	02a4bc23          	sd	a0,56(s1)
}
    80001c04:	01813083          	ld	ra,24(sp)
    80001c08:	01013403          	ld	s0,16(sp)
    80001c0c:	00813483          	ld	s1,8(sp)
    80001c10:	00013903          	ld	s2,0(sp)
    80001c14:	02010113          	addi	sp,sp,32
    80001c18:	00008067          	ret
        } else
        {
            head = tail = elem;
    80001c1c:	02a4bc23          	sd	a0,56(s1)
    80001c20:	02a4b823          	sd	a0,48(s1)
    80001c24:	fe1ff06f          	j	80001c04 <_ZN3TCB4joinEPS_+0x5c>

0000000080001c28 <_ZN3TCB12pustiSveNitiEv>:
void TCB::pustiSveNiti() {
    80001c28:	fe010113          	addi	sp,sp,-32
    80001c2c:	00113c23          	sd	ra,24(sp)
    80001c30:	00813823          	sd	s0,16(sp)
    80001c34:	00913423          	sd	s1,8(sp)
    80001c38:	01213023          	sd	s2,0(sp)
    80001c3c:	02010413          	addi	s0,sp,32
    80001c40:	00050913          	mv	s2,a0
    80001c44:	0240006f          	j	80001c68 <_ZN3TCB12pustiSveNitiEv+0x40>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001c48:	02093c23          	sd	zero,56(s2)

        T *ret = elem->data;
    80001c4c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001c50:	00002097          	auipc	ra,0x2
    80001c54:	e7c080e7          	jalr	-388(ra) # 80003acc <_ZdlPv>
    80001c58:	020480a3          	sb	zero,33(s1)
        Scheduler::put(tcb);
    80001c5c:	00048513          	mv	a0,s1
    80001c60:	00003097          	auipc	ra,0x3
    80001c64:	534080e7          	jalr	1332(ra) # 80005194 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001c68:	03093503          	ld	a0,48(s2)
    80001c6c:	00050e63          	beqz	a0,80001c88 <_ZN3TCB12pustiSveNitiEv+0x60>
        return head->data;
    80001c70:	00053783          	ld	a5,0(a0)
    while(this->joined.peekFirst()){
    80001c74:	00078a63          	beqz	a5,80001c88 <_ZN3TCB12pustiSveNitiEv+0x60>
        head = head->next;
    80001c78:	00853783          	ld	a5,8(a0)
    80001c7c:	02f93823          	sd	a5,48(s2)
        if (!head) { tail = 0; }
    80001c80:	fc0796e3          	bnez	a5,80001c4c <_ZN3TCB12pustiSveNitiEv+0x24>
    80001c84:	fc5ff06f          	j	80001c48 <_ZN3TCB12pustiSveNitiEv+0x20>
}
    80001c88:	01813083          	ld	ra,24(sp)
    80001c8c:	01013403          	ld	s0,16(sp)
    80001c90:	00813483          	ld	s1,8(sp)
    80001c94:	00013903          	ld	s2,0(sp)
    80001c98:	02010113          	addi	sp,sp,32
    80001c9c:	00008067          	ret

0000000080001ca0 <_ZN3TCBC1EPFvPvES0_Pc>:
TCB::TCB(Body body, void *arg, char *stek):
    80001ca0:	fe010113          	addi	sp,sp,-32
    80001ca4:	00113c23          	sd	ra,24(sp)
    80001ca8:	00813823          	sd	s0,16(sp)
    80001cac:	00913423          	sd	s1,8(sp)
    80001cb0:	01213023          	sd	s2,0(sp)
    80001cb4:	02010413          	addi	s0,sp,32
    80001cb8:	00050493          	mv	s1,a0
        nullptr),parent(nullptr),waitingForChildren(false),joinALL(false),numberOfChildren(0),joinAllsem(nullptr),allocatedBlocks(0),pinged(false),runTime(0){
    80001cbc:	00b53023          	sd	a1,0(a0)
        stack(body!= nullptr?(char*)((uint64)stek-DEFAULT_STACK_SIZE): nullptr), context({(uint64)&threadWrapper,(stack != nullptr ? (uint64) (stek) : 0)}),finished(false),
    80001cc0:	10058c63          	beqz	a1,80001dd8 <_ZN3TCBC1EPFvPvES0_Pc+0x138>
    80001cc4:	fffff7b7          	lui	a5,0xfffff
    80001cc8:	00f687b3          	add	a5,a3,a5
        nullptr),parent(nullptr),waitingForChildren(false),joinALL(false),numberOfChildren(0),joinAllsem(nullptr),allocatedBlocks(0),pinged(false),runTime(0){
    80001ccc:	00f4b423          	sd	a5,8(s1)
    80001cd0:	00000717          	auipc	a4,0x0
    80001cd4:	cb470713          	addi	a4,a4,-844 # 80001984 <_ZN3TCB13threadWrapperEv>
    80001cd8:	00e4b823          	sd	a4,16(s1)
        stack(body!= nullptr?(char*)((uint64)stek-DEFAULT_STACK_SIZE): nullptr), context({(uint64)&threadWrapper,(stack != nullptr ? (uint64) (stek) : 0)}),finished(false),
    80001cdc:	10078263          	beqz	a5,80001de0 <_ZN3TCBC1EPFvPvES0_Pc+0x140>
        nullptr),parent(nullptr),waitingForChildren(false),joinALL(false),numberOfChildren(0),joinAllsem(nullptr),allocatedBlocks(0),pinged(false),runTime(0){
    80001ce0:	00d4bc23          	sd	a3,24(s1)
    80001ce4:	02048023          	sb	zero,32(s1)
    80001ce8:	020480a3          	sb	zero,33(s1)
        blocked(false),main(body==nullptr),arg(arg),id(ID++),msgE(nullptr),msgA(nullptr),fsSemaphores(false),message(
    80001cec:	0015b793          	seqz	a5,a1
        nullptr),parent(nullptr),waitingForChildren(false),joinALL(false),numberOfChildren(0),joinAllsem(nullptr),allocatedBlocks(0),pinged(false),runTime(0){
    80001cf0:	02f48123          	sb	a5,34(s1)
    80001cf4:	02c4b423          	sd	a2,40(s1)
    Lista() : head(0), tail(0) {}
    80001cf8:	0204b823          	sd	zero,48(s1)
    80001cfc:	0204bc23          	sd	zero,56(s1)
        blocked(false),main(body==nullptr),arg(arg),id(ID++),msgE(nullptr),msgA(nullptr),fsSemaphores(false),message(
    80001d00:	00014717          	auipc	a4,0x14
    80001d04:	d3070713          	addi	a4,a4,-720 # 80015a30 <_ZN3TCB10ListBarierE>
    80001d08:	02872783          	lw	a5,40(a4)
    80001d0c:	0017869b          	addiw	a3,a5,1
    80001d10:	02d72423          	sw	a3,40(a4)
        nullptr),parent(nullptr),waitingForChildren(false),joinALL(false),numberOfChildren(0),joinAllsem(nullptr),allocatedBlocks(0),pinged(false),runTime(0){
    80001d14:	04f4a023          	sw	a5,64(s1)
    80001d18:	0404b423          	sd	zero,72(s1)
    80001d1c:	0404b823          	sd	zero,80(s1)
    80001d20:	04048c23          	sb	zero,88(s1)
    80001d24:	0604b023          	sd	zero,96(s1)
    80001d28:	0604b423          	sd	zero,104(s1)
    80001d2c:	06048823          	sb	zero,112(s1)
    80001d30:	060488a3          	sb	zero,113(s1)
    80001d34:	0604aa23          	sw	zero,116(s1)
    80001d38:	0604bc23          	sd	zero,120(s1)
    80001d3c:	0804a023          	sw	zero,128(s1)
    80001d40:	08048223          	sb	zero,132(s1)
    80001d44:	0804a423          	sw	zero,136(s1)
    if(body!=nullptr){
    80001d48:	06058c63          	beqz	a1,80001dc0 <_ZN3TCBC1EPFvPvES0_Pc+0x120>
        parent=running;
    80001d4c:	00014797          	auipc	a5,0x14
    80001d50:	cf47b783          	ld	a5,-780(a5) # 80015a40 <_ZN3TCB7runningE>
    80001d54:	06f4b423          	sd	a5,104(s1)
        if(parent){
    80001d58:	00078863          	beqz	a5,80001d68 <_ZN3TCBC1EPFvPvES0_Pc+0xc8>
            parent->numberOfChildren++;
    80001d5c:	0747a703          	lw	a4,116(a5)
    80001d60:	0017071b          	addiw	a4,a4,1
    80001d64:	06e7aa23          	sw	a4,116(a5)
        if(fsBarrier){
    80001d68:	00014797          	auipc	a5,0x14
    80001d6c:	cf47c783          	lbu	a5,-780(a5) # 80015a5c <_ZN3TCB9fsBarrierE>
    80001d70:	00078c63          	beqz	a5,80001d88 <_ZN3TCBC1EPFvPvES0_Pc+0xe8>
            numOFthreads++;
    80001d74:	00014717          	auipc	a4,0x14
    80001d78:	cbc70713          	addi	a4,a4,-836 # 80015a30 <_ZN3TCB10ListBarierE>
    80001d7c:	03072783          	lw	a5,48(a4)
    80001d80:	0017879b          	addiw	a5,a5,1
    80001d84:	02f72823          	sw	a5,48(a4)
        if(setMaxTh){
    80001d88:	00014797          	auipc	a5,0x14
    80001d8c:	cc07c783          	lbu	a5,-832(a5) # 80015a48 <_ZN3TCB8setMaxThE>
    80001d90:	04079c63          	bnez	a5,80001de8 <_ZN3TCBC1EPFvPvES0_Pc+0x148>
        if(setBarrier2){
    80001d94:	00014797          	auipc	a5,0x14
    80001d98:	cd07c783          	lbu	a5,-816(a5) # 80015a64 <_ZN3TCB11setBarrier2E>
    80001d9c:	00078c63          	beqz	a5,80001db4 <_ZN3TCBC1EPFvPvES0_Pc+0x114>
            threadCount++;
    80001da0:	00014717          	auipc	a4,0x14
    80001da4:	c9070713          	addi	a4,a4,-880 # 80015a30 <_ZN3TCB10ListBarierE>
    80001da8:	03872783          	lw	a5,56(a4)
    80001dac:	0017879b          	addiw	a5,a5,1
    80001db0:	02f72c23          	sw	a5,56(a4)
        Scheduler::put(this);
    80001db4:	00048513          	mv	a0,s1
    80001db8:	00003097          	auipc	ra,0x3
    80001dbc:	3dc080e7          	jalr	988(ra) # 80005194 <_ZN9Scheduler3putEP3TCB>
}
    80001dc0:	01813083          	ld	ra,24(sp)
    80001dc4:	01013403          	ld	s0,16(sp)
    80001dc8:	00813483          	ld	s1,8(sp)
    80001dcc:	00013903          	ld	s2,0(sp)
    80001dd0:	02010113          	addi	sp,sp,32
    80001dd4:	00008067          	ret
        stack(body!= nullptr?(char*)((uint64)stek-DEFAULT_STACK_SIZE): nullptr), context({(uint64)&threadWrapper,(stack != nullptr ? (uint64) (stek) : 0)}),finished(false),
    80001dd8:	00000793          	li	a5,0
    80001ddc:	ef1ff06f          	j	80001ccc <_ZN3TCBC1EPFvPvES0_Pc+0x2c>
    80001de0:	00000693          	li	a3,0
    80001de4:	efdff06f          	j	80001ce0 <_ZN3TCBC1EPFvPvES0_Pc+0x40>
            semMaxThreads->wait();
    80001de8:	00014917          	auipc	s2,0x14
    80001dec:	c4890913          	addi	s2,s2,-952 # 80015a30 <_ZN3TCB10ListBarierE>
    80001df0:	02093503          	ld	a0,32(s2)
    80001df4:	00003097          	auipc	ra,0x3
    80001df8:	01c080e7          	jalr	28(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
            currThr++;
    80001dfc:	01c92783          	lw	a5,28(s2)
    80001e00:	0017879b          	addiw	a5,a5,1
    80001e04:	00f92e23          	sw	a5,28(s2)
    80001e08:	f8dff06f          	j	80001d94 <_ZN3TCBC1EPFvPvES0_Pc+0xf4>

0000000080001e0c <_ZN3TCB14kreiraj_threadEPPS_PFvPvES2_Pc>:
TCB* TCB::kreiraj_thread(TCB** handle, TCB::Body body, void* arg, char* stek){
    80001e0c:	fc010113          	addi	sp,sp,-64
    80001e10:	02113c23          	sd	ra,56(sp)
    80001e14:	02813823          	sd	s0,48(sp)
    80001e18:	02913423          	sd	s1,40(sp)
    80001e1c:	03213023          	sd	s2,32(sp)
    80001e20:	01313c23          	sd	s3,24(sp)
    80001e24:	01413823          	sd	s4,16(sp)
    80001e28:	01513423          	sd	s5,8(sp)
    80001e2c:	04010413          	addi	s0,sp,64
    80001e30:	00050913          	mv	s2,a0
    80001e34:	00058993          	mv	s3,a1
    80001e38:	00060a13          	mv	s4,a2
    80001e3c:	00068a93          	mv	s5,a3
        return memoryAllocator::mem_alloc(size);
    80001e40:	09000513          	li	a0,144
    80001e44:	00003097          	auipc	ra,0x3
    80001e48:	b50080e7          	jalr	-1200(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    80001e4c:	00050493          	mv	s1,a0
    *handle = new TCB(body,arg,stek);
    80001e50:	000a8693          	mv	a3,s5
    80001e54:	000a0613          	mv	a2,s4
    80001e58:	00098593          	mv	a1,s3
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	e44080e7          	jalr	-444(ra) # 80001ca0 <_ZN3TCBC1EPFvPvES0_Pc>
    80001e64:	0200006f          	j	80001e84 <_ZN3TCB14kreiraj_threadEPPS_PFvPvES2_Pc+0x78>
    80001e68:	00050913          	mv	s2,a0
        memoryAllocator::mem_free(ptr);
    80001e6c:	00048513          	mv	a0,s1
    80001e70:	00003097          	auipc	ra,0x3
    80001e74:	d00080e7          	jalr	-768(ra) # 80004b70 <_ZN15memoryAllocator8mem_freeEPv>
    80001e78:	00090513          	mv	a0,s2
    80001e7c:	00015097          	auipc	ra,0x15
    80001e80:	f4c080e7          	jalr	-180(ra) # 80016dc8 <_Unwind_Resume>
    80001e84:	00993023          	sd	s1,0(s2)
}
    80001e88:	00048513          	mv	a0,s1
    80001e8c:	03813083          	ld	ra,56(sp)
    80001e90:	03013403          	ld	s0,48(sp)
    80001e94:	02813483          	ld	s1,40(sp)
    80001e98:	02013903          	ld	s2,32(sp)
    80001e9c:	01813983          	ld	s3,24(sp)
    80001ea0:	01013a03          	ld	s4,16(sp)
    80001ea4:	00813a83          	ld	s5,8(sp)
    80001ea8:	04010113          	addi	sp,sp,64
    80001eac:	00008067          	ret

0000000080001eb0 <_ZN3TCB7getMyIDEv>:
int TCB::getMyID() {
    80001eb0:	ff010113          	addi	sp,sp,-16
    80001eb4:	00813423          	sd	s0,8(sp)
    80001eb8:	01010413          	addi	s0,sp,16
}
    80001ebc:	04052503          	lw	a0,64(a0)
    80001ec0:	00813403          	ld	s0,8(sp)
    80001ec4:	01010113          	addi	sp,sp,16
    80001ec8:	00008067          	ret

0000000080001ecc <_ZN3TCB17setUnisexBatrroomEv>:
void TCB::setUnisexBatrroom() {
    80001ecc:	fe010113          	addi	sp,sp,-32
    80001ed0:	00113c23          	sd	ra,24(sp)
    80001ed4:	00813823          	sd	s0,16(sp)
    80001ed8:	00913423          	sd	s1,8(sp)
    80001edc:	01213023          	sd	s2,0(sp)
    80001ee0:	02010413          	addi	s0,sp,32


public:
    using sem_t = Semaphore_k*;
    void* operator new(size_t size) {
        return memoryAllocator::mem_alloc(size);
    80001ee4:	01800513          	li	a0,24
    80001ee8:	00003097          	auipc	ra,0x3
    80001eec:	aac080e7          	jalr	-1364(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    }
    void operator delete[](void *ptr) {
        memoryAllocator::mem_free(ptr);
    }

    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80001ef0:	00050023          	sb	zero,0(a0)
    80001ef4:	00400793          	li	a5,4
    80001ef8:	00f52223          	sw	a5,4(a0)
    80001efc:	00053423          	sd	zero,8(a0)
    80001f00:	00053823          	sd	zero,16(a0)
    empty = new Semaphore_k(4);
    80001f04:	00014497          	auipc	s1,0x14
    80001f08:	b2c48493          	addi	s1,s1,-1236 # 80015a30 <_ZN3TCB10ListBarierE>
    80001f0c:	04a4b023          	sd	a0,64(s1)
        return memoryAllocator::mem_alloc(size);
    80001f10:	01800513          	li	a0,24
    80001f14:	00003097          	auipc	ra,0x3
    80001f18:	a80080e7          	jalr	-1408(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80001f1c:	00050023          	sb	zero,0(a0)
    80001f20:	00100913          	li	s2,1
    80001f24:	01252223          	sw	s2,4(a0)
    80001f28:	00053423          	sd	zero,8(a0)
    80001f2c:	00053823          	sd	zero,16(a0)
    toilet = new Semaphore_k(1);
    80001f30:	04a4b423          	sd	a0,72(s1)
        return memoryAllocator::mem_alloc(size);
    80001f34:	01800513          	li	a0,24
    80001f38:	00003097          	auipc	ra,0x3
    80001f3c:	a5c080e7          	jalr	-1444(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80001f40:	00050023          	sb	zero,0(a0)
    80001f44:	01252223          	sw	s2,4(a0)
    80001f48:	00053423          	sd	zero,8(a0)
    80001f4c:	00053823          	sd	zero,16(a0)
    mutexMen = new Semaphore_k(1);
    80001f50:	04a4b823          	sd	a0,80(s1)
        return memoryAllocator::mem_alloc(size);
    80001f54:	01800513          	li	a0,24
    80001f58:	00003097          	auipc	ra,0x3
    80001f5c:	a3c080e7          	jalr	-1476(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80001f60:	00050023          	sb	zero,0(a0)
    80001f64:	01252223          	sw	s2,4(a0)
    80001f68:	00053423          	sd	zero,8(a0)
    80001f6c:	00053823          	sd	zero,16(a0)
    mutexWomen = new Semaphore_k(1);
    80001f70:	04a4bc23          	sd	a0,88(s1)
        return memoryAllocator::mem_alloc(size);
    80001f74:	01800513          	li	a0,24
    80001f78:	00003097          	auipc	ra,0x3
    80001f7c:	a1c080e7          	jalr	-1508(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80001f80:	00050023          	sb	zero,0(a0)
    80001f84:	01252223          	sw	s2,4(a0)
    80001f88:	00053423          	sd	zero,8(a0)
    80001f8c:	00053823          	sd	zero,16(a0)
    entry = new Semaphore_k(1);
    80001f90:	06a4b023          	sd	a0,96(s1)
}
    80001f94:	01813083          	ld	ra,24(sp)
    80001f98:	01013403          	ld	s0,16(sp)
    80001f9c:	00813483          	ld	s1,8(sp)
    80001fa0:	00013903          	ld	s2,0(sp)
    80001fa4:	02010113          	addi	sp,sp,32
    80001fa8:	00008067          	ret

0000000080001fac <_ZN3TCB3manEj>:
void TCB::man(unsigned int id) {
    80001fac:	fe010113          	addi	sp,sp,-32
    80001fb0:	00113c23          	sd	ra,24(sp)
    80001fb4:	00813823          	sd	s0,16(sp)
    80001fb8:	00913423          	sd	s1,8(sp)
    80001fbc:	01213023          	sd	s2,0(sp)
    80001fc0:	02010413          	addi	s0,sp,32
    80001fc4:	00050493          	mv	s1,a0
    if(!firstSet){
    80001fc8:	00014797          	auipc	a5,0x14
    80001fcc:	ad07c783          	lbu	a5,-1328(a5) # 80015a98 <_ZN3TCB8firstSetE>
    80001fd0:	1a078663          	beqz	a5,8000217c <_ZN3TCB3manEj+0x1d0>
    entry->wait();
    80001fd4:	00014917          	auipc	s2,0x14
    80001fd8:	a5c90913          	addi	s2,s2,-1444 # 80015a30 <_ZN3TCB10ListBarierE>
    80001fdc:	06093503          	ld	a0,96(s2)
    80001fe0:	00003097          	auipc	ra,0x3
    80001fe4:	e30080e7          	jalr	-464(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    mutexMen->wait();
    80001fe8:	05093503          	ld	a0,80(s2)
    80001fec:	00003097          	auipc	ra,0x3
    80001ff0:	e24080e7          	jalr	-476(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Usao novi muskarac, al ne koristi jos ");
    80001ff4:	0000e517          	auipc	a0,0xe
    80001ff8:	07450513          	addi	a0,a0,116 # 80010068 <CONSOLE_STATUS+0x58>
    80001ffc:	00005097          	auipc	ra,0x5
    80002000:	6b0080e7          	jalr	1712(ra) # 800076ac <_Z11printStringPKc>
    printString("ID: ");
    80002004:	0000f517          	auipc	a0,0xf
    80002008:	f8c50513          	addi	a0,a0,-116 # 80010f90 <CONSOLE_STATUS+0xf80>
    8000200c:	00005097          	auipc	ra,0x5
    80002010:	6a0080e7          	jalr	1696(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    80002014:	0004849b          	sext.w	s1,s1
    80002018:	00000613          	li	a2,0
    8000201c:	00a00593          	li	a1,10
    80002020:	00048513          	mv	a0,s1
    80002024:	00006097          	auipc	ra,0x6
    80002028:	838080e7          	jalr	-1992(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    8000202c:	0000f517          	auipc	a0,0xf
    80002030:	9b450513          	addi	a0,a0,-1612 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80002034:	00005097          	auipc	ra,0x5
    80002038:	678080e7          	jalr	1656(ra) # 800076ac <_Z11printStringPKc>
    numOfMan++;
    8000203c:	06c92783          	lw	a5,108(s2)
    80002040:	0017879b          	addiw	a5,a5,1
    80002044:	0007871b          	sext.w	a4,a5
    80002048:	06f92623          	sw	a5,108(s2)
    if(numOfMan==1){
    8000204c:	00100793          	li	a5,1
    80002050:	14f70263          	beq	a4,a5,80002194 <_ZN3TCB3manEj+0x1e8>
    mutexMen->signal();
    80002054:	00014917          	auipc	s2,0x14
    80002058:	9dc90913          	addi	s2,s2,-1572 # 80015a30 <_ZN3TCB10ListBarierE>
    8000205c:	05093503          	ld	a0,80(s2)
    80002060:	00003097          	auipc	ra,0x3
    80002064:	e68080e7          	jalr	-408(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    thread_dispatch();
    80002068:	fffff097          	auipc	ra,0xfffff
    8000206c:	2f0080e7          	jalr	752(ra) # 80001358 <_Z15thread_dispatchv>
    entry->signal();
    80002070:	06093503          	ld	a0,96(s2)
    80002074:	00003097          	auipc	ra,0x3
    80002078:	e54080e7          	jalr	-428(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    thread_dispatch();
    8000207c:	fffff097          	auipc	ra,0xfffff
    80002080:	2dc080e7          	jalr	732(ra) # 80001358 <_Z15thread_dispatchv>
    empty->wait();
    80002084:	04093503          	ld	a0,64(s2)
    80002088:	00003097          	auipc	ra,0x3
    8000208c:	d88080e7          	jalr	-632(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Muskarac koristi WC\n");
    80002090:	0000e517          	auipc	a0,0xe
    80002094:	03050513          	addi	a0,a0,48 # 800100c0 <CONSOLE_STATUS+0xb0>
    80002098:	00005097          	auipc	ra,0x5
    8000209c:	614080e7          	jalr	1556(ra) # 800076ac <_Z11printStringPKc>
    printString("ID: ");
    800020a0:	0000f517          	auipc	a0,0xf
    800020a4:	ef050513          	addi	a0,a0,-272 # 80010f90 <CONSOLE_STATUS+0xf80>
    800020a8:	00005097          	auipc	ra,0x5
    800020ac:	604080e7          	jalr	1540(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    800020b0:	00000613          	li	a2,0
    800020b4:	00a00593          	li	a1,10
    800020b8:	00048513          	mv	a0,s1
    800020bc:	00005097          	auipc	ra,0x5
    800020c0:	7a0080e7          	jalr	1952(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    800020c4:	0000f517          	auipc	a0,0xf
    800020c8:	91c50513          	addi	a0,a0,-1764 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800020cc:	00005097          	auipc	ra,0x5
    800020d0:	5e0080e7          	jalr	1504(ra) # 800076ac <_Z11printStringPKc>
    empty->signal();
    800020d4:	04093503          	ld	a0,64(s2)
    800020d8:	00003097          	auipc	ra,0x3
    800020dc:	df0080e7          	jalr	-528(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    thread_dispatch();
    800020e0:	fffff097          	auipc	ra,0xfffff
    800020e4:	278080e7          	jalr	632(ra) # 80001358 <_Z15thread_dispatchv>
    mutexMen->wait();
    800020e8:	05093503          	ld	a0,80(s2)
    800020ec:	00003097          	auipc	ra,0x3
    800020f0:	d24080e7          	jalr	-732(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Muskarac izasao iz WC\n");
    800020f4:	0000e517          	auipc	a0,0xe
    800020f8:	fe450513          	addi	a0,a0,-28 # 800100d8 <CONSOLE_STATUS+0xc8>
    800020fc:	00005097          	auipc	ra,0x5
    80002100:	5b0080e7          	jalr	1456(ra) # 800076ac <_Z11printStringPKc>
    printString("ID: ");
    80002104:	0000f517          	auipc	a0,0xf
    80002108:	e8c50513          	addi	a0,a0,-372 # 80010f90 <CONSOLE_STATUS+0xf80>
    8000210c:	00005097          	auipc	ra,0x5
    80002110:	5a0080e7          	jalr	1440(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    80002114:	00000613          	li	a2,0
    80002118:	00a00593          	li	a1,10
    8000211c:	00048513          	mv	a0,s1
    80002120:	00005097          	auipc	ra,0x5
    80002124:	73c080e7          	jalr	1852(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    80002128:	0000f517          	auipc	a0,0xf
    8000212c:	8b850513          	addi	a0,a0,-1864 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80002130:	00005097          	auipc	ra,0x5
    80002134:	57c080e7          	jalr	1404(ra) # 800076ac <_Z11printStringPKc>
    numOfMan--;
    80002138:	06c92783          	lw	a5,108(s2)
    8000213c:	fff7879b          	addiw	a5,a5,-1
    80002140:	0007871b          	sext.w	a4,a5
    80002144:	06f92623          	sw	a5,108(s2)
    if(numOfMan ==0){
    80002148:	0a070263          	beqz	a4,800021ec <_ZN3TCB3manEj+0x240>
    mutexMen->signal();
    8000214c:	00014517          	auipc	a0,0x14
    80002150:	93453503          	ld	a0,-1740(a0) # 80015a80 <_ZN3TCB8mutexMenE>
    80002154:	00003097          	auipc	ra,0x3
    80002158:	d74080e7          	jalr	-652(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    thread_dispatch();
    8000215c:	fffff097          	auipc	ra,0xfffff
    80002160:	1fc080e7          	jalr	508(ra) # 80001358 <_Z15thread_dispatchv>
}
    80002164:	01813083          	ld	ra,24(sp)
    80002168:	01013403          	ld	s0,16(sp)
    8000216c:	00813483          	ld	s1,8(sp)
    80002170:	00013903          	ld	s2,0(sp)
    80002174:	02010113          	addi	sp,sp,32
    80002178:	00008067          	ret
        setUnisexBatrroom();
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	d50080e7          	jalr	-688(ra) # 80001ecc <_ZN3TCB17setUnisexBatrroomEv>
        firstSet=true;
    80002184:	00100793          	li	a5,1
    80002188:	00014717          	auipc	a4,0x14
    8000218c:	90f70823          	sb	a5,-1776(a4) # 80015a98 <_ZN3TCB8firstSetE>
    80002190:	e45ff06f          	j	80001fd4 <_ZN3TCB3manEj+0x28>
        toilet->wait();
    80002194:	00014517          	auipc	a0,0x14
    80002198:	8e453503          	ld	a0,-1820(a0) # 80015a78 <_ZN3TCB6toiletE>
    8000219c:	00003097          	auipc	ra,0x3
    800021a0:	c74080e7          	jalr	-908(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
        printString("Usao jedan muskarac, zene ne mogu sad ulaziti\n");
    800021a4:	0000e517          	auipc	a0,0xe
    800021a8:	eec50513          	addi	a0,a0,-276 # 80010090 <CONSOLE_STATUS+0x80>
    800021ac:	00005097          	auipc	ra,0x5
    800021b0:	500080e7          	jalr	1280(ra) # 800076ac <_Z11printStringPKc>
        printString("ID: ");
    800021b4:	0000f517          	auipc	a0,0xf
    800021b8:	ddc50513          	addi	a0,a0,-548 # 80010f90 <CONSOLE_STATUS+0xf80>
    800021bc:	00005097          	auipc	ra,0x5
    800021c0:	4f0080e7          	jalr	1264(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    800021c4:	00000613          	li	a2,0
    800021c8:	00a00593          	li	a1,10
    800021cc:	00048513          	mv	a0,s1
    800021d0:	00005097          	auipc	ra,0x5
    800021d4:	68c080e7          	jalr	1676(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800021d8:	0000f517          	auipc	a0,0xf
    800021dc:	80850513          	addi	a0,a0,-2040 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800021e0:	00005097          	auipc	ra,0x5
    800021e4:	4cc080e7          	jalr	1228(ra) # 800076ac <_Z11printStringPKc>
    800021e8:	e6dff06f          	j	80002054 <_ZN3TCB3manEj+0xa8>
        toilet->signal();
    800021ec:	00014517          	auipc	a0,0x14
    800021f0:	88c53503          	ld	a0,-1908(a0) # 80015a78 <_ZN3TCB6toiletE>
    800021f4:	00003097          	auipc	ra,0x3
    800021f8:	cd4080e7          	jalr	-812(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
        thread_dispatch();
    800021fc:	fffff097          	auipc	ra,0xfffff
    80002200:	15c080e7          	jalr	348(ra) # 80001358 <_Z15thread_dispatchv>
    80002204:	f49ff06f          	j	8000214c <_ZN3TCB3manEj+0x1a0>

0000000080002208 <_ZN3TCB5womanEj>:
void TCB::woman(unsigned int id) {
    80002208:	fe010113          	addi	sp,sp,-32
    8000220c:	00113c23          	sd	ra,24(sp)
    80002210:	00813823          	sd	s0,16(sp)
    80002214:	00913423          	sd	s1,8(sp)
    80002218:	01213023          	sd	s2,0(sp)
    8000221c:	02010413          	addi	s0,sp,32
    80002220:	00050493          	mv	s1,a0
    if(!firstSet){
    80002224:	00014797          	auipc	a5,0x14
    80002228:	8747c783          	lbu	a5,-1932(a5) # 80015a98 <_ZN3TCB8firstSetE>
    8000222c:	1a078663          	beqz	a5,800023d8 <_ZN3TCB5womanEj+0x1d0>
    entry->wait();
    80002230:	00014917          	auipc	s2,0x14
    80002234:	80090913          	addi	s2,s2,-2048 # 80015a30 <_ZN3TCB10ListBarierE>
    80002238:	06093503          	ld	a0,96(s2)
    8000223c:	00003097          	auipc	ra,0x3
    80002240:	bd4080e7          	jalr	-1068(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    mutexWomen->wait();
    80002244:	05893503          	ld	a0,88(s2)
    80002248:	00003097          	auipc	ra,0x3
    8000224c:	bc8080e7          	jalr	-1080(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Usla nova zena,al ne koristi jos,  ");
    80002250:	0000e517          	auipc	a0,0xe
    80002254:	ea050513          	addi	a0,a0,-352 # 800100f0 <CONSOLE_STATUS+0xe0>
    80002258:	00005097          	auipc	ra,0x5
    8000225c:	454080e7          	jalr	1108(ra) # 800076ac <_Z11printStringPKc>
    printString("ID: ");
    80002260:	0000f517          	auipc	a0,0xf
    80002264:	d3050513          	addi	a0,a0,-720 # 80010f90 <CONSOLE_STATUS+0xf80>
    80002268:	00005097          	auipc	ra,0x5
    8000226c:	444080e7          	jalr	1092(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    80002270:	0004849b          	sext.w	s1,s1
    80002274:	00000613          	li	a2,0
    80002278:	00a00593          	li	a1,10
    8000227c:	00048513          	mv	a0,s1
    80002280:	00005097          	auipc	ra,0x5
    80002284:	5dc080e7          	jalr	1500(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    80002288:	0000e517          	auipc	a0,0xe
    8000228c:	75850513          	addi	a0,a0,1880 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80002290:	00005097          	auipc	ra,0x5
    80002294:	41c080e7          	jalr	1052(ra) # 800076ac <_Z11printStringPKc>
    numOfWoman++;
    80002298:	07092783          	lw	a5,112(s2)
    8000229c:	0017879b          	addiw	a5,a5,1
    800022a0:	0007871b          	sext.w	a4,a5
    800022a4:	06f92823          	sw	a5,112(s2)
    if(numOfWoman==1){
    800022a8:	00100793          	li	a5,1
    800022ac:	14f70263          	beq	a4,a5,800023f0 <_ZN3TCB5womanEj+0x1e8>
    mutexWomen->signal();
    800022b0:	00013917          	auipc	s2,0x13
    800022b4:	78090913          	addi	s2,s2,1920 # 80015a30 <_ZN3TCB10ListBarierE>
    800022b8:	05893503          	ld	a0,88(s2)
    800022bc:	00003097          	auipc	ra,0x3
    800022c0:	c0c080e7          	jalr	-1012(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    thread_dispatch();
    800022c4:	fffff097          	auipc	ra,0xfffff
    800022c8:	094080e7          	jalr	148(ra) # 80001358 <_Z15thread_dispatchv>
    entry->signal();
    800022cc:	06093503          	ld	a0,96(s2)
    800022d0:	00003097          	auipc	ra,0x3
    800022d4:	bf8080e7          	jalr	-1032(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    thread_dispatch();
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	080080e7          	jalr	128(ra) # 80001358 <_Z15thread_dispatchv>
    empty->wait();
    800022e0:	04093503          	ld	a0,64(s2)
    800022e4:	00003097          	auipc	ra,0x3
    800022e8:	b2c080e7          	jalr	-1236(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Zena koristi WC\n");
    800022ec:	0000e517          	auipc	a0,0xe
    800022f0:	e5c50513          	addi	a0,a0,-420 # 80010148 <CONSOLE_STATUS+0x138>
    800022f4:	00005097          	auipc	ra,0x5
    800022f8:	3b8080e7          	jalr	952(ra) # 800076ac <_Z11printStringPKc>
    printString("ID: ");
    800022fc:	0000f517          	auipc	a0,0xf
    80002300:	c9450513          	addi	a0,a0,-876 # 80010f90 <CONSOLE_STATUS+0xf80>
    80002304:	00005097          	auipc	ra,0x5
    80002308:	3a8080e7          	jalr	936(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    8000230c:	00000613          	li	a2,0
    80002310:	00a00593          	li	a1,10
    80002314:	00048513          	mv	a0,s1
    80002318:	00005097          	auipc	ra,0x5
    8000231c:	544080e7          	jalr	1348(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    80002320:	0000e517          	auipc	a0,0xe
    80002324:	6c050513          	addi	a0,a0,1728 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80002328:	00005097          	auipc	ra,0x5
    8000232c:	384080e7          	jalr	900(ra) # 800076ac <_Z11printStringPKc>
    empty->signal();
    80002330:	04093503          	ld	a0,64(s2)
    80002334:	00003097          	auipc	ra,0x3
    80002338:	b94080e7          	jalr	-1132(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    thread_dispatch();
    8000233c:	fffff097          	auipc	ra,0xfffff
    80002340:	01c080e7          	jalr	28(ra) # 80001358 <_Z15thread_dispatchv>
    mutexWomen->wait();
    80002344:	05893503          	ld	a0,88(s2)
    80002348:	00003097          	auipc	ra,0x3
    8000234c:	ac8080e7          	jalr	-1336(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Zena izasla iz WC\n");
    80002350:	0000e517          	auipc	a0,0xe
    80002354:	e1050513          	addi	a0,a0,-496 # 80010160 <CONSOLE_STATUS+0x150>
    80002358:	00005097          	auipc	ra,0x5
    8000235c:	354080e7          	jalr	852(ra) # 800076ac <_Z11printStringPKc>
    printString("ID: ");
    80002360:	0000f517          	auipc	a0,0xf
    80002364:	c3050513          	addi	a0,a0,-976 # 80010f90 <CONSOLE_STATUS+0xf80>
    80002368:	00005097          	auipc	ra,0x5
    8000236c:	344080e7          	jalr	836(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    80002370:	00000613          	li	a2,0
    80002374:	00a00593          	li	a1,10
    80002378:	00048513          	mv	a0,s1
    8000237c:	00005097          	auipc	ra,0x5
    80002380:	4e0080e7          	jalr	1248(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    80002384:	0000e517          	auipc	a0,0xe
    80002388:	65c50513          	addi	a0,a0,1628 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000238c:	00005097          	auipc	ra,0x5
    80002390:	320080e7          	jalr	800(ra) # 800076ac <_Z11printStringPKc>
    numOfWoman--;
    80002394:	07092783          	lw	a5,112(s2)
    80002398:	fff7879b          	addiw	a5,a5,-1
    8000239c:	0007871b          	sext.w	a4,a5
    800023a0:	06f92823          	sw	a5,112(s2)
    if(numOfWoman ==0){
    800023a4:	0a070263          	beqz	a4,80002448 <_ZN3TCB5womanEj+0x240>
    mutexWomen->signal();
    800023a8:	00013517          	auipc	a0,0x13
    800023ac:	6e053503          	ld	a0,1760(a0) # 80015a88 <_ZN3TCB10mutexWomenE>
    800023b0:	00003097          	auipc	ra,0x3
    800023b4:	b18080e7          	jalr	-1256(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    thread_dispatch();
    800023b8:	fffff097          	auipc	ra,0xfffff
    800023bc:	fa0080e7          	jalr	-96(ra) # 80001358 <_Z15thread_dispatchv>
}
    800023c0:	01813083          	ld	ra,24(sp)
    800023c4:	01013403          	ld	s0,16(sp)
    800023c8:	00813483          	ld	s1,8(sp)
    800023cc:	00013903          	ld	s2,0(sp)
    800023d0:	02010113          	addi	sp,sp,32
    800023d4:	00008067          	ret
        setUnisexBatrroom();
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	af4080e7          	jalr	-1292(ra) # 80001ecc <_ZN3TCB17setUnisexBatrroomEv>
        firstSet=true;
    800023e0:	00100793          	li	a5,1
    800023e4:	00013717          	auipc	a4,0x13
    800023e8:	6af70a23          	sb	a5,1716(a4) # 80015a98 <_ZN3TCB8firstSetE>
    800023ec:	e45ff06f          	j	80002230 <_ZN3TCB5womanEj+0x28>
        toilet->wait();
    800023f0:	00013517          	auipc	a0,0x13
    800023f4:	68853503          	ld	a0,1672(a0) # 80015a78 <_ZN3TCB6toiletE>
    800023f8:	00003097          	auipc	ra,0x3
    800023fc:	a18080e7          	jalr	-1512(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
        printString("Usla jedna zena, muskarci ne mogu sad ulaziti\n");
    80002400:	0000e517          	auipc	a0,0xe
    80002404:	d1850513          	addi	a0,a0,-744 # 80010118 <CONSOLE_STATUS+0x108>
    80002408:	00005097          	auipc	ra,0x5
    8000240c:	2a4080e7          	jalr	676(ra) # 800076ac <_Z11printStringPKc>
        printString("ID: ");
    80002410:	0000f517          	auipc	a0,0xf
    80002414:	b8050513          	addi	a0,a0,-1152 # 80010f90 <CONSOLE_STATUS+0xf80>
    80002418:	00005097          	auipc	ra,0x5
    8000241c:	294080e7          	jalr	660(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80002420:	00000613          	li	a2,0
    80002424:	00a00593          	li	a1,10
    80002428:	00048513          	mv	a0,s1
    8000242c:	00005097          	auipc	ra,0x5
    80002430:	430080e7          	jalr	1072(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80002434:	0000e517          	auipc	a0,0xe
    80002438:	5ac50513          	addi	a0,a0,1452 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000243c:	00005097          	auipc	ra,0x5
    80002440:	270080e7          	jalr	624(ra) # 800076ac <_Z11printStringPKc>
    80002444:	e6dff06f          	j	800022b0 <_ZN3TCB5womanEj+0xa8>
        toilet->signal();
    80002448:	00013517          	auipc	a0,0x13
    8000244c:	63053503          	ld	a0,1584(a0) # 80015a78 <_ZN3TCB6toiletE>
    80002450:	00003097          	auipc	ra,0x3
    80002454:	a78080e7          	jalr	-1416(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
        thread_dispatch();
    80002458:	fffff097          	auipc	ra,0xfffff
    8000245c:	f00080e7          	jalr	-256(ra) # 80001358 <_Z15thread_dispatchv>
    80002460:	f49ff06f          	j	800023a8 <_ZN3TCB5womanEj+0x1a0>

0000000080002464 <_ZN3TCB7barrierEv>:
void TCB::barrier() {
    80002464:	fe010113          	addi	sp,sp,-32
    80002468:	00113c23          	sd	ra,24(sp)
    8000246c:	00813823          	sd	s0,16(sp)
    80002470:	00913423          	sd	s1,8(sp)
    80002474:	01213023          	sd	s2,0(sp)
    80002478:	02010413          	addi	s0,sp,32
    if(!fsBarrier){
    8000247c:	00013797          	auipc	a5,0x13
    80002480:	5e07c783          	lbu	a5,1504(a5) # 80015a5c <_ZN3TCB9fsBarrierE>
    80002484:	02079063          	bnez	a5,800024a4 <_ZN3TCB7barrierEv+0x40>
        fsBarrier = true;
    80002488:	00013797          	auipc	a5,0x13
    8000248c:	5a878793          	addi	a5,a5,1448 # 80015a30 <_ZN3TCB10ListBarierE>
    80002490:	00100713          	li	a4,1
    80002494:	02e78623          	sb	a4,44(a5)
        numOFthreads++;
    80002498:	0307a703          	lw	a4,48(a5)
    8000249c:	0017071b          	addiw	a4,a4,1
    800024a0:	02e7a823          	sw	a4,48(a5)
    numCalls++;
    800024a4:	00013717          	auipc	a4,0x13
    800024a8:	58c70713          	addi	a4,a4,1420 # 80015a30 <_ZN3TCB10ListBarierE>
    800024ac:	07472783          	lw	a5,116(a4)
    800024b0:	0017879b          	addiw	a5,a5,1
    800024b4:	0007869b          	sext.w	a3,a5
    800024b8:	06f72a23          	sw	a5,116(a4)
    if(numCalls==numOFthreads){
    800024bc:	03072783          	lw	a5,48(a4)
    800024c0:	06f69063          	bne	a3,a5,80002520 <_ZN3TCB7barrierEv+0xbc>
        numCalls=0;
    800024c4:	06072a23          	sw	zero,116(a4)
        numOFthreads=0;
    800024c8:	02072823          	sw	zero,48(a4)
        fsBarrier=false;
    800024cc:	02070623          	sb	zero,44(a4)
    800024d0:	0280006f          	j	800024f8 <_ZN3TCB7barrierEv+0x94>
        if (!head) { tail = 0; }
    800024d4:	00013797          	auipc	a5,0x13
    800024d8:	5607b223          	sd	zero,1380(a5) # 80015a38 <_ZN3TCB10ListBarierE+0x8>
        T *ret = elem->data;
    800024dc:	00053483          	ld	s1,0(a0)
        delete elem;
    800024e0:	00001097          	auipc	ra,0x1
    800024e4:	5ec080e7          	jalr	1516(ra) # 80003acc <_ZdlPv>
    void setBlocked(bool value) { this->blocked = value; }
    800024e8:	020480a3          	sb	zero,33(s1)
            Scheduler::put(t);
    800024ec:	00048513          	mv	a0,s1
    800024f0:	00003097          	auipc	ra,0x3
    800024f4:	ca4080e7          	jalr	-860(ra) # 80005194 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    800024f8:	00013517          	auipc	a0,0x13
    800024fc:	53853503          	ld	a0,1336(a0) # 80015a30 <_ZN3TCB10ListBarierE>
    80002500:	04050e63          	beqz	a0,8000255c <_ZN3TCB7barrierEv+0xf8>
        return head->data;
    80002504:	00053783          	ld	a5,0(a0)
        while(ListBarier.peekFirst()){
    80002508:	04078a63          	beqz	a5,8000255c <_ZN3TCB7barrierEv+0xf8>
        head = head->next;
    8000250c:	00853783          	ld	a5,8(a0)
    80002510:	00013717          	auipc	a4,0x13
    80002514:	52f73023          	sd	a5,1312(a4) # 80015a30 <_ZN3TCB10ListBarierE>
        if (!head) { tail = 0; }
    80002518:	fc0792e3          	bnez	a5,800024dc <_ZN3TCB7barrierEv+0x78>
    8000251c:	fb9ff06f          	j	800024d4 <_ZN3TCB7barrierEv+0x70>
        running->setBlocked(true);
    80002520:	00013497          	auipc	s1,0x13
    80002524:	51048493          	addi	s1,s1,1296 # 80015a30 <_ZN3TCB10ListBarierE>
    80002528:	0104b903          	ld	s2,16(s1)
    8000252c:	00100793          	li	a5,1
    80002530:	02f900a3          	sb	a5,33(s2)
        Elem *elem = new Elem(data, 0);
    80002534:	01000513          	li	a0,16
    80002538:	00001097          	auipc	ra,0x1
    8000253c:	544080e7          	jalr	1348(ra) # 80003a7c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002540:	01253023          	sd	s2,0(a0)
    80002544:	00053423          	sd	zero,8(a0)
        if (tail)
    80002548:	0084b783          	ld	a5,8(s1)
    8000254c:	02078463          	beqz	a5,80002574 <_ZN3TCB7barrierEv+0x110>
            tail->next = elem;
    80002550:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002554:	00013797          	auipc	a5,0x13
    80002558:	4ea7b223          	sd	a0,1252(a5) # 80015a38 <_ZN3TCB10ListBarierE+0x8>
}
    8000255c:	01813083          	ld	ra,24(sp)
    80002560:	01013403          	ld	s0,16(sp)
    80002564:	00813483          	ld	s1,8(sp)
    80002568:	00013903          	ld	s2,0(sp)
    8000256c:	02010113          	addi	sp,sp,32
    80002570:	00008067          	ret
            head = tail = elem;
    80002574:	00013797          	auipc	a5,0x13
    80002578:	4bc78793          	addi	a5,a5,1212 # 80015a30 <_ZN3TCB10ListBarierE>
    8000257c:	00a7b423          	sd	a0,8(a5)
    80002580:	00a7b023          	sd	a0,0(a5)
    80002584:	fd9ff06f          	j	8000255c <_ZN3TCB7barrierEv+0xf8>

0000000080002588 <_ZN3TCB6setSemEv>:
    if(!fsSemaphores){
    80002588:	05854783          	lbu	a5,88(a0)
    8000258c:	00078463          	beqz	a5,80002594 <_ZN3TCB6setSemEv+0xc>
    80002590:	00008067          	ret
void TCB::setSem() {
    80002594:	fe010113          	addi	sp,sp,-32
    80002598:	00113c23          	sd	ra,24(sp)
    8000259c:	00813823          	sd	s0,16(sp)
    800025a0:	00913423          	sd	s1,8(sp)
    800025a4:	02010413          	addi	s0,sp,32
    800025a8:	00050493          	mv	s1,a0
        fsSemaphores=true;
    800025ac:	00100793          	li	a5,1
    800025b0:	04f50c23          	sb	a5,88(a0)
        return memoryAllocator::mem_alloc(size);
    800025b4:	01800513          	li	a0,24
    800025b8:	00002097          	auipc	ra,0x2
    800025bc:	3dc080e7          	jalr	988(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    800025c0:	00050023          	sb	zero,0(a0)
    800025c4:	00052223          	sw	zero,4(a0)
    Lista() : head(0), tail(0) {}
    800025c8:	00053423          	sd	zero,8(a0)
    800025cc:	00053823          	sd	zero,16(a0)
        msgA=new Semaphore_k(0);
    800025d0:	04a4b823          	sd	a0,80(s1)
        return memoryAllocator::mem_alloc(size);
    800025d4:	01800513          	li	a0,24
    800025d8:	00002097          	auipc	ra,0x2
    800025dc:	3bc080e7          	jalr	956(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    800025e0:	00050023          	sb	zero,0(a0)
    800025e4:	00100793          	li	a5,1
    800025e8:	00f52223          	sw	a5,4(a0)
    800025ec:	00053423          	sd	zero,8(a0)
    800025f0:	00053823          	sd	zero,16(a0)
        msgE=new Semaphore_k(1);
    800025f4:	04a4b423          	sd	a0,72(s1)
}
    800025f8:	01813083          	ld	ra,24(sp)
    800025fc:	01013403          	ld	s0,16(sp)
    80002600:	00813483          	ld	s1,8(sp)
    80002604:	02010113          	addi	sp,sp,32
    80002608:	00008067          	ret

000000008000260c <_ZN3TCB7receiveEv>:
char const *TCB::receive() {
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00113c23          	sd	ra,24(sp)
    80002614:	00813823          	sd	s0,16(sp)
    80002618:	00913423          	sd	s1,8(sp)
    8000261c:	02010413          	addi	s0,sp,32
    running->setSem();
    80002620:	00013497          	auipc	s1,0x13
    80002624:	41048493          	addi	s1,s1,1040 # 80015a30 <_ZN3TCB10ListBarierE>
    80002628:	0104b503          	ld	a0,16(s1)
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	f5c080e7          	jalr	-164(ra) # 80002588 <_ZN3TCB6setSemEv>
    printString("Receive cekam...\n");
    80002634:	0000e517          	auipc	a0,0xe
    80002638:	b4450513          	addi	a0,a0,-1212 # 80010178 <CONSOLE_STATUS+0x168>
    8000263c:	00005097          	auipc	ra,0x5
    80002640:	070080e7          	jalr	112(ra) # 800076ac <_Z11printStringPKc>
    running->msgA->wait();
    80002644:	0104b783          	ld	a5,16(s1)
    80002648:	0507b503          	ld	a0,80(a5)
    8000264c:	00002097          	auipc	ra,0x2
    80002650:	7c4080e7          	jalr	1988(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Poruka primljena uspesno\n");
    80002654:	0000e517          	auipc	a0,0xe
    80002658:	b3c50513          	addi	a0,a0,-1220 # 80010190 <CONSOLE_STATUS+0x180>
    8000265c:	00005097          	auipc	ra,0x5
    80002660:	050080e7          	jalr	80(ra) # 800076ac <_Z11printStringPKc>
    char const* msg = running->message;
    80002664:	0104b783          	ld	a5,16(s1)
    80002668:	0607b483          	ld	s1,96(a5)
    running->msgE->signal();
    8000266c:	0487b503          	ld	a0,72(a5)
    80002670:	00003097          	auipc	ra,0x3
    80002674:	858080e7          	jalr	-1960(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    80002678:	00048513          	mv	a0,s1
    8000267c:	01813083          	ld	ra,24(sp)
    80002680:	01013403          	ld	s0,16(sp)
    80002684:	00813483          	ld	s1,8(sp)
    80002688:	02010113          	addi	sp,sp,32
    8000268c:	00008067          	ret

0000000080002690 <_ZN3TCB4sendEPKc>:
void TCB::send(const char *msg) {
    80002690:	fe010113          	addi	sp,sp,-32
    80002694:	00113c23          	sd	ra,24(sp)
    80002698:	00813823          	sd	s0,16(sp)
    8000269c:	00913423          	sd	s1,8(sp)
    800026a0:	01213023          	sd	s2,0(sp)
    800026a4:	02010413          	addi	s0,sp,32
    800026a8:	00050493          	mv	s1,a0
    800026ac:	00058913          	mv	s2,a1
    setSem();
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	ed8080e7          	jalr	-296(ra) # 80002588 <_ZN3TCB6setSemEv>
    printString("Send cekam...\n");
    800026b8:	0000e517          	auipc	a0,0xe
    800026bc:	af850513          	addi	a0,a0,-1288 # 800101b0 <CONSOLE_STATUS+0x1a0>
    800026c0:	00005097          	auipc	ra,0x5
    800026c4:	fec080e7          	jalr	-20(ra) # 800076ac <_Z11printStringPKc>
    msgE->wait();
    800026c8:	0484b503          	ld	a0,72(s1)
    800026cc:	00002097          	auipc	ra,0x2
    800026d0:	744080e7          	jalr	1860(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Poruka poslata uspesno...\n");
    800026d4:	0000e517          	auipc	a0,0xe
    800026d8:	aec50513          	addi	a0,a0,-1300 # 800101c0 <CONSOLE_STATUS+0x1b0>
    800026dc:	00005097          	auipc	ra,0x5
    800026e0:	fd0080e7          	jalr	-48(ra) # 800076ac <_Z11printStringPKc>
    message = msg;
    800026e4:	0724b023          	sd	s2,96(s1)
    msgA->signal();
    800026e8:	0504b503          	ld	a0,80(s1)
    800026ec:	00002097          	auipc	ra,0x2
    800026f0:	7dc080e7          	jalr	2012(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    800026f4:	01813083          	ld	ra,24(sp)
    800026f8:	01013403          	ld	s0,16(sp)
    800026fc:	00813483          	ld	s1,8(sp)
    80002700:	00013903          	ld	s2,0(sp)
    80002704:	02010113          	addi	sp,sp,32
    80002708:	00008067          	ret

000000008000270c <_ZN3TCB7joinAllEv>:
void TCB::joinAll() {
    8000270c:	fe010113          	addi	sp,sp,-32
    80002710:	00113c23          	sd	ra,24(sp)
    80002714:	00813823          	sd	s0,16(sp)
    80002718:	00913423          	sd	s1,8(sp)
    8000271c:	01213023          	sd	s2,0(sp)
    80002720:	02010413          	addi	s0,sp,32
    80002724:	00050913          	mv	s2,a0
    if(!joinALL){
    80002728:	07154783          	lbu	a5,113(a0)
    8000272c:	02078263          	beqz	a5,80002750 <_ZN3TCB7joinAllEv+0x44>
void TCB::joinAll() {
    80002730:	00000493          	li	s1,0
    for(int i=0;i<numberOfChildren;i++){
    80002734:	07492783          	lw	a5,116(s2)
    80002738:	04f4d463          	bge	s1,a5,80002780 <_ZN3TCB7joinAllEv+0x74>
        joinAllsem->wait();
    8000273c:	07893503          	ld	a0,120(s2)
    80002740:	00002097          	auipc	ra,0x2
    80002744:	6d0080e7          	jalr	1744(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    for(int i=0;i<numberOfChildren;i++){
    80002748:	0014849b          	addiw	s1,s1,1
    8000274c:	fe9ff06f          	j	80002734 <_ZN3TCB7joinAllEv+0x28>
        joinALL=true;
    80002750:	00100493          	li	s1,1
    80002754:	069508a3          	sb	s1,113(a0)
        return memoryAllocator::mem_alloc(size);
    80002758:	01800513          	li	a0,24
    8000275c:	00002097          	auipc	ra,0x2
    80002760:	238080e7          	jalr	568(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80002764:	00050023          	sb	zero,0(a0)
    80002768:	00052223          	sw	zero,4(a0)
    8000276c:	00053423          	sd	zero,8(a0)
    80002770:	00053823          	sd	zero,16(a0)
        joinAllsem= new Semaphore_k(0);
    80002774:	06a93c23          	sd	a0,120(s2)
        waitingForChildren=true;
    80002778:	06990823          	sb	s1,112(s2)
    8000277c:	fb5ff06f          	j	80002730 <_ZN3TCB7joinAllEv+0x24>
    joinALL=false;
    80002780:	060908a3          	sb	zero,113(s2)
    numberOfChildren=0;
    80002784:	06092a23          	sw	zero,116(s2)
}
    80002788:	01813083          	ld	ra,24(sp)
    8000278c:	01013403          	ld	s0,16(sp)
    80002790:	00813483          	ld	s1,8(sp)
    80002794:	00013903          	ld	s2,0(sp)
    80002798:	02010113          	addi	sp,sp,32
    8000279c:	00008067          	ret

00000000800027a0 <_ZN3TCB13setMaxThreadsEj>:
    if(!setMaxTh){
    800027a0:	00013797          	auipc	a5,0x13
    800027a4:	2a87c783          	lbu	a5,680(a5) # 80015a48 <_ZN3TCB8setMaxThE>
    800027a8:	00078463          	beqz	a5,800027b0 <_ZN3TCB13setMaxThreadsEj+0x10>
    800027ac:	00008067          	ret
void TCB::setMaxThreads(unsigned int num) {
    800027b0:	fe010113          	addi	sp,sp,-32
    800027b4:	00113c23          	sd	ra,24(sp)
    800027b8:	00813823          	sd	s0,16(sp)
    800027bc:	00913423          	sd	s1,8(sp)
    800027c0:	01213023          	sd	s2,0(sp)
    800027c4:	02010413          	addi	s0,sp,32
        setMaxTh=true;
    800027c8:	00013917          	auipc	s2,0x13
    800027cc:	26890913          	addi	s2,s2,616 # 80015a30 <_ZN3TCB10ListBarierE>
    800027d0:	00100793          	li	a5,1
    800027d4:	00f90c23          	sb	a5,24(s2)
        currThr = num;
    800027d8:	0005049b          	sext.w	s1,a0
    800027dc:	00992e23          	sw	s1,28(s2)
        return memoryAllocator::mem_alloc(size);
    800027e0:	01800513          	li	a0,24
    800027e4:	00002097          	auipc	ra,0x2
    800027e8:	1b0080e7          	jalr	432(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    800027ec:	00050023          	sb	zero,0(a0)
    800027f0:	00952223          	sw	s1,4(a0)
    800027f4:	00053423          	sd	zero,8(a0)
    800027f8:	00053823          	sd	zero,16(a0)
        semMaxThreads = new Semaphore_k(num);
    800027fc:	02a93023          	sd	a0,32(s2)
}
    80002800:	01813083          	ld	ra,24(sp)
    80002804:	01013403          	ld	s0,16(sp)
    80002808:	00813483          	ld	s1,8(sp)
    8000280c:	00013903          	ld	s2,0(sp)
    80002810:	02010113          	addi	sp,sp,32
    80002814:	00008067          	ret

0000000080002818 <_ZN3TCB12setBarrier_2Ev>:
    if(!setBarrier2){
    80002818:	00013797          	auipc	a5,0x13
    8000281c:	24c7c783          	lbu	a5,588(a5) # 80015a64 <_ZN3TCB11setBarrier2E>
    80002820:	00078463          	beqz	a5,80002828 <_ZN3TCB12setBarrier_2Ev+0x10>
    80002824:	00008067          	ret
void TCB::setBarrier_2() {
    80002828:	fe010113          	addi	sp,sp,-32
    8000282c:	00113c23          	sd	ra,24(sp)
    80002830:	00813823          	sd	s0,16(sp)
    80002834:	00913423          	sd	s1,8(sp)
    80002838:	02010413          	addi	s0,sp,32
        setBarrier2=true;
    8000283c:	00013497          	auipc	s1,0x13
    80002840:	1f448493          	addi	s1,s1,500 # 80015a30 <_ZN3TCB10ListBarierE>
    80002844:	00100793          	li	a5,1
    80002848:	02f48a23          	sb	a5,52(s1)
        return memoryAllocator::mem_alloc(size);
    8000284c:	01800513          	li	a0,24
    80002850:	00002097          	auipc	ra,0x2
    80002854:	144080e7          	jalr	324(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80002858:	00050023          	sb	zero,0(a0)
    8000285c:	00100793          	li	a5,1
    80002860:	00f52223          	sw	a5,4(a0)
    80002864:	00053423          	sd	zero,8(a0)
    80002868:	00053823          	sd	zero,16(a0)
        firstDoor = new Semaphore_k(1);
    8000286c:	06a4bc23          	sd	a0,120(s1)
        return memoryAllocator::mem_alloc(size);
    80002870:	01800513          	li	a0,24
    80002874:	00002097          	auipc	ra,0x2
    80002878:	120080e7          	jalr	288(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    8000287c:	00050023          	sb	zero,0(a0)
    80002880:	00052223          	sw	zero,4(a0)
    80002884:	00053423          	sd	zero,8(a0)
    80002888:	00053823          	sd	zero,16(a0)
        secondDoor = new Semaphore_k(0);
    8000288c:	08a4b023          	sd	a0,128(s1)
        numCalls=0;
    80002890:	0604aa23          	sw	zero,116(s1)
        threadCount++;
    80002894:	0384a783          	lw	a5,56(s1)
    80002898:	0017879b          	addiw	a5,a5,1
    8000289c:	02f4ac23          	sw	a5,56(s1)
}
    800028a0:	01813083          	ld	ra,24(sp)
    800028a4:	01013403          	ld	s0,16(sp)
    800028a8:	00813483          	ld	s1,8(sp)
    800028ac:	02010113          	addi	sp,sp,32
    800028b0:	00008067          	ret

00000000800028b4 <_ZN3TCB9barrier_2Ev>:
void TCB::barrier_2() {
    800028b4:	fe010113          	addi	sp,sp,-32
    800028b8:	00113c23          	sd	ra,24(sp)
    800028bc:	00813823          	sd	s0,16(sp)
    800028c0:	00913423          	sd	s1,8(sp)
    800028c4:	02010413          	addi	s0,sp,32
    setBarrier_2();
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	f50080e7          	jalr	-176(ra) # 80002818 <_ZN3TCB12setBarrier_2Ev>
    firstDoor->wait();
    800028d0:	00013497          	auipc	s1,0x13
    800028d4:	16048493          	addi	s1,s1,352 # 80015a30 <_ZN3TCB10ListBarierE>
    800028d8:	0784b503          	ld	a0,120(s1)
    800028dc:	00002097          	auipc	ra,0x2
    800028e0:	534080e7          	jalr	1332(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    calls++;
    800028e4:	0884a783          	lw	a5,136(s1)
    800028e8:	0017879b          	addiw	a5,a5,1
    800028ec:	0007871b          	sext.w	a4,a5
    800028f0:	08f4a423          	sw	a5,136(s1)
    if(calls==threadCount){
    800028f4:	0384a783          	lw	a5,56(s1)
    800028f8:	06f70263          	beq	a4,a5,8000295c <_ZN3TCB9barrier_2Ev+0xa8>
        firstDoor->signal();
    800028fc:	00013517          	auipc	a0,0x13
    80002900:	1ac53503          	ld	a0,428(a0) # 80015aa8 <_ZN3TCB9firstDoorE>
    80002904:	00002097          	auipc	ra,0x2
    80002908:	5c4080e7          	jalr	1476(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    secondDoor->wait();
    8000290c:	00013497          	auipc	s1,0x13
    80002910:	12448493          	addi	s1,s1,292 # 80015a30 <_ZN3TCB10ListBarierE>
    80002914:	0804b503          	ld	a0,128(s1)
    80002918:	00002097          	auipc	ra,0x2
    8000291c:	4f8080e7          	jalr	1272(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    calls--;
    80002920:	0884a783          	lw	a5,136(s1)
    80002924:	fff7879b          	addiw	a5,a5,-1
    80002928:	0007871b          	sext.w	a4,a5
    8000292c:	08f4a423          	sw	a5,136(s1)
    if(calls==0){
    80002930:	04071063          	bnez	a4,80002970 <_ZN3TCB9barrier_2Ev+0xbc>
        threadCount=1;
    80002934:	00100713          	li	a4,1
    80002938:	02e4ac23          	sw	a4,56(s1)
        firstDoor->signal();
    8000293c:	0784b503          	ld	a0,120(s1)
    80002940:	00002097          	auipc	ra,0x2
    80002944:	588080e7          	jalr	1416(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    80002948:	01813083          	ld	ra,24(sp)
    8000294c:	01013403          	ld	s0,16(sp)
    80002950:	00813483          	ld	s1,8(sp)
    80002954:	02010113          	addi	sp,sp,32
    80002958:	00008067          	ret
        secondDoor->signal();
    8000295c:	00013517          	auipc	a0,0x13
    80002960:	15453503          	ld	a0,340(a0) # 80015ab0 <_ZN3TCB10secondDoorE>
    80002964:	00002097          	auipc	ra,0x2
    80002968:	564080e7          	jalr	1380(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    8000296c:	fa1ff06f          	j	8000290c <_ZN3TCB9barrier_2Ev+0x58>
        secondDoor->signal();
    80002970:	00013517          	auipc	a0,0x13
    80002974:	14053503          	ld	a0,320(a0) # 80015ab0 <_ZN3TCB10secondDoorE>
    80002978:	00002097          	auipc	ra,0x2
    8000297c:	550080e7          	jalr	1360(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    80002980:	fc9ff06f          	j	80002948 <_ZN3TCB9barrier_2Ev+0x94>

0000000080002984 <_ZN3TCB18setAtomicBroadcastEv>:
void TCB::setAtomicBroadcast() {
    80002984:	fe010113          	addi	sp,sp,-32
    80002988:	00113c23          	sd	ra,24(sp)
    8000298c:	00813823          	sd	s0,16(sp)
    80002990:	00913423          	sd	s1,8(sp)
    80002994:	02010413          	addi	s0,sp,32
        return memoryAllocator::mem_alloc(size);
    80002998:	01800513          	li	a0,24
    8000299c:	00002097          	auipc	ra,0x2
    800029a0:	ff8080e7          	jalr	-8(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    800029a4:	00050023          	sb	zero,0(a0)
    800029a8:	00a00793          	li	a5,10
    800029ac:	00f52223          	sw	a5,4(a0)
    800029b0:	00053423          	sd	zero,8(a0)
    800029b4:	00053823          	sd	zero,16(a0)
    emptyy = new Semaphore_k(CAPACITY);
    800029b8:	00013797          	auipc	a5,0x13
    800029bc:	10a7b423          	sd	a0,264(a5) # 80015ac0 <emptyy>
    for(int i=0;i<M;i++){
    800029c0:	00000493          	li	s1,0
    800029c4:	0380006f          	j	800029fc <_ZN3TCB18setAtomicBroadcastEv+0x78>
        return memoryAllocator::mem_alloc(size);
    800029c8:	01800513          	li	a0,24
    800029cc:	00002097          	auipc	ra,0x2
    800029d0:	fc8080e7          	jalr	-56(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    800029d4:	00050023          	sb	zero,0(a0)
    800029d8:	00052223          	sw	zero,4(a0)
    800029dc:	00053423          	sd	zero,8(a0)
    800029e0:	00053823          	sd	zero,16(a0)
        full[i]=new Semaphore_k(0);
    800029e4:	00349713          	slli	a4,s1,0x3
    800029e8:	00013797          	auipc	a5,0x13
    800029ec:	04878793          	addi	a5,a5,72 # 80015a30 <_ZN3TCB10ListBarierE>
    800029f0:	00e787b3          	add	a5,a5,a4
    800029f4:	08a7bc23          	sd	a0,152(a5)
    for(int i=0;i<M;i++){
    800029f8:	0014849b          	addiw	s1,s1,1
    800029fc:	00700793          	li	a5,7
    80002a00:	fc97d4e3          	bge	a5,s1,800029c8 <_ZN3TCB18setAtomicBroadcastEv+0x44>
    for(int i=0;i<CAPACITY;i++){
    80002a04:	00000493          	li	s1,0
    80002a08:	00900793          	li	a5,9
    80002a0c:	0497c063          	blt	a5,s1,80002a4c <_ZN3TCB18setAtomicBroadcastEv+0xc8>
        return memoryAllocator::mem_alloc(size);
    80002a10:	01800513          	li	a0,24
    80002a14:	00002097          	auipc	ra,0x2
    80002a18:	f80080e7          	jalr	-128(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80002a1c:	00050023          	sb	zero,0(a0)
    80002a20:	00100793          	li	a5,1
    80002a24:	00f52223          	sw	a5,4(a0)
    80002a28:	00053423          	sd	zero,8(a0)
    80002a2c:	00053823          	sd	zero,16(a0)
        mutexC[i]=new Semaphore_k(1);
    80002a30:	00349713          	slli	a4,s1,0x3
    80002a34:	00013797          	auipc	a5,0x13
    80002a38:	ffc78793          	addi	a5,a5,-4 # 80015a30 <_ZN3TCB10ListBarierE>
    80002a3c:	00e787b3          	add	a5,a5,a4
    80002a40:	0ca7bc23          	sd	a0,216(a5)
    for(int i=0;i<CAPACITY;i++){
    80002a44:	0014849b          	addiw	s1,s1,1
    80002a48:	fc1ff06f          	j	80002a08 <_ZN3TCB18setAtomicBroadcastEv+0x84>
}
    80002a4c:	01813083          	ld	ra,24(sp)
    80002a50:	01013403          	ld	s0,16(sp)
    80002a54:	00813483          	ld	s1,8(sp)
    80002a58:	02010113          	addi	sp,sp,32
    80002a5c:	00008067          	ret

0000000080002a60 <_ZN3TCB8producerEi>:
void TCB::producer(int id) {
    80002a60:	fd010113          	addi	sp,sp,-48
    80002a64:	02113423          	sd	ra,40(sp)
    80002a68:	02813023          	sd	s0,32(sp)
    80002a6c:	00913c23          	sd	s1,24(sp)
    80002a70:	01213823          	sd	s2,16(sp)
    80002a74:	01313423          	sd	s3,8(sp)
    80002a78:	03010413          	addi	s0,sp,48
    80002a7c:	00058993          	mv	s3,a1
    if(!prodConsum){
    80002a80:	00013797          	auipc	a5,0x13
    80002a84:	0d87c783          	lbu	a5,216(a5) # 80015b58 <_ZN3TCB10prodConsumE>
    80002a88:	00078663          	beqz	a5,80002a94 <_ZN3TCB8producerEi+0x34>
void TCB::producer(int id) {
    80002a8c:	00000913          	li	s2,0
    80002a90:	0500006f          	j	80002ae0 <_ZN3TCB8producerEi+0x80>
        setAtomicBroadcast();
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	ef0080e7          	jalr	-272(ra) # 80002984 <_ZN3TCB18setAtomicBroadcastEv>
        prodConsum=true;
    80002a9c:	00100793          	li	a5,1
    80002aa0:	00013717          	auipc	a4,0x13
    80002aa4:	0af70c23          	sb	a5,184(a4) # 80015b58 <_ZN3TCB10prodConsumE>
    80002aa8:	fe5ff06f          	j	80002a8c <_ZN3TCB8producerEi+0x2c>
            full[i]->signal();
    80002aac:	00349713          	slli	a4,s1,0x3
    80002ab0:	00013797          	auipc	a5,0x13
    80002ab4:	f8078793          	addi	a5,a5,-128 # 80015a30 <_ZN3TCB10ListBarierE>
    80002ab8:	00e787b3          	add	a5,a5,a4
    80002abc:	0987b503          	ld	a0,152(a5)
    80002ac0:	00002097          	auipc	ra,0x2
    80002ac4:	408080e7          	jalr	1032(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
            thread_dispatch();
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	890080e7          	jalr	-1904(ra) # 80001358 <_Z15thread_dispatchv>
        for(int i=0;i<M;i++){
    80002ad0:	0014849b          	addiw	s1,s1,1
    80002ad4:	00700793          	li	a5,7
    80002ad8:	fc97dae3          	bge	a5,s1,80002aac <_ZN3TCB8producerEi+0x4c>
    for(int k=0;k<10;k++){
    80002adc:	0019091b          	addiw	s2,s2,1
    80002ae0:	00900793          	li	a5,9
    80002ae4:	0b27c663          	blt	a5,s2,80002b90 <_ZN3TCB8producerEi+0x130>
        newItem +=100;
    80002ae8:	00013497          	auipc	s1,0x13
    80002aec:	f4848493          	addi	s1,s1,-184 # 80015a30 <_ZN3TCB10ListBarierE>
    80002af0:	12c4a783          	lw	a5,300(s1)
    80002af4:	0647879b          	addiw	a5,a5,100
    80002af8:	12f4a623          	sw	a5,300(s1)
        emptyy->wait();
    80002afc:	0904b503          	ld	a0,144(s1)
    80002b00:	00002097          	auipc	ra,0x2
    80002b04:	310080e7          	jalr	784(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
        buffer[writeIndex]=newItem;
    80002b08:	1304a783          	lw	a5,304(s1)
    80002b0c:	00279793          	slli	a5,a5,0x2
    80002b10:	00f487b3          	add	a5,s1,a5
    80002b14:	12c4a703          	lw	a4,300(s1)
    80002b18:	12e7ac23          	sw	a4,312(a5)
        printString("buffer[");
    80002b1c:	0000d517          	auipc	a0,0xd
    80002b20:	6c450513          	addi	a0,a0,1732 # 800101e0 <CONSOLE_STATUS+0x1d0>
    80002b24:	00005097          	auipc	ra,0x5
    80002b28:	b88080e7          	jalr	-1144(ra) # 800076ac <_Z11printStringPKc>
        printInt(writeIndex);
    80002b2c:	00000613          	li	a2,0
    80002b30:	00a00593          	li	a1,10
    80002b34:	1304a503          	lw	a0,304(s1)
    80002b38:	00005097          	auipc	ra,0x5
    80002b3c:	d24080e7          	jalr	-732(ra) # 8000785c <_Z8printIntiii>
        printString("] - producer id = ");
    80002b40:	0000d517          	auipc	a0,0xd
    80002b44:	6a850513          	addi	a0,a0,1704 # 800101e8 <CONSOLE_STATUS+0x1d8>
    80002b48:	00005097          	auipc	ra,0x5
    80002b4c:	b64080e7          	jalr	-1180(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80002b50:	00000613          	li	a2,0
    80002b54:	00a00593          	li	a1,10
    80002b58:	00098513          	mv	a0,s3
    80002b5c:	00005097          	auipc	ra,0x5
    80002b60:	d00080e7          	jalr	-768(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80002b64:	0000e517          	auipc	a0,0xe
    80002b68:	e7c50513          	addi	a0,a0,-388 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80002b6c:	00005097          	auipc	ra,0x5
    80002b70:	b40080e7          	jalr	-1216(ra) # 800076ac <_Z11printStringPKc>
        writeIndex = (writeIndex+1)%CAPACITY;
    80002b74:	1304a783          	lw	a5,304(s1)
    80002b78:	0017879b          	addiw	a5,a5,1
    80002b7c:	00a00713          	li	a4,10
    80002b80:	02e7e7bb          	remw	a5,a5,a4
    80002b84:	12f4a823          	sw	a5,304(s1)
        for(int i=0;i<M;i++){
    80002b88:	00000493          	li	s1,0
    80002b8c:	f49ff06f          	j	80002ad4 <_ZN3TCB8producerEi+0x74>
}
    80002b90:	02813083          	ld	ra,40(sp)
    80002b94:	02013403          	ld	s0,32(sp)
    80002b98:	01813483          	ld	s1,24(sp)
    80002b9c:	01013903          	ld	s2,16(sp)
    80002ba0:	00813983          	ld	s3,8(sp)
    80002ba4:	03010113          	addi	sp,sp,48
    80002ba8:	00008067          	ret

0000000080002bac <_ZN3TCB8consumerEi>:
void TCB::consumer(int id) {
    80002bac:	fc010113          	addi	sp,sp,-64
    80002bb0:	02113c23          	sd	ra,56(sp)
    80002bb4:	02813823          	sd	s0,48(sp)
    80002bb8:	02913423          	sd	s1,40(sp)
    80002bbc:	03213023          	sd	s2,32(sp)
    80002bc0:	01313c23          	sd	s3,24(sp)
    80002bc4:	01413823          	sd	s4,16(sp)
    80002bc8:	01513423          	sd	s5,8(sp)
    80002bcc:	01613023          	sd	s6,0(sp)
    80002bd0:	04010413          	addi	s0,sp,64
    80002bd4:	00058a93          	mv	s5,a1
    if(!prodConsum){
    80002bd8:	00013797          	auipc	a5,0x13
    80002bdc:	f807c783          	lbu	a5,-128(a5) # 80015b58 <_ZN3TCB10prodConsumE>
    80002be0:	00078863          	beqz	a5,80002bf0 <_ZN3TCB8consumerEi+0x44>
void TCB::consumer(int id) {
    80002be4:	00000a13          	li	s4,0
    80002be8:	00000493          	li	s1,0
    80002bec:	0700006f          	j	80002c5c <_ZN3TCB8consumerEi+0xb0>
        setAtomicBroadcast();
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	d94080e7          	jalr	-620(ra) # 80002984 <_ZN3TCB18setAtomicBroadcastEv>
        prodConsum=true;
    80002bf8:	00100793          	li	a5,1
    80002bfc:	00013717          	auipc	a4,0x13
    80002c00:	f4f70e23          	sb	a5,-164(a4) # 80015b58 <_ZN3TCB10prodConsumE>
    80002c04:	fe1ff06f          	j	80002be4 <_ZN3TCB8consumerEi+0x38>
            consumerCnt[readIndex]=0;
    80002c08:	00013717          	auipc	a4,0x13
    80002c0c:	e2870713          	addi	a4,a4,-472 # 80015a30 <_ZN3TCB10ListBarierE>
    80002c10:	16092023          	sw	zero,352(s2)
            emptyy->signal();
    80002c14:	09073503          	ld	a0,144(a4)
    80002c18:	00002097          	auipc	ra,0x2
    80002c1c:	2b0080e7          	jalr	688(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
            thread_dispatch();
    80002c20:	ffffe097          	auipc	ra,0xffffe
    80002c24:	738080e7          	jalr	1848(ra) # 80001358 <_Z15thread_dispatchv>
        mutexC[readIndex]->signal();
    80002c28:	00349713          	slli	a4,s1,0x3
    80002c2c:	00013797          	auipc	a5,0x13
    80002c30:	e0478793          	addi	a5,a5,-508 # 80015a30 <_ZN3TCB10ListBarierE>
    80002c34:	00e787b3          	add	a5,a5,a4
    80002c38:	0d87b503          	ld	a0,216(a5)
    80002c3c:	00002097          	auipc	ra,0x2
    80002c40:	28c080e7          	jalr	652(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
        thread_dispatch();
    80002c44:	ffffe097          	auipc	ra,0xffffe
    80002c48:	714080e7          	jalr	1812(ra) # 80001358 <_Z15thread_dispatchv>
        readIndex=(readIndex+1)%CAPACITY;
    80002c4c:	0014849b          	addiw	s1,s1,1
    80002c50:	00a00793          	li	a5,10
    80002c54:	02f4e4bb          	remw	s1,s1,a5
    for(int k=0;k<10;k++){
    80002c58:	001a0a1b          	addiw	s4,s4,1
    80002c5c:	00900793          	li	a5,9
    80002c60:	0b47ca63          	blt	a5,s4,80002d14 <_ZN3TCB8consumerEi+0x168>
        full[id]->wait();
    80002c64:	00013997          	auipc	s3,0x13
    80002c68:	dcc98993          	addi	s3,s3,-564 # 80015a30 <_ZN3TCB10ListBarierE>
    80002c6c:	003a9793          	slli	a5,s5,0x3
    80002c70:	00f987b3          	add	a5,s3,a5
    80002c74:	0987b503          	ld	a0,152(a5)
    80002c78:	00002097          	auipc	ra,0x2
    80002c7c:	198080e7          	jalr	408(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
        newI=buffer[readIndex];
    80002c80:	00249913          	slli	s2,s1,0x2
    80002c84:	01298933          	add	s2,s3,s2
    80002c88:	13892b03          	lw	s6,312(s2)
        mutexC[readIndex]->wait();
    80002c8c:	00349793          	slli	a5,s1,0x3
    80002c90:	00f989b3          	add	s3,s3,a5
    80002c94:	0d89b503          	ld	a0,216(s3)
    80002c98:	00002097          	auipc	ra,0x2
    80002c9c:	178080e7          	jalr	376(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
        consumerCnt[readIndex]++;
    80002ca0:	16092783          	lw	a5,352(s2)
    80002ca4:	0017879b          	addiw	a5,a5,1
    80002ca8:	16f92023          	sw	a5,352(s2)
        printString("New item consumed: ");
    80002cac:	0000d517          	auipc	a0,0xd
    80002cb0:	55450513          	addi	a0,a0,1364 # 80010200 <CONSOLE_STATUS+0x1f0>
    80002cb4:	00005097          	auipc	ra,0x5
    80002cb8:	9f8080e7          	jalr	-1544(ra) # 800076ac <_Z11printStringPKc>
        printInt(newI);
    80002cbc:	00000613          	li	a2,0
    80002cc0:	00a00593          	li	a1,10
    80002cc4:	000b0513          	mv	a0,s6
    80002cc8:	00005097          	auipc	ra,0x5
    80002ccc:	b94080e7          	jalr	-1132(ra) # 8000785c <_Z8printIntiii>
        printString(". Nit id = ");
    80002cd0:	0000d517          	auipc	a0,0xd
    80002cd4:	54850513          	addi	a0,a0,1352 # 80010218 <CONSOLE_STATUS+0x208>
    80002cd8:	00005097          	auipc	ra,0x5
    80002cdc:	9d4080e7          	jalr	-1580(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80002ce0:	00000613          	li	a2,0
    80002ce4:	00a00593          	li	a1,10
    80002ce8:	000a8513          	mv	a0,s5
    80002cec:	00005097          	auipc	ra,0x5
    80002cf0:	b70080e7          	jalr	-1168(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80002cf4:	0000e517          	auipc	a0,0xe
    80002cf8:	cec50513          	addi	a0,a0,-788 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80002cfc:	00005097          	auipc	ra,0x5
    80002d00:	9b0080e7          	jalr	-1616(ra) # 800076ac <_Z11printStringPKc>
        if(consumerCnt[readIndex]==M){
    80002d04:	16092703          	lw	a4,352(s2)
    80002d08:	00800793          	li	a5,8
    80002d0c:	f0f71ee3          	bne	a4,a5,80002c28 <_ZN3TCB8consumerEi+0x7c>
    80002d10:	ef9ff06f          	j	80002c08 <_ZN3TCB8consumerEi+0x5c>
}
    80002d14:	03813083          	ld	ra,56(sp)
    80002d18:	03013403          	ld	s0,48(sp)
    80002d1c:	02813483          	ld	s1,40(sp)
    80002d20:	02013903          	ld	s2,32(sp)
    80002d24:	01813983          	ld	s3,24(sp)
    80002d28:	01013a03          	ld	s4,16(sp)
    80002d2c:	00813a83          	ld	s5,8(sp)
    80002d30:	00013b03          	ld	s6,0(sp)
    80002d34:	04010113          	addi	sp,sp,64
    80002d38:	00008067          	ret

0000000080002d3c <_ZN3TCB7barrierEjPP8MoleculePKc>:
void TCB::barrier(unsigned int id, Molecule** molekul,const char* element) {
    80002d3c:	fd010113          	addi	sp,sp,-48
    80002d40:	02113423          	sd	ra,40(sp)
    80002d44:	02813023          	sd	s0,32(sp)
    80002d48:	00913c23          	sd	s1,24(sp)
    80002d4c:	01213823          	sd	s2,16(sp)
    80002d50:	01313423          	sd	s3,8(sp)
    80002d54:	01413023          	sd	s4,0(sp)
    80002d58:	03010413          	addi	s0,sp,48
    80002d5c:	00050a13          	mv	s4,a0
    80002d60:	00058913          	mv	s2,a1
    80002d64:	00060993          	mv	s3,a2
    door1->wait();
    80002d68:	00013497          	auipc	s1,0x13
    80002d6c:	cc848493          	addi	s1,s1,-824 # 80015a30 <_ZN3TCB10ListBarierE>
    80002d70:	1884b503          	ld	a0,392(s1)
    80002d74:	00002097          	auipc	ra,0x2
    80002d78:	09c080e7          	jalr	156(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    molecule->ids[count] = id;
    80002d7c:	1904b783          	ld	a5,400(s1)
    80002d80:	0007b783          	ld	a5,0(a5)
    80002d84:	1984a703          	lw	a4,408(s1)
    80002d88:	00271713          	slli	a4,a4,0x2
    80002d8c:	00e787b3          	add	a5,a5,a4
    80002d90:	0147a023          	sw	s4,0(a5)
    molecule->type[count] = element;
    80002d94:	1904b783          	ld	a5,400(s1)
    80002d98:	0087b783          	ld	a5,8(a5)
    80002d9c:	1984a703          	lw	a4,408(s1)
    80002da0:	00371713          	slli	a4,a4,0x3
    80002da4:	00e787b3          	add	a5,a5,a4
    80002da8:	0137b023          	sd	s3,0(a5)
    count++;
    80002dac:	1984a783          	lw	a5,408(s1)
    80002db0:	0017879b          	addiw	a5,a5,1
    80002db4:	0007871b          	sext.w	a4,a5
    80002db8:	18f4ac23          	sw	a5,408(s1)
    if (count == 3) {
    80002dbc:	00300793          	li	a5,3
    80002dc0:	08f70a63          	beq	a4,a5,80002e54 <_ZN3TCB7barrierEjPP8MoleculePKc+0x118>
        door1->signal();
    80002dc4:	00013517          	auipc	a0,0x13
    80002dc8:	df453503          	ld	a0,-524(a0) # 80015bb8 <_ZN3TCB5door1E>
    80002dcc:	00002097          	auipc	ra,0x2
    80002dd0:	0fc080e7          	jalr	252(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    door2->wait();
    80002dd4:	00013497          	auipc	s1,0x13
    80002dd8:	c5c48493          	addi	s1,s1,-932 # 80015a30 <_ZN3TCB10ListBarierE>
    80002ddc:	1a04b503          	ld	a0,416(s1)
    80002de0:	00002097          	auipc	ra,0x2
    80002de4:	030080e7          	jalr	48(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    *molekul = molecule;
    80002de8:	1904b783          	ld	a5,400(s1)
    80002dec:	00f93023          	sd	a5,0(s2)
    count--;
    80002df0:	1984a783          	lw	a5,408(s1)
    80002df4:	fff7879b          	addiw	a5,a5,-1
    80002df8:	0007871b          	sext.w	a4,a5
    80002dfc:	18f4ac23          	sw	a5,408(s1)
    if (count == 0) {
    80002e00:	06071463          	bnez	a4,80002e68 <_ZN3TCB7barrierEjPP8MoleculePKc+0x12c>
        hydroSem->signal();
    80002e04:	1a84b503          	ld	a0,424(s1)
    80002e08:	00002097          	auipc	ra,0x2
    80002e0c:	0c0080e7          	jalr	192(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
        oxySem->signal();
    80002e10:	1b04b503          	ld	a0,432(s1)
    80002e14:	00002097          	auipc	ra,0x2
    80002e18:	0b4080e7          	jalr	180(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
        hydroSem->signal();
    80002e1c:	1a84b503          	ld	a0,424(s1)
    80002e20:	00002097          	auipc	ra,0x2
    80002e24:	0a8080e7          	jalr	168(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
        door1->signal();
    80002e28:	1884b503          	ld	a0,392(s1)
    80002e2c:	00002097          	auipc	ra,0x2
    80002e30:	09c080e7          	jalr	156(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    80002e34:	02813083          	ld	ra,40(sp)
    80002e38:	02013403          	ld	s0,32(sp)
    80002e3c:	01813483          	ld	s1,24(sp)
    80002e40:	01013903          	ld	s2,16(sp)
    80002e44:	00813983          	ld	s3,8(sp)
    80002e48:	00013a03          	ld	s4,0(sp)
    80002e4c:	03010113          	addi	sp,sp,48
    80002e50:	00008067          	ret
        door2->signal();
    80002e54:	00013517          	auipc	a0,0x13
    80002e58:	d7c53503          	ld	a0,-644(a0) # 80015bd0 <_ZN3TCB5door2E>
    80002e5c:	00002097          	auipc	ra,0x2
    80002e60:	06c080e7          	jalr	108(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    80002e64:	f71ff06f          	j	80002dd4 <_ZN3TCB7barrierEjPP8MoleculePKc+0x98>
        door2->signal();
    80002e68:	00013517          	auipc	a0,0x13
    80002e6c:	d6853503          	ld	a0,-664(a0) # 80015bd0 <_ZN3TCB5door2E>
    80002e70:	00002097          	auipc	ra,0x2
    80002e74:	058080e7          	jalr	88(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    80002e78:	fbdff06f          	j	80002e34 <_ZN3TCB7barrierEjPP8MoleculePKc+0xf8>

0000000080002e7c <_ZN3TCB10setAtomH20Ev>:
void TCB::setAtomH20() {
    80002e7c:	fe010113          	addi	sp,sp,-32
    80002e80:	00113c23          	sd	ra,24(sp)
    80002e84:	00813823          	sd	s0,16(sp)
    80002e88:	00913423          	sd	s1,8(sp)
    80002e8c:	01213023          	sd	s2,0(sp)
    80002e90:	02010413          	addi	s0,sp,32
        return memoryAllocator::mem_alloc(size);
    80002e94:	01800513          	li	a0,24
    80002e98:	00002097          	auipc	ra,0x2
    80002e9c:	afc080e7          	jalr	-1284(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80002ea0:	00050023          	sb	zero,0(a0)
    80002ea4:	00200793          	li	a5,2
    80002ea8:	00f52223          	sw	a5,4(a0)
    80002eac:	00053423          	sd	zero,8(a0)
    80002eb0:	00053823          	sd	zero,16(a0)
    hydroSem = new Semaphore_k(2);
    80002eb4:	00013497          	auipc	s1,0x13
    80002eb8:	b7c48493          	addi	s1,s1,-1156 # 80015a30 <_ZN3TCB10ListBarierE>
    80002ebc:	1aa4b423          	sd	a0,424(s1)
        return memoryAllocator::mem_alloc(size);
    80002ec0:	01800513          	li	a0,24
    80002ec4:	00002097          	auipc	ra,0x2
    80002ec8:	ad0080e7          	jalr	-1328(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80002ecc:	00050023          	sb	zero,0(a0)
    80002ed0:	00100913          	li	s2,1
    80002ed4:	01252223          	sw	s2,4(a0)
    80002ed8:	00053423          	sd	zero,8(a0)
    80002edc:	00053823          	sd	zero,16(a0)
    oxySem = new Semaphore_k(1);
    80002ee0:	1aa4b823          	sd	a0,432(s1)
        return memoryAllocator::mem_alloc(size);
    80002ee4:	01800513          	li	a0,24
    80002ee8:	00002097          	auipc	ra,0x2
    80002eec:	aac080e7          	jalr	-1364(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80002ef0:	00050023          	sb	zero,0(a0)
    80002ef4:	01252223          	sw	s2,4(a0)
    80002ef8:	00053423          	sd	zero,8(a0)
    80002efc:	00053823          	sd	zero,16(a0)
    door1 = new Semaphore_k(1);
    80002f00:	18a4b423          	sd	a0,392(s1)
        return memoryAllocator::mem_alloc(size);
    80002f04:	01800513          	li	a0,24
    80002f08:	00002097          	auipc	ra,0x2
    80002f0c:	a8c080e7          	jalr	-1396(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80002f10:	00050023          	sb	zero,0(a0)
    80002f14:	00052223          	sw	zero,4(a0)
    80002f18:	00053423          	sd	zero,8(a0)
    80002f1c:	00053823          	sd	zero,16(a0)
    door2 = new Semaphore_k(0);
    80002f20:	1aa4b023          	sd	a0,416(s1)
    molecule = new Molecule;
    80002f24:	01000513          	li	a0,16
    80002f28:	00001097          	auipc	ra,0x1
    80002f2c:	b54080e7          	jalr	-1196(ra) # 80003a7c <_Znwm>
    80002f30:	00050913          	mv	s2,a0
    80002f34:	18a4b823          	sd	a0,400(s1)
    molecule->ids = new int[3];
    80002f38:	00c00513          	li	a0,12
    80002f3c:	00001097          	auipc	ra,0x1
    80002f40:	b68080e7          	jalr	-1176(ra) # 80003aa4 <_Znam>
    80002f44:	00a93023          	sd	a0,0(s2)
    molecule->type = new const char * [3];
    80002f48:	1904b483          	ld	s1,400(s1)
    80002f4c:	01800513          	li	a0,24
    80002f50:	00001097          	auipc	ra,0x1
    80002f54:	b54080e7          	jalr	-1196(ra) # 80003aa4 <_Znam>
    80002f58:	00a4b423          	sd	a0,8(s1)
}
    80002f5c:	01813083          	ld	ra,24(sp)
    80002f60:	01013403          	ld	s0,16(sp)
    80002f64:	00813483          	ld	s1,8(sp)
    80002f68:	00013903          	ld	s2,0(sp)
    80002f6c:	02010113          	addi	sp,sp,32
    80002f70:	00008067          	ret

0000000080002f74 <_ZN3TCB6oxygenEj>:
void TCB::oxygen(unsigned int id) {
    80002f74:	fd010113          	addi	sp,sp,-48
    80002f78:	02113423          	sd	ra,40(sp)
    80002f7c:	02813023          	sd	s0,32(sp)
    80002f80:	00913c23          	sd	s1,24(sp)
    80002f84:	03010413          	addi	s0,sp,48
    80002f88:	00050493          	mv	s1,a0
    if(!fsH20){
    80002f8c:	00013797          	auipc	a5,0x13
    80002f90:	c5c7c783          	lbu	a5,-932(a5) # 80015be8 <_ZN3TCB5fsH20E>
    80002f94:	14078063          	beqz	a5,800030d4 <_ZN3TCB6oxygenEj+0x160>
    oxySem->wait();
    80002f98:	00013517          	auipc	a0,0x13
    80002f9c:	c4853503          	ld	a0,-952(a0) # 80015be0 <_ZN3TCB6oxySemE>
    80002fa0:	00002097          	auipc	ra,0x2
    80002fa4:	e70080e7          	jalr	-400(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    auto * molekul= new Molecule ;
    80002fa8:	01000513          	li	a0,16
    80002fac:	00001097          	auipc	ra,0x1
    80002fb0:	ad0080e7          	jalr	-1328(ra) # 80003a7c <_Znwm>
    80002fb4:	fca43c23          	sd	a0,-40(s0)
    barrier(id,&molekul,"O");
    80002fb8:	0000d617          	auipc	a2,0xd
    80002fbc:	27060613          	addi	a2,a2,624 # 80010228 <CONSOLE_STATUS+0x218>
    80002fc0:	fd840593          	addi	a1,s0,-40
    80002fc4:	00048513          	mv	a0,s1
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	d74080e7          	jalr	-652(ra) # 80002d3c <_ZN3TCB7barrierEjPP8MoleculePKc>
    printInt(molekul->ids[0]);
    80002fd0:	fd843783          	ld	a5,-40(s0)
    80002fd4:	0007b783          	ld	a5,0(a5)
    80002fd8:	00000613          	li	a2,0
    80002fdc:	00a00593          	li	a1,10
    80002fe0:	0007a503          	lw	a0,0(a5)
    80002fe4:	00005097          	auipc	ra,0x5
    80002fe8:	878080e7          	jalr	-1928(ra) # 8000785c <_Z8printIntiii>
    printString("-");
    80002fec:	0000d517          	auipc	a0,0xd
    80002ff0:	24450513          	addi	a0,a0,580 # 80010230 <CONSOLE_STATUS+0x220>
    80002ff4:	00004097          	auipc	ra,0x4
    80002ff8:	6b8080e7          	jalr	1720(ra) # 800076ac <_Z11printStringPKc>
    printInt(molekul->ids[1]);
    80002ffc:	fd843783          	ld	a5,-40(s0)
    80003000:	0007b783          	ld	a5,0(a5)
    80003004:	00000613          	li	a2,0
    80003008:	00a00593          	li	a1,10
    8000300c:	0047a503          	lw	a0,4(a5)
    80003010:	00005097          	auipc	ra,0x5
    80003014:	84c080e7          	jalr	-1972(ra) # 8000785c <_Z8printIntiii>
    printString("-");
    80003018:	0000d517          	auipc	a0,0xd
    8000301c:	21850513          	addi	a0,a0,536 # 80010230 <CONSOLE_STATUS+0x220>
    80003020:	00004097          	auipc	ra,0x4
    80003024:	68c080e7          	jalr	1676(ra) # 800076ac <_Z11printStringPKc>
    printInt(molekul->ids[2]);
    80003028:	fd843783          	ld	a5,-40(s0)
    8000302c:	0007b783          	ld	a5,0(a5)
    80003030:	00000613          	li	a2,0
    80003034:	00a00593          	li	a1,10
    80003038:	0087a503          	lw	a0,8(a5)
    8000303c:	00005097          	auipc	ra,0x5
    80003040:	820080e7          	jalr	-2016(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    80003044:	0000e517          	auipc	a0,0xe
    80003048:	99c50513          	addi	a0,a0,-1636 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000304c:	00004097          	auipc	ra,0x4
    80003050:	660080e7          	jalr	1632(ra) # 800076ac <_Z11printStringPKc>
    printString(molekul->type[0]);
    80003054:	fd843783          	ld	a5,-40(s0)
    80003058:	0087b783          	ld	a5,8(a5)
    8000305c:	0007b503          	ld	a0,0(a5)
    80003060:	00004097          	auipc	ra,0x4
    80003064:	64c080e7          	jalr	1612(ra) # 800076ac <_Z11printStringPKc>
    printString("-");
    80003068:	0000d517          	auipc	a0,0xd
    8000306c:	1c850513          	addi	a0,a0,456 # 80010230 <CONSOLE_STATUS+0x220>
    80003070:	00004097          	auipc	ra,0x4
    80003074:	63c080e7          	jalr	1596(ra) # 800076ac <_Z11printStringPKc>
    printString(molekul->type[1]);
    80003078:	fd843783          	ld	a5,-40(s0)
    8000307c:	0087b783          	ld	a5,8(a5)
    80003080:	0087b503          	ld	a0,8(a5)
    80003084:	00004097          	auipc	ra,0x4
    80003088:	628080e7          	jalr	1576(ra) # 800076ac <_Z11printStringPKc>
    printString("-");
    8000308c:	0000d517          	auipc	a0,0xd
    80003090:	1a450513          	addi	a0,a0,420 # 80010230 <CONSOLE_STATUS+0x220>
    80003094:	00004097          	auipc	ra,0x4
    80003098:	618080e7          	jalr	1560(ra) # 800076ac <_Z11printStringPKc>
    printString(molekul->type[2]);
    8000309c:	fd843783          	ld	a5,-40(s0)
    800030a0:	0087b783          	ld	a5,8(a5)
    800030a4:	0107b503          	ld	a0,16(a5)
    800030a8:	00004097          	auipc	ra,0x4
    800030ac:	604080e7          	jalr	1540(ra) # 800076ac <_Z11printStringPKc>
    printString("\n");
    800030b0:	0000e517          	auipc	a0,0xe
    800030b4:	93050513          	addi	a0,a0,-1744 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800030b8:	00004097          	auipc	ra,0x4
    800030bc:	5f4080e7          	jalr	1524(ra) # 800076ac <_Z11printStringPKc>
}
    800030c0:	02813083          	ld	ra,40(sp)
    800030c4:	02013403          	ld	s0,32(sp)
    800030c8:	01813483          	ld	s1,24(sp)
    800030cc:	03010113          	addi	sp,sp,48
    800030d0:	00008067          	ret
        setAtomH20();
    800030d4:	00000097          	auipc	ra,0x0
    800030d8:	da8080e7          	jalr	-600(ra) # 80002e7c <_ZN3TCB10setAtomH20Ev>
        fsH20=true;
    800030dc:	00100793          	li	a5,1
    800030e0:	00013717          	auipc	a4,0x13
    800030e4:	b0f70423          	sb	a5,-1272(a4) # 80015be8 <_ZN3TCB5fsH20E>
    800030e8:	eb1ff06f          	j	80002f98 <_ZN3TCB6oxygenEj+0x24>

00000000800030ec <_ZN3TCB8hydrogenEj>:
void TCB::hydrogen(unsigned int id) {
    800030ec:	fd010113          	addi	sp,sp,-48
    800030f0:	02113423          	sd	ra,40(sp)
    800030f4:	02813023          	sd	s0,32(sp)
    800030f8:	00913c23          	sd	s1,24(sp)
    800030fc:	03010413          	addi	s0,sp,48
    80003100:	00050493          	mv	s1,a0
    if(!fsH20){
    80003104:	00013797          	auipc	a5,0x13
    80003108:	ae47c783          	lbu	a5,-1308(a5) # 80015be8 <_ZN3TCB5fsH20E>
    8000310c:	14078063          	beqz	a5,8000324c <_ZN3TCB8hydrogenEj+0x160>
    hydroSem->wait();
    80003110:	00013517          	auipc	a0,0x13
    80003114:	ac853503          	ld	a0,-1336(a0) # 80015bd8 <_ZN3TCB8hydroSemE>
    80003118:	00002097          	auipc	ra,0x2
    8000311c:	cf8080e7          	jalr	-776(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    auto * molekul= new Molecule ;
    80003120:	01000513          	li	a0,16
    80003124:	00001097          	auipc	ra,0x1
    80003128:	958080e7          	jalr	-1704(ra) # 80003a7c <_Znwm>
    8000312c:	fca43c23          	sd	a0,-40(s0)
    barrier(id,&molekul,"H");
    80003130:	0000d617          	auipc	a2,0xd
    80003134:	10860613          	addi	a2,a2,264 # 80010238 <CONSOLE_STATUS+0x228>
    80003138:	fd840593          	addi	a1,s0,-40
    8000313c:	00048513          	mv	a0,s1
    80003140:	00000097          	auipc	ra,0x0
    80003144:	bfc080e7          	jalr	-1028(ra) # 80002d3c <_ZN3TCB7barrierEjPP8MoleculePKc>
    printInt(molekul->ids[0]);
    80003148:	fd843783          	ld	a5,-40(s0)
    8000314c:	0007b783          	ld	a5,0(a5)
    80003150:	00000613          	li	a2,0
    80003154:	00a00593          	li	a1,10
    80003158:	0007a503          	lw	a0,0(a5)
    8000315c:	00004097          	auipc	ra,0x4
    80003160:	700080e7          	jalr	1792(ra) # 8000785c <_Z8printIntiii>
    printString("-");
    80003164:	0000d517          	auipc	a0,0xd
    80003168:	0cc50513          	addi	a0,a0,204 # 80010230 <CONSOLE_STATUS+0x220>
    8000316c:	00004097          	auipc	ra,0x4
    80003170:	540080e7          	jalr	1344(ra) # 800076ac <_Z11printStringPKc>
    printInt(molekul->ids[1]);
    80003174:	fd843783          	ld	a5,-40(s0)
    80003178:	0007b783          	ld	a5,0(a5)
    8000317c:	00000613          	li	a2,0
    80003180:	00a00593          	li	a1,10
    80003184:	0047a503          	lw	a0,4(a5)
    80003188:	00004097          	auipc	ra,0x4
    8000318c:	6d4080e7          	jalr	1748(ra) # 8000785c <_Z8printIntiii>
    printString("-");
    80003190:	0000d517          	auipc	a0,0xd
    80003194:	0a050513          	addi	a0,a0,160 # 80010230 <CONSOLE_STATUS+0x220>
    80003198:	00004097          	auipc	ra,0x4
    8000319c:	514080e7          	jalr	1300(ra) # 800076ac <_Z11printStringPKc>
    printInt(molekul->ids[2]);
    800031a0:	fd843783          	ld	a5,-40(s0)
    800031a4:	0007b783          	ld	a5,0(a5)
    800031a8:	00000613          	li	a2,0
    800031ac:	00a00593          	li	a1,10
    800031b0:	0087a503          	lw	a0,8(a5)
    800031b4:	00004097          	auipc	ra,0x4
    800031b8:	6a8080e7          	jalr	1704(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    800031bc:	0000e517          	auipc	a0,0xe
    800031c0:	82450513          	addi	a0,a0,-2012 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800031c4:	00004097          	auipc	ra,0x4
    800031c8:	4e8080e7          	jalr	1256(ra) # 800076ac <_Z11printStringPKc>
    printString(molekul->type[0]);
    800031cc:	fd843783          	ld	a5,-40(s0)
    800031d0:	0087b783          	ld	a5,8(a5)
    800031d4:	0007b503          	ld	a0,0(a5)
    800031d8:	00004097          	auipc	ra,0x4
    800031dc:	4d4080e7          	jalr	1236(ra) # 800076ac <_Z11printStringPKc>
    printString("-");
    800031e0:	0000d517          	auipc	a0,0xd
    800031e4:	05050513          	addi	a0,a0,80 # 80010230 <CONSOLE_STATUS+0x220>
    800031e8:	00004097          	auipc	ra,0x4
    800031ec:	4c4080e7          	jalr	1220(ra) # 800076ac <_Z11printStringPKc>
    printString(molekul->type[1]);
    800031f0:	fd843783          	ld	a5,-40(s0)
    800031f4:	0087b783          	ld	a5,8(a5)
    800031f8:	0087b503          	ld	a0,8(a5)
    800031fc:	00004097          	auipc	ra,0x4
    80003200:	4b0080e7          	jalr	1200(ra) # 800076ac <_Z11printStringPKc>
    printString("-");
    80003204:	0000d517          	auipc	a0,0xd
    80003208:	02c50513          	addi	a0,a0,44 # 80010230 <CONSOLE_STATUS+0x220>
    8000320c:	00004097          	auipc	ra,0x4
    80003210:	4a0080e7          	jalr	1184(ra) # 800076ac <_Z11printStringPKc>
    printString(molekul->type[2]);
    80003214:	fd843783          	ld	a5,-40(s0)
    80003218:	0087b783          	ld	a5,8(a5)
    8000321c:	0107b503          	ld	a0,16(a5)
    80003220:	00004097          	auipc	ra,0x4
    80003224:	48c080e7          	jalr	1164(ra) # 800076ac <_Z11printStringPKc>
    printString("\n");
    80003228:	0000d517          	auipc	a0,0xd
    8000322c:	7b850513          	addi	a0,a0,1976 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80003230:	00004097          	auipc	ra,0x4
    80003234:	47c080e7          	jalr	1148(ra) # 800076ac <_Z11printStringPKc>
}
    80003238:	02813083          	ld	ra,40(sp)
    8000323c:	02013403          	ld	s0,32(sp)
    80003240:	01813483          	ld	s1,24(sp)
    80003244:	03010113          	addi	sp,sp,48
    80003248:	00008067          	ret
        setAtomH20();
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	c30080e7          	jalr	-976(ra) # 80002e7c <_ZN3TCB10setAtomH20Ev>
        fsH20=true;
    80003254:	00100793          	li	a5,1
    80003258:	00013717          	auipc	a4,0x13
    8000325c:	98f70823          	sb	a5,-1648(a4) # 80015be8 <_ZN3TCB5fsH20E>
    80003260:	eb1ff06f          	j	80003110 <_ZN3TCB8hydrogenEj+0x24>

0000000080003264 <_ZN3TCB16setDiningSavagesEv>:
    if(!fsDiningSavage){
    80003264:	00013797          	auipc	a5,0x13
    80003268:	9857c783          	lbu	a5,-1659(a5) # 80015be9 <_ZN3TCB14fsDiningSavageE>
    8000326c:	00078463          	beqz	a5,80003274 <_ZN3TCB16setDiningSavagesEv+0x10>
    80003270:	00008067          	ret
void TCB::setDiningSavages() {
    80003274:	fe010113          	addi	sp,sp,-32
    80003278:	00113c23          	sd	ra,24(sp)
    8000327c:	00813823          	sd	s0,16(sp)
    80003280:	00913423          	sd	s1,8(sp)
    80003284:	02010413          	addi	s0,sp,32
        fsDiningSavage=true;
    80003288:	00012497          	auipc	s1,0x12
    8000328c:	7a848493          	addi	s1,s1,1960 # 80015a30 <_ZN3TCB10ListBarierE>
    80003290:	00100793          	li	a5,1
    80003294:	1af48ca3          	sb	a5,441(s1)
        return memoryAllocator::mem_alloc(size);
    80003298:	01800513          	li	a0,24
    8000329c:	00001097          	auipc	ra,0x1
    800032a0:	6f8080e7          	jalr	1784(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    800032a4:	00050023          	sb	zero,0(a0)
    800032a8:	00100793          	li	a5,1
    800032ac:	00f52223          	sw	a5,4(a0)
    800032b0:	00053423          	sd	zero,8(a0)
    800032b4:	00053823          	sd	zero,16(a0)
        mutex = new Semaphore_k(1);
    800032b8:	1ca4b023          	sd	a0,448(s1)
        return memoryAllocator::mem_alloc(size);
    800032bc:	01800513          	li	a0,24
    800032c0:	00001097          	auipc	ra,0x1
    800032c4:	6d4080e7          	jalr	1748(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    800032c8:	00050023          	sb	zero,0(a0)
    800032cc:	00052223          	sw	zero,4(a0)
    800032d0:	00053423          	sd	zero,8(a0)
    800032d4:	00053823          	sd	zero,16(a0)
        semSavage = new Semaphore_k(0);
    800032d8:	1ca4b423          	sd	a0,456(s1)
        return memoryAllocator::mem_alloc(size);
    800032dc:	01800513          	li	a0,24
    800032e0:	00001097          	auipc	ra,0x1
    800032e4:	6b4080e7          	jalr	1716(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    800032e8:	00050023          	sb	zero,0(a0)
    800032ec:	00052223          	sw	zero,4(a0)
    800032f0:	00053423          	sd	zero,8(a0)
    800032f4:	00053823          	sd	zero,16(a0)
        semCook = new Semaphore_k(0);
    800032f8:	1ca4b823          	sd	a0,464(s1)
}
    800032fc:	01813083          	ld	ra,24(sp)
    80003300:	01013403          	ld	s0,16(sp)
    80003304:	00813483          	ld	s1,8(sp)
    80003308:	02010113          	addi	sp,sp,32
    8000330c:	00008067          	ret

0000000080003310 <_ZN3TCB6savageEi>:
void TCB::savage(int id) {
    80003310:	fe010113          	addi	sp,sp,-32
    80003314:	00113c23          	sd	ra,24(sp)
    80003318:	00813823          	sd	s0,16(sp)
    8000331c:	00913423          	sd	s1,8(sp)
    80003320:	02010413          	addi	s0,sp,32
    setDiningSavages();
    80003324:	00000097          	auipc	ra,0x0
    80003328:	f40080e7          	jalr	-192(ra) # 80003264 <_ZN3TCB16setDiningSavagesEv>
    mutex->wait();
    8000332c:	00012497          	auipc	s1,0x12
    80003330:	70448493          	addi	s1,s1,1796 # 80015a30 <_ZN3TCB10ListBarierE>
    80003334:	1c04b503          	ld	a0,448(s1)
    80003338:	00002097          	auipc	ra,0x2
    8000333c:	ad8080e7          	jalr	-1320(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    if(pot==0){
    80003340:	1d84a783          	lw	a5,472(s1)
    80003344:	04078463          	beqz	a5,8000338c <_ZN3TCB6savageEi+0x7c>
    pot--;
    80003348:	00012797          	auipc	a5,0x12
    8000334c:	6e878793          	addi	a5,a5,1768 # 80015a30 <_ZN3TCB10ListBarierE>
    80003350:	1d87a703          	lw	a4,472(a5)
    80003354:	fff7071b          	addiw	a4,a4,-1
    80003358:	1ce7ac23          	sw	a4,472(a5)
    mutex->signal();
    8000335c:	1c07b503          	ld	a0,448(a5)
    80003360:	00002097          	auipc	ra,0x2
    80003364:	b68080e7          	jalr	-1176(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    printString("Div jede\n");
    80003368:	0000d517          	auipc	a0,0xd
    8000336c:	ed850513          	addi	a0,a0,-296 # 80010240 <CONSOLE_STATUS+0x230>
    80003370:	00004097          	auipc	ra,0x4
    80003374:	33c080e7          	jalr	828(ra) # 800076ac <_Z11printStringPKc>
}
    80003378:	01813083          	ld	ra,24(sp)
    8000337c:	01013403          	ld	s0,16(sp)
    80003380:	00813483          	ld	s1,8(sp)
    80003384:	02010113          	addi	sp,sp,32
    80003388:	00008067          	ret
        semCook->signal();
    8000338c:	1d04b503          	ld	a0,464(s1)
    80003390:	00002097          	auipc	ra,0x2
    80003394:	b38080e7          	jalr	-1224(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
        semSavage->wait();
    80003398:	1c84b503          	ld	a0,456(s1)
    8000339c:	00002097          	auipc	ra,0x2
    800033a0:	a74080e7          	jalr	-1420(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    800033a4:	fa5ff06f          	j	80003348 <_ZN3TCB6savageEi+0x38>

00000000800033a8 <_ZN3TCB4cookEv>:
void TCB::cook() {
    800033a8:	fe010113          	addi	sp,sp,-32
    800033ac:	00113c23          	sd	ra,24(sp)
    800033b0:	00813823          	sd	s0,16(sp)
    800033b4:	00913423          	sd	s1,8(sp)
    800033b8:	02010413          	addi	s0,sp,32
    setDiningSavages();
    800033bc:	00000097          	auipc	ra,0x0
    800033c0:	ea8080e7          	jalr	-344(ra) # 80003264 <_ZN3TCB16setDiningSavagesEv>
    semCook->wait();
    800033c4:	00012497          	auipc	s1,0x12
    800033c8:	66c48493          	addi	s1,s1,1644 # 80015a30 <_ZN3TCB10ListBarierE>
    800033cc:	1d04b503          	ld	a0,464(s1)
    800033d0:	00002097          	auipc	ra,0x2
    800033d4:	a40080e7          	jalr	-1472(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Kuvar priprema hranu\n");
    800033d8:	0000d517          	auipc	a0,0xd
    800033dc:	e7850513          	addi	a0,a0,-392 # 80010250 <CONSOLE_STATUS+0x240>
    800033e0:	00004097          	auipc	ra,0x4
    800033e4:	2cc080e7          	jalr	716(ra) # 800076ac <_Z11printStringPKc>
    pot=S;
    800033e8:	03200793          	li	a5,50
    800033ec:	1cf4ac23          	sw	a5,472(s1)
    semSavage->signal();
    800033f0:	1c84b503          	ld	a0,456(s1)
    800033f4:	00002097          	auipc	ra,0x2
    800033f8:	ad4080e7          	jalr	-1324(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    800033fc:	01813083          	ld	ra,24(sp)
    80003400:	01013403          	ld	s0,16(sp)
    80003404:	00813483          	ld	s1,8(sp)
    80003408:	02010113          	addi	sp,sp,32
    8000340c:	00008067          	ret

0000000080003410 <_ZN3TCB21parentHuntForChildrenEj>:
void TCB::parentHuntForChildren(unsigned int id) {
    80003410:	fe010113          	addi	sp,sp,-32
    80003414:	00113c23          	sd	ra,24(sp)
    80003418:	00813823          	sd	s0,16(sp)
    8000341c:	00913423          	sd	s1,8(sp)
    80003420:	01213023          	sd	s2,0(sp)
    80003424:	02010413          	addi	s0,sp,32
    80003428:	00050493          	mv	s1,a0
    parentt->wait();
    8000342c:	00012917          	auipc	s2,0x12
    80003430:	60490913          	addi	s2,s2,1540 # 80015a30 <_ZN3TCB10ListBarierE>
    80003434:	1e093503          	ld	a0,480(s2)
    80003438:	00002097          	auipc	ra,0x2
    8000343c:	9d8080e7          	jalr	-1576(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    mutexParent->wait();
    80003440:	1e893503          	ld	a0,488(s2)
    80003444:	00002097          	auipc	ra,0x2
    80003448:	9cc080e7          	jalr	-1588(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Roditelj lovi za decu - id: ");
    8000344c:	0000d517          	auipc	a0,0xd
    80003450:	e1c50513          	addi	a0,a0,-484 # 80010268 <CONSOLE_STATUS+0x258>
    80003454:	00004097          	auipc	ra,0x4
    80003458:	258080e7          	jalr	600(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    8000345c:	00000613          	li	a2,0
    80003460:	00a00593          	li	a1,10
    80003464:	00048513          	mv	a0,s1
    80003468:	00004097          	auipc	ra,0x4
    8000346c:	3f4080e7          	jalr	1012(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    80003470:	0000d517          	auipc	a0,0xd
    80003474:	57050513          	addi	a0,a0,1392 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80003478:	00004097          	auipc	ra,0x4
    8000347c:	234080e7          	jalr	564(ra) # 800076ac <_Z11printStringPKc>
    for(int i=0;i<10000;i++){
    80003480:	00000493          	li	s1,0
    80003484:	0100006f          	j	80003494 <_ZN3TCB21parentHuntForChildrenEj+0x84>
        thread_dispatch();
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	ed0080e7          	jalr	-304(ra) # 80001358 <_Z15thread_dispatchv>
    for(int i=0;i<10000;i++){
    80003490:	0014849b          	addiw	s1,s1,1
    80003494:	000027b7          	lui	a5,0x2
    80003498:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000349c:	0097ce63          	blt	a5,s1,800034b8 <_ZN3TCB21parentHuntForChildrenEj+0xa8>
        for(int j=0;j<10000;j++);
    800034a0:	00000713          	li	a4,0
    800034a4:	000027b7          	lui	a5,0x2
    800034a8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800034ac:	fce7cee3          	blt	a5,a4,80003488 <_ZN3TCB21parentHuntForChildrenEj+0x78>
    800034b0:	0017071b          	addiw	a4,a4,1
    800034b4:	ff1ff06f          	j	800034a4 <_ZN3TCB21parentHuntForChildrenEj+0x94>
    printString("Roditelj napunio ciniju\n");
    800034b8:	0000d517          	auipc	a0,0xd
    800034bc:	dd050513          	addi	a0,a0,-560 # 80010288 <CONSOLE_STATUS+0x278>
    800034c0:	00004097          	auipc	ra,0x4
    800034c4:	1ec080e7          	jalr	492(ra) # 800076ac <_Z11printStringPKc>
    pot1 = F;
    800034c8:	00012497          	auipc	s1,0x12
    800034cc:	56848493          	addi	s1,s1,1384 # 80015a30 <_ZN3TCB10ListBarierE>
    800034d0:	01800793          	li	a5,24
    800034d4:	1ef4a823          	sw	a5,496(s1)
    mutexParent->signal();
    800034d8:	1e84b503          	ld	a0,488(s1)
    800034dc:	00002097          	auipc	ra,0x2
    800034e0:	9ec080e7          	jalr	-1556(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    mutexChild->signal();
    800034e4:	1f84b503          	ld	a0,504(s1)
    800034e8:	00002097          	auipc	ra,0x2
    800034ec:	9e0080e7          	jalr	-1568(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    800034f0:	01813083          	ld	ra,24(sp)
    800034f4:	01013403          	ld	s0,16(sp)
    800034f8:	00813483          	ld	s1,8(sp)
    800034fc:	00013903          	ld	s2,0(sp)
    80003500:	02010113          	addi	sp,sp,32
    80003504:	00008067          	ret

0000000080003508 <_ZN3TCB23parentForHuntForHimselfEj>:
void TCB::parentForHuntForHimself(unsigned int id) {
    80003508:	fe010113          	addi	sp,sp,-32
    8000350c:	00113c23          	sd	ra,24(sp)
    80003510:	00813823          	sd	s0,16(sp)
    80003514:	00913423          	sd	s1,8(sp)
    80003518:	01213023          	sd	s2,0(sp)
    8000351c:	02010413          	addi	s0,sp,32
    80003520:	00050913          	mv	s2,a0
    mutexParent->wait();
    80003524:	00012517          	auipc	a0,0x12
    80003528:	6f453503          	ld	a0,1780(a0) # 80015c18 <_ZN3TCB11mutexParentE>
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	8e4080e7          	jalr	-1820(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Roditelj lovi za sebe - id: ");
    80003534:	0000d517          	auipc	a0,0xd
    80003538:	d7450513          	addi	a0,a0,-652 # 800102a8 <CONSOLE_STATUS+0x298>
    8000353c:	00004097          	auipc	ra,0x4
    80003540:	170080e7          	jalr	368(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    80003544:	0009091b          	sext.w	s2,s2
    80003548:	00000613          	li	a2,0
    8000354c:	00a00593          	li	a1,10
    80003550:	00090513          	mv	a0,s2
    80003554:	00004097          	auipc	ra,0x4
    80003558:	308080e7          	jalr	776(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    8000355c:	0000d517          	auipc	a0,0xd
    80003560:	48450513          	addi	a0,a0,1156 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80003564:	00004097          	auipc	ra,0x4
    80003568:	148080e7          	jalr	328(ra) # 800076ac <_Z11printStringPKc>
    for(int i=0;i<10000;i++){
    8000356c:	00000493          	li	s1,0
    80003570:	0100006f          	j	80003580 <_ZN3TCB23parentForHuntForHimselfEj+0x78>
        thread_dispatch();
    80003574:	ffffe097          	auipc	ra,0xffffe
    80003578:	de4080e7          	jalr	-540(ra) # 80001358 <_Z15thread_dispatchv>
    for(int i=0;i<10000;i++){
    8000357c:	0014849b          	addiw	s1,s1,1
    80003580:	000027b7          	lui	a5,0x2
    80003584:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003588:	0097ce63          	blt	a5,s1,800035a4 <_ZN3TCB23parentForHuntForHimselfEj+0x9c>
        for(int j=0;j<10000;j++);
    8000358c:	00000713          	li	a4,0
    80003590:	000027b7          	lui	a5,0x2
    80003594:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003598:	fce7cee3          	blt	a5,a4,80003574 <_ZN3TCB23parentForHuntForHimselfEj+0x6c>
    8000359c:	0017071b          	addiw	a4,a4,1
    800035a0:	ff1ff06f          	j	80003590 <_ZN3TCB23parentForHuntForHimselfEj+0x88>
    printString("Roditelj jeo - id: ");
    800035a4:	0000d517          	auipc	a0,0xd
    800035a8:	d2450513          	addi	a0,a0,-732 # 800102c8 <CONSOLE_STATUS+0x2b8>
    800035ac:	00004097          	auipc	ra,0x4
    800035b0:	100080e7          	jalr	256(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    800035b4:	00000613          	li	a2,0
    800035b8:	00a00593          	li	a1,10
    800035bc:	00090513          	mv	a0,s2
    800035c0:	00004097          	auipc	ra,0x4
    800035c4:	29c080e7          	jalr	668(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    800035c8:	0000d517          	auipc	a0,0xd
    800035cc:	41850513          	addi	a0,a0,1048 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800035d0:	00004097          	auipc	ra,0x4
    800035d4:	0dc080e7          	jalr	220(ra) # 800076ac <_Z11printStringPKc>
    mutexParent->signal();
    800035d8:	00012517          	auipc	a0,0x12
    800035dc:	64053503          	ld	a0,1600(a0) # 80015c18 <_ZN3TCB11mutexParentE>
    800035e0:	00002097          	auipc	ra,0x2
    800035e4:	8e8080e7          	jalr	-1816(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    800035e8:	01813083          	ld	ra,24(sp)
    800035ec:	01013403          	ld	s0,16(sp)
    800035f0:	00813483          	ld	s1,8(sp)
    800035f4:	00013903          	ld	s2,0(sp)
    800035f8:	02010113          	addi	sp,sp,32
    800035fc:	00008067          	ret

0000000080003600 <_ZN3TCB14setHungryBirdsEv>:
    if(!setHngryBird){
    80003600:	00012797          	auipc	a5,0x12
    80003604:	6307c783          	lbu	a5,1584(a5) # 80015c30 <_ZN3TCB12setHngryBirdE>
    80003608:	00078463          	beqz	a5,80003610 <_ZN3TCB14setHungryBirdsEv+0x10>
    8000360c:	00008067          	ret
void TCB::setHungryBirds() {
    80003610:	fe010113          	addi	sp,sp,-32
    80003614:	00113c23          	sd	ra,24(sp)
    80003618:	00813823          	sd	s0,16(sp)
    8000361c:	00913423          	sd	s1,8(sp)
    80003620:	01213023          	sd	s2,0(sp)
    80003624:	02010413          	addi	s0,sp,32
        return memoryAllocator::mem_alloc(size);
    80003628:	01800513          	li	a0,24
    8000362c:	00001097          	auipc	ra,0x1
    80003630:	368080e7          	jalr	872(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80003634:	00050023          	sb	zero,0(a0)
    80003638:	00100913          	li	s2,1
    8000363c:	01252223          	sw	s2,4(a0)
    80003640:	00053423          	sd	zero,8(a0)
    80003644:	00053823          	sd	zero,16(a0)
        parentt = new Semaphore_k(1);
    80003648:	00012497          	auipc	s1,0x12
    8000364c:	3e848493          	addi	s1,s1,1000 # 80015a30 <_ZN3TCB10ListBarierE>
    80003650:	1ea4b023          	sd	a0,480(s1)
        return memoryAllocator::mem_alloc(size);
    80003654:	01800513          	li	a0,24
    80003658:	00001097          	auipc	ra,0x1
    8000365c:	33c080e7          	jalr	828(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80003660:	00050023          	sb	zero,0(a0)
    80003664:	01252223          	sw	s2,4(a0)
    80003668:	00053423          	sd	zero,8(a0)
    8000366c:	00053823          	sd	zero,16(a0)
        mutexParent = new Semaphore_k(1);
    80003670:	1ea4b423          	sd	a0,488(s1)
        return memoryAllocator::mem_alloc(size);
    80003674:	01800513          	li	a0,24
    80003678:	00001097          	auipc	ra,0x1
    8000367c:	31c080e7          	jalr	796(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80003680:	00050023          	sb	zero,0(a0)
    80003684:	00052223          	sw	zero,4(a0)
    80003688:	00053423          	sd	zero,8(a0)
    8000368c:	00053823          	sd	zero,16(a0)
        mutexChild = new Semaphore_k(0);
    80003690:	1ea4bc23          	sd	a0,504(s1)
        setHngryBird= true;
    80003694:	21248023          	sb	s2,512(s1)
}
    80003698:	01813083          	ld	ra,24(sp)
    8000369c:	01013403          	ld	s0,16(sp)
    800036a0:	00813483          	ld	s1,8(sp)
    800036a4:	00013903          	ld	s2,0(sp)
    800036a8:	02010113          	addi	sp,sp,32
    800036ac:	00008067          	ret

00000000800036b0 <_ZN3TCB9birdChildEj>:
void TCB::birdChild(unsigned int id) {
    800036b0:	fe010113          	addi	sp,sp,-32
    800036b4:	00113c23          	sd	ra,24(sp)
    800036b8:	00813823          	sd	s0,16(sp)
    800036bc:	00913423          	sd	s1,8(sp)
    800036c0:	01213023          	sd	s2,0(sp)
    800036c4:	02010413          	addi	s0,sp,32
    800036c8:	00050913          	mv	s2,a0
    setHungryBirds();
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	f34080e7          	jalr	-204(ra) # 80003600 <_ZN3TCB14setHungryBirdsEv>
    mutexChild->wait();
    800036d4:	00012497          	auipc	s1,0x12
    800036d8:	35c48493          	addi	s1,s1,860 # 80015a30 <_ZN3TCB10ListBarierE>
    800036dc:	1f84b503          	ld	a0,504(s1)
    800036e0:	00001097          	auipc	ra,0x1
    800036e4:	730080e7          	jalr	1840(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    pot1--;
    800036e8:	1f04a783          	lw	a5,496(s1)
    800036ec:	fff7879b          	addiw	a5,a5,-1
    800036f0:	1ef4a823          	sw	a5,496(s1)
    printString("DETE PTICA JEDE -id: ");
    800036f4:	0000d517          	auipc	a0,0xd
    800036f8:	bec50513          	addi	a0,a0,-1044 # 800102e0 <CONSOLE_STATUS+0x2d0>
    800036fc:	00004097          	auipc	ra,0x4
    80003700:	fb0080e7          	jalr	-80(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    80003704:	00000613          	li	a2,0
    80003708:	00a00593          	li	a1,10
    8000370c:	00090513          	mv	a0,s2
    80003710:	00004097          	auipc	ra,0x4
    80003714:	14c080e7          	jalr	332(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    80003718:	0000d517          	auipc	a0,0xd
    8000371c:	2c850513          	addi	a0,a0,712 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80003720:	00004097          	auipc	ra,0x4
    80003724:	f8c080e7          	jalr	-116(ra) # 800076ac <_Z11printStringPKc>
    if(pot1==0){
    80003728:	1f04a783          	lw	a5,496(s1)
    8000372c:	02079e63          	bnez	a5,80003768 <_ZN3TCB9birdChildEj+0xb8>
        printString("Deca sve izjela - signal roditeljima\n");
    80003730:	0000d517          	auipc	a0,0xd
    80003734:	bc850513          	addi	a0,a0,-1080 # 800102f8 <CONSOLE_STATUS+0x2e8>
    80003738:	00004097          	auipc	ra,0x4
    8000373c:	f74080e7          	jalr	-140(ra) # 800076ac <_Z11printStringPKc>
        parentt->signal();
    80003740:	00012517          	auipc	a0,0x12
    80003744:	4d053503          	ld	a0,1232(a0) # 80015c10 <_ZN3TCB7parenttE>
    80003748:	00001097          	auipc	ra,0x1
    8000374c:	780080e7          	jalr	1920(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    80003750:	01813083          	ld	ra,24(sp)
    80003754:	01013403          	ld	s0,16(sp)
    80003758:	00813483          	ld	s1,8(sp)
    8000375c:	00013903          	ld	s2,0(sp)
    80003760:	02010113          	addi	sp,sp,32
    80003764:	00008067          	ret
        mutexChild->signal();
    80003768:	00012517          	auipc	a0,0x12
    8000376c:	4c053503          	ld	a0,1216(a0) # 80015c28 <_ZN3TCB10mutexChildE>
    80003770:	00001097          	auipc	ra,0x1
    80003774:	758080e7          	jalr	1880(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    80003778:	fd9ff06f          	j	80003750 <_ZN3TCB9birdChildEj+0xa0>

000000008000377c <_ZN3TCB10birdParentEj>:
void TCB::birdParent(unsigned int id) {
    8000377c:	fe010113          	addi	sp,sp,-32
    80003780:	00113c23          	sd	ra,24(sp)
    80003784:	00813823          	sd	s0,16(sp)
    80003788:	00913423          	sd	s1,8(sp)
    8000378c:	02010413          	addi	s0,sp,32
    80003790:	00050493          	mv	s1,a0
    setHungryBirds();
    80003794:	00000097          	auipc	ra,0x0
    80003798:	e6c080e7          	jalr	-404(ra) # 80003600 <_ZN3TCB14setHungryBirdsEv>
    parentHuntForChildren(id);
    8000379c:	00048513          	mv	a0,s1
    800037a0:	00000097          	auipc	ra,0x0
    800037a4:	c70080e7          	jalr	-912(ra) # 80003410 <_ZN3TCB21parentHuntForChildrenEj>
    parentForHuntForHimself(id);
    800037a8:	00048513          	mv	a0,s1
    800037ac:	00000097          	auipc	ra,0x0
    800037b0:	d5c080e7          	jalr	-676(ra) # 80003508 <_ZN3TCB23parentForHuntForHimselfEj>
}
    800037b4:	01813083          	ld	ra,24(sp)
    800037b8:	01013403          	ld	s0,16(sp)
    800037bc:	00813483          	ld	s1,8(sp)
    800037c0:	02010113          	addi	sp,sp,32
    800037c4:	00008067          	ret

00000000800037c8 <_ZN3TCB11setPceleMedEv>:
    if(!fsMedaPcele){
    800037c8:	00012797          	auipc	a5,0x12
    800037cc:	4697c783          	lbu	a5,1129(a5) # 80015c31 <_ZN3TCB11fsMedaPceleE>
    800037d0:	00078463          	beqz	a5,800037d8 <_ZN3TCB11setPceleMedEv+0x10>
    800037d4:	00008067          	ret
void TCB::setPceleMed() {
    800037d8:	fe010113          	addi	sp,sp,-32
    800037dc:	00113c23          	sd	ra,24(sp)
    800037e0:	00813823          	sd	s0,16(sp)
    800037e4:	00913423          	sd	s1,8(sp)
    800037e8:	02010413          	addi	s0,sp,32
        fsMedaPcele=true;
    800037ec:	00012497          	auipc	s1,0x12
    800037f0:	24448493          	addi	s1,s1,580 # 80015a30 <_ZN3TCB10ListBarierE>
    800037f4:	00100793          	li	a5,1
    800037f8:	20f480a3          	sb	a5,513(s1)
        return memoryAllocator::mem_alloc(size);
    800037fc:	01800513          	li	a0,24
    80003800:	00001097          	auipc	ra,0x1
    80003804:	194080e7          	jalr	404(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80003808:	00050023          	sb	zero,0(a0)
    8000380c:	00100793          	li	a5,1
    80003810:	00f52223          	sw	a5,4(a0)
    80003814:	00053423          	sd	zero,8(a0)
    80003818:	00053823          	sd	zero,16(a0)
        mtx=new Semaphore_k(1);
    8000381c:	20a4b423          	sd	a0,520(s1)
        return memoryAllocator::mem_alloc(size);
    80003820:	01800513          	li	a0,24
    80003824:	00001097          	auipc	ra,0x1
    80003828:	170080e7          	jalr	368(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    8000382c:	00050023          	sb	zero,0(a0)
    80003830:	00052223          	sw	zero,4(a0)
    80003834:	00053423          	sd	zero,8(a0)
    80003838:	00053823          	sd	zero,16(a0)
        bear = new Semaphore_k(0);
    8000383c:	20a4b823          	sd	a0,528(s1)
}
    80003840:	01813083          	ld	ra,24(sp)
    80003844:	01013403          	ld	s0,16(sp)
    80003848:	00813483          	ld	s1,8(sp)
    8000384c:	02010113          	addi	sp,sp,32
    80003850:	00008067          	ret

0000000080003854 <_ZN3TCB7honeybeEj>:
void TCB::honeybe(unsigned int id) {
    80003854:	fe010113          	addi	sp,sp,-32
    80003858:	00113c23          	sd	ra,24(sp)
    8000385c:	00813823          	sd	s0,16(sp)
    80003860:	00913423          	sd	s1,8(sp)
    80003864:	01213023          	sd	s2,0(sp)
    80003868:	02010413          	addi	s0,sp,32
    8000386c:	00050913          	mv	s2,a0
    setPceleMed();
    80003870:	00000097          	auipc	ra,0x0
    80003874:	f58080e7          	jalr	-168(ra) # 800037c8 <_ZN3TCB11setPceleMedEv>
    printString("Pcela skuplja med id - ");
    80003878:	0000d517          	auipc	a0,0xd
    8000387c:	aa850513          	addi	a0,a0,-1368 # 80010320 <CONSOLE_STATUS+0x310>
    80003880:	00004097          	auipc	ra,0x4
    80003884:	e2c080e7          	jalr	-468(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    80003888:	0009091b          	sext.w	s2,s2
    8000388c:	00000613          	li	a2,0
    80003890:	00a00593          	li	a1,10
    80003894:	00090513          	mv	a0,s2
    80003898:	00004097          	auipc	ra,0x4
    8000389c:	fc4080e7          	jalr	-60(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    800038a0:	0000d517          	auipc	a0,0xd
    800038a4:	14050513          	addi	a0,a0,320 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800038a8:	00004097          	auipc	ra,0x4
    800038ac:	e04080e7          	jalr	-508(ra) # 800076ac <_Z11printStringPKc>
    for(int i=0;i<1000;i++){
    800038b0:	00000493          	li	s1,0
    800038b4:	0100006f          	j	800038c4 <_ZN3TCB7honeybeEj+0x70>
        thread_dispatch();
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	aa0080e7          	jalr	-1376(ra) # 80001358 <_Z15thread_dispatchv>
    for(int i=0;i<1000;i++){
    800038c0:	0014849b          	addiw	s1,s1,1
    800038c4:	3e700793          	li	a5,999
    800038c8:	0097cc63          	blt	a5,s1,800038e0 <_ZN3TCB7honeybeEj+0x8c>
        for(int j=0;j<1000;j++);
    800038cc:	00000793          	li	a5,0
    800038d0:	3e700713          	li	a4,999
    800038d4:	fef742e3          	blt	a4,a5,800038b8 <_ZN3TCB7honeybeEj+0x64>
    800038d8:	0017879b          	addiw	a5,a5,1
    800038dc:	ff5ff06f          	j	800038d0 <_ZN3TCB7honeybeEj+0x7c>
    mtx->wait();
    800038e0:	00012497          	auipc	s1,0x12
    800038e4:	15048493          	addi	s1,s1,336 # 80015a30 <_ZN3TCB10ListBarierE>
    800038e8:	2084b503          	ld	a0,520(s1)
    800038ec:	00001097          	auipc	ra,0x1
    800038f0:	524080e7          	jalr	1316(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Pcela donela med u kosnicu -id: ");
    800038f4:	0000d517          	auipc	a0,0xd
    800038f8:	a4450513          	addi	a0,a0,-1468 # 80010338 <CONSOLE_STATUS+0x328>
    800038fc:	00004097          	auipc	ra,0x4
    80003900:	db0080e7          	jalr	-592(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    80003904:	00000613          	li	a2,0
    80003908:	00a00593          	li	a1,10
    8000390c:	00090513          	mv	a0,s2
    80003910:	00004097          	auipc	ra,0x4
    80003914:	f4c080e7          	jalr	-180(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    80003918:	0000d517          	auipc	a0,0xd
    8000391c:	0c850513          	addi	a0,a0,200 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80003920:	00004097          	auipc	ra,0x4
    80003924:	d8c080e7          	jalr	-628(ra) # 800076ac <_Z11printStringPKc>
    kosnica++;
    80003928:	2184a783          	lw	a5,536(s1)
    8000392c:	0017879b          	addiw	a5,a5,1
    80003930:	0007871b          	sext.w	a4,a5
    80003934:	20f4ac23          	sw	a5,536(s1)
    if(kosnica==49){
    80003938:	03100793          	li	a5,49
    8000393c:	02f70663          	beq	a4,a5,80003968 <_ZN3TCB7honeybeEj+0x114>
        mtx->signal();
    80003940:	00012517          	auipc	a0,0x12
    80003944:	2f853503          	ld	a0,760(a0) # 80015c38 <_ZN3TCB3mtxE>
    80003948:	00001097          	auipc	ra,0x1
    8000394c:	580080e7          	jalr	1408(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    80003950:	01813083          	ld	ra,24(sp)
    80003954:	01013403          	ld	s0,16(sp)
    80003958:	00813483          	ld	s1,8(sp)
    8000395c:	00013903          	ld	s2,0(sp)
    80003960:	02010113          	addi	sp,sp,32
    80003964:	00008067          	ret
        printString("Pcele napunile kosnicu budi medveda\n");
    80003968:	0000d517          	auipc	a0,0xd
    8000396c:	9f850513          	addi	a0,a0,-1544 # 80010360 <CONSOLE_STATUS+0x350>
    80003970:	00004097          	auipc	ra,0x4
    80003974:	d3c080e7          	jalr	-708(ra) # 800076ac <_Z11printStringPKc>
        bear->signal();
    80003978:	00012517          	auipc	a0,0x12
    8000397c:	2c853503          	ld	a0,712(a0) # 80015c40 <_ZN3TCB4bearE>
    80003980:	00001097          	auipc	ra,0x1
    80003984:	548080e7          	jalr	1352(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
    80003988:	fc9ff06f          	j	80003950 <_ZN3TCB7honeybeEj+0xfc>

000000008000398c <_ZN3TCB4medaEv>:
void TCB::meda() {
    8000398c:	ff010113          	addi	sp,sp,-16
    80003990:	00113423          	sd	ra,8(sp)
    80003994:	00813023          	sd	s0,0(sp)
    80003998:	01010413          	addi	s0,sp,16
    setPceleMed();
    8000399c:	00000097          	auipc	ra,0x0
    800039a0:	e2c080e7          	jalr	-468(ra) # 800037c8 <_ZN3TCB11setPceleMedEv>
    printString("Meda ceka\n");
    800039a4:	0000d517          	auipc	a0,0xd
    800039a8:	9e450513          	addi	a0,a0,-1564 # 80010388 <CONSOLE_STATUS+0x378>
    800039ac:	00004097          	auipc	ra,0x4
    800039b0:	d00080e7          	jalr	-768(ra) # 800076ac <_Z11printStringPKc>
    bear->wait();
    800039b4:	00012517          	auipc	a0,0x12
    800039b8:	28c53503          	ld	a0,652(a0) # 80015c40 <_ZN3TCB4bearE>
    800039bc:	00001097          	auipc	ra,0x1
    800039c0:	454080e7          	jalr	1108(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
    printString("Meda jede med...");
    800039c4:	0000d517          	auipc	a0,0xd
    800039c8:	9d450513          	addi	a0,a0,-1580 # 80010398 <CONSOLE_STATUS+0x388>
    800039cc:	00004097          	auipc	ra,0x4
    800039d0:	ce0080e7          	jalr	-800(ra) # 800076ac <_Z11printStringPKc>
    printString("\n");
    800039d4:	0000d517          	auipc	a0,0xd
    800039d8:	00c50513          	addi	a0,a0,12 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800039dc:	00004097          	auipc	ra,0x4
    800039e0:	cd0080e7          	jalr	-816(ra) # 800076ac <_Z11printStringPKc>
    for(int i=0;i<100000;i++){
    800039e4:	00000693          	li	a3,0
    800039e8:	0080006f          	j	800039f0 <_ZN3TCB4medaEv+0x64>
    800039ec:	0016869b          	addiw	a3,a3,1
    800039f0:	000187b7          	lui	a5,0x18
    800039f4:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    800039f8:	00d7cc63          	blt	a5,a3,80003a10 <_ZN3TCB4medaEv+0x84>
        for(int j=0;j<1000;j++);
    800039fc:	00000793          	li	a5,0
    80003a00:	3e700713          	li	a4,999
    80003a04:	fef744e3          	blt	a4,a5,800039ec <_ZN3TCB4medaEv+0x60>
    80003a08:	0017879b          	addiw	a5,a5,1
    80003a0c:	ff5ff06f          	j	80003a00 <_ZN3TCB4medaEv+0x74>
    printString("Meda sve izjeo signal pcelama\n");
    80003a10:	0000d517          	auipc	a0,0xd
    80003a14:	9a050513          	addi	a0,a0,-1632 # 800103b0 <CONSOLE_STATUS+0x3a0>
    80003a18:	00004097          	auipc	ra,0x4
    80003a1c:	c94080e7          	jalr	-876(ra) # 800076ac <_Z11printStringPKc>
    kosnica=0;
    80003a20:	00012797          	auipc	a5,0x12
    80003a24:	01078793          	addi	a5,a5,16 # 80015a30 <_ZN3TCB10ListBarierE>
    80003a28:	2007ac23          	sw	zero,536(a5)
    mtx->signal();
    80003a2c:	2087b503          	ld	a0,520(a5)
    80003a30:	00001097          	auipc	ra,0x1
    80003a34:	498080e7          	jalr	1176(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
}
    80003a38:	00813083          	ld	ra,8(sp)
    80003a3c:	00013403          	ld	s0,0(sp)
    80003a40:	01010113          	addi	sp,sp,16
    80003a44:	00008067          	ret

0000000080003a48 <_GLOBAL__sub_I__ZN3TCB7waitingE>:
}
    80003a48:	ff010113          	addi	sp,sp,-16
    80003a4c:	00113423          	sd	ra,8(sp)
    80003a50:	00813023          	sd	s0,0(sp)
    80003a54:	01010413          	addi	s0,sp,16
    80003a58:	000105b7          	lui	a1,0x10
    80003a5c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003a60:	00100513          	li	a0,1
    80003a64:	ffffe097          	auipc	ra,0xffffe
    80003a68:	ee0080e7          	jalr	-288(ra) # 80001944 <_Z41__static_initialization_and_destruction_0ii>
    80003a6c:	00813083          	ld	ra,8(sp)
    80003a70:	00013403          	ld	s0,0(sp)
    80003a74:	01010113          	addi	sp,sp,16
    80003a78:	00008067          	ret

0000000080003a7c <_Znwm>:

using size_t = decltype(sizeof(0));


void *operator new(size_t n)
{
    80003a7c:	ff010113          	addi	sp,sp,-16
    80003a80:	00113423          	sd	ra,8(sp)
    80003a84:	00813023          	sd	s0,0(sp)
    80003a88:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80003a8c:	ffffd097          	auipc	ra,0xffffd
    80003a90:	7a8080e7          	jalr	1960(ra) # 80001234 <_Z9mem_allocm>
}
    80003a94:	00813083          	ld	ra,8(sp)
    80003a98:	00013403          	ld	s0,0(sp)
    80003a9c:	01010113          	addi	sp,sp,16
    80003aa0:	00008067          	ret

0000000080003aa4 <_Znam>:

void *operator new[](size_t n)
{
    80003aa4:	ff010113          	addi	sp,sp,-16
    80003aa8:	00113423          	sd	ra,8(sp)
    80003aac:	00813023          	sd	s0,0(sp)
    80003ab0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80003ab4:	ffffd097          	auipc	ra,0xffffd
    80003ab8:	780080e7          	jalr	1920(ra) # 80001234 <_Z9mem_allocm>
}
    80003abc:	00813083          	ld	ra,8(sp)
    80003ac0:	00013403          	ld	s0,0(sp)
    80003ac4:	01010113          	addi	sp,sp,16
    80003ac8:	00008067          	ret

0000000080003acc <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80003acc:	ff010113          	addi	sp,sp,-16
    80003ad0:	00113423          	sd	ra,8(sp)
    80003ad4:	00813023          	sd	s0,0(sp)
    80003ad8:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003adc:	ffffd097          	auipc	ra,0xffffd
    80003ae0:	798080e7          	jalr	1944(ra) # 80001274 <_Z8mem_freePv>
}
    80003ae4:	00813083          	ld	ra,8(sp)
    80003ae8:	00013403          	ld	s0,0(sp)
    80003aec:	01010113          	addi	sp,sp,16
    80003af0:	00008067          	ret

0000000080003af4 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80003af4:	ff010113          	addi	sp,sp,-16
    80003af8:	00113423          	sd	ra,8(sp)
    80003afc:	00813023          	sd	s0,0(sp)
    80003b00:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003b04:	ffffd097          	auipc	ra,0xffffd
    80003b08:	770080e7          	jalr	1904(ra) # 80001274 <_Z8mem_freePv>
}
    80003b0c:	00813083          	ld	ra,8(sp)
    80003b10:	00013403          	ld	s0,0(sp)
    80003b14:	01010113          	addi	sp,sp,16
    80003b18:	00008067          	ret

0000000080003b1c <_ZN6Thread13threadWrapperEPv>:
int Thread::sleep(time_t time) {
    return 0;
}


void Thread::threadWrapper(void *thread) {
    80003b1c:	ff010113          	addi	sp,sp,-16
    80003b20:	00113423          	sd	ra,8(sp)
    80003b24:	00813023          	sd	s0,0(sp)
    80003b28:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80003b2c:	00053783          	ld	a5,0(a0)
    80003b30:	0107b783          	ld	a5,16(a5)
    80003b34:	000780e7          	jalr	a5
}
    80003b38:	00813083          	ld	ra,8(sp)
    80003b3c:	00013403          	ld	s0,0(sp)
    80003b40:	01010113          	addi	sp,sp,16
    80003b44:	00008067          	ret

0000000080003b48 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80003b48:	fe010113          	addi	sp,sp,-32
    80003b4c:	00113c23          	sd	ra,24(sp)
    80003b50:	00813823          	sd	s0,16(sp)
    80003b54:	00913423          	sd	s1,8(sp)
    80003b58:	02010413          	addi	s0,sp,32
    80003b5c:	00050493          	mv	s1,a0
    80003b60:	00012797          	auipc	a5,0x12
    80003b64:	8b878793          	addi	a5,a5,-1864 # 80015418 <_ZTV9Semaphore+0x10>
    80003b68:	00f53023          	sd	a5,0(a0)
    if(myHandle){
    80003b6c:	00853503          	ld	a0,8(a0)
    80003b70:	00050c63          	beqz	a0,80003b88 <_ZN9SemaphoreD1Ev+0x40>
        sem_close(this->myHandle);
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	834080e7          	jalr	-1996(ra) # 800013a8 <_Z9sem_closeP11Semaphore_k>
        mem_free(myHandle);
    80003b7c:	0084b503          	ld	a0,8(s1)
    80003b80:	ffffd097          	auipc	ra,0xffffd
    80003b84:	6f4080e7          	jalr	1780(ra) # 80001274 <_Z8mem_freePv>
}
    80003b88:	01813083          	ld	ra,24(sp)
    80003b8c:	01013403          	ld	s0,16(sp)
    80003b90:	00813483          	ld	s1,8(sp)
    80003b94:	02010113          	addi	sp,sp,32
    80003b98:	00008067          	ret

0000000080003b9c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003b9c:	fe010113          	addi	sp,sp,-32
    80003ba0:	00113c23          	sd	ra,24(sp)
    80003ba4:	00813823          	sd	s0,16(sp)
    80003ba8:	00913423          	sd	s1,8(sp)
    80003bac:	02010413          	addi	s0,sp,32
    80003bb0:	00050493          	mv	s1,a0
}
    80003bb4:	00000097          	auipc	ra,0x0
    80003bb8:	f94080e7          	jalr	-108(ra) # 80003b48 <_ZN9SemaphoreD1Ev>
    80003bbc:	00048513          	mv	a0,s1
    80003bc0:	00000097          	auipc	ra,0x0
    80003bc4:	f0c080e7          	jalr	-244(ra) # 80003acc <_ZdlPv>
    80003bc8:	01813083          	ld	ra,24(sp)
    80003bcc:	01013403          	ld	s0,16(sp)
    80003bd0:	00813483          	ld	s1,8(sp)
    80003bd4:	02010113          	addi	sp,sp,32
    80003bd8:	00008067          	ret

0000000080003bdc <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80003bdc:	fe010113          	addi	sp,sp,-32
    80003be0:	00113c23          	sd	ra,24(sp)
    80003be4:	00813823          	sd	s0,16(sp)
    80003be8:	00913423          	sd	s1,8(sp)
    80003bec:	02010413          	addi	s0,sp,32
    80003bf0:	00012797          	auipc	a5,0x12
    80003bf4:	84878793          	addi	a5,a5,-1976 # 80015438 <_ZTV6Thread+0x10>
    80003bf8:	00f53023          	sd	a5,0(a0)
    myHandle->setFinished(true);
    80003bfc:	00853783          	ld	a5,8(a0)
    void setFinished(bool value) { finished = value; }
    80003c00:	00100713          	li	a4,1
    80003c04:	02e78023          	sb	a4,32(a5)
    delete this->myHandle;
    80003c08:	00853483          	ld	s1,8(a0)
    80003c0c:	02048063          	beqz	s1,80003c2c <_ZN6ThreadD1Ev+0x50>
    ~TCB() { delete[] stack;
    80003c10:	0084b503          	ld	a0,8(s1)
    80003c14:	00050663          	beqz	a0,80003c20 <_ZN6ThreadD1Ev+0x44>
    80003c18:	00000097          	auipc	ra,0x0
    80003c1c:	edc080e7          	jalr	-292(ra) # 80003af4 <_ZdaPv>
        memoryAllocator::mem_free(ptr);
    80003c20:	00048513          	mv	a0,s1
    80003c24:	00001097          	auipc	ra,0x1
    80003c28:	f4c080e7          	jalr	-180(ra) # 80004b70 <_ZN15memoryAllocator8mem_freeEPv>
}
    80003c2c:	01813083          	ld	ra,24(sp)
    80003c30:	01013403          	ld	s0,16(sp)
    80003c34:	00813483          	ld	s1,8(sp)
    80003c38:	02010113          	addi	sp,sp,32
    80003c3c:	00008067          	ret

0000000080003c40 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80003c40:	fe010113          	addi	sp,sp,-32
    80003c44:	00113c23          	sd	ra,24(sp)
    80003c48:	00813823          	sd	s0,16(sp)
    80003c4c:	00913423          	sd	s1,8(sp)
    80003c50:	02010413          	addi	s0,sp,32
    80003c54:	00050493          	mv	s1,a0
}
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	f84080e7          	jalr	-124(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80003c60:	00048513          	mv	a0,s1
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	e68080e7          	jalr	-408(ra) # 80003acc <_ZdlPv>
    80003c6c:	01813083          	ld	ra,24(sp)
    80003c70:	01013403          	ld	s0,16(sp)
    80003c74:	00813483          	ld	s1,8(sp)
    80003c78:	02010113          	addi	sp,sp,32
    80003c7c:	00008067          	ret

0000000080003c80 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80003c80:	ff010113          	addi	sp,sp,-16
    80003c84:	00113423          	sd	ra,8(sp)
    80003c88:	00813023          	sd	s0,0(sp)
    80003c8c:	01010413          	addi	s0,sp,16
    80003c90:	00011797          	auipc	a5,0x11
    80003c94:	78878793          	addi	a5,a5,1928 # 80015418 <_ZTV9Semaphore+0x10>
    80003c98:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    80003c9c:	00850513          	addi	a0,a0,8
    80003ca0:	ffffd097          	auipc	ra,0xffffd
    80003ca4:	6d8080e7          	jalr	1752(ra) # 80001378 <_Z8sem_openPP11Semaphore_kj>
}
    80003ca8:	00813083          	ld	ra,8(sp)
    80003cac:	00013403          	ld	s0,0(sp)
    80003cb0:	01010113          	addi	sp,sp,16
    80003cb4:	00008067          	ret

0000000080003cb8 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80003cb8:	ff010113          	addi	sp,sp,-16
    80003cbc:	00113423          	sd	ra,8(sp)
    80003cc0:	00813023          	sd	s0,0(sp)
    80003cc4:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    80003cc8:	00853503          	ld	a0,8(a0)
    80003ccc:	ffffd097          	auipc	ra,0xffffd
    80003cd0:	708080e7          	jalr	1800(ra) # 800013d4 <_Z8sem_waitP11Semaphore_k>
}
    80003cd4:	00813083          	ld	ra,8(sp)
    80003cd8:	00013403          	ld	s0,0(sp)
    80003cdc:	01010113          	addi	sp,sp,16
    80003ce0:	00008067          	ret

0000000080003ce4 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    80003ce4:	ff010113          	addi	sp,sp,-16
    80003ce8:	00113423          	sd	ra,8(sp)
    80003cec:	00813023          	sd	s0,0(sp)
    80003cf0:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    80003cf4:	00853503          	ld	a0,8(a0)
    80003cf8:	ffffd097          	auipc	ra,0xffffd
    80003cfc:	708080e7          	jalr	1800(ra) # 80001400 <_Z10sem_signalP11Semaphore_k>
}
    80003d00:	00813083          	ld	ra,8(sp)
    80003d04:	00013403          	ld	s0,0(sp)
    80003d08:	01010113          	addi	sp,sp,16
    80003d0c:	00008067          	ret

0000000080003d10 <_ZN9Semaphore7trywaitEv>:
int Semaphore::trywait() {
    80003d10:	ff010113          	addi	sp,sp,-16
    80003d14:	00113423          	sd	ra,8(sp)
    80003d18:	00813023          	sd	s0,0(sp)
    80003d1c:	01010413          	addi	s0,sp,16
    return sem_trywait(this->myHandle);
    80003d20:	00853503          	ld	a0,8(a0)
    80003d24:	ffffd097          	auipc	ra,0xffffd
    80003d28:	708080e7          	jalr	1800(ra) # 8000142c <_Z11sem_trywaitP11Semaphore_k>
}
    80003d2c:	00813083          	ld	ra,8(sp)
    80003d30:	00013403          	ld	s0,0(sp)
    80003d34:	01010113          	addi	sp,sp,16
    80003d38:	00008067          	ret

0000000080003d3c <_ZN9Semaphore9timedwaitEm>:
int Semaphore::timedwait(time_t t) {
    80003d3c:	ff010113          	addi	sp,sp,-16
    80003d40:	00113423          	sd	ra,8(sp)
    80003d44:	00813023          	sd	s0,0(sp)
    80003d48:	01010413          	addi	s0,sp,16
    return sem_timedwait(this->myHandle,t);
    80003d4c:	00853503          	ld	a0,8(a0)
    80003d50:	ffffd097          	auipc	ra,0xffffd
    80003d54:	708080e7          	jalr	1800(ra) # 80001458 <_Z13sem_timedwaitP11Semaphore_km>
}
    80003d58:	00813083          	ld	ra,8(sp)
    80003d5c:	00013403          	ld	s0,0(sp)
    80003d60:	01010113          	addi	sp,sp,16
    80003d64:	00008067          	ret

0000000080003d68 <_ZN9Semaphore5waitNEi>:
 int Semaphore::waitN(int n) {
    80003d68:	ff010113          	addi	sp,sp,-16
    80003d6c:	00113423          	sd	ra,8(sp)
    80003d70:	00813023          	sd	s0,0(sp)
    80003d74:	01010413          	addi	s0,sp,16
     return sem_waitN(this->myHandle,n);
    80003d78:	00853503          	ld	a0,8(a0)
    80003d7c:	ffffd097          	auipc	ra,0xffffd
    80003d80:	70c080e7          	jalr	1804(ra) # 80001488 <_Z9sem_waitNP11Semaphore_kj>
 }
    80003d84:	00813083          	ld	ra,8(sp)
    80003d88:	00013403          	ld	s0,0(sp)
    80003d8c:	01010113          	addi	sp,sp,16
    80003d90:	00008067          	ret

0000000080003d94 <_ZN9Semaphore7signalNEv>:
 int Semaphore::signalN() {
    80003d94:	ff010113          	addi	sp,sp,-16
    80003d98:	00113423          	sd	ra,8(sp)
    80003d9c:	00813023          	sd	s0,0(sp)
    80003da0:	01010413          	addi	s0,sp,16
     return sem_signalN(this->myHandle);
    80003da4:	00853503          	ld	a0,8(a0)
    80003da8:	ffffd097          	auipc	ra,0xffffd
    80003dac:	710080e7          	jalr	1808(ra) # 800014b8 <_Z11sem_signalNP11Semaphore_k>
 }
    80003db0:	00813083          	ld	ra,8(sp)
    80003db4:	00013403          	ld	s0,0(sp)
    80003db8:	01010113          	addi	sp,sp,16
    80003dbc:	00008067          	ret

0000000080003dc0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003dc0:	ff010113          	addi	sp,sp,-16
    80003dc4:	00113423          	sd	ra,8(sp)
    80003dc8:	00813023          	sd	s0,0(sp)
    80003dcc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003dd0:	ffffd097          	auipc	ra,0xffffd
    80003dd4:	588080e7          	jalr	1416(ra) # 80001358 <_Z15thread_dispatchv>
}
    80003dd8:	00813083          	ld	ra,8(sp)
    80003ddc:	00013403          	ld	s0,0(sp)
    80003de0:	01010113          	addi	sp,sp,16
    80003de4:	00008067          	ret

0000000080003de8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80003de8:	ff010113          	addi	sp,sp,-16
    80003dec:	00813423          	sd	s0,8(sp)
    80003df0:	01010413          	addi	s0,sp,16
    80003df4:	00011797          	auipc	a5,0x11
    80003df8:	64478793          	addi	a5,a5,1604 # 80015438 <_ZTV6Thread+0x10>
    80003dfc:	00f53023          	sd	a5,0(a0)
    myHandle= nullptr;
    80003e00:	00053423          	sd	zero,8(a0)
    this->body=body;
    80003e04:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    80003e08:	00c53c23          	sd	a2,24(a0)
}
    80003e0c:	00813403          	ld	s0,8(sp)
    80003e10:	01010113          	addi	sp,sp,16
    80003e14:	00008067          	ret

0000000080003e18 <_ZN6Thread5startEv>:
    if(myHandle == nullptr){ thread_create(&myHandle,body,arg);
    80003e18:	00853783          	ld	a5,8(a0)
    80003e1c:	02079e63          	bnez	a5,80003e58 <_ZN6Thread5startEv+0x40>
int Thread::start() {
    80003e20:	ff010113          	addi	sp,sp,-16
    80003e24:	00113423          	sd	ra,8(sp)
    80003e28:	00813023          	sd	s0,0(sp)
    80003e2c:	01010413          	addi	s0,sp,16
    if(myHandle == nullptr){ thread_create(&myHandle,body,arg);
    80003e30:	01853603          	ld	a2,24(a0)
    80003e34:	01053583          	ld	a1,16(a0)
    80003e38:	00850513          	addi	a0,a0,8
    80003e3c:	ffffd097          	auipc	ra,0xffffd
    80003e40:	464080e7          	jalr	1124(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
        return 0;
    80003e44:	00000513          	li	a0,0
}
    80003e48:	00813083          	ld	ra,8(sp)
    80003e4c:	00013403          	ld	s0,0(sp)
    80003e50:	01010113          	addi	sp,sp,16
    80003e54:	00008067          	ret
    return -1;
    80003e58:	fff00513          	li	a0,-1
}
    80003e5c:	00008067          	ret

0000000080003e60 <_ZN6ThreadC1Ev>:
Thread::Thread(){
    80003e60:	ff010113          	addi	sp,sp,-16
    80003e64:	00813423          	sd	s0,8(sp)
    80003e68:	01010413          	addi	s0,sp,16
    80003e6c:	00011797          	auipc	a5,0x11
    80003e70:	5cc78793          	addi	a5,a5,1484 # 80015438 <_ZTV6Thread+0x10>
    80003e74:	00f53023          	sd	a5,0(a0)
    myHandle=nullptr;
    80003e78:	00053423          	sd	zero,8(a0)
    body = threadWrapper;
    80003e7c:	00000797          	auipc	a5,0x0
    80003e80:	ca078793          	addi	a5,a5,-864 # 80003b1c <_ZN6Thread13threadWrapperEPv>
    80003e84:	00f53823          	sd	a5,16(a0)
    arg = this;
    80003e88:	00a53c23          	sd	a0,24(a0)
}
    80003e8c:	00813403          	ld	s0,8(sp)
    80003e90:	01010113          	addi	sp,sp,16
    80003e94:	00008067          	ret

0000000080003e98 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80003e98:	ff010113          	addi	sp,sp,-16
    80003e9c:	00813423          	sd	s0,8(sp)
    80003ea0:	01010413          	addi	s0,sp,16
}
    80003ea4:	00000513          	li	a0,0
    80003ea8:	00813403          	ld	s0,8(sp)
    80003eac:	01010113          	addi	sp,sp,16
    80003eb0:	00008067          	ret

0000000080003eb4 <_ZN6Thread10setRunningEPS_>:




 void Thread::setRunning(Thread *thread) {
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00113423          	sd	ra,8(sp)
    80003ebc:	00813023          	sd	s0,0(sp)
    80003ec0:	01010413          	addi	s0,sp,16
     th_running(thread->myHandle);
    80003ec4:	00853503          	ld	a0,8(a0)
    80003ec8:	ffffd097          	auipc	ra,0xffffd
    80003ecc:	6d4080e7          	jalr	1748(ra) # 8000159c <_Z10th_runningP3TCB>
 }
    80003ed0:	00813083          	ld	ra,8(sp)
    80003ed4:	00013403          	ld	s0,0(sp)
    80003ed8:	01010113          	addi	sp,sp,16
    80003edc:	00008067          	ret

0000000080003ee0 <_ZN6Thread11getThreadIdEv>:

 int Thread::getThreadId() {
    80003ee0:	ff010113          	addi	sp,sp,-16
    80003ee4:	00113423          	sd	ra,8(sp)
    80003ee8:	00813023          	sd	s0,0(sp)
    80003eec:	01010413          	addi	s0,sp,16
    return thread_id(myHandle);
    80003ef0:	00853503          	ld	a0,8(a0)
    80003ef4:	ffffd097          	auipc	ra,0xffffd
    80003ef8:	67c080e7          	jalr	1660(ra) # 80001570 <_Z9thread_idP3TCB>
 }
    80003efc:	00813083          	ld	ra,8(sp)
    80003f00:	00013403          	ld	s0,0(sp)
    80003f04:	01010113          	addi	sp,sp,16
    80003f08:	00008067          	ret

0000000080003f0c <_ZN6Thread4joinEv>:

 void Thread::join() {
    80003f0c:	ff010113          	addi	sp,sp,-16
    80003f10:	00113423          	sd	ra,8(sp)
    80003f14:	00813023          	sd	s0,0(sp)
    80003f18:	01010413          	addi	s0,sp,16
     thread_join(myHandle);
    80003f1c:	00853503          	ld	a0,8(a0)
    80003f20:	ffffd097          	auipc	ra,0xffffd
    80003f24:	62c080e7          	jalr	1580(ra) # 8000154c <_Z11thread_joinP3TCB>
 }
    80003f28:	00813083          	ld	ra,8(sp)
    80003f2c:	00013403          	ld	s0,0(sp)
    80003f30:	01010113          	addi	sp,sp,16
    80003f34:	00008067          	ret

0000000080003f38 <_ZN6Thread3manEj>:

 void Thread::man(unsigned int id) {
    80003f38:	ff010113          	addi	sp,sp,-16
    80003f3c:	00113423          	sd	ra,8(sp)
    80003f40:	00813023          	sd	s0,0(sp)
    80003f44:	01010413          	addi	s0,sp,16
     thread_man(id);
    80003f48:	00058513          	mv	a0,a1
    80003f4c:	ffffd097          	auipc	ra,0xffffd
    80003f50:	674080e7          	jalr	1652(ra) # 800015c0 <_Z10thread_manj>

 }
    80003f54:	00813083          	ld	ra,8(sp)
    80003f58:	00013403          	ld	s0,0(sp)
    80003f5c:	01010113          	addi	sp,sp,16
    80003f60:	00008067          	ret

0000000080003f64 <_ZN6Thread5womanEj>:

 void Thread::woman(unsigned int id) {
    80003f64:	ff010113          	addi	sp,sp,-16
    80003f68:	00113423          	sd	ra,8(sp)
    80003f6c:	00813023          	sd	s0,0(sp)
    80003f70:	01010413          	addi	s0,sp,16
     thread_woman(id);
    80003f74:	00058513          	mv	a0,a1
    80003f78:	ffffd097          	auipc	ra,0xffffd
    80003f7c:	66c080e7          	jalr	1644(ra) # 800015e4 <_Z12thread_womanj>
 }
    80003f80:	00813083          	ld	ra,8(sp)
    80003f84:	00013403          	ld	s0,0(sp)
    80003f88:	01010113          	addi	sp,sp,16
    80003f8c:	00008067          	ret

0000000080003f90 <_ZN6Thread7barrierEv>:

 void Thread::barrier() {
    80003f90:	ff010113          	addi	sp,sp,-16
    80003f94:	00113423          	sd	ra,8(sp)
    80003f98:	00813023          	sd	s0,0(sp)
    80003f9c:	01010413          	addi	s0,sp,16
    thread_barriere();
    80003fa0:	ffffd097          	auipc	ra,0xffffd
    80003fa4:	668080e7          	jalr	1640(ra) # 80001608 <_Z15thread_barrierev>
 }
    80003fa8:	00813083          	ld	ra,8(sp)
    80003fac:	00013403          	ld	s0,0(sp)
    80003fb0:	01010113          	addi	sp,sp,16
    80003fb4:	00008067          	ret

0000000080003fb8 <_ZN6Thread4sendEPKc>:




 void Thread::send(char const* message) {
    80003fb8:	ff010113          	addi	sp,sp,-16
    80003fbc:	00113423          	sd	ra,8(sp)
    80003fc0:	00813023          	sd	s0,0(sp)
    80003fc4:	01010413          	addi	s0,sp,16
     thread_send(myHandle,message);
    80003fc8:	00853503          	ld	a0,8(a0)
    80003fcc:	ffffd097          	auipc	ra,0xffffd
    80003fd0:	65c080e7          	jalr	1628(ra) # 80001628 <_Z11thread_sendP3TCBPKc>
 }
    80003fd4:	00813083          	ld	ra,8(sp)
    80003fd8:	00013403          	ld	s0,0(sp)
    80003fdc:	01010113          	addi	sp,sp,16
    80003fe0:	00008067          	ret

0000000080003fe4 <_ZN6Thread7receiveEv>:

 char const* Thread::receive() {
    80003fe4:	ff010113          	addi	sp,sp,-16
    80003fe8:	00113423          	sd	ra,8(sp)
    80003fec:	00813023          	sd	s0,0(sp)
    80003ff0:	01010413          	addi	s0,sp,16
    return thread_receive();
    80003ff4:	ffffd097          	auipc	ra,0xffffd
    80003ff8:	65c080e7          	jalr	1628(ra) # 80001650 <_Z14thread_receivev>
 }
    80003ffc:	00813083          	ld	ra,8(sp)
    80004000:	00013403          	ld	s0,0(sp)
    80004004:	01010113          	addi	sp,sp,16
    80004008:	00008067          	ret

000000008000400c <_ZN6Thread7joinALLEv>:

 void Thread::joinALL() {
    8000400c:	ff010113          	addi	sp,sp,-16
    80004010:	00113423          	sd	ra,8(sp)
    80004014:	00813023          	sd	s0,0(sp)
    80004018:	01010413          	addi	s0,sp,16
    thread_joinALL();
    8000401c:	ffffd097          	auipc	ra,0xffffd
    80004020:	658080e7          	jalr	1624(ra) # 80001674 <_Z14thread_joinALLv>
 }
    80004024:	00813083          	ld	ra,8(sp)
    80004028:	00013403          	ld	s0,0(sp)
    8000402c:	01010113          	addi	sp,sp,16
    80004030:	00008067          	ret

0000000080004034 <_ZN6Thread13setMaxThreadsEi>:

 void Thread::setMaxThreads(int num) {
    80004034:	ff010113          	addi	sp,sp,-16
    80004038:	00113423          	sd	ra,8(sp)
    8000403c:	00813023          	sd	s0,0(sp)
    80004040:	01010413          	addi	s0,sp,16
     thread_setMaxThread(num);
    80004044:	ffffd097          	auipc	ra,0xffffd
    80004048:	650080e7          	jalr	1616(ra) # 80001694 <_Z19thread_setMaxThreadi>
 }
    8000404c:	00813083          	ld	ra,8(sp)
    80004050:	00013403          	ld	s0,0(sp)
    80004054:	01010113          	addi	sp,sp,16
    80004058:	00008067          	ret

000000008000405c <_ZN6Thread9barrier_2Ev>:

 void Thread::barrier_2() {
    8000405c:	ff010113          	addi	sp,sp,-16
    80004060:	00113423          	sd	ra,8(sp)
    80004064:	00813023          	sd	s0,0(sp)
    80004068:	01010413          	addi	s0,sp,16
    thread_barrier();
    8000406c:	ffffd097          	auipc	ra,0xffffd
    80004070:	64c080e7          	jalr	1612(ra) # 800016b8 <_Z14thread_barrierv>
 }
    80004074:	00813083          	ld	ra,8(sp)
    80004078:	00013403          	ld	s0,0(sp)
    8000407c:	01010113          	addi	sp,sp,16
    80004080:	00008067          	ret

0000000080004084 <_ZN6Thread8consumerEi>:

 void Thread::consumer(int id) {
    80004084:	ff010113          	addi	sp,sp,-16
    80004088:	00113423          	sd	ra,8(sp)
    8000408c:	00813023          	sd	s0,0(sp)
    80004090:	01010413          	addi	s0,sp,16
     thread_consumer(id);
    80004094:	00058513          	mv	a0,a1
    80004098:	ffffd097          	auipc	ra,0xffffd
    8000409c:	664080e7          	jalr	1636(ra) # 800016fc <_Z15thread_consumeri>

 }
    800040a0:	00813083          	ld	ra,8(sp)
    800040a4:	00013403          	ld	s0,0(sp)
    800040a8:	01010113          	addi	sp,sp,16
    800040ac:	00008067          	ret

00000000800040b0 <_ZN6Thread8producerEi>:

 void Thread::producer(int id) {
    800040b0:	ff010113          	addi	sp,sp,-16
    800040b4:	00113423          	sd	ra,8(sp)
    800040b8:	00813023          	sd	s0,0(sp)
    800040bc:	01010413          	addi	s0,sp,16
    thread_producer(id);
    800040c0:	00058513          	mv	a0,a1
    800040c4:	ffffd097          	auipc	ra,0xffffd
    800040c8:	614080e7          	jalr	1556(ra) # 800016d8 <_Z15thread_produceri>
 }
    800040cc:	00813083          	ld	ra,8(sp)
    800040d0:	00013403          	ld	s0,0(sp)
    800040d4:	01010113          	addi	sp,sp,16
    800040d8:	00008067          	ret

00000000800040dc <_ZN6Thread1OEj>:

 void Thread::O(unsigned int id) {
    800040dc:	ff010113          	addi	sp,sp,-16
    800040e0:	00113423          	sd	ra,8(sp)
    800040e4:	00813023          	sd	s0,0(sp)
    800040e8:	01010413          	addi	s0,sp,16
     thread_o(id);
    800040ec:	00058513          	mv	a0,a1
    800040f0:	ffffd097          	auipc	ra,0xffffd
    800040f4:	630080e7          	jalr	1584(ra) # 80001720 <_Z8thread_oj>

 }
    800040f8:	00813083          	ld	ra,8(sp)
    800040fc:	00013403          	ld	s0,0(sp)
    80004100:	01010113          	addi	sp,sp,16
    80004104:	00008067          	ret

0000000080004108 <_ZN6Thread1HEj>:

 void Thread::H(unsigned int id) {
    80004108:	ff010113          	addi	sp,sp,-16
    8000410c:	00113423          	sd	ra,8(sp)
    80004110:	00813023          	sd	s0,0(sp)
    80004114:	01010413          	addi	s0,sp,16
     thread_h(id);
    80004118:	00058513          	mv	a0,a1
    8000411c:	ffffd097          	auipc	ra,0xffffd
    80004120:	628080e7          	jalr	1576(ra) # 80001744 <_Z8thread_hj>
 }
    80004124:	00813083          	ld	ra,8(sp)
    80004128:	00013403          	ld	s0,0(sp)
    8000412c:	01010113          	addi	sp,sp,16
    80004130:	00008067          	ret

0000000080004134 <_ZN6Thread6savageEj>:

 void Thread::savage(unsigned int id) {
    80004134:	ff010113          	addi	sp,sp,-16
    80004138:	00113423          	sd	ra,8(sp)
    8000413c:	00813023          	sd	s0,0(sp)
    80004140:	01010413          	addi	s0,sp,16
     thread_savage(id);
    80004144:	00058513          	mv	a0,a1
    80004148:	ffffd097          	auipc	ra,0xffffd
    8000414c:	620080e7          	jalr	1568(ra) # 80001768 <_Z13thread_savagej>

 }
    80004150:	00813083          	ld	ra,8(sp)
    80004154:	00013403          	ld	s0,0(sp)
    80004158:	01010113          	addi	sp,sp,16
    8000415c:	00008067          	ret

0000000080004160 <_ZN6Thread4cookEv>:

 void Thread::cook() {
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00113423          	sd	ra,8(sp)
    80004168:	00813023          	sd	s0,0(sp)
    8000416c:	01010413          	addi	s0,sp,16
     thread_cook();
    80004170:	ffffd097          	auipc	ra,0xffffd
    80004174:	61c080e7          	jalr	1564(ra) # 8000178c <_Z11thread_cookv>
 }
    80004178:	00813083          	ld	ra,8(sp)
    8000417c:	00013403          	ld	s0,0(sp)
    80004180:	01010113          	addi	sp,sp,16
    80004184:	00008067          	ret

0000000080004188 <_ZN6Thread9birdChildEj>:

 void Thread::birdChild(unsigned int id) {
    80004188:	ff010113          	addi	sp,sp,-16
    8000418c:	00113423          	sd	ra,8(sp)
    80004190:	00813023          	sd	s0,0(sp)
    80004194:	01010413          	addi	s0,sp,16
     thread_birdCH(id);
    80004198:	00058513          	mv	a0,a1
    8000419c:	ffffd097          	auipc	ra,0xffffd
    800041a0:	610080e7          	jalr	1552(ra) # 800017ac <_Z13thread_birdCHj>
 }
    800041a4:	00813083          	ld	ra,8(sp)
    800041a8:	00013403          	ld	s0,0(sp)
    800041ac:	01010113          	addi	sp,sp,16
    800041b0:	00008067          	ret

00000000800041b4 <_ZN6Thread10birdParentEj>:

 void Thread::birdParent(unsigned int id) {
    800041b4:	ff010113          	addi	sp,sp,-16
    800041b8:	00113423          	sd	ra,8(sp)
    800041bc:	00813023          	sd	s0,0(sp)
    800041c0:	01010413          	addi	s0,sp,16
     thread_birdPA(id);
    800041c4:	00058513          	mv	a0,a1
    800041c8:	ffffd097          	auipc	ra,0xffffd
    800041cc:	608080e7          	jalr	1544(ra) # 800017d0 <_Z13thread_birdPAj>
 }
    800041d0:	00813083          	ld	ra,8(sp)
    800041d4:	00013403          	ld	s0,0(sp)
    800041d8:	01010113          	addi	sp,sp,16
    800041dc:	00008067          	ret

00000000800041e0 <_ZN6Thread4medaEv>:

 void Thread::meda() {
    800041e0:	ff010113          	addi	sp,sp,-16
    800041e4:	00113423          	sd	ra,8(sp)
    800041e8:	00813023          	sd	s0,0(sp)
    800041ec:	01010413          	addi	s0,sp,16
     thread_BEAR();
    800041f0:	ffffd097          	auipc	ra,0xffffd
    800041f4:	628080e7          	jalr	1576(ra) # 80001818 <_Z11thread_BEARv>

 }
    800041f8:	00813083          	ld	ra,8(sp)
    800041fc:	00013403          	ld	s0,0(sp)
    80004200:	01010113          	addi	sp,sp,16
    80004204:	00008067          	ret

0000000080004208 <_ZN6Thread5pcelaEj>:

 void Thread::pcela(unsigned int id) {
    80004208:	ff010113          	addi	sp,sp,-16
    8000420c:	00113423          	sd	ra,8(sp)
    80004210:	00813023          	sd	s0,0(sp)
    80004214:	01010413          	addi	s0,sp,16
     thread_BEE(id);
    80004218:	00058513          	mv	a0,a1
    8000421c:	ffffd097          	auipc	ra,0xffffd
    80004220:	5d8080e7          	jalr	1496(ra) # 800017f4 <_Z10thread_BEEj>
 }
    80004224:	00813083          	ld	ra,8(sp)
    80004228:	00013403          	ld	s0,0(sp)
    8000422c:	01010113          	addi	sp,sp,16
    80004230:	00008067          	ret

0000000080004234 <_ZN6Thread10pingThreadEv>:

 void Thread::pingThread() {
    80004234:	ff010113          	addi	sp,sp,-16
    80004238:	00113423          	sd	ra,8(sp)
    8000423c:	00813023          	sd	s0,0(sp)
    80004240:	01010413          	addi	s0,sp,16
     thread_ping(myHandle);
    80004244:	00853503          	ld	a0,8(a0)
    80004248:	ffffd097          	auipc	ra,0xffffd
    8000424c:	5f0080e7          	jalr	1520(ra) # 80001838 <_Z11thread_pingP3TCB>
 }
    80004250:	00813083          	ld	ra,8(sp)
    80004254:	00013403          	ld	s0,0(sp)
    80004258:	01010113          	addi	sp,sp,16
    8000425c:	00008067          	ret

0000000080004260 <_ZN7Console4putcEc>:

 //**Konzola deo***
void Console::putc(char c) {
    80004260:	ff010113          	addi	sp,sp,-16
    80004264:	00113423          	sd	ra,8(sp)
    80004268:	00813023          	sd	s0,0(sp)
    8000426c:	01010413          	addi	s0,sp,16
    syscall_c::putc(c);
    80004270:	ffffd097          	auipc	ra,0xffffd
    80004274:	29c080e7          	jalr	668(ra) # 8000150c <_Z4putcc>
}
    80004278:	00813083          	ld	ra,8(sp)
    8000427c:	00013403          	ld	s0,0(sp)
    80004280:	01010113          	addi	sp,sp,16
    80004284:	00008067          	ret

0000000080004288 <_ZN7Console4getcEv>:

char Console::getc() {
    80004288:	ff010113          	addi	sp,sp,-16
    8000428c:	00113423          	sd	ra,8(sp)
    80004290:	00813023          	sd	s0,0(sp)
    80004294:	01010413          	addi	s0,sp,16
    return syscall_c::getc();
    80004298:	ffffd097          	auipc	ra,0xffffd
    8000429c:	24c080e7          	jalr	588(ra) # 800014e4 <_Z4getcv>
}
    800042a0:	00813083          	ld	ra,8(sp)
    800042a4:	00013403          	ld	s0,0(sp)
    800042a8:	01010113          	addi	sp,sp,16
    800042ac:	00008067          	ret

00000000800042b0 <_ZN6Thread3runEv>:
    void meda();

    void pingThread();
protected:
    Thread();
    virtual void run(){};
    800042b0:	ff010113          	addi	sp,sp,-16
    800042b4:	00813423          	sd	s0,8(sp)
    800042b8:	01010413          	addi	s0,sp,16
    800042bc:	00813403          	ld	s0,8(sp)
    800042c0:	01010113          	addi	sp,sp,16
    800042c4:	00008067          	ret

00000000800042c8 <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"



void Riscv::popSppSpie()
{
    800042c8:	ff010113          	addi	sp,sp,-16
    800042cc:	00813423          	sd	s0,8(sp)
    800042d0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800042d4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800042d8:	10200073          	sret
}
    800042dc:	00813403          	ld	s0,8(sp)
    800042e0:	01010113          	addi	sp,sp,16
    800042e4:	00008067          	ret

00000000800042e8 <_ZN5Riscv20handleSupervisorTrapEv>:
using Body = void (*)(void*);



void Riscv::handleSupervisorTrap()
{
    800042e8:	f9010113          	addi	sp,sp,-112
    800042ec:	06113423          	sd	ra,104(sp)
    800042f0:	06813023          	sd	s0,96(sp)
    800042f4:	04913c23          	sd	s1,88(sp)
    800042f8:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800042fc:	142027f3          	csrr	a5,scause
    80004300:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80004304:	fc043783          	ld	a5,-64(s0)
    volatile uint64 scause = r_scause();
    80004308:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000430c:	141027f3          	csrr	a5,sepc
    80004310:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80004314:	fb843783          	ld	a5,-72(s0)
    volatile uint64 sepc = r_sepc();
    80004318:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000431c:	100027f3          	csrr	a5,sstatus
    80004320:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80004324:	fb043783          	ld	a5,-80(s0)
    volatile uint64 sstatus = r_sstatus();
    80004328:	fcf43423          	sd	a5,-56(s0)
    //volatile uint64 stval = r_stval();
    if (scause == KORISNICKI_POZ || scause == SISTEMSKI_POZ)
    8000432c:	fd843703          	ld	a4,-40(s0)
    80004330:	00800793          	li	a5,8
    80004334:	06f70063          	beq	a4,a5,80004394 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
    80004338:	fd843703          	ld	a4,-40(s0)
    8000433c:	00900793          	li	a5,9
    80004340:	04f70a63          	beq	a4,a5,80004394 <_ZN5Riscv20handleSupervisorTrapEv+0xac>
                break;
        }


    }
    else if(scause == KONZ){
    80004344:	fd843703          	ld	a4,-40(s0)
    80004348:	fff00793          	li	a5,-1
    8000434c:	03f79793          	slli	a5,a5,0x3f
    80004350:	00978793          	addi	a5,a5,9
    80004354:	48f70a63          	beq	a4,a5,800047e8 <_ZN5Riscv20handleSupervisorTrapEv+0x500>
        w_sepc(sepc);
        w_sstatus(sstatus);
        //spoljasnji hardverski prekid (od konzole)

    }
    else if(scause == TIMER){
    80004358:	fd843703          	ld	a4,-40(s0)
    8000435c:	fff00793          	li	a5,-1
    80004360:	03f79793          	slli	a5,a5,0x3f
    80004364:	00178793          	addi	a5,a5,1
    80004368:	4af71263          	bne	a4,a5,8000480c <_ZN5Riscv20handleSupervisorTrapEv+0x524>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000436c:	00200793          	li	a5,2
    80004370:	1447b073          	csrc	sip,a5
       // interrupt: da; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        if(TCB::running!= nullptr)TCB::running->incrementTime();
    80004374:	00011797          	auipc	a5,0x11
    80004378:	6547b783          	ld	a5,1620(a5) # 800159c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000437c:	0007b783          	ld	a5,0(a5)
    80004380:	50078663          	beqz	a5,8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
    }
    int getRunTime() const{
        return this->runTime;
    }
    void incrementTime(){
        this->runTime++;
    80004384:	0887a703          	lw	a4,136(a5)
    80004388:	0017071b          	addiw	a4,a4,1
    8000438c:	08e7a423          	sw	a4,136(a5)
    }
    80004390:	4fc0006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
        sepc+=4;
    80004394:	fd043783          	ld	a5,-48(s0)
    80004398:	00478793          	addi	a5,a5,4
    8000439c:	fcf43823          	sd	a5,-48(s0)
        __asm__ volatile ("ld %0,10*8(fp)":"=r"(codeOperation));
    800043a0:	05043783          	ld	a5,80(s0)
        switch (codeOperation) {
    800043a4:	08000713          	li	a4,128
    800043a8:	4ef76263          	bltu	a4,a5,8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
    800043ac:	00279793          	slli	a5,a5,0x2
    800043b0:	0000c717          	auipc	a4,0xc
    800043b4:	03870713          	addi	a4,a4,56 # 800103e8 <CONSOLE_STATUS+0x3d8>
    800043b8:	00e787b3          	add	a5,a5,a4
    800043bc:	0007a783          	lw	a5,0(a5)
    800043c0:	00e787b3          	add	a5,a5,a4
    800043c4:	00078067          	jr	a5
                __asm__ volatile ("ld %0,11*8(fp)":"=r"(size));
    800043c8:	05843503          	ld	a0,88(s0)
                ptr = memoryAllocator::mem_alloc(size*MEM_BLOCK_SIZE);
    800043cc:	00651513          	slli	a0,a0,0x6
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	5c4080e7          	jalr	1476(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
                __asm__ volatile ("sd %0, 10*8(fp)"::"r"(ptr));
    800043d8:	04a43823          	sd	a0,80(s0)
                break;
    800043dc:	4b00006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile ("ld %0,11*8(fp)":"=r"(a));
    800043e0:	05843783          	ld	a5,88(s0)
                void *volatile memptr = (void *) a;
    800043e4:	f8f43c23          	sd	a5,-104(s0)
                returnValue = memoryAllocator::mem_free(memptr);
    800043e8:	f9843503          	ld	a0,-104(s0)
    800043ec:	00000097          	auipc	ra,0x0
    800043f0:	784080e7          	jalr	1924(ra) # 80004b70 <_ZN15memoryAllocator8mem_freeEPv>
                __asm__ volatile ("sd %0, 10*8(fp)"::"r"(returnValue));
    800043f4:	04a43823          	sd	a0,80(s0)
                break;
    800043f8:	4940006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile ("ld %[handle], 11*8(fp)" : [handle]"=r"(thandle));
    800043fc:	05843483          	ld	s1,88(s0)
                __asm__ volatile ("ld %[rs], 12*8(fp)" : [rs]"=r"(startR));
    80004400:	06043583          	ld	a1,96(s0)
                __asm__ volatile("ld %[arg], 13*8(fp)": [arg] "=r"(arg));
    80004404:	06843603          	ld	a2,104(s0)
                __asm__ volatile("ld %[stek], 14*8(fp)": [stek] "=r"(stek));
    80004408:	07043783          	ld	a5,112(s0)
    8000440c:	faf43023          	sd	a5,-96(s0)
                *threadHandle = TCB::kreiraj_thread(threadHandle, funct, arg, stek);
    80004410:	fa043683          	ld	a3,-96(s0)
    80004414:	00048513          	mv	a0,s1
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	9f4080e7          	jalr	-1548(ra) # 80001e0c <_ZN3TCB14kreiraj_threadEPPS_PFvPvES2_Pc>
    80004420:	00a4b023          	sd	a0,0(s1)
                if (threadHandle == nullptr)retVal = -1;
    80004424:	00048863          	beqz	s1,80004434 <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
                uint64 retVal = 0;
    80004428:	00000793          	li	a5,0
                __asm__ volatile ("sd %0, 10*8(fp)"::"r"(retVal));
    8000442c:	04f43823          	sd	a5,80(s0)
                break;
    80004430:	45c0006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                if (threadHandle == nullptr)retVal = -1;
    80004434:	fff00793          	li	a5,-1
    80004438:	ff5ff06f          	j	8000442c <_ZN5Riscv20handleSupervisorTrapEv+0x144>
                TCB::running->pustiSveNiti();
    8000443c:	00011497          	auipc	s1,0x11
    80004440:	58c4b483          	ld	s1,1420(s1) # 800159c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004444:	0004b503          	ld	a0,0(s1)
    80004448:	ffffd097          	auipc	ra,0xffffd
    8000444c:	7e0080e7          	jalr	2016(ra) # 80001c28 <_ZN3TCB12pustiSveNitiEv>
                TCB::running->setFinished(true);
    80004450:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80004454:	00100713          	li	a4,1
    80004458:	02e78023          	sb	a4,32(a5)
                __asm__ volatile ("li t0, 0");
    8000445c:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80004460:	04542823          	sw	t0,80(s0)
                TCB::dispatch();
    80004464:	ffffd097          	auipc	ra,0xffffd
    80004468:	608080e7          	jalr	1544(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    8000446c:	4200006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                TCB::dispatch();
    80004470:	ffffd097          	auipc	ra,0xffffd
    80004474:	5fc080e7          	jalr	1532(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    80004478:	4140006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[handle], 11*8(fp)":[handle]"=r"(thandl));
    8000447c:	05843503          	ld	a0,88(s0)
                TCB::join(thandl);
    80004480:	ffffd097          	auipc	ra,0xffffd
    80004484:	728080e7          	jalr	1832(ra) # 80001ba8 <_ZN3TCB4joinEPS_>
                TCB::dispatch();
    80004488:	ffffd097          	auipc	ra,0xffffd
    8000448c:	5e4080e7          	jalr	1508(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    80004490:	3fc0006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[handle], 11*8(fp)":[handle]"=r"(thandle1));
    80004494:	05843503          	ld	a0,88(s0)
                returnValue=thandle1->getMyID();
    80004498:	ffffe097          	auipc	ra,0xffffe
    8000449c:	a18080e7          	jalr	-1512(ra) # 80001eb0 <_ZN3TCB7getMyIDEv>
                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
    800044a0:	04a43823          	sd	a0,80(s0)
                break;
    800044a4:	3e80006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[handle], 11*8(fp)":[handle]"=r"(thandle));
    800044a8:	05843703          	ld	a4,88(s0)
                TCB::running = thandle;
    800044ac:	00011797          	auipc	a5,0x11
    800044b0:	51c7b783          	ld	a5,1308(a5) # 800159c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800044b4:	00e7b023          	sd	a4,0(a5)
                break;
    800044b8:	3d40006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
    800044bc:	05843503          	ld	a0,88(s0)
                TCB::man(id);
    800044c0:	0005051b          	sext.w	a0,a0
    800044c4:	ffffe097          	auipc	ra,0xffffe
    800044c8:	ae8080e7          	jalr	-1304(ra) # 80001fac <_ZN3TCB3manEj>
                TCB::dispatch();
    800044cc:	ffffd097          	auipc	ra,0xffffd
    800044d0:	5a0080e7          	jalr	1440(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    800044d4:	3b80006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
    800044d8:	05843503          	ld	a0,88(s0)
                TCB::woman(id);
    800044dc:	0005051b          	sext.w	a0,a0
    800044e0:	ffffe097          	auipc	ra,0xffffe
    800044e4:	d28080e7          	jalr	-728(ra) # 80002208 <_ZN3TCB5womanEj>
                TCB::dispatch();
    800044e8:	ffffd097          	auipc	ra,0xffffd
    800044ec:	584080e7          	jalr	1412(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    800044f0:	39c0006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[m], 12*8(fp)":[m]"=r"(mess));
    800044f4:	06043583          	ld	a1,96(s0)
                __asm__ volatile("ld %[n], 11*8(fp)":[n]"=r"(nit));
    800044f8:	05843503          	ld	a0,88(s0)
                nit->send(mess);
    800044fc:	ffffe097          	auipc	ra,0xffffe
    80004500:	194080e7          	jalr	404(ra) # 80002690 <_ZN3TCB4sendEPKc>
                TCB::dispatch();
    80004504:	ffffd097          	auipc	ra,0xffffd
    80004508:	568080e7          	jalr	1384(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    8000450c:	3800006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                retMess=TCB::receive();
    80004510:	ffffe097          	auipc	ra,0xffffe
    80004514:	0fc080e7          	jalr	252(ra) # 8000260c <_ZN3TCB7receiveEv>
                __asm__ volatile ("sd %0, 10*8(fp)"::"r"(retMess));
    80004518:	04a43823          	sd	a0,80(s0)
                break;
    8000451c:	3700006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                TCB::running->joinAll();
    80004520:	00011797          	auipc	a5,0x11
    80004524:	4a87b783          	ld	a5,1192(a5) # 800159c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004528:	0007b503          	ld	a0,0(a5)
    8000452c:	ffffe097          	auipc	ra,0xffffe
    80004530:	1e0080e7          	jalr	480(ra) # 8000270c <_ZN3TCB7joinAllEv>
                TCB::dispatch();
    80004534:	ffffd097          	auipc	ra,0xffffd
    80004538:	538080e7          	jalr	1336(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    8000453c:	3500006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(num));
    80004540:	05843503          	ld	a0,88(s0)
                TCB::setMaxThreads(num);
    80004544:	0005051b          	sext.w	a0,a0
    80004548:	ffffe097          	auipc	ra,0xffffe
    8000454c:	258080e7          	jalr	600(ra) # 800027a0 <_ZN3TCB13setMaxThreadsEj>
                break;
    80004550:	33c0006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                TCB::barrier_2();
    80004554:	ffffe097          	auipc	ra,0xffffe
    80004558:	360080e7          	jalr	864(ra) # 800028b4 <_ZN3TCB9barrier_2Ev>
                TCB::dispatch();
    8000455c:	ffffd097          	auipc	ra,0xffffd
    80004560:	510080e7          	jalr	1296(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    80004564:	3280006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
    80004568:	05843583          	ld	a1,88(s0)
                TCB::running->producer(id);
    8000456c:	0005859b          	sext.w	a1,a1
    80004570:	00011797          	auipc	a5,0x11
    80004574:	4587b783          	ld	a5,1112(a5) # 800159c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004578:	0007b503          	ld	a0,0(a5)
    8000457c:	ffffe097          	auipc	ra,0xffffe
    80004580:	4e4080e7          	jalr	1252(ra) # 80002a60 <_ZN3TCB8producerEi>
                TCB::dispatch();
    80004584:	ffffd097          	auipc	ra,0xffffd
    80004588:	4e8080e7          	jalr	1256(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    8000458c:	3000006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
    80004590:	05843583          	ld	a1,88(s0)
                TCB::running->consumer(id);
    80004594:	0005859b          	sext.w	a1,a1
    80004598:	00011797          	auipc	a5,0x11
    8000459c:	4307b783          	ld	a5,1072(a5) # 800159c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800045a0:	0007b503          	ld	a0,0(a5)
    800045a4:	ffffe097          	auipc	ra,0xffffe
    800045a8:	608080e7          	jalr	1544(ra) # 80002bac <_ZN3TCB8consumerEi>
                TCB::dispatch();
    800045ac:	ffffd097          	auipc	ra,0xffffd
    800045b0:	4c0080e7          	jalr	1216(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    800045b4:	2d80006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
    800045b8:	05843503          	ld	a0,88(s0)
                TCB::oxygen(id);
    800045bc:	0005051b          	sext.w	a0,a0
    800045c0:	fffff097          	auipc	ra,0xfffff
    800045c4:	9b4080e7          	jalr	-1612(ra) # 80002f74 <_ZN3TCB6oxygenEj>
                TCB::dispatch();
    800045c8:	ffffd097          	auipc	ra,0xffffd
    800045cc:	4a4080e7          	jalr	1188(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    800045d0:	2bc0006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
    800045d4:	05843503          	ld	a0,88(s0)
                TCB::hydrogen(id);
    800045d8:	0005051b          	sext.w	a0,a0
    800045dc:	fffff097          	auipc	ra,0xfffff
    800045e0:	b10080e7          	jalr	-1264(ra) # 800030ec <_ZN3TCB8hydrogenEj>
                TCB::dispatch();
    800045e4:	ffffd097          	auipc	ra,0xffffd
    800045e8:	488080e7          	jalr	1160(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    800045ec:	2a00006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
    800045f0:	05843503          	ld	a0,88(s0)
                TCB::savage(id);
    800045f4:	0005051b          	sext.w	a0,a0
    800045f8:	fffff097          	auipc	ra,0xfffff
    800045fc:	d18080e7          	jalr	-744(ra) # 80003310 <_ZN3TCB6savageEi>
                TCB::dispatch();
    80004600:	ffffd097          	auipc	ra,0xffffd
    80004604:	46c080e7          	jalr	1132(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    80004608:	2840006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                TCB::cook();
    8000460c:	fffff097          	auipc	ra,0xfffff
    80004610:	d9c080e7          	jalr	-612(ra) # 800033a8 <_ZN3TCB4cookEv>
                TCB::dispatch();
    80004614:	ffffd097          	auipc	ra,0xffffd
    80004618:	458080e7          	jalr	1112(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    8000461c:	2700006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
    80004620:	05843503          	ld	a0,88(s0)
                TCB::birdChild(id);
    80004624:	0005051b          	sext.w	a0,a0
    80004628:	fffff097          	auipc	ra,0xfffff
    8000462c:	088080e7          	jalr	136(ra) # 800036b0 <_ZN3TCB9birdChildEj>
                TCB::dispatch();
    80004630:	ffffd097          	auipc	ra,0xffffd
    80004634:	43c080e7          	jalr	1084(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    80004638:	2540006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
    8000463c:	05843503          	ld	a0,88(s0)
                TCB::birdParent(id);
    80004640:	0005051b          	sext.w	a0,a0
    80004644:	fffff097          	auipc	ra,0xfffff
    80004648:	138080e7          	jalr	312(ra) # 8000377c <_ZN3TCB10birdParentEj>
                TCB::dispatch();
    8000464c:	ffffd097          	auipc	ra,0xffffd
    80004650:	420080e7          	jalr	1056(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    80004654:	2380006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld %[i], 11*8(fp)":[i]"=r"(id));
    80004658:	05843503          	ld	a0,88(s0)
                TCB::honeybe(id);
    8000465c:	0005051b          	sext.w	a0,a0
    80004660:	fffff097          	auipc	ra,0xfffff
    80004664:	1f4080e7          	jalr	500(ra) # 80003854 <_ZN3TCB7honeybeEj>
                TCB::dispatch();
    80004668:	ffffd097          	auipc	ra,0xffffd
    8000466c:	404080e7          	jalr	1028(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    80004670:	21c0006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                TCB::meda();
    80004674:	fffff097          	auipc	ra,0xfffff
    80004678:	318080e7          	jalr	792(ra) # 8000398c <_ZN3TCB4medaEv>
                TCB::dispatch();
    8000467c:	ffffd097          	auipc	ra,0xffffd
    80004680:	3f0080e7          	jalr	1008(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    80004684:	2080006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile ("ld %[handle], 11*8(fp)" : [handle]"=r"(semHandlePtr));
    80004688:	05843503          	ld	a0,88(s0)
                __asm__ volatile ("ld %[init], 12*8(fp)" : [init]"=r"(in));
    8000468c:	06043783          	ld	a5,96(s0)
    80004690:	0007859b          	sext.w	a1,a5
                if (semHandlePtr != nullptr) {
    80004694:	00050e63          	beqz	a0,800046b0 <_ZN5Riscv20handleSupervisorTrapEv+0x3c8>
                    returnValue = semHandlePtr->waitN(in);
    80004698:	00001097          	auipc	ra,0x1
    8000469c:	988080e7          	jalr	-1656(ra) # 80005020 <_ZN11Semaphore_k5waitNEj>
                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
    800046a0:	04a43823          	sd	a0,80(s0)
                TCB::dispatch();
    800046a4:	ffffd097          	auipc	ra,0xffffd
    800046a8:	3c8080e7          	jalr	968(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    800046ac:	1e00006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                } else returnValue = -2;
    800046b0:	ffe00513          	li	a0,-2
    800046b4:	fedff06f          	j	800046a0 <_ZN5Riscv20handleSupervisorTrapEv+0x3b8>
                __asm__ volatile ("ld %[handle], 11*8(fp)" : [handle]"=r"(semHandlePtr));
    800046b8:	05843503          	ld	a0,88(s0)
                if (semHandlePtr != nullptr) {
    800046bc:	00050e63          	beqz	a0,800046d8 <_ZN5Riscv20handleSupervisorTrapEv+0x3f0>
                    returnValue = semHandlePtr->signalN();
    800046c0:	00001097          	auipc	ra,0x1
    800046c4:	9bc080e7          	jalr	-1604(ra) # 8000507c <_ZN11Semaphore_k7signalNEv>
                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
    800046c8:	04a43823          	sd	a0,80(s0)
                TCB::dispatch();
    800046cc:	ffffd097          	auipc	ra,0xffffd
    800046d0:	3a0080e7          	jalr	928(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    800046d4:	1b80006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                } else returnValue = -2;
    800046d8:	ffe00513          	li	a0,-2
    800046dc:	fedff06f          	j	800046c8 <_ZN5Riscv20handleSupervisorTrapEv+0x3e0>
                __asm__ volatile("ld %[handle],11*8(fp)":[handle]"=r"(modhandle));
    800046e0:	05843783          	ld	a5,88(s0)
        this->pinged = true;
    800046e4:	00100713          	li	a4,1
    800046e8:	08e78223          	sb	a4,132(a5)
                TCB::dispatch();
    800046ec:	ffffd097          	auipc	ra,0xffffd
    800046f0:	380080e7          	jalr	896(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    800046f4:	1980006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile ("ld %[handle], 11*8(fp)" : [handle]"=r"(semHandle));
    800046f8:	05843483          	ld	s1,88(s0)
                __asm__ volatile ("ld %[init], 12*8(fp)" : [init]"=r"(init));
    800046fc:	06043503          	ld	a0,96(s0)
                *semHandle = Semaphore_k::kreirajSemafor(init);
    80004700:	0005051b          	sext.w	a0,a0
    80004704:	00000097          	auipc	ra,0x0
    80004708:	5cc080e7          	jalr	1484(ra) # 80004cd0 <_ZN11Semaphore_k14kreirajSemaforEj>
    8000470c:	00a4b023          	sd	a0,0(s1)
                if (semHandle == nullptr) {
    80004710:	02048263          	beqz	s1,80004734 <_ZN5Riscv20handleSupervisorTrapEv+0x44c>
                    ret = 0;
    80004714:	00000793          	li	a5,0
                __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));
    80004718:	04f43823          	sd	a5,80(s0)
                __asm__ volatile("ld %[arg], 11*8(fp)": [arg] "=r"(semHandlePtr));
    8000471c:	05843503          	ld	a0,88(s0)
                if (semHandlePtr != nullptr) {
    80004720:	00050e63          	beqz	a0,8000473c <_ZN5Riscv20handleSupervisorTrapEv+0x454>
                    returnValue = semHandlePtr->close();
    80004724:	00000097          	auipc	ra,0x0
    80004728:	7fc080e7          	jalr	2044(ra) # 80004f20 <_ZN11Semaphore_k5closeEv>
                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
    8000472c:	04a43823          	sd	a0,80(s0)
                break;
    80004730:	15c0006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                    ret = -1;
    80004734:	fff00793          	li	a5,-1
    80004738:	fe1ff06f          	j	80004718 <_ZN5Riscv20handleSupervisorTrapEv+0x430>
                } else returnValue = -2;
    8000473c:	ffe00513          	li	a0,-2
    80004740:	fedff06f          	j	8000472c <_ZN5Riscv20handleSupervisorTrapEv+0x444>
                __asm__ volatile("ld %[arg], 11*8(fp)": [arg] "=r"(semHandlePtr));
    80004744:	05843503          	ld	a0,88(s0)
                if (semHandlePtr != nullptr) {
    80004748:	00050a63          	beqz	a0,8000475c <_ZN5Riscv20handleSupervisorTrapEv+0x474>
                    returnValue = semHandlePtr->wait();
    8000474c:	00000097          	auipc	ra,0x0
    80004750:	6c4080e7          	jalr	1732(ra) # 80004e10 <_ZN11Semaphore_k4waitEv>
                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
    80004754:	04a43823          	sd	a0,80(s0)
                break;
    80004758:	1340006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                } else returnValue = -2;
    8000475c:	ffe00513          	li	a0,-2
    80004760:	ff5ff06f          	j	80004754 <_ZN5Riscv20handleSupervisorTrapEv+0x46c>
                __asm__ volatile("ld %[arg], 11*8(fp)": [arg] "=r"(semHandlePtr));
    80004764:	05843503          	ld	a0,88(s0)
                if (semHandlePtr != nullptr) {
    80004768:	00050a63          	beqz	a0,8000477c <_ZN5Riscv20handleSupervisorTrapEv+0x494>
                    returnValue = semHandlePtr->signal();
    8000476c:	00000097          	auipc	ra,0x0
    80004770:	75c080e7          	jalr	1884(ra) # 80004ec8 <_ZN11Semaphore_k6signalEv>
                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
    80004774:	04a43823          	sd	a0,80(s0)
                break;
    80004778:	1140006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                } else returnValue = -2;
    8000477c:	ffe00513          	li	a0,-2
    80004780:	ff5ff06f          	j	80004774 <_ZN5Riscv20handleSupervisorTrapEv+0x48c>
                __asm__ volatile("ld %[arg], 11*8(fp)": [arg] "=r"(semHandlePtr));
    80004784:	05843503          	ld	a0,88(s0)
                if (semHandlePtr != nullptr) {
    80004788:	00050a63          	beqz	a0,8000479c <_ZN5Riscv20handleSupervisorTrapEv+0x4b4>
                    returnValue = semHandlePtr->trywait();
    8000478c:	00000097          	auipc	ra,0x0
    80004790:	6f8080e7          	jalr	1784(ra) # 80004e84 <_ZN11Semaphore_k7trywaitEv>
                __asm__ volatile("sd %0,10*8(fp)"::"r"(returnValue));
    80004794:	04a43823          	sd	a0,80(s0)
                break;
    80004798:	0f40006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                } else returnValue = -2;
    8000479c:	ffe00513          	li	a0,-2
    800047a0:	ff5ff06f          	j	80004794 <_ZN5Riscv20handleSupervisorTrapEv+0x4ac>
                char c=__getc();
    800047a4:	0000b097          	auipc	ra,0xb
    800047a8:	a14080e7          	jalr	-1516(ra) # 8000f1b8 <__getc>
                __asm__ volatile("sd %0,10*8(fp)"::"r"(c));
    800047ac:	04a43823          	sd	a0,80(s0)
                break;
    800047b0:	0dc0006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                __asm__ volatile("ld t2, 8*11(fp)");
    800047b4:	05843383          	ld	t2,88(s0)
                __asm__ volatile("mv %0, t2" : "=r" (ch));
    800047b8:	00038793          	mv	a5,t2
    800047bc:	faf43423          	sd	a5,-88(s0)
                __putc((char)ch);
    800047c0:	fa843503          	ld	a0,-88(s0)
    800047c4:	0ff57513          	andi	a0,a0,255
    800047c8:	0000b097          	auipc	ra,0xb
    800047cc:	9b4080e7          	jalr	-1612(ra) # 8000f17c <__putc>
                break;
    800047d0:	0bc0006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
                TCB::barrier();
    800047d4:	ffffe097          	auipc	ra,0xffffe
    800047d8:	c90080e7          	jalr	-880(ra) # 80002464 <_ZN3TCB7barrierEv>
                TCB::dispatch();
    800047dc:	ffffd097          	auipc	ra,0xffffd
    800047e0:	290080e7          	jalr	656(ra) # 80001a6c <_ZN3TCB8dispatchEv>
                break;
    800047e4:	0a80006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>
        console_handler();
    800047e8:	0000b097          	auipc	ra,0xb
    800047ec:	a08080e7          	jalr	-1528(ra) # 8000f1f0 <console_handler>
        w_sstatus(sstatus);
    800047f0:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800047f4:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800047f8:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800047fc:	14179073          	csrw	sepc,a5
        w_sstatus(sstatus);
    80004800:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80004804:	10079073          	csrw	sstatus,a5
}
    80004808:	0840006f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x5a4>


    else
    {

        printString("scause: ");
    8000480c:	0000c517          	auipc	a0,0xc
    80004810:	bc450513          	addi	a0,a0,-1084 # 800103d0 <CONSOLE_STATUS+0x3c0>
    80004814:	00003097          	auipc	ra,0x3
    80004818:	e98080e7          	jalr	-360(ra) # 800076ac <_Z11printStringPKc>
        printInt(scause);
    8000481c:	fd843503          	ld	a0,-40(s0)
    80004820:	00000613          	li	a2,0
    80004824:	00a00593          	li	a1,10
    80004828:	0005051b          	sext.w	a0,a0
    8000482c:	00003097          	auipc	ra,0x3
    80004830:	030080e7          	jalr	48(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80004834:	0000c517          	auipc	a0,0xc
    80004838:	1ac50513          	addi	a0,a0,428 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000483c:	00003097          	auipc	ra,0x3
    80004840:	e70080e7          	jalr	-400(ra) # 800076ac <_Z11printStringPKc>
        printString("sepc: ");
    80004844:	0000c517          	auipc	a0,0xc
    80004848:	b9c50513          	addi	a0,a0,-1124 # 800103e0 <CONSOLE_STATUS+0x3d0>
    8000484c:	00003097          	auipc	ra,0x3
    80004850:	e60080e7          	jalr	-416(ra) # 800076ac <_Z11printStringPKc>
        printInt(sepc,16,0);
    80004854:	fd043503          	ld	a0,-48(s0)
    80004858:	00000613          	li	a2,0
    8000485c:	01000593          	li	a1,16
    80004860:	0005051b          	sext.w	a0,a0
    80004864:	00003097          	auipc	ra,0x3
    80004868:	ff8080e7          	jalr	-8(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000486c:	0000c517          	auipc	a0,0xc
    80004870:	17450513          	addi	a0,a0,372 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80004874:	00003097          	auipc	ra,0x3
    80004878:	e38080e7          	jalr	-456(ra) # 800076ac <_Z11printStringPKc>
        //stavila sam praznu petlju
        //da mi u testu sedam
        //kad pukne, ne bi ispisivao
        //scause 2 petsto puta

        __asm__ volatile("li a0,0x5555");
    8000487c:	00005537          	lui	a0,0x5
    80004880:	5555051b          	addiw	a0,a0,1365
        __asm__ volatile("li a1,0x100000");
    80004884:	001005b7          	lui	a1,0x100
        __asm__ volatile("sw a0, 0(a1)");
    80004888:	00a5a023          	sw	a0,0(a1) # 100000 <_entry-0x7ff00000>
        //while(1);

    }
    w_sstatus(sstatus);
    8000488c:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80004890:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    80004894:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80004898:	14179073          	csrw	sepc,a5


}
    8000489c:	06813083          	ld	ra,104(sp)
    800048a0:	06013403          	ld	s0,96(sp)
    800048a4:	05813483          	ld	s1,88(sp)
    800048a8:	07010113          	addi	sp,sp,112
    800048ac:	00008067          	ret

00000000800048b0 <_Z41__static_initialization_and_destruction_0ii>:
void memcpy(const void *src, const void *dst, int len) {
    char *src1 = (char *) src;
    char *dst1 = (char *) dst;
    for (int i = 0; i < len; i++)
        dst1[i] = src1[i];
}
    800048b0:	ff010113          	addi	sp,sp,-16
    800048b4:	00813423          	sd	s0,8(sp)
    800048b8:	01010413          	addi	s0,sp,16
    800048bc:	00100793          	li	a5,1
    800048c0:	00f50863          	beq	a0,a5,800048d0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800048c4:	00813403          	ld	s0,8(sp)
    800048c8:	01010113          	addi	sp,sp,16
    800048cc:	00008067          	ret
    800048d0:	000107b7          	lui	a5,0x10
    800048d4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800048d8:	fef596e3          	bne	a1,a5,800048c4 <_Z41__static_initialization_and_destruction_0ii+0x14>
size_t memoryAllocator::slobodnaMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaHedera)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE ;
    800048dc:	00011797          	auipc	a5,0x11
    800048e0:	0f47b783          	ld	a5,244(a5) # 800159d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800048e4:	0007b783          	ld	a5,0(a5)
    800048e8:	00011717          	auipc	a4,0x11
    800048ec:	0c073703          	ld	a4,192(a4) # 800159a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800048f0:	00073703          	ld	a4,0(a4)
    800048f4:	40e787b3          	sub	a5,a5,a4
    800048f8:	00011717          	auipc	a4,0x11
    800048fc:	b5873703          	ld	a4,-1192(a4) # 80015450 <_ZN15memoryAllocator14velicinaHederaE>
    80004900:	40e787b3          	sub	a5,a5,a4
    80004904:	fc07f793          	andi	a5,a5,-64
    80004908:	00011717          	auipc	a4,0x11
    8000490c:	34870713          	addi	a4,a4,840 # 80015c50 <_ZN15memoryAllocator16slobodnaMemorijaE>
    80004910:	00f73023          	sd	a5,0(a4)
size_t memoryAllocator::maxKapacitetMemorije = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaHedera)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE ;
    80004914:	00f73423          	sd	a5,8(a4)
}
    80004918:	fadff06f          	j	800048c4 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000491c <_ZN15memoryAllocator4initEv>:
void memoryAllocator::init() {
    8000491c:	ff010113          	addi	sp,sp,-16
    80004920:	00813423          	sd	s0,8(sp)
    80004924:	01010413          	addi	s0,sp,16
    head =( BlockHeader*)(HEAP_START_ADDR);
    80004928:	00011597          	auipc	a1,0x11
    8000492c:	0805b583          	ld	a1,128(a1) # 800159a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80004930:	0005b703          	ld	a4,0(a1)
    80004934:	00011697          	auipc	a3,0x11
    80004938:	31c68693          	addi	a3,a3,796 # 80015c50 <_ZN15memoryAllocator16slobodnaMemorijaE>
    8000493c:	00e6b823          	sd	a4,16(a3)
    head->size = ((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) - velicinaHedera;;
    80004940:	00011517          	auipc	a0,0x11
    80004944:	09053503          	ld	a0,144(a0) # 800159d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80004948:	00053783          	ld	a5,0(a0)
    8000494c:	40e787b3          	sub	a5,a5,a4
    80004950:	00011617          	auipc	a2,0x11
    80004954:	b0060613          	addi	a2,a2,-1280 # 80015450 <_ZN15memoryAllocator14velicinaHederaE>
    80004958:	00063803          	ld	a6,0(a2)
    8000495c:	410787b3          	sub	a5,a5,a6
    80004960:	00f73423          	sd	a5,8(a4)
    head->next = nullptr;
    80004964:	00073023          	sd	zero,0(a4)
    slobodnaMemorija = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaHedera)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE ;
    80004968:	00053783          	ld	a5,0(a0)
    8000496c:	0005b703          	ld	a4,0(a1)
    80004970:	40e787b3          	sub	a5,a5,a4
    80004974:	00063703          	ld	a4,0(a2)
    80004978:	40e787b3          	sub	a5,a5,a4
    8000497c:	fc07f793          	andi	a5,a5,-64
    80004980:	00f6b023          	sd	a5,0(a3)
    maxKapacitetMemorije = (((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - velicinaHedera)/MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE ;
    80004984:	00f6b423          	sd	a5,8(a3)
}
    80004988:	00813403          	ld	s0,8(sp)
    8000498c:	01010113          	addi	sp,sp,16
    80004990:	00008067          	ret

0000000080004994 <_ZN15memoryAllocator9mem_allocEm>:
void* memoryAllocator::mem_alloc(size_t size) {
    80004994:	fe010113          	addi	sp,sp,-32
    80004998:	00113c23          	sd	ra,24(sp)
    8000499c:	00813823          	sd	s0,16(sp)
    800049a0:	00913423          	sd	s1,8(sp)
    800049a4:	02010413          	addi	s0,sp,32
    800049a8:	00050493          	mv	s1,a0
    if(!inicijalizovana){
    800049ac:	00011797          	auipc	a5,0x11
    800049b0:	2bc7c783          	lbu	a5,700(a5) # 80015c68 <_ZN15memoryAllocator15inicijalizovanaE>
    800049b4:	06078c63          	beqz	a5,80004a2c <_ZN15memoryAllocator9mem_allocEm+0x98>
    if (size == 0 || size > slobodnaMemorija) return nullptr;
    800049b8:	14048063          	beqz	s1,80004af8 <_ZN15memoryAllocator9mem_allocEm+0x164>
    800049bc:	00011797          	auipc	a5,0x11
    800049c0:	2947b783          	ld	a5,660(a5) # 80015c50 <_ZN15memoryAllocator16slobodnaMemorijaE>
    800049c4:	1297ee63          	bltu	a5,s1,80004b00 <_ZN15memoryAllocator9mem_allocEm+0x16c>
    if (size%MEM_BLOCK_SIZE) {
    800049c8:	03f4f793          	andi	a5,s1,63
    800049cc:	00078863          	beqz	a5,800049dc <_ZN15memoryAllocator9mem_allocEm+0x48>
        size=MEM_BLOCK_SIZE*(1+size/MEM_BLOCK_SIZE);
    800049d0:	0064d493          	srli	s1,s1,0x6
    800049d4:	00148493          	addi	s1,s1,1
    800049d8:	00649493          	slli	s1,s1,0x6
    if(TCB::running){
    800049dc:	00011797          	auipc	a5,0x11
    800049e0:	fec7b783          	ld	a5,-20(a5) # 800159c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800049e4:	0007b783          	ld	a5,0(a5)
    800049e8:	02078063          	beqz	a5,80004a08 <_ZN15memoryAllocator9mem_allocEm+0x74>
        TCB::running->incrementMemory((size % MEM_BLOCK_SIZE == 0) ?
    800049ec:	03f4f713          	andi	a4,s1,63
    800049f0:	04071a63          	bnez	a4,80004a44 <_ZN15memoryAllocator9mem_allocEm+0xb0>
                                      size / MEM_BLOCK_SIZE :
    800049f4:	0064d713          	srli	a4,s1,0x6
        TCB::running->incrementMemory((size % MEM_BLOCK_SIZE == 0) ?
    800049f8:	0007069b          	sext.w	a3,a4
        this->allocatedBlocks+=increment;
    800049fc:	0807a703          	lw	a4,128(a5)
    80004a00:	00d7073b          	addw	a4,a4,a3
    80004a04:	08e7a023          	sw	a4,128(a5)
    BlockHeader* curr = head;
    80004a08:	00011517          	auipc	a0,0x11
    80004a0c:	25853503          	ld	a0,600(a0) # 80015c60 <_ZN15memoryAllocator4headE>
    BlockHeader* prev = nullptr;
    80004a10:	00000713          	li	a4,0
    while (curr != nullptr) {
    80004a14:	0a050063          	beqz	a0,80004ab4 <_ZN15memoryAllocator9mem_allocEm+0x120>
        if (curr->size >= size) {
    80004a18:	00853783          	ld	a5,8(a0)
    80004a1c:	0297fa63          	bgeu	a5,s1,80004a50 <_ZN15memoryAllocator9mem_allocEm+0xbc>
        prev = curr;
    80004a20:	00050713          	mv	a4,a0
        curr = curr->next;
    80004a24:	00053503          	ld	a0,0(a0)
    while (curr != nullptr) {
    80004a28:	fedff06f          	j	80004a14 <_ZN15memoryAllocator9mem_allocEm+0x80>
        init();
    80004a2c:	00000097          	auipc	ra,0x0
    80004a30:	ef0080e7          	jalr	-272(ra) # 8000491c <_ZN15memoryAllocator4initEv>
        inicijalizovana=true;
    80004a34:	00100793          	li	a5,1
    80004a38:	00011717          	auipc	a4,0x11
    80004a3c:	22f70823          	sb	a5,560(a4) # 80015c68 <_ZN15memoryAllocator15inicijalizovanaE>
    80004a40:	f79ff06f          	j	800049b8 <_ZN15memoryAllocator9mem_allocEm+0x24>
                                      (1 + size / MEM_BLOCK_SIZE));
    80004a44:	0064d713          	srli	a4,s1,0x6
        TCB::running->incrementMemory((size % MEM_BLOCK_SIZE == 0) ?
    80004a48:	0017069b          	addiw	a3,a4,1
    80004a4c:	fb1ff06f          	j	800049fc <_ZN15memoryAllocator9mem_allocEm+0x68>
            size_t remainingSize = curr->size - size;
    80004a50:	409787b3          	sub	a5,a5,s1
            if (remainingSize >= sizeof(BlockHeader)) {
    80004a54:	00f00693          	li	a3,15
    80004a58:	06f6fe63          	bgeu	a3,a5,80004ad4 <_ZN15memoryAllocator9mem_allocEm+0x140>
                BlockHeader* newBlock = reinterpret_cast<BlockHeader*>(reinterpret_cast<char*>(curr) + size + velicinaHedera);
    80004a5c:	00011617          	auipc	a2,0x11
    80004a60:	9f463603          	ld	a2,-1548(a2) # 80015450 <_ZN15memoryAllocator14velicinaHederaE>
    80004a64:	009606b3          	add	a3,a2,s1
    80004a68:	00d506b3          	add	a3,a0,a3
                newBlock->size = remainingSize - velicinaHedera;
    80004a6c:	40c787b3          	sub	a5,a5,a2
    80004a70:	00f6b423          	sd	a5,8(a3)
                newBlock->next = curr->next;
    80004a74:	00053783          	ld	a5,0(a0)
    80004a78:	00f6b023          	sd	a5,0(a3)
                if (prev == nullptr) {
    80004a7c:	04070663          	beqz	a4,80004ac8 <_ZN15memoryAllocator9mem_allocEm+0x134>
                    prev->next = newBlock;
    80004a80:	00d73023          	sd	a3,0(a4)
                curr->size = size;
    80004a84:	00953423          	sd	s1,8(a0)
                curr->next = nullptr;
    80004a88:	00053023          	sd	zero,0(a0)
            slobodnaMemorija -= curr->size + velicinaHedera;
    80004a8c:	00853783          	ld	a5,8(a0)
    80004a90:	00011697          	auipc	a3,0x11
    80004a94:	9c06b683          	ld	a3,-1600(a3) # 80015450 <_ZN15memoryAllocator14velicinaHederaE>
    80004a98:	00d78733          	add	a4,a5,a3
    80004a9c:	00011617          	auipc	a2,0x11
    80004aa0:	1b460613          	addi	a2,a2,436 # 80015c50 <_ZN15memoryAllocator16slobodnaMemorijaE>
    80004aa4:	00063783          	ld	a5,0(a2)
    80004aa8:	40e787b3          	sub	a5,a5,a4
    80004aac:	00f63023          	sd	a5,0(a2)
            return reinterpret_cast<void*>(reinterpret_cast<char*>(curr) + velicinaHedera);
    80004ab0:	00d50533          	add	a0,a0,a3
}
    80004ab4:	01813083          	ld	ra,24(sp)
    80004ab8:	01013403          	ld	s0,16(sp)
    80004abc:	00813483          	ld	s1,8(sp)
    80004ac0:	02010113          	addi	sp,sp,32
    80004ac4:	00008067          	ret
                    head = newBlock;
    80004ac8:	00011797          	auipc	a5,0x11
    80004acc:	18d7bc23          	sd	a3,408(a5) # 80015c60 <_ZN15memoryAllocator4headE>
    80004ad0:	fb5ff06f          	j	80004a84 <_ZN15memoryAllocator9mem_allocEm+0xf0>
                if (prev == nullptr) {
    80004ad4:	00070a63          	beqz	a4,80004ae8 <_ZN15memoryAllocator9mem_allocEm+0x154>
                    prev->next = curr->next;
    80004ad8:	00053783          	ld	a5,0(a0)
    80004adc:	00f73023          	sd	a5,0(a4)
                curr->next = nullptr;
    80004ae0:	00053023          	sd	zero,0(a0)
    80004ae4:	fa9ff06f          	j	80004a8c <_ZN15memoryAllocator9mem_allocEm+0xf8>
                    head = curr->next;
    80004ae8:	00053783          	ld	a5,0(a0)
    80004aec:	00011717          	auipc	a4,0x11
    80004af0:	16f73a23          	sd	a5,372(a4) # 80015c60 <_ZN15memoryAllocator4headE>
    80004af4:	fedff06f          	j	80004ae0 <_ZN15memoryAllocator9mem_allocEm+0x14c>
    if (size == 0 || size > slobodnaMemorija) return nullptr;
    80004af8:	00000513          	li	a0,0
    80004afc:	fb9ff06f          	j	80004ab4 <_ZN15memoryAllocator9mem_allocEm+0x120>
    80004b00:	00000513          	li	a0,0
    80004b04:	fb1ff06f          	j	80004ab4 <_ZN15memoryAllocator9mem_allocEm+0x120>

0000000080004b08 <_ZN15memoryAllocator15pokusajDaSpojisEPNS_11BlockHeaderE>:
bool memoryAllocator::pokusajDaSpojis(BlockHeader* left) {
    80004b08:	ff010113          	addi	sp,sp,-16
    80004b0c:	00813423          	sd	s0,8(sp)
    80004b10:	01010413          	addi	s0,sp,16
    if(left== nullptr)return false;
    80004b14:	04050663          	beqz	a0,80004b60 <_ZN15memoryAllocator15pokusajDaSpojisEPNS_11BlockHeaderE+0x58>
    BlockHeader* right = left->next;
    80004b18:	00053783          	ld	a5,0(a0)
    if(right== nullptr)return false;
    80004b1c:	04078663          	beqz	a5,80004b68 <_ZN15memoryAllocator15pokusajDaSpojisEPNS_11BlockHeaderE+0x60>
    if((char*)left + left->size + sizeof(BlockHeader) != (char*)right)
    80004b20:	00853703          	ld	a4,8(a0)
    80004b24:	01070693          	addi	a3,a4,16
    80004b28:	00d506b3          	add	a3,a0,a3
    80004b2c:	00f68a63          	beq	a3,a5,80004b40 <_ZN15memoryAllocator15pokusajDaSpojisEPNS_11BlockHeaderE+0x38>
        return false;
    80004b30:	00000513          	li	a0,0
}
    80004b34:	00813403          	ld	s0,8(sp)
    80004b38:	01010113          	addi	sp,sp,16
    80004b3c:	00008067          	ret
    BlockHeader* rightright = right->next;
    80004b40:	0007b683          	ld	a3,0(a5)
    left->size += right->size + sizeof(BlockHeader);
    80004b44:	0087b783          	ld	a5,8(a5)
    80004b48:	00f70733          	add	a4,a4,a5
    80004b4c:	01070713          	addi	a4,a4,16
    80004b50:	00e53423          	sd	a4,8(a0)
    left->next = rightright;
    80004b54:	00d53023          	sd	a3,0(a0)
    return true;
    80004b58:	00100513          	li	a0,1
    80004b5c:	fd9ff06f          	j	80004b34 <_ZN15memoryAllocator15pokusajDaSpojisEPNS_11BlockHeaderE+0x2c>
    if(left== nullptr)return false;
    80004b60:	00000513          	li	a0,0
    80004b64:	fd1ff06f          	j	80004b34 <_ZN15memoryAllocator15pokusajDaSpojisEPNS_11BlockHeaderE+0x2c>
    if(right== nullptr)return false;
    80004b68:	00000513          	li	a0,0
    80004b6c:	fc9ff06f          	j	80004b34 <_ZN15memoryAllocator15pokusajDaSpojisEPNS_11BlockHeaderE+0x2c>

0000000080004b70 <_ZN15memoryAllocator8mem_freeEPv>:
    if (!ptr) {
    80004b70:	0c050a63          	beqz	a0,80004c44 <_ZN15memoryAllocator8mem_freeEPv+0xd4>
int memoryAllocator::mem_free(void* ptr) {
    80004b74:	fe010113          	addi	sp,sp,-32
    80004b78:	00113c23          	sd	ra,24(sp)
    80004b7c:	00813823          	sd	s0,16(sp)
    80004b80:	00913423          	sd	s1,8(sp)
    80004b84:	01213023          	sd	s2,0(sp)
    80004b88:	02010413          	addi	s0,sp,32
    BlockHeader* freeBlock = reinterpret_cast<BlockHeader*>(reinterpret_cast<char*>(ptr) - velicinaHedera);
    80004b8c:	00011497          	auipc	s1,0x11
    80004b90:	8c44b483          	ld	s1,-1852(s1) # 80015450 <_ZN15memoryAllocator14velicinaHederaE>
    80004b94:	409504b3          	sub	s1,a0,s1
    if (freeBlock->size % MEM_BLOCK_SIZE != 0 || freeBlock->size == 0 || freeBlock->next != nullptr) {
    80004b98:	0084b783          	ld	a5,8(s1)
    80004b9c:	03f7f713          	andi	a4,a5,63
    80004ba0:	0a071663          	bnez	a4,80004c4c <_ZN15memoryAllocator8mem_freeEPv+0xdc>
    80004ba4:	0a078863          	beqz	a5,80004c54 <_ZN15memoryAllocator8mem_freeEPv+0xe4>
    80004ba8:	0004b903          	ld	s2,0(s1)
    80004bac:	0a091863          	bnez	s2,80004c5c <_ZN15memoryAllocator8mem_freeEPv+0xec>
    BlockHeader* curr = head;
    80004bb0:	00011797          	auipc	a5,0x11
    80004bb4:	0b07b783          	ld	a5,176(a5) # 80015c60 <_ZN15memoryAllocator4headE>
    while (curr && curr < freeBlock) {
    80004bb8:	00078a63          	beqz	a5,80004bcc <_ZN15memoryAllocator8mem_freeEPv+0x5c>
    80004bbc:	0097f863          	bgeu	a5,s1,80004bcc <_ZN15memoryAllocator8mem_freeEPv+0x5c>
        prev = curr;
    80004bc0:	00078913          	mv	s2,a5
        curr = curr->next;
    80004bc4:	0007b783          	ld	a5,0(a5)
    while (curr && curr < freeBlock) {
    80004bc8:	ff1ff06f          	j	80004bb8 <_ZN15memoryAllocator8mem_freeEPv+0x48>
    if (!prev) {
    80004bcc:	06090663          	beqz	s2,80004c38 <_ZN15memoryAllocator8mem_freeEPv+0xc8>
        prev->next = freeBlock;
    80004bd0:	00993023          	sd	s1,0(s2)
    freeBlock->next = curr;
    80004bd4:	00f4b023          	sd	a5,0(s1)
    while(pokusajDaSpojis(freeBlock));
    80004bd8:	00048513          	mv	a0,s1
    80004bdc:	00000097          	auipc	ra,0x0
    80004be0:	f2c080e7          	jalr	-212(ra) # 80004b08 <_ZN15memoryAllocator15pokusajDaSpojisEPNS_11BlockHeaderE>
    80004be4:	fe051ae3          	bnez	a0,80004bd8 <_ZN15memoryAllocator8mem_freeEPv+0x68>
    if(prev)
    80004be8:	00090863          	beqz	s2,80004bf8 <_ZN15memoryAllocator8mem_freeEPv+0x88>
        if (pokusajDaSpojis(prev));
    80004bec:	00090513          	mv	a0,s2
    80004bf0:	00000097          	auipc	ra,0x0
    80004bf4:	f18080e7          	jalr	-232(ra) # 80004b08 <_ZN15memoryAllocator15pokusajDaSpojisEPNS_11BlockHeaderE>
    slobodnaMemorija += freeBlock->size + velicinaHedera;
    80004bf8:	0084b783          	ld	a5,8(s1)
    80004bfc:	00011717          	auipc	a4,0x11
    80004c00:	85473703          	ld	a4,-1964(a4) # 80015450 <_ZN15memoryAllocator14velicinaHederaE>
    80004c04:	00e78733          	add	a4,a5,a4
    80004c08:	00011697          	auipc	a3,0x11
    80004c0c:	04868693          	addi	a3,a3,72 # 80015c50 <_ZN15memoryAllocator16slobodnaMemorijaE>
    80004c10:	0006b783          	ld	a5,0(a3)
    80004c14:	00e787b3          	add	a5,a5,a4
    80004c18:	00f6b023          	sd	a5,0(a3)
    return 0; // Uspeh
    80004c1c:	00000513          	li	a0,0
}
    80004c20:	01813083          	ld	ra,24(sp)
    80004c24:	01013403          	ld	s0,16(sp)
    80004c28:	00813483          	ld	s1,8(sp)
    80004c2c:	00013903          	ld	s2,0(sp)
    80004c30:	02010113          	addi	sp,sp,32
    80004c34:	00008067          	ret
        head = freeBlock;
    80004c38:	00011717          	auipc	a4,0x11
    80004c3c:	02973423          	sd	s1,40(a4) # 80015c60 <_ZN15memoryAllocator4headE>
    80004c40:	f95ff06f          	j	80004bd4 <_ZN15memoryAllocator8mem_freeEPv+0x64>
        return -1; // Nevalidna adresa, ne moze se osloboditi nesto sto ne postoji
    80004c44:	fff00513          	li	a0,-1
}
    80004c48:	00008067          	ret
        return -1; // Nevalidan blok ili već oslobođen, ako nije poravnat onda nije ni blok, ovo trece - hoce li se ikad desiti?
    80004c4c:	fff00513          	li	a0,-1
    80004c50:	fd1ff06f          	j	80004c20 <_ZN15memoryAllocator8mem_freeEPv+0xb0>
    80004c54:	fff00513          	li	a0,-1
    80004c58:	fc9ff06f          	j	80004c20 <_ZN15memoryAllocator8mem_freeEPv+0xb0>
    80004c5c:	fff00513          	li	a0,-1
    80004c60:	fc1ff06f          	j	80004c20 <_ZN15memoryAllocator8mem_freeEPv+0xb0>

0000000080004c64 <_Z6memcpyPKvS0_i>:
void memcpy(const void *src, const void *dst, int len) {
    80004c64:	ff010113          	addi	sp,sp,-16
    80004c68:	00813423          	sd	s0,8(sp)
    80004c6c:	01010413          	addi	s0,sp,16
    for (int i = 0; i < len; i++)
    80004c70:	00000793          	li	a5,0
    80004c74:	00c7de63          	bge	a5,a2,80004c90 <_Z6memcpyPKvS0_i+0x2c>
        dst1[i] = src1[i];
    80004c78:	00f58733          	add	a4,a1,a5
    80004c7c:	00f506b3          	add	a3,a0,a5
    80004c80:	0006c683          	lbu	a3,0(a3)
    80004c84:	00d70023          	sb	a3,0(a4)
    for (int i = 0; i < len; i++)
    80004c88:	0017879b          	addiw	a5,a5,1
    80004c8c:	fe9ff06f          	j	80004c74 <_Z6memcpyPKvS0_i+0x10>
}
    80004c90:	00813403          	ld	s0,8(sp)
    80004c94:	01010113          	addi	sp,sp,16
    80004c98:	00008067          	ret

0000000080004c9c <_GLOBAL__sub_I__ZN15memoryAllocator4headE>:
    80004c9c:	ff010113          	addi	sp,sp,-16
    80004ca0:	00113423          	sd	ra,8(sp)
    80004ca4:	00813023          	sd	s0,0(sp)
    80004ca8:	01010413          	addi	s0,sp,16
    80004cac:	000105b7          	lui	a1,0x10
    80004cb0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80004cb4:	00100513          	li	a0,1
    80004cb8:	00000097          	auipc	ra,0x0
    80004cbc:	bf8080e7          	jalr	-1032(ra) # 800048b0 <_Z41__static_initialization_and_destruction_0ii>
    80004cc0:	00813083          	ld	ra,8(sp)
    80004cc4:	00013403          	ld	s0,0(sp)
    80004cc8:	01010113          	addi	sp,sp,16
    80004ccc:	00008067          	ret

0000000080004cd0 <_ZN11Semaphore_k14kreirajSemaforEj>:
#include "../h/Semaphore_k.hpp"
#include "../h/syscall_c.h"
#include "../test/printing.hpp"

//ovo mi treba za sem_open
Semaphore_k *Semaphore_k::kreirajSemafor(unsigned int init) {
    80004cd0:	fe010113          	addi	sp,sp,-32
    80004cd4:	00113c23          	sd	ra,24(sp)
    80004cd8:	00813823          	sd	s0,16(sp)
    80004cdc:	00913423          	sd	s1,8(sp)
    80004ce0:	02010413          	addi	s0,sp,32
    80004ce4:	00050493          	mv	s1,a0
        return memoryAllocator::mem_alloc(size);
    80004ce8:	01800513          	li	a0,24
    80004cec:	00000097          	auipc	ra,0x0
    80004cf0:	ca8080e7          	jalr	-856(ra) # 80004994 <_ZN15memoryAllocator9mem_allocEm>
    Semaphore_k(unsigned init = 0):closed(false),value(init){
    80004cf4:	00050023          	sb	zero,0(a0)
    80004cf8:	00952223          	sw	s1,4(a0)
    80004cfc:	00053423          	sd	zero,8(a0)
    80004d00:	00053823          	sd	zero,16(a0)
    return new Semaphore_k(init);
}
    80004d04:	01813083          	ld	ra,24(sp)
    80004d08:	01013403          	ld	s0,16(sp)
    80004d0c:	00813483          	ld	s1,8(sp)
    80004d10:	02010113          	addi	sp,sp,32
    80004d14:	00008067          	ret

0000000080004d18 <_ZN11Semaphore_k7deblockEv>:

//deblock i block pozivam u signal i wait
//slicno kao u skolskom jezgru (knjiga str. 273)
//inicijalizujes sem sa unsigned, a interna semaforska
//promenljiva moze value moze biti negativna
void Semaphore_k::deblock() {
    80004d18:	fe010113          	addi	sp,sp,-32
    80004d1c:	00113c23          	sd	ra,24(sp)
    80004d20:	00813823          	sd	s0,16(sp)
    80004d24:	00913423          	sd	s1,8(sp)
    80004d28:	02010413          	addi	s0,sp,32
    80004d2c:	00050793          	mv	a5,a0
        if (!head) { return 0; }
    80004d30:	00853503          	ld	a0,8(a0)
    80004d34:	04050463          	beqz	a0,80004d7c <_ZN11Semaphore_k7deblockEv+0x64>
        head = head->next;
    80004d38:	00853703          	ld	a4,8(a0)
    80004d3c:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80004d40:	02070a63          	beqz	a4,80004d74 <_ZN11Semaphore_k7deblockEv+0x5c>
        T *ret = elem->data;
    80004d44:	00053483          	ld	s1,0(a0)
        delete elem;
    80004d48:	fffff097          	auipc	ra,0xfffff
    80004d4c:	d84080e7          	jalr	-636(ra) # 80003acc <_ZdlPv>
    void setBlocked(bool value) { this->blocked = value; }
    80004d50:	020480a3          	sb	zero,33(s1)


    TCB* tcb = blocked.removeFirst();
    tcb->setBlocked(false);

    Scheduler::put(tcb);
    80004d54:	00048513          	mv	a0,s1
    80004d58:	00000097          	auipc	ra,0x0
    80004d5c:	43c080e7          	jalr	1084(ra) # 80005194 <_ZN9Scheduler3putEP3TCB>
    //printString("Jedna nit deblokirana\n");
}
    80004d60:	01813083          	ld	ra,24(sp)
    80004d64:	01013403          	ld	s0,16(sp)
    80004d68:	00813483          	ld	s1,8(sp)
    80004d6c:	02010113          	addi	sp,sp,32
    80004d70:	00008067          	ret
        if (!head) { tail = 0; }
    80004d74:	0007b823          	sd	zero,16(a5)
    80004d78:	fcdff06f          	j	80004d44 <_ZN11Semaphore_k7deblockEv+0x2c>
        if (!head) { return 0; }
    80004d7c:	00050493          	mv	s1,a0
    80004d80:	fd1ff06f          	j	80004d50 <_ZN11Semaphore_k7deblockEv+0x38>

0000000080004d84 <_ZN11Semaphore_k5blockEv>:


void Semaphore_k::block() {
    80004d84:	fe010113          	addi	sp,sp,-32
    80004d88:	00113c23          	sd	ra,24(sp)
    80004d8c:	00813823          	sd	s0,16(sp)
    80004d90:	00913423          	sd	s1,8(sp)
    80004d94:	01213023          	sd	s2,0(sp)
    80004d98:	02010413          	addi	s0,sp,32
    80004d9c:	00050493          	mv	s1,a0
    blocked.addLast(TCB::running);
    80004da0:	00011797          	auipc	a5,0x11
    80004da4:	c287b783          	ld	a5,-984(a5) # 800159c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004da8:	0007b903          	ld	s2,0(a5)
        Elem *elem = new Elem(data, 0);
    80004dac:	01000513          	li	a0,16
    80004db0:	fffff097          	auipc	ra,0xfffff
    80004db4:	ccc080e7          	jalr	-820(ra) # 80003a7c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80004db8:	01253023          	sd	s2,0(a0)
    80004dbc:	00053423          	sd	zero,8(a0)
        if (tail)
    80004dc0:	0104b783          	ld	a5,16(s1)
    80004dc4:	04078063          	beqz	a5,80004e04 <_ZN11Semaphore_k5blockEv+0x80>
            tail->next = elem;
    80004dc8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80004dcc:	00a4b823          	sd	a0,16(s1)
    TCB::running->setBlocked(true);
    80004dd0:	00011797          	auipc	a5,0x11
    80004dd4:	bf87b783          	ld	a5,-1032(a5) # 800159c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004dd8:	0007b783          	ld	a5,0(a5)
    80004ddc:	00100713          	li	a4,1
    80004de0:	02e780a3          	sb	a4,33(a5)
    thread_dispatch();
    80004de4:	ffffc097          	auipc	ra,0xffffc
    80004de8:	574080e7          	jalr	1396(ra) # 80001358 <_Z15thread_dispatchv>
}
    80004dec:	01813083          	ld	ra,24(sp)
    80004df0:	01013403          	ld	s0,16(sp)
    80004df4:	00813483          	ld	s1,8(sp)
    80004df8:	00013903          	ld	s2,0(sp)
    80004dfc:	02010113          	addi	sp,sp,32
    80004e00:	00008067          	ret
            head = tail = elem;
    80004e04:	00a4b823          	sd	a0,16(s1)
    80004e08:	00a4b423          	sd	a0,8(s1)
    80004e0c:	fc5ff06f          	j	80004dd0 <_ZN11Semaphore_k5blockEv+0x4c>

0000000080004e10 <_ZN11Semaphore_k4waitEv>:



int Semaphore_k::wait() {

    if(closed) {
    80004e10:	00054783          	lbu	a5,0(a0)
    80004e14:	06079063          	bnez	a5,80004e74 <_ZN11Semaphore_k4waitEv+0x64>
int Semaphore_k::wait() {
    80004e18:	fe010113          	addi	sp,sp,-32
    80004e1c:	00113c23          	sd	ra,24(sp)
    80004e20:	00813823          	sd	s0,16(sp)
    80004e24:	00913423          	sd	s1,8(sp)
    80004e28:	02010413          	addi	s0,sp,32
    80004e2c:	00050493          	mv	s1,a0
        return -1;
    }

    if(--value < 0) {
    80004e30:	00452783          	lw	a5,4(a0)
    80004e34:	fff7879b          	addiw	a5,a5,-1
    80004e38:	00f52223          	sw	a5,4(a0)
    80004e3c:	02079713          	slli	a4,a5,0x20
    80004e40:	00074e63          	bltz	a4,80004e5c <_ZN11Semaphore_k4waitEv+0x4c>
            return -1;
        }

    }

    return 0;
    80004e44:	00000513          	li	a0,0
}
    80004e48:	01813083          	ld	ra,24(sp)
    80004e4c:	01013403          	ld	s0,16(sp)
    80004e50:	00813483          	ld	s1,8(sp)
    80004e54:	02010113          	addi	sp,sp,32
    80004e58:	00008067          	ret
        block();
    80004e5c:	00000097          	auipc	ra,0x0
    80004e60:	f28080e7          	jalr	-216(ra) # 80004d84 <_ZN11Semaphore_k5blockEv>
        if(closed) {
    80004e64:	0004c783          	lbu	a5,0(s1)
    80004e68:	00079a63          	bnez	a5,80004e7c <_ZN11Semaphore_k4waitEv+0x6c>
    return 0;
    80004e6c:	00000513          	li	a0,0
    80004e70:	fd9ff06f          	j	80004e48 <_ZN11Semaphore_k4waitEv+0x38>
        return -1;
    80004e74:	fff00513          	li	a0,-1
}
    80004e78:	00008067          	ret
            return -1;
    80004e7c:	fff00513          	li	a0,-1
    80004e80:	fc9ff06f          	j	80004e48 <_ZN11Semaphore_k4waitEv+0x38>

0000000080004e84 <_ZN11Semaphore_k7trywaitEv>:


int Semaphore_k::trywait() {
    80004e84:	ff010113          	addi	sp,sp,-16
    80004e88:	00813423          	sd	s0,8(sp)
    80004e8c:	01010413          	addi	s0,sp,16
    //U slučaju zaključavanja semafora vraća 0,
    if (closed) {
    80004e90:	00054783          	lbu	a5,0(a0)
    80004e94:	02079263          	bnez	a5,80004eb8 <_ZN11Semaphore_k7trywaitEv+0x34>
        return 0;
    }

    //u slučaju neuspeha
    //vraća negativnu vrednost (kod greške)
    if (value <= 0) {
    80004e98:	00452783          	lw	a5,4(a0)
    80004e9c:	02f05263          	blez	a5,80004ec0 <_ZN11Semaphore_k7trywaitEv+0x3c>
        return -1; // Semafor nije dostupan, odustajemo od čekanja
    }
    //mogu da umnajim kad je value>0
    --value;
    80004ea0:	fff7879b          	addiw	a5,a5,-1
    80004ea4:	00f52223          	sw	a5,4(a0)

    //u
    //slučaju kada semafor nije zaključan 1
    return 1;
    80004ea8:	00100513          	li	a0,1

}
    80004eac:	00813403          	ld	s0,8(sp)
    80004eb0:	01010113          	addi	sp,sp,16
    80004eb4:	00008067          	ret
        return 0;
    80004eb8:	00000513          	li	a0,0
    80004ebc:	ff1ff06f          	j	80004eac <_ZN11Semaphore_k7trywaitEv+0x28>
        return -1; // Semafor nije dostupan, odustajemo od čekanja
    80004ec0:	fff00513          	li	a0,-1
    80004ec4:	fe9ff06f          	j	80004eac <_ZN11Semaphore_k7trywaitEv+0x28>

0000000080004ec8 <_ZN11Semaphore_k6signalEv>:

int Semaphore_k::signal() {

    if(closed) {
    80004ec8:	00054783          	lbu	a5,0(a0)
    80004ecc:	04079663          	bnez	a5,80004f18 <_ZN11Semaphore_k6signalEv+0x50>
        return -1;
    }



    if(++value <= 0) {
    80004ed0:	00452783          	lw	a5,4(a0)
    80004ed4:	0017879b          	addiw	a5,a5,1
    80004ed8:	0007871b          	sext.w	a4,a5
    80004edc:	00f52223          	sw	a5,4(a0)
    80004ee0:	00e05663          	blez	a4,80004eec <_ZN11Semaphore_k6signalEv+0x24>



    }

    return 0;
    80004ee4:	00000513          	li	a0,0

}
    80004ee8:	00008067          	ret
int Semaphore_k::signal() {
    80004eec:	ff010113          	addi	sp,sp,-16
    80004ef0:	00113423          	sd	ra,8(sp)
    80004ef4:	00813023          	sd	s0,0(sp)
    80004ef8:	01010413          	addi	s0,sp,16
        deblock();
    80004efc:	00000097          	auipc	ra,0x0
    80004f00:	e1c080e7          	jalr	-484(ra) # 80004d18 <_ZN11Semaphore_k7deblockEv>
    return 0;
    80004f04:	00000513          	li	a0,0
}
    80004f08:	00813083          	ld	ra,8(sp)
    80004f0c:	00013403          	ld	s0,0(sp)
    80004f10:	01010113          	addi	sp,sp,16
    80004f14:	00008067          	ret
        return -1;
    80004f18:	fff00513          	li	a0,-1
    80004f1c:	00008067          	ret

0000000080004f20 <_ZN11Semaphore_k5closeEv>:



int Semaphore_k::close() {

    if (closed) {
    80004f20:	00054783          	lbu	a5,0(a0)
    80004f24:	08079463          	bnez	a5,80004fac <_ZN11Semaphore_k5closeEv+0x8c>
int Semaphore_k::close() {
    80004f28:	fe010113          	addi	sp,sp,-32
    80004f2c:	00113c23          	sd	ra,24(sp)
    80004f30:	00813823          	sd	s0,16(sp)
    80004f34:	00913423          	sd	s1,8(sp)
    80004f38:	02010413          	addi	s0,sp,32
    80004f3c:	00050493          	mv	s1,a0
        return -1;
    }

    closed = true;
    80004f40:	00100793          	li	a5,1
    80004f44:	00f50023          	sb	a5,0(a0)
        if (!head) { return 0; }
    80004f48:	00853783          	ld	a5,8(a0)
    80004f4c:	06078463          	beqz	a5,80004fb4 <_ZN11Semaphore_k5closeEv+0x94>
        return head->data;
    80004f50:	0007b783          	ld	a5,0(a5)

    //odblokira sve niti
    if (blocked.peekFirst() != nullptr) {
    80004f54:	00079c63          	bnez	a5,80004f6c <_ZN11Semaphore_k5closeEv+0x4c>
        }
    }



    return 0;
    80004f58:	00000513          	li	a0,0
    80004f5c:	0640006f          	j	80004fc0 <_ZN11Semaphore_k5closeEv+0xa0>
        if (!head) { tail = 0; }
    80004f60:	0004b823          	sd	zero,16(s1)
        delete elem;
    80004f64:	fffff097          	auipc	ra,0xfffff
    80004f68:	b68080e7          	jalr	-1176(ra) # 80003acc <_ZdlPv>
        if (!head) { return 0; }
    80004f6c:	0084b783          	ld	a5,8(s1)
    80004f70:	04078663          	beqz	a5,80004fbc <_ZN11Semaphore_k5closeEv+0x9c>
        return head->data;
    80004f74:	0007b783          	ld	a5,0(a5)
        while (blocked.peekFirst()) {
    80004f78:	04078e63          	beqz	a5,80004fd4 <_ZN11Semaphore_k5closeEv+0xb4>
    80004f7c:	020780a3          	sb	zero,33(a5)
        if (!head) { return 0; }
    80004f80:	0084b503          	ld	a0,8(s1)
    80004f84:	00050463          	beqz	a0,80004f8c <_ZN11Semaphore_k5closeEv+0x6c>
        return head->data;
    80004f88:	00053503          	ld	a0,0(a0)
            Scheduler::put(blocked.peekFirst());
    80004f8c:	00000097          	auipc	ra,0x0
    80004f90:	208080e7          	jalr	520(ra) # 80005194 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80004f94:	0084b503          	ld	a0,8(s1)
    80004f98:	fc050ae3          	beqz	a0,80004f6c <_ZN11Semaphore_k5closeEv+0x4c>
        head = head->next;
    80004f9c:	00853783          	ld	a5,8(a0)
    80004fa0:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80004fa4:	fc0790e3          	bnez	a5,80004f64 <_ZN11Semaphore_k5closeEv+0x44>
    80004fa8:	fb9ff06f          	j	80004f60 <_ZN11Semaphore_k5closeEv+0x40>
        return -1;
    80004fac:	fff00513          	li	a0,-1
}
    80004fb0:	00008067          	ret
    return 0;
    80004fb4:	00000513          	li	a0,0
    80004fb8:	0080006f          	j	80004fc0 <_ZN11Semaphore_k5closeEv+0xa0>
    80004fbc:	00000513          	li	a0,0
}
    80004fc0:	01813083          	ld	ra,24(sp)
    80004fc4:	01013403          	ld	s0,16(sp)
    80004fc8:	00813483          	ld	s1,8(sp)
    80004fcc:	02010113          	addi	sp,sp,32
    80004fd0:	00008067          	ret
    return 0;
    80004fd4:	00000513          	li	a0,0
    80004fd8:	fe9ff06f          	j	80004fc0 <_ZN11Semaphore_k5closeEv+0xa0>

0000000080004fdc <_ZN11Semaphore_k9timedwaitEm>:

//nisam radila asinhronu
int Semaphore_k::timedwait(time_t timeout) {
    80004fdc:	ff010113          	addi	sp,sp,-16
    80004fe0:	00813423          	sd	s0,8(sp)
    80004fe4:	01010413          	addi	s0,sp,16
    return 0;
}
    80004fe8:	00000513          	li	a0,0
    80004fec:	00813403          	ld	s0,8(sp)
    80004ff0:	01010113          	addi	sp,sp,16
    80004ff4:	00008067          	ret

0000000080004ff8 <_ZN11Semaphore_kD1Ev>:

Semaphore_k::~Semaphore_k() {
    80004ff8:	ff010113          	addi	sp,sp,-16
    80004ffc:	00113423          	sd	ra,8(sp)
    80005000:	00813023          	sd	s0,0(sp)
    80005004:	01010413          	addi	s0,sp,16
    close();
    80005008:	00000097          	auipc	ra,0x0
    8000500c:	f18080e7          	jalr	-232(ra) # 80004f20 <_ZN11Semaphore_k5closeEv>
}
    80005010:	00813083          	ld	ra,8(sp)
    80005014:	00013403          	ld	s0,0(sp)
    80005018:	01010113          	addi	sp,sp,16
    8000501c:	00008067          	ret

0000000080005020 <_ZN11Semaphore_k5waitNEj>:

int Semaphore_k::waitN(unsigned int n) {
    value-=n;
    80005020:	00452783          	lw	a5,4(a0)
    80005024:	40b785bb          	subw	a1,a5,a1
    80005028:	00b52223          	sw	a1,4(a0)
    //printInt(value);
    //printString("\n");
    if(value<0){
    8000502c:	02059793          	slli	a5,a1,0x20
    80005030:	0007c663          	bltz	a5,8000503c <_ZN11Semaphore_k5waitNEj+0x1c>
        value=0;
        block();
    }

    return 0;
}
    80005034:	00000513          	li	a0,0
    80005038:	00008067          	ret
int Semaphore_k::waitN(unsigned int n) {
    8000503c:	ff010113          	addi	sp,sp,-16
    80005040:	00113423          	sd	ra,8(sp)
    80005044:	00813023          	sd	s0,0(sp)
    80005048:	01010413          	addi	s0,sp,16
        TCB::running->waiting = -(value);
    8000504c:	40b005bb          	negw	a1,a1
    80005050:	00011797          	auipc	a5,0x11
    80005054:	9607b783          	ld	a5,-1696(a5) # 800159b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005058:	00b7a023          	sw	a1,0(a5)
        value=0;
    8000505c:	00052223          	sw	zero,4(a0)
        block();
    80005060:	00000097          	auipc	ra,0x0
    80005064:	d24080e7          	jalr	-732(ra) # 80004d84 <_ZN11Semaphore_k5blockEv>
}
    80005068:	00000513          	li	a0,0
    8000506c:	00813083          	ld	ra,8(sp)
    80005070:	00013403          	ld	s0,0(sp)
    80005074:	01010113          	addi	sp,sp,16
    80005078:	00008067          	ret

000000008000507c <_ZN11Semaphore_k7signalNEv>:
        if (!head) { return 0; }
    8000507c:	00853783          	ld	a5,8(a0)
    80005080:	04078e63          	beqz	a5,800050dc <_ZN11Semaphore_k7signalNEv+0x60>
        return head->data;
    80005084:	0007b783          	ld	a5,0(a5)

int Semaphore_k::signalN() {

    TCB* tcb = blocked.peekFirst();
    if(tcb){
    80005088:	04078a63          	beqz	a5,800050dc <_ZN11Semaphore_k7signalNEv+0x60>
//        printString("Usao u if waiting = \n");
//        printInt(tcb->waiting);
//        printString("\n");
        tcb->waiting--;
    8000508c:	00011717          	auipc	a4,0x11
    80005090:	92473703          	ld	a4,-1756(a4) # 800159b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005094:	00072783          	lw	a5,0(a4)
    80005098:	fff7879b          	addiw	a5,a5,-1
    8000509c:	0007869b          	sext.w	a3,a5
    800050a0:	00f72023          	sw	a5,0(a4)
        if(tcb->waiting==0 ){
    800050a4:	00068663          	beqz	a3,800050b0 <_ZN11Semaphore_k7signalNEv+0x34>
        //printInt(value);
        //printString("\n");
    }

    return 0;
}
    800050a8:	00000513          	li	a0,0
    800050ac:	00008067          	ret
int Semaphore_k::signalN() {
    800050b0:	ff010113          	addi	sp,sp,-16
    800050b4:	00113423          	sd	ra,8(sp)
    800050b8:	00813023          	sd	s0,0(sp)
    800050bc:	01010413          	addi	s0,sp,16
            deblock();
    800050c0:	00000097          	auipc	ra,0x0
    800050c4:	c58080e7          	jalr	-936(ra) # 80004d18 <_ZN11Semaphore_k7deblockEv>
}
    800050c8:	00000513          	li	a0,0
    800050cc:	00813083          	ld	ra,8(sp)
    800050d0:	00013403          	ld	s0,0(sp)
    800050d4:	01010113          	addi	sp,sp,16
    800050d8:	00008067          	ret
        value=value+1;
    800050dc:	00452783          	lw	a5,4(a0)
    800050e0:	0017879b          	addiw	a5,a5,1
    800050e4:	00f52223          	sw	a5,4(a0)
    800050e8:	fc1ff06f          	j	800050a8 <_ZN11Semaphore_k7signalNEv+0x2c>

00000000800050ec <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    800050ec:	ff010113          	addi	sp,sp,-16
    800050f0:	00813423          	sd	s0,8(sp)
    800050f4:	01010413          	addi	s0,sp,16
    800050f8:	00100793          	li	a5,1
    800050fc:	00f50863          	beq	a0,a5,8000510c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80005100:	00813403          	ld	s0,8(sp)
    80005104:	01010113          	addi	sp,sp,16
    80005108:	00008067          	ret
    8000510c:	000107b7          	lui	a5,0x10
    80005110:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005114:	fef596e3          	bne	a1,a5,80005100 <_Z41__static_initialization_and_destruction_0ii+0x14>
    Lista() : head(0), tail(0) {}
    80005118:	00011797          	auipc	a5,0x11
    8000511c:	b5878793          	addi	a5,a5,-1192 # 80015c70 <_ZN9Scheduler16readyThreadQueueE>
    80005120:	0007b023          	sd	zero,0(a5)
    80005124:	0007b423          	sd	zero,8(a5)
    80005128:	fd9ff06f          	j	80005100 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000512c <_ZN9Scheduler3getEv>:
{
    8000512c:	fe010113          	addi	sp,sp,-32
    80005130:	00113c23          	sd	ra,24(sp)
    80005134:	00813823          	sd	s0,16(sp)
    80005138:	00913423          	sd	s1,8(sp)
    8000513c:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80005140:	00011517          	auipc	a0,0x11
    80005144:	b3053503          	ld	a0,-1232(a0) # 80015c70 <_ZN9Scheduler16readyThreadQueueE>
    80005148:	04050263          	beqz	a0,8000518c <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    8000514c:	00853783          	ld	a5,8(a0)
    80005150:	00011717          	auipc	a4,0x11
    80005154:	b2f73023          	sd	a5,-1248(a4) # 80015c70 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80005158:	02078463          	beqz	a5,80005180 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    8000515c:	00053483          	ld	s1,0(a0)
        delete elem;
    80005160:	fffff097          	auipc	ra,0xfffff
    80005164:	96c080e7          	jalr	-1684(ra) # 80003acc <_ZdlPv>
}
    80005168:	00048513          	mv	a0,s1
    8000516c:	01813083          	ld	ra,24(sp)
    80005170:	01013403          	ld	s0,16(sp)
    80005174:	00813483          	ld	s1,8(sp)
    80005178:	02010113          	addi	sp,sp,32
    8000517c:	00008067          	ret
        if (!head) { tail = 0; }
    80005180:	00011797          	auipc	a5,0x11
    80005184:	ae07bc23          	sd	zero,-1288(a5) # 80015c78 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80005188:	fd5ff06f          	j	8000515c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000518c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80005190:	fd9ff06f          	j	80005168 <_ZN9Scheduler3getEv+0x3c>

0000000080005194 <_ZN9Scheduler3putEP3TCB>:
{
    80005194:	fe010113          	addi	sp,sp,-32
    80005198:	00113c23          	sd	ra,24(sp)
    8000519c:	00813823          	sd	s0,16(sp)
    800051a0:	00913423          	sd	s1,8(sp)
    800051a4:	02010413          	addi	s0,sp,32
    800051a8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800051ac:	01000513          	li	a0,16
    800051b0:	fffff097          	auipc	ra,0xfffff
    800051b4:	8cc080e7          	jalr	-1844(ra) # 80003a7c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800051b8:	00953023          	sd	s1,0(a0)
    800051bc:	00053423          	sd	zero,8(a0)
        if (tail)
    800051c0:	00011797          	auipc	a5,0x11
    800051c4:	ab87b783          	ld	a5,-1352(a5) # 80015c78 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800051c8:	02078263          	beqz	a5,800051ec <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800051cc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800051d0:	00011797          	auipc	a5,0x11
    800051d4:	aaa7b423          	sd	a0,-1368(a5) # 80015c78 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800051d8:	01813083          	ld	ra,24(sp)
    800051dc:	01013403          	ld	s0,16(sp)
    800051e0:	00813483          	ld	s1,8(sp)
    800051e4:	02010113          	addi	sp,sp,32
    800051e8:	00008067          	ret
            head = tail = elem;
    800051ec:	00011797          	auipc	a5,0x11
    800051f0:	a8478793          	addi	a5,a5,-1404 # 80015c70 <_ZN9Scheduler16readyThreadQueueE>
    800051f4:	00a7b423          	sd	a0,8(a5)
    800051f8:	00a7b023          	sd	a0,0(a5)
    800051fc:	fddff06f          	j	800051d8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080005200 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80005200:	ff010113          	addi	sp,sp,-16
    80005204:	00113423          	sd	ra,8(sp)
    80005208:	00813023          	sd	s0,0(sp)
    8000520c:	01010413          	addi	s0,sp,16
    80005210:	000105b7          	lui	a1,0x10
    80005214:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80005218:	00100513          	li	a0,1
    8000521c:	00000097          	auipc	ra,0x0
    80005220:	ed0080e7          	jalr	-304(ra) # 800050ec <_Z41__static_initialization_and_destruction_0ii>
    80005224:	00813083          	ld	ra,8(sp)
    80005228:	00013403          	ld	s0,0(sp)
    8000522c:	01010113          	addi	sp,sp,16
    80005230:	00008067          	ret

0000000080005234 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80005234:	fe010113          	addi	sp,sp,-32
    80005238:	00113c23          	sd	ra,24(sp)
    8000523c:	00813823          	sd	s0,16(sp)
    80005240:	00913423          	sd	s1,8(sp)
    80005244:	01213023          	sd	s2,0(sp)
    80005248:	02010413          	addi	s0,sp,32
    8000524c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005250:	00000913          	li	s2,0
    80005254:	00c0006f          	j	80005260 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005258:	ffffc097          	auipc	ra,0xffffc
    8000525c:	100080e7          	jalr	256(ra) # 80001358 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80005260:	ffffc097          	auipc	ra,0xffffc
    80005264:	284080e7          	jalr	644(ra) # 800014e4 <_Z4getcv>
    80005268:	0005059b          	sext.w	a1,a0
    8000526c:	01b00793          	li	a5,27
    80005270:	02f58a63          	beq	a1,a5,800052a4 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80005274:	0084b503          	ld	a0,8(s1)
    80005278:	00008097          	auipc	ra,0x8
    8000527c:	bbc080e7          	jalr	-1092(ra) # 8000ce34 <_ZN6Buffer3putEi>
        i++;
    80005280:	0019071b          	addiw	a4,s2,1
    80005284:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005288:	0004a683          	lw	a3,0(s1)
    8000528c:	0026979b          	slliw	a5,a3,0x2
    80005290:	00d787bb          	addw	a5,a5,a3
    80005294:	0017979b          	slliw	a5,a5,0x1
    80005298:	02f767bb          	remw	a5,a4,a5
    8000529c:	fc0792e3          	bnez	a5,80005260 <_ZL16producerKeyboardPv+0x2c>
    800052a0:	fb9ff06f          	j	80005258 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800052a4:	00100793          	li	a5,1
    800052a8:	00011717          	auipc	a4,0x11
    800052ac:	9cf72c23          	sw	a5,-1576(a4) # 80015c80 <_ZL9threadEnd>
    data->buffer->put('!');
    800052b0:	02100593          	li	a1,33
    800052b4:	0084b503          	ld	a0,8(s1)
    800052b8:	00008097          	auipc	ra,0x8
    800052bc:	b7c080e7          	jalr	-1156(ra) # 8000ce34 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800052c0:	0104b503          	ld	a0,16(s1)
    800052c4:	ffffc097          	auipc	ra,0xffffc
    800052c8:	13c080e7          	jalr	316(ra) # 80001400 <_Z10sem_signalP11Semaphore_k>
}
    800052cc:	01813083          	ld	ra,24(sp)
    800052d0:	01013403          	ld	s0,16(sp)
    800052d4:	00813483          	ld	s1,8(sp)
    800052d8:	00013903          	ld	s2,0(sp)
    800052dc:	02010113          	addi	sp,sp,32
    800052e0:	00008067          	ret

00000000800052e4 <_ZL8producerPv>:

static void producer(void *arg) {
    800052e4:	fe010113          	addi	sp,sp,-32
    800052e8:	00113c23          	sd	ra,24(sp)
    800052ec:	00813823          	sd	s0,16(sp)
    800052f0:	00913423          	sd	s1,8(sp)
    800052f4:	01213023          	sd	s2,0(sp)
    800052f8:	02010413          	addi	s0,sp,32
    800052fc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005300:	00000913          	li	s2,0
    80005304:	00c0006f          	j	80005310 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80005308:	ffffc097          	auipc	ra,0xffffc
    8000530c:	050080e7          	jalr	80(ra) # 80001358 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80005310:	00011797          	auipc	a5,0x11
    80005314:	9707a783          	lw	a5,-1680(a5) # 80015c80 <_ZL9threadEnd>
    80005318:	02079e63          	bnez	a5,80005354 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    8000531c:	0004a583          	lw	a1,0(s1)
    80005320:	0305859b          	addiw	a1,a1,48
    80005324:	0084b503          	ld	a0,8(s1)
    80005328:	00008097          	auipc	ra,0x8
    8000532c:	b0c080e7          	jalr	-1268(ra) # 8000ce34 <_ZN6Buffer3putEi>
        i++;
    80005330:	0019071b          	addiw	a4,s2,1
    80005334:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005338:	0004a683          	lw	a3,0(s1)
    8000533c:	0026979b          	slliw	a5,a3,0x2
    80005340:	00d787bb          	addw	a5,a5,a3
    80005344:	0017979b          	slliw	a5,a5,0x1
    80005348:	02f767bb          	remw	a5,a4,a5
    8000534c:	fc0792e3          	bnez	a5,80005310 <_ZL8producerPv+0x2c>
    80005350:	fb9ff06f          	j	80005308 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80005354:	0104b503          	ld	a0,16(s1)
    80005358:	ffffc097          	auipc	ra,0xffffc
    8000535c:	0a8080e7          	jalr	168(ra) # 80001400 <_Z10sem_signalP11Semaphore_k>
}
    80005360:	01813083          	ld	ra,24(sp)
    80005364:	01013403          	ld	s0,16(sp)
    80005368:	00813483          	ld	s1,8(sp)
    8000536c:	00013903          	ld	s2,0(sp)
    80005370:	02010113          	addi	sp,sp,32
    80005374:	00008067          	ret

0000000080005378 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80005378:	fd010113          	addi	sp,sp,-48
    8000537c:	02113423          	sd	ra,40(sp)
    80005380:	02813023          	sd	s0,32(sp)
    80005384:	00913c23          	sd	s1,24(sp)
    80005388:	01213823          	sd	s2,16(sp)
    8000538c:	01313423          	sd	s3,8(sp)
    80005390:	03010413          	addi	s0,sp,48
    80005394:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005398:	00000993          	li	s3,0
    8000539c:	01c0006f          	j	800053b8 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800053a0:	ffffc097          	auipc	ra,0xffffc
    800053a4:	fb8080e7          	jalr	-72(ra) # 80001358 <_Z15thread_dispatchv>
    800053a8:	0500006f          	j	800053f8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800053ac:	00a00513          	li	a0,10
    800053b0:	ffffc097          	auipc	ra,0xffffc
    800053b4:	15c080e7          	jalr	348(ra) # 8000150c <_Z4putcc>
    while (!threadEnd) {
    800053b8:	00011797          	auipc	a5,0x11
    800053bc:	8c87a783          	lw	a5,-1848(a5) # 80015c80 <_ZL9threadEnd>
    800053c0:	06079063          	bnez	a5,80005420 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800053c4:	00893503          	ld	a0,8(s2)
    800053c8:	00008097          	auipc	ra,0x8
    800053cc:	afc080e7          	jalr	-1284(ra) # 8000cec4 <_ZN6Buffer3getEv>
        i++;
    800053d0:	0019849b          	addiw	s1,s3,1
    800053d4:	0004899b          	sext.w	s3,s1
        putc(key);
    800053d8:	0ff57513          	andi	a0,a0,255
    800053dc:	ffffc097          	auipc	ra,0xffffc
    800053e0:	130080e7          	jalr	304(ra) # 8000150c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800053e4:	00092703          	lw	a4,0(s2)
    800053e8:	0027179b          	slliw	a5,a4,0x2
    800053ec:	00e787bb          	addw	a5,a5,a4
    800053f0:	02f4e7bb          	remw	a5,s1,a5
    800053f4:	fa0786e3          	beqz	a5,800053a0 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800053f8:	05000793          	li	a5,80
    800053fc:	02f4e4bb          	remw	s1,s1,a5
    80005400:	fa049ce3          	bnez	s1,800053b8 <_ZL8consumerPv+0x40>
    80005404:	fa9ff06f          	j	800053ac <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80005408:	00893503          	ld	a0,8(s2)
    8000540c:	00008097          	auipc	ra,0x8
    80005410:	ab8080e7          	jalr	-1352(ra) # 8000cec4 <_ZN6Buffer3getEv>
        putc(key);
    80005414:	0ff57513          	andi	a0,a0,255
    80005418:	ffffc097          	auipc	ra,0xffffc
    8000541c:	0f4080e7          	jalr	244(ra) # 8000150c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80005420:	00893503          	ld	a0,8(s2)
    80005424:	00008097          	auipc	ra,0x8
    80005428:	b2c080e7          	jalr	-1236(ra) # 8000cf50 <_ZN6Buffer6getCntEv>
    8000542c:	fca04ee3          	bgtz	a0,80005408 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80005430:	01093503          	ld	a0,16(s2)
    80005434:	ffffc097          	auipc	ra,0xffffc
    80005438:	fcc080e7          	jalr	-52(ra) # 80001400 <_Z10sem_signalP11Semaphore_k>
}
    8000543c:	02813083          	ld	ra,40(sp)
    80005440:	02013403          	ld	s0,32(sp)
    80005444:	01813483          	ld	s1,24(sp)
    80005448:	01013903          	ld	s2,16(sp)
    8000544c:	00813983          	ld	s3,8(sp)
    80005450:	03010113          	addi	sp,sp,48
    80005454:	00008067          	ret

0000000080005458 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80005458:	f9010113          	addi	sp,sp,-112
    8000545c:	06113423          	sd	ra,104(sp)
    80005460:	06813023          	sd	s0,96(sp)
    80005464:	04913c23          	sd	s1,88(sp)
    80005468:	05213823          	sd	s2,80(sp)
    8000546c:	05313423          	sd	s3,72(sp)
    80005470:	05413023          	sd	s4,64(sp)
    80005474:	03513c23          	sd	s5,56(sp)
    80005478:	03613823          	sd	s6,48(sp)
    8000547c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80005480:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80005484:	0000b517          	auipc	a0,0xb
    80005488:	16c50513          	addi	a0,a0,364 # 800105f0 <CONSOLE_STATUS+0x5e0>
    8000548c:	00002097          	auipc	ra,0x2
    80005490:	220080e7          	jalr	544(ra) # 800076ac <_Z11printStringPKc>
    getString(input, 30);
    80005494:	01e00593          	li	a1,30
    80005498:	fa040493          	addi	s1,s0,-96
    8000549c:	00048513          	mv	a0,s1
    800054a0:	00002097          	auipc	ra,0x2
    800054a4:	294080e7          	jalr	660(ra) # 80007734 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800054a8:	00048513          	mv	a0,s1
    800054ac:	00002097          	auipc	ra,0x2
    800054b0:	360080e7          	jalr	864(ra) # 8000780c <_Z11stringToIntPKc>
    800054b4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800054b8:	0000b517          	auipc	a0,0xb
    800054bc:	15850513          	addi	a0,a0,344 # 80010610 <CONSOLE_STATUS+0x600>
    800054c0:	00002097          	auipc	ra,0x2
    800054c4:	1ec080e7          	jalr	492(ra) # 800076ac <_Z11printStringPKc>
    getString(input, 30);
    800054c8:	01e00593          	li	a1,30
    800054cc:	00048513          	mv	a0,s1
    800054d0:	00002097          	auipc	ra,0x2
    800054d4:	264080e7          	jalr	612(ra) # 80007734 <_Z9getStringPci>
    n = stringToInt(input);
    800054d8:	00048513          	mv	a0,s1
    800054dc:	00002097          	auipc	ra,0x2
    800054e0:	330080e7          	jalr	816(ra) # 8000780c <_Z11stringToIntPKc>
    800054e4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800054e8:	0000b517          	auipc	a0,0xb
    800054ec:	14850513          	addi	a0,a0,328 # 80010630 <CONSOLE_STATUS+0x620>
    800054f0:	00002097          	auipc	ra,0x2
    800054f4:	1bc080e7          	jalr	444(ra) # 800076ac <_Z11printStringPKc>
    800054f8:	00000613          	li	a2,0
    800054fc:	00a00593          	li	a1,10
    80005500:	00090513          	mv	a0,s2
    80005504:	00002097          	auipc	ra,0x2
    80005508:	358080e7          	jalr	856(ra) # 8000785c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000550c:	0000b517          	auipc	a0,0xb
    80005510:	13c50513          	addi	a0,a0,316 # 80010648 <CONSOLE_STATUS+0x638>
    80005514:	00002097          	auipc	ra,0x2
    80005518:	198080e7          	jalr	408(ra) # 800076ac <_Z11printStringPKc>
    8000551c:	00000613          	li	a2,0
    80005520:	00a00593          	li	a1,10
    80005524:	00048513          	mv	a0,s1
    80005528:	00002097          	auipc	ra,0x2
    8000552c:	334080e7          	jalr	820(ra) # 8000785c <_Z8printIntiii>
    printString(".\n");
    80005530:	0000b517          	auipc	a0,0xb
    80005534:	ca850513          	addi	a0,a0,-856 # 800101d8 <CONSOLE_STATUS+0x1c8>
    80005538:	00002097          	auipc	ra,0x2
    8000553c:	174080e7          	jalr	372(ra) # 800076ac <_Z11printStringPKc>
    if(threadNum > n) {
    80005540:	0324c463          	blt	s1,s2,80005568 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80005544:	03205c63          	blez	s2,8000557c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80005548:	03800513          	li	a0,56
    8000554c:	ffffe097          	auipc	ra,0xffffe
    80005550:	530080e7          	jalr	1328(ra) # 80003a7c <_Znwm>
    80005554:	00050a13          	mv	s4,a0
    80005558:	00048593          	mv	a1,s1
    8000555c:	00008097          	auipc	ra,0x8
    80005560:	83c080e7          	jalr	-1988(ra) # 8000cd98 <_ZN6BufferC1Ei>
    80005564:	0300006f          	j	80005594 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005568:	0000b517          	auipc	a0,0xb
    8000556c:	0f850513          	addi	a0,a0,248 # 80010660 <CONSOLE_STATUS+0x650>
    80005570:	00002097          	auipc	ra,0x2
    80005574:	13c080e7          	jalr	316(ra) # 800076ac <_Z11printStringPKc>
        return;
    80005578:	0140006f          	j	8000558c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000557c:	0000b517          	auipc	a0,0xb
    80005580:	12450513          	addi	a0,a0,292 # 800106a0 <CONSOLE_STATUS+0x690>
    80005584:	00002097          	auipc	ra,0x2
    80005588:	128080e7          	jalr	296(ra) # 800076ac <_Z11printStringPKc>
        return;
    8000558c:	000b0113          	mv	sp,s6
    80005590:	1500006f          	j	800056e0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80005594:	00000593          	li	a1,0
    80005598:	00010517          	auipc	a0,0x10
    8000559c:	6f050513          	addi	a0,a0,1776 # 80015c88 <_ZL10waitForAll>
    800055a0:	ffffc097          	auipc	ra,0xffffc
    800055a4:	dd8080e7          	jalr	-552(ra) # 80001378 <_Z8sem_openPP11Semaphore_kj>
    thread_t threads[threadNum];
    800055a8:	00391793          	slli	a5,s2,0x3
    800055ac:	00f78793          	addi	a5,a5,15
    800055b0:	ff07f793          	andi	a5,a5,-16
    800055b4:	40f10133          	sub	sp,sp,a5
    800055b8:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800055bc:	0019071b          	addiw	a4,s2,1
    800055c0:	00171793          	slli	a5,a4,0x1
    800055c4:	00e787b3          	add	a5,a5,a4
    800055c8:	00379793          	slli	a5,a5,0x3
    800055cc:	00f78793          	addi	a5,a5,15
    800055d0:	ff07f793          	andi	a5,a5,-16
    800055d4:	40f10133          	sub	sp,sp,a5
    800055d8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800055dc:	00191613          	slli	a2,s2,0x1
    800055e0:	012607b3          	add	a5,a2,s2
    800055e4:	00379793          	slli	a5,a5,0x3
    800055e8:	00f987b3          	add	a5,s3,a5
    800055ec:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800055f0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800055f4:	00010717          	auipc	a4,0x10
    800055f8:	69473703          	ld	a4,1684(a4) # 80015c88 <_ZL10waitForAll>
    800055fc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80005600:	00078613          	mv	a2,a5
    80005604:	00000597          	auipc	a1,0x0
    80005608:	d7458593          	addi	a1,a1,-652 # 80005378 <_ZL8consumerPv>
    8000560c:	f9840513          	addi	a0,s0,-104
    80005610:	ffffc097          	auipc	ra,0xffffc
    80005614:	c90080e7          	jalr	-880(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005618:	00000493          	li	s1,0
    8000561c:	0280006f          	j	80005644 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80005620:	00000597          	auipc	a1,0x0
    80005624:	c1458593          	addi	a1,a1,-1004 # 80005234 <_ZL16producerKeyboardPv>
                      data + i);
    80005628:	00179613          	slli	a2,a5,0x1
    8000562c:	00f60633          	add	a2,a2,a5
    80005630:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80005634:	00c98633          	add	a2,s3,a2
    80005638:	ffffc097          	auipc	ra,0xffffc
    8000563c:	c68080e7          	jalr	-920(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80005640:	0014849b          	addiw	s1,s1,1
    80005644:	0524d263          	bge	s1,s2,80005688 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80005648:	00149793          	slli	a5,s1,0x1
    8000564c:	009787b3          	add	a5,a5,s1
    80005650:	00379793          	slli	a5,a5,0x3
    80005654:	00f987b3          	add	a5,s3,a5
    80005658:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000565c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80005660:	00010717          	auipc	a4,0x10
    80005664:	62873703          	ld	a4,1576(a4) # 80015c88 <_ZL10waitForAll>
    80005668:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000566c:	00048793          	mv	a5,s1
    80005670:	00349513          	slli	a0,s1,0x3
    80005674:	00aa8533          	add	a0,s5,a0
    80005678:	fa9054e3          	blez	s1,80005620 <_Z22producerConsumer_C_APIv+0x1c8>
    8000567c:	00000597          	auipc	a1,0x0
    80005680:	c6858593          	addi	a1,a1,-920 # 800052e4 <_ZL8producerPv>
    80005684:	fa5ff06f          	j	80005628 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80005688:	ffffc097          	auipc	ra,0xffffc
    8000568c:	cd0080e7          	jalr	-816(ra) # 80001358 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80005690:	00000493          	li	s1,0
    80005694:	00994e63          	blt	s2,s1,800056b0 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80005698:	00010517          	auipc	a0,0x10
    8000569c:	5f053503          	ld	a0,1520(a0) # 80015c88 <_ZL10waitForAll>
    800056a0:	ffffc097          	auipc	ra,0xffffc
    800056a4:	d34080e7          	jalr	-716(ra) # 800013d4 <_Z8sem_waitP11Semaphore_k>
    for (int i = 0; i <= threadNum; i++) {
    800056a8:	0014849b          	addiw	s1,s1,1
    800056ac:	fe9ff06f          	j	80005694 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800056b0:	00010517          	auipc	a0,0x10
    800056b4:	5d853503          	ld	a0,1496(a0) # 80015c88 <_ZL10waitForAll>
    800056b8:	ffffc097          	auipc	ra,0xffffc
    800056bc:	cf0080e7          	jalr	-784(ra) # 800013a8 <_Z9sem_closeP11Semaphore_k>
    delete buffer;
    800056c0:	000a0e63          	beqz	s4,800056dc <_Z22producerConsumer_C_APIv+0x284>
    800056c4:	000a0513          	mv	a0,s4
    800056c8:	00008097          	auipc	ra,0x8
    800056cc:	910080e7          	jalr	-1776(ra) # 8000cfd8 <_ZN6BufferD1Ev>
    800056d0:	000a0513          	mv	a0,s4
    800056d4:	ffffe097          	auipc	ra,0xffffe
    800056d8:	3f8080e7          	jalr	1016(ra) # 80003acc <_ZdlPv>
    800056dc:	000b0113          	mv	sp,s6

}
    800056e0:	f9040113          	addi	sp,s0,-112
    800056e4:	06813083          	ld	ra,104(sp)
    800056e8:	06013403          	ld	s0,96(sp)
    800056ec:	05813483          	ld	s1,88(sp)
    800056f0:	05013903          	ld	s2,80(sp)
    800056f4:	04813983          	ld	s3,72(sp)
    800056f8:	04013a03          	ld	s4,64(sp)
    800056fc:	03813a83          	ld	s5,56(sp)
    80005700:	03013b03          	ld	s6,48(sp)
    80005704:	07010113          	addi	sp,sp,112
    80005708:	00008067          	ret
    8000570c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80005710:	000a0513          	mv	a0,s4
    80005714:	ffffe097          	auipc	ra,0xffffe
    80005718:	3b8080e7          	jalr	952(ra) # 80003acc <_ZdlPv>
    8000571c:	00048513          	mv	a0,s1
    80005720:	00011097          	auipc	ra,0x11
    80005724:	6a8080e7          	jalr	1704(ra) # 80016dc8 <_Unwind_Resume>

0000000080005728 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005728:	fe010113          	addi	sp,sp,-32
    8000572c:	00113c23          	sd	ra,24(sp)
    80005730:	00813823          	sd	s0,16(sp)
    80005734:	00913423          	sd	s1,8(sp)
    80005738:	01213023          	sd	s2,0(sp)
    8000573c:	02010413          	addi	s0,sp,32
    80005740:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005744:	00100793          	li	a5,1
    80005748:	02a7f863          	bgeu	a5,a0,80005778 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000574c:	00a00793          	li	a5,10
    80005750:	02f577b3          	remu	a5,a0,a5
    80005754:	02078e63          	beqz	a5,80005790 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005758:	fff48513          	addi	a0,s1,-1
    8000575c:	00000097          	auipc	ra,0x0
    80005760:	fcc080e7          	jalr	-52(ra) # 80005728 <_ZL9fibonaccim>
    80005764:	00050913          	mv	s2,a0
    80005768:	ffe48513          	addi	a0,s1,-2
    8000576c:	00000097          	auipc	ra,0x0
    80005770:	fbc080e7          	jalr	-68(ra) # 80005728 <_ZL9fibonaccim>
    80005774:	00a90533          	add	a0,s2,a0
}
    80005778:	01813083          	ld	ra,24(sp)
    8000577c:	01013403          	ld	s0,16(sp)
    80005780:	00813483          	ld	s1,8(sp)
    80005784:	00013903          	ld	s2,0(sp)
    80005788:	02010113          	addi	sp,sp,32
    8000578c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005790:	ffffc097          	auipc	ra,0xffffc
    80005794:	bc8080e7          	jalr	-1080(ra) # 80001358 <_Z15thread_dispatchv>
    80005798:	fc1ff06f          	j	80005758 <_ZL9fibonaccim+0x30>

000000008000579c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000579c:	fe010113          	addi	sp,sp,-32
    800057a0:	00113c23          	sd	ra,24(sp)
    800057a4:	00813823          	sd	s0,16(sp)
    800057a8:	00913423          	sd	s1,8(sp)
    800057ac:	01213023          	sd	s2,0(sp)
    800057b0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800057b4:	00000913          	li	s2,0
    800057b8:	0380006f          	j	800057f0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800057bc:	ffffc097          	auipc	ra,0xffffc
    800057c0:	b9c080e7          	jalr	-1124(ra) # 80001358 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800057c4:	00148493          	addi	s1,s1,1
    800057c8:	000027b7          	lui	a5,0x2
    800057cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800057d0:	0097ee63          	bltu	a5,s1,800057ec <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800057d4:	00000713          	li	a4,0
    800057d8:	000077b7          	lui	a5,0x7
    800057dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800057e0:	fce7eee3          	bltu	a5,a4,800057bc <_ZN7WorkerA11workerBodyAEPv+0x20>
    800057e4:	00170713          	addi	a4,a4,1
    800057e8:	ff1ff06f          	j	800057d8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800057ec:	00190913          	addi	s2,s2,1
    800057f0:	00900793          	li	a5,9
    800057f4:	0527e063          	bltu	a5,s2,80005834 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800057f8:	0000b517          	auipc	a0,0xb
    800057fc:	ed850513          	addi	a0,a0,-296 # 800106d0 <CONSOLE_STATUS+0x6c0>
    80005800:	00002097          	auipc	ra,0x2
    80005804:	eac080e7          	jalr	-340(ra) # 800076ac <_Z11printStringPKc>
    80005808:	00000613          	li	a2,0
    8000580c:	00a00593          	li	a1,10
    80005810:	0009051b          	sext.w	a0,s2
    80005814:	00002097          	auipc	ra,0x2
    80005818:	048080e7          	jalr	72(ra) # 8000785c <_Z8printIntiii>
    8000581c:	0000b517          	auipc	a0,0xb
    80005820:	1c450513          	addi	a0,a0,452 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80005824:	00002097          	auipc	ra,0x2
    80005828:	e88080e7          	jalr	-376(ra) # 800076ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000582c:	00000493          	li	s1,0
    80005830:	f99ff06f          	j	800057c8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005834:	0000b517          	auipc	a0,0xb
    80005838:	ea450513          	addi	a0,a0,-348 # 800106d8 <CONSOLE_STATUS+0x6c8>
    8000583c:	00002097          	auipc	ra,0x2
    80005840:	e70080e7          	jalr	-400(ra) # 800076ac <_Z11printStringPKc>
    finishedA = true;
    80005844:	00100793          	li	a5,1
    80005848:	00010717          	auipc	a4,0x10
    8000584c:	44f70423          	sb	a5,1096(a4) # 80015c90 <_ZL9finishedA>
}
    80005850:	01813083          	ld	ra,24(sp)
    80005854:	01013403          	ld	s0,16(sp)
    80005858:	00813483          	ld	s1,8(sp)
    8000585c:	00013903          	ld	s2,0(sp)
    80005860:	02010113          	addi	sp,sp,32
    80005864:	00008067          	ret

0000000080005868 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80005868:	fe010113          	addi	sp,sp,-32
    8000586c:	00113c23          	sd	ra,24(sp)
    80005870:	00813823          	sd	s0,16(sp)
    80005874:	00913423          	sd	s1,8(sp)
    80005878:	01213023          	sd	s2,0(sp)
    8000587c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005880:	00000913          	li	s2,0
    80005884:	0380006f          	j	800058bc <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80005888:	ffffc097          	auipc	ra,0xffffc
    8000588c:	ad0080e7          	jalr	-1328(ra) # 80001358 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005890:	00148493          	addi	s1,s1,1
    80005894:	000027b7          	lui	a5,0x2
    80005898:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000589c:	0097ee63          	bltu	a5,s1,800058b8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800058a0:	00000713          	li	a4,0
    800058a4:	000077b7          	lui	a5,0x7
    800058a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800058ac:	fce7eee3          	bltu	a5,a4,80005888 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800058b0:	00170713          	addi	a4,a4,1
    800058b4:	ff1ff06f          	j	800058a4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800058b8:	00190913          	addi	s2,s2,1
    800058bc:	00f00793          	li	a5,15
    800058c0:	0527e063          	bltu	a5,s2,80005900 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800058c4:	0000b517          	auipc	a0,0xb
    800058c8:	e2450513          	addi	a0,a0,-476 # 800106e8 <CONSOLE_STATUS+0x6d8>
    800058cc:	00002097          	auipc	ra,0x2
    800058d0:	de0080e7          	jalr	-544(ra) # 800076ac <_Z11printStringPKc>
    800058d4:	00000613          	li	a2,0
    800058d8:	00a00593          	li	a1,10
    800058dc:	0009051b          	sext.w	a0,s2
    800058e0:	00002097          	auipc	ra,0x2
    800058e4:	f7c080e7          	jalr	-132(ra) # 8000785c <_Z8printIntiii>
    800058e8:	0000b517          	auipc	a0,0xb
    800058ec:	0f850513          	addi	a0,a0,248 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800058f0:	00002097          	auipc	ra,0x2
    800058f4:	dbc080e7          	jalr	-580(ra) # 800076ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800058f8:	00000493          	li	s1,0
    800058fc:	f99ff06f          	j	80005894 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80005900:	0000b517          	auipc	a0,0xb
    80005904:	df050513          	addi	a0,a0,-528 # 800106f0 <CONSOLE_STATUS+0x6e0>
    80005908:	00002097          	auipc	ra,0x2
    8000590c:	da4080e7          	jalr	-604(ra) # 800076ac <_Z11printStringPKc>
    finishedB = true;
    80005910:	00100793          	li	a5,1
    80005914:	00010717          	auipc	a4,0x10
    80005918:	36f70ea3          	sb	a5,893(a4) # 80015c91 <_ZL9finishedB>
    thread_dispatch();
    8000591c:	ffffc097          	auipc	ra,0xffffc
    80005920:	a3c080e7          	jalr	-1476(ra) # 80001358 <_Z15thread_dispatchv>
}
    80005924:	01813083          	ld	ra,24(sp)
    80005928:	01013403          	ld	s0,16(sp)
    8000592c:	00813483          	ld	s1,8(sp)
    80005930:	00013903          	ld	s2,0(sp)
    80005934:	02010113          	addi	sp,sp,32
    80005938:	00008067          	ret

000000008000593c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000593c:	fe010113          	addi	sp,sp,-32
    80005940:	00113c23          	sd	ra,24(sp)
    80005944:	00813823          	sd	s0,16(sp)
    80005948:	00913423          	sd	s1,8(sp)
    8000594c:	01213023          	sd	s2,0(sp)
    80005950:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005954:	00000493          	li	s1,0
    80005958:	0400006f          	j	80005998 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000595c:	0000b517          	auipc	a0,0xb
    80005960:	da450513          	addi	a0,a0,-604 # 80010700 <CONSOLE_STATUS+0x6f0>
    80005964:	00002097          	auipc	ra,0x2
    80005968:	d48080e7          	jalr	-696(ra) # 800076ac <_Z11printStringPKc>
    8000596c:	00000613          	li	a2,0
    80005970:	00a00593          	li	a1,10
    80005974:	00048513          	mv	a0,s1
    80005978:	00002097          	auipc	ra,0x2
    8000597c:	ee4080e7          	jalr	-284(ra) # 8000785c <_Z8printIntiii>
    80005980:	0000b517          	auipc	a0,0xb
    80005984:	06050513          	addi	a0,a0,96 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80005988:	00002097          	auipc	ra,0x2
    8000598c:	d24080e7          	jalr	-732(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005990:	0014849b          	addiw	s1,s1,1
    80005994:	0ff4f493          	andi	s1,s1,255
    80005998:	00200793          	li	a5,2
    8000599c:	fc97f0e3          	bgeu	a5,s1,8000595c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800059a0:	0000b517          	auipc	a0,0xb
    800059a4:	d6850513          	addi	a0,a0,-664 # 80010708 <CONSOLE_STATUS+0x6f8>
    800059a8:	00002097          	auipc	ra,0x2
    800059ac:	d04080e7          	jalr	-764(ra) # 800076ac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800059b0:	00700313          	li	t1,7
    thread_dispatch();
    800059b4:	ffffc097          	auipc	ra,0xffffc
    800059b8:	9a4080e7          	jalr	-1628(ra) # 80001358 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800059bc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800059c0:	0000b517          	auipc	a0,0xb
    800059c4:	d5850513          	addi	a0,a0,-680 # 80010718 <CONSOLE_STATUS+0x708>
    800059c8:	00002097          	auipc	ra,0x2
    800059cc:	ce4080e7          	jalr	-796(ra) # 800076ac <_Z11printStringPKc>
    800059d0:	00000613          	li	a2,0
    800059d4:	00a00593          	li	a1,10
    800059d8:	0009051b          	sext.w	a0,s2
    800059dc:	00002097          	auipc	ra,0x2
    800059e0:	e80080e7          	jalr	-384(ra) # 8000785c <_Z8printIntiii>
    800059e4:	0000b517          	auipc	a0,0xb
    800059e8:	ffc50513          	addi	a0,a0,-4 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800059ec:	00002097          	auipc	ra,0x2
    800059f0:	cc0080e7          	jalr	-832(ra) # 800076ac <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800059f4:	00c00513          	li	a0,12
    800059f8:	00000097          	auipc	ra,0x0
    800059fc:	d30080e7          	jalr	-720(ra) # 80005728 <_ZL9fibonaccim>
    80005a00:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005a04:	0000b517          	auipc	a0,0xb
    80005a08:	d1c50513          	addi	a0,a0,-740 # 80010720 <CONSOLE_STATUS+0x710>
    80005a0c:	00002097          	auipc	ra,0x2
    80005a10:	ca0080e7          	jalr	-864(ra) # 800076ac <_Z11printStringPKc>
    80005a14:	00000613          	li	a2,0
    80005a18:	00a00593          	li	a1,10
    80005a1c:	0009051b          	sext.w	a0,s2
    80005a20:	00002097          	auipc	ra,0x2
    80005a24:	e3c080e7          	jalr	-452(ra) # 8000785c <_Z8printIntiii>
    80005a28:	0000b517          	auipc	a0,0xb
    80005a2c:	fb850513          	addi	a0,a0,-72 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80005a30:	00002097          	auipc	ra,0x2
    80005a34:	c7c080e7          	jalr	-900(ra) # 800076ac <_Z11printStringPKc>
    80005a38:	0400006f          	j	80005a78 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005a3c:	0000b517          	auipc	a0,0xb
    80005a40:	cc450513          	addi	a0,a0,-828 # 80010700 <CONSOLE_STATUS+0x6f0>
    80005a44:	00002097          	auipc	ra,0x2
    80005a48:	c68080e7          	jalr	-920(ra) # 800076ac <_Z11printStringPKc>
    80005a4c:	00000613          	li	a2,0
    80005a50:	00a00593          	li	a1,10
    80005a54:	00048513          	mv	a0,s1
    80005a58:	00002097          	auipc	ra,0x2
    80005a5c:	e04080e7          	jalr	-508(ra) # 8000785c <_Z8printIntiii>
    80005a60:	0000b517          	auipc	a0,0xb
    80005a64:	f8050513          	addi	a0,a0,-128 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80005a68:	00002097          	auipc	ra,0x2
    80005a6c:	c44080e7          	jalr	-956(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005a70:	0014849b          	addiw	s1,s1,1
    80005a74:	0ff4f493          	andi	s1,s1,255
    80005a78:	00500793          	li	a5,5
    80005a7c:	fc97f0e3          	bgeu	a5,s1,80005a3c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80005a80:	0000b517          	auipc	a0,0xb
    80005a84:	c5850513          	addi	a0,a0,-936 # 800106d8 <CONSOLE_STATUS+0x6c8>
    80005a88:	00002097          	auipc	ra,0x2
    80005a8c:	c24080e7          	jalr	-988(ra) # 800076ac <_Z11printStringPKc>
    finishedC = true;
    80005a90:	00100793          	li	a5,1
    80005a94:	00010717          	auipc	a4,0x10
    80005a98:	1ef70f23          	sb	a5,510(a4) # 80015c92 <_ZL9finishedC>
    thread_dispatch();
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	8bc080e7          	jalr	-1860(ra) # 80001358 <_Z15thread_dispatchv>
}
    80005aa4:	01813083          	ld	ra,24(sp)
    80005aa8:	01013403          	ld	s0,16(sp)
    80005aac:	00813483          	ld	s1,8(sp)
    80005ab0:	00013903          	ld	s2,0(sp)
    80005ab4:	02010113          	addi	sp,sp,32
    80005ab8:	00008067          	ret

0000000080005abc <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80005abc:	fe010113          	addi	sp,sp,-32
    80005ac0:	00113c23          	sd	ra,24(sp)
    80005ac4:	00813823          	sd	s0,16(sp)
    80005ac8:	00913423          	sd	s1,8(sp)
    80005acc:	01213023          	sd	s2,0(sp)
    80005ad0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005ad4:	00a00493          	li	s1,10
    80005ad8:	0400006f          	j	80005b18 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005adc:	0000b517          	auipc	a0,0xb
    80005ae0:	c5450513          	addi	a0,a0,-940 # 80010730 <CONSOLE_STATUS+0x720>
    80005ae4:	00002097          	auipc	ra,0x2
    80005ae8:	bc8080e7          	jalr	-1080(ra) # 800076ac <_Z11printStringPKc>
    80005aec:	00000613          	li	a2,0
    80005af0:	00a00593          	li	a1,10
    80005af4:	00048513          	mv	a0,s1
    80005af8:	00002097          	auipc	ra,0x2
    80005afc:	d64080e7          	jalr	-668(ra) # 8000785c <_Z8printIntiii>
    80005b00:	0000b517          	auipc	a0,0xb
    80005b04:	ee050513          	addi	a0,a0,-288 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80005b08:	00002097          	auipc	ra,0x2
    80005b0c:	ba4080e7          	jalr	-1116(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005b10:	0014849b          	addiw	s1,s1,1
    80005b14:	0ff4f493          	andi	s1,s1,255
    80005b18:	00c00793          	li	a5,12
    80005b1c:	fc97f0e3          	bgeu	a5,s1,80005adc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80005b20:	0000b517          	auipc	a0,0xb
    80005b24:	c1850513          	addi	a0,a0,-1000 # 80010738 <CONSOLE_STATUS+0x728>
    80005b28:	00002097          	auipc	ra,0x2
    80005b2c:	b84080e7          	jalr	-1148(ra) # 800076ac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005b30:	00500313          	li	t1,5
    thread_dispatch();
    80005b34:	ffffc097          	auipc	ra,0xffffc
    80005b38:	824080e7          	jalr	-2012(ra) # 80001358 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005b3c:	01000513          	li	a0,16
    80005b40:	00000097          	auipc	ra,0x0
    80005b44:	be8080e7          	jalr	-1048(ra) # 80005728 <_ZL9fibonaccim>
    80005b48:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005b4c:	0000b517          	auipc	a0,0xb
    80005b50:	bfc50513          	addi	a0,a0,-1028 # 80010748 <CONSOLE_STATUS+0x738>
    80005b54:	00002097          	auipc	ra,0x2
    80005b58:	b58080e7          	jalr	-1192(ra) # 800076ac <_Z11printStringPKc>
    80005b5c:	00000613          	li	a2,0
    80005b60:	00a00593          	li	a1,10
    80005b64:	0009051b          	sext.w	a0,s2
    80005b68:	00002097          	auipc	ra,0x2
    80005b6c:	cf4080e7          	jalr	-780(ra) # 8000785c <_Z8printIntiii>
    80005b70:	0000b517          	auipc	a0,0xb
    80005b74:	e7050513          	addi	a0,a0,-400 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80005b78:	00002097          	auipc	ra,0x2
    80005b7c:	b34080e7          	jalr	-1228(ra) # 800076ac <_Z11printStringPKc>
    80005b80:	0400006f          	j	80005bc0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005b84:	0000b517          	auipc	a0,0xb
    80005b88:	bac50513          	addi	a0,a0,-1108 # 80010730 <CONSOLE_STATUS+0x720>
    80005b8c:	00002097          	auipc	ra,0x2
    80005b90:	b20080e7          	jalr	-1248(ra) # 800076ac <_Z11printStringPKc>
    80005b94:	00000613          	li	a2,0
    80005b98:	00a00593          	li	a1,10
    80005b9c:	00048513          	mv	a0,s1
    80005ba0:	00002097          	auipc	ra,0x2
    80005ba4:	cbc080e7          	jalr	-836(ra) # 8000785c <_Z8printIntiii>
    80005ba8:	0000b517          	auipc	a0,0xb
    80005bac:	e3850513          	addi	a0,a0,-456 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80005bb0:	00002097          	auipc	ra,0x2
    80005bb4:	afc080e7          	jalr	-1284(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005bb8:	0014849b          	addiw	s1,s1,1
    80005bbc:	0ff4f493          	andi	s1,s1,255
    80005bc0:	00f00793          	li	a5,15
    80005bc4:	fc97f0e3          	bgeu	a5,s1,80005b84 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80005bc8:	0000b517          	auipc	a0,0xb
    80005bcc:	b9050513          	addi	a0,a0,-1136 # 80010758 <CONSOLE_STATUS+0x748>
    80005bd0:	00002097          	auipc	ra,0x2
    80005bd4:	adc080e7          	jalr	-1316(ra) # 800076ac <_Z11printStringPKc>
    finishedD = true;
    80005bd8:	00100793          	li	a5,1
    80005bdc:	00010717          	auipc	a4,0x10
    80005be0:	0af70ba3          	sb	a5,183(a4) # 80015c93 <_ZL9finishedD>
    thread_dispatch();
    80005be4:	ffffb097          	auipc	ra,0xffffb
    80005be8:	774080e7          	jalr	1908(ra) # 80001358 <_Z15thread_dispatchv>
}
    80005bec:	01813083          	ld	ra,24(sp)
    80005bf0:	01013403          	ld	s0,16(sp)
    80005bf4:	00813483          	ld	s1,8(sp)
    80005bf8:	00013903          	ld	s2,0(sp)
    80005bfc:	02010113          	addi	sp,sp,32
    80005c00:	00008067          	ret

0000000080005c04 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80005c04:	fc010113          	addi	sp,sp,-64
    80005c08:	02113c23          	sd	ra,56(sp)
    80005c0c:	02813823          	sd	s0,48(sp)
    80005c10:	02913423          	sd	s1,40(sp)
    80005c14:	03213023          	sd	s2,32(sp)
    80005c18:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80005c1c:	02000513          	li	a0,32
    80005c20:	ffffe097          	auipc	ra,0xffffe
    80005c24:	e5c080e7          	jalr	-420(ra) # 80003a7c <_Znwm>
    80005c28:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80005c2c:	ffffe097          	auipc	ra,0xffffe
    80005c30:	234080e7          	jalr	564(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80005c34:	00010797          	auipc	a5,0x10
    80005c38:	83478793          	addi	a5,a5,-1996 # 80015468 <_ZTV7WorkerA+0x10>
    80005c3c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80005c40:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80005c44:	0000b517          	auipc	a0,0xb
    80005c48:	b2450513          	addi	a0,a0,-1244 # 80010768 <CONSOLE_STATUS+0x758>
    80005c4c:	00002097          	auipc	ra,0x2
    80005c50:	a60080e7          	jalr	-1440(ra) # 800076ac <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80005c54:	02000513          	li	a0,32
    80005c58:	ffffe097          	auipc	ra,0xffffe
    80005c5c:	e24080e7          	jalr	-476(ra) # 80003a7c <_Znwm>
    80005c60:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80005c64:	ffffe097          	auipc	ra,0xffffe
    80005c68:	1fc080e7          	jalr	508(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80005c6c:	00010797          	auipc	a5,0x10
    80005c70:	82478793          	addi	a5,a5,-2012 # 80015490 <_ZTV7WorkerB+0x10>
    80005c74:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80005c78:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80005c7c:	0000b517          	auipc	a0,0xb
    80005c80:	b0450513          	addi	a0,a0,-1276 # 80010780 <CONSOLE_STATUS+0x770>
    80005c84:	00002097          	auipc	ra,0x2
    80005c88:	a28080e7          	jalr	-1496(ra) # 800076ac <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80005c8c:	02000513          	li	a0,32
    80005c90:	ffffe097          	auipc	ra,0xffffe
    80005c94:	dec080e7          	jalr	-532(ra) # 80003a7c <_Znwm>
    80005c98:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80005c9c:	ffffe097          	auipc	ra,0xffffe
    80005ca0:	1c4080e7          	jalr	452(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80005ca4:	00010797          	auipc	a5,0x10
    80005ca8:	81478793          	addi	a5,a5,-2028 # 800154b8 <_ZTV7WorkerC+0x10>
    80005cac:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80005cb0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80005cb4:	0000b517          	auipc	a0,0xb
    80005cb8:	ae450513          	addi	a0,a0,-1308 # 80010798 <CONSOLE_STATUS+0x788>
    80005cbc:	00002097          	auipc	ra,0x2
    80005cc0:	9f0080e7          	jalr	-1552(ra) # 800076ac <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80005cc4:	02000513          	li	a0,32
    80005cc8:	ffffe097          	auipc	ra,0xffffe
    80005ccc:	db4080e7          	jalr	-588(ra) # 80003a7c <_Znwm>
    80005cd0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80005cd4:	ffffe097          	auipc	ra,0xffffe
    80005cd8:	18c080e7          	jalr	396(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80005cdc:	00010797          	auipc	a5,0x10
    80005ce0:	80478793          	addi	a5,a5,-2044 # 800154e0 <_ZTV7WorkerD+0x10>
    80005ce4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80005ce8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80005cec:	0000b517          	auipc	a0,0xb
    80005cf0:	ac450513          	addi	a0,a0,-1340 # 800107b0 <CONSOLE_STATUS+0x7a0>
    80005cf4:	00002097          	auipc	ra,0x2
    80005cf8:	9b8080e7          	jalr	-1608(ra) # 800076ac <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80005cfc:	00000493          	li	s1,0
    80005d00:	00300793          	li	a5,3
    80005d04:	0297c663          	blt	a5,s1,80005d30 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80005d08:	00349793          	slli	a5,s1,0x3
    80005d0c:	fe040713          	addi	a4,s0,-32
    80005d10:	00f707b3          	add	a5,a4,a5
    80005d14:	fe07b503          	ld	a0,-32(a5)
    80005d18:	ffffe097          	auipc	ra,0xffffe
    80005d1c:	100080e7          	jalr	256(ra) # 80003e18 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80005d20:	0014849b          	addiw	s1,s1,1
    80005d24:	fddff06f          	j	80005d00 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80005d28:	ffffe097          	auipc	ra,0xffffe
    80005d2c:	098080e7          	jalr	152(ra) # 80003dc0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005d30:	00010797          	auipc	a5,0x10
    80005d34:	f607c783          	lbu	a5,-160(a5) # 80015c90 <_ZL9finishedA>
    80005d38:	fe0788e3          	beqz	a5,80005d28 <_Z20Threads_CPP_API_testv+0x124>
    80005d3c:	00010797          	auipc	a5,0x10
    80005d40:	f557c783          	lbu	a5,-171(a5) # 80015c91 <_ZL9finishedB>
    80005d44:	fe0782e3          	beqz	a5,80005d28 <_Z20Threads_CPP_API_testv+0x124>
    80005d48:	00010797          	auipc	a5,0x10
    80005d4c:	f4a7c783          	lbu	a5,-182(a5) # 80015c92 <_ZL9finishedC>
    80005d50:	fc078ce3          	beqz	a5,80005d28 <_Z20Threads_CPP_API_testv+0x124>
    80005d54:	00010797          	auipc	a5,0x10
    80005d58:	f3f7c783          	lbu	a5,-193(a5) # 80015c93 <_ZL9finishedD>
    80005d5c:	fc0786e3          	beqz	a5,80005d28 <_Z20Threads_CPP_API_testv+0x124>
    80005d60:	fc040493          	addi	s1,s0,-64
    80005d64:	0080006f          	j	80005d6c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80005d68:	00848493          	addi	s1,s1,8
    80005d6c:	fe040793          	addi	a5,s0,-32
    80005d70:	08f48663          	beq	s1,a5,80005dfc <_Z20Threads_CPP_API_testv+0x1f8>
    80005d74:	0004b503          	ld	a0,0(s1)
    80005d78:	fe0508e3          	beqz	a0,80005d68 <_Z20Threads_CPP_API_testv+0x164>
    80005d7c:	00053783          	ld	a5,0(a0)
    80005d80:	0087b783          	ld	a5,8(a5)
    80005d84:	000780e7          	jalr	a5
    80005d88:	fe1ff06f          	j	80005d68 <_Z20Threads_CPP_API_testv+0x164>
    80005d8c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80005d90:	00048513          	mv	a0,s1
    80005d94:	ffffe097          	auipc	ra,0xffffe
    80005d98:	d38080e7          	jalr	-712(ra) # 80003acc <_ZdlPv>
    80005d9c:	00090513          	mv	a0,s2
    80005da0:	00011097          	auipc	ra,0x11
    80005da4:	028080e7          	jalr	40(ra) # 80016dc8 <_Unwind_Resume>
    80005da8:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80005dac:	00048513          	mv	a0,s1
    80005db0:	ffffe097          	auipc	ra,0xffffe
    80005db4:	d1c080e7          	jalr	-740(ra) # 80003acc <_ZdlPv>
    80005db8:	00090513          	mv	a0,s2
    80005dbc:	00011097          	auipc	ra,0x11
    80005dc0:	00c080e7          	jalr	12(ra) # 80016dc8 <_Unwind_Resume>
    80005dc4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80005dc8:	00048513          	mv	a0,s1
    80005dcc:	ffffe097          	auipc	ra,0xffffe
    80005dd0:	d00080e7          	jalr	-768(ra) # 80003acc <_ZdlPv>
    80005dd4:	00090513          	mv	a0,s2
    80005dd8:	00011097          	auipc	ra,0x11
    80005ddc:	ff0080e7          	jalr	-16(ra) # 80016dc8 <_Unwind_Resume>
    80005de0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80005de4:	00048513          	mv	a0,s1
    80005de8:	ffffe097          	auipc	ra,0xffffe
    80005dec:	ce4080e7          	jalr	-796(ra) # 80003acc <_ZdlPv>
    80005df0:	00090513          	mv	a0,s2
    80005df4:	00011097          	auipc	ra,0x11
    80005df8:	fd4080e7          	jalr	-44(ra) # 80016dc8 <_Unwind_Resume>
}
    80005dfc:	03813083          	ld	ra,56(sp)
    80005e00:	03013403          	ld	s0,48(sp)
    80005e04:	02813483          	ld	s1,40(sp)
    80005e08:	02013903          	ld	s2,32(sp)
    80005e0c:	04010113          	addi	sp,sp,64
    80005e10:	00008067          	ret

0000000080005e14 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80005e14:	ff010113          	addi	sp,sp,-16
    80005e18:	00113423          	sd	ra,8(sp)
    80005e1c:	00813023          	sd	s0,0(sp)
    80005e20:	01010413          	addi	s0,sp,16
    80005e24:	0000f797          	auipc	a5,0xf
    80005e28:	64478793          	addi	a5,a5,1604 # 80015468 <_ZTV7WorkerA+0x10>
    80005e2c:	00f53023          	sd	a5,0(a0)
    80005e30:	ffffe097          	auipc	ra,0xffffe
    80005e34:	dac080e7          	jalr	-596(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80005e38:	00813083          	ld	ra,8(sp)
    80005e3c:	00013403          	ld	s0,0(sp)
    80005e40:	01010113          	addi	sp,sp,16
    80005e44:	00008067          	ret

0000000080005e48 <_ZN7WorkerAD0Ev>:
    80005e48:	fe010113          	addi	sp,sp,-32
    80005e4c:	00113c23          	sd	ra,24(sp)
    80005e50:	00813823          	sd	s0,16(sp)
    80005e54:	00913423          	sd	s1,8(sp)
    80005e58:	02010413          	addi	s0,sp,32
    80005e5c:	00050493          	mv	s1,a0
    80005e60:	0000f797          	auipc	a5,0xf
    80005e64:	60878793          	addi	a5,a5,1544 # 80015468 <_ZTV7WorkerA+0x10>
    80005e68:	00f53023          	sd	a5,0(a0)
    80005e6c:	ffffe097          	auipc	ra,0xffffe
    80005e70:	d70080e7          	jalr	-656(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80005e74:	00048513          	mv	a0,s1
    80005e78:	ffffe097          	auipc	ra,0xffffe
    80005e7c:	c54080e7          	jalr	-940(ra) # 80003acc <_ZdlPv>
    80005e80:	01813083          	ld	ra,24(sp)
    80005e84:	01013403          	ld	s0,16(sp)
    80005e88:	00813483          	ld	s1,8(sp)
    80005e8c:	02010113          	addi	sp,sp,32
    80005e90:	00008067          	ret

0000000080005e94 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80005e94:	ff010113          	addi	sp,sp,-16
    80005e98:	00113423          	sd	ra,8(sp)
    80005e9c:	00813023          	sd	s0,0(sp)
    80005ea0:	01010413          	addi	s0,sp,16
    80005ea4:	0000f797          	auipc	a5,0xf
    80005ea8:	5ec78793          	addi	a5,a5,1516 # 80015490 <_ZTV7WorkerB+0x10>
    80005eac:	00f53023          	sd	a5,0(a0)
    80005eb0:	ffffe097          	auipc	ra,0xffffe
    80005eb4:	d2c080e7          	jalr	-724(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80005eb8:	00813083          	ld	ra,8(sp)
    80005ebc:	00013403          	ld	s0,0(sp)
    80005ec0:	01010113          	addi	sp,sp,16
    80005ec4:	00008067          	ret

0000000080005ec8 <_ZN7WorkerBD0Ev>:
    80005ec8:	fe010113          	addi	sp,sp,-32
    80005ecc:	00113c23          	sd	ra,24(sp)
    80005ed0:	00813823          	sd	s0,16(sp)
    80005ed4:	00913423          	sd	s1,8(sp)
    80005ed8:	02010413          	addi	s0,sp,32
    80005edc:	00050493          	mv	s1,a0
    80005ee0:	0000f797          	auipc	a5,0xf
    80005ee4:	5b078793          	addi	a5,a5,1456 # 80015490 <_ZTV7WorkerB+0x10>
    80005ee8:	00f53023          	sd	a5,0(a0)
    80005eec:	ffffe097          	auipc	ra,0xffffe
    80005ef0:	cf0080e7          	jalr	-784(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80005ef4:	00048513          	mv	a0,s1
    80005ef8:	ffffe097          	auipc	ra,0xffffe
    80005efc:	bd4080e7          	jalr	-1068(ra) # 80003acc <_ZdlPv>
    80005f00:	01813083          	ld	ra,24(sp)
    80005f04:	01013403          	ld	s0,16(sp)
    80005f08:	00813483          	ld	s1,8(sp)
    80005f0c:	02010113          	addi	sp,sp,32
    80005f10:	00008067          	ret

0000000080005f14 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80005f14:	ff010113          	addi	sp,sp,-16
    80005f18:	00113423          	sd	ra,8(sp)
    80005f1c:	00813023          	sd	s0,0(sp)
    80005f20:	01010413          	addi	s0,sp,16
    80005f24:	0000f797          	auipc	a5,0xf
    80005f28:	59478793          	addi	a5,a5,1428 # 800154b8 <_ZTV7WorkerC+0x10>
    80005f2c:	00f53023          	sd	a5,0(a0)
    80005f30:	ffffe097          	auipc	ra,0xffffe
    80005f34:	cac080e7          	jalr	-852(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80005f38:	00813083          	ld	ra,8(sp)
    80005f3c:	00013403          	ld	s0,0(sp)
    80005f40:	01010113          	addi	sp,sp,16
    80005f44:	00008067          	ret

0000000080005f48 <_ZN7WorkerCD0Ev>:
    80005f48:	fe010113          	addi	sp,sp,-32
    80005f4c:	00113c23          	sd	ra,24(sp)
    80005f50:	00813823          	sd	s0,16(sp)
    80005f54:	00913423          	sd	s1,8(sp)
    80005f58:	02010413          	addi	s0,sp,32
    80005f5c:	00050493          	mv	s1,a0
    80005f60:	0000f797          	auipc	a5,0xf
    80005f64:	55878793          	addi	a5,a5,1368 # 800154b8 <_ZTV7WorkerC+0x10>
    80005f68:	00f53023          	sd	a5,0(a0)
    80005f6c:	ffffe097          	auipc	ra,0xffffe
    80005f70:	c70080e7          	jalr	-912(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80005f74:	00048513          	mv	a0,s1
    80005f78:	ffffe097          	auipc	ra,0xffffe
    80005f7c:	b54080e7          	jalr	-1196(ra) # 80003acc <_ZdlPv>
    80005f80:	01813083          	ld	ra,24(sp)
    80005f84:	01013403          	ld	s0,16(sp)
    80005f88:	00813483          	ld	s1,8(sp)
    80005f8c:	02010113          	addi	sp,sp,32
    80005f90:	00008067          	ret

0000000080005f94 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80005f94:	ff010113          	addi	sp,sp,-16
    80005f98:	00113423          	sd	ra,8(sp)
    80005f9c:	00813023          	sd	s0,0(sp)
    80005fa0:	01010413          	addi	s0,sp,16
    80005fa4:	0000f797          	auipc	a5,0xf
    80005fa8:	53c78793          	addi	a5,a5,1340 # 800154e0 <_ZTV7WorkerD+0x10>
    80005fac:	00f53023          	sd	a5,0(a0)
    80005fb0:	ffffe097          	auipc	ra,0xffffe
    80005fb4:	c2c080e7          	jalr	-980(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80005fb8:	00813083          	ld	ra,8(sp)
    80005fbc:	00013403          	ld	s0,0(sp)
    80005fc0:	01010113          	addi	sp,sp,16
    80005fc4:	00008067          	ret

0000000080005fc8 <_ZN7WorkerDD0Ev>:
    80005fc8:	fe010113          	addi	sp,sp,-32
    80005fcc:	00113c23          	sd	ra,24(sp)
    80005fd0:	00813823          	sd	s0,16(sp)
    80005fd4:	00913423          	sd	s1,8(sp)
    80005fd8:	02010413          	addi	s0,sp,32
    80005fdc:	00050493          	mv	s1,a0
    80005fe0:	0000f797          	auipc	a5,0xf
    80005fe4:	50078793          	addi	a5,a5,1280 # 800154e0 <_ZTV7WorkerD+0x10>
    80005fe8:	00f53023          	sd	a5,0(a0)
    80005fec:	ffffe097          	auipc	ra,0xffffe
    80005ff0:	bf0080e7          	jalr	-1040(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80005ff4:	00048513          	mv	a0,s1
    80005ff8:	ffffe097          	auipc	ra,0xffffe
    80005ffc:	ad4080e7          	jalr	-1324(ra) # 80003acc <_ZdlPv>
    80006000:	01813083          	ld	ra,24(sp)
    80006004:	01013403          	ld	s0,16(sp)
    80006008:	00813483          	ld	s1,8(sp)
    8000600c:	02010113          	addi	sp,sp,32
    80006010:	00008067          	ret

0000000080006014 <_ZN7WorkerA3runEv>:
    void run() override {
    80006014:	ff010113          	addi	sp,sp,-16
    80006018:	00113423          	sd	ra,8(sp)
    8000601c:	00813023          	sd	s0,0(sp)
    80006020:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80006024:	00000593          	li	a1,0
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	774080e7          	jalr	1908(ra) # 8000579c <_ZN7WorkerA11workerBodyAEPv>
    }
    80006030:	00813083          	ld	ra,8(sp)
    80006034:	00013403          	ld	s0,0(sp)
    80006038:	01010113          	addi	sp,sp,16
    8000603c:	00008067          	ret

0000000080006040 <_ZN7WorkerB3runEv>:
    void run() override {
    80006040:	ff010113          	addi	sp,sp,-16
    80006044:	00113423          	sd	ra,8(sp)
    80006048:	00813023          	sd	s0,0(sp)
    8000604c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80006050:	00000593          	li	a1,0
    80006054:	00000097          	auipc	ra,0x0
    80006058:	814080e7          	jalr	-2028(ra) # 80005868 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000605c:	00813083          	ld	ra,8(sp)
    80006060:	00013403          	ld	s0,0(sp)
    80006064:	01010113          	addi	sp,sp,16
    80006068:	00008067          	ret

000000008000606c <_ZN7WorkerC3runEv>:
    void run() override {
    8000606c:	ff010113          	addi	sp,sp,-16
    80006070:	00113423          	sd	ra,8(sp)
    80006074:	00813023          	sd	s0,0(sp)
    80006078:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000607c:	00000593          	li	a1,0
    80006080:	00000097          	auipc	ra,0x0
    80006084:	8bc080e7          	jalr	-1860(ra) # 8000593c <_ZN7WorkerC11workerBodyCEPv>
    }
    80006088:	00813083          	ld	ra,8(sp)
    8000608c:	00013403          	ld	s0,0(sp)
    80006090:	01010113          	addi	sp,sp,16
    80006094:	00008067          	ret

0000000080006098 <_ZN7WorkerD3runEv>:
    void run() override {
    80006098:	ff010113          	addi	sp,sp,-16
    8000609c:	00113423          	sd	ra,8(sp)
    800060a0:	00813023          	sd	s0,0(sp)
    800060a4:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800060a8:	00000593          	li	a1,0
    800060ac:	00000097          	auipc	ra,0x0
    800060b0:	a10080e7          	jalr	-1520(ra) # 80005abc <_ZN7WorkerD11workerBodyDEPv>
    }
    800060b4:	00813083          	ld	ra,8(sp)
    800060b8:	00013403          	ld	s0,0(sp)
    800060bc:	01010113          	addi	sp,sp,16
    800060c0:	00008067          	ret

00000000800060c4 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800060c4:	f8010113          	addi	sp,sp,-128
    800060c8:	06113c23          	sd	ra,120(sp)
    800060cc:	06813823          	sd	s0,112(sp)
    800060d0:	06913423          	sd	s1,104(sp)
    800060d4:	07213023          	sd	s2,96(sp)
    800060d8:	05313c23          	sd	s3,88(sp)
    800060dc:	05413823          	sd	s4,80(sp)
    800060e0:	05513423          	sd	s5,72(sp)
    800060e4:	05613023          	sd	s6,64(sp)
    800060e8:	03713c23          	sd	s7,56(sp)
    800060ec:	03813823          	sd	s8,48(sp)
    800060f0:	03913423          	sd	s9,40(sp)
    800060f4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800060f8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800060fc:	0000a517          	auipc	a0,0xa
    80006100:	4f450513          	addi	a0,a0,1268 # 800105f0 <CONSOLE_STATUS+0x5e0>
    80006104:	00001097          	auipc	ra,0x1
    80006108:	5a8080e7          	jalr	1448(ra) # 800076ac <_Z11printStringPKc>
    getString(input, 30);
    8000610c:	01e00593          	li	a1,30
    80006110:	f8040493          	addi	s1,s0,-128
    80006114:	00048513          	mv	a0,s1
    80006118:	00001097          	auipc	ra,0x1
    8000611c:	61c080e7          	jalr	1564(ra) # 80007734 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80006120:	00048513          	mv	a0,s1
    80006124:	00001097          	auipc	ra,0x1
    80006128:	6e8080e7          	jalr	1768(ra) # 8000780c <_Z11stringToIntPKc>
    8000612c:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80006130:	0000a517          	auipc	a0,0xa
    80006134:	4e050513          	addi	a0,a0,1248 # 80010610 <CONSOLE_STATUS+0x600>
    80006138:	00001097          	auipc	ra,0x1
    8000613c:	574080e7          	jalr	1396(ra) # 800076ac <_Z11printStringPKc>
    getString(input, 30);
    80006140:	01e00593          	li	a1,30
    80006144:	00048513          	mv	a0,s1
    80006148:	00001097          	auipc	ra,0x1
    8000614c:	5ec080e7          	jalr	1516(ra) # 80007734 <_Z9getStringPci>
    n = stringToInt(input);
    80006150:	00048513          	mv	a0,s1
    80006154:	00001097          	auipc	ra,0x1
    80006158:	6b8080e7          	jalr	1720(ra) # 8000780c <_Z11stringToIntPKc>
    8000615c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80006160:	0000a517          	auipc	a0,0xa
    80006164:	4d050513          	addi	a0,a0,1232 # 80010630 <CONSOLE_STATUS+0x620>
    80006168:	00001097          	auipc	ra,0x1
    8000616c:	544080e7          	jalr	1348(ra) # 800076ac <_Z11printStringPKc>
    printInt(threadNum);
    80006170:	00000613          	li	a2,0
    80006174:	00a00593          	li	a1,10
    80006178:	00098513          	mv	a0,s3
    8000617c:	00001097          	auipc	ra,0x1
    80006180:	6e0080e7          	jalr	1760(ra) # 8000785c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80006184:	0000a517          	auipc	a0,0xa
    80006188:	4c450513          	addi	a0,a0,1220 # 80010648 <CONSOLE_STATUS+0x638>
    8000618c:	00001097          	auipc	ra,0x1
    80006190:	520080e7          	jalr	1312(ra) # 800076ac <_Z11printStringPKc>
    printInt(n);
    80006194:	00000613          	li	a2,0
    80006198:	00a00593          	li	a1,10
    8000619c:	00048513          	mv	a0,s1
    800061a0:	00001097          	auipc	ra,0x1
    800061a4:	6bc080e7          	jalr	1724(ra) # 8000785c <_Z8printIntiii>
    printString(".\n");
    800061a8:	0000a517          	auipc	a0,0xa
    800061ac:	03050513          	addi	a0,a0,48 # 800101d8 <CONSOLE_STATUS+0x1c8>
    800061b0:	00001097          	auipc	ra,0x1
    800061b4:	4fc080e7          	jalr	1276(ra) # 800076ac <_Z11printStringPKc>
    if (threadNum > n) {
    800061b8:	0334c463          	blt	s1,s3,800061e0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800061bc:	03305c63          	blez	s3,800061f4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800061c0:	03800513          	li	a0,56
    800061c4:	ffffe097          	auipc	ra,0xffffe
    800061c8:	8b8080e7          	jalr	-1864(ra) # 80003a7c <_Znwm>
    800061cc:	00050a93          	mv	s5,a0
    800061d0:	00048593          	mv	a1,s1
    800061d4:	00001097          	auipc	ra,0x1
    800061d8:	7a8080e7          	jalr	1960(ra) # 8000797c <_ZN9BufferCPPC1Ei>
    800061dc:	0300006f          	j	8000620c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800061e0:	0000a517          	auipc	a0,0xa
    800061e4:	48050513          	addi	a0,a0,1152 # 80010660 <CONSOLE_STATUS+0x650>
    800061e8:	00001097          	auipc	ra,0x1
    800061ec:	4c4080e7          	jalr	1220(ra) # 800076ac <_Z11printStringPKc>
        return;
    800061f0:	0140006f          	j	80006204 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800061f4:	0000a517          	auipc	a0,0xa
    800061f8:	4ac50513          	addi	a0,a0,1196 # 800106a0 <CONSOLE_STATUS+0x690>
    800061fc:	00001097          	auipc	ra,0x1
    80006200:	4b0080e7          	jalr	1200(ra) # 800076ac <_Z11printStringPKc>
        return;
    80006204:	000c0113          	mv	sp,s8
    80006208:	2140006f          	j	8000641c <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000620c:	01000513          	li	a0,16
    80006210:	ffffe097          	auipc	ra,0xffffe
    80006214:	86c080e7          	jalr	-1940(ra) # 80003a7c <_Znwm>
    80006218:	00050913          	mv	s2,a0
    8000621c:	00000593          	li	a1,0
    80006220:	ffffe097          	auipc	ra,0xffffe
    80006224:	a60080e7          	jalr	-1440(ra) # 80003c80 <_ZN9SemaphoreC1Ej>
    80006228:	00010797          	auipc	a5,0x10
    8000622c:	a727bc23          	sd	s2,-1416(a5) # 80015ca0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80006230:	00399793          	slli	a5,s3,0x3
    80006234:	00f78793          	addi	a5,a5,15
    80006238:	ff07f793          	andi	a5,a5,-16
    8000623c:	40f10133          	sub	sp,sp,a5
    80006240:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80006244:	0019871b          	addiw	a4,s3,1
    80006248:	00171793          	slli	a5,a4,0x1
    8000624c:	00e787b3          	add	a5,a5,a4
    80006250:	00379793          	slli	a5,a5,0x3
    80006254:	00f78793          	addi	a5,a5,15
    80006258:	ff07f793          	andi	a5,a5,-16
    8000625c:	40f10133          	sub	sp,sp,a5
    80006260:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80006264:	00199493          	slli	s1,s3,0x1
    80006268:	013484b3          	add	s1,s1,s3
    8000626c:	00349493          	slli	s1,s1,0x3
    80006270:	009b04b3          	add	s1,s6,s1
    80006274:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80006278:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000627c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80006280:	02800513          	li	a0,40
    80006284:	ffffd097          	auipc	ra,0xffffd
    80006288:	7f8080e7          	jalr	2040(ra) # 80003a7c <_Znwm>
    8000628c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80006290:	ffffe097          	auipc	ra,0xffffe
    80006294:	bd0080e7          	jalr	-1072(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80006298:	0000f797          	auipc	a5,0xf
    8000629c:	2c078793          	addi	a5,a5,704 # 80015558 <_ZTV8Consumer+0x10>
    800062a0:	00fbb023          	sd	a5,0(s7)
    800062a4:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800062a8:	000b8513          	mv	a0,s7
    800062ac:	ffffe097          	auipc	ra,0xffffe
    800062b0:	b6c080e7          	jalr	-1172(ra) # 80003e18 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800062b4:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800062b8:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800062bc:	00010797          	auipc	a5,0x10
    800062c0:	9e47b783          	ld	a5,-1564(a5) # 80015ca0 <_ZL10waitForAll>
    800062c4:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800062c8:	02800513          	li	a0,40
    800062cc:	ffffd097          	auipc	ra,0xffffd
    800062d0:	7b0080e7          	jalr	1968(ra) # 80003a7c <_Znwm>
    800062d4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800062d8:	ffffe097          	auipc	ra,0xffffe
    800062dc:	b88080e7          	jalr	-1144(ra) # 80003e60 <_ZN6ThreadC1Ev>
    800062e0:	0000f797          	auipc	a5,0xf
    800062e4:	22878793          	addi	a5,a5,552 # 80015508 <_ZTV16ProducerKeyborad+0x10>
    800062e8:	00f4b023          	sd	a5,0(s1)
    800062ec:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800062f0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800062f4:	00048513          	mv	a0,s1
    800062f8:	ffffe097          	auipc	ra,0xffffe
    800062fc:	b20080e7          	jalr	-1248(ra) # 80003e18 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80006300:	00100913          	li	s2,1
    80006304:	0300006f          	j	80006334 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80006308:	0000f797          	auipc	a5,0xf
    8000630c:	22878793          	addi	a5,a5,552 # 80015530 <_ZTV8Producer+0x10>
    80006310:	00fcb023          	sd	a5,0(s9)
    80006314:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80006318:	00391793          	slli	a5,s2,0x3
    8000631c:	00fa07b3          	add	a5,s4,a5
    80006320:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80006324:	000c8513          	mv	a0,s9
    80006328:	ffffe097          	auipc	ra,0xffffe
    8000632c:	af0080e7          	jalr	-1296(ra) # 80003e18 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80006330:	0019091b          	addiw	s2,s2,1
    80006334:	05395263          	bge	s2,s3,80006378 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80006338:	00191493          	slli	s1,s2,0x1
    8000633c:	012484b3          	add	s1,s1,s2
    80006340:	00349493          	slli	s1,s1,0x3
    80006344:	009b04b3          	add	s1,s6,s1
    80006348:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    8000634c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80006350:	00010797          	auipc	a5,0x10
    80006354:	9507b783          	ld	a5,-1712(a5) # 80015ca0 <_ZL10waitForAll>
    80006358:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    8000635c:	02800513          	li	a0,40
    80006360:	ffffd097          	auipc	ra,0xffffd
    80006364:	71c080e7          	jalr	1820(ra) # 80003a7c <_Znwm>
    80006368:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000636c:	ffffe097          	auipc	ra,0xffffe
    80006370:	af4080e7          	jalr	-1292(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80006374:	f95ff06f          	j	80006308 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80006378:	ffffe097          	auipc	ra,0xffffe
    8000637c:	a48080e7          	jalr	-1464(ra) # 80003dc0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80006380:	00000493          	li	s1,0
    80006384:	0099ce63          	blt	s3,s1,800063a0 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80006388:	00010517          	auipc	a0,0x10
    8000638c:	91853503          	ld	a0,-1768(a0) # 80015ca0 <_ZL10waitForAll>
    80006390:	ffffe097          	auipc	ra,0xffffe
    80006394:	928080e7          	jalr	-1752(ra) # 80003cb8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80006398:	0014849b          	addiw	s1,s1,1
    8000639c:	fe9ff06f          	j	80006384 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800063a0:	00010517          	auipc	a0,0x10
    800063a4:	90053503          	ld	a0,-1792(a0) # 80015ca0 <_ZL10waitForAll>
    800063a8:	00050863          	beqz	a0,800063b8 <_Z20testConsumerProducerv+0x2f4>
    800063ac:	00053783          	ld	a5,0(a0)
    800063b0:	0087b783          	ld	a5,8(a5)
    800063b4:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800063b8:	00000493          	li	s1,0
    800063bc:	0080006f          	j	800063c4 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800063c0:	0014849b          	addiw	s1,s1,1
    800063c4:	0334d263          	bge	s1,s3,800063e8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800063c8:	00349793          	slli	a5,s1,0x3
    800063cc:	00fa07b3          	add	a5,s4,a5
    800063d0:	0007b503          	ld	a0,0(a5)
    800063d4:	fe0506e3          	beqz	a0,800063c0 <_Z20testConsumerProducerv+0x2fc>
    800063d8:	00053783          	ld	a5,0(a0)
    800063dc:	0087b783          	ld	a5,8(a5)
    800063e0:	000780e7          	jalr	a5
    800063e4:	fddff06f          	j	800063c0 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800063e8:	000b8a63          	beqz	s7,800063fc <_Z20testConsumerProducerv+0x338>
    800063ec:	000bb783          	ld	a5,0(s7)
    800063f0:	0087b783          	ld	a5,8(a5)
    800063f4:	000b8513          	mv	a0,s7
    800063f8:	000780e7          	jalr	a5
    delete buffer;
    800063fc:	000a8e63          	beqz	s5,80006418 <_Z20testConsumerProducerv+0x354>
    80006400:	000a8513          	mv	a0,s5
    80006404:	00002097          	auipc	ra,0x2
    80006408:	870080e7          	jalr	-1936(ra) # 80007c74 <_ZN9BufferCPPD1Ev>
    8000640c:	000a8513          	mv	a0,s5
    80006410:	ffffd097          	auipc	ra,0xffffd
    80006414:	6bc080e7          	jalr	1724(ra) # 80003acc <_ZdlPv>
    80006418:	000c0113          	mv	sp,s8
}
    8000641c:	f8040113          	addi	sp,s0,-128
    80006420:	07813083          	ld	ra,120(sp)
    80006424:	07013403          	ld	s0,112(sp)
    80006428:	06813483          	ld	s1,104(sp)
    8000642c:	06013903          	ld	s2,96(sp)
    80006430:	05813983          	ld	s3,88(sp)
    80006434:	05013a03          	ld	s4,80(sp)
    80006438:	04813a83          	ld	s5,72(sp)
    8000643c:	04013b03          	ld	s6,64(sp)
    80006440:	03813b83          	ld	s7,56(sp)
    80006444:	03013c03          	ld	s8,48(sp)
    80006448:	02813c83          	ld	s9,40(sp)
    8000644c:	08010113          	addi	sp,sp,128
    80006450:	00008067          	ret
    80006454:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80006458:	000a8513          	mv	a0,s5
    8000645c:	ffffd097          	auipc	ra,0xffffd
    80006460:	670080e7          	jalr	1648(ra) # 80003acc <_ZdlPv>
    80006464:	00048513          	mv	a0,s1
    80006468:	00011097          	auipc	ra,0x11
    8000646c:	960080e7          	jalr	-1696(ra) # 80016dc8 <_Unwind_Resume>
    80006470:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80006474:	00090513          	mv	a0,s2
    80006478:	ffffd097          	auipc	ra,0xffffd
    8000647c:	654080e7          	jalr	1620(ra) # 80003acc <_ZdlPv>
    80006480:	00048513          	mv	a0,s1
    80006484:	00011097          	auipc	ra,0x11
    80006488:	944080e7          	jalr	-1724(ra) # 80016dc8 <_Unwind_Resume>
    8000648c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80006490:	000b8513          	mv	a0,s7
    80006494:	ffffd097          	auipc	ra,0xffffd
    80006498:	638080e7          	jalr	1592(ra) # 80003acc <_ZdlPv>
    8000649c:	00048513          	mv	a0,s1
    800064a0:	00011097          	auipc	ra,0x11
    800064a4:	928080e7          	jalr	-1752(ra) # 80016dc8 <_Unwind_Resume>
    800064a8:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800064ac:	00048513          	mv	a0,s1
    800064b0:	ffffd097          	auipc	ra,0xffffd
    800064b4:	61c080e7          	jalr	1564(ra) # 80003acc <_ZdlPv>
    800064b8:	00090513          	mv	a0,s2
    800064bc:	00011097          	auipc	ra,0x11
    800064c0:	90c080e7          	jalr	-1780(ra) # 80016dc8 <_Unwind_Resume>
    800064c4:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800064c8:	000c8513          	mv	a0,s9
    800064cc:	ffffd097          	auipc	ra,0xffffd
    800064d0:	600080e7          	jalr	1536(ra) # 80003acc <_ZdlPv>
    800064d4:	00048513          	mv	a0,s1
    800064d8:	00011097          	auipc	ra,0x11
    800064dc:	8f0080e7          	jalr	-1808(ra) # 80016dc8 <_Unwind_Resume>

00000000800064e0 <_ZN8Consumer3runEv>:
    void run() override {
    800064e0:	fd010113          	addi	sp,sp,-48
    800064e4:	02113423          	sd	ra,40(sp)
    800064e8:	02813023          	sd	s0,32(sp)
    800064ec:	00913c23          	sd	s1,24(sp)
    800064f0:	01213823          	sd	s2,16(sp)
    800064f4:	01313423          	sd	s3,8(sp)
    800064f8:	03010413          	addi	s0,sp,48
    800064fc:	00050913          	mv	s2,a0
        int i = 0;
    80006500:	00000993          	li	s3,0
    80006504:	0100006f          	j	80006514 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80006508:	00a00513          	li	a0,10
    8000650c:	ffffe097          	auipc	ra,0xffffe
    80006510:	d54080e7          	jalr	-684(ra) # 80004260 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80006514:	0000f797          	auipc	a5,0xf
    80006518:	7847a783          	lw	a5,1924(a5) # 80015c98 <_ZL9threadEnd>
    8000651c:	04079a63          	bnez	a5,80006570 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80006520:	02093783          	ld	a5,32(s2)
    80006524:	0087b503          	ld	a0,8(a5)
    80006528:	00001097          	auipc	ra,0x1
    8000652c:	638080e7          	jalr	1592(ra) # 80007b60 <_ZN9BufferCPP3getEv>
            i++;
    80006530:	0019849b          	addiw	s1,s3,1
    80006534:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80006538:	0ff57513          	andi	a0,a0,255
    8000653c:	ffffe097          	auipc	ra,0xffffe
    80006540:	d24080e7          	jalr	-732(ra) # 80004260 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80006544:	05000793          	li	a5,80
    80006548:	02f4e4bb          	remw	s1,s1,a5
    8000654c:	fc0494e3          	bnez	s1,80006514 <_ZN8Consumer3runEv+0x34>
    80006550:	fb9ff06f          	j	80006508 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80006554:	02093783          	ld	a5,32(s2)
    80006558:	0087b503          	ld	a0,8(a5)
    8000655c:	00001097          	auipc	ra,0x1
    80006560:	604080e7          	jalr	1540(ra) # 80007b60 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80006564:	0ff57513          	andi	a0,a0,255
    80006568:	ffffe097          	auipc	ra,0xffffe
    8000656c:	cf8080e7          	jalr	-776(ra) # 80004260 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80006570:	02093783          	ld	a5,32(s2)
    80006574:	0087b503          	ld	a0,8(a5)
    80006578:	00001097          	auipc	ra,0x1
    8000657c:	674080e7          	jalr	1652(ra) # 80007bec <_ZN9BufferCPP6getCntEv>
    80006580:	fca04ae3          	bgtz	a0,80006554 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80006584:	02093783          	ld	a5,32(s2)
    80006588:	0107b503          	ld	a0,16(a5)
    8000658c:	ffffd097          	auipc	ra,0xffffd
    80006590:	758080e7          	jalr	1880(ra) # 80003ce4 <_ZN9Semaphore6signalEv>
    }
    80006594:	02813083          	ld	ra,40(sp)
    80006598:	02013403          	ld	s0,32(sp)
    8000659c:	01813483          	ld	s1,24(sp)
    800065a0:	01013903          	ld	s2,16(sp)
    800065a4:	00813983          	ld	s3,8(sp)
    800065a8:	03010113          	addi	sp,sp,48
    800065ac:	00008067          	ret

00000000800065b0 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800065b0:	ff010113          	addi	sp,sp,-16
    800065b4:	00113423          	sd	ra,8(sp)
    800065b8:	00813023          	sd	s0,0(sp)
    800065bc:	01010413          	addi	s0,sp,16
    800065c0:	0000f797          	auipc	a5,0xf
    800065c4:	f9878793          	addi	a5,a5,-104 # 80015558 <_ZTV8Consumer+0x10>
    800065c8:	00f53023          	sd	a5,0(a0)
    800065cc:	ffffd097          	auipc	ra,0xffffd
    800065d0:	610080e7          	jalr	1552(ra) # 80003bdc <_ZN6ThreadD1Ev>
    800065d4:	00813083          	ld	ra,8(sp)
    800065d8:	00013403          	ld	s0,0(sp)
    800065dc:	01010113          	addi	sp,sp,16
    800065e0:	00008067          	ret

00000000800065e4 <_ZN8ConsumerD0Ev>:
    800065e4:	fe010113          	addi	sp,sp,-32
    800065e8:	00113c23          	sd	ra,24(sp)
    800065ec:	00813823          	sd	s0,16(sp)
    800065f0:	00913423          	sd	s1,8(sp)
    800065f4:	02010413          	addi	s0,sp,32
    800065f8:	00050493          	mv	s1,a0
    800065fc:	0000f797          	auipc	a5,0xf
    80006600:	f5c78793          	addi	a5,a5,-164 # 80015558 <_ZTV8Consumer+0x10>
    80006604:	00f53023          	sd	a5,0(a0)
    80006608:	ffffd097          	auipc	ra,0xffffd
    8000660c:	5d4080e7          	jalr	1492(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80006610:	00048513          	mv	a0,s1
    80006614:	ffffd097          	auipc	ra,0xffffd
    80006618:	4b8080e7          	jalr	1208(ra) # 80003acc <_ZdlPv>
    8000661c:	01813083          	ld	ra,24(sp)
    80006620:	01013403          	ld	s0,16(sp)
    80006624:	00813483          	ld	s1,8(sp)
    80006628:	02010113          	addi	sp,sp,32
    8000662c:	00008067          	ret

0000000080006630 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80006630:	ff010113          	addi	sp,sp,-16
    80006634:	00113423          	sd	ra,8(sp)
    80006638:	00813023          	sd	s0,0(sp)
    8000663c:	01010413          	addi	s0,sp,16
    80006640:	0000f797          	auipc	a5,0xf
    80006644:	ec878793          	addi	a5,a5,-312 # 80015508 <_ZTV16ProducerKeyborad+0x10>
    80006648:	00f53023          	sd	a5,0(a0)
    8000664c:	ffffd097          	auipc	ra,0xffffd
    80006650:	590080e7          	jalr	1424(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80006654:	00813083          	ld	ra,8(sp)
    80006658:	00013403          	ld	s0,0(sp)
    8000665c:	01010113          	addi	sp,sp,16
    80006660:	00008067          	ret

0000000080006664 <_ZN16ProducerKeyboradD0Ev>:
    80006664:	fe010113          	addi	sp,sp,-32
    80006668:	00113c23          	sd	ra,24(sp)
    8000666c:	00813823          	sd	s0,16(sp)
    80006670:	00913423          	sd	s1,8(sp)
    80006674:	02010413          	addi	s0,sp,32
    80006678:	00050493          	mv	s1,a0
    8000667c:	0000f797          	auipc	a5,0xf
    80006680:	e8c78793          	addi	a5,a5,-372 # 80015508 <_ZTV16ProducerKeyborad+0x10>
    80006684:	00f53023          	sd	a5,0(a0)
    80006688:	ffffd097          	auipc	ra,0xffffd
    8000668c:	554080e7          	jalr	1364(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80006690:	00048513          	mv	a0,s1
    80006694:	ffffd097          	auipc	ra,0xffffd
    80006698:	438080e7          	jalr	1080(ra) # 80003acc <_ZdlPv>
    8000669c:	01813083          	ld	ra,24(sp)
    800066a0:	01013403          	ld	s0,16(sp)
    800066a4:	00813483          	ld	s1,8(sp)
    800066a8:	02010113          	addi	sp,sp,32
    800066ac:	00008067          	ret

00000000800066b0 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800066b0:	ff010113          	addi	sp,sp,-16
    800066b4:	00113423          	sd	ra,8(sp)
    800066b8:	00813023          	sd	s0,0(sp)
    800066bc:	01010413          	addi	s0,sp,16
    800066c0:	0000f797          	auipc	a5,0xf
    800066c4:	e7078793          	addi	a5,a5,-400 # 80015530 <_ZTV8Producer+0x10>
    800066c8:	00f53023          	sd	a5,0(a0)
    800066cc:	ffffd097          	auipc	ra,0xffffd
    800066d0:	510080e7          	jalr	1296(ra) # 80003bdc <_ZN6ThreadD1Ev>
    800066d4:	00813083          	ld	ra,8(sp)
    800066d8:	00013403          	ld	s0,0(sp)
    800066dc:	01010113          	addi	sp,sp,16
    800066e0:	00008067          	ret

00000000800066e4 <_ZN8ProducerD0Ev>:
    800066e4:	fe010113          	addi	sp,sp,-32
    800066e8:	00113c23          	sd	ra,24(sp)
    800066ec:	00813823          	sd	s0,16(sp)
    800066f0:	00913423          	sd	s1,8(sp)
    800066f4:	02010413          	addi	s0,sp,32
    800066f8:	00050493          	mv	s1,a0
    800066fc:	0000f797          	auipc	a5,0xf
    80006700:	e3478793          	addi	a5,a5,-460 # 80015530 <_ZTV8Producer+0x10>
    80006704:	00f53023          	sd	a5,0(a0)
    80006708:	ffffd097          	auipc	ra,0xffffd
    8000670c:	4d4080e7          	jalr	1236(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80006710:	00048513          	mv	a0,s1
    80006714:	ffffd097          	auipc	ra,0xffffd
    80006718:	3b8080e7          	jalr	952(ra) # 80003acc <_ZdlPv>
    8000671c:	01813083          	ld	ra,24(sp)
    80006720:	01013403          	ld	s0,16(sp)
    80006724:	00813483          	ld	s1,8(sp)
    80006728:	02010113          	addi	sp,sp,32
    8000672c:	00008067          	ret

0000000080006730 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80006730:	fe010113          	addi	sp,sp,-32
    80006734:	00113c23          	sd	ra,24(sp)
    80006738:	00813823          	sd	s0,16(sp)
    8000673c:	00913423          	sd	s1,8(sp)
    80006740:	02010413          	addi	s0,sp,32
    80006744:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80006748:	ffffb097          	auipc	ra,0xffffb
    8000674c:	d9c080e7          	jalr	-612(ra) # 800014e4 <_Z4getcv>
    80006750:	0005059b          	sext.w	a1,a0
    80006754:	01b00793          	li	a5,27
    80006758:	00f58c63          	beq	a1,a5,80006770 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    8000675c:	0204b783          	ld	a5,32(s1)
    80006760:	0087b503          	ld	a0,8(a5)
    80006764:	00001097          	auipc	ra,0x1
    80006768:	36c080e7          	jalr	876(ra) # 80007ad0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    8000676c:	fddff06f          	j	80006748 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80006770:	00100793          	li	a5,1
    80006774:	0000f717          	auipc	a4,0xf
    80006778:	52f72223          	sw	a5,1316(a4) # 80015c98 <_ZL9threadEnd>
        td->buffer->put('!');
    8000677c:	0204b783          	ld	a5,32(s1)
    80006780:	02100593          	li	a1,33
    80006784:	0087b503          	ld	a0,8(a5)
    80006788:	00001097          	auipc	ra,0x1
    8000678c:	348080e7          	jalr	840(ra) # 80007ad0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80006790:	0204b783          	ld	a5,32(s1)
    80006794:	0107b503          	ld	a0,16(a5)
    80006798:	ffffd097          	auipc	ra,0xffffd
    8000679c:	54c080e7          	jalr	1356(ra) # 80003ce4 <_ZN9Semaphore6signalEv>
    }
    800067a0:	01813083          	ld	ra,24(sp)
    800067a4:	01013403          	ld	s0,16(sp)
    800067a8:	00813483          	ld	s1,8(sp)
    800067ac:	02010113          	addi	sp,sp,32
    800067b0:	00008067          	ret

00000000800067b4 <_ZN8Producer3runEv>:
    void run() override {
    800067b4:	fe010113          	addi	sp,sp,-32
    800067b8:	00113c23          	sd	ra,24(sp)
    800067bc:	00813823          	sd	s0,16(sp)
    800067c0:	00913423          	sd	s1,8(sp)
    800067c4:	01213023          	sd	s2,0(sp)
    800067c8:	02010413          	addi	s0,sp,32
    800067cc:	00050493          	mv	s1,a0
        int i = 0;
    800067d0:	00000913          	li	s2,0
        while (!threadEnd) {
    800067d4:	0000f797          	auipc	a5,0xf
    800067d8:	4c47a783          	lw	a5,1220(a5) # 80015c98 <_ZL9threadEnd>
    800067dc:	04079263          	bnez	a5,80006820 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800067e0:	0204b783          	ld	a5,32(s1)
    800067e4:	0007a583          	lw	a1,0(a5)
    800067e8:	0305859b          	addiw	a1,a1,48
    800067ec:	0087b503          	ld	a0,8(a5)
    800067f0:	00001097          	auipc	ra,0x1
    800067f4:	2e0080e7          	jalr	736(ra) # 80007ad0 <_ZN9BufferCPP3putEi>
            i++;
    800067f8:	0019071b          	addiw	a4,s2,1
    800067fc:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80006800:	0204b783          	ld	a5,32(s1)
    80006804:	0007a783          	lw	a5,0(a5)
    80006808:	00e787bb          	addw	a5,a5,a4
    8000680c:	00500513          	li	a0,5
    80006810:	02a7e53b          	remw	a0,a5,a0
    80006814:	ffffd097          	auipc	ra,0xffffd
    80006818:	684080e7          	jalr	1668(ra) # 80003e98 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    8000681c:	fb9ff06f          	j	800067d4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80006820:	0204b783          	ld	a5,32(s1)
    80006824:	0107b503          	ld	a0,16(a5)
    80006828:	ffffd097          	auipc	ra,0xffffd
    8000682c:	4bc080e7          	jalr	1212(ra) # 80003ce4 <_ZN9Semaphore6signalEv>
    }
    80006830:	01813083          	ld	ra,24(sp)
    80006834:	01013403          	ld	s0,16(sp)
    80006838:	00813483          	ld	s1,8(sp)
    8000683c:	00013903          	ld	s2,0(sp)
    80006840:	02010113          	addi	sp,sp,32
    80006844:	00008067          	ret

0000000080006848 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006848:	fe010113          	addi	sp,sp,-32
    8000684c:	00113c23          	sd	ra,24(sp)
    80006850:	00813823          	sd	s0,16(sp)
    80006854:	00913423          	sd	s1,8(sp)
    80006858:	01213023          	sd	s2,0(sp)
    8000685c:	02010413          	addi	s0,sp,32
    80006860:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006864:	00100793          	li	a5,1
    80006868:	02a7f863          	bgeu	a5,a0,80006898 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000686c:	00a00793          	li	a5,10
    80006870:	02f577b3          	remu	a5,a0,a5
    80006874:	02078e63          	beqz	a5,800068b0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006878:	fff48513          	addi	a0,s1,-1
    8000687c:	00000097          	auipc	ra,0x0
    80006880:	fcc080e7          	jalr	-52(ra) # 80006848 <_ZL9fibonaccim>
    80006884:	00050913          	mv	s2,a0
    80006888:	ffe48513          	addi	a0,s1,-2
    8000688c:	00000097          	auipc	ra,0x0
    80006890:	fbc080e7          	jalr	-68(ra) # 80006848 <_ZL9fibonaccim>
    80006894:	00a90533          	add	a0,s2,a0
}
    80006898:	01813083          	ld	ra,24(sp)
    8000689c:	01013403          	ld	s0,16(sp)
    800068a0:	00813483          	ld	s1,8(sp)
    800068a4:	00013903          	ld	s2,0(sp)
    800068a8:	02010113          	addi	sp,sp,32
    800068ac:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800068b0:	ffffb097          	auipc	ra,0xffffb
    800068b4:	aa8080e7          	jalr	-1368(ra) # 80001358 <_Z15thread_dispatchv>
    800068b8:	fc1ff06f          	j	80006878 <_ZL9fibonaccim+0x30>

00000000800068bc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800068bc:	fe010113          	addi	sp,sp,-32
    800068c0:	00113c23          	sd	ra,24(sp)
    800068c4:	00813823          	sd	s0,16(sp)
    800068c8:	00913423          	sd	s1,8(sp)
    800068cc:	01213023          	sd	s2,0(sp)
    800068d0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800068d4:	00a00493          	li	s1,10
    800068d8:	0400006f          	j	80006918 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800068dc:	0000a517          	auipc	a0,0xa
    800068e0:	e5450513          	addi	a0,a0,-428 # 80010730 <CONSOLE_STATUS+0x720>
    800068e4:	00001097          	auipc	ra,0x1
    800068e8:	dc8080e7          	jalr	-568(ra) # 800076ac <_Z11printStringPKc>
    800068ec:	00000613          	li	a2,0
    800068f0:	00a00593          	li	a1,10
    800068f4:	00048513          	mv	a0,s1
    800068f8:	00001097          	auipc	ra,0x1
    800068fc:	f64080e7          	jalr	-156(ra) # 8000785c <_Z8printIntiii>
    80006900:	0000a517          	auipc	a0,0xa
    80006904:	0e050513          	addi	a0,a0,224 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80006908:	00001097          	auipc	ra,0x1
    8000690c:	da4080e7          	jalr	-604(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006910:	0014849b          	addiw	s1,s1,1
    80006914:	0ff4f493          	andi	s1,s1,255
    80006918:	00c00793          	li	a5,12
    8000691c:	fc97f0e3          	bgeu	a5,s1,800068dc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006920:	0000a517          	auipc	a0,0xa
    80006924:	e1850513          	addi	a0,a0,-488 # 80010738 <CONSOLE_STATUS+0x728>
    80006928:	00001097          	auipc	ra,0x1
    8000692c:	d84080e7          	jalr	-636(ra) # 800076ac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006930:	00500313          	li	t1,5
    thread_dispatch();
    80006934:	ffffb097          	auipc	ra,0xffffb
    80006938:	a24080e7          	jalr	-1500(ra) # 80001358 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000693c:	01000513          	li	a0,16
    80006940:	00000097          	auipc	ra,0x0
    80006944:	f08080e7          	jalr	-248(ra) # 80006848 <_ZL9fibonaccim>
    80006948:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000694c:	0000a517          	auipc	a0,0xa
    80006950:	dfc50513          	addi	a0,a0,-516 # 80010748 <CONSOLE_STATUS+0x738>
    80006954:	00001097          	auipc	ra,0x1
    80006958:	d58080e7          	jalr	-680(ra) # 800076ac <_Z11printStringPKc>
    8000695c:	00000613          	li	a2,0
    80006960:	00a00593          	li	a1,10
    80006964:	0009051b          	sext.w	a0,s2
    80006968:	00001097          	auipc	ra,0x1
    8000696c:	ef4080e7          	jalr	-268(ra) # 8000785c <_Z8printIntiii>
    80006970:	0000a517          	auipc	a0,0xa
    80006974:	07050513          	addi	a0,a0,112 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80006978:	00001097          	auipc	ra,0x1
    8000697c:	d34080e7          	jalr	-716(ra) # 800076ac <_Z11printStringPKc>
    80006980:	0400006f          	j	800069c0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006984:	0000a517          	auipc	a0,0xa
    80006988:	dac50513          	addi	a0,a0,-596 # 80010730 <CONSOLE_STATUS+0x720>
    8000698c:	00001097          	auipc	ra,0x1
    80006990:	d20080e7          	jalr	-736(ra) # 800076ac <_Z11printStringPKc>
    80006994:	00000613          	li	a2,0
    80006998:	00a00593          	li	a1,10
    8000699c:	00048513          	mv	a0,s1
    800069a0:	00001097          	auipc	ra,0x1
    800069a4:	ebc080e7          	jalr	-324(ra) # 8000785c <_Z8printIntiii>
    800069a8:	0000a517          	auipc	a0,0xa
    800069ac:	03850513          	addi	a0,a0,56 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800069b0:	00001097          	auipc	ra,0x1
    800069b4:	cfc080e7          	jalr	-772(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 16; i++) {
    800069b8:	0014849b          	addiw	s1,s1,1
    800069bc:	0ff4f493          	andi	s1,s1,255
    800069c0:	00f00793          	li	a5,15
    800069c4:	fc97f0e3          	bgeu	a5,s1,80006984 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800069c8:	0000a517          	auipc	a0,0xa
    800069cc:	d9050513          	addi	a0,a0,-624 # 80010758 <CONSOLE_STATUS+0x748>
    800069d0:	00001097          	auipc	ra,0x1
    800069d4:	cdc080e7          	jalr	-804(ra) # 800076ac <_Z11printStringPKc>
    finishedD = true;
    800069d8:	00100793          	li	a5,1
    800069dc:	0000f717          	auipc	a4,0xf
    800069e0:	2cf70623          	sb	a5,716(a4) # 80015ca8 <_ZL9finishedD>
    thread_dispatch();
    800069e4:	ffffb097          	auipc	ra,0xffffb
    800069e8:	974080e7          	jalr	-1676(ra) # 80001358 <_Z15thread_dispatchv>
}
    800069ec:	01813083          	ld	ra,24(sp)
    800069f0:	01013403          	ld	s0,16(sp)
    800069f4:	00813483          	ld	s1,8(sp)
    800069f8:	00013903          	ld	s2,0(sp)
    800069fc:	02010113          	addi	sp,sp,32
    80006a00:	00008067          	ret

0000000080006a04 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006a04:	fe010113          	addi	sp,sp,-32
    80006a08:	00113c23          	sd	ra,24(sp)
    80006a0c:	00813823          	sd	s0,16(sp)
    80006a10:	00913423          	sd	s1,8(sp)
    80006a14:	01213023          	sd	s2,0(sp)
    80006a18:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006a1c:	00000493          	li	s1,0
    80006a20:	0400006f          	j	80006a60 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006a24:	0000a517          	auipc	a0,0xa
    80006a28:	cdc50513          	addi	a0,a0,-804 # 80010700 <CONSOLE_STATUS+0x6f0>
    80006a2c:	00001097          	auipc	ra,0x1
    80006a30:	c80080e7          	jalr	-896(ra) # 800076ac <_Z11printStringPKc>
    80006a34:	00000613          	li	a2,0
    80006a38:	00a00593          	li	a1,10
    80006a3c:	00048513          	mv	a0,s1
    80006a40:	00001097          	auipc	ra,0x1
    80006a44:	e1c080e7          	jalr	-484(ra) # 8000785c <_Z8printIntiii>
    80006a48:	0000a517          	auipc	a0,0xa
    80006a4c:	f9850513          	addi	a0,a0,-104 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80006a50:	00001097          	auipc	ra,0x1
    80006a54:	c5c080e7          	jalr	-932(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006a58:	0014849b          	addiw	s1,s1,1
    80006a5c:	0ff4f493          	andi	s1,s1,255
    80006a60:	00200793          	li	a5,2
    80006a64:	fc97f0e3          	bgeu	a5,s1,80006a24 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006a68:	0000a517          	auipc	a0,0xa
    80006a6c:	ca050513          	addi	a0,a0,-864 # 80010708 <CONSOLE_STATUS+0x6f8>
    80006a70:	00001097          	auipc	ra,0x1
    80006a74:	c3c080e7          	jalr	-964(ra) # 800076ac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006a78:	00700313          	li	t1,7
    thread_dispatch();
    80006a7c:	ffffb097          	auipc	ra,0xffffb
    80006a80:	8dc080e7          	jalr	-1828(ra) # 80001358 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006a84:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006a88:	0000a517          	auipc	a0,0xa
    80006a8c:	c9050513          	addi	a0,a0,-880 # 80010718 <CONSOLE_STATUS+0x708>
    80006a90:	00001097          	auipc	ra,0x1
    80006a94:	c1c080e7          	jalr	-996(ra) # 800076ac <_Z11printStringPKc>
    80006a98:	00000613          	li	a2,0
    80006a9c:	00a00593          	li	a1,10
    80006aa0:	0009051b          	sext.w	a0,s2
    80006aa4:	00001097          	auipc	ra,0x1
    80006aa8:	db8080e7          	jalr	-584(ra) # 8000785c <_Z8printIntiii>
    80006aac:	0000a517          	auipc	a0,0xa
    80006ab0:	f3450513          	addi	a0,a0,-204 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80006ab4:	00001097          	auipc	ra,0x1
    80006ab8:	bf8080e7          	jalr	-1032(ra) # 800076ac <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006abc:	00c00513          	li	a0,12
    80006ac0:	00000097          	auipc	ra,0x0
    80006ac4:	d88080e7          	jalr	-632(ra) # 80006848 <_ZL9fibonaccim>
    80006ac8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006acc:	0000a517          	auipc	a0,0xa
    80006ad0:	c5450513          	addi	a0,a0,-940 # 80010720 <CONSOLE_STATUS+0x710>
    80006ad4:	00001097          	auipc	ra,0x1
    80006ad8:	bd8080e7          	jalr	-1064(ra) # 800076ac <_Z11printStringPKc>
    80006adc:	00000613          	li	a2,0
    80006ae0:	00a00593          	li	a1,10
    80006ae4:	0009051b          	sext.w	a0,s2
    80006ae8:	00001097          	auipc	ra,0x1
    80006aec:	d74080e7          	jalr	-652(ra) # 8000785c <_Z8printIntiii>
    80006af0:	0000a517          	auipc	a0,0xa
    80006af4:	ef050513          	addi	a0,a0,-272 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80006af8:	00001097          	auipc	ra,0x1
    80006afc:	bb4080e7          	jalr	-1100(ra) # 800076ac <_Z11printStringPKc>
    80006b00:	0400006f          	j	80006b40 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006b04:	0000a517          	auipc	a0,0xa
    80006b08:	bfc50513          	addi	a0,a0,-1028 # 80010700 <CONSOLE_STATUS+0x6f0>
    80006b0c:	00001097          	auipc	ra,0x1
    80006b10:	ba0080e7          	jalr	-1120(ra) # 800076ac <_Z11printStringPKc>
    80006b14:	00000613          	li	a2,0
    80006b18:	00a00593          	li	a1,10
    80006b1c:	00048513          	mv	a0,s1
    80006b20:	00001097          	auipc	ra,0x1
    80006b24:	d3c080e7          	jalr	-708(ra) # 8000785c <_Z8printIntiii>
    80006b28:	0000a517          	auipc	a0,0xa
    80006b2c:	eb850513          	addi	a0,a0,-328 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80006b30:	00001097          	auipc	ra,0x1
    80006b34:	b7c080e7          	jalr	-1156(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006b38:	0014849b          	addiw	s1,s1,1
    80006b3c:	0ff4f493          	andi	s1,s1,255
    80006b40:	00500793          	li	a5,5
    80006b44:	fc97f0e3          	bgeu	a5,s1,80006b04 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006b48:	0000a517          	auipc	a0,0xa
    80006b4c:	b9050513          	addi	a0,a0,-1136 # 800106d8 <CONSOLE_STATUS+0x6c8>
    80006b50:	00001097          	auipc	ra,0x1
    80006b54:	b5c080e7          	jalr	-1188(ra) # 800076ac <_Z11printStringPKc>
    finishedC = true;
    80006b58:	00100793          	li	a5,1
    80006b5c:	0000f717          	auipc	a4,0xf
    80006b60:	14f706a3          	sb	a5,333(a4) # 80015ca9 <_ZL9finishedC>
    thread_dispatch();
    80006b64:	ffffa097          	auipc	ra,0xffffa
    80006b68:	7f4080e7          	jalr	2036(ra) # 80001358 <_Z15thread_dispatchv>
}
    80006b6c:	01813083          	ld	ra,24(sp)
    80006b70:	01013403          	ld	s0,16(sp)
    80006b74:	00813483          	ld	s1,8(sp)
    80006b78:	00013903          	ld	s2,0(sp)
    80006b7c:	02010113          	addi	sp,sp,32
    80006b80:	00008067          	ret

0000000080006b84 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006b84:	fe010113          	addi	sp,sp,-32
    80006b88:	00113c23          	sd	ra,24(sp)
    80006b8c:	00813823          	sd	s0,16(sp)
    80006b90:	00913423          	sd	s1,8(sp)
    80006b94:	01213023          	sd	s2,0(sp)
    80006b98:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006b9c:	00000913          	li	s2,0
    80006ba0:	0380006f          	j	80006bd8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80006ba4:	ffffa097          	auipc	ra,0xffffa
    80006ba8:	7b4080e7          	jalr	1972(ra) # 80001358 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006bac:	00148493          	addi	s1,s1,1
    80006bb0:	000027b7          	lui	a5,0x2
    80006bb4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006bb8:	0097ee63          	bltu	a5,s1,80006bd4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006bbc:	00000713          	li	a4,0
    80006bc0:	000077b7          	lui	a5,0x7
    80006bc4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006bc8:	fce7eee3          	bltu	a5,a4,80006ba4 <_ZL11workerBodyBPv+0x20>
    80006bcc:	00170713          	addi	a4,a4,1
    80006bd0:	ff1ff06f          	j	80006bc0 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80006bd4:	00190913          	addi	s2,s2,1
    80006bd8:	00f00793          	li	a5,15
    80006bdc:	0527e063          	bltu	a5,s2,80006c1c <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80006be0:	0000a517          	auipc	a0,0xa
    80006be4:	b0850513          	addi	a0,a0,-1272 # 800106e8 <CONSOLE_STATUS+0x6d8>
    80006be8:	00001097          	auipc	ra,0x1
    80006bec:	ac4080e7          	jalr	-1340(ra) # 800076ac <_Z11printStringPKc>
    80006bf0:	00000613          	li	a2,0
    80006bf4:	00a00593          	li	a1,10
    80006bf8:	0009051b          	sext.w	a0,s2
    80006bfc:	00001097          	auipc	ra,0x1
    80006c00:	c60080e7          	jalr	-928(ra) # 8000785c <_Z8printIntiii>
    80006c04:	0000a517          	auipc	a0,0xa
    80006c08:	ddc50513          	addi	a0,a0,-548 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80006c0c:	00001097          	auipc	ra,0x1
    80006c10:	aa0080e7          	jalr	-1376(ra) # 800076ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006c14:	00000493          	li	s1,0
    80006c18:	f99ff06f          	j	80006bb0 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80006c1c:	0000a517          	auipc	a0,0xa
    80006c20:	ad450513          	addi	a0,a0,-1324 # 800106f0 <CONSOLE_STATUS+0x6e0>
    80006c24:	00001097          	auipc	ra,0x1
    80006c28:	a88080e7          	jalr	-1400(ra) # 800076ac <_Z11printStringPKc>
    finishedB = true;
    80006c2c:	00100793          	li	a5,1
    80006c30:	0000f717          	auipc	a4,0xf
    80006c34:	06f70d23          	sb	a5,122(a4) # 80015caa <_ZL9finishedB>
    thread_dispatch();
    80006c38:	ffffa097          	auipc	ra,0xffffa
    80006c3c:	720080e7          	jalr	1824(ra) # 80001358 <_Z15thread_dispatchv>
}
    80006c40:	01813083          	ld	ra,24(sp)
    80006c44:	01013403          	ld	s0,16(sp)
    80006c48:	00813483          	ld	s1,8(sp)
    80006c4c:	00013903          	ld	s2,0(sp)
    80006c50:	02010113          	addi	sp,sp,32
    80006c54:	00008067          	ret

0000000080006c58 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006c58:	fe010113          	addi	sp,sp,-32
    80006c5c:	00113c23          	sd	ra,24(sp)
    80006c60:	00813823          	sd	s0,16(sp)
    80006c64:	00913423          	sd	s1,8(sp)
    80006c68:	01213023          	sd	s2,0(sp)
    80006c6c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006c70:	00000913          	li	s2,0
    80006c74:	0380006f          	j	80006cac <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006c78:	ffffa097          	auipc	ra,0xffffa
    80006c7c:	6e0080e7          	jalr	1760(ra) # 80001358 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006c80:	00148493          	addi	s1,s1,1
    80006c84:	000027b7          	lui	a5,0x2
    80006c88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006c8c:	0097ee63          	bltu	a5,s1,80006ca8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006c90:	00000713          	li	a4,0
    80006c94:	000077b7          	lui	a5,0x7
    80006c98:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006c9c:	fce7eee3          	bltu	a5,a4,80006c78 <_ZL11workerBodyAPv+0x20>
    80006ca0:	00170713          	addi	a4,a4,1
    80006ca4:	ff1ff06f          	j	80006c94 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006ca8:	00190913          	addi	s2,s2,1
    80006cac:	00900793          	li	a5,9
    80006cb0:	0527e063          	bltu	a5,s2,80006cf0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006cb4:	0000a517          	auipc	a0,0xa
    80006cb8:	a1c50513          	addi	a0,a0,-1508 # 800106d0 <CONSOLE_STATUS+0x6c0>
    80006cbc:	00001097          	auipc	ra,0x1
    80006cc0:	9f0080e7          	jalr	-1552(ra) # 800076ac <_Z11printStringPKc>
    80006cc4:	00000613          	li	a2,0
    80006cc8:	00a00593          	li	a1,10
    80006ccc:	0009051b          	sext.w	a0,s2
    80006cd0:	00001097          	auipc	ra,0x1
    80006cd4:	b8c080e7          	jalr	-1140(ra) # 8000785c <_Z8printIntiii>
    80006cd8:	0000a517          	auipc	a0,0xa
    80006cdc:	d0850513          	addi	a0,a0,-760 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80006ce0:	00001097          	auipc	ra,0x1
    80006ce4:	9cc080e7          	jalr	-1588(ra) # 800076ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006ce8:	00000493          	li	s1,0
    80006cec:	f99ff06f          	j	80006c84 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006cf0:	0000a517          	auipc	a0,0xa
    80006cf4:	9e850513          	addi	a0,a0,-1560 # 800106d8 <CONSOLE_STATUS+0x6c8>
    80006cf8:	00001097          	auipc	ra,0x1
    80006cfc:	9b4080e7          	jalr	-1612(ra) # 800076ac <_Z11printStringPKc>
    finishedA = true;
    80006d00:	00100793          	li	a5,1
    80006d04:	0000f717          	auipc	a4,0xf
    80006d08:	faf703a3          	sb	a5,-89(a4) # 80015cab <_ZL9finishedA>
}
    80006d0c:	01813083          	ld	ra,24(sp)
    80006d10:	01013403          	ld	s0,16(sp)
    80006d14:	00813483          	ld	s1,8(sp)
    80006d18:	00013903          	ld	s2,0(sp)
    80006d1c:	02010113          	addi	sp,sp,32
    80006d20:	00008067          	ret

0000000080006d24 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80006d24:	fd010113          	addi	sp,sp,-48
    80006d28:	02113423          	sd	ra,40(sp)
    80006d2c:	02813023          	sd	s0,32(sp)
    80006d30:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006d34:	00000613          	li	a2,0
    80006d38:	00000597          	auipc	a1,0x0
    80006d3c:	f2058593          	addi	a1,a1,-224 # 80006c58 <_ZL11workerBodyAPv>
    80006d40:	fd040513          	addi	a0,s0,-48
    80006d44:	ffffa097          	auipc	ra,0xffffa
    80006d48:	55c080e7          	jalr	1372(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80006d4c:	0000a517          	auipc	a0,0xa
    80006d50:	a1c50513          	addi	a0,a0,-1508 # 80010768 <CONSOLE_STATUS+0x758>
    80006d54:	00001097          	auipc	ra,0x1
    80006d58:	958080e7          	jalr	-1704(ra) # 800076ac <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006d5c:	00000613          	li	a2,0
    80006d60:	00000597          	auipc	a1,0x0
    80006d64:	e2458593          	addi	a1,a1,-476 # 80006b84 <_ZL11workerBodyBPv>
    80006d68:	fd840513          	addi	a0,s0,-40
    80006d6c:	ffffa097          	auipc	ra,0xffffa
    80006d70:	534080e7          	jalr	1332(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006d74:	0000a517          	auipc	a0,0xa
    80006d78:	a0c50513          	addi	a0,a0,-1524 # 80010780 <CONSOLE_STATUS+0x770>
    80006d7c:	00001097          	auipc	ra,0x1
    80006d80:	930080e7          	jalr	-1744(ra) # 800076ac <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006d84:	00000613          	li	a2,0
    80006d88:	00000597          	auipc	a1,0x0
    80006d8c:	c7c58593          	addi	a1,a1,-900 # 80006a04 <_ZL11workerBodyCPv>
    80006d90:	fe040513          	addi	a0,s0,-32
    80006d94:	ffffa097          	auipc	ra,0xffffa
    80006d98:	50c080e7          	jalr	1292(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006d9c:	0000a517          	auipc	a0,0xa
    80006da0:	9fc50513          	addi	a0,a0,-1540 # 80010798 <CONSOLE_STATUS+0x788>
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	908080e7          	jalr	-1784(ra) # 800076ac <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006dac:	00000613          	li	a2,0
    80006db0:	00000597          	auipc	a1,0x0
    80006db4:	b0c58593          	addi	a1,a1,-1268 # 800068bc <_ZL11workerBodyDPv>
    80006db8:	fe840513          	addi	a0,s0,-24
    80006dbc:	ffffa097          	auipc	ra,0xffffa
    80006dc0:	4e4080e7          	jalr	1252(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80006dc4:	0000a517          	auipc	a0,0xa
    80006dc8:	9ec50513          	addi	a0,a0,-1556 # 800107b0 <CONSOLE_STATUS+0x7a0>
    80006dcc:	00001097          	auipc	ra,0x1
    80006dd0:	8e0080e7          	jalr	-1824(ra) # 800076ac <_Z11printStringPKc>
    80006dd4:	00c0006f          	j	80006de0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006dd8:	ffffa097          	auipc	ra,0xffffa
    80006ddc:	580080e7          	jalr	1408(ra) # 80001358 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006de0:	0000f797          	auipc	a5,0xf
    80006de4:	ecb7c783          	lbu	a5,-309(a5) # 80015cab <_ZL9finishedA>
    80006de8:	fe0788e3          	beqz	a5,80006dd8 <_Z18Threads_C_API_testv+0xb4>
    80006dec:	0000f797          	auipc	a5,0xf
    80006df0:	ebe7c783          	lbu	a5,-322(a5) # 80015caa <_ZL9finishedB>
    80006df4:	fe0782e3          	beqz	a5,80006dd8 <_Z18Threads_C_API_testv+0xb4>
    80006df8:	0000f797          	auipc	a5,0xf
    80006dfc:	eb17c783          	lbu	a5,-335(a5) # 80015ca9 <_ZL9finishedC>
    80006e00:	fc078ce3          	beqz	a5,80006dd8 <_Z18Threads_C_API_testv+0xb4>
    80006e04:	0000f797          	auipc	a5,0xf
    80006e08:	ea47c783          	lbu	a5,-348(a5) # 80015ca8 <_ZL9finishedD>
    80006e0c:	fc0786e3          	beqz	a5,80006dd8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80006e10:	02813083          	ld	ra,40(sp)
    80006e14:	02013403          	ld	s0,32(sp)
    80006e18:	03010113          	addi	sp,sp,48
    80006e1c:	00008067          	ret

0000000080006e20 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80006e20:	fd010113          	addi	sp,sp,-48
    80006e24:	02113423          	sd	ra,40(sp)
    80006e28:	02813023          	sd	s0,32(sp)
    80006e2c:	00913c23          	sd	s1,24(sp)
    80006e30:	01213823          	sd	s2,16(sp)
    80006e34:	01313423          	sd	s3,8(sp)
    80006e38:	03010413          	addi	s0,sp,48
    80006e3c:	00050993          	mv	s3,a0
    80006e40:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80006e44:	00000913          	li	s2,0
    80006e48:	00c0006f          	j	80006e54 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80006e4c:	ffffd097          	auipc	ra,0xffffd
    80006e50:	f74080e7          	jalr	-140(ra) # 80003dc0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80006e54:	ffffa097          	auipc	ra,0xffffa
    80006e58:	690080e7          	jalr	1680(ra) # 800014e4 <_Z4getcv>
    80006e5c:	0005059b          	sext.w	a1,a0
    80006e60:	01b00793          	li	a5,27
    80006e64:	02f58a63          	beq	a1,a5,80006e98 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80006e68:	0084b503          	ld	a0,8(s1)
    80006e6c:	00001097          	auipc	ra,0x1
    80006e70:	c64080e7          	jalr	-924(ra) # 80007ad0 <_ZN9BufferCPP3putEi>
        i++;
    80006e74:	0019071b          	addiw	a4,s2,1
    80006e78:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80006e7c:	0004a683          	lw	a3,0(s1)
    80006e80:	0026979b          	slliw	a5,a3,0x2
    80006e84:	00d787bb          	addw	a5,a5,a3
    80006e88:	0017979b          	slliw	a5,a5,0x1
    80006e8c:	02f767bb          	remw	a5,a4,a5
    80006e90:	fc0792e3          	bnez	a5,80006e54 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80006e94:	fb9ff06f          	j	80006e4c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80006e98:	00100793          	li	a5,1
    80006e9c:	0000f717          	auipc	a4,0xf
    80006ea0:	e0f72a23          	sw	a5,-492(a4) # 80015cb0 <_ZL9threadEnd>
    td->buffer->put('!');
    80006ea4:	0209b783          	ld	a5,32(s3)
    80006ea8:	02100593          	li	a1,33
    80006eac:	0087b503          	ld	a0,8(a5)
    80006eb0:	00001097          	auipc	ra,0x1
    80006eb4:	c20080e7          	jalr	-992(ra) # 80007ad0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80006eb8:	0104b503          	ld	a0,16(s1)
    80006ebc:	ffffd097          	auipc	ra,0xffffd
    80006ec0:	e28080e7          	jalr	-472(ra) # 80003ce4 <_ZN9Semaphore6signalEv>
}
    80006ec4:	02813083          	ld	ra,40(sp)
    80006ec8:	02013403          	ld	s0,32(sp)
    80006ecc:	01813483          	ld	s1,24(sp)
    80006ed0:	01013903          	ld	s2,16(sp)
    80006ed4:	00813983          	ld	s3,8(sp)
    80006ed8:	03010113          	addi	sp,sp,48
    80006edc:	00008067          	ret

0000000080006ee0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80006ee0:	fe010113          	addi	sp,sp,-32
    80006ee4:	00113c23          	sd	ra,24(sp)
    80006ee8:	00813823          	sd	s0,16(sp)
    80006eec:	00913423          	sd	s1,8(sp)
    80006ef0:	01213023          	sd	s2,0(sp)
    80006ef4:	02010413          	addi	s0,sp,32
    80006ef8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80006efc:	00000913          	li	s2,0
    80006f00:	00c0006f          	j	80006f0c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80006f04:	ffffd097          	auipc	ra,0xffffd
    80006f08:	ebc080e7          	jalr	-324(ra) # 80003dc0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80006f0c:	0000f797          	auipc	a5,0xf
    80006f10:	da47a783          	lw	a5,-604(a5) # 80015cb0 <_ZL9threadEnd>
    80006f14:	02079e63          	bnez	a5,80006f50 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80006f18:	0004a583          	lw	a1,0(s1)
    80006f1c:	0305859b          	addiw	a1,a1,48
    80006f20:	0084b503          	ld	a0,8(s1)
    80006f24:	00001097          	auipc	ra,0x1
    80006f28:	bac080e7          	jalr	-1108(ra) # 80007ad0 <_ZN9BufferCPP3putEi>
        i++;
    80006f2c:	0019071b          	addiw	a4,s2,1
    80006f30:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80006f34:	0004a683          	lw	a3,0(s1)
    80006f38:	0026979b          	slliw	a5,a3,0x2
    80006f3c:	00d787bb          	addw	a5,a5,a3
    80006f40:	0017979b          	slliw	a5,a5,0x1
    80006f44:	02f767bb          	remw	a5,a4,a5
    80006f48:	fc0792e3          	bnez	a5,80006f0c <_ZN12ProducerSync8producerEPv+0x2c>
    80006f4c:	fb9ff06f          	j	80006f04 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80006f50:	0104b503          	ld	a0,16(s1)
    80006f54:	ffffd097          	auipc	ra,0xffffd
    80006f58:	d90080e7          	jalr	-624(ra) # 80003ce4 <_ZN9Semaphore6signalEv>
}
    80006f5c:	01813083          	ld	ra,24(sp)
    80006f60:	01013403          	ld	s0,16(sp)
    80006f64:	00813483          	ld	s1,8(sp)
    80006f68:	00013903          	ld	s2,0(sp)
    80006f6c:	02010113          	addi	sp,sp,32
    80006f70:	00008067          	ret

0000000080006f74 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80006f74:	fd010113          	addi	sp,sp,-48
    80006f78:	02113423          	sd	ra,40(sp)
    80006f7c:	02813023          	sd	s0,32(sp)
    80006f80:	00913c23          	sd	s1,24(sp)
    80006f84:	01213823          	sd	s2,16(sp)
    80006f88:	01313423          	sd	s3,8(sp)
    80006f8c:	01413023          	sd	s4,0(sp)
    80006f90:	03010413          	addi	s0,sp,48
    80006f94:	00050993          	mv	s3,a0
    80006f98:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80006f9c:	00000a13          	li	s4,0
    80006fa0:	01c0006f          	j	80006fbc <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80006fa4:	ffffd097          	auipc	ra,0xffffd
    80006fa8:	e1c080e7          	jalr	-484(ra) # 80003dc0 <_ZN6Thread8dispatchEv>
    80006fac:	0500006f          	j	80006ffc <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80006fb0:	00a00513          	li	a0,10
    80006fb4:	ffffa097          	auipc	ra,0xffffa
    80006fb8:	558080e7          	jalr	1368(ra) # 8000150c <_Z4putcc>
    while (!threadEnd) {
    80006fbc:	0000f797          	auipc	a5,0xf
    80006fc0:	cf47a783          	lw	a5,-780(a5) # 80015cb0 <_ZL9threadEnd>
    80006fc4:	06079263          	bnez	a5,80007028 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80006fc8:	00893503          	ld	a0,8(s2)
    80006fcc:	00001097          	auipc	ra,0x1
    80006fd0:	b94080e7          	jalr	-1132(ra) # 80007b60 <_ZN9BufferCPP3getEv>
        i++;
    80006fd4:	001a049b          	addiw	s1,s4,1
    80006fd8:	00048a1b          	sext.w	s4,s1
        putc(key);
    80006fdc:	0ff57513          	andi	a0,a0,255
    80006fe0:	ffffa097          	auipc	ra,0xffffa
    80006fe4:	52c080e7          	jalr	1324(ra) # 8000150c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80006fe8:	00092703          	lw	a4,0(s2)
    80006fec:	0027179b          	slliw	a5,a4,0x2
    80006ff0:	00e787bb          	addw	a5,a5,a4
    80006ff4:	02f4e7bb          	remw	a5,s1,a5
    80006ff8:	fa0786e3          	beqz	a5,80006fa4 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80006ffc:	05000793          	li	a5,80
    80007000:	02f4e4bb          	remw	s1,s1,a5
    80007004:	fa049ce3          	bnez	s1,80006fbc <_ZN12ConsumerSync8consumerEPv+0x48>
    80007008:	fa9ff06f          	j	80006fb0 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    8000700c:	0209b783          	ld	a5,32(s3)
    80007010:	0087b503          	ld	a0,8(a5)
    80007014:	00001097          	auipc	ra,0x1
    80007018:	b4c080e7          	jalr	-1204(ra) # 80007b60 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    8000701c:	0ff57513          	andi	a0,a0,255
    80007020:	ffffd097          	auipc	ra,0xffffd
    80007024:	240080e7          	jalr	576(ra) # 80004260 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80007028:	0209b783          	ld	a5,32(s3)
    8000702c:	0087b503          	ld	a0,8(a5)
    80007030:	00001097          	auipc	ra,0x1
    80007034:	bbc080e7          	jalr	-1092(ra) # 80007bec <_ZN9BufferCPP6getCntEv>
    80007038:	fca04ae3          	bgtz	a0,8000700c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000703c:	01093503          	ld	a0,16(s2)
    80007040:	ffffd097          	auipc	ra,0xffffd
    80007044:	ca4080e7          	jalr	-860(ra) # 80003ce4 <_ZN9Semaphore6signalEv>
}
    80007048:	02813083          	ld	ra,40(sp)
    8000704c:	02013403          	ld	s0,32(sp)
    80007050:	01813483          	ld	s1,24(sp)
    80007054:	01013903          	ld	s2,16(sp)
    80007058:	00813983          	ld	s3,8(sp)
    8000705c:	00013a03          	ld	s4,0(sp)
    80007060:	03010113          	addi	sp,sp,48
    80007064:	00008067          	ret

0000000080007068 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80007068:	f8010113          	addi	sp,sp,-128
    8000706c:	06113c23          	sd	ra,120(sp)
    80007070:	06813823          	sd	s0,112(sp)
    80007074:	06913423          	sd	s1,104(sp)
    80007078:	07213023          	sd	s2,96(sp)
    8000707c:	05313c23          	sd	s3,88(sp)
    80007080:	05413823          	sd	s4,80(sp)
    80007084:	05513423          	sd	s5,72(sp)
    80007088:	05613023          	sd	s6,64(sp)
    8000708c:	03713c23          	sd	s7,56(sp)
    80007090:	03813823          	sd	s8,48(sp)
    80007094:	03913423          	sd	s9,40(sp)
    80007098:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000709c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800070a0:	00009517          	auipc	a0,0x9
    800070a4:	55050513          	addi	a0,a0,1360 # 800105f0 <CONSOLE_STATUS+0x5e0>
    800070a8:	00000097          	auipc	ra,0x0
    800070ac:	604080e7          	jalr	1540(ra) # 800076ac <_Z11printStringPKc>
    getString(input, 30);
    800070b0:	01e00593          	li	a1,30
    800070b4:	f8040493          	addi	s1,s0,-128
    800070b8:	00048513          	mv	a0,s1
    800070bc:	00000097          	auipc	ra,0x0
    800070c0:	678080e7          	jalr	1656(ra) # 80007734 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800070c4:	00048513          	mv	a0,s1
    800070c8:	00000097          	auipc	ra,0x0
    800070cc:	744080e7          	jalr	1860(ra) # 8000780c <_Z11stringToIntPKc>
    800070d0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800070d4:	00009517          	auipc	a0,0x9
    800070d8:	53c50513          	addi	a0,a0,1340 # 80010610 <CONSOLE_STATUS+0x600>
    800070dc:	00000097          	auipc	ra,0x0
    800070e0:	5d0080e7          	jalr	1488(ra) # 800076ac <_Z11printStringPKc>
    getString(input, 30);
    800070e4:	01e00593          	li	a1,30
    800070e8:	00048513          	mv	a0,s1
    800070ec:	00000097          	auipc	ra,0x0
    800070f0:	648080e7          	jalr	1608(ra) # 80007734 <_Z9getStringPci>
    n = stringToInt(input);
    800070f4:	00048513          	mv	a0,s1
    800070f8:	00000097          	auipc	ra,0x0
    800070fc:	714080e7          	jalr	1812(ra) # 8000780c <_Z11stringToIntPKc>
    80007100:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80007104:	00009517          	auipc	a0,0x9
    80007108:	52c50513          	addi	a0,a0,1324 # 80010630 <CONSOLE_STATUS+0x620>
    8000710c:	00000097          	auipc	ra,0x0
    80007110:	5a0080e7          	jalr	1440(ra) # 800076ac <_Z11printStringPKc>
    80007114:	00000613          	li	a2,0
    80007118:	00a00593          	li	a1,10
    8000711c:	00090513          	mv	a0,s2
    80007120:	00000097          	auipc	ra,0x0
    80007124:	73c080e7          	jalr	1852(ra) # 8000785c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80007128:	00009517          	auipc	a0,0x9
    8000712c:	52050513          	addi	a0,a0,1312 # 80010648 <CONSOLE_STATUS+0x638>
    80007130:	00000097          	auipc	ra,0x0
    80007134:	57c080e7          	jalr	1404(ra) # 800076ac <_Z11printStringPKc>
    80007138:	00000613          	li	a2,0
    8000713c:	00a00593          	li	a1,10
    80007140:	00048513          	mv	a0,s1
    80007144:	00000097          	auipc	ra,0x0
    80007148:	718080e7          	jalr	1816(ra) # 8000785c <_Z8printIntiii>
    printString(".\n");
    8000714c:	00009517          	auipc	a0,0x9
    80007150:	08c50513          	addi	a0,a0,140 # 800101d8 <CONSOLE_STATUS+0x1c8>
    80007154:	00000097          	auipc	ra,0x0
    80007158:	558080e7          	jalr	1368(ra) # 800076ac <_Z11printStringPKc>
    if(threadNum > n) {
    8000715c:	0324c463          	blt	s1,s2,80007184 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80007160:	03205c63          	blez	s2,80007198 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80007164:	03800513          	li	a0,56
    80007168:	ffffd097          	auipc	ra,0xffffd
    8000716c:	914080e7          	jalr	-1772(ra) # 80003a7c <_Znwm>
    80007170:	00050a93          	mv	s5,a0
    80007174:	00048593          	mv	a1,s1
    80007178:	00001097          	auipc	ra,0x1
    8000717c:	804080e7          	jalr	-2044(ra) # 8000797c <_ZN9BufferCPPC1Ei>
    80007180:	0300006f          	j	800071b0 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80007184:	00009517          	auipc	a0,0x9
    80007188:	4dc50513          	addi	a0,a0,1244 # 80010660 <CONSOLE_STATUS+0x650>
    8000718c:	00000097          	auipc	ra,0x0
    80007190:	520080e7          	jalr	1312(ra) # 800076ac <_Z11printStringPKc>
        return;
    80007194:	0140006f          	j	800071a8 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80007198:	00009517          	auipc	a0,0x9
    8000719c:	50850513          	addi	a0,a0,1288 # 800106a0 <CONSOLE_STATUS+0x690>
    800071a0:	00000097          	auipc	ra,0x0
    800071a4:	50c080e7          	jalr	1292(ra) # 800076ac <_Z11printStringPKc>
        return;
    800071a8:	000b8113          	mv	sp,s7
    800071ac:	2380006f          	j	800073e4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800071b0:	01000513          	li	a0,16
    800071b4:	ffffd097          	auipc	ra,0xffffd
    800071b8:	8c8080e7          	jalr	-1848(ra) # 80003a7c <_Znwm>
    800071bc:	00050493          	mv	s1,a0
    800071c0:	00000593          	li	a1,0
    800071c4:	ffffd097          	auipc	ra,0xffffd
    800071c8:	abc080e7          	jalr	-1348(ra) # 80003c80 <_ZN9SemaphoreC1Ej>
    800071cc:	0000f797          	auipc	a5,0xf
    800071d0:	ae97b623          	sd	s1,-1300(a5) # 80015cb8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800071d4:	00391793          	slli	a5,s2,0x3
    800071d8:	00f78793          	addi	a5,a5,15
    800071dc:	ff07f793          	andi	a5,a5,-16
    800071e0:	40f10133          	sub	sp,sp,a5
    800071e4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800071e8:	0019071b          	addiw	a4,s2,1
    800071ec:	00171793          	slli	a5,a4,0x1
    800071f0:	00e787b3          	add	a5,a5,a4
    800071f4:	00379793          	slli	a5,a5,0x3
    800071f8:	00f78793          	addi	a5,a5,15
    800071fc:	ff07f793          	andi	a5,a5,-16
    80007200:	40f10133          	sub	sp,sp,a5
    80007204:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80007208:	00191c13          	slli	s8,s2,0x1
    8000720c:	012c07b3          	add	a5,s8,s2
    80007210:	00379793          	slli	a5,a5,0x3
    80007214:	00fa07b3          	add	a5,s4,a5
    80007218:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000721c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80007220:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80007224:	02800513          	li	a0,40
    80007228:	ffffd097          	auipc	ra,0xffffd
    8000722c:	854080e7          	jalr	-1964(ra) # 80003a7c <_Znwm>
    80007230:	00050b13          	mv	s6,a0
    80007234:	012c0c33          	add	s8,s8,s2
    80007238:	003c1c13          	slli	s8,s8,0x3
    8000723c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80007240:	ffffd097          	auipc	ra,0xffffd
    80007244:	c20080e7          	jalr	-992(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80007248:	0000e797          	auipc	a5,0xe
    8000724c:	38878793          	addi	a5,a5,904 # 800155d0 <_ZTV12ConsumerSync+0x10>
    80007250:	00fb3023          	sd	a5,0(s6)
    80007254:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80007258:	000b0513          	mv	a0,s6
    8000725c:	ffffd097          	auipc	ra,0xffffd
    80007260:	bbc080e7          	jalr	-1092(ra) # 80003e18 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80007264:	00000493          	li	s1,0
    80007268:	0380006f          	j	800072a0 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000726c:	0000e797          	auipc	a5,0xe
    80007270:	33c78793          	addi	a5,a5,828 # 800155a8 <_ZTV12ProducerSync+0x10>
    80007274:	00fcb023          	sd	a5,0(s9)
    80007278:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000727c:	00349793          	slli	a5,s1,0x3
    80007280:	00f987b3          	add	a5,s3,a5
    80007284:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80007288:	00349793          	slli	a5,s1,0x3
    8000728c:	00f987b3          	add	a5,s3,a5
    80007290:	0007b503          	ld	a0,0(a5)
    80007294:	ffffd097          	auipc	ra,0xffffd
    80007298:	b84080e7          	jalr	-1148(ra) # 80003e18 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000729c:	0014849b          	addiw	s1,s1,1
    800072a0:	0b24d063          	bge	s1,s2,80007340 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800072a4:	00149793          	slli	a5,s1,0x1
    800072a8:	009787b3          	add	a5,a5,s1
    800072ac:	00379793          	slli	a5,a5,0x3
    800072b0:	00fa07b3          	add	a5,s4,a5
    800072b4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800072b8:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800072bc:	0000f717          	auipc	a4,0xf
    800072c0:	9fc73703          	ld	a4,-1540(a4) # 80015cb8 <_ZL10waitForAll>
    800072c4:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800072c8:	02905863          	blez	s1,800072f8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800072cc:	02800513          	li	a0,40
    800072d0:	ffffc097          	auipc	ra,0xffffc
    800072d4:	7ac080e7          	jalr	1964(ra) # 80003a7c <_Znwm>
    800072d8:	00050c93          	mv	s9,a0
    800072dc:	00149c13          	slli	s8,s1,0x1
    800072e0:	009c0c33          	add	s8,s8,s1
    800072e4:	003c1c13          	slli	s8,s8,0x3
    800072e8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800072ec:	ffffd097          	auipc	ra,0xffffd
    800072f0:	b74080e7          	jalr	-1164(ra) # 80003e60 <_ZN6ThreadC1Ev>
    800072f4:	f79ff06f          	j	8000726c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800072f8:	02800513          	li	a0,40
    800072fc:	ffffc097          	auipc	ra,0xffffc
    80007300:	780080e7          	jalr	1920(ra) # 80003a7c <_Znwm>
    80007304:	00050c93          	mv	s9,a0
    80007308:	00149c13          	slli	s8,s1,0x1
    8000730c:	009c0c33          	add	s8,s8,s1
    80007310:	003c1c13          	slli	s8,s8,0x3
    80007314:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80007318:	ffffd097          	auipc	ra,0xffffd
    8000731c:	b48080e7          	jalr	-1208(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80007320:	0000e797          	auipc	a5,0xe
    80007324:	26078793          	addi	a5,a5,608 # 80015580 <_ZTV16ProducerKeyboard+0x10>
    80007328:	00fcb023          	sd	a5,0(s9)
    8000732c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80007330:	00349793          	slli	a5,s1,0x3
    80007334:	00f987b3          	add	a5,s3,a5
    80007338:	0197b023          	sd	s9,0(a5)
    8000733c:	f4dff06f          	j	80007288 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80007340:	ffffd097          	auipc	ra,0xffffd
    80007344:	a80080e7          	jalr	-1408(ra) # 80003dc0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80007348:	00000493          	li	s1,0
    8000734c:	00994e63          	blt	s2,s1,80007368 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80007350:	0000f517          	auipc	a0,0xf
    80007354:	96853503          	ld	a0,-1688(a0) # 80015cb8 <_ZL10waitForAll>
    80007358:	ffffd097          	auipc	ra,0xffffd
    8000735c:	960080e7          	jalr	-1696(ra) # 80003cb8 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80007360:	0014849b          	addiw	s1,s1,1
    80007364:	fe9ff06f          	j	8000734c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80007368:	00000493          	li	s1,0
    8000736c:	0080006f          	j	80007374 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80007370:	0014849b          	addiw	s1,s1,1
    80007374:	0324d263          	bge	s1,s2,80007398 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80007378:	00349793          	slli	a5,s1,0x3
    8000737c:	00f987b3          	add	a5,s3,a5
    80007380:	0007b503          	ld	a0,0(a5)
    80007384:	fe0506e3          	beqz	a0,80007370 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80007388:	00053783          	ld	a5,0(a0)
    8000738c:	0087b783          	ld	a5,8(a5)
    80007390:	000780e7          	jalr	a5
    80007394:	fddff06f          	j	80007370 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80007398:	000b0a63          	beqz	s6,800073ac <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000739c:	000b3783          	ld	a5,0(s6)
    800073a0:	0087b783          	ld	a5,8(a5)
    800073a4:	000b0513          	mv	a0,s6
    800073a8:	000780e7          	jalr	a5
    delete waitForAll;
    800073ac:	0000f517          	auipc	a0,0xf
    800073b0:	90c53503          	ld	a0,-1780(a0) # 80015cb8 <_ZL10waitForAll>
    800073b4:	00050863          	beqz	a0,800073c4 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800073b8:	00053783          	ld	a5,0(a0)
    800073bc:	0087b783          	ld	a5,8(a5)
    800073c0:	000780e7          	jalr	a5
    delete buffer;
    800073c4:	000a8e63          	beqz	s5,800073e0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800073c8:	000a8513          	mv	a0,s5
    800073cc:	00001097          	auipc	ra,0x1
    800073d0:	8a8080e7          	jalr	-1880(ra) # 80007c74 <_ZN9BufferCPPD1Ev>
    800073d4:	000a8513          	mv	a0,s5
    800073d8:	ffffc097          	auipc	ra,0xffffc
    800073dc:	6f4080e7          	jalr	1780(ra) # 80003acc <_ZdlPv>
    800073e0:	000b8113          	mv	sp,s7

}
    800073e4:	f8040113          	addi	sp,s0,-128
    800073e8:	07813083          	ld	ra,120(sp)
    800073ec:	07013403          	ld	s0,112(sp)
    800073f0:	06813483          	ld	s1,104(sp)
    800073f4:	06013903          	ld	s2,96(sp)
    800073f8:	05813983          	ld	s3,88(sp)
    800073fc:	05013a03          	ld	s4,80(sp)
    80007400:	04813a83          	ld	s5,72(sp)
    80007404:	04013b03          	ld	s6,64(sp)
    80007408:	03813b83          	ld	s7,56(sp)
    8000740c:	03013c03          	ld	s8,48(sp)
    80007410:	02813c83          	ld	s9,40(sp)
    80007414:	08010113          	addi	sp,sp,128
    80007418:	00008067          	ret
    8000741c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80007420:	000a8513          	mv	a0,s5
    80007424:	ffffc097          	auipc	ra,0xffffc
    80007428:	6a8080e7          	jalr	1704(ra) # 80003acc <_ZdlPv>
    8000742c:	00048513          	mv	a0,s1
    80007430:	00010097          	auipc	ra,0x10
    80007434:	998080e7          	jalr	-1640(ra) # 80016dc8 <_Unwind_Resume>
    80007438:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000743c:	00048513          	mv	a0,s1
    80007440:	ffffc097          	auipc	ra,0xffffc
    80007444:	68c080e7          	jalr	1676(ra) # 80003acc <_ZdlPv>
    80007448:	00090513          	mv	a0,s2
    8000744c:	00010097          	auipc	ra,0x10
    80007450:	97c080e7          	jalr	-1668(ra) # 80016dc8 <_Unwind_Resume>
    80007454:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80007458:	000b0513          	mv	a0,s6
    8000745c:	ffffc097          	auipc	ra,0xffffc
    80007460:	670080e7          	jalr	1648(ra) # 80003acc <_ZdlPv>
    80007464:	00048513          	mv	a0,s1
    80007468:	00010097          	auipc	ra,0x10
    8000746c:	960080e7          	jalr	-1696(ra) # 80016dc8 <_Unwind_Resume>
    80007470:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80007474:	000c8513          	mv	a0,s9
    80007478:	ffffc097          	auipc	ra,0xffffc
    8000747c:	654080e7          	jalr	1620(ra) # 80003acc <_ZdlPv>
    80007480:	00048513          	mv	a0,s1
    80007484:	00010097          	auipc	ra,0x10
    80007488:	944080e7          	jalr	-1724(ra) # 80016dc8 <_Unwind_Resume>
    8000748c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80007490:	000c8513          	mv	a0,s9
    80007494:	ffffc097          	auipc	ra,0xffffc
    80007498:	638080e7          	jalr	1592(ra) # 80003acc <_ZdlPv>
    8000749c:	00048513          	mv	a0,s1
    800074a0:	00010097          	auipc	ra,0x10
    800074a4:	928080e7          	jalr	-1752(ra) # 80016dc8 <_Unwind_Resume>

00000000800074a8 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800074a8:	ff010113          	addi	sp,sp,-16
    800074ac:	00113423          	sd	ra,8(sp)
    800074b0:	00813023          	sd	s0,0(sp)
    800074b4:	01010413          	addi	s0,sp,16
    800074b8:	0000e797          	auipc	a5,0xe
    800074bc:	11878793          	addi	a5,a5,280 # 800155d0 <_ZTV12ConsumerSync+0x10>
    800074c0:	00f53023          	sd	a5,0(a0)
    800074c4:	ffffc097          	auipc	ra,0xffffc
    800074c8:	718080e7          	jalr	1816(ra) # 80003bdc <_ZN6ThreadD1Ev>
    800074cc:	00813083          	ld	ra,8(sp)
    800074d0:	00013403          	ld	s0,0(sp)
    800074d4:	01010113          	addi	sp,sp,16
    800074d8:	00008067          	ret

00000000800074dc <_ZN12ConsumerSyncD0Ev>:
    800074dc:	fe010113          	addi	sp,sp,-32
    800074e0:	00113c23          	sd	ra,24(sp)
    800074e4:	00813823          	sd	s0,16(sp)
    800074e8:	00913423          	sd	s1,8(sp)
    800074ec:	02010413          	addi	s0,sp,32
    800074f0:	00050493          	mv	s1,a0
    800074f4:	0000e797          	auipc	a5,0xe
    800074f8:	0dc78793          	addi	a5,a5,220 # 800155d0 <_ZTV12ConsumerSync+0x10>
    800074fc:	00f53023          	sd	a5,0(a0)
    80007500:	ffffc097          	auipc	ra,0xffffc
    80007504:	6dc080e7          	jalr	1756(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80007508:	00048513          	mv	a0,s1
    8000750c:	ffffc097          	auipc	ra,0xffffc
    80007510:	5c0080e7          	jalr	1472(ra) # 80003acc <_ZdlPv>
    80007514:	01813083          	ld	ra,24(sp)
    80007518:	01013403          	ld	s0,16(sp)
    8000751c:	00813483          	ld	s1,8(sp)
    80007520:	02010113          	addi	sp,sp,32
    80007524:	00008067          	ret

0000000080007528 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80007528:	ff010113          	addi	sp,sp,-16
    8000752c:	00113423          	sd	ra,8(sp)
    80007530:	00813023          	sd	s0,0(sp)
    80007534:	01010413          	addi	s0,sp,16
    80007538:	0000e797          	auipc	a5,0xe
    8000753c:	07078793          	addi	a5,a5,112 # 800155a8 <_ZTV12ProducerSync+0x10>
    80007540:	00f53023          	sd	a5,0(a0)
    80007544:	ffffc097          	auipc	ra,0xffffc
    80007548:	698080e7          	jalr	1688(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000754c:	00813083          	ld	ra,8(sp)
    80007550:	00013403          	ld	s0,0(sp)
    80007554:	01010113          	addi	sp,sp,16
    80007558:	00008067          	ret

000000008000755c <_ZN12ProducerSyncD0Ev>:
    8000755c:	fe010113          	addi	sp,sp,-32
    80007560:	00113c23          	sd	ra,24(sp)
    80007564:	00813823          	sd	s0,16(sp)
    80007568:	00913423          	sd	s1,8(sp)
    8000756c:	02010413          	addi	s0,sp,32
    80007570:	00050493          	mv	s1,a0
    80007574:	0000e797          	auipc	a5,0xe
    80007578:	03478793          	addi	a5,a5,52 # 800155a8 <_ZTV12ProducerSync+0x10>
    8000757c:	00f53023          	sd	a5,0(a0)
    80007580:	ffffc097          	auipc	ra,0xffffc
    80007584:	65c080e7          	jalr	1628(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80007588:	00048513          	mv	a0,s1
    8000758c:	ffffc097          	auipc	ra,0xffffc
    80007590:	540080e7          	jalr	1344(ra) # 80003acc <_ZdlPv>
    80007594:	01813083          	ld	ra,24(sp)
    80007598:	01013403          	ld	s0,16(sp)
    8000759c:	00813483          	ld	s1,8(sp)
    800075a0:	02010113          	addi	sp,sp,32
    800075a4:	00008067          	ret

00000000800075a8 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800075a8:	ff010113          	addi	sp,sp,-16
    800075ac:	00113423          	sd	ra,8(sp)
    800075b0:	00813023          	sd	s0,0(sp)
    800075b4:	01010413          	addi	s0,sp,16
    800075b8:	0000e797          	auipc	a5,0xe
    800075bc:	fc878793          	addi	a5,a5,-56 # 80015580 <_ZTV16ProducerKeyboard+0x10>
    800075c0:	00f53023          	sd	a5,0(a0)
    800075c4:	ffffc097          	auipc	ra,0xffffc
    800075c8:	618080e7          	jalr	1560(ra) # 80003bdc <_ZN6ThreadD1Ev>
    800075cc:	00813083          	ld	ra,8(sp)
    800075d0:	00013403          	ld	s0,0(sp)
    800075d4:	01010113          	addi	sp,sp,16
    800075d8:	00008067          	ret

00000000800075dc <_ZN16ProducerKeyboardD0Ev>:
    800075dc:	fe010113          	addi	sp,sp,-32
    800075e0:	00113c23          	sd	ra,24(sp)
    800075e4:	00813823          	sd	s0,16(sp)
    800075e8:	00913423          	sd	s1,8(sp)
    800075ec:	02010413          	addi	s0,sp,32
    800075f0:	00050493          	mv	s1,a0
    800075f4:	0000e797          	auipc	a5,0xe
    800075f8:	f8c78793          	addi	a5,a5,-116 # 80015580 <_ZTV16ProducerKeyboard+0x10>
    800075fc:	00f53023          	sd	a5,0(a0)
    80007600:	ffffc097          	auipc	ra,0xffffc
    80007604:	5dc080e7          	jalr	1500(ra) # 80003bdc <_ZN6ThreadD1Ev>
    80007608:	00048513          	mv	a0,s1
    8000760c:	ffffc097          	auipc	ra,0xffffc
    80007610:	4c0080e7          	jalr	1216(ra) # 80003acc <_ZdlPv>
    80007614:	01813083          	ld	ra,24(sp)
    80007618:	01013403          	ld	s0,16(sp)
    8000761c:	00813483          	ld	s1,8(sp)
    80007620:	02010113          	addi	sp,sp,32
    80007624:	00008067          	ret

0000000080007628 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80007628:	ff010113          	addi	sp,sp,-16
    8000762c:	00113423          	sd	ra,8(sp)
    80007630:	00813023          	sd	s0,0(sp)
    80007634:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80007638:	02053583          	ld	a1,32(a0)
    8000763c:	fffff097          	auipc	ra,0xfffff
    80007640:	7e4080e7          	jalr	2020(ra) # 80006e20 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80007644:	00813083          	ld	ra,8(sp)
    80007648:	00013403          	ld	s0,0(sp)
    8000764c:	01010113          	addi	sp,sp,16
    80007650:	00008067          	ret

0000000080007654 <_ZN12ProducerSync3runEv>:
    void run() override {
    80007654:	ff010113          	addi	sp,sp,-16
    80007658:	00113423          	sd	ra,8(sp)
    8000765c:	00813023          	sd	s0,0(sp)
    80007660:	01010413          	addi	s0,sp,16
        producer(td);
    80007664:	02053583          	ld	a1,32(a0)
    80007668:	00000097          	auipc	ra,0x0
    8000766c:	878080e7          	jalr	-1928(ra) # 80006ee0 <_ZN12ProducerSync8producerEPv>
    }
    80007670:	00813083          	ld	ra,8(sp)
    80007674:	00013403          	ld	s0,0(sp)
    80007678:	01010113          	addi	sp,sp,16
    8000767c:	00008067          	ret

0000000080007680 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80007680:	ff010113          	addi	sp,sp,-16
    80007684:	00113423          	sd	ra,8(sp)
    80007688:	00813023          	sd	s0,0(sp)
    8000768c:	01010413          	addi	s0,sp,16
        consumer(td);
    80007690:	02053583          	ld	a1,32(a0)
    80007694:	00000097          	auipc	ra,0x0
    80007698:	8e0080e7          	jalr	-1824(ra) # 80006f74 <_ZN12ConsumerSync8consumerEPv>
    }
    8000769c:	00813083          	ld	ra,8(sp)
    800076a0:	00013403          	ld	s0,0(sp)
    800076a4:	01010113          	addi	sp,sp,16
    800076a8:	00008067          	ret

00000000800076ac <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800076ac:	fe010113          	addi	sp,sp,-32
    800076b0:	00113c23          	sd	ra,24(sp)
    800076b4:	00813823          	sd	s0,16(sp)
    800076b8:	00913423          	sd	s1,8(sp)
    800076bc:	02010413          	addi	s0,sp,32
    800076c0:	00050493          	mv	s1,a0
    LOCK();
    800076c4:	00100613          	li	a2,1
    800076c8:	00000593          	li	a1,0
    800076cc:	0000e517          	auipc	a0,0xe
    800076d0:	5f450513          	addi	a0,a0,1524 # 80015cc0 <lockPrint>
    800076d4:	ffffa097          	auipc	ra,0xffffa
    800076d8:	b40080e7          	jalr	-1216(ra) # 80001214 <copy_and_swap>
    800076dc:	00050863          	beqz	a0,800076ec <_Z11printStringPKc+0x40>
    800076e0:	ffffa097          	auipc	ra,0xffffa
    800076e4:	c78080e7          	jalr	-904(ra) # 80001358 <_Z15thread_dispatchv>
    800076e8:	fddff06f          	j	800076c4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800076ec:	0004c503          	lbu	a0,0(s1)
    800076f0:	00050a63          	beqz	a0,80007704 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800076f4:	ffffa097          	auipc	ra,0xffffa
    800076f8:	e18080e7          	jalr	-488(ra) # 8000150c <_Z4putcc>
        string++;
    800076fc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80007700:	fedff06f          	j	800076ec <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80007704:	00000613          	li	a2,0
    80007708:	00100593          	li	a1,1
    8000770c:	0000e517          	auipc	a0,0xe
    80007710:	5b450513          	addi	a0,a0,1460 # 80015cc0 <lockPrint>
    80007714:	ffffa097          	auipc	ra,0xffffa
    80007718:	b00080e7          	jalr	-1280(ra) # 80001214 <copy_and_swap>
    8000771c:	fe0514e3          	bnez	a0,80007704 <_Z11printStringPKc+0x58>
}
    80007720:	01813083          	ld	ra,24(sp)
    80007724:	01013403          	ld	s0,16(sp)
    80007728:	00813483          	ld	s1,8(sp)
    8000772c:	02010113          	addi	sp,sp,32
    80007730:	00008067          	ret

0000000080007734 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80007734:	fd010113          	addi	sp,sp,-48
    80007738:	02113423          	sd	ra,40(sp)
    8000773c:	02813023          	sd	s0,32(sp)
    80007740:	00913c23          	sd	s1,24(sp)
    80007744:	01213823          	sd	s2,16(sp)
    80007748:	01313423          	sd	s3,8(sp)
    8000774c:	01413023          	sd	s4,0(sp)
    80007750:	03010413          	addi	s0,sp,48
    80007754:	00050993          	mv	s3,a0
    80007758:	00058a13          	mv	s4,a1
    LOCK();
    8000775c:	00100613          	li	a2,1
    80007760:	00000593          	li	a1,0
    80007764:	0000e517          	auipc	a0,0xe
    80007768:	55c50513          	addi	a0,a0,1372 # 80015cc0 <lockPrint>
    8000776c:	ffffa097          	auipc	ra,0xffffa
    80007770:	aa8080e7          	jalr	-1368(ra) # 80001214 <copy_and_swap>
    80007774:	00050863          	beqz	a0,80007784 <_Z9getStringPci+0x50>
    80007778:	ffffa097          	auipc	ra,0xffffa
    8000777c:	be0080e7          	jalr	-1056(ra) # 80001358 <_Z15thread_dispatchv>
    80007780:	fddff06f          	j	8000775c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80007784:	00000913          	li	s2,0
    80007788:	00090493          	mv	s1,s2
    8000778c:	0019091b          	addiw	s2,s2,1
    80007790:	03495a63          	bge	s2,s4,800077c4 <_Z9getStringPci+0x90>
        cc = getc();
    80007794:	ffffa097          	auipc	ra,0xffffa
    80007798:	d50080e7          	jalr	-688(ra) # 800014e4 <_Z4getcv>
        if(cc < 1)
    8000779c:	02050463          	beqz	a0,800077c4 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800077a0:	009984b3          	add	s1,s3,s1
    800077a4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800077a8:	00a00793          	li	a5,10
    800077ac:	00f50a63          	beq	a0,a5,800077c0 <_Z9getStringPci+0x8c>
    800077b0:	00d00793          	li	a5,13
    800077b4:	fcf51ae3          	bne	a0,a5,80007788 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800077b8:	00090493          	mv	s1,s2
    800077bc:	0080006f          	j	800077c4 <_Z9getStringPci+0x90>
    800077c0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800077c4:	009984b3          	add	s1,s3,s1
    800077c8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800077cc:	00000613          	li	a2,0
    800077d0:	00100593          	li	a1,1
    800077d4:	0000e517          	auipc	a0,0xe
    800077d8:	4ec50513          	addi	a0,a0,1260 # 80015cc0 <lockPrint>
    800077dc:	ffffa097          	auipc	ra,0xffffa
    800077e0:	a38080e7          	jalr	-1480(ra) # 80001214 <copy_and_swap>
    800077e4:	fe0514e3          	bnez	a0,800077cc <_Z9getStringPci+0x98>
    return buf;
}
    800077e8:	00098513          	mv	a0,s3
    800077ec:	02813083          	ld	ra,40(sp)
    800077f0:	02013403          	ld	s0,32(sp)
    800077f4:	01813483          	ld	s1,24(sp)
    800077f8:	01013903          	ld	s2,16(sp)
    800077fc:	00813983          	ld	s3,8(sp)
    80007800:	00013a03          	ld	s4,0(sp)
    80007804:	03010113          	addi	sp,sp,48
    80007808:	00008067          	ret

000000008000780c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000780c:	ff010113          	addi	sp,sp,-16
    80007810:	00813423          	sd	s0,8(sp)
    80007814:	01010413          	addi	s0,sp,16
    80007818:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000781c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80007820:	0006c603          	lbu	a2,0(a3)
    80007824:	fd06071b          	addiw	a4,a2,-48
    80007828:	0ff77713          	andi	a4,a4,255
    8000782c:	00900793          	li	a5,9
    80007830:	02e7e063          	bltu	a5,a4,80007850 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80007834:	0025179b          	slliw	a5,a0,0x2
    80007838:	00a787bb          	addw	a5,a5,a0
    8000783c:	0017979b          	slliw	a5,a5,0x1
    80007840:	00168693          	addi	a3,a3,1
    80007844:	00c787bb          	addw	a5,a5,a2
    80007848:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000784c:	fd5ff06f          	j	80007820 <_Z11stringToIntPKc+0x14>
    return n;
}
    80007850:	00813403          	ld	s0,8(sp)
    80007854:	01010113          	addi	sp,sp,16
    80007858:	00008067          	ret

000000008000785c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000785c:	fc010113          	addi	sp,sp,-64
    80007860:	02113c23          	sd	ra,56(sp)
    80007864:	02813823          	sd	s0,48(sp)
    80007868:	02913423          	sd	s1,40(sp)
    8000786c:	03213023          	sd	s2,32(sp)
    80007870:	01313c23          	sd	s3,24(sp)
    80007874:	04010413          	addi	s0,sp,64
    80007878:	00050493          	mv	s1,a0
    8000787c:	00058913          	mv	s2,a1
    80007880:	00060993          	mv	s3,a2
    LOCK();
    80007884:	00100613          	li	a2,1
    80007888:	00000593          	li	a1,0
    8000788c:	0000e517          	auipc	a0,0xe
    80007890:	43450513          	addi	a0,a0,1076 # 80015cc0 <lockPrint>
    80007894:	ffffa097          	auipc	ra,0xffffa
    80007898:	980080e7          	jalr	-1664(ra) # 80001214 <copy_and_swap>
    8000789c:	00050863          	beqz	a0,800078ac <_Z8printIntiii+0x50>
    800078a0:	ffffa097          	auipc	ra,0xffffa
    800078a4:	ab8080e7          	jalr	-1352(ra) # 80001358 <_Z15thread_dispatchv>
    800078a8:	fddff06f          	j	80007884 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800078ac:	00098463          	beqz	s3,800078b4 <_Z8printIntiii+0x58>
    800078b0:	0804c463          	bltz	s1,80007938 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800078b4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800078b8:	00000593          	li	a1,0
    }

    i = 0;
    800078bc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800078c0:	0009079b          	sext.w	a5,s2
    800078c4:	0325773b          	remuw	a4,a0,s2
    800078c8:	00048613          	mv	a2,s1
    800078cc:	0014849b          	addiw	s1,s1,1
    800078d0:	02071693          	slli	a3,a4,0x20
    800078d4:	0206d693          	srli	a3,a3,0x20
    800078d8:	0000e717          	auipc	a4,0xe
    800078dc:	d1070713          	addi	a4,a4,-752 # 800155e8 <digits>
    800078e0:	00d70733          	add	a4,a4,a3
    800078e4:	00074683          	lbu	a3,0(a4)
    800078e8:	fd040713          	addi	a4,s0,-48
    800078ec:	00c70733          	add	a4,a4,a2
    800078f0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800078f4:	0005071b          	sext.w	a4,a0
    800078f8:	0325553b          	divuw	a0,a0,s2
    800078fc:	fcf772e3          	bgeu	a4,a5,800078c0 <_Z8printIntiii+0x64>
    if(neg)
    80007900:	00058c63          	beqz	a1,80007918 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80007904:	fd040793          	addi	a5,s0,-48
    80007908:	009784b3          	add	s1,a5,s1
    8000790c:	02d00793          	li	a5,45
    80007910:	fef48823          	sb	a5,-16(s1)
    80007914:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80007918:	fff4849b          	addiw	s1,s1,-1
    8000791c:	0204c463          	bltz	s1,80007944 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80007920:	fd040793          	addi	a5,s0,-48
    80007924:	009787b3          	add	a5,a5,s1
    80007928:	ff07c503          	lbu	a0,-16(a5)
    8000792c:	ffffa097          	auipc	ra,0xffffa
    80007930:	be0080e7          	jalr	-1056(ra) # 8000150c <_Z4putcc>
    80007934:	fe5ff06f          	j	80007918 <_Z8printIntiii+0xbc>
        x = -xx;
    80007938:	4090053b          	negw	a0,s1
        neg = 1;
    8000793c:	00100593          	li	a1,1
        x = -xx;
    80007940:	f7dff06f          	j	800078bc <_Z8printIntiii+0x60>

    UNLOCK();
    80007944:	00000613          	li	a2,0
    80007948:	00100593          	li	a1,1
    8000794c:	0000e517          	auipc	a0,0xe
    80007950:	37450513          	addi	a0,a0,884 # 80015cc0 <lockPrint>
    80007954:	ffffa097          	auipc	ra,0xffffa
    80007958:	8c0080e7          	jalr	-1856(ra) # 80001214 <copy_and_swap>
    8000795c:	fe0514e3          	bnez	a0,80007944 <_Z8printIntiii+0xe8>
    80007960:	03813083          	ld	ra,56(sp)
    80007964:	03013403          	ld	s0,48(sp)
    80007968:	02813483          	ld	s1,40(sp)
    8000796c:	02013903          	ld	s2,32(sp)
    80007970:	01813983          	ld	s3,24(sp)
    80007974:	04010113          	addi	sp,sp,64
    80007978:	00008067          	ret

000000008000797c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000797c:	fd010113          	addi	sp,sp,-48
    80007980:	02113423          	sd	ra,40(sp)
    80007984:	02813023          	sd	s0,32(sp)
    80007988:	00913c23          	sd	s1,24(sp)
    8000798c:	01213823          	sd	s2,16(sp)
    80007990:	01313423          	sd	s3,8(sp)
    80007994:	03010413          	addi	s0,sp,48
    80007998:	00050493          	mv	s1,a0
    8000799c:	00058913          	mv	s2,a1
    800079a0:	0015879b          	addiw	a5,a1,1
    800079a4:	0007851b          	sext.w	a0,a5
    800079a8:	00f4a023          	sw	a5,0(s1)
    800079ac:	0004a823          	sw	zero,16(s1)
    800079b0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800079b4:	00251513          	slli	a0,a0,0x2
    800079b8:	ffffa097          	auipc	ra,0xffffa
    800079bc:	87c080e7          	jalr	-1924(ra) # 80001234 <_Z9mem_allocm>
    800079c0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800079c4:	01000513          	li	a0,16
    800079c8:	ffffc097          	auipc	ra,0xffffc
    800079cc:	0b4080e7          	jalr	180(ra) # 80003a7c <_Znwm>
    800079d0:	00050993          	mv	s3,a0
    800079d4:	00000593          	li	a1,0
    800079d8:	ffffc097          	auipc	ra,0xffffc
    800079dc:	2a8080e7          	jalr	680(ra) # 80003c80 <_ZN9SemaphoreC1Ej>
    800079e0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800079e4:	01000513          	li	a0,16
    800079e8:	ffffc097          	auipc	ra,0xffffc
    800079ec:	094080e7          	jalr	148(ra) # 80003a7c <_Znwm>
    800079f0:	00050993          	mv	s3,a0
    800079f4:	00090593          	mv	a1,s2
    800079f8:	ffffc097          	auipc	ra,0xffffc
    800079fc:	288080e7          	jalr	648(ra) # 80003c80 <_ZN9SemaphoreC1Ej>
    80007a00:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80007a04:	01000513          	li	a0,16
    80007a08:	ffffc097          	auipc	ra,0xffffc
    80007a0c:	074080e7          	jalr	116(ra) # 80003a7c <_Znwm>
    80007a10:	00050913          	mv	s2,a0
    80007a14:	00100593          	li	a1,1
    80007a18:	ffffc097          	auipc	ra,0xffffc
    80007a1c:	268080e7          	jalr	616(ra) # 80003c80 <_ZN9SemaphoreC1Ej>
    80007a20:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80007a24:	01000513          	li	a0,16
    80007a28:	ffffc097          	auipc	ra,0xffffc
    80007a2c:	054080e7          	jalr	84(ra) # 80003a7c <_Znwm>
    80007a30:	00050913          	mv	s2,a0
    80007a34:	00100593          	li	a1,1
    80007a38:	ffffc097          	auipc	ra,0xffffc
    80007a3c:	248080e7          	jalr	584(ra) # 80003c80 <_ZN9SemaphoreC1Ej>
    80007a40:	0324b823          	sd	s2,48(s1)
}
    80007a44:	02813083          	ld	ra,40(sp)
    80007a48:	02013403          	ld	s0,32(sp)
    80007a4c:	01813483          	ld	s1,24(sp)
    80007a50:	01013903          	ld	s2,16(sp)
    80007a54:	00813983          	ld	s3,8(sp)
    80007a58:	03010113          	addi	sp,sp,48
    80007a5c:	00008067          	ret
    80007a60:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80007a64:	00098513          	mv	a0,s3
    80007a68:	ffffc097          	auipc	ra,0xffffc
    80007a6c:	064080e7          	jalr	100(ra) # 80003acc <_ZdlPv>
    80007a70:	00048513          	mv	a0,s1
    80007a74:	0000f097          	auipc	ra,0xf
    80007a78:	354080e7          	jalr	852(ra) # 80016dc8 <_Unwind_Resume>
    80007a7c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80007a80:	00098513          	mv	a0,s3
    80007a84:	ffffc097          	auipc	ra,0xffffc
    80007a88:	048080e7          	jalr	72(ra) # 80003acc <_ZdlPv>
    80007a8c:	00048513          	mv	a0,s1
    80007a90:	0000f097          	auipc	ra,0xf
    80007a94:	338080e7          	jalr	824(ra) # 80016dc8 <_Unwind_Resume>
    80007a98:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80007a9c:	00090513          	mv	a0,s2
    80007aa0:	ffffc097          	auipc	ra,0xffffc
    80007aa4:	02c080e7          	jalr	44(ra) # 80003acc <_ZdlPv>
    80007aa8:	00048513          	mv	a0,s1
    80007aac:	0000f097          	auipc	ra,0xf
    80007ab0:	31c080e7          	jalr	796(ra) # 80016dc8 <_Unwind_Resume>
    80007ab4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80007ab8:	00090513          	mv	a0,s2
    80007abc:	ffffc097          	auipc	ra,0xffffc
    80007ac0:	010080e7          	jalr	16(ra) # 80003acc <_ZdlPv>
    80007ac4:	00048513          	mv	a0,s1
    80007ac8:	0000f097          	auipc	ra,0xf
    80007acc:	300080e7          	jalr	768(ra) # 80016dc8 <_Unwind_Resume>

0000000080007ad0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80007ad0:	fe010113          	addi	sp,sp,-32
    80007ad4:	00113c23          	sd	ra,24(sp)
    80007ad8:	00813823          	sd	s0,16(sp)
    80007adc:	00913423          	sd	s1,8(sp)
    80007ae0:	01213023          	sd	s2,0(sp)
    80007ae4:	02010413          	addi	s0,sp,32
    80007ae8:	00050493          	mv	s1,a0
    80007aec:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80007af0:	01853503          	ld	a0,24(a0)
    80007af4:	ffffc097          	auipc	ra,0xffffc
    80007af8:	1c4080e7          	jalr	452(ra) # 80003cb8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80007afc:	0304b503          	ld	a0,48(s1)
    80007b00:	ffffc097          	auipc	ra,0xffffc
    80007b04:	1b8080e7          	jalr	440(ra) # 80003cb8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80007b08:	0084b783          	ld	a5,8(s1)
    80007b0c:	0144a703          	lw	a4,20(s1)
    80007b10:	00271713          	slli	a4,a4,0x2
    80007b14:	00e787b3          	add	a5,a5,a4
    80007b18:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80007b1c:	0144a783          	lw	a5,20(s1)
    80007b20:	0017879b          	addiw	a5,a5,1
    80007b24:	0004a703          	lw	a4,0(s1)
    80007b28:	02e7e7bb          	remw	a5,a5,a4
    80007b2c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80007b30:	0304b503          	ld	a0,48(s1)
    80007b34:	ffffc097          	auipc	ra,0xffffc
    80007b38:	1b0080e7          	jalr	432(ra) # 80003ce4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80007b3c:	0204b503          	ld	a0,32(s1)
    80007b40:	ffffc097          	auipc	ra,0xffffc
    80007b44:	1a4080e7          	jalr	420(ra) # 80003ce4 <_ZN9Semaphore6signalEv>

}
    80007b48:	01813083          	ld	ra,24(sp)
    80007b4c:	01013403          	ld	s0,16(sp)
    80007b50:	00813483          	ld	s1,8(sp)
    80007b54:	00013903          	ld	s2,0(sp)
    80007b58:	02010113          	addi	sp,sp,32
    80007b5c:	00008067          	ret

0000000080007b60 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80007b60:	fe010113          	addi	sp,sp,-32
    80007b64:	00113c23          	sd	ra,24(sp)
    80007b68:	00813823          	sd	s0,16(sp)
    80007b6c:	00913423          	sd	s1,8(sp)
    80007b70:	01213023          	sd	s2,0(sp)
    80007b74:	02010413          	addi	s0,sp,32
    80007b78:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80007b7c:	02053503          	ld	a0,32(a0)
    80007b80:	ffffc097          	auipc	ra,0xffffc
    80007b84:	138080e7          	jalr	312(ra) # 80003cb8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80007b88:	0284b503          	ld	a0,40(s1)
    80007b8c:	ffffc097          	auipc	ra,0xffffc
    80007b90:	12c080e7          	jalr	300(ra) # 80003cb8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80007b94:	0084b703          	ld	a4,8(s1)
    80007b98:	0104a783          	lw	a5,16(s1)
    80007b9c:	00279693          	slli	a3,a5,0x2
    80007ba0:	00d70733          	add	a4,a4,a3
    80007ba4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80007ba8:	0017879b          	addiw	a5,a5,1
    80007bac:	0004a703          	lw	a4,0(s1)
    80007bb0:	02e7e7bb          	remw	a5,a5,a4
    80007bb4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80007bb8:	0284b503          	ld	a0,40(s1)
    80007bbc:	ffffc097          	auipc	ra,0xffffc
    80007bc0:	128080e7          	jalr	296(ra) # 80003ce4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80007bc4:	0184b503          	ld	a0,24(s1)
    80007bc8:	ffffc097          	auipc	ra,0xffffc
    80007bcc:	11c080e7          	jalr	284(ra) # 80003ce4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80007bd0:	00090513          	mv	a0,s2
    80007bd4:	01813083          	ld	ra,24(sp)
    80007bd8:	01013403          	ld	s0,16(sp)
    80007bdc:	00813483          	ld	s1,8(sp)
    80007be0:	00013903          	ld	s2,0(sp)
    80007be4:	02010113          	addi	sp,sp,32
    80007be8:	00008067          	ret

0000000080007bec <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80007bec:	fe010113          	addi	sp,sp,-32
    80007bf0:	00113c23          	sd	ra,24(sp)
    80007bf4:	00813823          	sd	s0,16(sp)
    80007bf8:	00913423          	sd	s1,8(sp)
    80007bfc:	01213023          	sd	s2,0(sp)
    80007c00:	02010413          	addi	s0,sp,32
    80007c04:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80007c08:	02853503          	ld	a0,40(a0)
    80007c0c:	ffffc097          	auipc	ra,0xffffc
    80007c10:	0ac080e7          	jalr	172(ra) # 80003cb8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80007c14:	0304b503          	ld	a0,48(s1)
    80007c18:	ffffc097          	auipc	ra,0xffffc
    80007c1c:	0a0080e7          	jalr	160(ra) # 80003cb8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80007c20:	0144a783          	lw	a5,20(s1)
    80007c24:	0104a903          	lw	s2,16(s1)
    80007c28:	0327ce63          	blt	a5,s2,80007c64 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80007c2c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80007c30:	0304b503          	ld	a0,48(s1)
    80007c34:	ffffc097          	auipc	ra,0xffffc
    80007c38:	0b0080e7          	jalr	176(ra) # 80003ce4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80007c3c:	0284b503          	ld	a0,40(s1)
    80007c40:	ffffc097          	auipc	ra,0xffffc
    80007c44:	0a4080e7          	jalr	164(ra) # 80003ce4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80007c48:	00090513          	mv	a0,s2
    80007c4c:	01813083          	ld	ra,24(sp)
    80007c50:	01013403          	ld	s0,16(sp)
    80007c54:	00813483          	ld	s1,8(sp)
    80007c58:	00013903          	ld	s2,0(sp)
    80007c5c:	02010113          	addi	sp,sp,32
    80007c60:	00008067          	ret
        ret = cap - head + tail;
    80007c64:	0004a703          	lw	a4,0(s1)
    80007c68:	4127093b          	subw	s2,a4,s2
    80007c6c:	00f9093b          	addw	s2,s2,a5
    80007c70:	fc1ff06f          	j	80007c30 <_ZN9BufferCPP6getCntEv+0x44>

0000000080007c74 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80007c74:	fe010113          	addi	sp,sp,-32
    80007c78:	00113c23          	sd	ra,24(sp)
    80007c7c:	00813823          	sd	s0,16(sp)
    80007c80:	00913423          	sd	s1,8(sp)
    80007c84:	02010413          	addi	s0,sp,32
    80007c88:	00050493          	mv	s1,a0
    Console::putc('\n');
    80007c8c:	00a00513          	li	a0,10
    80007c90:	ffffc097          	auipc	ra,0xffffc
    80007c94:	5d0080e7          	jalr	1488(ra) # 80004260 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80007c98:	00009517          	auipc	a0,0x9
    80007c9c:	b3050513          	addi	a0,a0,-1232 # 800107c8 <CONSOLE_STATUS+0x7b8>
    80007ca0:	00000097          	auipc	ra,0x0
    80007ca4:	a0c080e7          	jalr	-1524(ra) # 800076ac <_Z11printStringPKc>
    while (getCnt()) {
    80007ca8:	00048513          	mv	a0,s1
    80007cac:	00000097          	auipc	ra,0x0
    80007cb0:	f40080e7          	jalr	-192(ra) # 80007bec <_ZN9BufferCPP6getCntEv>
    80007cb4:	02050c63          	beqz	a0,80007cec <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80007cb8:	0084b783          	ld	a5,8(s1)
    80007cbc:	0104a703          	lw	a4,16(s1)
    80007cc0:	00271713          	slli	a4,a4,0x2
    80007cc4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80007cc8:	0007c503          	lbu	a0,0(a5)
    80007ccc:	ffffc097          	auipc	ra,0xffffc
    80007cd0:	594080e7          	jalr	1428(ra) # 80004260 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80007cd4:	0104a783          	lw	a5,16(s1)
    80007cd8:	0017879b          	addiw	a5,a5,1
    80007cdc:	0004a703          	lw	a4,0(s1)
    80007ce0:	02e7e7bb          	remw	a5,a5,a4
    80007ce4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80007ce8:	fc1ff06f          	j	80007ca8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80007cec:	02100513          	li	a0,33
    80007cf0:	ffffc097          	auipc	ra,0xffffc
    80007cf4:	570080e7          	jalr	1392(ra) # 80004260 <_ZN7Console4putcEc>
    Console::putc('\n');
    80007cf8:	00a00513          	li	a0,10
    80007cfc:	ffffc097          	auipc	ra,0xffffc
    80007d00:	564080e7          	jalr	1380(ra) # 80004260 <_ZN7Console4putcEc>
    mem_free(buffer);
    80007d04:	0084b503          	ld	a0,8(s1)
    80007d08:	ffff9097          	auipc	ra,0xffff9
    80007d0c:	56c080e7          	jalr	1388(ra) # 80001274 <_Z8mem_freePv>
    delete itemAvailable;
    80007d10:	0204b503          	ld	a0,32(s1)
    80007d14:	00050863          	beqz	a0,80007d24 <_ZN9BufferCPPD1Ev+0xb0>
    80007d18:	00053783          	ld	a5,0(a0)
    80007d1c:	0087b783          	ld	a5,8(a5)
    80007d20:	000780e7          	jalr	a5
    delete spaceAvailable;
    80007d24:	0184b503          	ld	a0,24(s1)
    80007d28:	00050863          	beqz	a0,80007d38 <_ZN9BufferCPPD1Ev+0xc4>
    80007d2c:	00053783          	ld	a5,0(a0)
    80007d30:	0087b783          	ld	a5,8(a5)
    80007d34:	000780e7          	jalr	a5
    delete mutexTail;
    80007d38:	0304b503          	ld	a0,48(s1)
    80007d3c:	00050863          	beqz	a0,80007d4c <_ZN9BufferCPPD1Ev+0xd8>
    80007d40:	00053783          	ld	a5,0(a0)
    80007d44:	0087b783          	ld	a5,8(a5)
    80007d48:	000780e7          	jalr	a5
    delete mutexHead;
    80007d4c:	0284b503          	ld	a0,40(s1)
    80007d50:	00050863          	beqz	a0,80007d60 <_ZN9BufferCPPD1Ev+0xec>
    80007d54:	00053783          	ld	a5,0(a0)
    80007d58:	0087b783          	ld	a5,8(a5)
    80007d5c:	000780e7          	jalr	a5
}
    80007d60:	01813083          	ld	ra,24(sp)
    80007d64:	01013403          	ld	s0,16(sp)
    80007d68:	00813483          	ld	s1,8(sp)
    80007d6c:	02010113          	addi	sp,sp,32
    80007d70:	00008067          	ret

0000000080007d74 <_Z8userMainv>:
#if LEVEL_5_IMPLEMENTED == 1
#include "Test8.hpp"

#endif

void userMain() {
    80007d74:	fe010113          	addi	sp,sp,-32
    80007d78:	00113c23          	sd	ra,24(sp)
    80007d7c:	00813823          	sd	s0,16(sp)
    80007d80:	00913423          	sd	s1,8(sp)
    80007d84:	01213023          	sd	s2,0(sp)
    80007d88:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80007d8c:	00009517          	auipc	a0,0x9
    80007d90:	a5450513          	addi	a0,a0,-1452 # 800107e0 <CONSOLE_STATUS+0x7d0>
    80007d94:	00000097          	auipc	ra,0x0
    80007d98:	918080e7          	jalr	-1768(ra) # 800076ac <_Z11printStringPKc>
    int test = getc() - '0';
    80007d9c:	ffff9097          	auipc	ra,0xffff9
    80007da0:	748080e7          	jalr	1864(ra) # 800014e4 <_Z4getcv>
    80007da4:	0005091b          	sext.w	s2,a0
    80007da8:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80007dac:	ffff9097          	auipc	ra,0xffff9
    80007db0:	738080e7          	jalr	1848(ra) # 800014e4 <_Z4getcv>
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
    80007db4:	fcd9071b          	addiw	a4,s2,-51
    80007db8:	00100793          	li	a5,1
    80007dbc:	02e7fa63          	bgeu	a5,a4,80007df0 <_Z8userMainv+0x7c>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80007dc0:	fcb9091b          	addiw	s2,s2,-53
    80007dc4:	00100793          	li	a5,1
    80007dc8:	0527f863          	bgeu	a5,s2,80007e18 <_Z8userMainv+0xa4>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80007dcc:	00800793          	li	a5,8
    80007dd0:	0c97e663          	bltu	a5,s1,80007e9c <_Z8userMainv+0x128>
    80007dd4:	00249493          	slli	s1,s1,0x2
    80007dd8:	00009717          	auipc	a4,0x9
    80007ddc:	ba870713          	addi	a4,a4,-1112 # 80010980 <CONSOLE_STATUS+0x970>
    80007de0:	00e484b3          	add	s1,s1,a4
    80007de4:	0004a783          	lw	a5,0(s1)
    80007de8:	00e787b3          	add	a5,a5,a4
    80007dec:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 3 implementiran\n");
    80007df0:	00009517          	auipc	a0,0x9
    80007df4:	a1050513          	addi	a0,a0,-1520 # 80010800 <CONSOLE_STATUS+0x7f0>
    80007df8:	00000097          	auipc	ra,0x0
    80007dfc:	8b4080e7          	jalr	-1868(ra) # 800076ac <_Z11printStringPKc>
            break;

        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80007e00:	01813083          	ld	ra,24(sp)
    80007e04:	01013403          	ld	s0,16(sp)
    80007e08:	00813483          	ld	s1,8(sp)
    80007e0c:	00013903          	ld	s2,0(sp)
    80007e10:	02010113          	addi	sp,sp,32
    80007e14:	00008067          	ret
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80007e18:	00009517          	auipc	a0,0x9
    80007e1c:	a1850513          	addi	a0,a0,-1512 # 80010830 <CONSOLE_STATUS+0x820>
    80007e20:	00000097          	auipc	ra,0x0
    80007e24:	88c080e7          	jalr	-1908(ra) # 800076ac <_Z11printStringPKc>
            return;
    80007e28:	fd9ff06f          	j	80007e00 <_Z8userMainv+0x8c>
            Threads_C_API_test();
    80007e2c:	fffff097          	auipc	ra,0xfffff
    80007e30:	ef8080e7          	jalr	-264(ra) # 80006d24 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80007e34:	00009517          	auipc	a0,0x9
    80007e38:	a2c50513          	addi	a0,a0,-1492 # 80010860 <CONSOLE_STATUS+0x850>
    80007e3c:	00000097          	auipc	ra,0x0
    80007e40:	870080e7          	jalr	-1936(ra) # 800076ac <_Z11printStringPKc>
            break;
    80007e44:	fbdff06f          	j	80007e00 <_Z8userMainv+0x8c>
            Threads_CPP_API_test();
    80007e48:	ffffe097          	auipc	ra,0xffffe
    80007e4c:	dbc080e7          	jalr	-580(ra) # 80005c04 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80007e50:	00009517          	auipc	a0,0x9
    80007e54:	a5050513          	addi	a0,a0,-1456 # 800108a0 <CONSOLE_STATUS+0x890>
    80007e58:	00000097          	auipc	ra,0x0
    80007e5c:	854080e7          	jalr	-1964(ra) # 800076ac <_Z11printStringPKc>
            break;
    80007e60:	fa1ff06f          	j	80007e00 <_Z8userMainv+0x8c>
            System_Mode_test();
    80007e64:	00005097          	auipc	ra,0x5
    80007e68:	e38080e7          	jalr	-456(ra) # 8000cc9c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80007e6c:	00009517          	auipc	a0,0x9
    80007e70:	a7450513          	addi	a0,a0,-1420 # 800108e0 <CONSOLE_STATUS+0x8d0>
    80007e74:	00000097          	auipc	ra,0x0
    80007e78:	838080e7          	jalr	-1992(ra) # 800076ac <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80007e7c:	00009517          	auipc	a0,0x9
    80007e80:	a8450513          	addi	a0,a0,-1404 # 80010900 <CONSOLE_STATUS+0x8f0>
    80007e84:	00000097          	auipc	ra,0x0
    80007e88:	828080e7          	jalr	-2008(ra) # 800076ac <_Z11printStringPKc>
            break;
    80007e8c:	f75ff06f          	j	80007e00 <_Z8userMainv+0x8c>
            testTryWait();
    80007e90:	00003097          	auipc	ra,0x3
    80007e94:	7d4080e7          	jalr	2004(ra) # 8000b664 <_Z11testTryWaitv>
            break;
    80007e98:	f69ff06f          	j	80007e00 <_Z8userMainv+0x8c>
            printString("Niste uneli odgovarajuci broj za test\n");
    80007e9c:	00009517          	auipc	a0,0x9
    80007ea0:	abc50513          	addi	a0,a0,-1348 # 80010958 <CONSOLE_STATUS+0x948>
    80007ea4:	00000097          	auipc	ra,0x0
    80007ea8:	808080e7          	jalr	-2040(ra) # 800076ac <_Z11printStringPKc>
    80007eac:	f55ff06f          	j	80007e00 <_Z8userMainv+0x8c>

0000000080007eb0 <_ZN2C43runEv>:
    }
    joinALL();
    printString("B zavrsila \n");

}
void C4::run(){
    80007eb0:	fe010113          	addi	sp,sp,-32
    80007eb4:	00113c23          	sd	ra,24(sp)
    80007eb8:	00813823          	sd	s0,16(sp)
    80007ebc:	00913423          	sd	s1,8(sp)
    80007ec0:	02010413          	addi	s0,sp,32

    printString("C obrada...\n ");
    80007ec4:	00009517          	auipc	a0,0x9
    80007ec8:	ae450513          	addi	a0,a0,-1308 # 800109a8 <CONSOLE_STATUS+0x998>
    80007ecc:	fffff097          	auipc	ra,0xfffff
    80007ed0:	7e0080e7          	jalr	2016(ra) # 800076ac <_Z11printStringPKc>

    printString("\n");
    80007ed4:	00009517          	auipc	a0,0x9
    80007ed8:	b0c50513          	addi	a0,a0,-1268 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80007edc:	fffff097          	auipc	ra,0xfffff
    80007ee0:	7d0080e7          	jalr	2000(ra) # 800076ac <_Z11printStringPKc>
    for(int i=0;i<1000;i++){
    80007ee4:	00000493          	li	s1,0
    80007ee8:	0100006f          	j	80007ef8 <_ZN2C43runEv+0x48>
        for(int j=0;j<10000;j++){

        }
        thread_dispatch();
    80007eec:	ffff9097          	auipc	ra,0xffff9
    80007ef0:	46c080e7          	jalr	1132(ra) # 80001358 <_Z15thread_dispatchv>
    for(int i=0;i<1000;i++){
    80007ef4:	0014849b          	addiw	s1,s1,1
    80007ef8:	3e700793          	li	a5,999
    80007efc:	0097ce63          	blt	a5,s1,80007f18 <_ZN2C43runEv+0x68>
        for(int j=0;j<10000;j++){
    80007f00:	00000713          	li	a4,0
    80007f04:	000027b7          	lui	a5,0x2
    80007f08:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80007f0c:	fee7c0e3          	blt	a5,a4,80007eec <_ZN2C43runEv+0x3c>
    80007f10:	0017071b          	addiw	a4,a4,1
    80007f14:	ff1ff06f          	j	80007f04 <_ZN2C43runEv+0x54>
    }

    printString("C zavrsila \n");
    80007f18:	00009517          	auipc	a0,0x9
    80007f1c:	aa050513          	addi	a0,a0,-1376 # 800109b8 <CONSOLE_STATUS+0x9a8>
    80007f20:	fffff097          	auipc	ra,0xfffff
    80007f24:	78c080e7          	jalr	1932(ra) # 800076ac <_Z11printStringPKc>
    thread_dispatch();
    80007f28:	ffff9097          	auipc	ra,0xffff9
    80007f2c:	430080e7          	jalr	1072(ra) # 80001358 <_Z15thread_dispatchv>


}
    80007f30:	01813083          	ld	ra,24(sp)
    80007f34:	01013403          	ld	s0,16(sp)
    80007f38:	00813483          	ld	s1,8(sp)
    80007f3c:	02010113          	addi	sp,sp,32
    80007f40:	00008067          	ret

0000000080007f44 <_ZN2A53runEv>:
protected:
    void run() override;

};

void A5::run() {
    80007f44:	fd010113          	addi	sp,sp,-48
    80007f48:	02113423          	sd	ra,40(sp)
    80007f4c:	02813023          	sd	s0,32(sp)
    80007f50:	00913c23          	sd	s1,24(sp)
    80007f54:	01213823          	sd	s2,16(sp)
    80007f58:	01313423          	sd	s3,8(sp)
    80007f5c:	03010413          	addi	s0,sp,48
    80007f60:	00050913          	mv	s2,a0
    //int id = getThreadId();
    printString("Thread ID = ");
    80007f64:	00009517          	auipc	a0,0x9
    80007f68:	a6450513          	addi	a0,a0,-1436 # 800109c8 <CONSOLE_STATUS+0x9b8>
    80007f6c:	fffff097          	auipc	ra,0xfffff
    80007f70:	740080e7          	jalr	1856(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    80007f74:	00000613          	li	a2,0
    80007f78:	00a00593          	li	a1,10
    80007f7c:	02092503          	lw	a0,32(s2)
    80007f80:	00000097          	auipc	ra,0x0
    80007f84:	8dc080e7          	jalr	-1828(ra) # 8000785c <_Z8printIntiii>
    printString(": START!\n");
    80007f88:	00009517          	auipc	a0,0x9
    80007f8c:	a5050513          	addi	a0,a0,-1456 # 800109d8 <CONSOLE_STATUS+0x9c8>
    80007f90:	fffff097          	auipc	ra,0xfffff
    80007f94:	71c080e7          	jalr	1820(ra) # 800076ac <_Z11printStringPKc>
    for(int i=0;i<5;i++){
    80007f98:	00000993          	li	s3,0
    80007f9c:	0380006f          	j	80007fd4 <_ZN2A53runEv+0x90>
        printString("Iteration: ");
        printInt(i);
        printString("\n");
        for(int j=0;j<10000;j++){
            for(int k=0;k<10000;k++){}
            thread_dispatch();
    80007fa0:	ffff9097          	auipc	ra,0xffff9
    80007fa4:	3b8080e7          	jalr	952(ra) # 80001358 <_Z15thread_dispatchv>
        for(int j=0;j<10000;j++){
    80007fa8:	0014849b          	addiw	s1,s1,1
    80007fac:	000027b7          	lui	a5,0x2
    80007fb0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80007fb4:	0097ce63          	blt	a5,s1,80007fd0 <_ZN2A53runEv+0x8c>
            for(int k=0;k<10000;k++){}
    80007fb8:	00000713          	li	a4,0
    80007fbc:	000027b7          	lui	a5,0x2
    80007fc0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80007fc4:	fce7cee3          	blt	a5,a4,80007fa0 <_ZN2A53runEv+0x5c>
    80007fc8:	0017071b          	addiw	a4,a4,1
    80007fcc:	ff1ff06f          	j	80007fbc <_ZN2A53runEv+0x78>
    for(int i=0;i<5;i++){
    80007fd0:	0019899b          	addiw	s3,s3,1
    80007fd4:	00400793          	li	a5,4
    80007fd8:	0737ca63          	blt	a5,s3,8000804c <_ZN2A53runEv+0x108>
        printString("Thread ID = ");
    80007fdc:	00009517          	auipc	a0,0x9
    80007fe0:	9ec50513          	addi	a0,a0,-1556 # 800109c8 <CONSOLE_STATUS+0x9b8>
    80007fe4:	fffff097          	auipc	ra,0xfffff
    80007fe8:	6c8080e7          	jalr	1736(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80007fec:	00000613          	li	a2,0
    80007ff0:	00a00593          	li	a1,10
    80007ff4:	02092503          	lw	a0,32(s2)
    80007ff8:	00000097          	auipc	ra,0x0
    80007ffc:	864080e7          	jalr	-1948(ra) # 8000785c <_Z8printIntiii>
        printString(": HELLO! ");
    80008000:	00009517          	auipc	a0,0x9
    80008004:	9e850513          	addi	a0,a0,-1560 # 800109e8 <CONSOLE_STATUS+0x9d8>
    80008008:	fffff097          	auipc	ra,0xfffff
    8000800c:	6a4080e7          	jalr	1700(ra) # 800076ac <_Z11printStringPKc>
        printString("Iteration: ");
    80008010:	00009517          	auipc	a0,0x9
    80008014:	9e850513          	addi	a0,a0,-1560 # 800109f8 <CONSOLE_STATUS+0x9e8>
    80008018:	fffff097          	auipc	ra,0xfffff
    8000801c:	694080e7          	jalr	1684(ra) # 800076ac <_Z11printStringPKc>
        printInt(i);
    80008020:	00000613          	li	a2,0
    80008024:	00a00593          	li	a1,10
    80008028:	00098513          	mv	a0,s3
    8000802c:	00000097          	auipc	ra,0x0
    80008030:	830080e7          	jalr	-2000(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008034:	00009517          	auipc	a0,0x9
    80008038:	9ac50513          	addi	a0,a0,-1620 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000803c:	fffff097          	auipc	ra,0xfffff
    80008040:	670080e7          	jalr	1648(ra) # 800076ac <_Z11printStringPKc>
        for(int j=0;j<10000;j++){
    80008044:	00000493          	li	s1,0
    80008048:	f65ff06f          	j	80007fac <_ZN2A53runEv+0x68>
//        printString("Iteration: ");
//        printInt(i);
//        printString("\n");

    }
    printString("Thread ID = ");
    8000804c:	00009517          	auipc	a0,0x9
    80008050:	97c50513          	addi	a0,a0,-1668 # 800109c8 <CONSOLE_STATUS+0x9b8>
    80008054:	fffff097          	auipc	ra,0xfffff
    80008058:	658080e7          	jalr	1624(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    8000805c:	00000613          	li	a2,0
    80008060:	00a00593          	li	a1,10
    80008064:	02092503          	lw	a0,32(s2)
    80008068:	fffff097          	auipc	ra,0xfffff
    8000806c:	7f4080e7          	jalr	2036(ra) # 8000785c <_Z8printIntiii>
    printString(": END!\n");
    80008070:	00009517          	auipc	a0,0x9
    80008074:	99850513          	addi	a0,a0,-1640 # 80010a08 <CONSOLE_STATUS+0x9f8>
    80008078:	fffff097          	auipc	ra,0xfffff
    8000807c:	634080e7          	jalr	1588(ra) # 800076ac <_Z11printStringPKc>
}
    80008080:	02813083          	ld	ra,40(sp)
    80008084:	02013403          	ld	s0,32(sp)
    80008088:	01813483          	ld	s1,24(sp)
    8000808c:	01013903          	ld	s2,16(sp)
    80008090:	00813983          	ld	s3,8(sp)
    80008094:	03010113          	addi	sp,sp,48
    80008098:	00008067          	ret

000000008000809c <_ZN3B133runEv>:
    B13() : Thread() {};
protected:
    virtual void run();
};

void B13::run(){
    8000809c:	fe010113          	addi	sp,sp,-32
    800080a0:	00113c23          	sd	ra,24(sp)
    800080a4:	00813823          	sd	s0,16(sp)
    800080a8:	00913423          	sd	s1,8(sp)
    800080ac:	01213023          	sd	s2,0(sp)
    800080b0:	02010413          	addi	s0,sp,32

    for(int i=0;i<10;i++){
    800080b4:	00000913          	li	s2,0
    800080b8:	0700006f          	j	80008128 <_ZN3B133runEv+0x8c>
        for(uint64 j=0;j<30000;j++){
            for(int k=0;k<1000;k++){}
            thread_dispatch();
    800080bc:	ffff9097          	auipc	ra,0xffff9
    800080c0:	29c080e7          	jalr	668(ra) # 80001358 <_Z15thread_dispatchv>
        for(uint64 j=0;j<30000;j++){
    800080c4:	00148493          	addi	s1,s1,1
    800080c8:	000077b7          	lui	a5,0x7
    800080cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800080d0:	0097ec63          	bltu	a5,s1,800080e8 <_ZN3B133runEv+0x4c>
            for(int k=0;k<1000;k++){}
    800080d4:	00000793          	li	a5,0
    800080d8:	3e700713          	li	a4,999
    800080dc:	fef740e3          	blt	a4,a5,800080bc <_ZN3B133runEv+0x20>
    800080e0:	0017879b          	addiw	a5,a5,1
    800080e4:	ff5ff06f          	j	800080d8 <_ZN3B133runEv+0x3c>
        }
        printString("B: ");
    800080e8:	00009517          	auipc	a0,0x9
    800080ec:	92850513          	addi	a0,a0,-1752 # 80010a10 <CONSOLE_STATUS+0xa00>
    800080f0:	fffff097          	auipc	ra,0xfffff
    800080f4:	5bc080e7          	jalr	1468(ra) # 800076ac <_Z11printStringPKc>
        printInt(i);
    800080f8:	00000613          	li	a2,0
    800080fc:	00a00593          	li	a1,10
    80008100:	00090513          	mv	a0,s2
    80008104:	fffff097          	auipc	ra,0xfffff
    80008108:	758080e7          	jalr	1880(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000810c:	00009517          	auipc	a0,0x9
    80008110:	8d450513          	addi	a0,a0,-1836 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008114:	fffff097          	auipc	ra,0xfffff
    80008118:	598080e7          	jalr	1432(ra) # 800076ac <_Z11printStringPKc>
        thread_dispatch();
    8000811c:	ffff9097          	auipc	ra,0xffff9
    80008120:	23c080e7          	jalr	572(ra) # 80001358 <_Z15thread_dispatchv>
    for(int i=0;i<10;i++){
    80008124:	0019091b          	addiw	s2,s2,1
    80008128:	00900793          	li	a5,9
    8000812c:	0127c663          	blt	a5,s2,80008138 <_ZN3B133runEv+0x9c>
        for(uint64 j=0;j<30000;j++){
    80008130:	00000493          	li	s1,0
    80008134:	f95ff06f          	j	800080c8 <_ZN3B133runEv+0x2c>
    }
}
    80008138:	01813083          	ld	ra,24(sp)
    8000813c:	01013403          	ld	s0,16(sp)
    80008140:	00813483          	ld	s1,8(sp)
    80008144:	00013903          	ld	s2,0(sp)
    80008148:	02010113          	addi	sp,sp,32
    8000814c:	00008067          	ret

0000000080008150 <_ZN2A13runEv>:
void A1::run() {
    80008150:	fd010113          	addi	sp,sp,-48
    80008154:	02113423          	sd	ra,40(sp)
    80008158:	02813023          	sd	s0,32(sp)
    8000815c:	00913c23          	sd	s1,24(sp)
    80008160:	01213823          	sd	s2,16(sp)
    80008164:	01313423          	sd	s3,8(sp)
    80008168:	03010413          	addi	s0,sp,48
    8000816c:	00050913          	mv	s2,a0
    for(int m=0;m<3;m++){
    80008170:	00000993          	li	s3,0
    80008174:	0c80006f          	j	8000823c <_ZN2A13runEv+0xec>
            thread_dispatch();
    80008178:	ffff9097          	auipc	ra,0xffff9
    8000817c:	1e0080e7          	jalr	480(ra) # 80001358 <_Z15thread_dispatchv>
        for(int i=0;i<1000;i++){
    80008180:	0014849b          	addiw	s1,s1,1
    80008184:	3e700793          	li	a5,999
    80008188:	0097cc63          	blt	a5,s1,800081a0 <_ZN2A13runEv+0x50>
            for(int j=0;j<1000;j++){}
    8000818c:	00000793          	li	a5,0
    80008190:	3e700713          	li	a4,999
    80008194:	fef742e3          	blt	a4,a5,80008178 <_ZN2A13runEv+0x28>
    80008198:	0017879b          	addiw	a5,a5,1
    8000819c:	ff5ff06f          	j	80008190 <_ZN2A13runEv+0x40>
        printString("Nit - id: ");
    800081a0:	00009517          	auipc	a0,0x9
    800081a4:	8a850513          	addi	a0,a0,-1880 # 80010a48 <CONSOLE_STATUS+0xa38>
    800081a8:	fffff097          	auipc	ra,0xfffff
    800081ac:	504080e7          	jalr	1284(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    800081b0:	00000613          	li	a2,0
    800081b4:	00a00593          	li	a1,10
    800081b8:	02092503          	lw	a0,32(s2)
    800081bc:	fffff097          	auipc	ra,0xfffff
    800081c0:	6a0080e7          	jalr	1696(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800081c4:	00009517          	auipc	a0,0x9
    800081c8:	81c50513          	addi	a0,a0,-2020 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800081cc:	fffff097          	auipc	ra,0xfffff
    800081d0:	4e0080e7          	jalr	1248(ra) # 800076ac <_Z11printStringPKc>
        printString("Iteracija: ");
    800081d4:	00009517          	auipc	a0,0x9
    800081d8:	86450513          	addi	a0,a0,-1948 # 80010a38 <CONSOLE_STATUS+0xa28>
    800081dc:	fffff097          	auipc	ra,0xfffff
    800081e0:	4d0080e7          	jalr	1232(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    800081e4:	00000613          	li	a2,0
    800081e8:	00a00593          	li	a1,10
    800081ec:	00098513          	mv	a0,s3
    800081f0:	fffff097          	auipc	ra,0xfffff
    800081f4:	66c080e7          	jalr	1644(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800081f8:	00008517          	auipc	a0,0x8
    800081fc:	7e850513          	addi	a0,a0,2024 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008200:	fffff097          	auipc	ra,0xfffff
    80008204:	4ac080e7          	jalr	1196(ra) # 800076ac <_Z11printStringPKc>
        if(type){
    80008208:	02492783          	lw	a5,36(s2)
    8000820c:	0a078463          	beqz	a5,800082b4 <_ZN2A13runEv+0x164>
            woman(id);
    80008210:	02092583          	lw	a1,32(s2)
    80008214:	00090513          	mv	a0,s2
    80008218:	ffffc097          	auipc	ra,0xffffc
    8000821c:	d4c080e7          	jalr	-692(ra) # 80003f64 <_ZN6Thread5womanEj>
        thread_dispatch();
    80008220:	ffff9097          	auipc	ra,0xffff9
    80008224:	138080e7          	jalr	312(ra) # 80001358 <_Z15thread_dispatchv>
        printString("Jedna itercija gotova\n");
    80008228:	00009517          	auipc	a0,0x9
    8000822c:	83050513          	addi	a0,a0,-2000 # 80010a58 <CONSOLE_STATUS+0xa48>
    80008230:	fffff097          	auipc	ra,0xfffff
    80008234:	47c080e7          	jalr	1148(ra) # 800076ac <_Z11printStringPKc>
    for(int m=0;m<3;m++){
    80008238:	0019899b          	addiw	s3,s3,1
    8000823c:	00200793          	li	a5,2
    80008240:	0937c463          	blt	a5,s3,800082c8 <_ZN2A13runEv+0x178>
        printString("Nit, pocetak wrappera- id: ");
    80008244:	00008517          	auipc	a0,0x8
    80008248:	7d450513          	addi	a0,a0,2004 # 80010a18 <CONSOLE_STATUS+0xa08>
    8000824c:	fffff097          	auipc	ra,0xfffff
    80008250:	460080e7          	jalr	1120(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80008254:	00000613          	li	a2,0
    80008258:	00a00593          	li	a1,10
    8000825c:	02092503          	lw	a0,32(s2)
    80008260:	fffff097          	auipc	ra,0xfffff
    80008264:	5fc080e7          	jalr	1532(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008268:	00008517          	auipc	a0,0x8
    8000826c:	77850513          	addi	a0,a0,1912 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008270:	fffff097          	auipc	ra,0xfffff
    80008274:	43c080e7          	jalr	1084(ra) # 800076ac <_Z11printStringPKc>
        printString("Iteracija: ");
    80008278:	00008517          	auipc	a0,0x8
    8000827c:	7c050513          	addi	a0,a0,1984 # 80010a38 <CONSOLE_STATUS+0xa28>
    80008280:	fffff097          	auipc	ra,0xfffff
    80008284:	42c080e7          	jalr	1068(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008288:	00000613          	li	a2,0
    8000828c:	00a00593          	li	a1,10
    80008290:	00098513          	mv	a0,s3
    80008294:	fffff097          	auipc	ra,0xfffff
    80008298:	5c8080e7          	jalr	1480(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000829c:	00008517          	auipc	a0,0x8
    800082a0:	74450513          	addi	a0,a0,1860 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800082a4:	fffff097          	auipc	ra,0xfffff
    800082a8:	408080e7          	jalr	1032(ra) # 800076ac <_Z11printStringPKc>
        for(int i=0;i<1000;i++){
    800082ac:	00000493          	li	s1,0
    800082b0:	ed5ff06f          	j	80008184 <_ZN2A13runEv+0x34>
            man(id);
    800082b4:	02092583          	lw	a1,32(s2)
    800082b8:	00090513          	mv	a0,s2
    800082bc:	ffffc097          	auipc	ra,0xffffc
    800082c0:	c7c080e7          	jalr	-900(ra) # 80003f38 <_ZN6Thread3manEj>
    800082c4:	f5dff06f          	j	80008220 <_ZN2A13runEv+0xd0>
}
    800082c8:	02813083          	ld	ra,40(sp)
    800082cc:	02013403          	ld	s0,32(sp)
    800082d0:	01813483          	ld	s1,24(sp)
    800082d4:	01013903          	ld	s2,16(sp)
    800082d8:	00813983          	ld	s3,8(sp)
    800082dc:	03010113          	addi	sp,sp,48
    800082e0:	00008067          	ret

00000000800082e4 <_ZN2A23runEv>:
void A2::run(){
    800082e4:	fd010113          	addi	sp,sp,-48
    800082e8:	02113423          	sd	ra,40(sp)
    800082ec:	02813023          	sd	s0,32(sp)
    800082f0:	00913c23          	sd	s1,24(sp)
    800082f4:	01213823          	sd	s2,16(sp)
    800082f8:	01313423          	sd	s3,8(sp)
    800082fc:	03010413          	addi	s0,sp,48
    80008300:	00050913          	mv	s2,a0
    for(int m=0;m<3;m++){
    80008304:	00000993          	li	s3,0
    80008308:	0f00006f          	j	800083f8 <_ZN2A23runEv+0x114>
            thread_dispatch();
    8000830c:	ffff9097          	auipc	ra,0xffff9
    80008310:	04c080e7          	jalr	76(ra) # 80001358 <_Z15thread_dispatchv>
        for(int i=0;i<1000;i++){
    80008314:	0014849b          	addiw	s1,s1,1
    80008318:	3e700793          	li	a5,999
    8000831c:	0097ce63          	blt	a5,s1,80008338 <_ZN2A23runEv+0x54>
            for(int j=0;j<10000;j++){
    80008320:	00000713          	li	a4,0
    80008324:	000027b7          	lui	a5,0x2
    80008328:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000832c:	fee7c0e3          	blt	a5,a4,8000830c <_ZN2A23runEv+0x28>
    80008330:	0017071b          	addiw	a4,a4,1
    80008334:	ff1ff06f          	j	80008324 <_ZN2A23runEv+0x40>
        printString("Nit id: ");
    80008338:	00008517          	auipc	a0,0x8
    8000833c:	77850513          	addi	a0,a0,1912 # 80010ab0 <CONSOLE_STATUS+0xaa0>
    80008340:	fffff097          	auipc	ra,0xfffff
    80008344:	36c080e7          	jalr	876(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80008348:	00000613          	li	a2,0
    8000834c:	00a00593          	li	a1,10
    80008350:	02092503          	lw	a0,32(s2)
    80008354:	fffff097          	auipc	ra,0xfffff
    80008358:	508080e7          	jalr	1288(ra) # 8000785c <_Z8printIntiii>
        printString(" poziva barijeru, iteracija: ");
    8000835c:	00008517          	auipc	a0,0x8
    80008360:	76450513          	addi	a0,a0,1892 # 80010ac0 <CONSOLE_STATUS+0xab0>
    80008364:	fffff097          	auipc	ra,0xfffff
    80008368:	348080e7          	jalr	840(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    8000836c:	00000613          	li	a2,0
    80008370:	00a00593          	li	a1,10
    80008374:	00098513          	mv	a0,s3
    80008378:	fffff097          	auipc	ra,0xfffff
    8000837c:	4e4080e7          	jalr	1252(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008380:	00008517          	auipc	a0,0x8
    80008384:	66050513          	addi	a0,a0,1632 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008388:	fffff097          	auipc	ra,0xfffff
    8000838c:	324080e7          	jalr	804(ra) # 800076ac <_Z11printStringPKc>
        barrier();
    80008390:	00090513          	mv	a0,s2
    80008394:	ffffc097          	auipc	ra,0xffffc
    80008398:	bfc080e7          	jalr	-1028(ra) # 80003f90 <_ZN6Thread7barrierEv>
        printString("Nit id: ");
    8000839c:	00008517          	auipc	a0,0x8
    800083a0:	71450513          	addi	a0,a0,1812 # 80010ab0 <CONSOLE_STATUS+0xaa0>
    800083a4:	fffff097          	auipc	ra,0xfffff
    800083a8:	308080e7          	jalr	776(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    800083ac:	00000613          	li	a2,0
    800083b0:	00a00593          	li	a1,10
    800083b4:	02092503          	lw	a0,32(s2)
    800083b8:	fffff097          	auipc	ra,0xfffff
    800083bc:	4a4080e7          	jalr	1188(ra) # 8000785c <_Z8printIntiii>
        printString(" prosla barijeru, iteracija: ");
    800083c0:	00008517          	auipc	a0,0x8
    800083c4:	72050513          	addi	a0,a0,1824 # 80010ae0 <CONSOLE_STATUS+0xad0>
    800083c8:	fffff097          	auipc	ra,0xfffff
    800083cc:	2e4080e7          	jalr	740(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    800083d0:	00000613          	li	a2,0
    800083d4:	00a00593          	li	a1,10
    800083d8:	00098513          	mv	a0,s3
    800083dc:	fffff097          	auipc	ra,0xfffff
    800083e0:	480080e7          	jalr	1152(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800083e4:	00008517          	auipc	a0,0x8
    800083e8:	5fc50513          	addi	a0,a0,1532 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800083ec:	fffff097          	auipc	ra,0xfffff
    800083f0:	2c0080e7          	jalr	704(ra) # 800076ac <_Z11printStringPKc>
    for(int m=0;m<3;m++){
    800083f4:	0019899b          	addiw	s3,s3,1
    800083f8:	00200793          	li	a5,2
    800083fc:	0737c263          	blt	a5,s3,80008460 <_ZN2A23runEv+0x17c>
        printString("Pocetak wrappera - nit id: ");
    80008400:	00008517          	auipc	a0,0x8
    80008404:	67050513          	addi	a0,a0,1648 # 80010a70 <CONSOLE_STATUS+0xa60>
    80008408:	fffff097          	auipc	ra,0xfffff
    8000840c:	2a4080e7          	jalr	676(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80008410:	00000613          	li	a2,0
    80008414:	00a00593          	li	a1,10
    80008418:	02092503          	lw	a0,32(s2)
    8000841c:	fffff097          	auipc	ra,0xfffff
    80008420:	440080e7          	jalr	1088(ra) # 8000785c <_Z8printIntiii>
        printString(" i iteracija ");
    80008424:	00008517          	auipc	a0,0x8
    80008428:	66c50513          	addi	a0,a0,1644 # 80010a90 <CONSOLE_STATUS+0xa80>
    8000842c:	fffff097          	auipc	ra,0xfffff
    80008430:	280080e7          	jalr	640(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008434:	00000613          	li	a2,0
    80008438:	00a00593          	li	a1,10
    8000843c:	00098513          	mv	a0,s3
    80008440:	fffff097          	auipc	ra,0xfffff
    80008444:	41c080e7          	jalr	1052(ra) # 8000785c <_Z8printIntiii>
        printString(". Obrada...\n");
    80008448:	00008517          	auipc	a0,0x8
    8000844c:	65850513          	addi	a0,a0,1624 # 80010aa0 <CONSOLE_STATUS+0xa90>
    80008450:	fffff097          	auipc	ra,0xfffff
    80008454:	25c080e7          	jalr	604(ra) # 800076ac <_Z11printStringPKc>
        for(int i=0;i<1000;i++){
    80008458:	00000493          	li	s1,0
    8000845c:	ebdff06f          	j	80008318 <_ZN2A23runEv+0x34>
    printString("Gotove sve tri iteracije\n");
    80008460:	00008517          	auipc	a0,0x8
    80008464:	6a050513          	addi	a0,a0,1696 # 80010b00 <CONSOLE_STATUS+0xaf0>
    80008468:	fffff097          	auipc	ra,0xfffff
    8000846c:	244080e7          	jalr	580(ra) # 800076ac <_Z11printStringPKc>
    printString("Nit id: ");
    80008470:	00008517          	auipc	a0,0x8
    80008474:	64050513          	addi	a0,a0,1600 # 80010ab0 <CONSOLE_STATUS+0xaa0>
    80008478:	fffff097          	auipc	ra,0xfffff
    8000847c:	234080e7          	jalr	564(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    80008480:	00000613          	li	a2,0
    80008484:	00a00593          	li	a1,10
    80008488:	02092503          	lw	a0,32(s2)
    8000848c:	fffff097          	auipc	ra,0xfffff
    80008490:	3d0080e7          	jalr	976(ra) # 8000785c <_Z8printIntiii>
    printString("\n");
    80008494:	00008517          	auipc	a0,0x8
    80008498:	54c50513          	addi	a0,a0,1356 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000849c:	fffff097          	auipc	ra,0xfffff
    800084a0:	210080e7          	jalr	528(ra) # 800076ac <_Z11printStringPKc>
}
    800084a4:	02813083          	ld	ra,40(sp)
    800084a8:	02013403          	ld	s0,32(sp)
    800084ac:	01813483          	ld	s1,24(sp)
    800084b0:	01013903          	ld	s2,16(sp)
    800084b4:	00813983          	ld	s3,8(sp)
    800084b8:	03010113          	addi	sp,sp,48
    800084bc:	00008067          	ret

00000000800084c0 <_ZN2A63runEv>:
void A6::run() {
    800084c0:	fd010113          	addi	sp,sp,-48
    800084c4:	02113423          	sd	ra,40(sp)
    800084c8:	02813023          	sd	s0,32(sp)
    800084cc:	00913c23          	sd	s1,24(sp)
    800084d0:	01213823          	sd	s2,16(sp)
    800084d4:	01313423          	sd	s3,8(sp)
    800084d8:	03010413          	addi	s0,sp,48
    800084dc:	00050913          	mv	s2,a0
    for(int i=0;i<3;i++){
    800084e0:	00000993          	li	s3,0
    800084e4:	0ec0006f          	j	800085d0 <_ZN2A63runEv+0x110>
            thread_dispatch();
    800084e8:	ffff9097          	auipc	ra,0xffff9
    800084ec:	e70080e7          	jalr	-400(ra) # 80001358 <_Z15thread_dispatchv>
        for(int j=0;j<10000;j++){
    800084f0:	0014849b          	addiw	s1,s1,1
    800084f4:	000027b7          	lui	a5,0x2
    800084f8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800084fc:	0097cc63          	blt	a5,s1,80008514 <_ZN2A63runEv+0x54>
            for(int k=0;k<1000;k++){}
    80008500:	00000793          	li	a5,0
    80008504:	3e700713          	li	a4,999
    80008508:	fef740e3          	blt	a4,a5,800084e8 <_ZN2A63runEv+0x28>
    8000850c:	0017879b          	addiw	a5,a5,1
    80008510:	ff5ff06f          	j	80008504 <_ZN2A63runEv+0x44>
        printString("Nit id - ");
    80008514:	00008517          	auipc	a0,0x8
    80008518:	60c50513          	addi	a0,a0,1548 # 80010b20 <CONSOLE_STATUS+0xb10>
    8000851c:	fffff097          	auipc	ra,0xfffff
    80008520:	190080e7          	jalr	400(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80008524:	00000613          	li	a2,0
    80008528:	00a00593          	li	a1,10
    8000852c:	02092503          	lw	a0,32(s2)
    80008530:	fffff097          	auipc	ra,0xfffff
    80008534:	32c080e7          	jalr	812(ra) # 8000785c <_Z8printIntiii>
        printString(" poziva barijeru, iteracija: ");
    80008538:	00008517          	auipc	a0,0x8
    8000853c:	58850513          	addi	a0,a0,1416 # 80010ac0 <CONSOLE_STATUS+0xab0>
    80008540:	fffff097          	auipc	ra,0xfffff
    80008544:	16c080e7          	jalr	364(ra) # 800076ac <_Z11printStringPKc>
        printInt(i);
    80008548:	00000613          	li	a2,0
    8000854c:	00a00593          	li	a1,10
    80008550:	00098513          	mv	a0,s3
    80008554:	fffff097          	auipc	ra,0xfffff
    80008558:	308080e7          	jalr	776(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000855c:	00008517          	auipc	a0,0x8
    80008560:	48450513          	addi	a0,a0,1156 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008564:	fffff097          	auipc	ra,0xfffff
    80008568:	148080e7          	jalr	328(ra) # 800076ac <_Z11printStringPKc>
        Thread::barrier_2();
    8000856c:	ffffc097          	auipc	ra,0xffffc
    80008570:	af0080e7          	jalr	-1296(ra) # 8000405c <_ZN6Thread9barrier_2Ev>
        printString("Nit id - ");
    80008574:	00008517          	auipc	a0,0x8
    80008578:	5ac50513          	addi	a0,a0,1452 # 80010b20 <CONSOLE_STATUS+0xb10>
    8000857c:	fffff097          	auipc	ra,0xfffff
    80008580:	130080e7          	jalr	304(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80008584:	00000613          	li	a2,0
    80008588:	00a00593          	li	a1,10
    8000858c:	02092503          	lw	a0,32(s2)
    80008590:	fffff097          	auipc	ra,0xfffff
    80008594:	2cc080e7          	jalr	716(ra) # 8000785c <_Z8printIntiii>
        printString(" prosla barijeru, iteracija: ");
    80008598:	00008517          	auipc	a0,0x8
    8000859c:	54850513          	addi	a0,a0,1352 # 80010ae0 <CONSOLE_STATUS+0xad0>
    800085a0:	fffff097          	auipc	ra,0xfffff
    800085a4:	10c080e7          	jalr	268(ra) # 800076ac <_Z11printStringPKc>
        printInt(i);
    800085a8:	00000613          	li	a2,0
    800085ac:	00a00593          	li	a1,10
    800085b0:	00098513          	mv	a0,s3
    800085b4:	fffff097          	auipc	ra,0xfffff
    800085b8:	2a8080e7          	jalr	680(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800085bc:	00008517          	auipc	a0,0x8
    800085c0:	42450513          	addi	a0,a0,1060 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800085c4:	fffff097          	auipc	ra,0xfffff
    800085c8:	0e8080e7          	jalr	232(ra) # 800076ac <_Z11printStringPKc>
    for(int i=0;i<3;i++){
    800085cc:	0019899b          	addiw	s3,s3,1
    800085d0:	00200793          	li	a5,2
    800085d4:	0737c263          	blt	a5,s3,80008638 <_ZN2A63runEv+0x178>
        printString("Nit id - ");
    800085d8:	00008517          	auipc	a0,0x8
    800085dc:	54850513          	addi	a0,a0,1352 # 80010b20 <CONSOLE_STATUS+0xb10>
    800085e0:	fffff097          	auipc	ra,0xfffff
    800085e4:	0cc080e7          	jalr	204(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    800085e8:	00000613          	li	a2,0
    800085ec:	00a00593          	li	a1,10
    800085f0:	02092503          	lw	a0,32(s2)
    800085f4:	fffff097          	auipc	ra,0xfffff
    800085f8:	268080e7          	jalr	616(ra) # 8000785c <_Z8printIntiii>
        printString(" i pocetak obrade, iteracija: ");
    800085fc:	00008517          	auipc	a0,0x8
    80008600:	53450513          	addi	a0,a0,1332 # 80010b30 <CONSOLE_STATUS+0xb20>
    80008604:	fffff097          	auipc	ra,0xfffff
    80008608:	0a8080e7          	jalr	168(ra) # 800076ac <_Z11printStringPKc>
        printInt(i);
    8000860c:	00000613          	li	a2,0
    80008610:	00a00593          	li	a1,10
    80008614:	00098513          	mv	a0,s3
    80008618:	fffff097          	auipc	ra,0xfffff
    8000861c:	244080e7          	jalr	580(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008620:	00008517          	auipc	a0,0x8
    80008624:	3c050513          	addi	a0,a0,960 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008628:	fffff097          	auipc	ra,0xfffff
    8000862c:	084080e7          	jalr	132(ra) # 800076ac <_Z11printStringPKc>
        for(int j=0;j<10000;j++){
    80008630:	00000493          	li	s1,0
    80008634:	ec1ff06f          	j	800084f4 <_ZN2A63runEv+0x34>
    printString("Nit id - ");
    80008638:	00008517          	auipc	a0,0x8
    8000863c:	4e850513          	addi	a0,a0,1256 # 80010b20 <CONSOLE_STATUS+0xb10>
    80008640:	fffff097          	auipc	ra,0xfffff
    80008644:	06c080e7          	jalr	108(ra) # 800076ac <_Z11printStringPKc>
    printInt(id);
    80008648:	00000613          	li	a2,0
    8000864c:	00a00593          	li	a1,10
    80008650:	02092503          	lw	a0,32(s2)
    80008654:	fffff097          	auipc	ra,0xfffff
    80008658:	208080e7          	jalr	520(ra) # 8000785c <_Z8printIntiii>
    printString(" zavrsila\n");
    8000865c:	00008517          	auipc	a0,0x8
    80008660:	4f450513          	addi	a0,a0,1268 # 80010b50 <CONSOLE_STATUS+0xb40>
    80008664:	fffff097          	auipc	ra,0xfffff
    80008668:	048080e7          	jalr	72(ra) # 800076ac <_Z11printStringPKc>
}
    8000866c:	02813083          	ld	ra,40(sp)
    80008670:	02013403          	ld	s0,32(sp)
    80008674:	01813483          	ld	s1,24(sp)
    80008678:	01013903          	ld	s2,16(sp)
    8000867c:	00813983          	ld	s3,8(sp)
    80008680:	03010113          	addi	sp,sp,48
    80008684:	00008067          	ret

0000000080008688 <_ZN2A33runEv>:
void A3::run(){
    80008688:	fd010113          	addi	sp,sp,-48
    8000868c:	02113423          	sd	ra,40(sp)
    80008690:	02813023          	sd	s0,32(sp)
    80008694:	00913c23          	sd	s1,24(sp)
    80008698:	01213823          	sd	s2,16(sp)
    8000869c:	01313423          	sd	s3,8(sp)
    800086a0:	03010413          	addi	s0,sp,48
    800086a4:	00050993          	mv	s3,a0
    for(int m=1;m<6;m++){
    800086a8:	00100913          	li	s2,1
    800086ac:	1400006f          	j	800087ec <_ZN2A33runEv+0x164>
            thread_dispatch();
    800086b0:	ffff9097          	auipc	ra,0xffff9
    800086b4:	ca8080e7          	jalr	-856(ra) # 80001358 <_Z15thread_dispatchv>
        for(int i=0;i<1000;i++){
    800086b8:	0014849b          	addiw	s1,s1,1
    800086bc:	3e700793          	li	a5,999
    800086c0:	0097ce63          	blt	a5,s1,800086dc <_ZN2A33runEv+0x54>
            for(int j=0;j<10000;j++){
    800086c4:	00000713          	li	a4,0
    800086c8:	000027b7          	lui	a5,0x2
    800086cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800086d0:	fee7c0e3          	blt	a5,a4,800086b0 <_ZN2A33runEv+0x28>
    800086d4:	0017071b          	addiw	a4,a4,1
    800086d8:	ff1ff06f          	j	800086c8 <_ZN2A33runEv+0x40>
        printString("A: ");
    800086dc:	00008517          	auipc	a0,0x8
    800086e0:	48450513          	addi	a0,a0,1156 # 80010b60 <CONSOLE_STATUS+0xb50>
    800086e4:	fffff097          	auipc	ra,0xfffff
    800086e8:	fc8080e7          	jalr	-56(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    800086ec:	00000613          	li	a2,0
    800086f0:	00a00593          	li	a1,10
    800086f4:	00090513          	mv	a0,s2
    800086f8:	fffff097          	auipc	ra,0xfffff
    800086fc:	164080e7          	jalr	356(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008700:	00008517          	auipc	a0,0x8
    80008704:	2e050513          	addi	a0,a0,736 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008708:	fffff097          	auipc	ra,0xfffff
    8000870c:	fa4080e7          	jalr	-92(ra) # 800076ac <_Z11printStringPKc>
        printString("A salje B\n");
    80008710:	00008517          	auipc	a0,0x8
    80008714:	45850513          	addi	a0,a0,1112 # 80010b68 <CONSOLE_STATUS+0xb58>
    80008718:	fffff097          	auipc	ra,0xfffff
    8000871c:	f94080e7          	jalr	-108(ra) # 800076ac <_Z11printStringPKc>
        toSend1->send("B: poruka od A za B\n");
    80008720:	00008597          	auipc	a1,0x8
    80008724:	45858593          	addi	a1,a1,1112 # 80010b78 <CONSOLE_STATUS+0xb68>
    80008728:	0289b503          	ld	a0,40(s3)
    8000872c:	ffffc097          	auipc	ra,0xffffc
    80008730:	88c080e7          	jalr	-1908(ra) # 80003fb8 <_ZN6Thread4sendEPKc>
            printString("A salje C\n");
    80008734:	00008517          	auipc	a0,0x8
    80008738:	45c50513          	addi	a0,a0,1116 # 80010b90 <CONSOLE_STATUS+0xb80>
    8000873c:	fffff097          	auipc	ra,0xfffff
    80008740:	f70080e7          	jalr	-144(ra) # 800076ac <_Z11printStringPKc>
        toSend2->send("C: poruka od A za C\n ");
    80008744:	00008597          	auipc	a1,0x8
    80008748:	45c58593          	addi	a1,a1,1116 # 80010ba0 <CONSOLE_STATUS+0xb90>
    8000874c:	0309b503          	ld	a0,48(s3)
    80008750:	ffffc097          	auipc	ra,0xffffc
    80008754:	868080e7          	jalr	-1944(ra) # 80003fb8 <_ZN6Thread4sendEPKc>
        printString("A poslala sve i sad prima: ");
    80008758:	00008517          	auipc	a0,0x8
    8000875c:	46050513          	addi	a0,a0,1120 # 80010bb8 <CONSOLE_STATUS+0xba8>
    80008760:	fffff097          	auipc	ra,0xfffff
    80008764:	f4c080e7          	jalr	-180(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008768:	00000613          	li	a2,0
    8000876c:	00a00593          	li	a1,10
    80008770:	00090513          	mv	a0,s2
    80008774:	fffff097          	auipc	ra,0xfffff
    80008778:	0e8080e7          	jalr	232(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000877c:	00008517          	auipc	a0,0x8
    80008780:	26450513          	addi	a0,a0,612 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008784:	fffff097          	auipc	ra,0xfffff
    80008788:	f28080e7          	jalr	-216(ra) # 800076ac <_Z11printStringPKc>
        printString(receive());
    8000878c:	00098513          	mv	a0,s3
    80008790:	ffffc097          	auipc	ra,0xffffc
    80008794:	854080e7          	jalr	-1964(ra) # 80003fe4 <_ZN6Thread7receiveEv>
    80008798:	fffff097          	auipc	ra,0xfffff
    8000879c:	f14080e7          	jalr	-236(ra) # 800076ac <_Z11printStringPKc>
        printString(receive());
    800087a0:	00098513          	mv	a0,s3
    800087a4:	ffffc097          	auipc	ra,0xffffc
    800087a8:	840080e7          	jalr	-1984(ra) # 80003fe4 <_ZN6Thread7receiveEv>
    800087ac:	fffff097          	auipc	ra,0xfffff
    800087b0:	f00080e7          	jalr	-256(ra) # 800076ac <_Z11printStringPKc>
        printString("A sve primila: ");
    800087b4:	00008517          	auipc	a0,0x8
    800087b8:	42450513          	addi	a0,a0,1060 # 80010bd8 <CONSOLE_STATUS+0xbc8>
    800087bc:	fffff097          	auipc	ra,0xfffff
    800087c0:	ef0080e7          	jalr	-272(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    800087c4:	00000613          	li	a2,0
    800087c8:	00a00593          	li	a1,10
    800087cc:	00090513          	mv	a0,s2
    800087d0:	fffff097          	auipc	ra,0xfffff
    800087d4:	08c080e7          	jalr	140(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800087d8:	00008517          	auipc	a0,0x8
    800087dc:	20850513          	addi	a0,a0,520 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800087e0:	fffff097          	auipc	ra,0xfffff
    800087e4:	ecc080e7          	jalr	-308(ra) # 800076ac <_Z11printStringPKc>
    for(int m=1;m<6;m++){
    800087e8:	0019091b          	addiw	s2,s2,1
    800087ec:	00500793          	li	a5,5
    800087f0:	0527c063          	blt	a5,s2,80008830 <_ZN2A33runEv+0x1a8>
        printString("A: ");
    800087f4:	00008517          	auipc	a0,0x8
    800087f8:	36c50513          	addi	a0,a0,876 # 80010b60 <CONSOLE_STATUS+0xb50>
    800087fc:	fffff097          	auipc	ra,0xfffff
    80008800:	eb0080e7          	jalr	-336(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008804:	00000613          	li	a2,0
    80008808:	00a00593          	li	a1,10
    8000880c:	00090513          	mv	a0,s2
    80008810:	fffff097          	auipc	ra,0xfffff
    80008814:	04c080e7          	jalr	76(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008818:	00008517          	auipc	a0,0x8
    8000881c:	1c850513          	addi	a0,a0,456 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008820:	fffff097          	auipc	ra,0xfffff
    80008824:	e8c080e7          	jalr	-372(ra) # 800076ac <_Z11printStringPKc>
        for(int i=0;i<1000;i++){
    80008828:	00000493          	li	s1,0
    8000882c:	e91ff06f          	j	800086bc <_ZN2A33runEv+0x34>
}
    80008830:	02813083          	ld	ra,40(sp)
    80008834:	02013403          	ld	s0,32(sp)
    80008838:	01813483          	ld	s1,24(sp)
    8000883c:	01013903          	ld	s2,16(sp)
    80008840:	00813983          	ld	s3,8(sp)
    80008844:	03010113          	addi	sp,sp,48
    80008848:	00008067          	ret

000000008000884c <_ZN2B33runEv>:
void B3::run(){
    8000884c:	fd010113          	addi	sp,sp,-48
    80008850:	02113423          	sd	ra,40(sp)
    80008854:	02813023          	sd	s0,32(sp)
    80008858:	00913c23          	sd	s1,24(sp)
    8000885c:	01213823          	sd	s2,16(sp)
    80008860:	01313423          	sd	s3,8(sp)
    80008864:	03010413          	addi	s0,sp,48
    80008868:	00050993          	mv	s3,a0
    for(int m=1;m<6;m++){
    8000886c:	00100913          	li	s2,1
    80008870:	11c0006f          	j	8000898c <_ZN2B33runEv+0x140>
            thread_dispatch();
    80008874:	ffff9097          	auipc	ra,0xffff9
    80008878:	ae4080e7          	jalr	-1308(ra) # 80001358 <_Z15thread_dispatchv>
        for(int i=0;i<1000;i++){
    8000887c:	0014849b          	addiw	s1,s1,1
    80008880:	3e700793          	li	a5,999
    80008884:	0097ce63          	blt	a5,s1,800088a0 <_ZN2B33runEv+0x54>
            for(int j=0;j<10000;j++){
    80008888:	00000713          	li	a4,0
    8000888c:	000027b7          	lui	a5,0x2
    80008890:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80008894:	fee7c0e3          	blt	a5,a4,80008874 <_ZN2B33runEv+0x28>
    80008898:	0017071b          	addiw	a4,a4,1
    8000889c:	ff1ff06f          	j	8000888c <_ZN2B33runEv+0x40>
        printString("B: ");
    800088a0:	00008517          	auipc	a0,0x8
    800088a4:	17050513          	addi	a0,a0,368 # 80010a10 <CONSOLE_STATUS+0xa00>
    800088a8:	fffff097          	auipc	ra,0xfffff
    800088ac:	e04080e7          	jalr	-508(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    800088b0:	00000613          	li	a2,0
    800088b4:	00a00593          	li	a1,10
    800088b8:	00090513          	mv	a0,s2
    800088bc:	fffff097          	auipc	ra,0xfffff
    800088c0:	fa0080e7          	jalr	-96(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800088c4:	00008517          	auipc	a0,0x8
    800088c8:	11c50513          	addi	a0,a0,284 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800088cc:	fffff097          	auipc	ra,0xfffff
    800088d0:	de0080e7          	jalr	-544(ra) # 800076ac <_Z11printStringPKc>
        printString("B salje niti A\n");
    800088d4:	00008517          	auipc	a0,0x8
    800088d8:	31450513          	addi	a0,a0,788 # 80010be8 <CONSOLE_STATUS+0xbd8>
    800088dc:	fffff097          	auipc	ra,0xfffff
    800088e0:	dd0080e7          	jalr	-560(ra) # 800076ac <_Z11printStringPKc>
        toSend1->send("A: poruka od B za A\n");
    800088e4:	00008597          	auipc	a1,0x8
    800088e8:	31458593          	addi	a1,a1,788 # 80010bf8 <CONSOLE_STATUS+0xbe8>
    800088ec:	0289b503          	ld	a0,40(s3)
    800088f0:	ffffb097          	auipc	ra,0xffffb
    800088f4:	6c8080e7          	jalr	1736(ra) # 80003fb8 <_ZN6Thread4sendEPKc>
        printString("B poslala i sad prima: ");
    800088f8:	00008517          	auipc	a0,0x8
    800088fc:	31850513          	addi	a0,a0,792 # 80010c10 <CONSOLE_STATUS+0xc00>
    80008900:	fffff097          	auipc	ra,0xfffff
    80008904:	dac080e7          	jalr	-596(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008908:	00000613          	li	a2,0
    8000890c:	00a00593          	li	a1,10
    80008910:	00090513          	mv	a0,s2
    80008914:	fffff097          	auipc	ra,0xfffff
    80008918:	f48080e7          	jalr	-184(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000891c:	00008517          	auipc	a0,0x8
    80008920:	0c450513          	addi	a0,a0,196 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008924:	fffff097          	auipc	ra,0xfffff
    80008928:	d88080e7          	jalr	-632(ra) # 800076ac <_Z11printStringPKc>
        printString(receive());
    8000892c:	00098513          	mv	a0,s3
    80008930:	ffffb097          	auipc	ra,0xffffb
    80008934:	6b4080e7          	jalr	1716(ra) # 80003fe4 <_ZN6Thread7receiveEv>
    80008938:	fffff097          	auipc	ra,0xfffff
    8000893c:	d74080e7          	jalr	-652(ra) # 800076ac <_Z11printStringPKc>
        printString(receive());
    80008940:	00098513          	mv	a0,s3
    80008944:	ffffb097          	auipc	ra,0xffffb
    80008948:	6a0080e7          	jalr	1696(ra) # 80003fe4 <_ZN6Thread7receiveEv>
    8000894c:	fffff097          	auipc	ra,0xfffff
    80008950:	d60080e7          	jalr	-672(ra) # 800076ac <_Z11printStringPKc>
        printString("B primila sve: ");
    80008954:	00008517          	auipc	a0,0x8
    80008958:	2d450513          	addi	a0,a0,724 # 80010c28 <CONSOLE_STATUS+0xc18>
    8000895c:	fffff097          	auipc	ra,0xfffff
    80008960:	d50080e7          	jalr	-688(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008964:	00000613          	li	a2,0
    80008968:	00a00593          	li	a1,10
    8000896c:	00090513          	mv	a0,s2
    80008970:	fffff097          	auipc	ra,0xfffff
    80008974:	eec080e7          	jalr	-276(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008978:	00008517          	auipc	a0,0x8
    8000897c:	06850513          	addi	a0,a0,104 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008980:	fffff097          	auipc	ra,0xfffff
    80008984:	d2c080e7          	jalr	-724(ra) # 800076ac <_Z11printStringPKc>
    for(int m=1;m<6;m++){
    80008988:	0019091b          	addiw	s2,s2,1
    8000898c:	00500793          	li	a5,5
    80008990:	0527c063          	blt	a5,s2,800089d0 <_ZN2B33runEv+0x184>
        printString("B: ");
    80008994:	00008517          	auipc	a0,0x8
    80008998:	07c50513          	addi	a0,a0,124 # 80010a10 <CONSOLE_STATUS+0xa00>
    8000899c:	fffff097          	auipc	ra,0xfffff
    800089a0:	d10080e7          	jalr	-752(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    800089a4:	00000613          	li	a2,0
    800089a8:	00a00593          	li	a1,10
    800089ac:	00090513          	mv	a0,s2
    800089b0:	fffff097          	auipc	ra,0xfffff
    800089b4:	eac080e7          	jalr	-340(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800089b8:	00008517          	auipc	a0,0x8
    800089bc:	02850513          	addi	a0,a0,40 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800089c0:	fffff097          	auipc	ra,0xfffff
    800089c4:	cec080e7          	jalr	-788(ra) # 800076ac <_Z11printStringPKc>
        for(int i=0;i<1000;i++){
    800089c8:	00000493          	li	s1,0
    800089cc:	eb5ff06f          	j	80008880 <_ZN2B33runEv+0x34>
}
    800089d0:	02813083          	ld	ra,40(sp)
    800089d4:	02013403          	ld	s0,32(sp)
    800089d8:	01813483          	ld	s1,24(sp)
    800089dc:	01013903          	ld	s2,16(sp)
    800089e0:	00813983          	ld	s3,8(sp)
    800089e4:	03010113          	addi	sp,sp,48
    800089e8:	00008067          	ret

00000000800089ec <_ZN2C33runEv>:
void C3::run(){
    800089ec:	fd010113          	addi	sp,sp,-48
    800089f0:	02113423          	sd	ra,40(sp)
    800089f4:	02813023          	sd	s0,32(sp)
    800089f8:	00913c23          	sd	s1,24(sp)
    800089fc:	01213823          	sd	s2,16(sp)
    80008a00:	01313423          	sd	s3,8(sp)
    80008a04:	03010413          	addi	s0,sp,48
    80008a08:	00050993          	mv	s3,a0
    for(int m=1;m<6;m++){
    80008a0c:	00100913          	li	s2,1
    80008a10:	12c0006f          	j	80008b3c <_ZN2C33runEv+0x150>
            thread_dispatch();
    80008a14:	ffff9097          	auipc	ra,0xffff9
    80008a18:	944080e7          	jalr	-1724(ra) # 80001358 <_Z15thread_dispatchv>
        for(int i=0;i<1000;i++){
    80008a1c:	0014849b          	addiw	s1,s1,1
    80008a20:	3e700793          	li	a5,999
    80008a24:	0097ce63          	blt	a5,s1,80008a40 <_ZN2C33runEv+0x54>
            for(int j=0;j<10000;j++){
    80008a28:	00000713          	li	a4,0
    80008a2c:	000027b7          	lui	a5,0x2
    80008a30:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80008a34:	fee7c0e3          	blt	a5,a4,80008a14 <_ZN2C33runEv+0x28>
    80008a38:	0017071b          	addiw	a4,a4,1
    80008a3c:	ff1ff06f          	j	80008a2c <_ZN2C33runEv+0x40>
        printString("C: ");
    80008a40:	00008517          	auipc	a0,0x8
    80008a44:	1f850513          	addi	a0,a0,504 # 80010c38 <CONSOLE_STATUS+0xc28>
    80008a48:	fffff097          	auipc	ra,0xfffff
    80008a4c:	c64080e7          	jalr	-924(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008a50:	00000613          	li	a2,0
    80008a54:	00a00593          	li	a1,10
    80008a58:	00090513          	mv	a0,s2
    80008a5c:	fffff097          	auipc	ra,0xfffff
    80008a60:	e00080e7          	jalr	-512(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008a64:	00008517          	auipc	a0,0x8
    80008a68:	f7c50513          	addi	a0,a0,-132 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008a6c:	fffff097          	auipc	ra,0xfffff
    80008a70:	c40080e7          	jalr	-960(ra) # 800076ac <_Z11printStringPKc>
        printString("C salje poruku niti A\n");
    80008a74:	00008517          	auipc	a0,0x8
    80008a78:	1cc50513          	addi	a0,a0,460 # 80010c40 <CONSOLE_STATUS+0xc30>
    80008a7c:	fffff097          	auipc	ra,0xfffff
    80008a80:	c30080e7          	jalr	-976(ra) # 800076ac <_Z11printStringPKc>
        toSend1->send("A: poruka od C za A\n");
    80008a84:	00008597          	auipc	a1,0x8
    80008a88:	1d458593          	addi	a1,a1,468 # 80010c58 <CONSOLE_STATUS+0xc48>
    80008a8c:	0289b503          	ld	a0,40(s3)
    80008a90:	ffffb097          	auipc	ra,0xffffb
    80008a94:	528080e7          	jalr	1320(ra) # 80003fb8 <_ZN6Thread4sendEPKc>
        printString("C salje8 poruku niti B\n");
    80008a98:	00008517          	auipc	a0,0x8
    80008a9c:	1d850513          	addi	a0,a0,472 # 80010c70 <CONSOLE_STATUS+0xc60>
    80008aa0:	fffff097          	auipc	ra,0xfffff
    80008aa4:	c0c080e7          	jalr	-1012(ra) # 800076ac <_Z11printStringPKc>
        toSend2->send("B: poruka od C za B\n ");
    80008aa8:	00008597          	auipc	a1,0x8
    80008aac:	1e058593          	addi	a1,a1,480 # 80010c88 <CONSOLE_STATUS+0xc78>
    80008ab0:	0309b503          	ld	a0,48(s3)
    80008ab4:	ffffb097          	auipc	ra,0xffffb
    80008ab8:	504080e7          	jalr	1284(ra) # 80003fb8 <_ZN6Thread4sendEPKc>
        printString("C sve poruke poslate i sad prima: ");
    80008abc:	00008517          	auipc	a0,0x8
    80008ac0:	1e450513          	addi	a0,a0,484 # 80010ca0 <CONSOLE_STATUS+0xc90>
    80008ac4:	fffff097          	auipc	ra,0xfffff
    80008ac8:	be8080e7          	jalr	-1048(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008acc:	00000613          	li	a2,0
    80008ad0:	00a00593          	li	a1,10
    80008ad4:	00090513          	mv	a0,s2
    80008ad8:	fffff097          	auipc	ra,0xfffff
    80008adc:	d84080e7          	jalr	-636(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008ae0:	00008517          	auipc	a0,0x8
    80008ae4:	f0050513          	addi	a0,a0,-256 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008ae8:	fffff097          	auipc	ra,0xfffff
    80008aec:	bc4080e7          	jalr	-1084(ra) # 800076ac <_Z11printStringPKc>
        printString(receive());
    80008af0:	00098513          	mv	a0,s3
    80008af4:	ffffb097          	auipc	ra,0xffffb
    80008af8:	4f0080e7          	jalr	1264(ra) # 80003fe4 <_ZN6Thread7receiveEv>
    80008afc:	fffff097          	auipc	ra,0xfffff
    80008b00:	bb0080e7          	jalr	-1104(ra) # 800076ac <_Z11printStringPKc>
        printString("C primila : ");
    80008b04:	00008517          	auipc	a0,0x8
    80008b08:	1c450513          	addi	a0,a0,452 # 80010cc8 <CONSOLE_STATUS+0xcb8>
    80008b0c:	fffff097          	auipc	ra,0xfffff
    80008b10:	ba0080e7          	jalr	-1120(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008b14:	00000613          	li	a2,0
    80008b18:	00a00593          	li	a1,10
    80008b1c:	00090513          	mv	a0,s2
    80008b20:	fffff097          	auipc	ra,0xfffff
    80008b24:	d3c080e7          	jalr	-708(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008b28:	00008517          	auipc	a0,0x8
    80008b2c:	eb850513          	addi	a0,a0,-328 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008b30:	fffff097          	auipc	ra,0xfffff
    80008b34:	b7c080e7          	jalr	-1156(ra) # 800076ac <_Z11printStringPKc>
    for(int m=1;m<6;m++){
    80008b38:	0019091b          	addiw	s2,s2,1
    80008b3c:	00500793          	li	a5,5
    80008b40:	0527c063          	blt	a5,s2,80008b80 <_ZN2C33runEv+0x194>
        printString("C: ");
    80008b44:	00008517          	auipc	a0,0x8
    80008b48:	0f450513          	addi	a0,a0,244 # 80010c38 <CONSOLE_STATUS+0xc28>
    80008b4c:	fffff097          	auipc	ra,0xfffff
    80008b50:	b60080e7          	jalr	-1184(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008b54:	00000613          	li	a2,0
    80008b58:	00a00593          	li	a1,10
    80008b5c:	00090513          	mv	a0,s2
    80008b60:	fffff097          	auipc	ra,0xfffff
    80008b64:	cfc080e7          	jalr	-772(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008b68:	00008517          	auipc	a0,0x8
    80008b6c:	e7850513          	addi	a0,a0,-392 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008b70:	fffff097          	auipc	ra,0xfffff
    80008b74:	b3c080e7          	jalr	-1220(ra) # 800076ac <_Z11printStringPKc>
        for(int i=0;i<1000;i++){
    80008b78:	00000493          	li	s1,0
    80008b7c:	ea5ff06f          	j	80008a20 <_ZN2C33runEv+0x34>
}
    80008b80:	02813083          	ld	ra,40(sp)
    80008b84:	02013403          	ld	s0,32(sp)
    80008b88:	01813483          	ld	s1,24(sp)
    80008b8c:	01013903          	ld	s2,16(sp)
    80008b90:	00813983          	ld	s3,8(sp)
    80008b94:	03010113          	addi	sp,sp,48
    80008b98:	00008067          	ret

0000000080008b9c <_ZN2A83runEv>:
void A8::run() {
    80008b9c:	fd010113          	addi	sp,sp,-48
    80008ba0:	02113423          	sd	ra,40(sp)
    80008ba4:	02813023          	sd	s0,32(sp)
    80008ba8:	00913c23          	sd	s1,24(sp)
    80008bac:	01213823          	sd	s2,16(sp)
    80008bb0:	01313423          	sd	s3,8(sp)
    80008bb4:	03010413          	addi	s0,sp,48
    80008bb8:	00050913          	mv	s2,a0
    for(int m=0;m<3;m++){
    80008bbc:	00000993          	li	s3,0
    80008bc0:	0c80006f          	j	80008c88 <_ZN2A83runEv+0xec>
            thread_dispatch();
    80008bc4:	ffff8097          	auipc	ra,0xffff8
    80008bc8:	794080e7          	jalr	1940(ra) # 80001358 <_Z15thread_dispatchv>
        for(int i=0;i<1000;i++){
    80008bcc:	0014849b          	addiw	s1,s1,1
    80008bd0:	3e700793          	li	a5,999
    80008bd4:	0097cc63          	blt	a5,s1,80008bec <_ZN2A83runEv+0x50>
            for(int j=0;j<1000;j++){}
    80008bd8:	00000793          	li	a5,0
    80008bdc:	3e700713          	li	a4,999
    80008be0:	fef742e3          	blt	a4,a5,80008bc4 <_ZN2A83runEv+0x28>
    80008be4:	0017879b          	addiw	a5,a5,1
    80008be8:	ff5ff06f          	j	80008bdc <_ZN2A83runEv+0x40>
        printString("Nit - id: ");
    80008bec:	00008517          	auipc	a0,0x8
    80008bf0:	e5c50513          	addi	a0,a0,-420 # 80010a48 <CONSOLE_STATUS+0xa38>
    80008bf4:	fffff097          	auipc	ra,0xfffff
    80008bf8:	ab8080e7          	jalr	-1352(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80008bfc:	00000613          	li	a2,0
    80008c00:	00a00593          	li	a1,10
    80008c04:	02092503          	lw	a0,32(s2)
    80008c08:	fffff097          	auipc	ra,0xfffff
    80008c0c:	c54080e7          	jalr	-940(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008c10:	00008517          	auipc	a0,0x8
    80008c14:	dd050513          	addi	a0,a0,-560 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008c18:	fffff097          	auipc	ra,0xfffff
    80008c1c:	a94080e7          	jalr	-1388(ra) # 800076ac <_Z11printStringPKc>
        printString("Iteracija: ");
    80008c20:	00008517          	auipc	a0,0x8
    80008c24:	e1850513          	addi	a0,a0,-488 # 80010a38 <CONSOLE_STATUS+0xa28>
    80008c28:	fffff097          	auipc	ra,0xfffff
    80008c2c:	a84080e7          	jalr	-1404(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008c30:	00000613          	li	a2,0
    80008c34:	00a00593          	li	a1,10
    80008c38:	00098513          	mv	a0,s3
    80008c3c:	fffff097          	auipc	ra,0xfffff
    80008c40:	c20080e7          	jalr	-992(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008c44:	00008517          	auipc	a0,0x8
    80008c48:	d9c50513          	addi	a0,a0,-612 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008c4c:	fffff097          	auipc	ra,0xfffff
    80008c50:	a60080e7          	jalr	-1440(ra) # 800076ac <_Z11printStringPKc>
        if(type){
    80008c54:	02492783          	lw	a5,36(s2)
    80008c58:	0a078463          	beqz	a5,80008d00 <_ZN2A83runEv+0x164>
            H(id);
    80008c5c:	02092583          	lw	a1,32(s2)
    80008c60:	00090513          	mv	a0,s2
    80008c64:	ffffb097          	auipc	ra,0xffffb
    80008c68:	4a4080e7          	jalr	1188(ra) # 80004108 <_ZN6Thread1HEj>
        thread_dispatch();
    80008c6c:	ffff8097          	auipc	ra,0xffff8
    80008c70:	6ec080e7          	jalr	1772(ra) # 80001358 <_Z15thread_dispatchv>
        printString("Jedna itercija gotova\n");
    80008c74:	00008517          	auipc	a0,0x8
    80008c78:	de450513          	addi	a0,a0,-540 # 80010a58 <CONSOLE_STATUS+0xa48>
    80008c7c:	fffff097          	auipc	ra,0xfffff
    80008c80:	a30080e7          	jalr	-1488(ra) # 800076ac <_Z11printStringPKc>
    for(int m=0;m<3;m++){
    80008c84:	0019899b          	addiw	s3,s3,1
    80008c88:	00200793          	li	a5,2
    80008c8c:	0937c463          	blt	a5,s3,80008d14 <_ZN2A83runEv+0x178>
        printString("Nit, pocetak wrappera- id: ");
    80008c90:	00008517          	auipc	a0,0x8
    80008c94:	d8850513          	addi	a0,a0,-632 # 80010a18 <CONSOLE_STATUS+0xa08>
    80008c98:	fffff097          	auipc	ra,0xfffff
    80008c9c:	a14080e7          	jalr	-1516(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80008ca0:	00000613          	li	a2,0
    80008ca4:	00a00593          	li	a1,10
    80008ca8:	02092503          	lw	a0,32(s2)
    80008cac:	fffff097          	auipc	ra,0xfffff
    80008cb0:	bb0080e7          	jalr	-1104(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008cb4:	00008517          	auipc	a0,0x8
    80008cb8:	d2c50513          	addi	a0,a0,-724 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008cbc:	fffff097          	auipc	ra,0xfffff
    80008cc0:	9f0080e7          	jalr	-1552(ra) # 800076ac <_Z11printStringPKc>
        printString("Iteracija: ");
    80008cc4:	00008517          	auipc	a0,0x8
    80008cc8:	d7450513          	addi	a0,a0,-652 # 80010a38 <CONSOLE_STATUS+0xa28>
    80008ccc:	fffff097          	auipc	ra,0xfffff
    80008cd0:	9e0080e7          	jalr	-1568(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008cd4:	00000613          	li	a2,0
    80008cd8:	00a00593          	li	a1,10
    80008cdc:	00098513          	mv	a0,s3
    80008ce0:	fffff097          	auipc	ra,0xfffff
    80008ce4:	b7c080e7          	jalr	-1156(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008ce8:	00008517          	auipc	a0,0x8
    80008cec:	cf850513          	addi	a0,a0,-776 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008cf0:	fffff097          	auipc	ra,0xfffff
    80008cf4:	9bc080e7          	jalr	-1604(ra) # 800076ac <_Z11printStringPKc>
        for(int i=0;i<1000;i++){
    80008cf8:	00000493          	li	s1,0
    80008cfc:	ed5ff06f          	j	80008bd0 <_ZN2A83runEv+0x34>
            O(id);
    80008d00:	02092583          	lw	a1,32(s2)
    80008d04:	00090513          	mv	a0,s2
    80008d08:	ffffb097          	auipc	ra,0xffffb
    80008d0c:	3d4080e7          	jalr	980(ra) # 800040dc <_ZN6Thread1OEj>
    80008d10:	f5dff06f          	j	80008c6c <_ZN2A83runEv+0xd0>
}
    80008d14:	02813083          	ld	ra,40(sp)
    80008d18:	02013403          	ld	s0,32(sp)
    80008d1c:	01813483          	ld	s1,24(sp)
    80008d20:	01013903          	ld	s2,16(sp)
    80008d24:	00813983          	ld	s3,8(sp)
    80008d28:	03010113          	addi	sp,sp,48
    80008d2c:	00008067          	ret

0000000080008d30 <_ZN2A93runEv>:
void A9::run() {
    80008d30:	fd010113          	addi	sp,sp,-48
    80008d34:	02113423          	sd	ra,40(sp)
    80008d38:	02813023          	sd	s0,32(sp)
    80008d3c:	00913c23          	sd	s1,24(sp)
    80008d40:	01213823          	sd	s2,16(sp)
    80008d44:	01313423          	sd	s3,8(sp)
    80008d48:	03010413          	addi	s0,sp,48
    80008d4c:	00050913          	mv	s2,a0
    for(int m=0;m<3;m++){
    80008d50:	00000993          	li	s3,0
    80008d54:	0c40006f          	j	80008e18 <_ZN2A93runEv+0xe8>
            thread_dispatch();
    80008d58:	ffff8097          	auipc	ra,0xffff8
    80008d5c:	600080e7          	jalr	1536(ra) # 80001358 <_Z15thread_dispatchv>
        for(int i=0;i<1000;i++){
    80008d60:	0014849b          	addiw	s1,s1,1
    80008d64:	3e700793          	li	a5,999
    80008d68:	0097cc63          	blt	a5,s1,80008d80 <_ZN2A93runEv+0x50>
            for(int j=0;j<1000;j++){}
    80008d6c:	00000793          	li	a5,0
    80008d70:	3e700713          	li	a4,999
    80008d74:	fef742e3          	blt	a4,a5,80008d58 <_ZN2A93runEv+0x28>
    80008d78:	0017879b          	addiw	a5,a5,1
    80008d7c:	ff5ff06f          	j	80008d70 <_ZN2A93runEv+0x40>
        printString("Nit - id: ");
    80008d80:	00008517          	auipc	a0,0x8
    80008d84:	cc850513          	addi	a0,a0,-824 # 80010a48 <CONSOLE_STATUS+0xa38>
    80008d88:	fffff097          	auipc	ra,0xfffff
    80008d8c:	924080e7          	jalr	-1756(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80008d90:	00000613          	li	a2,0
    80008d94:	00a00593          	li	a1,10
    80008d98:	02092503          	lw	a0,32(s2)
    80008d9c:	fffff097          	auipc	ra,0xfffff
    80008da0:	ac0080e7          	jalr	-1344(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008da4:	00008517          	auipc	a0,0x8
    80008da8:	c3c50513          	addi	a0,a0,-964 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008dac:	fffff097          	auipc	ra,0xfffff
    80008db0:	900080e7          	jalr	-1792(ra) # 800076ac <_Z11printStringPKc>
        printString("Iteracija: ");
    80008db4:	00008517          	auipc	a0,0x8
    80008db8:	c8450513          	addi	a0,a0,-892 # 80010a38 <CONSOLE_STATUS+0xa28>
    80008dbc:	fffff097          	auipc	ra,0xfffff
    80008dc0:	8f0080e7          	jalr	-1808(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008dc4:	00000613          	li	a2,0
    80008dc8:	00a00593          	li	a1,10
    80008dcc:	00098513          	mv	a0,s3
    80008dd0:	fffff097          	auipc	ra,0xfffff
    80008dd4:	a8c080e7          	jalr	-1396(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008dd8:	00008517          	auipc	a0,0x8
    80008ddc:	c0850513          	addi	a0,a0,-1016 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008de0:	fffff097          	auipc	ra,0xfffff
    80008de4:	8cc080e7          	jalr	-1844(ra) # 800076ac <_Z11printStringPKc>
        if(type){
    80008de8:	02492783          	lw	a5,36(s2)
    80008dec:	0a078263          	beqz	a5,80008e90 <_ZN2A93runEv+0x160>
            cook();
    80008df0:	00090513          	mv	a0,s2
    80008df4:	ffffb097          	auipc	ra,0xffffb
    80008df8:	36c080e7          	jalr	876(ra) # 80004160 <_ZN6Thread4cookEv>
        thread_dispatch();
    80008dfc:	ffff8097          	auipc	ra,0xffff8
    80008e00:	55c080e7          	jalr	1372(ra) # 80001358 <_Z15thread_dispatchv>
        printString("Jedna itercija gotova\n");
    80008e04:	00008517          	auipc	a0,0x8
    80008e08:	c5450513          	addi	a0,a0,-940 # 80010a58 <CONSOLE_STATUS+0xa48>
    80008e0c:	fffff097          	auipc	ra,0xfffff
    80008e10:	8a0080e7          	jalr	-1888(ra) # 800076ac <_Z11printStringPKc>
    for(int m=0;m<3;m++){
    80008e14:	0019899b          	addiw	s3,s3,1
    80008e18:	00200793          	li	a5,2
    80008e1c:	0937c463          	blt	a5,s3,80008ea4 <_ZN2A93runEv+0x174>
        printString("Nit, pocetak wrappera- id: ");
    80008e20:	00008517          	auipc	a0,0x8
    80008e24:	bf850513          	addi	a0,a0,-1032 # 80010a18 <CONSOLE_STATUS+0xa08>
    80008e28:	fffff097          	auipc	ra,0xfffff
    80008e2c:	884080e7          	jalr	-1916(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80008e30:	00000613          	li	a2,0
    80008e34:	00a00593          	li	a1,10
    80008e38:	02092503          	lw	a0,32(s2)
    80008e3c:	fffff097          	auipc	ra,0xfffff
    80008e40:	a20080e7          	jalr	-1504(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008e44:	00008517          	auipc	a0,0x8
    80008e48:	b9c50513          	addi	a0,a0,-1124 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008e4c:	fffff097          	auipc	ra,0xfffff
    80008e50:	860080e7          	jalr	-1952(ra) # 800076ac <_Z11printStringPKc>
        printString("Iteracija: ");
    80008e54:	00008517          	auipc	a0,0x8
    80008e58:	be450513          	addi	a0,a0,-1052 # 80010a38 <CONSOLE_STATUS+0xa28>
    80008e5c:	fffff097          	auipc	ra,0xfffff
    80008e60:	850080e7          	jalr	-1968(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008e64:	00000613          	li	a2,0
    80008e68:	00a00593          	li	a1,10
    80008e6c:	00098513          	mv	a0,s3
    80008e70:	fffff097          	auipc	ra,0xfffff
    80008e74:	9ec080e7          	jalr	-1556(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008e78:	00008517          	auipc	a0,0x8
    80008e7c:	b6850513          	addi	a0,a0,-1176 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008e80:	fffff097          	auipc	ra,0xfffff
    80008e84:	82c080e7          	jalr	-2004(ra) # 800076ac <_Z11printStringPKc>
        for(int i=0;i<1000;i++){
    80008e88:	00000493          	li	s1,0
    80008e8c:	ed9ff06f          	j	80008d64 <_ZN2A93runEv+0x34>
            savage(id);
    80008e90:	02092583          	lw	a1,32(s2)
    80008e94:	00090513          	mv	a0,s2
    80008e98:	ffffb097          	auipc	ra,0xffffb
    80008e9c:	29c080e7          	jalr	668(ra) # 80004134 <_ZN6Thread6savageEj>
    80008ea0:	f5dff06f          	j	80008dfc <_ZN2A93runEv+0xcc>
}
    80008ea4:	02813083          	ld	ra,40(sp)
    80008ea8:	02013403          	ld	s0,32(sp)
    80008eac:	01813483          	ld	s1,24(sp)
    80008eb0:	01013903          	ld	s2,16(sp)
    80008eb4:	00813983          	ld	s3,8(sp)
    80008eb8:	03010113          	addi	sp,sp,48
    80008ebc:	00008067          	ret

0000000080008ec0 <_ZN3A103runEv>:
void A10::run() {
    80008ec0:	fd010113          	addi	sp,sp,-48
    80008ec4:	02113423          	sd	ra,40(sp)
    80008ec8:	02813023          	sd	s0,32(sp)
    80008ecc:	00913c23          	sd	s1,24(sp)
    80008ed0:	01213823          	sd	s2,16(sp)
    80008ed4:	01313423          	sd	s3,8(sp)
    80008ed8:	03010413          	addi	s0,sp,48
    80008edc:	00050913          	mv	s2,a0
    for(int m=0;m<3;m++){
    80008ee0:	00000993          	li	s3,0
    80008ee4:	0c00006f          	j	80008fa4 <_ZN3A103runEv+0xe4>
            thread_dispatch();
    80008ee8:	ffff8097          	auipc	ra,0xffff8
    80008eec:	470080e7          	jalr	1136(ra) # 80001358 <_Z15thread_dispatchv>
        for(int i=0;i<1000;i++){
    80008ef0:	0014849b          	addiw	s1,s1,1
    80008ef4:	3e700793          	li	a5,999
    80008ef8:	0097cc63          	blt	a5,s1,80008f10 <_ZN3A103runEv+0x50>
            for(int j=0;j<1000;j++){}
    80008efc:	00000793          	li	a5,0
    80008f00:	3e700713          	li	a4,999
    80008f04:	fef742e3          	blt	a4,a5,80008ee8 <_ZN3A103runEv+0x28>
    80008f08:	0017879b          	addiw	a5,a5,1
    80008f0c:	ff5ff06f          	j	80008f00 <_ZN3A103runEv+0x40>
        printString("Nit - id: ");
    80008f10:	00008517          	auipc	a0,0x8
    80008f14:	b3850513          	addi	a0,a0,-1224 # 80010a48 <CONSOLE_STATUS+0xa38>
    80008f18:	ffffe097          	auipc	ra,0xffffe
    80008f1c:	794080e7          	jalr	1940(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80008f20:	00000613          	li	a2,0
    80008f24:	00a00593          	li	a1,10
    80008f28:	02092503          	lw	a0,32(s2)
    80008f2c:	fffff097          	auipc	ra,0xfffff
    80008f30:	930080e7          	jalr	-1744(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008f34:	00008517          	auipc	a0,0x8
    80008f38:	aac50513          	addi	a0,a0,-1364 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008f3c:	ffffe097          	auipc	ra,0xffffe
    80008f40:	770080e7          	jalr	1904(ra) # 800076ac <_Z11printStringPKc>
        printString("Iteracija: ");
    80008f44:	00008517          	auipc	a0,0x8
    80008f48:	af450513          	addi	a0,a0,-1292 # 80010a38 <CONSOLE_STATUS+0xa28>
    80008f4c:	ffffe097          	auipc	ra,0xffffe
    80008f50:	760080e7          	jalr	1888(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008f54:	00000613          	li	a2,0
    80008f58:	00a00593          	li	a1,10
    80008f5c:	00098513          	mv	a0,s3
    80008f60:	fffff097          	auipc	ra,0xfffff
    80008f64:	8fc080e7          	jalr	-1796(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008f68:	00008517          	auipc	a0,0x8
    80008f6c:	a7850513          	addi	a0,a0,-1416 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008f70:	ffffe097          	auipc	ra,0xffffe
    80008f74:	73c080e7          	jalr	1852(ra) # 800076ac <_Z11printStringPKc>
        if(type){
    80008f78:	02492783          	lw	a5,36(s2)
    80008f7c:	0a078063          	beqz	a5,8000901c <_ZN3A103runEv+0x15c>
            birdParent(id);
    80008f80:	02092583          	lw	a1,32(s2)
    80008f84:	00090513          	mv	a0,s2
    80008f88:	ffffb097          	auipc	ra,0xffffb
    80008f8c:	22c080e7          	jalr	556(ra) # 800041b4 <_ZN6Thread10birdParentEj>
        printString("Jedna itercija gotova\n");
    80008f90:	00008517          	auipc	a0,0x8
    80008f94:	ac850513          	addi	a0,a0,-1336 # 80010a58 <CONSOLE_STATUS+0xa48>
    80008f98:	ffffe097          	auipc	ra,0xffffe
    80008f9c:	714080e7          	jalr	1812(ra) # 800076ac <_Z11printStringPKc>
    for(int m=0;m<3;m++){
    80008fa0:	0019899b          	addiw	s3,s3,1
    80008fa4:	00200793          	li	a5,2
    80008fa8:	0937c463          	blt	a5,s3,80009030 <_ZN3A103runEv+0x170>
        printString("Nit, pocetak wrappera- id: ");
    80008fac:	00008517          	auipc	a0,0x8
    80008fb0:	a6c50513          	addi	a0,a0,-1428 # 80010a18 <CONSOLE_STATUS+0xa08>
    80008fb4:	ffffe097          	auipc	ra,0xffffe
    80008fb8:	6f8080e7          	jalr	1784(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80008fbc:	00000613          	li	a2,0
    80008fc0:	00a00593          	li	a1,10
    80008fc4:	02092503          	lw	a0,32(s2)
    80008fc8:	fffff097          	auipc	ra,0xfffff
    80008fcc:	894080e7          	jalr	-1900(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80008fd0:	00008517          	auipc	a0,0x8
    80008fd4:	a1050513          	addi	a0,a0,-1520 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80008fd8:	ffffe097          	auipc	ra,0xffffe
    80008fdc:	6d4080e7          	jalr	1748(ra) # 800076ac <_Z11printStringPKc>
        printString("Iteracija: ");
    80008fe0:	00008517          	auipc	a0,0x8
    80008fe4:	a5850513          	addi	a0,a0,-1448 # 80010a38 <CONSOLE_STATUS+0xa28>
    80008fe8:	ffffe097          	auipc	ra,0xffffe
    80008fec:	6c4080e7          	jalr	1732(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80008ff0:	00000613          	li	a2,0
    80008ff4:	00a00593          	li	a1,10
    80008ff8:	00098513          	mv	a0,s3
    80008ffc:	fffff097          	auipc	ra,0xfffff
    80009000:	860080e7          	jalr	-1952(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80009004:	00008517          	auipc	a0,0x8
    80009008:	9dc50513          	addi	a0,a0,-1572 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000900c:	ffffe097          	auipc	ra,0xffffe
    80009010:	6a0080e7          	jalr	1696(ra) # 800076ac <_Z11printStringPKc>
        for(int i=0;i<1000;i++){
    80009014:	00000493          	li	s1,0
    80009018:	eddff06f          	j	80008ef4 <_ZN3A103runEv+0x34>
            birdChild(id);
    8000901c:	02092583          	lw	a1,32(s2)
    80009020:	00090513          	mv	a0,s2
    80009024:	ffffb097          	auipc	ra,0xffffb
    80009028:	164080e7          	jalr	356(ra) # 80004188 <_ZN6Thread9birdChildEj>
    8000902c:	f65ff06f          	j	80008f90 <_ZN3A103runEv+0xd0>
}
    80009030:	02813083          	ld	ra,40(sp)
    80009034:	02013403          	ld	s0,32(sp)
    80009038:	01813483          	ld	s1,24(sp)
    8000903c:	01013903          	ld	s2,16(sp)
    80009040:	00813983          	ld	s3,8(sp)
    80009044:	03010113          	addi	sp,sp,48
    80009048:	00008067          	ret

000000008000904c <_ZN3A113runEv>:
void A11::run() {
    8000904c:	fd010113          	addi	sp,sp,-48
    80009050:	02113423          	sd	ra,40(sp)
    80009054:	02813023          	sd	s0,32(sp)
    80009058:	00913c23          	sd	s1,24(sp)
    8000905c:	01213823          	sd	s2,16(sp)
    80009060:	01313423          	sd	s3,8(sp)
    80009064:	03010413          	addi	s0,sp,48
    80009068:	00050913          	mv	s2,a0
    for(int m=0;m<3;m++){
    8000906c:	00000993          	li	s3,0
    80009070:	0bc0006f          	j	8000912c <_ZN3A113runEv+0xe0>
            thread_dispatch();
    80009074:	ffff8097          	auipc	ra,0xffff8
    80009078:	2e4080e7          	jalr	740(ra) # 80001358 <_Z15thread_dispatchv>
        for(int i=0;i<1000;i++){
    8000907c:	0014849b          	addiw	s1,s1,1
    80009080:	3e700793          	li	a5,999
    80009084:	0097cc63          	blt	a5,s1,8000909c <_ZN3A113runEv+0x50>
            for(int j=0;j<1000;j++){}
    80009088:	00000793          	li	a5,0
    8000908c:	3e700713          	li	a4,999
    80009090:	fef742e3          	blt	a4,a5,80009074 <_ZN3A113runEv+0x28>
    80009094:	0017879b          	addiw	a5,a5,1
    80009098:	ff5ff06f          	j	8000908c <_ZN3A113runEv+0x40>
        printString("Nit - id: ");
    8000909c:	00008517          	auipc	a0,0x8
    800090a0:	9ac50513          	addi	a0,a0,-1620 # 80010a48 <CONSOLE_STATUS+0xa38>
    800090a4:	ffffe097          	auipc	ra,0xffffe
    800090a8:	608080e7          	jalr	1544(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    800090ac:	00000613          	li	a2,0
    800090b0:	00a00593          	li	a1,10
    800090b4:	02092503          	lw	a0,32(s2)
    800090b8:	ffffe097          	auipc	ra,0xffffe
    800090bc:	7a4080e7          	jalr	1956(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800090c0:	00008517          	auipc	a0,0x8
    800090c4:	92050513          	addi	a0,a0,-1760 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800090c8:	ffffe097          	auipc	ra,0xffffe
    800090cc:	5e4080e7          	jalr	1508(ra) # 800076ac <_Z11printStringPKc>
        printString("Iteracija: ");
    800090d0:	00008517          	auipc	a0,0x8
    800090d4:	96850513          	addi	a0,a0,-1688 # 80010a38 <CONSOLE_STATUS+0xa28>
    800090d8:	ffffe097          	auipc	ra,0xffffe
    800090dc:	5d4080e7          	jalr	1492(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    800090e0:	00000613          	li	a2,0
    800090e4:	00a00593          	li	a1,10
    800090e8:	00098513          	mv	a0,s3
    800090ec:	ffffe097          	auipc	ra,0xffffe
    800090f0:	770080e7          	jalr	1904(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800090f4:	00008517          	auipc	a0,0x8
    800090f8:	8ec50513          	addi	a0,a0,-1812 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800090fc:	ffffe097          	auipc	ra,0xffffe
    80009100:	5b0080e7          	jalr	1456(ra) # 800076ac <_Z11printStringPKc>
        if(type){
    80009104:	02492783          	lw	a5,36(s2)
    80009108:	08078e63          	beqz	a5,800091a4 <_ZN3A113runEv+0x158>
            meda();
    8000910c:	00090513          	mv	a0,s2
    80009110:	ffffb097          	auipc	ra,0xffffb
    80009114:	0d0080e7          	jalr	208(ra) # 800041e0 <_ZN6Thread4medaEv>
        printString("Jedna itercija gotova\n");
    80009118:	00008517          	auipc	a0,0x8
    8000911c:	94050513          	addi	a0,a0,-1728 # 80010a58 <CONSOLE_STATUS+0xa48>
    80009120:	ffffe097          	auipc	ra,0xffffe
    80009124:	58c080e7          	jalr	1420(ra) # 800076ac <_Z11printStringPKc>
    for(int m=0;m<3;m++){
    80009128:	0019899b          	addiw	s3,s3,1
    8000912c:	00200793          	li	a5,2
    80009130:	0937c463          	blt	a5,s3,800091b8 <_ZN3A113runEv+0x16c>
        printString("Nit, pocetak wrappera- id: ");
    80009134:	00008517          	auipc	a0,0x8
    80009138:	8e450513          	addi	a0,a0,-1820 # 80010a18 <CONSOLE_STATUS+0xa08>
    8000913c:	ffffe097          	auipc	ra,0xffffe
    80009140:	570080e7          	jalr	1392(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80009144:	00000613          	li	a2,0
    80009148:	00a00593          	li	a1,10
    8000914c:	02092503          	lw	a0,32(s2)
    80009150:	ffffe097          	auipc	ra,0xffffe
    80009154:	70c080e7          	jalr	1804(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80009158:	00008517          	auipc	a0,0x8
    8000915c:	88850513          	addi	a0,a0,-1912 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80009160:	ffffe097          	auipc	ra,0xffffe
    80009164:	54c080e7          	jalr	1356(ra) # 800076ac <_Z11printStringPKc>
        printString("Iteracija: ");
    80009168:	00008517          	auipc	a0,0x8
    8000916c:	8d050513          	addi	a0,a0,-1840 # 80010a38 <CONSOLE_STATUS+0xa28>
    80009170:	ffffe097          	auipc	ra,0xffffe
    80009174:	53c080e7          	jalr	1340(ra) # 800076ac <_Z11printStringPKc>
        printInt(m);
    80009178:	00000613          	li	a2,0
    8000917c:	00a00593          	li	a1,10
    80009180:	00098513          	mv	a0,s3
    80009184:	ffffe097          	auipc	ra,0xffffe
    80009188:	6d8080e7          	jalr	1752(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000918c:	00008517          	auipc	a0,0x8
    80009190:	85450513          	addi	a0,a0,-1964 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80009194:	ffffe097          	auipc	ra,0xffffe
    80009198:	518080e7          	jalr	1304(ra) # 800076ac <_Z11printStringPKc>
        for(int i=0;i<1000;i++){
    8000919c:	00000493          	li	s1,0
    800091a0:	ee1ff06f          	j	80009080 <_ZN3A113runEv+0x34>
            pcela(id);
    800091a4:	02092583          	lw	a1,32(s2)
    800091a8:	00090513          	mv	a0,s2
    800091ac:	ffffb097          	auipc	ra,0xffffb
    800091b0:	05c080e7          	jalr	92(ra) # 80004208 <_ZN6Thread5pcelaEj>
    800091b4:	f65ff06f          	j	80009118 <_ZN3A113runEv+0xcc>
}
    800091b8:	02813083          	ld	ra,40(sp)
    800091bc:	02013403          	ld	s0,32(sp)
    800091c0:	01813483          	ld	s1,24(sp)
    800091c4:	01013903          	ld	s2,16(sp)
    800091c8:	00813983          	ld	s3,8(sp)
    800091cc:	03010113          	addi	sp,sp,48
    800091d0:	00008067          	ret

00000000800091d4 <_ZN3A123runEv>:
void A12::run() {
    800091d4:	fe010113          	addi	sp,sp,-32
    800091d8:	00113c23          	sd	ra,24(sp)
    800091dc:	00813823          	sd	s0,16(sp)
    800091e0:	00913423          	sd	s1,8(sp)
    800091e4:	02010413          	addi	s0,sp,32
    printString("Nit A obrada...\n");
    800091e8:	00008517          	auipc	a0,0x8
    800091ec:	af050513          	addi	a0,a0,-1296 # 80010cd8 <CONSOLE_STATUS+0xcc8>
    800091f0:	ffffe097          	auipc	ra,0xffffe
    800091f4:	4bc080e7          	jalr	1212(ra) # 800076ac <_Z11printStringPKc>
    for(int i=0;i<1000;i++){
    800091f8:	00000493          	li	s1,0
    800091fc:	0100006f          	j	8000920c <_ZN3A123runEv+0x38>
        thread_dispatch();
    80009200:	ffff8097          	auipc	ra,0xffff8
    80009204:	158080e7          	jalr	344(ra) # 80001358 <_Z15thread_dispatchv>
    for(int i=0;i<1000;i++){
    80009208:	0014849b          	addiw	s1,s1,1
    8000920c:	3e700793          	li	a5,999
    80009210:	0097cc63          	blt	a5,s1,80009228 <_ZN3A123runEv+0x54>
        for(int j=0;j<1000;j++){}
    80009214:	00000793          	li	a5,0
    80009218:	3e700713          	li	a4,999
    8000921c:	fef742e3          	blt	a4,a5,80009200 <_ZN3A123runEv+0x2c>
    80009220:	0017879b          	addiw	a5,a5,1
    80009224:	ff5ff06f          	j	80009218 <_ZN3A123runEv+0x44>
    printString("Nit A hoce 10 zetona...\n");
    80009228:	00008517          	auipc	a0,0x8
    8000922c:	ac850513          	addi	a0,a0,-1336 # 80010cf0 <CONSOLE_STATUS+0xce0>
    80009230:	ffffe097          	auipc	ra,0xffffe
    80009234:	47c080e7          	jalr	1148(ra) # 800076ac <_Z11printStringPKc>
    sem2->waitN(10);
    80009238:	00a00593          	li	a1,10
    8000923c:	0000d517          	auipc	a0,0xd
    80009240:	a8c53503          	ld	a0,-1396(a0) # 80015cc8 <sem2>
    80009244:	ffffb097          	auipc	ra,0xffffb
    80009248:	b24080e7          	jalr	-1244(ra) # 80003d68 <_ZN9Semaphore5waitNEi>
    printString("Nit uzela 10 zetona \n");
    8000924c:	00008517          	auipc	a0,0x8
    80009250:	ac450513          	addi	a0,a0,-1340 # 80010d10 <CONSOLE_STATUS+0xd00>
    80009254:	ffffe097          	auipc	ra,0xffffe
    80009258:	458080e7          	jalr	1112(ra) # 800076ac <_Z11printStringPKc>
    printString("A: zavrsila\n");
    8000925c:	00008517          	auipc	a0,0x8
    80009260:	acc50513          	addi	a0,a0,-1332 # 80010d28 <CONSOLE_STATUS+0xd18>
    80009264:	ffffe097          	auipc	ra,0xffffe
    80009268:	448080e7          	jalr	1096(ra) # 800076ac <_Z11printStringPKc>
}
    8000926c:	01813083          	ld	ra,24(sp)
    80009270:	01013403          	ld	s0,16(sp)
    80009274:	00813483          	ld	s1,8(sp)
    80009278:	02010113          	addi	sp,sp,32
    8000927c:	00008067          	ret

0000000080009280 <_ZN3B123runEv>:
void B12::run() {
    80009280:	fe010113          	addi	sp,sp,-32
    80009284:	00113c23          	sd	ra,24(sp)
    80009288:	00813823          	sd	s0,16(sp)
    8000928c:	00913423          	sd	s1,8(sp)
    80009290:	02010413          	addi	s0,sp,32
    for(int i =0;i<5;i++){
    80009294:	00000493          	li	s1,0
    80009298:	0280006f          	j	800092c0 <_ZN3B123runEv+0x40>
        sem2->signalN();
    8000929c:	0000d517          	auipc	a0,0xd
    800092a0:	a2c53503          	ld	a0,-1492(a0) # 80015cc8 <sem2>
    800092a4:	ffffb097          	auipc	ra,0xffffb
    800092a8:	af0080e7          	jalr	-1296(ra) # 80003d94 <_ZN9Semaphore7signalNEv>
        printString("Nit B signalizira semafor 2\n");
    800092ac:	00008517          	auipc	a0,0x8
    800092b0:	a8c50513          	addi	a0,a0,-1396 # 80010d38 <CONSOLE_STATUS+0xd28>
    800092b4:	ffffe097          	auipc	ra,0xffffe
    800092b8:	3f8080e7          	jalr	1016(ra) # 800076ac <_Z11printStringPKc>
    for(int i =0;i<5;i++){
    800092bc:	0014849b          	addiw	s1,s1,1
    800092c0:	00400793          	li	a5,4
    800092c4:	fc97dce3          	bge	a5,s1,8000929c <_ZN3B123runEv+0x1c>
    for(int i=0;i<1000;i++){
    800092c8:	00000493          	li	s1,0
    800092cc:	0100006f          	j	800092dc <_ZN3B123runEv+0x5c>
        thread_dispatch();
    800092d0:	ffff8097          	auipc	ra,0xffff8
    800092d4:	088080e7          	jalr	136(ra) # 80001358 <_Z15thread_dispatchv>
    for(int i=0;i<1000;i++){
    800092d8:	0014849b          	addiw	s1,s1,1
    800092dc:	3e700793          	li	a5,999
    800092e0:	0097cc63          	blt	a5,s1,800092f8 <_ZN3B123runEv+0x78>
        for(int j=0;j<1000;j++){}
    800092e4:	00000793          	li	a5,0
    800092e8:	3e700713          	li	a4,999
    800092ec:	fef742e3          	blt	a4,a5,800092d0 <_ZN3B123runEv+0x50>
    800092f0:	0017879b          	addiw	a5,a5,1
    800092f4:	ff5ff06f          	j	800092e8 <_ZN3B123runEv+0x68>
    printString("Nit B hoce 5 zetona\n");
    800092f8:	00008517          	auipc	a0,0x8
    800092fc:	a6050513          	addi	a0,a0,-1440 # 80010d58 <CONSOLE_STATUS+0xd48>
    80009300:	ffffe097          	auipc	ra,0xffffe
    80009304:	3ac080e7          	jalr	940(ra) # 800076ac <_Z11printStringPKc>
    sem3->waitN(5);
    80009308:	00500593          	li	a1,5
    8000930c:	0000d517          	auipc	a0,0xd
    80009310:	9c453503          	ld	a0,-1596(a0) # 80015cd0 <sem3>
    80009314:	ffffb097          	auipc	ra,0xffffb
    80009318:	a54080e7          	jalr	-1452(ra) # 80003d68 <_ZN9Semaphore5waitNEi>
    printString("Nit B uzela 5 zetona.\n");
    8000931c:	00008517          	auipc	a0,0x8
    80009320:	a5450513          	addi	a0,a0,-1452 # 80010d70 <CONSOLE_STATUS+0xd60>
    80009324:	ffffe097          	auipc	ra,0xffffe
    80009328:	388080e7          	jalr	904(ra) # 800076ac <_Z11printStringPKc>
    printString("B: Zavrsila!\n");
    8000932c:	00008517          	auipc	a0,0x8
    80009330:	a5c50513          	addi	a0,a0,-1444 # 80010d88 <CONSOLE_STATUS+0xd78>
    80009334:	ffffe097          	auipc	ra,0xffffe
    80009338:	378080e7          	jalr	888(ra) # 800076ac <_Z11printStringPKc>
}
    8000933c:	01813083          	ld	ra,24(sp)
    80009340:	01013403          	ld	s0,16(sp)
    80009344:	00813483          	ld	s1,8(sp)
    80009348:	02010113          	addi	sp,sp,32
    8000934c:	00008067          	ret

0000000080009350 <_ZN3A133runEv>:
void A13::run(){
    80009350:	fd010113          	addi	sp,sp,-48
    80009354:	02113423          	sd	ra,40(sp)
    80009358:	02813023          	sd	s0,32(sp)
    8000935c:	00913c23          	sd	s1,24(sp)
    80009360:	01213823          	sd	s2,16(sp)
    80009364:	01313423          	sd	s3,8(sp)
    80009368:	03010413          	addi	s0,sp,48
    8000936c:	00050993          	mv	s3,a0
    for(int i=0;i<10;i++){
    80009370:	00000913          	li	s2,0
    80009374:	0880006f          	j	800093fc <_ZN3A133runEv+0xac>
            thread_dispatch();
    80009378:	ffff8097          	auipc	ra,0xffff8
    8000937c:	fe0080e7          	jalr	-32(ra) # 80001358 <_Z15thread_dispatchv>
        for(uint64 j=0;j<30000;j++){
    80009380:	00148493          	addi	s1,s1,1
    80009384:	000077b7          	lui	a5,0x7
    80009388:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000938c:	0097ec63          	bltu	a5,s1,800093a4 <_ZN3A133runEv+0x54>
            for(int k=0;k<1000;k++){}
    80009390:	00000793          	li	a5,0
    80009394:	3e700713          	li	a4,999
    80009398:	fef740e3          	blt	a4,a5,80009378 <_ZN3A133runEv+0x28>
    8000939c:	0017879b          	addiw	a5,a5,1
    800093a0:	ff5ff06f          	j	80009394 <_ZN3A133runEv+0x44>
        printString("A: ");
    800093a4:	00007517          	auipc	a0,0x7
    800093a8:	7bc50513          	addi	a0,a0,1980 # 80010b60 <CONSOLE_STATUS+0xb50>
    800093ac:	ffffe097          	auipc	ra,0xffffe
    800093b0:	300080e7          	jalr	768(ra) # 800076ac <_Z11printStringPKc>
        printInt(i);
    800093b4:	00000613          	li	a2,0
    800093b8:	00a00593          	li	a1,10
    800093bc:	00090513          	mv	a0,s2
    800093c0:	ffffe097          	auipc	ra,0xffffe
    800093c4:	49c080e7          	jalr	1180(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800093c8:	00007517          	auipc	a0,0x7
    800093cc:	61850513          	addi	a0,a0,1560 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800093d0:	ffffe097          	auipc	ra,0xffffe
    800093d4:	2dc080e7          	jalr	732(ra) # 800076ac <_Z11printStringPKc>
        if(i==7){
    800093d8:	00700793          	li	a5,7
    800093dc:	02f90863          	beq	s2,a5,8000940c <_ZN3A133runEv+0xbc>
        printString("\n");
    800093e0:	00007517          	auipc	a0,0x7
    800093e4:	60050513          	addi	a0,a0,1536 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800093e8:	ffffe097          	auipc	ra,0xffffe
    800093ec:	2c4080e7          	jalr	708(ra) # 800076ac <_Z11printStringPKc>
        thread_dispatch();
    800093f0:	ffff8097          	auipc	ra,0xffff8
    800093f4:	f68080e7          	jalr	-152(ra) # 80001358 <_Z15thread_dispatchv>
    for(int i=0;i<10;i++){
    800093f8:	0019091b          	addiw	s2,s2,1
    800093fc:	00900793          	li	a5,9
    80009400:	0327c663          	blt	a5,s2,8000942c <_ZN3A133runEv+0xdc>
        for(uint64 j=0;j<30000;j++){
    80009404:	00000493          	li	s1,0
    80009408:	f7dff06f          	j	80009384 <_ZN3A133runEv+0x34>
            printString("A: Pinging B...\n");
    8000940c:	00008517          	auipc	a0,0x8
    80009410:	98c50513          	addi	a0,a0,-1652 # 80010d98 <CONSOLE_STATUS+0xd88>
    80009414:	ffffe097          	auipc	ra,0xffffe
    80009418:	298080e7          	jalr	664(ra) # 800076ac <_Z11printStringPKc>
            toPing->pingThread();
    8000941c:	0209b503          	ld	a0,32(s3)
    80009420:	ffffb097          	auipc	ra,0xffffb
    80009424:	e14080e7          	jalr	-492(ra) # 80004234 <_ZN6Thread10pingThreadEv>
    80009428:	fb9ff06f          	j	800093e0 <_ZN3A133runEv+0x90>
}
    8000942c:	02813083          	ld	ra,40(sp)
    80009430:	02013403          	ld	s0,32(sp)
    80009434:	01813483          	ld	s1,24(sp)
    80009438:	01013903          	ld	s2,16(sp)
    8000943c:	00813983          	ld	s3,8(sp)
    80009440:	03010113          	addi	sp,sp,48
    80009444:	00008067          	ret

0000000080009448 <_ZN3C133runEv>:

protected:
    virtual void run();
};

void C13::run(){
    80009448:	fd010113          	addi	sp,sp,-48
    8000944c:	02113423          	sd	ra,40(sp)
    80009450:	02813023          	sd	s0,32(sp)
    80009454:	00913c23          	sd	s1,24(sp)
    80009458:	01213823          	sd	s2,16(sp)
    8000945c:	01313423          	sd	s3,8(sp)
    80009460:	03010413          	addi	s0,sp,48
    80009464:	00050993          	mv	s3,a0
//    int* test = new int[600];
//    test[0]=1;
    for(int i=0;i<10;i++){
    80009468:	00000913          	li	s2,0
    8000946c:	0780006f          	j	800094e4 <_ZN3C133runEv+0x9c>
        for(uint64 j=0;j<30000;j++){
            for(int k=0;k<1000;k++){}
            thread_dispatch();
    80009470:	ffff8097          	auipc	ra,0xffff8
    80009474:	ee8080e7          	jalr	-280(ra) # 80001358 <_Z15thread_dispatchv>
        for(uint64 j=0;j<30000;j++){
    80009478:	00148493          	addi	s1,s1,1
    8000947c:	000077b7          	lui	a5,0x7
    80009480:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80009484:	0097ec63          	bltu	a5,s1,8000949c <_ZN3C133runEv+0x54>
            for(int k=0;k<1000;k++){}
    80009488:	00000793          	li	a5,0
    8000948c:	3e700713          	li	a4,999
    80009490:	fef740e3          	blt	a4,a5,80009470 <_ZN3C133runEv+0x28>
    80009494:	0017879b          	addiw	a5,a5,1
    80009498:	ff5ff06f          	j	8000948c <_ZN3C133runEv+0x44>
        }
        printString("C: ");
    8000949c:	00007517          	auipc	a0,0x7
    800094a0:	79c50513          	addi	a0,a0,1948 # 80010c38 <CONSOLE_STATUS+0xc28>
    800094a4:	ffffe097          	auipc	ra,0xffffe
    800094a8:	208080e7          	jalr	520(ra) # 800076ac <_Z11printStringPKc>
        printInt(i);
    800094ac:	00000613          	li	a2,0
    800094b0:	00a00593          	li	a1,10
    800094b4:	00090513          	mv	a0,s2
    800094b8:	ffffe097          	auipc	ra,0xffffe
    800094bc:	3a4080e7          	jalr	932(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800094c0:	00007517          	auipc	a0,0x7
    800094c4:	52050513          	addi	a0,a0,1312 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800094c8:	ffffe097          	auipc	ra,0xffffe
    800094cc:	1e4080e7          	jalr	484(ra) # 800076ac <_Z11printStringPKc>
        if(i==5){
    800094d0:	00500793          	li	a5,5
    800094d4:	02f90063          	beq	s2,a5,800094f4 <_ZN3C133runEv+0xac>
            printString("C: Pinging A...\n");
            toPing->pingThread();
        }
        thread_dispatch();
    800094d8:	ffff8097          	auipc	ra,0xffff8
    800094dc:	e80080e7          	jalr	-384(ra) # 80001358 <_Z15thread_dispatchv>
    for(int i=0;i<10;i++){
    800094e0:	0019091b          	addiw	s2,s2,1
    800094e4:	00900793          	li	a5,9
    800094e8:	0327c663          	blt	a5,s2,80009514 <_ZN3C133runEv+0xcc>
        for(uint64 j=0;j<30000;j++){
    800094ec:	00000493          	li	s1,0
    800094f0:	f8dff06f          	j	8000947c <_ZN3C133runEv+0x34>
            printString("C: Pinging A...\n");
    800094f4:	00008517          	auipc	a0,0x8
    800094f8:	8bc50513          	addi	a0,a0,-1860 # 80010db0 <CONSOLE_STATUS+0xda0>
    800094fc:	ffffe097          	auipc	ra,0xffffe
    80009500:	1b0080e7          	jalr	432(ra) # 800076ac <_Z11printStringPKc>
            toPing->pingThread();
    80009504:	0209b503          	ld	a0,32(s3)
    80009508:	ffffb097          	auipc	ra,0xffffb
    8000950c:	d2c080e7          	jalr	-724(ra) # 80004234 <_ZN6Thread10pingThreadEv>
    80009510:	fc9ff06f          	j	800094d8 <_ZN3C133runEv+0x90>
    }
}
    80009514:	02813083          	ld	ra,40(sp)
    80009518:	02013403          	ld	s0,32(sp)
    8000951c:	01813483          	ld	s1,24(sp)
    80009520:	01013903          	ld	s2,16(sp)
    80009524:	00813983          	ld	s3,8(sp)
    80009528:	03010113          	addi	sp,sp,48
    8000952c:	00008067          	ret

0000000080009530 <_ZN2A43runEv>:
void A4::run(){
    80009530:	fc010113          	addi	sp,sp,-64
    80009534:	02113c23          	sd	ra,56(sp)
    80009538:	02813823          	sd	s0,48(sp)
    8000953c:	02913423          	sd	s1,40(sp)
    80009540:	03213023          	sd	s2,32(sp)
    80009544:	01313c23          	sd	s3,24(sp)
    80009548:	01413823          	sd	s4,16(sp)
    8000954c:	01513423          	sd	s5,8(sp)
    80009550:	04010413          	addi	s0,sp,64
    B4* b1 = new B4();
    80009554:	02800513          	li	a0,40
    80009558:	ffffa097          	auipc	ra,0xffffa
    8000955c:	524080e7          	jalr	1316(ra) # 80003a7c <_Znwm>
    80009560:	00050a93          	mv	s5,a0
    B4():Thread(),id(IDdd++){
    80009564:	ffffb097          	auipc	ra,0xffffb
    80009568:	8fc080e7          	jalr	-1796(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000956c:	0000c797          	auipc	a5,0xc
    80009570:	1e478793          	addi	a5,a5,484 # 80015750 <_ZTV2B4+0x10>
    80009574:	00fab023          	sd	a5,0(s5)
    80009578:	0000c717          	auipc	a4,0xc
    8000957c:	08470713          	addi	a4,a4,132 # 800155fc <IDdd>
    80009580:	00072783          	lw	a5,0(a4)
    80009584:	0017869b          	addiw	a3,a5,1
    80009588:	00d72023          	sw	a3,0(a4)
    8000958c:	02faa023          	sw	a5,32(s5)
        printString("Nit B kreirana - id: ");
    80009590:	00008517          	auipc	a0,0x8
    80009594:	83850513          	addi	a0,a0,-1992 # 80010dc8 <CONSOLE_STATUS+0xdb8>
    80009598:	ffffe097          	auipc	ra,0xffffe
    8000959c:	114080e7          	jalr	276(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    800095a0:	00000613          	li	a2,0
    800095a4:	00a00593          	li	a1,10
    800095a8:	020aa503          	lw	a0,32(s5)
    800095ac:	ffffe097          	auipc	ra,0xffffe
    800095b0:	2b0080e7          	jalr	688(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800095b4:	00007517          	auipc	a0,0x7
    800095b8:	42c50513          	addi	a0,a0,1068 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800095bc:	ffffe097          	auipc	ra,0xffffe
    800095c0:	0f0080e7          	jalr	240(ra) # 800076ac <_Z11printStringPKc>
    800095c4:	02c0006f          	j	800095f0 <_ZN2A43runEv+0xc0>
    800095c8:	00050493          	mv	s1,a0
    B4():Thread(),id(IDdd++){
    800095cc:	000a8513          	mv	a0,s5
    800095d0:	ffffa097          	auipc	ra,0xffffa
    800095d4:	60c080e7          	jalr	1548(ra) # 80003bdc <_ZN6ThreadD1Ev>
    B4* b1 = new B4();
    800095d8:	000a8513          	mv	a0,s5
    800095dc:	ffffa097          	auipc	ra,0xffffa
    800095e0:	4f0080e7          	jalr	1264(ra) # 80003acc <_ZdlPv>
    800095e4:	00048513          	mv	a0,s1
    800095e8:	0000d097          	auipc	ra,0xd
    800095ec:	7e0080e7          	jalr	2016(ra) # 80016dc8 <_Unwind_Resume>
    B4* b2 = new B4();
    800095f0:	02800513          	li	a0,40
    800095f4:	ffffa097          	auipc	ra,0xffffa
    800095f8:	488080e7          	jalr	1160(ra) # 80003a7c <_Znwm>
    800095fc:	00050a13          	mv	s4,a0
    B4():Thread(),id(IDdd++){
    80009600:	ffffb097          	auipc	ra,0xffffb
    80009604:	860080e7          	jalr	-1952(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80009608:	0000c797          	auipc	a5,0xc
    8000960c:	14878793          	addi	a5,a5,328 # 80015750 <_ZTV2B4+0x10>
    80009610:	00fa3023          	sd	a5,0(s4)
    80009614:	0000c717          	auipc	a4,0xc
    80009618:	fe870713          	addi	a4,a4,-24 # 800155fc <IDdd>
    8000961c:	00072783          	lw	a5,0(a4)
    80009620:	0017869b          	addiw	a3,a5,1
    80009624:	00d72023          	sw	a3,0(a4)
    80009628:	02fa2023          	sw	a5,32(s4)
        printString("Nit B kreirana - id: ");
    8000962c:	00007517          	auipc	a0,0x7
    80009630:	79c50513          	addi	a0,a0,1948 # 80010dc8 <CONSOLE_STATUS+0xdb8>
    80009634:	ffffe097          	auipc	ra,0xffffe
    80009638:	078080e7          	jalr	120(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000963c:	00000613          	li	a2,0
    80009640:	00a00593          	li	a1,10
    80009644:	020a2503          	lw	a0,32(s4)
    80009648:	ffffe097          	auipc	ra,0xffffe
    8000964c:	214080e7          	jalr	532(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80009650:	00007517          	auipc	a0,0x7
    80009654:	39050513          	addi	a0,a0,912 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80009658:	ffffe097          	auipc	ra,0xffffe
    8000965c:	054080e7          	jalr	84(ra) # 800076ac <_Z11printStringPKc>
    80009660:	02c0006f          	j	8000968c <_ZN2A43runEv+0x15c>
    80009664:	00050493          	mv	s1,a0
    B4():Thread(),id(IDdd++){
    80009668:	000a0513          	mv	a0,s4
    8000966c:	ffffa097          	auipc	ra,0xffffa
    80009670:	570080e7          	jalr	1392(ra) # 80003bdc <_ZN6ThreadD1Ev>
    B4* b2 = new B4();
    80009674:	000a0513          	mv	a0,s4
    80009678:	ffffa097          	auipc	ra,0xffffa
    8000967c:	454080e7          	jalr	1108(ra) # 80003acc <_ZdlPv>
    80009680:	00048513          	mv	a0,s1
    80009684:	0000d097          	auipc	ra,0xd
    80009688:	744080e7          	jalr	1860(ra) # 80016dc8 <_Unwind_Resume>
    B4* b3 = new B4();
    8000968c:	02800513          	li	a0,40
    80009690:	ffffa097          	auipc	ra,0xffffa
    80009694:	3ec080e7          	jalr	1004(ra) # 80003a7c <_Znwm>
    80009698:	00050993          	mv	s3,a0
    B4():Thread(),id(IDdd++){
    8000969c:	ffffa097          	auipc	ra,0xffffa
    800096a0:	7c4080e7          	jalr	1988(ra) # 80003e60 <_ZN6ThreadC1Ev>
    800096a4:	0000c797          	auipc	a5,0xc
    800096a8:	0ac78793          	addi	a5,a5,172 # 80015750 <_ZTV2B4+0x10>
    800096ac:	00f9b023          	sd	a5,0(s3)
    800096b0:	0000c717          	auipc	a4,0xc
    800096b4:	f4c70713          	addi	a4,a4,-180 # 800155fc <IDdd>
    800096b8:	00072783          	lw	a5,0(a4)
    800096bc:	0017869b          	addiw	a3,a5,1
    800096c0:	00d72023          	sw	a3,0(a4)
    800096c4:	02f9a023          	sw	a5,32(s3)
        printString("Nit B kreirana - id: ");
    800096c8:	00007517          	auipc	a0,0x7
    800096cc:	70050513          	addi	a0,a0,1792 # 80010dc8 <CONSOLE_STATUS+0xdb8>
    800096d0:	ffffe097          	auipc	ra,0xffffe
    800096d4:	fdc080e7          	jalr	-36(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    800096d8:	00000613          	li	a2,0
    800096dc:	00a00593          	li	a1,10
    800096e0:	0209a503          	lw	a0,32(s3)
    800096e4:	ffffe097          	auipc	ra,0xffffe
    800096e8:	178080e7          	jalr	376(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800096ec:	00007517          	auipc	a0,0x7
    800096f0:	2f450513          	addi	a0,a0,756 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800096f4:	ffffe097          	auipc	ra,0xffffe
    800096f8:	fb8080e7          	jalr	-72(ra) # 800076ac <_Z11printStringPKc>
    800096fc:	02c0006f          	j	80009728 <_ZN2A43runEv+0x1f8>
    80009700:	00050493          	mv	s1,a0
    B4():Thread(),id(IDdd++){
    80009704:	00098513          	mv	a0,s3
    80009708:	ffffa097          	auipc	ra,0xffffa
    8000970c:	4d4080e7          	jalr	1236(ra) # 80003bdc <_ZN6ThreadD1Ev>
    B4* b3 = new B4();
    80009710:	00098513          	mv	a0,s3
    80009714:	ffffa097          	auipc	ra,0xffffa
    80009718:	3b8080e7          	jalr	952(ra) # 80003acc <_ZdlPv>
    8000971c:	00048513          	mv	a0,s1
    80009720:	0000d097          	auipc	ra,0xd
    80009724:	6a8080e7          	jalr	1704(ra) # 80016dc8 <_Unwind_Resume>
    C4* c1 = new C4();
    80009728:	02800513          	li	a0,40
    8000972c:	ffffa097          	auipc	ra,0xffffa
    80009730:	350080e7          	jalr	848(ra) # 80003a7c <_Znwm>
    80009734:	00050913          	mv	s2,a0
    C4():Thread(),id(IDdd++){
    80009738:	ffffa097          	auipc	ra,0xffffa
    8000973c:	728080e7          	jalr	1832(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80009740:	0000c797          	auipc	a5,0xc
    80009744:	03878793          	addi	a5,a5,56 # 80015778 <_ZTV2C4+0x10>
    80009748:	00f93023          	sd	a5,0(s2)
    8000974c:	0000c717          	auipc	a4,0xc
    80009750:	eb070713          	addi	a4,a4,-336 # 800155fc <IDdd>
    80009754:	00072783          	lw	a5,0(a4)
    80009758:	0017869b          	addiw	a3,a5,1
    8000975c:	00d72023          	sw	a3,0(a4)
    80009760:	02f92023          	sw	a5,32(s2)
        printString("Nit C kreirana - id: ");
    80009764:	00007517          	auipc	a0,0x7
    80009768:	67c50513          	addi	a0,a0,1660 # 80010de0 <CONSOLE_STATUS+0xdd0>
    8000976c:	ffffe097          	auipc	ra,0xffffe
    80009770:	f40080e7          	jalr	-192(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80009774:	00000613          	li	a2,0
    80009778:	00a00593          	li	a1,10
    8000977c:	02092503          	lw	a0,32(s2)
    80009780:	ffffe097          	auipc	ra,0xffffe
    80009784:	0dc080e7          	jalr	220(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80009788:	00007517          	auipc	a0,0x7
    8000978c:	25850513          	addi	a0,a0,600 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80009790:	ffffe097          	auipc	ra,0xffffe
    80009794:	f1c080e7          	jalr	-228(ra) # 800076ac <_Z11printStringPKc>
    80009798:	02c0006f          	j	800097c4 <_ZN2A43runEv+0x294>
    8000979c:	00050493          	mv	s1,a0
    C4():Thread(),id(IDdd++){
    800097a0:	00090513          	mv	a0,s2
    800097a4:	ffffa097          	auipc	ra,0xffffa
    800097a8:	438080e7          	jalr	1080(ra) # 80003bdc <_ZN6ThreadD1Ev>
    C4* c1 = new C4();
    800097ac:	00090513          	mv	a0,s2
    800097b0:	ffffa097          	auipc	ra,0xffffa
    800097b4:	31c080e7          	jalr	796(ra) # 80003acc <_ZdlPv>
    800097b8:	00048513          	mv	a0,s1
    800097bc:	0000d097          	auipc	ra,0xd
    800097c0:	60c080e7          	jalr	1548(ra) # 80016dc8 <_Unwind_Resume>
    b1->start();
    800097c4:	000a8513          	mv	a0,s5
    800097c8:	ffffa097          	auipc	ra,0xffffa
    800097cc:	650080e7          	jalr	1616(ra) # 80003e18 <_ZN6Thread5startEv>
    b2->start();
    800097d0:	000a0513          	mv	a0,s4
    800097d4:	ffffa097          	auipc	ra,0xffffa
    800097d8:	644080e7          	jalr	1604(ra) # 80003e18 <_ZN6Thread5startEv>
    b3->start();
    800097dc:	00098513          	mv	a0,s3
    800097e0:	ffffa097          	auipc	ra,0xffffa
    800097e4:	638080e7          	jalr	1592(ra) # 80003e18 <_ZN6Thread5startEv>
    c1->start();
    800097e8:	00090513          	mv	a0,s2
    800097ec:	ffffa097          	auipc	ra,0xffffa
    800097f0:	62c080e7          	jalr	1580(ra) # 80003e18 <_ZN6Thread5startEv>
    printString("A obrada...\n ");
    800097f4:	00007517          	auipc	a0,0x7
    800097f8:	60450513          	addi	a0,a0,1540 # 80010df8 <CONSOLE_STATUS+0xde8>
    800097fc:	ffffe097          	auipc	ra,0xffffe
    80009800:	eb0080e7          	jalr	-336(ra) # 800076ac <_Z11printStringPKc>
    for(int i=0;i<1000;i++){
    80009804:	00000493          	li	s1,0
    80009808:	0100006f          	j	80009818 <_ZN2A43runEv+0x2e8>
        thread_dispatch();
    8000980c:	ffff8097          	auipc	ra,0xffff8
    80009810:	b4c080e7          	jalr	-1204(ra) # 80001358 <_Z15thread_dispatchv>
    for(int i=0;i<1000;i++){
    80009814:	0014849b          	addiw	s1,s1,1
    80009818:	3e700793          	li	a5,999
    8000981c:	0097ce63          	blt	a5,s1,80009838 <_ZN2A43runEv+0x308>
        for(int j=0;j<10000;j++){
    80009820:	00000713          	li	a4,0
    80009824:	000027b7          	lui	a5,0x2
    80009828:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000982c:	fee7c0e3          	blt	a5,a4,8000980c <_ZN2A43runEv+0x2dc>
    80009830:	0017071b          	addiw	a4,a4,1
    80009834:	ff1ff06f          	j	80009824 <_ZN2A43runEv+0x2f4>
    joinALL();
    80009838:	ffffa097          	auipc	ra,0xffffa
    8000983c:	7d4080e7          	jalr	2004(ra) # 8000400c <_ZN6Thread7joinALLEv>
    printString("A zavrsila\n");
    80009840:	00007517          	auipc	a0,0x7
    80009844:	5c850513          	addi	a0,a0,1480 # 80010e08 <CONSOLE_STATUS+0xdf8>
    80009848:	ffffe097          	auipc	ra,0xffffe
    8000984c:	e64080e7          	jalr	-412(ra) # 800076ac <_Z11printStringPKc>
}
    80009850:	03813083          	ld	ra,56(sp)
    80009854:	03013403          	ld	s0,48(sp)
    80009858:	02813483          	ld	s1,40(sp)
    8000985c:	02013903          	ld	s2,32(sp)
    80009860:	01813983          	ld	s3,24(sp)
    80009864:	01013a03          	ld	s4,16(sp)
    80009868:	00813a83          	ld	s5,8(sp)
    8000986c:	04010113          	addi	sp,sp,64
    80009870:	00008067          	ret
    80009874:	00050493          	mv	s1,a0
    80009878:	d61ff06f          	j	800095d8 <_ZN2A43runEv+0xa8>
    8000987c:	00050493          	mv	s1,a0
    80009880:	df5ff06f          	j	80009674 <_ZN2A43runEv+0x144>
    80009884:	00050493          	mv	s1,a0
    80009888:	e89ff06f          	j	80009710 <_ZN2A43runEv+0x1e0>
    8000988c:	00050493          	mv	s1,a0
    80009890:	f1dff06f          	j	800097ac <_ZN2A43runEv+0x27c>

0000000080009894 <_ZN2B43runEv>:
void B4::run(){
    80009894:	fd010113          	addi	sp,sp,-48
    80009898:	02113423          	sd	ra,40(sp)
    8000989c:	02813023          	sd	s0,32(sp)
    800098a0:	00913c23          	sd	s1,24(sp)
    800098a4:	01213823          	sd	s2,16(sp)
    800098a8:	01313423          	sd	s3,8(sp)
    800098ac:	01413023          	sd	s4,0(sp)
    800098b0:	03010413          	addi	s0,sp,48
    C4* c1 = new C4();
    800098b4:	02800513          	li	a0,40
    800098b8:	ffffa097          	auipc	ra,0xffffa
    800098bc:	1c4080e7          	jalr	452(ra) # 80003a7c <_Znwm>
    800098c0:	00050a13          	mv	s4,a0
    C4():Thread(),id(IDdd++){
    800098c4:	ffffa097          	auipc	ra,0xffffa
    800098c8:	59c080e7          	jalr	1436(ra) # 80003e60 <_ZN6ThreadC1Ev>
    800098cc:	0000c797          	auipc	a5,0xc
    800098d0:	eac78793          	addi	a5,a5,-340 # 80015778 <_ZTV2C4+0x10>
    800098d4:	00fa3023          	sd	a5,0(s4)
    800098d8:	0000c717          	auipc	a4,0xc
    800098dc:	d2470713          	addi	a4,a4,-732 # 800155fc <IDdd>
    800098e0:	00072783          	lw	a5,0(a4)
    800098e4:	0017869b          	addiw	a3,a5,1
    800098e8:	00d72023          	sw	a3,0(a4)
    800098ec:	02fa2023          	sw	a5,32(s4)
        printString("Nit C kreirana - id: ");
    800098f0:	00007517          	auipc	a0,0x7
    800098f4:	4f050513          	addi	a0,a0,1264 # 80010de0 <CONSOLE_STATUS+0xdd0>
    800098f8:	ffffe097          	auipc	ra,0xffffe
    800098fc:	db4080e7          	jalr	-588(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80009900:	00000613          	li	a2,0
    80009904:	00a00593          	li	a1,10
    80009908:	020a2503          	lw	a0,32(s4)
    8000990c:	ffffe097          	auipc	ra,0xffffe
    80009910:	f50080e7          	jalr	-176(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80009914:	00007517          	auipc	a0,0x7
    80009918:	0cc50513          	addi	a0,a0,204 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000991c:	ffffe097          	auipc	ra,0xffffe
    80009920:	d90080e7          	jalr	-624(ra) # 800076ac <_Z11printStringPKc>
    80009924:	02c0006f          	j	80009950 <_ZN2B43runEv+0xbc>
    80009928:	00050493          	mv	s1,a0
    C4():Thread(),id(IDdd++){
    8000992c:	000a0513          	mv	a0,s4
    80009930:	ffffa097          	auipc	ra,0xffffa
    80009934:	2ac080e7          	jalr	684(ra) # 80003bdc <_ZN6ThreadD1Ev>
    C4* c1 = new C4();
    80009938:	000a0513          	mv	a0,s4
    8000993c:	ffffa097          	auipc	ra,0xffffa
    80009940:	190080e7          	jalr	400(ra) # 80003acc <_ZdlPv>
    80009944:	00048513          	mv	a0,s1
    80009948:	0000d097          	auipc	ra,0xd
    8000994c:	480080e7          	jalr	1152(ra) # 80016dc8 <_Unwind_Resume>
    C4* c2 = new C4();
    80009950:	02800513          	li	a0,40
    80009954:	ffffa097          	auipc	ra,0xffffa
    80009958:	128080e7          	jalr	296(ra) # 80003a7c <_Znwm>
    8000995c:	00050993          	mv	s3,a0
    C4():Thread(),id(IDdd++){
    80009960:	ffffa097          	auipc	ra,0xffffa
    80009964:	500080e7          	jalr	1280(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80009968:	0000c797          	auipc	a5,0xc
    8000996c:	e1078793          	addi	a5,a5,-496 # 80015778 <_ZTV2C4+0x10>
    80009970:	00f9b023          	sd	a5,0(s3)
    80009974:	0000c717          	auipc	a4,0xc
    80009978:	c8870713          	addi	a4,a4,-888 # 800155fc <IDdd>
    8000997c:	00072783          	lw	a5,0(a4)
    80009980:	0017869b          	addiw	a3,a5,1
    80009984:	00d72023          	sw	a3,0(a4)
    80009988:	02f9a023          	sw	a5,32(s3)
        printString("Nit C kreirana - id: ");
    8000998c:	00007517          	auipc	a0,0x7
    80009990:	45450513          	addi	a0,a0,1108 # 80010de0 <CONSOLE_STATUS+0xdd0>
    80009994:	ffffe097          	auipc	ra,0xffffe
    80009998:	d18080e7          	jalr	-744(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000999c:	00000613          	li	a2,0
    800099a0:	00a00593          	li	a1,10
    800099a4:	0209a503          	lw	a0,32(s3)
    800099a8:	ffffe097          	auipc	ra,0xffffe
    800099ac:	eb4080e7          	jalr	-332(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    800099b0:	00007517          	auipc	a0,0x7
    800099b4:	03050513          	addi	a0,a0,48 # 800109e0 <CONSOLE_STATUS+0x9d0>
    800099b8:	ffffe097          	auipc	ra,0xffffe
    800099bc:	cf4080e7          	jalr	-780(ra) # 800076ac <_Z11printStringPKc>
    800099c0:	02c0006f          	j	800099ec <_ZN2B43runEv+0x158>
    800099c4:	00050493          	mv	s1,a0
    C4():Thread(),id(IDdd++){
    800099c8:	00098513          	mv	a0,s3
    800099cc:	ffffa097          	auipc	ra,0xffffa
    800099d0:	210080e7          	jalr	528(ra) # 80003bdc <_ZN6ThreadD1Ev>
    C4* c2 = new C4();
    800099d4:	00098513          	mv	a0,s3
    800099d8:	ffffa097          	auipc	ra,0xffffa
    800099dc:	0f4080e7          	jalr	244(ra) # 80003acc <_ZdlPv>
    800099e0:	00048513          	mv	a0,s1
    800099e4:	0000d097          	auipc	ra,0xd
    800099e8:	3e4080e7          	jalr	996(ra) # 80016dc8 <_Unwind_Resume>
    C4* c3 = new C4();
    800099ec:	02800513          	li	a0,40
    800099f0:	ffffa097          	auipc	ra,0xffffa
    800099f4:	08c080e7          	jalr	140(ra) # 80003a7c <_Znwm>
    800099f8:	00050913          	mv	s2,a0
    C4():Thread(),id(IDdd++){
    800099fc:	ffffa097          	auipc	ra,0xffffa
    80009a00:	464080e7          	jalr	1124(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80009a04:	0000c797          	auipc	a5,0xc
    80009a08:	d7478793          	addi	a5,a5,-652 # 80015778 <_ZTV2C4+0x10>
    80009a0c:	00f93023          	sd	a5,0(s2)
    80009a10:	0000c717          	auipc	a4,0xc
    80009a14:	bec70713          	addi	a4,a4,-1044 # 800155fc <IDdd>
    80009a18:	00072783          	lw	a5,0(a4)
    80009a1c:	0017869b          	addiw	a3,a5,1
    80009a20:	00d72023          	sw	a3,0(a4)
    80009a24:	02f92023          	sw	a5,32(s2)
        printString("Nit C kreirana - id: ");
    80009a28:	00007517          	auipc	a0,0x7
    80009a2c:	3b850513          	addi	a0,a0,952 # 80010de0 <CONSOLE_STATUS+0xdd0>
    80009a30:	ffffe097          	auipc	ra,0xffffe
    80009a34:	c7c080e7          	jalr	-900(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80009a38:	00000613          	li	a2,0
    80009a3c:	00a00593          	li	a1,10
    80009a40:	02092503          	lw	a0,32(s2)
    80009a44:	ffffe097          	auipc	ra,0xffffe
    80009a48:	e18080e7          	jalr	-488(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80009a4c:	00007517          	auipc	a0,0x7
    80009a50:	f9450513          	addi	a0,a0,-108 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80009a54:	ffffe097          	auipc	ra,0xffffe
    80009a58:	c58080e7          	jalr	-936(ra) # 800076ac <_Z11printStringPKc>
    80009a5c:	02c0006f          	j	80009a88 <_ZN2B43runEv+0x1f4>
    80009a60:	00050493          	mv	s1,a0
    C4():Thread(),id(IDdd++){
    80009a64:	00090513          	mv	a0,s2
    80009a68:	ffffa097          	auipc	ra,0xffffa
    80009a6c:	174080e7          	jalr	372(ra) # 80003bdc <_ZN6ThreadD1Ev>
    C4* c3 = new C4();
    80009a70:	00090513          	mv	a0,s2
    80009a74:	ffffa097          	auipc	ra,0xffffa
    80009a78:	058080e7          	jalr	88(ra) # 80003acc <_ZdlPv>
    80009a7c:	00048513          	mv	a0,s1
    80009a80:	0000d097          	auipc	ra,0xd
    80009a84:	348080e7          	jalr	840(ra) # 80016dc8 <_Unwind_Resume>
    c1->start();
    80009a88:	000a0513          	mv	a0,s4
    80009a8c:	ffffa097          	auipc	ra,0xffffa
    80009a90:	38c080e7          	jalr	908(ra) # 80003e18 <_ZN6Thread5startEv>
    c2->start();
    80009a94:	00098513          	mv	a0,s3
    80009a98:	ffffa097          	auipc	ra,0xffffa
    80009a9c:	380080e7          	jalr	896(ra) # 80003e18 <_ZN6Thread5startEv>
    c3->start();
    80009aa0:	00090513          	mv	a0,s2
    80009aa4:	ffffa097          	auipc	ra,0xffffa
    80009aa8:	374080e7          	jalr	884(ra) # 80003e18 <_ZN6Thread5startEv>
    printString("B obrada...\n");
    80009aac:	00007517          	auipc	a0,0x7
    80009ab0:	36c50513          	addi	a0,a0,876 # 80010e18 <CONSOLE_STATUS+0xe08>
    80009ab4:	ffffe097          	auipc	ra,0xffffe
    80009ab8:	bf8080e7          	jalr	-1032(ra) # 800076ac <_Z11printStringPKc>
    for(int i=0;i<1000;i++){
    80009abc:	00000493          	li	s1,0
    80009ac0:	0100006f          	j	80009ad0 <_ZN2B43runEv+0x23c>
        thread_dispatch();
    80009ac4:	ffff8097          	auipc	ra,0xffff8
    80009ac8:	894080e7          	jalr	-1900(ra) # 80001358 <_Z15thread_dispatchv>
    for(int i=0;i<1000;i++){
    80009acc:	0014849b          	addiw	s1,s1,1
    80009ad0:	3e700793          	li	a5,999
    80009ad4:	0097ce63          	blt	a5,s1,80009af0 <_ZN2B43runEv+0x25c>
        for(int j=0;j<10000;j++){
    80009ad8:	00000713          	li	a4,0
    80009adc:	000027b7          	lui	a5,0x2
    80009ae0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80009ae4:	fee7c0e3          	blt	a5,a4,80009ac4 <_ZN2B43runEv+0x230>
    80009ae8:	0017071b          	addiw	a4,a4,1
    80009aec:	ff1ff06f          	j	80009adc <_ZN2B43runEv+0x248>
    joinALL();
    80009af0:	ffffa097          	auipc	ra,0xffffa
    80009af4:	51c080e7          	jalr	1308(ra) # 8000400c <_ZN6Thread7joinALLEv>
    printString("B zavrsila \n");
    80009af8:	00007517          	auipc	a0,0x7
    80009afc:	33050513          	addi	a0,a0,816 # 80010e28 <CONSOLE_STATUS+0xe18>
    80009b00:	ffffe097          	auipc	ra,0xffffe
    80009b04:	bac080e7          	jalr	-1108(ra) # 800076ac <_Z11printStringPKc>
}
    80009b08:	02813083          	ld	ra,40(sp)
    80009b0c:	02013403          	ld	s0,32(sp)
    80009b10:	01813483          	ld	s1,24(sp)
    80009b14:	01013903          	ld	s2,16(sp)
    80009b18:	00813983          	ld	s3,8(sp)
    80009b1c:	00013a03          	ld	s4,0(sp)
    80009b20:	03010113          	addi	sp,sp,48
    80009b24:	00008067          	ret
    80009b28:	00050493          	mv	s1,a0
    80009b2c:	e0dff06f          	j	80009938 <_ZN2B43runEv+0xa4>
    80009b30:	00050493          	mv	s1,a0
    80009b34:	ea1ff06f          	j	800099d4 <_ZN2B43runEv+0x140>
    80009b38:	00050493          	mv	s1,a0
    80009b3c:	f35ff06f          	j	80009a70 <_ZN2B43runEv+0x1dc>

0000000080009b40 <_Z5test8v>:
void test8(){
    80009b40:	f6010113          	addi	sp,sp,-160
    80009b44:	08113c23          	sd	ra,152(sp)
    80009b48:	08813823          	sd	s0,144(sp)
    80009b4c:	08913423          	sd	s1,136(sp)
    80009b50:	09213023          	sd	s2,128(sp)
    80009b54:	07313c23          	sd	s3,120(sp)
    80009b58:	0a010413          	addi	s0,sp,160
    for(int i=0;i<X;i++){
    80009b5c:	00000493          	li	s1,0
    80009b60:	0a00006f          	j	80009c00 <_Z5test8v+0xc0>
    A1(int t):Thread(),id(ID++),type(t){
    80009b64:	0000c797          	auipc	a5,0xc
    80009b68:	ad478793          	addi	a5,a5,-1324 # 80015638 <_ZTV2A1+0x10>
    80009b6c:	00f93023          	sd	a5,0(s2)
    80009b70:	0000c717          	auipc	a4,0xc
    80009b74:	a8c70713          	addi	a4,a4,-1396 # 800155fc <IDdd>
    80009b78:	00472783          	lw	a5,4(a4)
    80009b7c:	0017869b          	addiw	a3,a5,1
    80009b80:	00d72223          	sw	a3,4(a4)
    80009b84:	02f92023          	sw	a5,32(s2)
    80009b88:	02092223          	sw	zero,36(s2)
        printString("Nit kreirana - id: ");
    80009b8c:	00007517          	auipc	a0,0x7
    80009b90:	2ac50513          	addi	a0,a0,684 # 80010e38 <CONSOLE_STATUS+0xe28>
    80009b94:	ffffe097          	auipc	ra,0xffffe
    80009b98:	b18080e7          	jalr	-1256(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80009b9c:	00000613          	li	a2,0
    80009ba0:	00a00593          	li	a1,10
    80009ba4:	02092503          	lw	a0,32(s2)
    80009ba8:	ffffe097          	auipc	ra,0xffffe
    80009bac:	cb4080e7          	jalr	-844(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80009bb0:	00007517          	auipc	a0,0x7
    80009bb4:	e3050513          	addi	a0,a0,-464 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80009bb8:	ffffe097          	auipc	ra,0xffffe
    80009bbc:	af4080e7          	jalr	-1292(ra) # 800076ac <_Z11printStringPKc>
    80009bc0:	02c0006f          	j	80009bec <_Z5test8v+0xac>
    80009bc4:	00050493          	mv	s1,a0
    A1(int t):Thread(),id(ID++),type(t){
    80009bc8:	00098513          	mv	a0,s3
    80009bcc:	ffffa097          	auipc	ra,0xffffa
    80009bd0:	010080e7          	jalr	16(ra) # 80003bdc <_ZN6ThreadD1Ev>
            niz[i]=new A1(0);
    80009bd4:	00090513          	mv	a0,s2
    80009bd8:	ffffa097          	auipc	ra,0xffffa
    80009bdc:	ef4080e7          	jalr	-268(ra) # 80003acc <_ZdlPv>
    80009be0:	00048513          	mv	a0,s1
    80009be4:	0000d097          	auipc	ra,0xd
    80009be8:	1e4080e7          	jalr	484(ra) # 80016dc8 <_Unwind_Resume>
    80009bec:	00349793          	slli	a5,s1,0x3
    80009bf0:	fd040713          	addi	a4,s0,-48
    80009bf4:	00f707b3          	add	a5,a4,a5
    80009bf8:	f927bc23          	sd	s2,-104(a5)
    for(int i=0;i<X;i++){
    80009bfc:	0014849b          	addiw	s1,s1,1
    80009c00:	00c00793          	li	a5,12
    80009c04:	0e97c663          	blt	a5,s1,80009cf0 <_Z5test8v+0x1b0>
        if(i%3==0){
    80009c08:	00300793          	li	a5,3
    80009c0c:	02f4e7bb          	remw	a5,s1,a5
    80009c10:	02079263          	bnez	a5,80009c34 <_Z5test8v+0xf4>
            niz[i]=new A1(0);
    80009c14:	02800513          	li	a0,40
    80009c18:	ffffa097          	auipc	ra,0xffffa
    80009c1c:	e64080e7          	jalr	-412(ra) # 80003a7c <_Znwm>
    80009c20:	00050913          	mv	s2,a0
    A1(int t):Thread(),id(ID++),type(t){
    80009c24:	00050993          	mv	s3,a0
    80009c28:	ffffa097          	auipc	ra,0xffffa
    80009c2c:	238080e7          	jalr	568(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80009c30:	f35ff06f          	j	80009b64 <_Z5test8v+0x24>
            niz[i]=new A1(1);
    80009c34:	02800513          	li	a0,40
    80009c38:	ffffa097          	auipc	ra,0xffffa
    80009c3c:	e44080e7          	jalr	-444(ra) # 80003a7c <_Znwm>
    80009c40:	00050913          	mv	s2,a0
    A1(int t):Thread(),id(ID++),type(t){
    80009c44:	00050993          	mv	s3,a0
    80009c48:	ffffa097          	auipc	ra,0xffffa
    80009c4c:	218080e7          	jalr	536(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80009c50:	0000c797          	auipc	a5,0xc
    80009c54:	9e878793          	addi	a5,a5,-1560 # 80015638 <_ZTV2A1+0x10>
    80009c58:	00f93023          	sd	a5,0(s2)
    80009c5c:	0000c717          	auipc	a4,0xc
    80009c60:	9a070713          	addi	a4,a4,-1632 # 800155fc <IDdd>
    80009c64:	00472783          	lw	a5,4(a4)
    80009c68:	0017869b          	addiw	a3,a5,1
    80009c6c:	00d72223          	sw	a3,4(a4)
    80009c70:	02f92023          	sw	a5,32(s2)
    80009c74:	00100793          	li	a5,1
    80009c78:	02f92223          	sw	a5,36(s2)
        printString("Nit kreirana - id: ");
    80009c7c:	00007517          	auipc	a0,0x7
    80009c80:	1bc50513          	addi	a0,a0,444 # 80010e38 <CONSOLE_STATUS+0xe28>
    80009c84:	ffffe097          	auipc	ra,0xffffe
    80009c88:	a28080e7          	jalr	-1496(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80009c8c:	00000613          	li	a2,0
    80009c90:	00a00593          	li	a1,10
    80009c94:	02092503          	lw	a0,32(s2)
    80009c98:	ffffe097          	auipc	ra,0xffffe
    80009c9c:	bc4080e7          	jalr	-1084(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    80009ca0:	00007517          	auipc	a0,0x7
    80009ca4:	d4050513          	addi	a0,a0,-704 # 800109e0 <CONSOLE_STATUS+0x9d0>
    80009ca8:	ffffe097          	auipc	ra,0xffffe
    80009cac:	a04080e7          	jalr	-1532(ra) # 800076ac <_Z11printStringPKc>
    80009cb0:	02c0006f          	j	80009cdc <_Z5test8v+0x19c>
    80009cb4:	00050493          	mv	s1,a0
    A1(int t):Thread(),id(ID++),type(t){
    80009cb8:	00098513          	mv	a0,s3
    80009cbc:	ffffa097          	auipc	ra,0xffffa
    80009cc0:	f20080e7          	jalr	-224(ra) # 80003bdc <_ZN6ThreadD1Ev>
            niz[i]=new A1(1);
    80009cc4:	00090513          	mv	a0,s2
    80009cc8:	ffffa097          	auipc	ra,0xffffa
    80009ccc:	e04080e7          	jalr	-508(ra) # 80003acc <_ZdlPv>
    80009cd0:	00048513          	mv	a0,s1
    80009cd4:	0000d097          	auipc	ra,0xd
    80009cd8:	0f4080e7          	jalr	244(ra) # 80016dc8 <_Unwind_Resume>
    80009cdc:	00349793          	slli	a5,s1,0x3
    80009ce0:	fd040713          	addi	a4,s0,-48
    80009ce4:	00f707b3          	add	a5,a4,a5
    80009ce8:	f927bc23          	sd	s2,-104(a5)
    80009cec:	f11ff06f          	j	80009bfc <_Z5test8v+0xbc>
    for(auto nit:niz){
    80009cf0:	fd040913          	addi	s2,s0,-48
    80009cf4:	f6840493          	addi	s1,s0,-152
    80009cf8:	01248c63          	beq	s1,s2,80009d10 <_Z5test8v+0x1d0>
        nit->start();
    80009cfc:	0004b503          	ld	a0,0(s1)
    80009d00:	ffffa097          	auipc	ra,0xffffa
    80009d04:	118080e7          	jalr	280(ra) # 80003e18 <_ZN6Thread5startEv>
    for(auto nit:niz){
    80009d08:	00848493          	addi	s1,s1,8
    80009d0c:	fedff06f          	j	80009cf8 <_Z5test8v+0x1b8>
    for(auto nit:niz){
    80009d10:	f6840493          	addi	s1,s0,-152
    80009d14:	01248c63          	beq	s1,s2,80009d2c <_Z5test8v+0x1ec>
        nit->join();
    80009d18:	0004b503          	ld	a0,0(s1)
    80009d1c:	ffffa097          	auipc	ra,0xffffa
    80009d20:	1f0080e7          	jalr	496(ra) # 80003f0c <_ZN6Thread4joinEv>
    for(auto nit:niz){
    80009d24:	00848493          	addi	s1,s1,8
    80009d28:	fedff06f          	j	80009d14 <_Z5test8v+0x1d4>
    for(auto nit:niz){
    80009d2c:	f6840493          	addi	s1,s0,-152
    80009d30:	0080006f          	j	80009d38 <_Z5test8v+0x1f8>
    80009d34:	00848493          	addi	s1,s1,8
    80009d38:	01248e63          	beq	s1,s2,80009d54 <_Z5test8v+0x214>
    80009d3c:	0004b503          	ld	a0,0(s1)
        delete nit;
    80009d40:	fe050ae3          	beqz	a0,80009d34 <_Z5test8v+0x1f4>
    80009d44:	00053783          	ld	a5,0(a0)
    80009d48:	0087b783          	ld	a5,8(a5)
    80009d4c:	000780e7          	jalr	a5
    80009d50:	fe5ff06f          	j	80009d34 <_Z5test8v+0x1f4>
    printString("TEST 8 - unisex WC gotov\n");
    80009d54:	00007517          	auipc	a0,0x7
    80009d58:	0fc50513          	addi	a0,a0,252 # 80010e50 <CONSOLE_STATUS+0xe40>
    80009d5c:	ffffe097          	auipc	ra,0xffffe
    80009d60:	950080e7          	jalr	-1712(ra) # 800076ac <_Z11printStringPKc>
};
    80009d64:	09813083          	ld	ra,152(sp)
    80009d68:	09013403          	ld	s0,144(sp)
    80009d6c:	08813483          	ld	s1,136(sp)
    80009d70:	08013903          	ld	s2,128(sp)
    80009d74:	07813983          	ld	s3,120(sp)
    80009d78:	0a010113          	addi	sp,sp,160
    80009d7c:	00008067          	ret
    80009d80:	00050493          	mv	s1,a0
    80009d84:	e51ff06f          	j	80009bd4 <_Z5test8v+0x94>
    80009d88:	00050493          	mv	s1,a0
    80009d8c:	f39ff06f          	j	80009cc4 <_Z5test8v+0x184>

0000000080009d90 <_Z12testBarijerav>:
void testBarijera(){
    80009d90:	fa010113          	addi	sp,sp,-96
    80009d94:	04113c23          	sd	ra,88(sp)
    80009d98:	04813823          	sd	s0,80(sp)
    80009d9c:	04913423          	sd	s1,72(sp)
    80009da0:	05213023          	sd	s2,64(sp)
    80009da4:	03313c23          	sd	s3,56(sp)
    80009da8:	06010413          	addi	s0,sp,96
    for(auto & nit:niti){
    80009dac:	fa040913          	addi	s2,s0,-96
    80009db0:	06c0006f          	j	80009e1c <_Z12testBarijerav+0x8c>
    A2():Thread(),id(IDD++){
    80009db4:	0000c797          	auipc	a5,0xc
    80009db8:	8ac78793          	addi	a5,a5,-1876 # 80015660 <_ZTV2A2+0x10>
    80009dbc:	00f4b023          	sd	a5,0(s1)
    80009dc0:	0000c717          	auipc	a4,0xc
    80009dc4:	83c70713          	addi	a4,a4,-1988 # 800155fc <IDdd>
    80009dc8:	00872783          	lw	a5,8(a4)
    80009dcc:	0017869b          	addiw	a3,a5,1
    80009dd0:	00d72423          	sw	a3,8(a4)
    80009dd4:	02f4a023          	sw	a5,32(s1)
        printString("Nit A kreirana\n");
    80009dd8:	00007517          	auipc	a0,0x7
    80009ddc:	09850513          	addi	a0,a0,152 # 80010e70 <CONSOLE_STATUS+0xe60>
    80009de0:	ffffe097          	auipc	ra,0xffffe
    80009de4:	8cc080e7          	jalr	-1844(ra) # 800076ac <_Z11printStringPKc>
    80009de8:	02c0006f          	j	80009e14 <_Z12testBarijerav+0x84>
    80009dec:	00050913          	mv	s2,a0
    A2():Thread(),id(IDD++){
    80009df0:	00098513          	mv	a0,s3
    80009df4:	ffffa097          	auipc	ra,0xffffa
    80009df8:	de8080e7          	jalr	-536(ra) # 80003bdc <_ZN6ThreadD1Ev>
        nit = new A2();
    80009dfc:	00048513          	mv	a0,s1
    80009e00:	ffffa097          	auipc	ra,0xffffa
    80009e04:	ccc080e7          	jalr	-820(ra) # 80003acc <_ZdlPv>
    80009e08:	00090513          	mv	a0,s2
    80009e0c:	0000d097          	auipc	ra,0xd
    80009e10:	fbc080e7          	jalr	-68(ra) # 80016dc8 <_Unwind_Resume>
    80009e14:	00993023          	sd	s1,0(s2)
    for(auto & nit:niti){
    80009e18:	00890913          	addi	s2,s2,8
    80009e1c:	fd040793          	addi	a5,s0,-48
    80009e20:	02f90263          	beq	s2,a5,80009e44 <_Z12testBarijerav+0xb4>
        nit = new A2();
    80009e24:	02800513          	li	a0,40
    80009e28:	ffffa097          	auipc	ra,0xffffa
    80009e2c:	c54080e7          	jalr	-940(ra) # 80003a7c <_Znwm>
    80009e30:	00050493          	mv	s1,a0
    A2():Thread(),id(IDD++){
    80009e34:	00050993          	mv	s3,a0
    80009e38:	ffffa097          	auipc	ra,0xffffa
    80009e3c:	028080e7          	jalr	40(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80009e40:	f75ff06f          	j	80009db4 <_Z12testBarijerav+0x24>
    for(auto & nit:niti){
    80009e44:	fa040493          	addi	s1,s0,-96
    80009e48:	fd040793          	addi	a5,s0,-48
    80009e4c:	00f48c63          	beq	s1,a5,80009e64 <_Z12testBarijerav+0xd4>
        nit->start();
    80009e50:	0004b503          	ld	a0,0(s1)
    80009e54:	ffffa097          	auipc	ra,0xffffa
    80009e58:	fc4080e7          	jalr	-60(ra) # 80003e18 <_ZN6Thread5startEv>
    for(auto & nit:niti){
    80009e5c:	00848493          	addi	s1,s1,8
    80009e60:	fe9ff06f          	j	80009e48 <_Z12testBarijerav+0xb8>
    for(auto & nit:niti){
    80009e64:	fa040493          	addi	s1,s0,-96
    80009e68:	fd040793          	addi	a5,s0,-48
    80009e6c:	00f48c63          	beq	s1,a5,80009e84 <_Z12testBarijerav+0xf4>
        nit->join();
    80009e70:	0004b503          	ld	a0,0(s1)
    80009e74:	ffffa097          	auipc	ra,0xffffa
    80009e78:	098080e7          	jalr	152(ra) # 80003f0c <_ZN6Thread4joinEv>
    for(auto & nit:niti){
    80009e7c:	00848493          	addi	s1,s1,8
    80009e80:	fe9ff06f          	j	80009e68 <_Z12testBarijerav+0xd8>
    for(auto & nit:niti){
    80009e84:	fa040493          	addi	s1,s0,-96
    80009e88:	0080006f          	j	80009e90 <_Z12testBarijerav+0x100>
    80009e8c:	00848493          	addi	s1,s1,8
    80009e90:	fd040793          	addi	a5,s0,-48
    80009e94:	00f48e63          	beq	s1,a5,80009eb0 <_Z12testBarijerav+0x120>
        delete nit;
    80009e98:	0004b503          	ld	a0,0(s1)
    80009e9c:	fe0508e3          	beqz	a0,80009e8c <_Z12testBarijerav+0xfc>
    80009ea0:	00053783          	ld	a5,0(a0)
    80009ea4:	0087b783          	ld	a5,8(a5)
    80009ea8:	000780e7          	jalr	a5
    80009eac:	fe1ff06f          	j	80009e8c <_Z12testBarijerav+0xfc>
    printString("TEST 8 - sinhronizacija na BARIJERI uspesno zavrsen\n");
    80009eb0:	00007517          	auipc	a0,0x7
    80009eb4:	fd050513          	addi	a0,a0,-48 # 80010e80 <CONSOLE_STATUS+0xe70>
    80009eb8:	ffffd097          	auipc	ra,0xffffd
    80009ebc:	7f4080e7          	jalr	2036(ra) # 800076ac <_Z11printStringPKc>
}
    80009ec0:	05813083          	ld	ra,88(sp)
    80009ec4:	05013403          	ld	s0,80(sp)
    80009ec8:	04813483          	ld	s1,72(sp)
    80009ecc:	04013903          	ld	s2,64(sp)
    80009ed0:	03813983          	ld	s3,56(sp)
    80009ed4:	06010113          	addi	sp,sp,96
    80009ed8:	00008067          	ret
    80009edc:	00050913          	mv	s2,a0
    80009ee0:	f1dff06f          	j	80009dfc <_Z12testBarijerav+0x6c>

0000000080009ee4 <_Z13testBarijera2v>:
void testBarijera2(){
    80009ee4:	f8010113          	addi	sp,sp,-128
    80009ee8:	06113c23          	sd	ra,120(sp)
    80009eec:	06813823          	sd	s0,112(sp)
    80009ef0:	06913423          	sd	s1,104(sp)
    80009ef4:	07213023          	sd	s2,96(sp)
    80009ef8:	05313c23          	sd	s3,88(sp)
    80009efc:	08010413          	addi	s0,sp,128
    for(auto & nit:niz){
    80009f00:	f8040913          	addi	s2,s0,-128
    80009f04:	0900006f          	j	80009f94 <_Z13testBarijera2v+0xb0>
    A6():Thread(),id(z++){
    80009f08:	0000b797          	auipc	a5,0xb
    80009f0c:	78078793          	addi	a5,a5,1920 # 80015688 <_ZTV2A6+0x10>
    80009f10:	00f4b023          	sd	a5,0(s1)
    80009f14:	0000b717          	auipc	a4,0xb
    80009f18:	6e870713          	addi	a4,a4,1768 # 800155fc <IDdd>
    80009f1c:	00c72783          	lw	a5,12(a4)
    80009f20:	0017869b          	addiw	a3,a5,1
    80009f24:	00d72623          	sw	a3,12(a4)
    80009f28:	02f4a023          	sw	a5,32(s1)
        printString("Nit id - ");
    80009f2c:	00007517          	auipc	a0,0x7
    80009f30:	bf450513          	addi	a0,a0,-1036 # 80010b20 <CONSOLE_STATUS+0xb10>
    80009f34:	ffffd097          	auipc	ra,0xffffd
    80009f38:	778080e7          	jalr	1912(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    80009f3c:	00000613          	li	a2,0
    80009f40:	00a00593          	li	a1,10
    80009f44:	0204a503          	lw	a0,32(s1)
    80009f48:	ffffe097          	auipc	ra,0xffffe
    80009f4c:	914080e7          	jalr	-1772(ra) # 8000785c <_Z8printIntiii>
        printString(" kreirana\n");
    80009f50:	00007517          	auipc	a0,0x7
    80009f54:	f6850513          	addi	a0,a0,-152 # 80010eb8 <CONSOLE_STATUS+0xea8>
    80009f58:	ffffd097          	auipc	ra,0xffffd
    80009f5c:	754080e7          	jalr	1876(ra) # 800076ac <_Z11printStringPKc>
    80009f60:	02c0006f          	j	80009f8c <_Z13testBarijera2v+0xa8>
    80009f64:	00050913          	mv	s2,a0
    A6():Thread(),id(z++){
    80009f68:	00098513          	mv	a0,s3
    80009f6c:	ffffa097          	auipc	ra,0xffffa
    80009f70:	c70080e7          	jalr	-912(ra) # 80003bdc <_ZN6ThreadD1Ev>
        nit = new A6();
    80009f74:	00048513          	mv	a0,s1
    80009f78:	ffffa097          	auipc	ra,0xffffa
    80009f7c:	b54080e7          	jalr	-1196(ra) # 80003acc <_ZdlPv>
    80009f80:	00090513          	mv	a0,s2
    80009f84:	0000d097          	auipc	ra,0xd
    80009f88:	e44080e7          	jalr	-444(ra) # 80016dc8 <_Unwind_Resume>
    80009f8c:	00993023          	sd	s1,0(s2)
    for(auto & nit:niz){
    80009f90:	00890913          	addi	s2,s2,8
    80009f94:	fd040793          	addi	a5,s0,-48
    80009f98:	02f90263          	beq	s2,a5,80009fbc <_Z13testBarijera2v+0xd8>
        nit = new A6();
    80009f9c:	02800513          	li	a0,40
    80009fa0:	ffffa097          	auipc	ra,0xffffa
    80009fa4:	adc080e7          	jalr	-1316(ra) # 80003a7c <_Znwm>
    80009fa8:	00050493          	mv	s1,a0
    A6():Thread(),id(z++){
    80009fac:	00050993          	mv	s3,a0
    80009fb0:	ffffa097          	auipc	ra,0xffffa
    80009fb4:	eb0080e7          	jalr	-336(ra) # 80003e60 <_ZN6ThreadC1Ev>
    80009fb8:	f51ff06f          	j	80009f08 <_Z13testBarijera2v+0x24>
    for(auto& nit : niz){
    80009fbc:	f8040493          	addi	s1,s0,-128
    80009fc0:	fd040793          	addi	a5,s0,-48
    80009fc4:	00f48c63          	beq	s1,a5,80009fdc <_Z13testBarijera2v+0xf8>
        nit->start();
    80009fc8:	0004b503          	ld	a0,0(s1)
    80009fcc:	ffffa097          	auipc	ra,0xffffa
    80009fd0:	e4c080e7          	jalr	-436(ra) # 80003e18 <_ZN6Thread5startEv>
    for(auto& nit : niz){
    80009fd4:	00848493          	addi	s1,s1,8
    80009fd8:	fe9ff06f          	j	80009fc0 <_Z13testBarijera2v+0xdc>
    for(auto& nit : niz){
    80009fdc:	f8040493          	addi	s1,s0,-128
    80009fe0:	fd040793          	addi	a5,s0,-48
    80009fe4:	00f48c63          	beq	s1,a5,80009ffc <_Z13testBarijera2v+0x118>
        nit->join();
    80009fe8:	0004b503          	ld	a0,0(s1)
    80009fec:	ffffa097          	auipc	ra,0xffffa
    80009ff0:	f20080e7          	jalr	-224(ra) # 80003f0c <_ZN6Thread4joinEv>
    for(auto& nit : niz){
    80009ff4:	00848493          	addi	s1,s1,8
    80009ff8:	fe9ff06f          	j	80009fe0 <_Z13testBarijera2v+0xfc>
    for(auto& nit : niz){
    80009ffc:	f8040493          	addi	s1,s0,-128
    8000a000:	0080006f          	j	8000a008 <_Z13testBarijera2v+0x124>
    8000a004:	00848493          	addi	s1,s1,8
    8000a008:	fd040793          	addi	a5,s0,-48
    8000a00c:	00f48e63          	beq	s1,a5,8000a028 <_Z13testBarijera2v+0x144>
        delete nit;
    8000a010:	0004b503          	ld	a0,0(s1)
    8000a014:	fe0508e3          	beqz	a0,8000a004 <_Z13testBarijera2v+0x120>
    8000a018:	00053783          	ld	a5,0(a0)
    8000a01c:	0087b783          	ld	a5,8(a5)
    8000a020:	000780e7          	jalr	a5
    8000a024:	fe1ff06f          	j	8000a004 <_Z13testBarijera2v+0x120>
    printString("Test 8 - blokiranje na barijeri sa dvojakim vratima- USPESNO ZAVRSEN\n");
    8000a028:	00007517          	auipc	a0,0x7
    8000a02c:	ea050513          	addi	a0,a0,-352 # 80010ec8 <CONSOLE_STATUS+0xeb8>
    8000a030:	ffffd097          	auipc	ra,0xffffd
    8000a034:	67c080e7          	jalr	1660(ra) # 800076ac <_Z11printStringPKc>
}
    8000a038:	07813083          	ld	ra,120(sp)
    8000a03c:	07013403          	ld	s0,112(sp)
    8000a040:	06813483          	ld	s1,104(sp)
    8000a044:	06013903          	ld	s2,96(sp)
    8000a048:	05813983          	ld	s3,88(sp)
    8000a04c:	08010113          	addi	sp,sp,128
    8000a050:	00008067          	ret
    8000a054:	00050913          	mv	s2,a0
    8000a058:	f1dff06f          	j	80009f74 <_Z13testBarijera2v+0x90>

000000008000a05c <_Z16testSEND_RECEIVEv>:
void testSEND_RECEIVE(){
    8000a05c:	fd010113          	addi	sp,sp,-48
    8000a060:	02113423          	sd	ra,40(sp)
    8000a064:	02813023          	sd	s0,32(sp)
    8000a068:	00913c23          	sd	s1,24(sp)
    8000a06c:	01213823          	sd	s2,16(sp)
    8000a070:	01313423          	sd	s3,8(sp)
    8000a074:	03010413          	addi	s0,sp,48
    A3* a3 = new A3();
    8000a078:	03800513          	li	a0,56
    8000a07c:	ffffa097          	auipc	ra,0xffffa
    8000a080:	a00080e7          	jalr	-1536(ra) # 80003a7c <_Znwm>
    8000a084:	00050913          	mv	s2,a0
    A3():Thread(),id(IDd++),toSend1(nullptr),toSend2(nullptr){
    8000a088:	ffffa097          	auipc	ra,0xffffa
    8000a08c:	dd8080e7          	jalr	-552(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000a090:	0000b797          	auipc	a5,0xb
    8000a094:	62078793          	addi	a5,a5,1568 # 800156b0 <_ZTV2A3+0x10>
    8000a098:	00f93023          	sd	a5,0(s2)
    8000a09c:	0000b717          	auipc	a4,0xb
    8000a0a0:	56070713          	addi	a4,a4,1376 # 800155fc <IDdd>
    8000a0a4:	01072783          	lw	a5,16(a4)
    8000a0a8:	0017869b          	addiw	a3,a5,1
    8000a0ac:	00d72823          	sw	a3,16(a4)
    8000a0b0:	02f92023          	sw	a5,32(s2)
    8000a0b4:	02093423          	sd	zero,40(s2)
    8000a0b8:	02093823          	sd	zero,48(s2)
        printString("Nit A kreirana - id: ");
    8000a0bc:	00007517          	auipc	a0,0x7
    8000a0c0:	e5450513          	addi	a0,a0,-428 # 80010f10 <CONSOLE_STATUS+0xf00>
    8000a0c4:	ffffd097          	auipc	ra,0xffffd
    8000a0c8:	5e8080e7          	jalr	1512(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000a0cc:	00000613          	li	a2,0
    8000a0d0:	00a00593          	li	a1,10
    8000a0d4:	02092503          	lw	a0,32(s2)
    8000a0d8:	ffffd097          	auipc	ra,0xffffd
    8000a0dc:	784080e7          	jalr	1924(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000a0e0:	00007517          	auipc	a0,0x7
    8000a0e4:	90050513          	addi	a0,a0,-1792 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000a0e8:	ffffd097          	auipc	ra,0xffffd
    8000a0ec:	5c4080e7          	jalr	1476(ra) # 800076ac <_Z11printStringPKc>
    8000a0f0:	02c0006f          	j	8000a11c <_Z16testSEND_RECEIVEv+0xc0>
    8000a0f4:	00050493          	mv	s1,a0
    A3():Thread(),id(IDd++),toSend1(nullptr),toSend2(nullptr){
    8000a0f8:	00090513          	mv	a0,s2
    8000a0fc:	ffffa097          	auipc	ra,0xffffa
    8000a100:	ae0080e7          	jalr	-1312(ra) # 80003bdc <_ZN6ThreadD1Ev>
    A3* a3 = new A3();
    8000a104:	00090513          	mv	a0,s2
    8000a108:	ffffa097          	auipc	ra,0xffffa
    8000a10c:	9c4080e7          	jalr	-1596(ra) # 80003acc <_ZdlPv>
    8000a110:	00048513          	mv	a0,s1
    8000a114:	0000d097          	auipc	ra,0xd
    8000a118:	cb4080e7          	jalr	-844(ra) # 80016dc8 <_Unwind_Resume>
    B3* b3=new B3();
    8000a11c:	03800513          	li	a0,56
    8000a120:	ffffa097          	auipc	ra,0xffffa
    8000a124:	95c080e7          	jalr	-1700(ra) # 80003a7c <_Znwm>
    8000a128:	00050493          	mv	s1,a0
    B3():Thread(),id(IDd++),toSend1(nullptr),toSend2(nullptr){
    8000a12c:	ffffa097          	auipc	ra,0xffffa
    8000a130:	d34080e7          	jalr	-716(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000a134:	0000b797          	auipc	a5,0xb
    8000a138:	5a478793          	addi	a5,a5,1444 # 800156d8 <_ZTV2B3+0x10>
    8000a13c:	00f4b023          	sd	a5,0(s1)
    8000a140:	0000b717          	auipc	a4,0xb
    8000a144:	4bc70713          	addi	a4,a4,1212 # 800155fc <IDdd>
    8000a148:	01072783          	lw	a5,16(a4)
    8000a14c:	0017869b          	addiw	a3,a5,1
    8000a150:	00d72823          	sw	a3,16(a4)
    8000a154:	02f4a023          	sw	a5,32(s1)
    8000a158:	0204b423          	sd	zero,40(s1)
    8000a15c:	0204b823          	sd	zero,48(s1)
        printString("Nit B kreirana - id: ");
    8000a160:	00007517          	auipc	a0,0x7
    8000a164:	c6850513          	addi	a0,a0,-920 # 80010dc8 <CONSOLE_STATUS+0xdb8>
    8000a168:	ffffd097          	auipc	ra,0xffffd
    8000a16c:	544080e7          	jalr	1348(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000a170:	00000613          	li	a2,0
    8000a174:	00a00593          	li	a1,10
    8000a178:	0204a503          	lw	a0,32(s1)
    8000a17c:	ffffd097          	auipc	ra,0xffffd
    8000a180:	6e0080e7          	jalr	1760(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000a184:	00007517          	auipc	a0,0x7
    8000a188:	85c50513          	addi	a0,a0,-1956 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000a18c:	ffffd097          	auipc	ra,0xffffd
    8000a190:	520080e7          	jalr	1312(ra) # 800076ac <_Z11printStringPKc>
    8000a194:	02c0006f          	j	8000a1c0 <_Z16testSEND_RECEIVEv+0x164>
    8000a198:	00050913          	mv	s2,a0
    B3():Thread(),id(IDd++),toSend1(nullptr),toSend2(nullptr){
    8000a19c:	00048513          	mv	a0,s1
    8000a1a0:	ffffa097          	auipc	ra,0xffffa
    8000a1a4:	a3c080e7          	jalr	-1476(ra) # 80003bdc <_ZN6ThreadD1Ev>
    B3* b3=new B3();
    8000a1a8:	00048513          	mv	a0,s1
    8000a1ac:	ffffa097          	auipc	ra,0xffffa
    8000a1b0:	920080e7          	jalr	-1760(ra) # 80003acc <_ZdlPv>
    8000a1b4:	00090513          	mv	a0,s2
    8000a1b8:	0000d097          	auipc	ra,0xd
    8000a1bc:	c10080e7          	jalr	-1008(ra) # 80016dc8 <_Unwind_Resume>
    C3* c3 = new C3();
    8000a1c0:	03800513          	li	a0,56
    8000a1c4:	ffffa097          	auipc	ra,0xffffa
    8000a1c8:	8b8080e7          	jalr	-1864(ra) # 80003a7c <_Znwm>
    8000a1cc:	00050993          	mv	s3,a0
    C3():Thread(),id(IDd++),toSend1(nullptr),toSend2(nullptr){
    8000a1d0:	ffffa097          	auipc	ra,0xffffa
    8000a1d4:	c90080e7          	jalr	-880(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000a1d8:	0000b797          	auipc	a5,0xb
    8000a1dc:	52878793          	addi	a5,a5,1320 # 80015700 <_ZTV2C3+0x10>
    8000a1e0:	00f9b023          	sd	a5,0(s3)
    8000a1e4:	0000b717          	auipc	a4,0xb
    8000a1e8:	41870713          	addi	a4,a4,1048 # 800155fc <IDdd>
    8000a1ec:	01072783          	lw	a5,16(a4)
    8000a1f0:	0017869b          	addiw	a3,a5,1
    8000a1f4:	00d72823          	sw	a3,16(a4)
    8000a1f8:	02f9a023          	sw	a5,32(s3)
    8000a1fc:	0209b423          	sd	zero,40(s3)
    8000a200:	0209b823          	sd	zero,48(s3)
        printString("Nit kreirana - id: ");
    8000a204:	00007517          	auipc	a0,0x7
    8000a208:	c3450513          	addi	a0,a0,-972 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000a20c:	ffffd097          	auipc	ra,0xffffd
    8000a210:	4a0080e7          	jalr	1184(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000a214:	00000613          	li	a2,0
    8000a218:	00a00593          	li	a1,10
    8000a21c:	0209a503          	lw	a0,32(s3)
    8000a220:	ffffd097          	auipc	ra,0xffffd
    8000a224:	63c080e7          	jalr	1596(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000a228:	00006517          	auipc	a0,0x6
    8000a22c:	7b850513          	addi	a0,a0,1976 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000a230:	ffffd097          	auipc	ra,0xffffd
    8000a234:	47c080e7          	jalr	1148(ra) # 800076ac <_Z11printStringPKc>
    8000a238:	02c0006f          	j	8000a264 <_Z16testSEND_RECEIVEv+0x208>
    8000a23c:	00050493          	mv	s1,a0
    C3():Thread(),id(IDd++),toSend1(nullptr),toSend2(nullptr){
    8000a240:	00098513          	mv	a0,s3
    8000a244:	ffffa097          	auipc	ra,0xffffa
    8000a248:	998080e7          	jalr	-1640(ra) # 80003bdc <_ZN6ThreadD1Ev>
    C3* c3 = new C3();
    8000a24c:	00098513          	mv	a0,s3
    8000a250:	ffffa097          	auipc	ra,0xffffa
    8000a254:	87c080e7          	jalr	-1924(ra) # 80003acc <_ZdlPv>
    8000a258:	00048513          	mv	a0,s1
    8000a25c:	0000d097          	auipc	ra,0xd
    8000a260:	b6c080e7          	jalr	-1172(ra) # 80016dc8 <_Unwind_Resume>
        toSend1 = t1;
    8000a264:	02993423          	sd	s1,40(s2)
        toSend2 = t2;
    8000a268:	03393823          	sd	s3,48(s2)
        toSend1 = t1;
    8000a26c:	0324b423          	sd	s2,40(s1)
        toSend2 = t2;
    8000a270:	0204b823          	sd	zero,48(s1)
        toSend1 = t1;
    8000a274:	0329b423          	sd	s2,40(s3)
        toSend2 = t2;
    8000a278:	0299b823          	sd	s1,48(s3)
    a3->start();
    8000a27c:	00090513          	mv	a0,s2
    8000a280:	ffffa097          	auipc	ra,0xffffa
    8000a284:	b98080e7          	jalr	-1128(ra) # 80003e18 <_ZN6Thread5startEv>
    b3->start();
    8000a288:	00048513          	mv	a0,s1
    8000a28c:	ffffa097          	auipc	ra,0xffffa
    8000a290:	b8c080e7          	jalr	-1140(ra) # 80003e18 <_ZN6Thread5startEv>
    c3->start();
    8000a294:	00098513          	mv	a0,s3
    8000a298:	ffffa097          	auipc	ra,0xffffa
    8000a29c:	b80080e7          	jalr	-1152(ra) # 80003e18 <_ZN6Thread5startEv>
    a3->join();
    8000a2a0:	00090513          	mv	a0,s2
    8000a2a4:	ffffa097          	auipc	ra,0xffffa
    8000a2a8:	c68080e7          	jalr	-920(ra) # 80003f0c <_ZN6Thread4joinEv>
    b3->join();
    8000a2ac:	00048513          	mv	a0,s1
    8000a2b0:	ffffa097          	auipc	ra,0xffffa
    8000a2b4:	c5c080e7          	jalr	-932(ra) # 80003f0c <_ZN6Thread4joinEv>
    c3->join();
    8000a2b8:	00098513          	mv	a0,s3
    8000a2bc:	ffffa097          	auipc	ra,0xffffa
    8000a2c0:	c50080e7          	jalr	-944(ra) # 80003f0c <_ZN6Thread4joinEv>
    delete a3;
    8000a2c4:	00090a63          	beqz	s2,8000a2d8 <_Z16testSEND_RECEIVEv+0x27c>
    8000a2c8:	00093783          	ld	a5,0(s2)
    8000a2cc:	0087b783          	ld	a5,8(a5)
    8000a2d0:	00090513          	mv	a0,s2
    8000a2d4:	000780e7          	jalr	a5
    delete b3;
    8000a2d8:	00048a63          	beqz	s1,8000a2ec <_Z16testSEND_RECEIVEv+0x290>
    8000a2dc:	0004b783          	ld	a5,0(s1)
    8000a2e0:	0087b783          	ld	a5,8(a5)
    8000a2e4:	00048513          	mv	a0,s1
    8000a2e8:	000780e7          	jalr	a5
    delete c3;
    8000a2ec:	00098a63          	beqz	s3,8000a300 <_Z16testSEND_RECEIVEv+0x2a4>
    8000a2f0:	0009b783          	ld	a5,0(s3)
    8000a2f4:	0087b783          	ld	a5,8(a5)
    8000a2f8:	00098513          	mv	a0,s3
    8000a2fc:	000780e7          	jalr	a5
    printString("TEST 8 - Send/Receive message uspesno zavrsen\n");
    8000a300:	00007517          	auipc	a0,0x7
    8000a304:	c2850513          	addi	a0,a0,-984 # 80010f28 <CONSOLE_STATUS+0xf18>
    8000a308:	ffffd097          	auipc	ra,0xffffd
    8000a30c:	3a4080e7          	jalr	932(ra) # 800076ac <_Z11printStringPKc>
}
    8000a310:	02813083          	ld	ra,40(sp)
    8000a314:	02013403          	ld	s0,32(sp)
    8000a318:	01813483          	ld	s1,24(sp)
    8000a31c:	01013903          	ld	s2,16(sp)
    8000a320:	00813983          	ld	s3,8(sp)
    8000a324:	03010113          	addi	sp,sp,48
    8000a328:	00008067          	ret
    8000a32c:	00050493          	mv	s1,a0
    8000a330:	dd5ff06f          	j	8000a104 <_Z16testSEND_RECEIVEv+0xa8>
    8000a334:	00050913          	mv	s2,a0
    8000a338:	e71ff06f          	j	8000a1a8 <_Z16testSEND_RECEIVEv+0x14c>
    8000a33c:	00050493          	mv	s1,a0
    8000a340:	f0dff06f          	j	8000a24c <_Z16testSEND_RECEIVEv+0x1f0>

000000008000a344 <_Z13test_JOIN_allv>:
void test_JOIN_all(){
    8000a344:	fe010113          	addi	sp,sp,-32
    8000a348:	00113c23          	sd	ra,24(sp)
    8000a34c:	00813823          	sd	s0,16(sp)
    8000a350:	00913423          	sd	s1,8(sp)
    8000a354:	01213023          	sd	s2,0(sp)
    8000a358:	02010413          	addi	s0,sp,32
    A4* a4 = new A4();
    8000a35c:	02800513          	li	a0,40
    8000a360:	ffff9097          	auipc	ra,0xffff9
    8000a364:	71c080e7          	jalr	1820(ra) # 80003a7c <_Znwm>
    8000a368:	00050493          	mv	s1,a0
    A4():Thread(),id(IDdd++){
    8000a36c:	ffffa097          	auipc	ra,0xffffa
    8000a370:	af4080e7          	jalr	-1292(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000a374:	0000b797          	auipc	a5,0xb
    8000a378:	3b478793          	addi	a5,a5,948 # 80015728 <_ZTV2A4+0x10>
    8000a37c:	00f4b023          	sd	a5,0(s1)
    8000a380:	0000b717          	auipc	a4,0xb
    8000a384:	27c70713          	addi	a4,a4,636 # 800155fc <IDdd>
    8000a388:	00072783          	lw	a5,0(a4)
    8000a38c:	0017869b          	addiw	a3,a5,1
    8000a390:	00d72023          	sw	a3,0(a4)
    8000a394:	02f4a023          	sw	a5,32(s1)
        printString("Nit A kreirana - id: ");
    8000a398:	00007517          	auipc	a0,0x7
    8000a39c:	b7850513          	addi	a0,a0,-1160 # 80010f10 <CONSOLE_STATUS+0xf00>
    8000a3a0:	ffffd097          	auipc	ra,0xffffd
    8000a3a4:	30c080e7          	jalr	780(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000a3a8:	00000613          	li	a2,0
    8000a3ac:	00a00593          	li	a1,10
    8000a3b0:	0204a503          	lw	a0,32(s1)
    8000a3b4:	ffffd097          	auipc	ra,0xffffd
    8000a3b8:	4a8080e7          	jalr	1192(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000a3bc:	00006517          	auipc	a0,0x6
    8000a3c0:	62450513          	addi	a0,a0,1572 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000a3c4:	ffffd097          	auipc	ra,0xffffd
    8000a3c8:	2e8080e7          	jalr	744(ra) # 800076ac <_Z11printStringPKc>
    8000a3cc:	02c0006f          	j	8000a3f8 <_Z13test_JOIN_allv+0xb4>
    8000a3d0:	00050913          	mv	s2,a0
    A4():Thread(),id(IDdd++){
    8000a3d4:	00048513          	mv	a0,s1
    8000a3d8:	ffffa097          	auipc	ra,0xffffa
    8000a3dc:	804080e7          	jalr	-2044(ra) # 80003bdc <_ZN6ThreadD1Ev>
    A4* a4 = new A4();
    8000a3e0:	00048513          	mv	a0,s1
    8000a3e4:	ffff9097          	auipc	ra,0xffff9
    8000a3e8:	6e8080e7          	jalr	1768(ra) # 80003acc <_ZdlPv>
    8000a3ec:	00090513          	mv	a0,s2
    8000a3f0:	0000d097          	auipc	ra,0xd
    8000a3f4:	9d8080e7          	jalr	-1576(ra) # 80016dc8 <_Unwind_Resume>
    a4->start();
    8000a3f8:	00048513          	mv	a0,s1
    8000a3fc:	ffffa097          	auipc	ra,0xffffa
    8000a400:	a1c080e7          	jalr	-1508(ra) # 80003e18 <_ZN6Thread5startEv>
    a4->join();
    8000a404:	00048513          	mv	a0,s1
    8000a408:	ffffa097          	auipc	ra,0xffffa
    8000a40c:	b04080e7          	jalr	-1276(ra) # 80003f0c <_ZN6Thread4joinEv>
    delete a4;
    8000a410:	00048a63          	beqz	s1,8000a424 <_Z13test_JOIN_allv+0xe0>
    8000a414:	0004b783          	ld	a5,0(s1)
    8000a418:	0087b783          	ld	a5,8(a5)
    8000a41c:	00048513          	mv	a0,s1
    8000a420:	000780e7          	jalr	a5
    printString("TEST 8 - join ALL uspesno zavrsen\n");
    8000a424:	00007517          	auipc	a0,0x7
    8000a428:	b3450513          	addi	a0,a0,-1228 # 80010f58 <CONSOLE_STATUS+0xf48>
    8000a42c:	ffffd097          	auipc	ra,0xffffd
    8000a430:	280080e7          	jalr	640(ra) # 800076ac <_Z11printStringPKc>
}
    8000a434:	01813083          	ld	ra,24(sp)
    8000a438:	01013403          	ld	s0,16(sp)
    8000a43c:	00813483          	ld	s1,8(sp)
    8000a440:	00013903          	ld	s2,0(sp)
    8000a444:	02010113          	addi	sp,sp,32
    8000a448:	00008067          	ret
    8000a44c:	00050913          	mv	s2,a0
    8000a450:	f91ff06f          	j	8000a3e0 <_Z13test_JOIN_allv+0x9c>

000000008000a454 <_Z17testSetMaxThreadsv>:
void testSetMaxThreads(){
    8000a454:	f2010113          	addi	sp,sp,-224
    8000a458:	0c113c23          	sd	ra,216(sp)
    8000a45c:	0c813823          	sd	s0,208(sp)
    8000a460:	0c913423          	sd	s1,200(sp)
    8000a464:	0d213023          	sd	s2,192(sp)
    8000a468:	0b313c23          	sd	s3,184(sp)
    8000a46c:	0e010413          	addi	s0,sp,224
    Thread::setMaxThreads(7);
    8000a470:	00700513          	li	a0,7
    8000a474:	ffffa097          	auipc	ra,0xffffa
    8000a478:	bc0080e7          	jalr	-1088(ra) # 80004034 <_ZN6Thread13setMaxThreadsEi>
    for(auto& th:threads){
    8000a47c:	f2840913          	addi	s2,s0,-216
    8000a480:	0900006f          	j	8000a510 <_Z17testSetMaxThreadsv+0xbc>
    A5():Thread(),id(identifikator++){
    8000a484:	0000b797          	auipc	a5,0xb
    8000a488:	31c78793          	addi	a5,a5,796 # 800157a0 <_ZTV2A5+0x10>
    8000a48c:	00f4b023          	sd	a5,0(s1)
    8000a490:	0000b717          	auipc	a4,0xb
    8000a494:	16c70713          	addi	a4,a4,364 # 800155fc <IDdd>
    8000a498:	01472783          	lw	a5,20(a4)
    8000a49c:	0017869b          	addiw	a3,a5,1
    8000a4a0:	00d72a23          	sw	a3,20(a4)
    8000a4a4:	02f4a023          	sw	a5,32(s1)
        printString("Nit A kreirana, ID: ");
    8000a4a8:	00007517          	auipc	a0,0x7
    8000a4ac:	ad850513          	addi	a0,a0,-1320 # 80010f80 <CONSOLE_STATUS+0xf70>
    8000a4b0:	ffffd097          	auipc	ra,0xffffd
    8000a4b4:	1fc080e7          	jalr	508(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000a4b8:	00000613          	li	a2,0
    8000a4bc:	00a00593          	li	a1,10
    8000a4c0:	0204a503          	lw	a0,32(s1)
    8000a4c4:	ffffd097          	auipc	ra,0xffffd
    8000a4c8:	398080e7          	jalr	920(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000a4cc:	00006517          	auipc	a0,0x6
    8000a4d0:	51450513          	addi	a0,a0,1300 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000a4d4:	ffffd097          	auipc	ra,0xffffd
    8000a4d8:	1d8080e7          	jalr	472(ra) # 800076ac <_Z11printStringPKc>
    8000a4dc:	02c0006f          	j	8000a508 <_Z17testSetMaxThreadsv+0xb4>
    8000a4e0:	00050913          	mv	s2,a0
    A5():Thread(),id(identifikator++){
    8000a4e4:	00098513          	mv	a0,s3
    8000a4e8:	ffff9097          	auipc	ra,0xffff9
    8000a4ec:	6f4080e7          	jalr	1780(ra) # 80003bdc <_ZN6ThreadD1Ev>
        th=new A5();
    8000a4f0:	00048513          	mv	a0,s1
    8000a4f4:	ffff9097          	auipc	ra,0xffff9
    8000a4f8:	5d8080e7          	jalr	1496(ra) # 80003acc <_ZdlPv>
    8000a4fc:	00090513          	mv	a0,s2
    8000a500:	0000d097          	auipc	ra,0xd
    8000a504:	8c8080e7          	jalr	-1848(ra) # 80016dc8 <_Unwind_Resume>
    8000a508:	00993023          	sd	s1,0(s2)
    for(auto& th:threads){
    8000a50c:	00890913          	addi	s2,s2,8
    8000a510:	fd040793          	addi	a5,s0,-48
    8000a514:	02f90263          	beq	s2,a5,8000a538 <_Z17testSetMaxThreadsv+0xe4>
        th=new A5();
    8000a518:	02800513          	li	a0,40
    8000a51c:	ffff9097          	auipc	ra,0xffff9
    8000a520:	560080e7          	jalr	1376(ra) # 80003a7c <_Znwm>
    8000a524:	00050493          	mv	s1,a0
    A5():Thread(),id(identifikator++){
    8000a528:	00050993          	mv	s3,a0
    8000a52c:	ffffa097          	auipc	ra,0xffffa
    8000a530:	934080e7          	jalr	-1740(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000a534:	f51ff06f          	j	8000a484 <_Z17testSetMaxThreadsv+0x30>
    for(auto& th:threads){
    8000a538:	f2840493          	addi	s1,s0,-216
    8000a53c:	0140006f          	j	8000a550 <_Z17testSetMaxThreadsv+0xfc>
        th->start();
    8000a540:	0004b503          	ld	a0,0(s1)
    8000a544:	ffffa097          	auipc	ra,0xffffa
    8000a548:	8d4080e7          	jalr	-1836(ra) # 80003e18 <_ZN6Thread5startEv>
    for(auto& th:threads){
    8000a54c:	00848493          	addi	s1,s1,8
    8000a550:	fd040793          	addi	a5,s0,-48
    8000a554:	fef496e3          	bne	s1,a5,8000a540 <_Z17testSetMaxThreadsv+0xec>
    for(auto& th:threads){
    8000a558:	f2840493          	addi	s1,s0,-216
    8000a55c:	0140006f          	j	8000a570 <_Z17testSetMaxThreadsv+0x11c>
        th->join();
    8000a560:	0004b503          	ld	a0,0(s1)
    8000a564:	ffffa097          	auipc	ra,0xffffa
    8000a568:	9a8080e7          	jalr	-1624(ra) # 80003f0c <_ZN6Thread4joinEv>
    for(auto& th:threads){
    8000a56c:	00848493          	addi	s1,s1,8
    8000a570:	fd040793          	addi	a5,s0,-48
    8000a574:	fef496e3          	bne	s1,a5,8000a560 <_Z17testSetMaxThreadsv+0x10c>
    for(auto& th:threads){
    8000a578:	f2840493          	addi	s1,s0,-216
    8000a57c:	0080006f          	j	8000a584 <_Z17testSetMaxThreadsv+0x130>
    8000a580:	00848493          	addi	s1,s1,8
    8000a584:	fd040793          	addi	a5,s0,-48
    8000a588:	00f48e63          	beq	s1,a5,8000a5a4 <_Z17testSetMaxThreadsv+0x150>
        delete th;
    8000a58c:	0004b503          	ld	a0,0(s1)
    8000a590:	fe0508e3          	beqz	a0,8000a580 <_Z17testSetMaxThreadsv+0x12c>
    8000a594:	00053783          	ld	a5,0(a0)
    8000a598:	0087b783          	ld	a5,8(a5)
    8000a59c:	000780e7          	jalr	a5
    8000a5a0:	fe1ff06f          	j	8000a580 <_Z17testSetMaxThreadsv+0x12c>
    printString("TEST 8 - Maksimalan Broj Korisnickih Niti - USPESNO ZAVRSEN\n");
    8000a5a4:	00007517          	auipc	a0,0x7
    8000a5a8:	9f450513          	addi	a0,a0,-1548 # 80010f98 <CONSOLE_STATUS+0xf88>
    8000a5ac:	ffffd097          	auipc	ra,0xffffd
    8000a5b0:	100080e7          	jalr	256(ra) # 800076ac <_Z11printStringPKc>
};
    8000a5b4:	0d813083          	ld	ra,216(sp)
    8000a5b8:	0d013403          	ld	s0,208(sp)
    8000a5bc:	0c813483          	ld	s1,200(sp)
    8000a5c0:	0c013903          	ld	s2,192(sp)
    8000a5c4:	0b813983          	ld	s3,184(sp)
    8000a5c8:	0e010113          	addi	sp,sp,224
    8000a5cc:	00008067          	ret
    8000a5d0:	00050913          	mv	s2,a0
    8000a5d4:	f1dff06f          	j	8000a4f0 <_Z17testSetMaxThreadsv+0x9c>

000000008000a5d8 <_Z19testAtomicBroadcastv>:
void testAtomicBroadcast(){
    8000a5d8:	f8010113          	addi	sp,sp,-128
    8000a5dc:	06113c23          	sd	ra,120(sp)
    8000a5e0:	06813823          	sd	s0,112(sp)
    8000a5e4:	06913423          	sd	s1,104(sp)
    8000a5e8:	07213023          	sd	s2,96(sp)
    8000a5ec:	05313c23          	sd	s3,88(sp)
    8000a5f0:	08010413          	addi	s0,sp,128
    array[0] = new A7();
    8000a5f4:	02800513          	li	a0,40
    8000a5f8:	ffff9097          	auipc	ra,0xffff9
    8000a5fc:	484080e7          	jalr	1156(ra) # 80003a7c <_Znwm>
    8000a600:	00050493          	mv	s1,a0
    A7(): Thread(),id(x++){
    8000a604:	ffffa097          	auipc	ra,0xffffa
    8000a608:	85c080e7          	jalr	-1956(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000a60c:	0000b797          	auipc	a5,0xb
    8000a610:	1bc78793          	addi	a5,a5,444 # 800157c8 <_ZTV2A7+0x10>
    8000a614:	00f4b023          	sd	a5,0(s1)
    8000a618:	0000b717          	auipc	a4,0xb
    8000a61c:	6b070713          	addi	a4,a4,1712 # 80015cc8 <sem2>
    8000a620:	01872783          	lw	a5,24(a4)
    8000a624:	0017869b          	addiw	a3,a5,1
    8000a628:	00d72c23          	sw	a3,24(a4)
    8000a62c:	02f4a023          	sw	a5,32(s1)
        printString("Producer kreiran\n");
    8000a630:	00007517          	auipc	a0,0x7
    8000a634:	9a850513          	addi	a0,a0,-1624 # 80010fd8 <CONSOLE_STATUS+0xfc8>
    8000a638:	ffffd097          	auipc	ra,0xffffd
    8000a63c:	074080e7          	jalr	116(ra) # 800076ac <_Z11printStringPKc>
    8000a640:	02c0006f          	j	8000a66c <_Z19testAtomicBroadcastv+0x94>
    8000a644:	00050913          	mv	s2,a0
    A7(): Thread(),id(x++){
    8000a648:	00048513          	mv	a0,s1
    8000a64c:	ffff9097          	auipc	ra,0xffff9
    8000a650:	590080e7          	jalr	1424(ra) # 80003bdc <_ZN6ThreadD1Ev>
    array[0] = new A7();
    8000a654:	00048513          	mv	a0,s1
    8000a658:	ffff9097          	auipc	ra,0xffff9
    8000a65c:	474080e7          	jalr	1140(ra) # 80003acc <_ZdlPv>
    8000a660:	00090513          	mv	a0,s2
    8000a664:	0000c097          	auipc	ra,0xc
    8000a668:	764080e7          	jalr	1892(ra) # 80016dc8 <_Unwind_Resume>
    8000a66c:	f8943423          	sd	s1,-120(s0)
    x=0;
    8000a670:	0000b797          	auipc	a5,0xb
    8000a674:	6607a823          	sw	zero,1648(a5) # 80015ce0 <_ZL1x>
    for(int i=1;i<9;i++){
    8000a678:	00100913          	li	s2,1
    8000a67c:	0780006f          	j	8000a6f4 <_Z19testAtomicBroadcastv+0x11c>
    B7() : Thread(), id(x++) {
    8000a680:	0000b797          	auipc	a5,0xb
    8000a684:	17078793          	addi	a5,a5,368 # 800157f0 <_ZTV2B7+0x10>
    8000a688:	00f4b023          	sd	a5,0(s1)
    8000a68c:	0000b717          	auipc	a4,0xb
    8000a690:	63c70713          	addi	a4,a4,1596 # 80015cc8 <sem2>
    8000a694:	01872783          	lw	a5,24(a4)
    8000a698:	0017869b          	addiw	a3,a5,1
    8000a69c:	00d72c23          	sw	a3,24(a4)
    8000a6a0:	02f4a023          	sw	a5,32(s1)
        printString("Consumer kreiran\n");
    8000a6a4:	00007517          	auipc	a0,0x7
    8000a6a8:	94c50513          	addi	a0,a0,-1716 # 80010ff0 <CONSOLE_STATUS+0xfe0>
    8000a6ac:	ffffd097          	auipc	ra,0xffffd
    8000a6b0:	000080e7          	jalr	ra # 800076ac <_Z11printStringPKc>
    8000a6b4:	02c0006f          	j	8000a6e0 <_Z19testAtomicBroadcastv+0x108>
    8000a6b8:	00050913          	mv	s2,a0
    B7() : Thread(), id(x++) {
    8000a6bc:	00098513          	mv	a0,s3
    8000a6c0:	ffff9097          	auipc	ra,0xffff9
    8000a6c4:	51c080e7          	jalr	1308(ra) # 80003bdc <_ZN6ThreadD1Ev>
        array[i] = new B7();
    8000a6c8:	00048513          	mv	a0,s1
    8000a6cc:	ffff9097          	auipc	ra,0xffff9
    8000a6d0:	400080e7          	jalr	1024(ra) # 80003acc <_ZdlPv>
    8000a6d4:	00090513          	mv	a0,s2
    8000a6d8:	0000c097          	auipc	ra,0xc
    8000a6dc:	6f0080e7          	jalr	1776(ra) # 80016dc8 <_Unwind_Resume>
    8000a6e0:	00391793          	slli	a5,s2,0x3
    8000a6e4:	fd040713          	addi	a4,s0,-48
    8000a6e8:	00f707b3          	add	a5,a4,a5
    8000a6ec:	fa97bc23          	sd	s1,-72(a5)
    for(int i=1;i<9;i++){
    8000a6f0:	0019091b          	addiw	s2,s2,1
    8000a6f4:	00800793          	li	a5,8
    8000a6f8:	0327c263          	blt	a5,s2,8000a71c <_Z19testAtomicBroadcastv+0x144>
        array[i] = new B7();
    8000a6fc:	02800513          	li	a0,40
    8000a700:	ffff9097          	auipc	ra,0xffff9
    8000a704:	37c080e7          	jalr	892(ra) # 80003a7c <_Znwm>
    8000a708:	00050493          	mv	s1,a0
    B7() : Thread(), id(x++) {
    8000a70c:	00050993          	mv	s3,a0
    8000a710:	ffff9097          	auipc	ra,0xffff9
    8000a714:	750080e7          	jalr	1872(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000a718:	f69ff06f          	j	8000a680 <_Z19testAtomicBroadcastv+0xa8>
    for(auto& nit:array){
    8000a71c:	f8840493          	addi	s1,s0,-120
    8000a720:	0140006f          	j	8000a734 <_Z19testAtomicBroadcastv+0x15c>
        nit->start();
    8000a724:	0004b503          	ld	a0,0(s1)
    8000a728:	ffff9097          	auipc	ra,0xffff9
    8000a72c:	6f0080e7          	jalr	1776(ra) # 80003e18 <_ZN6Thread5startEv>
    for(auto& nit:array){
    8000a730:	00848493          	addi	s1,s1,8
    8000a734:	fd040793          	addi	a5,s0,-48
    8000a738:	fef496e3          	bne	s1,a5,8000a724 <_Z19testAtomicBroadcastv+0x14c>
    for(auto& nit:array){
    8000a73c:	f8840493          	addi	s1,s0,-120
    8000a740:	0140006f          	j	8000a754 <_Z19testAtomicBroadcastv+0x17c>
        nit->join();
    8000a744:	0004b503          	ld	a0,0(s1)
    8000a748:	ffff9097          	auipc	ra,0xffff9
    8000a74c:	7c4080e7          	jalr	1988(ra) # 80003f0c <_ZN6Thread4joinEv>
    for(auto& nit:array){
    8000a750:	00848493          	addi	s1,s1,8
    8000a754:	fd040793          	addi	a5,s0,-48
    8000a758:	fef496e3          	bne	s1,a5,8000a744 <_Z19testAtomicBroadcastv+0x16c>
    for(auto& nit:array){
    8000a75c:	f8840493          	addi	s1,s0,-120
    8000a760:	0080006f          	j	8000a768 <_Z19testAtomicBroadcastv+0x190>
    8000a764:	00848493          	addi	s1,s1,8
    8000a768:	fd040793          	addi	a5,s0,-48
    8000a76c:	00f48e63          	beq	s1,a5,8000a788 <_Z19testAtomicBroadcastv+0x1b0>
        delete nit;
    8000a770:	0004b503          	ld	a0,0(s1)
    8000a774:	fe0508e3          	beqz	a0,8000a764 <_Z19testAtomicBroadcastv+0x18c>
    8000a778:	00053783          	ld	a5,0(a0)
    8000a77c:	0087b783          	ld	a5,8(a5)
    8000a780:	000780e7          	jalr	a5
    8000a784:	fe1ff06f          	j	8000a764 <_Z19testAtomicBroadcastv+0x18c>
    printString("test 8 - atomic broadcast uspesno zavrsen\n");
    8000a788:	00007517          	auipc	a0,0x7
    8000a78c:	88050513          	addi	a0,a0,-1920 # 80011008 <CONSOLE_STATUS+0xff8>
    8000a790:	ffffd097          	auipc	ra,0xffffd
    8000a794:	f1c080e7          	jalr	-228(ra) # 800076ac <_Z11printStringPKc>
}
    8000a798:	07813083          	ld	ra,120(sp)
    8000a79c:	07013403          	ld	s0,112(sp)
    8000a7a0:	06813483          	ld	s1,104(sp)
    8000a7a4:	06013903          	ld	s2,96(sp)
    8000a7a8:	05813983          	ld	s3,88(sp)
    8000a7ac:	08010113          	addi	sp,sp,128
    8000a7b0:	00008067          	ret
    8000a7b4:	00050913          	mv	s2,a0
    8000a7b8:	e9dff06f          	j	8000a654 <_Z19testAtomicBroadcastv+0x7c>
    8000a7bc:	00050913          	mv	s2,a0
    8000a7c0:	f09ff06f          	j	8000a6c8 <_Z19testAtomicBroadcastv+0xf0>

000000008000a7c4 <_Z7testH2Ov>:
void testH2O(){
    8000a7c4:	f5010113          	addi	sp,sp,-176
    8000a7c8:	0a113423          	sd	ra,168(sp)
    8000a7cc:	0a813023          	sd	s0,160(sp)
    8000a7d0:	08913c23          	sd	s1,152(sp)
    8000a7d4:	09213823          	sd	s2,144(sp)
    8000a7d8:	09313423          	sd	s3,136(sp)
    8000a7dc:	0b010413          	addi	s0,sp,176
    for(int i=0;i<TH;i++){
    8000a7e0:	00000493          	li	s1,0
    8000a7e4:	0a00006f          	j	8000a884 <_Z7testH2Ov+0xc0>
    A8(int t):Thread(),id(BR++),type(t){
    8000a7e8:	0000b797          	auipc	a5,0xb
    8000a7ec:	03078793          	addi	a5,a5,48 # 80015818 <_ZTV2A8+0x10>
    8000a7f0:	00f93023          	sd	a5,0(s2)
    8000a7f4:	0000b717          	auipc	a4,0xb
    8000a7f8:	e0870713          	addi	a4,a4,-504 # 800155fc <IDdd>
    8000a7fc:	01872783          	lw	a5,24(a4)
    8000a800:	0017869b          	addiw	a3,a5,1
    8000a804:	00d72c23          	sw	a3,24(a4)
    8000a808:	02f92023          	sw	a5,32(s2)
    8000a80c:	02092223          	sw	zero,36(s2)
        printString("Nit kreirana - id: ");
    8000a810:	00006517          	auipc	a0,0x6
    8000a814:	62850513          	addi	a0,a0,1576 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000a818:	ffffd097          	auipc	ra,0xffffd
    8000a81c:	e94080e7          	jalr	-364(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000a820:	00000613          	li	a2,0
    8000a824:	00a00593          	li	a1,10
    8000a828:	02092503          	lw	a0,32(s2)
    8000a82c:	ffffd097          	auipc	ra,0xffffd
    8000a830:	030080e7          	jalr	48(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000a834:	00006517          	auipc	a0,0x6
    8000a838:	1ac50513          	addi	a0,a0,428 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000a83c:	ffffd097          	auipc	ra,0xffffd
    8000a840:	e70080e7          	jalr	-400(ra) # 800076ac <_Z11printStringPKc>
    8000a844:	02c0006f          	j	8000a870 <_Z7testH2Ov+0xac>
    8000a848:	00050493          	mv	s1,a0
    A8(int t):Thread(),id(BR++),type(t){
    8000a84c:	00098513          	mv	a0,s3
    8000a850:	ffff9097          	auipc	ra,0xffff9
    8000a854:	38c080e7          	jalr	908(ra) # 80003bdc <_ZN6ThreadD1Ev>
            niz[i]=new A8(0);
    8000a858:	00090513          	mv	a0,s2
    8000a85c:	ffff9097          	auipc	ra,0xffff9
    8000a860:	270080e7          	jalr	624(ra) # 80003acc <_ZdlPv>
    8000a864:	00048513          	mv	a0,s1
    8000a868:	0000c097          	auipc	ra,0xc
    8000a86c:	560080e7          	jalr	1376(ra) # 80016dc8 <_Unwind_Resume>
    8000a870:	00349793          	slli	a5,s1,0x3
    8000a874:	fd040713          	addi	a4,s0,-48
    8000a878:	00f707b3          	add	a5,a4,a5
    8000a87c:	f927b423          	sd	s2,-120(a5)
    for(int i=0;i<TH;i++){
    8000a880:	0014849b          	addiw	s1,s1,1
    8000a884:	00e00793          	li	a5,14
    8000a888:	0e97c663          	blt	a5,s1,8000a974 <_Z7testH2Ov+0x1b0>
        if(i%3==0){
    8000a88c:	00300793          	li	a5,3
    8000a890:	02f4e7bb          	remw	a5,s1,a5
    8000a894:	02079263          	bnez	a5,8000a8b8 <_Z7testH2Ov+0xf4>
            niz[i]=new A8(0);
    8000a898:	02800513          	li	a0,40
    8000a89c:	ffff9097          	auipc	ra,0xffff9
    8000a8a0:	1e0080e7          	jalr	480(ra) # 80003a7c <_Znwm>
    8000a8a4:	00050913          	mv	s2,a0
    A8(int t):Thread(),id(BR++),type(t){
    8000a8a8:	00050993          	mv	s3,a0
    8000a8ac:	ffff9097          	auipc	ra,0xffff9
    8000a8b0:	5b4080e7          	jalr	1460(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000a8b4:	f35ff06f          	j	8000a7e8 <_Z7testH2Ov+0x24>
            niz[i]=new A8(1);
    8000a8b8:	02800513          	li	a0,40
    8000a8bc:	ffff9097          	auipc	ra,0xffff9
    8000a8c0:	1c0080e7          	jalr	448(ra) # 80003a7c <_Znwm>
    8000a8c4:	00050913          	mv	s2,a0
    A8(int t):Thread(),id(BR++),type(t){
    8000a8c8:	00050993          	mv	s3,a0
    8000a8cc:	ffff9097          	auipc	ra,0xffff9
    8000a8d0:	594080e7          	jalr	1428(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000a8d4:	0000b797          	auipc	a5,0xb
    8000a8d8:	f4478793          	addi	a5,a5,-188 # 80015818 <_ZTV2A8+0x10>
    8000a8dc:	00f93023          	sd	a5,0(s2)
    8000a8e0:	0000b717          	auipc	a4,0xb
    8000a8e4:	d1c70713          	addi	a4,a4,-740 # 800155fc <IDdd>
    8000a8e8:	01872783          	lw	a5,24(a4)
    8000a8ec:	0017869b          	addiw	a3,a5,1
    8000a8f0:	00d72c23          	sw	a3,24(a4)
    8000a8f4:	02f92023          	sw	a5,32(s2)
    8000a8f8:	00100793          	li	a5,1
    8000a8fc:	02f92223          	sw	a5,36(s2)
        printString("Nit kreirana - id: ");
    8000a900:	00006517          	auipc	a0,0x6
    8000a904:	53850513          	addi	a0,a0,1336 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000a908:	ffffd097          	auipc	ra,0xffffd
    8000a90c:	da4080e7          	jalr	-604(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000a910:	00000613          	li	a2,0
    8000a914:	00a00593          	li	a1,10
    8000a918:	02092503          	lw	a0,32(s2)
    8000a91c:	ffffd097          	auipc	ra,0xffffd
    8000a920:	f40080e7          	jalr	-192(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000a924:	00006517          	auipc	a0,0x6
    8000a928:	0bc50513          	addi	a0,a0,188 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000a92c:	ffffd097          	auipc	ra,0xffffd
    8000a930:	d80080e7          	jalr	-640(ra) # 800076ac <_Z11printStringPKc>
    8000a934:	02c0006f          	j	8000a960 <_Z7testH2Ov+0x19c>
    8000a938:	00050493          	mv	s1,a0
    A8(int t):Thread(),id(BR++),type(t){
    8000a93c:	00098513          	mv	a0,s3
    8000a940:	ffff9097          	auipc	ra,0xffff9
    8000a944:	29c080e7          	jalr	668(ra) # 80003bdc <_ZN6ThreadD1Ev>
            niz[i]=new A8(1);
    8000a948:	00090513          	mv	a0,s2
    8000a94c:	ffff9097          	auipc	ra,0xffff9
    8000a950:	180080e7          	jalr	384(ra) # 80003acc <_ZdlPv>
    8000a954:	00048513          	mv	a0,s1
    8000a958:	0000c097          	auipc	ra,0xc
    8000a95c:	470080e7          	jalr	1136(ra) # 80016dc8 <_Unwind_Resume>
    8000a960:	00349793          	slli	a5,s1,0x3
    8000a964:	fd040713          	addi	a4,s0,-48
    8000a968:	00f707b3          	add	a5,a4,a5
    8000a96c:	f927b423          	sd	s2,-120(a5)
    8000a970:	f11ff06f          	j	8000a880 <_Z7testH2Ov+0xbc>
    for(auto nit:niz){
    8000a974:	fd040913          	addi	s2,s0,-48
    8000a978:	f5840493          	addi	s1,s0,-168
    8000a97c:	01248c63          	beq	s1,s2,8000a994 <_Z7testH2Ov+0x1d0>
        nit->start();
    8000a980:	0004b503          	ld	a0,0(s1)
    8000a984:	ffff9097          	auipc	ra,0xffff9
    8000a988:	494080e7          	jalr	1172(ra) # 80003e18 <_ZN6Thread5startEv>
    for(auto nit:niz){
    8000a98c:	00848493          	addi	s1,s1,8
    8000a990:	fedff06f          	j	8000a97c <_Z7testH2Ov+0x1b8>
    for(auto nit:niz){
    8000a994:	f5840493          	addi	s1,s0,-168
    8000a998:	01248c63          	beq	s1,s2,8000a9b0 <_Z7testH2Ov+0x1ec>
        nit->join();
    8000a99c:	0004b503          	ld	a0,0(s1)
    8000a9a0:	ffff9097          	auipc	ra,0xffff9
    8000a9a4:	56c080e7          	jalr	1388(ra) # 80003f0c <_ZN6Thread4joinEv>
    for(auto nit:niz){
    8000a9a8:	00848493          	addi	s1,s1,8
    8000a9ac:	fedff06f          	j	8000a998 <_Z7testH2Ov+0x1d4>
    for(auto nit:niz){
    8000a9b0:	f5840493          	addi	s1,s0,-168
    8000a9b4:	0080006f          	j	8000a9bc <_Z7testH2Ov+0x1f8>
    8000a9b8:	00848493          	addi	s1,s1,8
    8000a9bc:	01248e63          	beq	s1,s2,8000a9d8 <_Z7testH2Ov+0x214>
    8000a9c0:	0004b503          	ld	a0,0(s1)
        delete nit;
    8000a9c4:	fe050ae3          	beqz	a0,8000a9b8 <_Z7testH2Ov+0x1f4>
    8000a9c8:	00053783          	ld	a5,0(a0)
    8000a9cc:	0087b783          	ld	a5,8(a5)
    8000a9d0:	000780e7          	jalr	a5
    8000a9d4:	fe5ff06f          	j	8000a9b8 <_Z7testH2Ov+0x1f4>
    printString("TEST 8 - molekul kiseonika gotov\n");
    8000a9d8:	00006517          	auipc	a0,0x6
    8000a9dc:	66050513          	addi	a0,a0,1632 # 80011038 <CONSOLE_STATUS+0x1028>
    8000a9e0:	ffffd097          	auipc	ra,0xffffd
    8000a9e4:	ccc080e7          	jalr	-820(ra) # 800076ac <_Z11printStringPKc>
};
    8000a9e8:	0a813083          	ld	ra,168(sp)
    8000a9ec:	0a013403          	ld	s0,160(sp)
    8000a9f0:	09813483          	ld	s1,152(sp)
    8000a9f4:	09013903          	ld	s2,144(sp)
    8000a9f8:	08813983          	ld	s3,136(sp)
    8000a9fc:	0b010113          	addi	sp,sp,176
    8000aa00:	00008067          	ret
    8000aa04:	00050493          	mv	s1,a0
    8000aa08:	e51ff06f          	j	8000a858 <_Z7testH2Ov+0x94>
    8000aa0c:	00050493          	mv	s1,a0
    8000aa10:	f39ff06f          	j	8000a948 <_Z7testH2Ov+0x184>

000000008000aa14 <_Z17testDiningSavagesv>:
void testDiningSavages(){
    8000aa14:	fd010113          	addi	sp,sp,-48
    8000aa18:	02113423          	sd	ra,40(sp)
    8000aa1c:	02813023          	sd	s0,32(sp)
    8000aa20:	00913c23          	sd	s1,24(sp)
    8000aa24:	01213823          	sd	s2,16(sp)
    8000aa28:	01313423          	sd	s3,8(sp)
    8000aa2c:	01413023          	sd	s4,0(sp)
    8000aa30:	03010413          	addi	s0,sp,48
    A9* niz[XX];
    8000aa34:	e7010113          	addi	sp,sp,-400
    8000aa38:	00010993          	mv	s3,sp
    for(int i=0;i<30;i++){
    8000aa3c:	00000913          	li	s2,0
    8000aa40:	09c0006f          	j	8000aadc <_Z17testDiningSavagesv+0xc8>
    A9(int t):Thread(),id(iden++),type(t){
    8000aa44:	0000b797          	auipc	a5,0xb
    8000aa48:	dfc78793          	addi	a5,a5,-516 # 80015840 <_ZTV2A9+0x10>
    8000aa4c:	00f4b023          	sd	a5,0(s1)
    8000aa50:	0000b717          	auipc	a4,0xb
    8000aa54:	bac70713          	addi	a4,a4,-1108 # 800155fc <IDdd>
    8000aa58:	01c72783          	lw	a5,28(a4)
    8000aa5c:	0017869b          	addiw	a3,a5,1
    8000aa60:	00d72e23          	sw	a3,28(a4)
    8000aa64:	02f4a023          	sw	a5,32(s1)
    8000aa68:	0204a223          	sw	zero,36(s1)
        printString("Nit kreirana - id: ");
    8000aa6c:	00006517          	auipc	a0,0x6
    8000aa70:	3cc50513          	addi	a0,a0,972 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000aa74:	ffffd097          	auipc	ra,0xffffd
    8000aa78:	c38080e7          	jalr	-968(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000aa7c:	00000613          	li	a2,0
    8000aa80:	00a00593          	li	a1,10
    8000aa84:	0204a503          	lw	a0,32(s1)
    8000aa88:	ffffd097          	auipc	ra,0xffffd
    8000aa8c:	dd4080e7          	jalr	-556(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000aa90:	00006517          	auipc	a0,0x6
    8000aa94:	f5050513          	addi	a0,a0,-176 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000aa98:	ffffd097          	auipc	ra,0xffffd
    8000aa9c:	c14080e7          	jalr	-1004(ra) # 800076ac <_Z11printStringPKc>
    8000aaa0:	02c0006f          	j	8000aacc <_Z17testDiningSavagesv+0xb8>
    8000aaa4:	00050913          	mv	s2,a0
    A9(int t):Thread(),id(iden++),type(t){
    8000aaa8:	000a0513          	mv	a0,s4
    8000aaac:	ffff9097          	auipc	ra,0xffff9
    8000aab0:	130080e7          	jalr	304(ra) # 80003bdc <_ZN6ThreadD1Ev>
        niz[i]=new A9(0);
    8000aab4:	00048513          	mv	a0,s1
    8000aab8:	ffff9097          	auipc	ra,0xffff9
    8000aabc:	014080e7          	jalr	20(ra) # 80003acc <_ZdlPv>
    8000aac0:	00090513          	mv	a0,s2
    8000aac4:	0000c097          	auipc	ra,0xc
    8000aac8:	304080e7          	jalr	772(ra) # 80016dc8 <_Unwind_Resume>
    8000aacc:	00391793          	slli	a5,s2,0x3
    8000aad0:	00f987b3          	add	a5,s3,a5
    8000aad4:	0097b023          	sd	s1,0(a5)
    for(int i=0;i<30;i++){
    8000aad8:	0019091b          	addiw	s2,s2,1
    8000aadc:	01d00793          	li	a5,29
    8000aae0:	0327c263          	blt	a5,s2,8000ab04 <_Z17testDiningSavagesv+0xf0>
        niz[i]=new A9(0);
    8000aae4:	02800513          	li	a0,40
    8000aae8:	ffff9097          	auipc	ra,0xffff9
    8000aaec:	f94080e7          	jalr	-108(ra) # 80003a7c <_Znwm>
    8000aaf0:	00050493          	mv	s1,a0
    A9(int t):Thread(),id(iden++),type(t){
    8000aaf4:	00050a13          	mv	s4,a0
    8000aaf8:	ffff9097          	auipc	ra,0xffff9
    8000aafc:	368080e7          	jalr	872(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000ab00:	f45ff06f          	j	8000aa44 <_Z17testDiningSavagesv+0x30>
    niz[30] = new A9(1);
    8000ab04:	02800513          	li	a0,40
    8000ab08:	ffff9097          	auipc	ra,0xffff9
    8000ab0c:	f74080e7          	jalr	-140(ra) # 80003a7c <_Znwm>
    8000ab10:	00050493          	mv	s1,a0
    A9(int t):Thread(),id(iden++),type(t){
    8000ab14:	ffff9097          	auipc	ra,0xffff9
    8000ab18:	34c080e7          	jalr	844(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000ab1c:	0000b797          	auipc	a5,0xb
    8000ab20:	d2478793          	addi	a5,a5,-732 # 80015840 <_ZTV2A9+0x10>
    8000ab24:	00f4b023          	sd	a5,0(s1)
    8000ab28:	0000b717          	auipc	a4,0xb
    8000ab2c:	ad470713          	addi	a4,a4,-1324 # 800155fc <IDdd>
    8000ab30:	01c72783          	lw	a5,28(a4)
    8000ab34:	0017869b          	addiw	a3,a5,1
    8000ab38:	00d72e23          	sw	a3,28(a4)
    8000ab3c:	02f4a023          	sw	a5,32(s1)
    8000ab40:	00100793          	li	a5,1
    8000ab44:	02f4a223          	sw	a5,36(s1)
        printString("Nit kreirana - id: ");
    8000ab48:	00006517          	auipc	a0,0x6
    8000ab4c:	2f050513          	addi	a0,a0,752 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000ab50:	ffffd097          	auipc	ra,0xffffd
    8000ab54:	b5c080e7          	jalr	-1188(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000ab58:	00000613          	li	a2,0
    8000ab5c:	00a00593          	li	a1,10
    8000ab60:	0204a503          	lw	a0,32(s1)
    8000ab64:	ffffd097          	auipc	ra,0xffffd
    8000ab68:	cf8080e7          	jalr	-776(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000ab6c:	00006517          	auipc	a0,0x6
    8000ab70:	e7450513          	addi	a0,a0,-396 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000ab74:	ffffd097          	auipc	ra,0xffffd
    8000ab78:	b38080e7          	jalr	-1224(ra) # 800076ac <_Z11printStringPKc>
    8000ab7c:	02c0006f          	j	8000aba8 <_Z17testDiningSavagesv+0x194>
    8000ab80:	00050913          	mv	s2,a0
    A9(int t):Thread(),id(iden++),type(t){
    8000ab84:	00048513          	mv	a0,s1
    8000ab88:	ffff9097          	auipc	ra,0xffff9
    8000ab8c:	054080e7          	jalr	84(ra) # 80003bdc <_ZN6ThreadD1Ev>
    niz[30] = new A9(1);
    8000ab90:	00048513          	mv	a0,s1
    8000ab94:	ffff9097          	auipc	ra,0xffff9
    8000ab98:	f38080e7          	jalr	-200(ra) # 80003acc <_ZdlPv>
    8000ab9c:	00090513          	mv	a0,s2
    8000aba0:	0000c097          	auipc	ra,0xc
    8000aba4:	228080e7          	jalr	552(ra) # 80016dc8 <_Unwind_Resume>
    8000aba8:	0e99b823          	sd	s1,240(s3)
    for(int i=31;i<XX;i++){
    8000abac:	01f00913          	li	s2,31
    8000abb0:	09c0006f          	j	8000ac4c <_Z17testDiningSavagesv+0x238>
    A9(int t):Thread(),id(iden++),type(t){
    8000abb4:	0000b797          	auipc	a5,0xb
    8000abb8:	c8c78793          	addi	a5,a5,-884 # 80015840 <_ZTV2A9+0x10>
    8000abbc:	00f4b023          	sd	a5,0(s1)
    8000abc0:	0000b717          	auipc	a4,0xb
    8000abc4:	a3c70713          	addi	a4,a4,-1476 # 800155fc <IDdd>
    8000abc8:	01c72783          	lw	a5,28(a4)
    8000abcc:	0017869b          	addiw	a3,a5,1
    8000abd0:	00d72e23          	sw	a3,28(a4)
    8000abd4:	02f4a023          	sw	a5,32(s1)
    8000abd8:	0204a223          	sw	zero,36(s1)
        printString("Nit kreirana - id: ");
    8000abdc:	00006517          	auipc	a0,0x6
    8000abe0:	25c50513          	addi	a0,a0,604 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000abe4:	ffffd097          	auipc	ra,0xffffd
    8000abe8:	ac8080e7          	jalr	-1336(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000abec:	00000613          	li	a2,0
    8000abf0:	00a00593          	li	a1,10
    8000abf4:	0204a503          	lw	a0,32(s1)
    8000abf8:	ffffd097          	auipc	ra,0xffffd
    8000abfc:	c64080e7          	jalr	-924(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000ac00:	00006517          	auipc	a0,0x6
    8000ac04:	de050513          	addi	a0,a0,-544 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000ac08:	ffffd097          	auipc	ra,0xffffd
    8000ac0c:	aa4080e7          	jalr	-1372(ra) # 800076ac <_Z11printStringPKc>
    8000ac10:	02c0006f          	j	8000ac3c <_Z17testDiningSavagesv+0x228>
    8000ac14:	00050913          	mv	s2,a0
    A9(int t):Thread(),id(iden++),type(t){
    8000ac18:	000a0513          	mv	a0,s4
    8000ac1c:	ffff9097          	auipc	ra,0xffff9
    8000ac20:	fc0080e7          	jalr	-64(ra) # 80003bdc <_ZN6ThreadD1Ev>
        niz[i]=new A9(0);
    8000ac24:	00048513          	mv	a0,s1
    8000ac28:	ffff9097          	auipc	ra,0xffff9
    8000ac2c:	ea4080e7          	jalr	-348(ra) # 80003acc <_ZdlPv>
    8000ac30:	00090513          	mv	a0,s2
    8000ac34:	0000c097          	auipc	ra,0xc
    8000ac38:	194080e7          	jalr	404(ra) # 80016dc8 <_Unwind_Resume>
    8000ac3c:	00391793          	slli	a5,s2,0x3
    8000ac40:	00f987b3          	add	a5,s3,a5
    8000ac44:	0097b023          	sd	s1,0(a5)
    for(int i=31;i<XX;i++){
    8000ac48:	0019091b          	addiw	s2,s2,1
    8000ac4c:	03000793          	li	a5,48
    8000ac50:	0327c263          	blt	a5,s2,8000ac74 <_Z17testDiningSavagesv+0x260>
        niz[i]=new A9(0);
    8000ac54:	02800513          	li	a0,40
    8000ac58:	ffff9097          	auipc	ra,0xffff9
    8000ac5c:	e24080e7          	jalr	-476(ra) # 80003a7c <_Znwm>
    8000ac60:	00050493          	mv	s1,a0
    A9(int t):Thread(),id(iden++),type(t){
    8000ac64:	00050a13          	mv	s4,a0
    8000ac68:	ffff9097          	auipc	ra,0xffff9
    8000ac6c:	1f8080e7          	jalr	504(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000ac70:	f45ff06f          	j	8000abb4 <_Z17testDiningSavagesv+0x1a0>
    for(auto nit:niz){
    8000ac74:	18898913          	addi	s2,s3,392
    8000ac78:	00098493          	mv	s1,s3
    8000ac7c:	01248c63          	beq	s1,s2,8000ac94 <_Z17testDiningSavagesv+0x280>
        nit->start();
    8000ac80:	0004b503          	ld	a0,0(s1)
    8000ac84:	ffff9097          	auipc	ra,0xffff9
    8000ac88:	194080e7          	jalr	404(ra) # 80003e18 <_ZN6Thread5startEv>
    for(auto nit:niz){
    8000ac8c:	00848493          	addi	s1,s1,8
    8000ac90:	fedff06f          	j	8000ac7c <_Z17testDiningSavagesv+0x268>
    for(auto nit:niz){
    8000ac94:	00098493          	mv	s1,s3
    8000ac98:	01248e63          	beq	s1,s2,8000acb4 <_Z17testDiningSavagesv+0x2a0>
        nit->join();
    8000ac9c:	0004b503          	ld	a0,0(s1)
    8000aca0:	ffff9097          	auipc	ra,0xffff9
    8000aca4:	26c080e7          	jalr	620(ra) # 80003f0c <_ZN6Thread4joinEv>
    for(auto nit:niz){
    8000aca8:	00848493          	addi	s1,s1,8
    8000acac:	fedff06f          	j	8000ac98 <_Z17testDiningSavagesv+0x284>
    for(auto nit:niz){
    8000acb0:	00898993          	addi	s3,s3,8
    8000acb4:	01298e63          	beq	s3,s2,8000acd0 <_Z17testDiningSavagesv+0x2bc>
    8000acb8:	0009b503          	ld	a0,0(s3)
        delete nit;
    8000acbc:	fe050ae3          	beqz	a0,8000acb0 <_Z17testDiningSavagesv+0x29c>
    8000acc0:	00053783          	ld	a5,0(a0)
    8000acc4:	0087b783          	ld	a5,8(a5)
    8000acc8:	000780e7          	jalr	a5
    8000accc:	fe5ff06f          	j	8000acb0 <_Z17testDiningSavagesv+0x29c>
    printString("TEST 8 - DINING SAVAGE gotov\n");
    8000acd0:	00006517          	auipc	a0,0x6
    8000acd4:	39050513          	addi	a0,a0,912 # 80011060 <CONSOLE_STATUS+0x1050>
    8000acd8:	ffffd097          	auipc	ra,0xffffd
    8000acdc:	9d4080e7          	jalr	-1580(ra) # 800076ac <_Z11printStringPKc>
};
    8000ace0:	fd040113          	addi	sp,s0,-48
    8000ace4:	02813083          	ld	ra,40(sp)
    8000ace8:	02013403          	ld	s0,32(sp)
    8000acec:	01813483          	ld	s1,24(sp)
    8000acf0:	01013903          	ld	s2,16(sp)
    8000acf4:	00813983          	ld	s3,8(sp)
    8000acf8:	00013a03          	ld	s4,0(sp)
    8000acfc:	03010113          	addi	sp,sp,48
    8000ad00:	00008067          	ret
    8000ad04:	00050913          	mv	s2,a0
    8000ad08:	dadff06f          	j	8000aab4 <_Z17testDiningSavagesv+0xa0>
    8000ad0c:	00050913          	mv	s2,a0
    8000ad10:	e81ff06f          	j	8000ab90 <_Z17testDiningSavagesv+0x17c>
    8000ad14:	00050913          	mv	s2,a0
    8000ad18:	f0dff06f          	j	8000ac24 <_Z17testDiningSavagesv+0x210>

000000008000ad1c <_Z15testHungryBirdsv>:
void testHungryBirds(){
    8000ad1c:	fd010113          	addi	sp,sp,-48
    8000ad20:	02113423          	sd	ra,40(sp)
    8000ad24:	02813023          	sd	s0,32(sp)
    8000ad28:	00913c23          	sd	s1,24(sp)
    8000ad2c:	01213823          	sd	s2,16(sp)
    8000ad30:	01313423          	sd	s3,8(sp)
    8000ad34:	01413023          	sd	s4,0(sp)
    8000ad38:	03010413          	addi	s0,sp,48
    A10* niz[BIR];
    8000ad3c:	e7010113          	addi	sp,sp,-400
    8000ad40:	00010913          	mv	s2,sp
    for(int i=0;i<BIR;i++){
    8000ad44:	00000493          	li	s1,0
    8000ad48:	0b00006f          	j	8000adf8 <_Z15testHungryBirdsv+0xdc>
                niz[0]=new A10(0);
    8000ad4c:	02800513          	li	a0,40
    8000ad50:	ffff9097          	auipc	ra,0xffff9
    8000ad54:	d2c080e7          	jalr	-724(ra) # 80003a7c <_Znwm>
    8000ad58:	00050993          	mv	s3,a0
    A10(int t):Thread(),id(num++),type(t){
    8000ad5c:	00050a13          	mv	s4,a0
    8000ad60:	ffff9097          	auipc	ra,0xffff9
    8000ad64:	100080e7          	jalr	256(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000ad68:	0000b797          	auipc	a5,0xb
    8000ad6c:	b0078793          	addi	a5,a5,-1280 # 80015868 <_ZTV3A10+0x10>
    8000ad70:	00f9b023          	sd	a5,0(s3)
    8000ad74:	0000b717          	auipc	a4,0xb
    8000ad78:	88870713          	addi	a4,a4,-1912 # 800155fc <IDdd>
    8000ad7c:	02072783          	lw	a5,32(a4)
    8000ad80:	0017869b          	addiw	a3,a5,1
    8000ad84:	02d72023          	sw	a3,32(a4)
    8000ad88:	02f9a023          	sw	a5,32(s3)
    8000ad8c:	0209a223          	sw	zero,36(s3)
        printString("Nit kreirana - id: ");
    8000ad90:	00006517          	auipc	a0,0x6
    8000ad94:	0a850513          	addi	a0,a0,168 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000ad98:	ffffd097          	auipc	ra,0xffffd
    8000ad9c:	914080e7          	jalr	-1772(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000ada0:	00000613          	li	a2,0
    8000ada4:	00a00593          	li	a1,10
    8000ada8:	0209a503          	lw	a0,32(s3)
    8000adac:	ffffd097          	auipc	ra,0xffffd
    8000adb0:	ab0080e7          	jalr	-1360(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000adb4:	00006517          	auipc	a0,0x6
    8000adb8:	c2c50513          	addi	a0,a0,-980 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000adbc:	ffffd097          	auipc	ra,0xffffd
    8000adc0:	8f0080e7          	jalr	-1808(ra) # 800076ac <_Z11printStringPKc>
    8000adc4:	02c0006f          	j	8000adf0 <_Z15testHungryBirdsv+0xd4>
    8000adc8:	00050493          	mv	s1,a0
    A10(int t):Thread(),id(num++),type(t){
    8000adcc:	000a0513          	mv	a0,s4
    8000add0:	ffff9097          	auipc	ra,0xffff9
    8000add4:	e0c080e7          	jalr	-500(ra) # 80003bdc <_ZN6ThreadD1Ev>
                niz[0]=new A10(0);
    8000add8:	00098513          	mv	a0,s3
    8000addc:	ffff9097          	auipc	ra,0xffff9
    8000ade0:	cf0080e7          	jalr	-784(ra) # 80003acc <_ZdlPv>
    8000ade4:	00048513          	mv	a0,s1
    8000ade8:	0000c097          	auipc	ra,0xc
    8000adec:	fe0080e7          	jalr	-32(ra) # 80016dc8 <_Unwind_Resume>
    8000adf0:	01393023          	sd	s3,0(s2)
    for(int i=0;i<BIR;i++){
    8000adf4:	0014849b          	addiw	s1,s1,1
    8000adf8:	03100793          	li	a5,49
    8000adfc:	2297c863          	blt	a5,s1,8000b02c <_Z15testHungryBirdsv+0x310>
        switch (i) {
    8000ae00:	00100793          	li	a5,1
    8000ae04:	02f48863          	beq	s1,a5,8000ae34 <_Z15testHungryBirdsv+0x118>
    8000ae08:	01f00793          	li	a5,31
    8000ae0c:	0cf48c63          	beq	s1,a5,8000aee4 <_Z15testHungryBirdsv+0x1c8>
    8000ae10:	f2048ee3          	beqz	s1,8000ad4c <_Z15testHungryBirdsv+0x30>
                niz[i] = new A10(0);
    8000ae14:	02800513          	li	a0,40
    8000ae18:	ffff9097          	auipc	ra,0xffff9
    8000ae1c:	c64080e7          	jalr	-924(ra) # 80003a7c <_Znwm>
    8000ae20:	00050993          	mv	s3,a0
    A10(int t):Thread(),id(num++),type(t){
    8000ae24:	00050a13          	mv	s4,a0
    8000ae28:	ffff9097          	auipc	ra,0xffff9
    8000ae2c:	038080e7          	jalr	56(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000ae30:	1640006f          	j	8000af94 <_Z15testHungryBirdsv+0x278>
                niz[1] =new A10(1);
    8000ae34:	02800513          	li	a0,40
    8000ae38:	ffff9097          	auipc	ra,0xffff9
    8000ae3c:	c44080e7          	jalr	-956(ra) # 80003a7c <_Znwm>
    8000ae40:	00050993          	mv	s3,a0
    A10(int t):Thread(),id(num++),type(t){
    8000ae44:	00050a13          	mv	s4,a0
    8000ae48:	ffff9097          	auipc	ra,0xffff9
    8000ae4c:	018080e7          	jalr	24(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000ae50:	0000b797          	auipc	a5,0xb
    8000ae54:	a1878793          	addi	a5,a5,-1512 # 80015868 <_ZTV3A10+0x10>
    8000ae58:	00f9b023          	sd	a5,0(s3)
    8000ae5c:	0000a717          	auipc	a4,0xa
    8000ae60:	7a070713          	addi	a4,a4,1952 # 800155fc <IDdd>
    8000ae64:	02072783          	lw	a5,32(a4)
    8000ae68:	0017869b          	addiw	a3,a5,1
    8000ae6c:	02d72023          	sw	a3,32(a4)
    8000ae70:	02f9a023          	sw	a5,32(s3)
    8000ae74:	00100793          	li	a5,1
    8000ae78:	02f9a223          	sw	a5,36(s3)
        printString("Nit kreirana - id: ");
    8000ae7c:	00006517          	auipc	a0,0x6
    8000ae80:	fbc50513          	addi	a0,a0,-68 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000ae84:	ffffd097          	auipc	ra,0xffffd
    8000ae88:	828080e7          	jalr	-2008(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000ae8c:	00000613          	li	a2,0
    8000ae90:	00a00593          	li	a1,10
    8000ae94:	0209a503          	lw	a0,32(s3)
    8000ae98:	ffffd097          	auipc	ra,0xffffd
    8000ae9c:	9c4080e7          	jalr	-1596(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000aea0:	00006517          	auipc	a0,0x6
    8000aea4:	b4050513          	addi	a0,a0,-1216 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000aea8:	ffffd097          	auipc	ra,0xffffd
    8000aeac:	804080e7          	jalr	-2044(ra) # 800076ac <_Z11printStringPKc>
    8000aeb0:	02c0006f          	j	8000aedc <_Z15testHungryBirdsv+0x1c0>
    8000aeb4:	00050493          	mv	s1,a0
    A10(int t):Thread(),id(num++),type(t){
    8000aeb8:	000a0513          	mv	a0,s4
    8000aebc:	ffff9097          	auipc	ra,0xffff9
    8000aec0:	d20080e7          	jalr	-736(ra) # 80003bdc <_ZN6ThreadD1Ev>
                niz[1] =new A10(1);
    8000aec4:	00098513          	mv	a0,s3
    8000aec8:	ffff9097          	auipc	ra,0xffff9
    8000aecc:	c04080e7          	jalr	-1020(ra) # 80003acc <_ZdlPv>
    8000aed0:	00048513          	mv	a0,s1
    8000aed4:	0000c097          	auipc	ra,0xc
    8000aed8:	ef4080e7          	jalr	-268(ra) # 80016dc8 <_Unwind_Resume>
    8000aedc:	01393423          	sd	s3,8(s2)
                break;
    8000aee0:	f15ff06f          	j	8000adf4 <_Z15testHungryBirdsv+0xd8>
                niz[31] = new A10(1);
    8000aee4:	02800513          	li	a0,40
    8000aee8:	ffff9097          	auipc	ra,0xffff9
    8000aeec:	b94080e7          	jalr	-1132(ra) # 80003a7c <_Znwm>
    8000aef0:	00050993          	mv	s3,a0
    A10(int t):Thread(),id(num++),type(t){
    8000aef4:	00050a13          	mv	s4,a0
    8000aef8:	ffff9097          	auipc	ra,0xffff9
    8000aefc:	f68080e7          	jalr	-152(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000af00:	0000b797          	auipc	a5,0xb
    8000af04:	96878793          	addi	a5,a5,-1688 # 80015868 <_ZTV3A10+0x10>
    8000af08:	00f9b023          	sd	a5,0(s3)
    8000af0c:	0000a717          	auipc	a4,0xa
    8000af10:	6f070713          	addi	a4,a4,1776 # 800155fc <IDdd>
    8000af14:	02072783          	lw	a5,32(a4)
    8000af18:	0017869b          	addiw	a3,a5,1
    8000af1c:	02d72023          	sw	a3,32(a4)
    8000af20:	02f9a023          	sw	a5,32(s3)
    8000af24:	00100793          	li	a5,1
    8000af28:	02f9a223          	sw	a5,36(s3)
        printString("Nit kreirana - id: ");
    8000af2c:	00006517          	auipc	a0,0x6
    8000af30:	f0c50513          	addi	a0,a0,-244 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000af34:	ffffc097          	auipc	ra,0xffffc
    8000af38:	778080e7          	jalr	1912(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000af3c:	00000613          	li	a2,0
    8000af40:	00a00593          	li	a1,10
    8000af44:	0209a503          	lw	a0,32(s3)
    8000af48:	ffffd097          	auipc	ra,0xffffd
    8000af4c:	914080e7          	jalr	-1772(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000af50:	00006517          	auipc	a0,0x6
    8000af54:	a9050513          	addi	a0,a0,-1392 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000af58:	ffffc097          	auipc	ra,0xffffc
    8000af5c:	754080e7          	jalr	1876(ra) # 800076ac <_Z11printStringPKc>
    8000af60:	02c0006f          	j	8000af8c <_Z15testHungryBirdsv+0x270>
    8000af64:	00050493          	mv	s1,a0
    A10(int t):Thread(),id(num++),type(t){
    8000af68:	000a0513          	mv	a0,s4
    8000af6c:	ffff9097          	auipc	ra,0xffff9
    8000af70:	c70080e7          	jalr	-912(ra) # 80003bdc <_ZN6ThreadD1Ev>
                niz[31] = new A10(1);
    8000af74:	00098513          	mv	a0,s3
    8000af78:	ffff9097          	auipc	ra,0xffff9
    8000af7c:	b54080e7          	jalr	-1196(ra) # 80003acc <_ZdlPv>
    8000af80:	00048513          	mv	a0,s1
    8000af84:	0000c097          	auipc	ra,0xc
    8000af88:	e44080e7          	jalr	-444(ra) # 80016dc8 <_Unwind_Resume>
    8000af8c:	0f393c23          	sd	s3,248(s2)
                break;
    8000af90:	e65ff06f          	j	8000adf4 <_Z15testHungryBirdsv+0xd8>
    A10(int t):Thread(),id(num++),type(t){
    8000af94:	0000b797          	auipc	a5,0xb
    8000af98:	8d478793          	addi	a5,a5,-1836 # 80015868 <_ZTV3A10+0x10>
    8000af9c:	00f9b023          	sd	a5,0(s3)
    8000afa0:	0000a717          	auipc	a4,0xa
    8000afa4:	65c70713          	addi	a4,a4,1628 # 800155fc <IDdd>
    8000afa8:	02072783          	lw	a5,32(a4)
    8000afac:	0017869b          	addiw	a3,a5,1
    8000afb0:	02d72023          	sw	a3,32(a4)
    8000afb4:	02f9a023          	sw	a5,32(s3)
    8000afb8:	0209a223          	sw	zero,36(s3)
        printString("Nit kreirana - id: ");
    8000afbc:	00006517          	auipc	a0,0x6
    8000afc0:	e7c50513          	addi	a0,a0,-388 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000afc4:	ffffc097          	auipc	ra,0xffffc
    8000afc8:	6e8080e7          	jalr	1768(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000afcc:	00000613          	li	a2,0
    8000afd0:	00a00593          	li	a1,10
    8000afd4:	0209a503          	lw	a0,32(s3)
    8000afd8:	ffffd097          	auipc	ra,0xffffd
    8000afdc:	884080e7          	jalr	-1916(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000afe0:	00006517          	auipc	a0,0x6
    8000afe4:	a0050513          	addi	a0,a0,-1536 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000afe8:	ffffc097          	auipc	ra,0xffffc
    8000afec:	6c4080e7          	jalr	1732(ra) # 800076ac <_Z11printStringPKc>
    8000aff0:	02c0006f          	j	8000b01c <_Z15testHungryBirdsv+0x300>
    8000aff4:	00050493          	mv	s1,a0
    A10(int t):Thread(),id(num++),type(t){
    8000aff8:	000a0513          	mv	a0,s4
    8000affc:	ffff9097          	auipc	ra,0xffff9
    8000b000:	be0080e7          	jalr	-1056(ra) # 80003bdc <_ZN6ThreadD1Ev>
                niz[i] = new A10(0);
    8000b004:	00098513          	mv	a0,s3
    8000b008:	ffff9097          	auipc	ra,0xffff9
    8000b00c:	ac4080e7          	jalr	-1340(ra) # 80003acc <_ZdlPv>
    8000b010:	00048513          	mv	a0,s1
    8000b014:	0000c097          	auipc	ra,0xc
    8000b018:	db4080e7          	jalr	-588(ra) # 80016dc8 <_Unwind_Resume>
    8000b01c:	00349793          	slli	a5,s1,0x3
    8000b020:	00f907b3          	add	a5,s2,a5
    8000b024:	0137b023          	sd	s3,0(a5)
                break;
    8000b028:	dcdff06f          	j	8000adf4 <_Z15testHungryBirdsv+0xd8>
    for(auto nit:niz){
    8000b02c:	19090993          	addi	s3,s2,400
    8000b030:	00090493          	mv	s1,s2
    8000b034:	01348c63          	beq	s1,s3,8000b04c <_Z15testHungryBirdsv+0x330>
        nit->start();
    8000b038:	0004b503          	ld	a0,0(s1)
    8000b03c:	ffff9097          	auipc	ra,0xffff9
    8000b040:	ddc080e7          	jalr	-548(ra) # 80003e18 <_ZN6Thread5startEv>
    for(auto nit:niz){
    8000b044:	00848493          	addi	s1,s1,8
    8000b048:	fedff06f          	j	8000b034 <_Z15testHungryBirdsv+0x318>
    for(auto nit:niz){
    8000b04c:	00090493          	mv	s1,s2
    8000b050:	01348e63          	beq	s1,s3,8000b06c <_Z15testHungryBirdsv+0x350>
        nit->join();
    8000b054:	0004b503          	ld	a0,0(s1)
    8000b058:	ffff9097          	auipc	ra,0xffff9
    8000b05c:	eb4080e7          	jalr	-332(ra) # 80003f0c <_ZN6Thread4joinEv>
    for(auto nit:niz){
    8000b060:	00848493          	addi	s1,s1,8
    8000b064:	fedff06f          	j	8000b050 <_Z15testHungryBirdsv+0x334>
    for(auto nit:niz){
    8000b068:	00890913          	addi	s2,s2,8
    8000b06c:	01390e63          	beq	s2,s3,8000b088 <_Z15testHungryBirdsv+0x36c>
    8000b070:	00093503          	ld	a0,0(s2)
        delete nit;
    8000b074:	fe050ae3          	beqz	a0,8000b068 <_Z15testHungryBirdsv+0x34c>
    8000b078:	00053783          	ld	a5,0(a0)
    8000b07c:	0087b783          	ld	a5,8(a5)
    8000b080:	000780e7          	jalr	a5
    8000b084:	fe5ff06f          	j	8000b068 <_Z15testHungryBirdsv+0x34c>
    printString("TEST 8 - HUNGRY BIRDS - gotov\n");
    8000b088:	00006517          	auipc	a0,0x6
    8000b08c:	ff850513          	addi	a0,a0,-8 # 80011080 <CONSOLE_STATUS+0x1070>
    8000b090:	ffffc097          	auipc	ra,0xffffc
    8000b094:	61c080e7          	jalr	1564(ra) # 800076ac <_Z11printStringPKc>
}
    8000b098:	fd040113          	addi	sp,s0,-48
    8000b09c:	02813083          	ld	ra,40(sp)
    8000b0a0:	02013403          	ld	s0,32(sp)
    8000b0a4:	01813483          	ld	s1,24(sp)
    8000b0a8:	01013903          	ld	s2,16(sp)
    8000b0ac:	00813983          	ld	s3,8(sp)
    8000b0b0:	00013a03          	ld	s4,0(sp)
    8000b0b4:	03010113          	addi	sp,sp,48
    8000b0b8:	00008067          	ret
    8000b0bc:	00050493          	mv	s1,a0
    8000b0c0:	d19ff06f          	j	8000add8 <_Z15testHungryBirdsv+0xbc>
    8000b0c4:	00050493          	mv	s1,a0
    8000b0c8:	dfdff06f          	j	8000aec4 <_Z15testHungryBirdsv+0x1a8>
    8000b0cc:	00050493          	mv	s1,a0
    8000b0d0:	ea5ff06f          	j	8000af74 <_Z15testHungryBirdsv+0x258>
    8000b0d4:	00050493          	mv	s1,a0
    8000b0d8:	f2dff06f          	j	8000b004 <_Z15testHungryBirdsv+0x2e8>

000000008000b0dc <_Z11testBeeBearv>:
void testBeeBear() {
    8000b0dc:	fd010113          	addi	sp,sp,-48
    8000b0e0:	02113423          	sd	ra,40(sp)
    8000b0e4:	02813023          	sd	s0,32(sp)
    8000b0e8:	00913c23          	sd	s1,24(sp)
    8000b0ec:	01213823          	sd	s2,16(sp)
    8000b0f0:	01313423          	sd	s3,8(sp)
    8000b0f4:	01413023          	sd	s4,0(sp)
    8000b0f8:	03010413          	addi	s0,sp,48
    A11* niz[animals];
    8000b0fc:	e7010113          	addi	sp,sp,-400
    8000b100:	00010913          	mv	s2,sp
    for(int i=0;i<animals;i++){
    8000b104:	00000993          	li	s3,0
    8000b108:	14c0006f          	j	8000b254 <_Z11testBeeBearv+0x178>
                niz[5] =new A11(1);
    8000b10c:	02800513          	li	a0,40
    8000b110:	ffff9097          	auipc	ra,0xffff9
    8000b114:	96c080e7          	jalr	-1684(ra) # 80003a7c <_Znwm>
    8000b118:	00050493          	mv	s1,a0
    A11(int t):Thread(),id(number++),type(t){
    8000b11c:	00050a13          	mv	s4,a0
    8000b120:	ffff9097          	auipc	ra,0xffff9
    8000b124:	d40080e7          	jalr	-704(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000b128:	0000a797          	auipc	a5,0xa
    8000b12c:	76878793          	addi	a5,a5,1896 # 80015890 <_ZTV3A11+0x10>
    8000b130:	00f4b023          	sd	a5,0(s1)
    8000b134:	0000a717          	auipc	a4,0xa
    8000b138:	4c870713          	addi	a4,a4,1224 # 800155fc <IDdd>
    8000b13c:	02472783          	lw	a5,36(a4)
    8000b140:	0017869b          	addiw	a3,a5,1
    8000b144:	02d72223          	sw	a3,36(a4)
    8000b148:	02f4a023          	sw	a5,32(s1)
    8000b14c:	00100793          	li	a5,1
    8000b150:	02f4a223          	sw	a5,36(s1)
        printString("Nit kreirana - id: ");
    8000b154:	00006517          	auipc	a0,0x6
    8000b158:	ce450513          	addi	a0,a0,-796 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000b15c:	ffffc097          	auipc	ra,0xffffc
    8000b160:	550080e7          	jalr	1360(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000b164:	00000613          	li	a2,0
    8000b168:	00a00593          	li	a1,10
    8000b16c:	0204a503          	lw	a0,32(s1)
    8000b170:	ffffc097          	auipc	ra,0xffffc
    8000b174:	6ec080e7          	jalr	1772(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000b178:	00006517          	auipc	a0,0x6
    8000b17c:	86850513          	addi	a0,a0,-1944 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000b180:	ffffc097          	auipc	ra,0xffffc
    8000b184:	52c080e7          	jalr	1324(ra) # 800076ac <_Z11printStringPKc>
    8000b188:	02c0006f          	j	8000b1b4 <_Z11testBeeBearv+0xd8>
    8000b18c:	00050913          	mv	s2,a0
    A11(int t):Thread(),id(number++),type(t){
    8000b190:	000a0513          	mv	a0,s4
    8000b194:	ffff9097          	auipc	ra,0xffff9
    8000b198:	a48080e7          	jalr	-1464(ra) # 80003bdc <_ZN6ThreadD1Ev>
                niz[5] =new A11(1);
    8000b19c:	00048513          	mv	a0,s1
    8000b1a0:	ffff9097          	auipc	ra,0xffff9
    8000b1a4:	92c080e7          	jalr	-1748(ra) # 80003acc <_ZdlPv>
    8000b1a8:	00090513          	mv	a0,s2
    8000b1ac:	0000c097          	auipc	ra,0xc
    8000b1b0:	c1c080e7          	jalr	-996(ra) # 80016dc8 <_Unwind_Resume>
    8000b1b4:	02993423          	sd	s1,40(s2)
                break;
    8000b1b8:	0980006f          	j	8000b250 <_Z11testBeeBearv+0x174>
    A11(int t):Thread(),id(number++),type(t){
    8000b1bc:	0000a797          	auipc	a5,0xa
    8000b1c0:	6d478793          	addi	a5,a5,1748 # 80015890 <_ZTV3A11+0x10>
    8000b1c4:	00f4b023          	sd	a5,0(s1)
    8000b1c8:	0000a717          	auipc	a4,0xa
    8000b1cc:	43470713          	addi	a4,a4,1076 # 800155fc <IDdd>
    8000b1d0:	02472783          	lw	a5,36(a4)
    8000b1d4:	0017869b          	addiw	a3,a5,1
    8000b1d8:	02d72223          	sw	a3,36(a4)
    8000b1dc:	02f4a023          	sw	a5,32(s1)
    8000b1e0:	0204a223          	sw	zero,36(s1)
        printString("Nit kreirana - id: ");
    8000b1e4:	00006517          	auipc	a0,0x6
    8000b1e8:	c5450513          	addi	a0,a0,-940 # 80010e38 <CONSOLE_STATUS+0xe28>
    8000b1ec:	ffffc097          	auipc	ra,0xffffc
    8000b1f0:	4c0080e7          	jalr	1216(ra) # 800076ac <_Z11printStringPKc>
        printInt(id);
    8000b1f4:	00000613          	li	a2,0
    8000b1f8:	00a00593          	li	a1,10
    8000b1fc:	0204a503          	lw	a0,32(s1)
    8000b200:	ffffc097          	auipc	ra,0xffffc
    8000b204:	65c080e7          	jalr	1628(ra) # 8000785c <_Z8printIntiii>
        printString("\n");
    8000b208:	00005517          	auipc	a0,0x5
    8000b20c:	7d850513          	addi	a0,a0,2008 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000b210:	ffffc097          	auipc	ra,0xffffc
    8000b214:	49c080e7          	jalr	1180(ra) # 800076ac <_Z11printStringPKc>
    8000b218:	02c0006f          	j	8000b244 <_Z11testBeeBearv+0x168>
    8000b21c:	00050913          	mv	s2,a0
    A11(int t):Thread(),id(number++),type(t){
    8000b220:	000a0513          	mv	a0,s4
    8000b224:	ffff9097          	auipc	ra,0xffff9
    8000b228:	9b8080e7          	jalr	-1608(ra) # 80003bdc <_ZN6ThreadD1Ev>
                niz[i] = new A11(0);
    8000b22c:	00048513          	mv	a0,s1
    8000b230:	ffff9097          	auipc	ra,0xffff9
    8000b234:	89c080e7          	jalr	-1892(ra) # 80003acc <_ZdlPv>
    8000b238:	00090513          	mv	a0,s2
    8000b23c:	0000c097          	auipc	ra,0xc
    8000b240:	b8c080e7          	jalr	-1140(ra) # 80016dc8 <_Unwind_Resume>
    8000b244:	00399793          	slli	a5,s3,0x3
    8000b248:	00f907b3          	add	a5,s2,a5
    8000b24c:	0097b023          	sd	s1,0(a5)
    for(int i=0;i<animals;i++){
    8000b250:	0019899b          	addiw	s3,s3,1
    8000b254:	03100793          	li	a5,49
    8000b258:	0337c663          	blt	a5,s3,8000b284 <_Z11testBeeBearv+0x1a8>
        switch (i) {
    8000b25c:	00500793          	li	a5,5
    8000b260:	eaf986e3          	beq	s3,a5,8000b10c <_Z11testBeeBearv+0x30>
                niz[i] = new A11(0);
    8000b264:	02800513          	li	a0,40
    8000b268:	ffff9097          	auipc	ra,0xffff9
    8000b26c:	814080e7          	jalr	-2028(ra) # 80003a7c <_Znwm>
    8000b270:	00050493          	mv	s1,a0
    A11(int t):Thread(),id(number++),type(t){
    8000b274:	00050a13          	mv	s4,a0
    8000b278:	ffff9097          	auipc	ra,0xffff9
    8000b27c:	be8080e7          	jalr	-1048(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000b280:	f3dff06f          	j	8000b1bc <_Z11testBeeBearv+0xe0>
    for(auto nit:niz){
    8000b284:	19090993          	addi	s3,s2,400
    8000b288:	00090493          	mv	s1,s2
    8000b28c:	01348c63          	beq	s1,s3,8000b2a4 <_Z11testBeeBearv+0x1c8>
        nit->start();
    8000b290:	0004b503          	ld	a0,0(s1)
    8000b294:	ffff9097          	auipc	ra,0xffff9
    8000b298:	b84080e7          	jalr	-1148(ra) # 80003e18 <_ZN6Thread5startEv>
    for(auto nit:niz){
    8000b29c:	00848493          	addi	s1,s1,8
    8000b2a0:	fedff06f          	j	8000b28c <_Z11testBeeBearv+0x1b0>
    for(auto nit:niz){
    8000b2a4:	00090493          	mv	s1,s2
    8000b2a8:	01348e63          	beq	s1,s3,8000b2c4 <_Z11testBeeBearv+0x1e8>
        nit->join();
    8000b2ac:	0004b503          	ld	a0,0(s1)
    8000b2b0:	ffff9097          	auipc	ra,0xffff9
    8000b2b4:	c5c080e7          	jalr	-932(ra) # 80003f0c <_ZN6Thread4joinEv>
    for(auto nit:niz){
    8000b2b8:	00848493          	addi	s1,s1,8
    8000b2bc:	fedff06f          	j	8000b2a8 <_Z11testBeeBearv+0x1cc>
    for(auto nit:niz){
    8000b2c0:	00890913          	addi	s2,s2,8
    8000b2c4:	01390e63          	beq	s2,s3,8000b2e0 <_Z11testBeeBearv+0x204>
    8000b2c8:	00093503          	ld	a0,0(s2)
        delete nit;
    8000b2cc:	fe050ae3          	beqz	a0,8000b2c0 <_Z11testBeeBearv+0x1e4>
    8000b2d0:	00053783          	ld	a5,0(a0)
    8000b2d4:	0087b783          	ld	a5,8(a5)
    8000b2d8:	000780e7          	jalr	a5
    8000b2dc:	fe5ff06f          	j	8000b2c0 <_Z11testBeeBearv+0x1e4>
    printString("TEST 8 - HUNGRY BIRDS - gotov\n");
    8000b2e0:	00006517          	auipc	a0,0x6
    8000b2e4:	da050513          	addi	a0,a0,-608 # 80011080 <CONSOLE_STATUS+0x1070>
    8000b2e8:	ffffc097          	auipc	ra,0xffffc
    8000b2ec:	3c4080e7          	jalr	964(ra) # 800076ac <_Z11printStringPKc>
}
    8000b2f0:	fd040113          	addi	sp,s0,-48
    8000b2f4:	02813083          	ld	ra,40(sp)
    8000b2f8:	02013403          	ld	s0,32(sp)
    8000b2fc:	01813483          	ld	s1,24(sp)
    8000b300:	01013903          	ld	s2,16(sp)
    8000b304:	00813983          	ld	s3,8(sp)
    8000b308:	00013a03          	ld	s4,0(sp)
    8000b30c:	03010113          	addi	sp,sp,48
    8000b310:	00008067          	ret
    8000b314:	00050913          	mv	s2,a0
    8000b318:	e85ff06f          	j	8000b19c <_Z11testBeeBearv+0xc0>
    8000b31c:	00050913          	mv	s2,a0
    8000b320:	f0dff06f          	j	8000b22c <_Z11testBeeBearv+0x150>

000000008000b324 <_Z21testSemaforSaZetonimav>:
void testSemaforSaZetonima() {
    8000b324:	fe010113          	addi	sp,sp,-32
    8000b328:	00113c23          	sd	ra,24(sp)
    8000b32c:	00813823          	sd	s0,16(sp)
    8000b330:	00913423          	sd	s1,8(sp)
    8000b334:	01213023          	sd	s2,0(sp)
    8000b338:	02010413          	addi	s0,sp,32
    sem2 = new Semaphore(5);
    8000b33c:	01000513          	li	a0,16
    8000b340:	ffff8097          	auipc	ra,0xffff8
    8000b344:	73c080e7          	jalr	1852(ra) # 80003a7c <_Znwm>
    8000b348:	00050493          	mv	s1,a0
    8000b34c:	00500593          	li	a1,5
    8000b350:	ffff9097          	auipc	ra,0xffff9
    8000b354:	930080e7          	jalr	-1744(ra) # 80003c80 <_ZN9SemaphoreC1Ej>
    8000b358:	0000b797          	auipc	a5,0xb
    8000b35c:	9697b823          	sd	s1,-1680(a5) # 80015cc8 <sem2>
    sem3 = new Semaphore(5);
    8000b360:	01000513          	li	a0,16
    8000b364:	ffff8097          	auipc	ra,0xffff8
    8000b368:	718080e7          	jalr	1816(ra) # 80003a7c <_Znwm>
    8000b36c:	00050493          	mv	s1,a0
    8000b370:	00500593          	li	a1,5
    8000b374:	ffff9097          	auipc	ra,0xffff9
    8000b378:	90c080e7          	jalr	-1780(ra) # 80003c80 <_ZN9SemaphoreC1Ej>
    8000b37c:	0000b797          	auipc	a5,0xb
    8000b380:	9497ba23          	sd	s1,-1708(a5) # 80015cd0 <sem3>
    A12* a = new A12();
    8000b384:	02000513          	li	a0,32
    8000b388:	ffff8097          	auipc	ra,0xffff8
    8000b38c:	6f4080e7          	jalr	1780(ra) # 80003a7c <_Znwm>
    8000b390:	00050913          	mv	s2,a0
    A12():Thread(){
    8000b394:	ffff9097          	auipc	ra,0xffff9
    8000b398:	acc080e7          	jalr	-1332(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000b39c:	0000a797          	auipc	a5,0xa
    8000b3a0:	51c78793          	addi	a5,a5,1308 # 800158b8 <_ZTV3A12+0x10>
    8000b3a4:	00f93023          	sd	a5,0(s2)
    B12* b = new B12();
    8000b3a8:	02000513          	li	a0,32
    8000b3ac:	ffff8097          	auipc	ra,0xffff8
    8000b3b0:	6d0080e7          	jalr	1744(ra) # 80003a7c <_Znwm>
    8000b3b4:	00050493          	mv	s1,a0
    B12():Thread(){
    8000b3b8:	ffff9097          	auipc	ra,0xffff9
    8000b3bc:	aa8080e7          	jalr	-1368(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000b3c0:	0000a797          	auipc	a5,0xa
    8000b3c4:	52078793          	addi	a5,a5,1312 # 800158e0 <_ZTV3B12+0x10>
    8000b3c8:	00f4b023          	sd	a5,0(s1)
    a->start();
    8000b3cc:	00090513          	mv	a0,s2
    8000b3d0:	ffff9097          	auipc	ra,0xffff9
    8000b3d4:	a48080e7          	jalr	-1464(ra) # 80003e18 <_ZN6Thread5startEv>
    b->start();
    8000b3d8:	00048513          	mv	a0,s1
    8000b3dc:	ffff9097          	auipc	ra,0xffff9
    8000b3e0:	a3c080e7          	jalr	-1476(ra) # 80003e18 <_ZN6Thread5startEv>
    a->join();
    8000b3e4:	00090513          	mv	a0,s2
    8000b3e8:	ffff9097          	auipc	ra,0xffff9
    8000b3ec:	b24080e7          	jalr	-1244(ra) # 80003f0c <_ZN6Thread4joinEv>
    b->join();
    8000b3f0:	00048513          	mv	a0,s1
    8000b3f4:	ffff9097          	auipc	ra,0xffff9
    8000b3f8:	b18080e7          	jalr	-1256(ra) # 80003f0c <_ZN6Thread4joinEv>
    delete a;
    8000b3fc:	00090a63          	beqz	s2,8000b410 <_Z21testSemaforSaZetonimav+0xec>
    8000b400:	00093783          	ld	a5,0(s2)
    8000b404:	0087b783          	ld	a5,8(a5)
    8000b408:	00090513          	mv	a0,s2
    8000b40c:	000780e7          	jalr	a5
    delete b;
    8000b410:	00048a63          	beqz	s1,8000b424 <_Z21testSemaforSaZetonimav+0x100>
    8000b414:	0004b783          	ld	a5,0(s1)
    8000b418:	0087b783          	ld	a5,8(a5)
    8000b41c:	00048513          	mv	a0,s1
    8000b420:	000780e7          	jalr	a5
};
    8000b424:	01813083          	ld	ra,24(sp)
    8000b428:	01013403          	ld	s0,16(sp)
    8000b42c:	00813483          	ld	s1,8(sp)
    8000b430:	00013903          	ld	s2,0(sp)
    8000b434:	02010113          	addi	sp,sp,32
    8000b438:	00008067          	ret
    8000b43c:	00050913          	mv	s2,a0
    sem2 = new Semaphore(5);
    8000b440:	00048513          	mv	a0,s1
    8000b444:	ffff8097          	auipc	ra,0xffff8
    8000b448:	688080e7          	jalr	1672(ra) # 80003acc <_ZdlPv>
    8000b44c:	00090513          	mv	a0,s2
    8000b450:	0000c097          	auipc	ra,0xc
    8000b454:	978080e7          	jalr	-1672(ra) # 80016dc8 <_Unwind_Resume>
    8000b458:	00050913          	mv	s2,a0
    sem3 = new Semaphore(5);
    8000b45c:	00048513          	mv	a0,s1
    8000b460:	ffff8097          	auipc	ra,0xffff8
    8000b464:	66c080e7          	jalr	1644(ra) # 80003acc <_ZdlPv>
    8000b468:	00090513          	mv	a0,s2
    8000b46c:	0000c097          	auipc	ra,0xc
    8000b470:	95c080e7          	jalr	-1700(ra) # 80016dc8 <_Unwind_Resume>
    8000b474:	00050493          	mv	s1,a0
    A12* a = new A12();
    8000b478:	00090513          	mv	a0,s2
    8000b47c:	ffff8097          	auipc	ra,0xffff8
    8000b480:	650080e7          	jalr	1616(ra) # 80003acc <_ZdlPv>
    8000b484:	00048513          	mv	a0,s1
    8000b488:	0000c097          	auipc	ra,0xc
    8000b48c:	940080e7          	jalr	-1728(ra) # 80016dc8 <_Unwind_Resume>
    8000b490:	00050913          	mv	s2,a0
    B12* b = new B12();
    8000b494:	00048513          	mv	a0,s1
    8000b498:	ffff8097          	auipc	ra,0xffff8
    8000b49c:	634080e7          	jalr	1588(ra) # 80003acc <_ZdlPv>
    8000b4a0:	00090513          	mv	a0,s2
    8000b4a4:	0000c097          	auipc	ra,0xc
    8000b4a8:	924080e7          	jalr	-1756(ra) # 80016dc8 <_Unwind_Resume>

000000008000b4ac <_Z8testPingv>:


void testPing(){
    8000b4ac:	fd010113          	addi	sp,sp,-48
    8000b4b0:	02113423          	sd	ra,40(sp)
    8000b4b4:	02813023          	sd	s0,32(sp)
    8000b4b8:	00913c23          	sd	s1,24(sp)
    8000b4bc:	01213823          	sd	s2,16(sp)
    8000b4c0:	01313423          	sd	s3,8(sp)
    8000b4c4:	03010413          	addi	s0,sp,48
    //Thread *threads[3];


    A13* a1=new A13();
    8000b4c8:	02800513          	li	a0,40
    8000b4cc:	ffff8097          	auipc	ra,0xffff8
    8000b4d0:	5b0080e7          	jalr	1456(ra) # 80003a7c <_Znwm>
    8000b4d4:	00050913          	mv	s2,a0
    A13() : Thread() {};
    8000b4d8:	ffff9097          	auipc	ra,0xffff9
    8000b4dc:	988080e7          	jalr	-1656(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000b4e0:	0000a797          	auipc	a5,0xa
    8000b4e4:	42878793          	addi	a5,a5,1064 # 80015908 <_ZTV3A13+0x10>
    8000b4e8:	00f93023          	sd	a5,0(s2)
    printString("A kreiran\n");
    8000b4ec:	00006517          	auipc	a0,0x6
    8000b4f0:	bb450513          	addi	a0,a0,-1100 # 800110a0 <CONSOLE_STATUS+0x1090>
    8000b4f4:	ffffc097          	auipc	ra,0xffffc
    8000b4f8:	1b8080e7          	jalr	440(ra) # 800076ac <_Z11printStringPKc>
    B13* b1=new B13();
    8000b4fc:	02000513          	li	a0,32
    8000b500:	ffff8097          	auipc	ra,0xffff8
    8000b504:	57c080e7          	jalr	1404(ra) # 80003a7c <_Znwm>
    8000b508:	00050993          	mv	s3,a0
    B13() : Thread() {};
    8000b50c:	ffff9097          	auipc	ra,0xffff9
    8000b510:	954080e7          	jalr	-1708(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000b514:	0000a797          	auipc	a5,0xa
    8000b518:	41c78793          	addi	a5,a5,1052 # 80015930 <_ZTV3B13+0x10>
    8000b51c:	00f9b023          	sd	a5,0(s3)
    printString("B kreiran\n");
    8000b520:	00006517          	auipc	a0,0x6
    8000b524:	b9050513          	addi	a0,a0,-1136 # 800110b0 <CONSOLE_STATUS+0x10a0>
    8000b528:	ffffc097          	auipc	ra,0xffffc
    8000b52c:	184080e7          	jalr	388(ra) # 800076ac <_Z11printStringPKc>
    C13* c1 =new C13(a1);
    8000b530:	02800513          	li	a0,40
    8000b534:	ffff8097          	auipc	ra,0xffff8
    8000b538:	548080e7          	jalr	1352(ra) # 80003a7c <_Znwm>
    8000b53c:	00050493          	mv	s1,a0
    C13(void* t) : Thread() {toPing = (Thread*)t;};
    8000b540:	ffff9097          	auipc	ra,0xffff9
    8000b544:	920080e7          	jalr	-1760(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000b548:	0000a797          	auipc	a5,0xa
    8000b54c:	41078793          	addi	a5,a5,1040 # 80015958 <_ZTV3C13+0x10>
    8000b550:	00f4b023          	sd	a5,0(s1)
    8000b554:	0324b023          	sd	s2,32(s1)
        toPing=t1;
    8000b558:	02993023          	sd	s1,32(s2)

    a1->setToPing(c1);

    printString("C krieran\n");
    8000b55c:	00006517          	auipc	a0,0x6
    8000b560:	b6450513          	addi	a0,a0,-1180 # 800110c0 <CONSOLE_STATUS+0x10b0>
    8000b564:	ffffc097          	auipc	ra,0xffffc
    8000b568:	148080e7          	jalr	328(ra) # 800076ac <_Z11printStringPKc>

    a1->start();
    8000b56c:	00090513          	mv	a0,s2
    8000b570:	ffff9097          	auipc	ra,0xffff9
    8000b574:	8a8080e7          	jalr	-1880(ra) # 80003e18 <_ZN6Thread5startEv>
    b1->start();
    8000b578:	00098513          	mv	a0,s3
    8000b57c:	ffff9097          	auipc	ra,0xffff9
    8000b580:	89c080e7          	jalr	-1892(ra) # 80003e18 <_ZN6Thread5startEv>
    c1->start();
    8000b584:	00048513          	mv	a0,s1
    8000b588:	ffff9097          	auipc	ra,0xffff9
    8000b58c:	890080e7          	jalr	-1904(ra) # 80003e18 <_ZN6Thread5startEv>

    //a1->join();
    b1->join();
    8000b590:	00098513          	mv	a0,s3
    8000b594:	ffff9097          	auipc	ra,0xffff9
    8000b598:	978080e7          	jalr	-1672(ra) # 80003f0c <_ZN6Thread4joinEv>
    c1->join();
    8000b59c:	00048513          	mv	a0,s1
    8000b5a0:	ffff9097          	auipc	ra,0xffff9
    8000b5a4:	96c080e7          	jalr	-1684(ra) # 80003f0c <_ZN6Thread4joinEv>

    delete a1;
    8000b5a8:	00090a63          	beqz	s2,8000b5bc <_Z8testPingv+0x110>
    8000b5ac:	00093783          	ld	a5,0(s2)
    8000b5b0:	0087b783          	ld	a5,8(a5)
    8000b5b4:	00090513          	mv	a0,s2
    8000b5b8:	000780e7          	jalr	a5
    delete c1;
    8000b5bc:	00048a63          	beqz	s1,8000b5d0 <_Z8testPingv+0x124>
    8000b5c0:	0004b783          	ld	a5,0(s1)
    8000b5c4:	0087b783          	ld	a5,8(a5)
    8000b5c8:	00048513          	mv	a0,s1
    8000b5cc:	000780e7          	jalr	a5
    delete b1;
    8000b5d0:	00098a63          	beqz	s3,8000b5e4 <_Z8testPingv+0x138>
    8000b5d4:	0009b783          	ld	a5,0(s3)
    8000b5d8:	0087b783          	ld	a5,8(a5)
    8000b5dc:	00098513          	mv	a0,s3
    8000b5e0:	000780e7          	jalr	a5

    printString("TEST 8 - PING thread uspesno gotov\n");
    8000b5e4:	00006517          	auipc	a0,0x6
    8000b5e8:	aec50513          	addi	a0,a0,-1300 # 800110d0 <CONSOLE_STATUS+0x10c0>
    8000b5ec:	ffffc097          	auipc	ra,0xffffc
    8000b5f0:	0c0080e7          	jalr	192(ra) # 800076ac <_Z11printStringPKc>

}
    8000b5f4:	02813083          	ld	ra,40(sp)
    8000b5f8:	02013403          	ld	s0,32(sp)
    8000b5fc:	01813483          	ld	s1,24(sp)
    8000b600:	01013903          	ld	s2,16(sp)
    8000b604:	00813983          	ld	s3,8(sp)
    8000b608:	03010113          	addi	sp,sp,48
    8000b60c:	00008067          	ret
    8000b610:	00050493          	mv	s1,a0
    A13* a1=new A13();
    8000b614:	00090513          	mv	a0,s2
    8000b618:	ffff8097          	auipc	ra,0xffff8
    8000b61c:	4b4080e7          	jalr	1204(ra) # 80003acc <_ZdlPv>
    8000b620:	00048513          	mv	a0,s1
    8000b624:	0000b097          	auipc	ra,0xb
    8000b628:	7a4080e7          	jalr	1956(ra) # 80016dc8 <_Unwind_Resume>
    8000b62c:	00050493          	mv	s1,a0
    B13* b1=new B13();
    8000b630:	00098513          	mv	a0,s3
    8000b634:	ffff8097          	auipc	ra,0xffff8
    8000b638:	498080e7          	jalr	1176(ra) # 80003acc <_ZdlPv>
    8000b63c:	00048513          	mv	a0,s1
    8000b640:	0000b097          	auipc	ra,0xb
    8000b644:	788080e7          	jalr	1928(ra) # 80016dc8 <_Unwind_Resume>
    8000b648:	00050913          	mv	s2,a0
    C13* c1 =new C13(a1);
    8000b64c:	00048513          	mv	a0,s1
    8000b650:	ffff8097          	auipc	ra,0xffff8
    8000b654:	47c080e7          	jalr	1148(ra) # 80003acc <_ZdlPv>
    8000b658:	00090513          	mv	a0,s2
    8000b65c:	0000b097          	auipc	ra,0xb
    8000b660:	76c080e7          	jalr	1900(ra) # 80016dc8 <_Unwind_Resume>

000000008000b664 <_Z11testTryWaitv>:
    };

};


void testTryWait(){
    8000b664:	f8010113          	addi	sp,sp,-128
    8000b668:	06113c23          	sd	ra,120(sp)
    8000b66c:	06813823          	sd	s0,112(sp)
    8000b670:	06913423          	sd	s1,104(sp)
    8000b674:	07213023          	sd	s2,96(sp)
    8000b678:	05313c23          	sd	s3,88(sp)
    8000b67c:	08010413          	addi	s0,sp,128
    Thread* th[10];
    s=new Semaphore(4);
    8000b680:	01000513          	li	a0,16
    8000b684:	ffff8097          	auipc	ra,0xffff8
    8000b688:	3f8080e7          	jalr	1016(ra) # 80003a7c <_Znwm>
    8000b68c:	00050493          	mv	s1,a0
    8000b690:	00400593          	li	a1,4
    8000b694:	ffff8097          	auipc	ra,0xffff8
    8000b698:	5ec080e7          	jalr	1516(ra) # 80003c80 <_ZN9SemaphoreC1Ej>
    8000b69c:	0000a797          	auipc	a5,0xa
    8000b6a0:	6497b623          	sd	s1,1612(a5) # 80015ce8 <_ZL1s>
    waitNiti=new Semaphore(0);
    8000b6a4:	01000513          	li	a0,16
    8000b6a8:	ffff8097          	auipc	ra,0xffff8
    8000b6ac:	3d4080e7          	jalr	980(ra) # 80003a7c <_Znwm>
    8000b6b0:	00050493          	mv	s1,a0
    8000b6b4:	00000593          	li	a1,0
    8000b6b8:	ffff8097          	auipc	ra,0xffff8
    8000b6bc:	5c8080e7          	jalr	1480(ra) # 80003c80 <_ZN9SemaphoreC1Ej>
    8000b6c0:	0000a797          	auipc	a5,0xa
    8000b6c4:	6097bc23          	sd	s1,1560(a5) # 80015cd8 <_ZL8waitNiti>
    for(int i=0;i<10;i++){
    8000b6c8:	00000913          	li	s2,0
    8000b6cc:	0280006f          	j	8000b6f4 <_Z11testTryWaitv+0x90>
    testTRYWait(Semaphore* s): Thread(), sem(s){};
    8000b6d0:	0000a797          	auipc	a5,0xa
    8000b6d4:	2b078793          	addi	a5,a5,688 # 80015980 <_ZTV11testTRYWait+0x10>
    8000b6d8:	00f4b023          	sd	a5,0(s1)
    8000b6dc:	0334b023          	sd	s3,32(s1)
        th[i] = new testTRYWait(s);
    8000b6e0:	00391793          	slli	a5,s2,0x3
    8000b6e4:	fd040713          	addi	a4,s0,-48
    8000b6e8:	00f707b3          	add	a5,a4,a5
    8000b6ec:	fa97b823          	sd	s1,-80(a5)
    for(int i=0;i<10;i++){
    8000b6f0:	0019091b          	addiw	s2,s2,1
    8000b6f4:	00900793          	li	a5,9
    8000b6f8:	0327c463          	blt	a5,s2,8000b720 <_Z11testTryWaitv+0xbc>
        th[i] = new testTRYWait(s);
    8000b6fc:	02800513          	li	a0,40
    8000b700:	ffff8097          	auipc	ra,0xffff8
    8000b704:	37c080e7          	jalr	892(ra) # 80003a7c <_Znwm>
    8000b708:	00050493          	mv	s1,a0
    8000b70c:	0000a997          	auipc	s3,0xa
    8000b710:	5dc9b983          	ld	s3,1500(s3) # 80015ce8 <_ZL1s>
    testTRYWait(Semaphore* s): Thread(), sem(s){};
    8000b714:	ffff8097          	auipc	ra,0xffff8
    8000b718:	74c080e7          	jalr	1868(ra) # 80003e60 <_ZN6ThreadC1Ev>
    8000b71c:	fb5ff06f          	j	8000b6d0 <_Z11testTryWaitv+0x6c>
    }

    for(int i=0;i<10;i++){
    8000b720:	00000493          	li	s1,0
    8000b724:	00900793          	li	a5,9
    8000b728:	0297c263          	blt	a5,s1,8000b74c <_Z11testTryWaitv+0xe8>
        th[i]->start();
    8000b72c:	00349793          	slli	a5,s1,0x3
    8000b730:	fd040713          	addi	a4,s0,-48
    8000b734:	00f707b3          	add	a5,a4,a5
    8000b738:	fb07b503          	ld	a0,-80(a5)
    8000b73c:	ffff8097          	auipc	ra,0xffff8
    8000b740:	6dc080e7          	jalr	1756(ra) # 80003e18 <_ZN6Thread5startEv>
    for(int i=0;i<10;i++){
    8000b744:	0014849b          	addiw	s1,s1,1
    8000b748:	fddff06f          	j	8000b724 <_Z11testTryWaitv+0xc0>
    }

    for(int i=0;i<10;i++){
    8000b74c:	00000493          	li	s1,0
    8000b750:	00900793          	li	a5,9
    8000b754:	0097ce63          	blt	a5,s1,8000b770 <_Z11testTryWaitv+0x10c>
        waitNiti->wait();
    8000b758:	0000a517          	auipc	a0,0xa
    8000b75c:	58053503          	ld	a0,1408(a0) # 80015cd8 <_ZL8waitNiti>
    8000b760:	ffff8097          	auipc	ra,0xffff8
    8000b764:	558080e7          	jalr	1368(ra) # 80003cb8 <_ZN9Semaphore4waitEv>
    for(int i=0;i<10;i++){
    8000b768:	0014849b          	addiw	s1,s1,1
    8000b76c:	fe5ff06f          	j	8000b750 <_Z11testTryWaitv+0xec>
    }

    for(int i=0;i<10;i++){
    8000b770:	00000493          	li	s1,0
    8000b774:	0080006f          	j	8000b77c <_Z11testTryWaitv+0x118>
    8000b778:	0014849b          	addiw	s1,s1,1
    8000b77c:	00900793          	li	a5,9
    8000b780:	0297c463          	blt	a5,s1,8000b7a8 <_Z11testTryWaitv+0x144>
        delete th[i];
    8000b784:	00349793          	slli	a5,s1,0x3
    8000b788:	fd040713          	addi	a4,s0,-48
    8000b78c:	00f707b3          	add	a5,a4,a5
    8000b790:	fb07b503          	ld	a0,-80(a5)
    8000b794:	fe0502e3          	beqz	a0,8000b778 <_Z11testTryWaitv+0x114>
    8000b798:	00053783          	ld	a5,0(a0)
    8000b79c:	0087b783          	ld	a5,8(a5)
    8000b7a0:	000780e7          	jalr	a5
    8000b7a4:	fd5ff06f          	j	8000b778 <_Z11testTryWaitv+0x114>
    }
    delete s;
    8000b7a8:	0000a517          	auipc	a0,0xa
    8000b7ac:	54053503          	ld	a0,1344(a0) # 80015ce8 <_ZL1s>
    8000b7b0:	00050863          	beqz	a0,8000b7c0 <_Z11testTryWaitv+0x15c>
    8000b7b4:	00053783          	ld	a5,0(a0)
    8000b7b8:	0087b783          	ld	a5,8(a5)
    8000b7bc:	000780e7          	jalr	a5
    delete waitNiti;
    8000b7c0:	0000a517          	auipc	a0,0xa
    8000b7c4:	51853503          	ld	a0,1304(a0) # 80015cd8 <_ZL8waitNiti>
    8000b7c8:	00050863          	beqz	a0,8000b7d8 <_Z11testTryWaitv+0x174>
    8000b7cc:	00053783          	ld	a5,0(a0)
    8000b7d0:	0087b783          	ld	a5,8(a5)
    8000b7d4:	000780e7          	jalr	a5


    printString("Modifikacija TRY-wait, TEST 8, uspesno zavrsena\n");
    8000b7d8:	00006517          	auipc	a0,0x6
    8000b7dc:	92050513          	addi	a0,a0,-1760 # 800110f8 <CONSOLE_STATUS+0x10e8>
    8000b7e0:	ffffc097          	auipc	ra,0xffffc
    8000b7e4:	ecc080e7          	jalr	-308(ra) # 800076ac <_Z11printStringPKc>

    8000b7e8:	07813083          	ld	ra,120(sp)
    8000b7ec:	07013403          	ld	s0,112(sp)
    8000b7f0:	06813483          	ld	s1,104(sp)
    8000b7f4:	06013903          	ld	s2,96(sp)
    8000b7f8:	05813983          	ld	s3,88(sp)
    8000b7fc:	08010113          	addi	sp,sp,128
    8000b800:	00008067          	ret
    8000b804:	00050913          	mv	s2,a0
    s=new Semaphore(4);
    8000b808:	00048513          	mv	a0,s1
    8000b80c:	ffff8097          	auipc	ra,0xffff8
    8000b810:	2c0080e7          	jalr	704(ra) # 80003acc <_ZdlPv>
    8000b814:	00090513          	mv	a0,s2
    8000b818:	0000b097          	auipc	ra,0xb
    8000b81c:	5b0080e7          	jalr	1456(ra) # 80016dc8 <_Unwind_Resume>
    8000b820:	00050913          	mv	s2,a0
    waitNiti=new Semaphore(0);
    8000b824:	00048513          	mv	a0,s1
    8000b828:	ffff8097          	auipc	ra,0xffff8
    8000b82c:	2a4080e7          	jalr	676(ra) # 80003acc <_ZdlPv>
    8000b830:	00090513          	mv	a0,s2
    8000b834:	0000b097          	auipc	ra,0xb
    8000b838:	594080e7          	jalr	1428(ra) # 80016dc8 <_Unwind_Resume>
    8000b83c:	00050913          	mv	s2,a0
        th[i] = new testTRYWait(s);
    8000b840:	00048513          	mv	a0,s1
    8000b844:	ffff8097          	auipc	ra,0xffff8
    8000b848:	288080e7          	jalr	648(ra) # 80003acc <_ZdlPv>
    8000b84c:	00090513          	mv	a0,s2
    8000b850:	0000b097          	auipc	ra,0xb
    8000b854:	578080e7          	jalr	1400(ra) # 80016dc8 <_Unwind_Resume>

000000008000b858 <_ZN2A7D1Ev>:
class A7:public Thread{
    8000b858:	ff010113          	addi	sp,sp,-16
    8000b85c:	00113423          	sd	ra,8(sp)
    8000b860:	00813023          	sd	s0,0(sp)
    8000b864:	01010413          	addi	s0,sp,16
    8000b868:	0000a797          	auipc	a5,0xa
    8000b86c:	f6078793          	addi	a5,a5,-160 # 800157c8 <_ZTV2A7+0x10>
    8000b870:	00f53023          	sd	a5,0(a0)
    8000b874:	ffff8097          	auipc	ra,0xffff8
    8000b878:	368080e7          	jalr	872(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000b87c:	00813083          	ld	ra,8(sp)
    8000b880:	00013403          	ld	s0,0(sp)
    8000b884:	01010113          	addi	sp,sp,16
    8000b888:	00008067          	ret

000000008000b88c <_ZN2A7D0Ev>:
    8000b88c:	fe010113          	addi	sp,sp,-32
    8000b890:	00113c23          	sd	ra,24(sp)
    8000b894:	00813823          	sd	s0,16(sp)
    8000b898:	00913423          	sd	s1,8(sp)
    8000b89c:	02010413          	addi	s0,sp,32
    8000b8a0:	00050493          	mv	s1,a0
    8000b8a4:	0000a797          	auipc	a5,0xa
    8000b8a8:	f2478793          	addi	a5,a5,-220 # 800157c8 <_ZTV2A7+0x10>
    8000b8ac:	00f53023          	sd	a5,0(a0)
    8000b8b0:	ffff8097          	auipc	ra,0xffff8
    8000b8b4:	32c080e7          	jalr	812(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000b8b8:	00048513          	mv	a0,s1
    8000b8bc:	ffff8097          	auipc	ra,0xffff8
    8000b8c0:	210080e7          	jalr	528(ra) # 80003acc <_ZdlPv>
    8000b8c4:	01813083          	ld	ra,24(sp)
    8000b8c8:	01013403          	ld	s0,16(sp)
    8000b8cc:	00813483          	ld	s1,8(sp)
    8000b8d0:	02010113          	addi	sp,sp,32
    8000b8d4:	00008067          	ret

000000008000b8d8 <_ZN2B7D1Ev>:
class B7:public Thread {
    8000b8d8:	ff010113          	addi	sp,sp,-16
    8000b8dc:	00113423          	sd	ra,8(sp)
    8000b8e0:	00813023          	sd	s0,0(sp)
    8000b8e4:	01010413          	addi	s0,sp,16
    8000b8e8:	0000a797          	auipc	a5,0xa
    8000b8ec:	f0878793          	addi	a5,a5,-248 # 800157f0 <_ZTV2B7+0x10>
    8000b8f0:	00f53023          	sd	a5,0(a0)
    8000b8f4:	ffff8097          	auipc	ra,0xffff8
    8000b8f8:	2e8080e7          	jalr	744(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000b8fc:	00813083          	ld	ra,8(sp)
    8000b900:	00013403          	ld	s0,0(sp)
    8000b904:	01010113          	addi	sp,sp,16
    8000b908:	00008067          	ret

000000008000b90c <_ZN2B7D0Ev>:
    8000b90c:	fe010113          	addi	sp,sp,-32
    8000b910:	00113c23          	sd	ra,24(sp)
    8000b914:	00813823          	sd	s0,16(sp)
    8000b918:	00913423          	sd	s1,8(sp)
    8000b91c:	02010413          	addi	s0,sp,32
    8000b920:	00050493          	mv	s1,a0
    8000b924:	0000a797          	auipc	a5,0xa
    8000b928:	ecc78793          	addi	a5,a5,-308 # 800157f0 <_ZTV2B7+0x10>
    8000b92c:	00f53023          	sd	a5,0(a0)
    8000b930:	ffff8097          	auipc	ra,0xffff8
    8000b934:	2ac080e7          	jalr	684(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000b938:	00048513          	mv	a0,s1
    8000b93c:	ffff8097          	auipc	ra,0xffff8
    8000b940:	190080e7          	jalr	400(ra) # 80003acc <_ZdlPv>
    8000b944:	01813083          	ld	ra,24(sp)
    8000b948:	01013403          	ld	s0,16(sp)
    8000b94c:	00813483          	ld	s1,8(sp)
    8000b950:	02010113          	addi	sp,sp,32
    8000b954:	00008067          	ret

000000008000b958 <_ZN11testTRYWaitD1Ev>:
class testTRYWait: public Thread{
    8000b958:	ff010113          	addi	sp,sp,-16
    8000b95c:	00113423          	sd	ra,8(sp)
    8000b960:	00813023          	sd	s0,0(sp)
    8000b964:	01010413          	addi	s0,sp,16
    8000b968:	0000a797          	auipc	a5,0xa
    8000b96c:	01878793          	addi	a5,a5,24 # 80015980 <_ZTV11testTRYWait+0x10>
    8000b970:	00f53023          	sd	a5,0(a0)
    8000b974:	ffff8097          	auipc	ra,0xffff8
    8000b978:	268080e7          	jalr	616(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000b97c:	00813083          	ld	ra,8(sp)
    8000b980:	00013403          	ld	s0,0(sp)
    8000b984:	01010113          	addi	sp,sp,16
    8000b988:	00008067          	ret

000000008000b98c <_ZN11testTRYWaitD0Ev>:
    8000b98c:	fe010113          	addi	sp,sp,-32
    8000b990:	00113c23          	sd	ra,24(sp)
    8000b994:	00813823          	sd	s0,16(sp)
    8000b998:	00913423          	sd	s1,8(sp)
    8000b99c:	02010413          	addi	s0,sp,32
    8000b9a0:	00050493          	mv	s1,a0
    8000b9a4:	0000a797          	auipc	a5,0xa
    8000b9a8:	fdc78793          	addi	a5,a5,-36 # 80015980 <_ZTV11testTRYWait+0x10>
    8000b9ac:	00f53023          	sd	a5,0(a0)
    8000b9b0:	ffff8097          	auipc	ra,0xffff8
    8000b9b4:	22c080e7          	jalr	556(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000b9b8:	00048513          	mv	a0,s1
    8000b9bc:	ffff8097          	auipc	ra,0xffff8
    8000b9c0:	110080e7          	jalr	272(ra) # 80003acc <_ZdlPv>
    8000b9c4:	01813083          	ld	ra,24(sp)
    8000b9c8:	01013403          	ld	s0,16(sp)
    8000b9cc:	00813483          	ld	s1,8(sp)
    8000b9d0:	02010113          	addi	sp,sp,32
    8000b9d4:	00008067          	ret

000000008000b9d8 <_ZN3C13D1Ev>:
class C13:public Thread {
    8000b9d8:	ff010113          	addi	sp,sp,-16
    8000b9dc:	00113423          	sd	ra,8(sp)
    8000b9e0:	00813023          	sd	s0,0(sp)
    8000b9e4:	01010413          	addi	s0,sp,16
    8000b9e8:	0000a797          	auipc	a5,0xa
    8000b9ec:	f7078793          	addi	a5,a5,-144 # 80015958 <_ZTV3C13+0x10>
    8000b9f0:	00f53023          	sd	a5,0(a0)
    8000b9f4:	ffff8097          	auipc	ra,0xffff8
    8000b9f8:	1e8080e7          	jalr	488(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000b9fc:	00813083          	ld	ra,8(sp)
    8000ba00:	00013403          	ld	s0,0(sp)
    8000ba04:	01010113          	addi	sp,sp,16
    8000ba08:	00008067          	ret

000000008000ba0c <_ZN3C13D0Ev>:
    8000ba0c:	fe010113          	addi	sp,sp,-32
    8000ba10:	00113c23          	sd	ra,24(sp)
    8000ba14:	00813823          	sd	s0,16(sp)
    8000ba18:	00913423          	sd	s1,8(sp)
    8000ba1c:	02010413          	addi	s0,sp,32
    8000ba20:	00050493          	mv	s1,a0
    8000ba24:	0000a797          	auipc	a5,0xa
    8000ba28:	f3478793          	addi	a5,a5,-204 # 80015958 <_ZTV3C13+0x10>
    8000ba2c:	00f53023          	sd	a5,0(a0)
    8000ba30:	ffff8097          	auipc	ra,0xffff8
    8000ba34:	1ac080e7          	jalr	428(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000ba38:	00048513          	mv	a0,s1
    8000ba3c:	ffff8097          	auipc	ra,0xffff8
    8000ba40:	090080e7          	jalr	144(ra) # 80003acc <_ZdlPv>
    8000ba44:	01813083          	ld	ra,24(sp)
    8000ba48:	01013403          	ld	s0,16(sp)
    8000ba4c:	00813483          	ld	s1,8(sp)
    8000ba50:	02010113          	addi	sp,sp,32
    8000ba54:	00008067          	ret

000000008000ba58 <_ZN3B13D1Ev>:
class B13:public Thread {
    8000ba58:	ff010113          	addi	sp,sp,-16
    8000ba5c:	00113423          	sd	ra,8(sp)
    8000ba60:	00813023          	sd	s0,0(sp)
    8000ba64:	01010413          	addi	s0,sp,16
    8000ba68:	0000a797          	auipc	a5,0xa
    8000ba6c:	ec878793          	addi	a5,a5,-312 # 80015930 <_ZTV3B13+0x10>
    8000ba70:	00f53023          	sd	a5,0(a0)
    8000ba74:	ffff8097          	auipc	ra,0xffff8
    8000ba78:	168080e7          	jalr	360(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000ba7c:	00813083          	ld	ra,8(sp)
    8000ba80:	00013403          	ld	s0,0(sp)
    8000ba84:	01010113          	addi	sp,sp,16
    8000ba88:	00008067          	ret

000000008000ba8c <_ZN3B13D0Ev>:
    8000ba8c:	fe010113          	addi	sp,sp,-32
    8000ba90:	00113c23          	sd	ra,24(sp)
    8000ba94:	00813823          	sd	s0,16(sp)
    8000ba98:	00913423          	sd	s1,8(sp)
    8000ba9c:	02010413          	addi	s0,sp,32
    8000baa0:	00050493          	mv	s1,a0
    8000baa4:	0000a797          	auipc	a5,0xa
    8000baa8:	e8c78793          	addi	a5,a5,-372 # 80015930 <_ZTV3B13+0x10>
    8000baac:	00f53023          	sd	a5,0(a0)
    8000bab0:	ffff8097          	auipc	ra,0xffff8
    8000bab4:	12c080e7          	jalr	300(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bab8:	00048513          	mv	a0,s1
    8000babc:	ffff8097          	auipc	ra,0xffff8
    8000bac0:	010080e7          	jalr	16(ra) # 80003acc <_ZdlPv>
    8000bac4:	01813083          	ld	ra,24(sp)
    8000bac8:	01013403          	ld	s0,16(sp)
    8000bacc:	00813483          	ld	s1,8(sp)
    8000bad0:	02010113          	addi	sp,sp,32
    8000bad4:	00008067          	ret

000000008000bad8 <_ZN3A13D1Ev>:
class A13:public Thread {
    8000bad8:	ff010113          	addi	sp,sp,-16
    8000badc:	00113423          	sd	ra,8(sp)
    8000bae0:	00813023          	sd	s0,0(sp)
    8000bae4:	01010413          	addi	s0,sp,16
    8000bae8:	0000a797          	auipc	a5,0xa
    8000baec:	e2078793          	addi	a5,a5,-480 # 80015908 <_ZTV3A13+0x10>
    8000baf0:	00f53023          	sd	a5,0(a0)
    8000baf4:	ffff8097          	auipc	ra,0xffff8
    8000baf8:	0e8080e7          	jalr	232(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bafc:	00813083          	ld	ra,8(sp)
    8000bb00:	00013403          	ld	s0,0(sp)
    8000bb04:	01010113          	addi	sp,sp,16
    8000bb08:	00008067          	ret

000000008000bb0c <_ZN3A13D0Ev>:
    8000bb0c:	fe010113          	addi	sp,sp,-32
    8000bb10:	00113c23          	sd	ra,24(sp)
    8000bb14:	00813823          	sd	s0,16(sp)
    8000bb18:	00913423          	sd	s1,8(sp)
    8000bb1c:	02010413          	addi	s0,sp,32
    8000bb20:	00050493          	mv	s1,a0
    8000bb24:	0000a797          	auipc	a5,0xa
    8000bb28:	de478793          	addi	a5,a5,-540 # 80015908 <_ZTV3A13+0x10>
    8000bb2c:	00f53023          	sd	a5,0(a0)
    8000bb30:	ffff8097          	auipc	ra,0xffff8
    8000bb34:	0ac080e7          	jalr	172(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bb38:	00048513          	mv	a0,s1
    8000bb3c:	ffff8097          	auipc	ra,0xffff8
    8000bb40:	f90080e7          	jalr	-112(ra) # 80003acc <_ZdlPv>
    8000bb44:	01813083          	ld	ra,24(sp)
    8000bb48:	01013403          	ld	s0,16(sp)
    8000bb4c:	00813483          	ld	s1,8(sp)
    8000bb50:	02010113          	addi	sp,sp,32
    8000bb54:	00008067          	ret

000000008000bb58 <_ZN3B12D1Ev>:
class B12:public Thread{
    8000bb58:	ff010113          	addi	sp,sp,-16
    8000bb5c:	00113423          	sd	ra,8(sp)
    8000bb60:	00813023          	sd	s0,0(sp)
    8000bb64:	01010413          	addi	s0,sp,16
    8000bb68:	0000a797          	auipc	a5,0xa
    8000bb6c:	d7878793          	addi	a5,a5,-648 # 800158e0 <_ZTV3B12+0x10>
    8000bb70:	00f53023          	sd	a5,0(a0)
    8000bb74:	ffff8097          	auipc	ra,0xffff8
    8000bb78:	068080e7          	jalr	104(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bb7c:	00813083          	ld	ra,8(sp)
    8000bb80:	00013403          	ld	s0,0(sp)
    8000bb84:	01010113          	addi	sp,sp,16
    8000bb88:	00008067          	ret

000000008000bb8c <_ZN3B12D0Ev>:
    8000bb8c:	fe010113          	addi	sp,sp,-32
    8000bb90:	00113c23          	sd	ra,24(sp)
    8000bb94:	00813823          	sd	s0,16(sp)
    8000bb98:	00913423          	sd	s1,8(sp)
    8000bb9c:	02010413          	addi	s0,sp,32
    8000bba0:	00050493          	mv	s1,a0
    8000bba4:	0000a797          	auipc	a5,0xa
    8000bba8:	d3c78793          	addi	a5,a5,-708 # 800158e0 <_ZTV3B12+0x10>
    8000bbac:	00f53023          	sd	a5,0(a0)
    8000bbb0:	ffff8097          	auipc	ra,0xffff8
    8000bbb4:	02c080e7          	jalr	44(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bbb8:	00048513          	mv	a0,s1
    8000bbbc:	ffff8097          	auipc	ra,0xffff8
    8000bbc0:	f10080e7          	jalr	-240(ra) # 80003acc <_ZdlPv>
    8000bbc4:	01813083          	ld	ra,24(sp)
    8000bbc8:	01013403          	ld	s0,16(sp)
    8000bbcc:	00813483          	ld	s1,8(sp)
    8000bbd0:	02010113          	addi	sp,sp,32
    8000bbd4:	00008067          	ret

000000008000bbd8 <_ZN3A12D1Ev>:
class A12:public Thread{
    8000bbd8:	ff010113          	addi	sp,sp,-16
    8000bbdc:	00113423          	sd	ra,8(sp)
    8000bbe0:	00813023          	sd	s0,0(sp)
    8000bbe4:	01010413          	addi	s0,sp,16
    8000bbe8:	0000a797          	auipc	a5,0xa
    8000bbec:	cd078793          	addi	a5,a5,-816 # 800158b8 <_ZTV3A12+0x10>
    8000bbf0:	00f53023          	sd	a5,0(a0)
    8000bbf4:	ffff8097          	auipc	ra,0xffff8
    8000bbf8:	fe8080e7          	jalr	-24(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bbfc:	00813083          	ld	ra,8(sp)
    8000bc00:	00013403          	ld	s0,0(sp)
    8000bc04:	01010113          	addi	sp,sp,16
    8000bc08:	00008067          	ret

000000008000bc0c <_ZN3A12D0Ev>:
    8000bc0c:	fe010113          	addi	sp,sp,-32
    8000bc10:	00113c23          	sd	ra,24(sp)
    8000bc14:	00813823          	sd	s0,16(sp)
    8000bc18:	00913423          	sd	s1,8(sp)
    8000bc1c:	02010413          	addi	s0,sp,32
    8000bc20:	00050493          	mv	s1,a0
    8000bc24:	0000a797          	auipc	a5,0xa
    8000bc28:	c9478793          	addi	a5,a5,-876 # 800158b8 <_ZTV3A12+0x10>
    8000bc2c:	00f53023          	sd	a5,0(a0)
    8000bc30:	ffff8097          	auipc	ra,0xffff8
    8000bc34:	fac080e7          	jalr	-84(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bc38:	00048513          	mv	a0,s1
    8000bc3c:	ffff8097          	auipc	ra,0xffff8
    8000bc40:	e90080e7          	jalr	-368(ra) # 80003acc <_ZdlPv>
    8000bc44:	01813083          	ld	ra,24(sp)
    8000bc48:	01013403          	ld	s0,16(sp)
    8000bc4c:	00813483          	ld	s1,8(sp)
    8000bc50:	02010113          	addi	sp,sp,32
    8000bc54:	00008067          	ret

000000008000bc58 <_ZN3A11D1Ev>:
class A11:public Thread{
    8000bc58:	ff010113          	addi	sp,sp,-16
    8000bc5c:	00113423          	sd	ra,8(sp)
    8000bc60:	00813023          	sd	s0,0(sp)
    8000bc64:	01010413          	addi	s0,sp,16
    8000bc68:	0000a797          	auipc	a5,0xa
    8000bc6c:	c2878793          	addi	a5,a5,-984 # 80015890 <_ZTV3A11+0x10>
    8000bc70:	00f53023          	sd	a5,0(a0)
    8000bc74:	ffff8097          	auipc	ra,0xffff8
    8000bc78:	f68080e7          	jalr	-152(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bc7c:	00813083          	ld	ra,8(sp)
    8000bc80:	00013403          	ld	s0,0(sp)
    8000bc84:	01010113          	addi	sp,sp,16
    8000bc88:	00008067          	ret

000000008000bc8c <_ZN3A11D0Ev>:
    8000bc8c:	fe010113          	addi	sp,sp,-32
    8000bc90:	00113c23          	sd	ra,24(sp)
    8000bc94:	00813823          	sd	s0,16(sp)
    8000bc98:	00913423          	sd	s1,8(sp)
    8000bc9c:	02010413          	addi	s0,sp,32
    8000bca0:	00050493          	mv	s1,a0
    8000bca4:	0000a797          	auipc	a5,0xa
    8000bca8:	bec78793          	addi	a5,a5,-1044 # 80015890 <_ZTV3A11+0x10>
    8000bcac:	00f53023          	sd	a5,0(a0)
    8000bcb0:	ffff8097          	auipc	ra,0xffff8
    8000bcb4:	f2c080e7          	jalr	-212(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bcb8:	00048513          	mv	a0,s1
    8000bcbc:	ffff8097          	auipc	ra,0xffff8
    8000bcc0:	e10080e7          	jalr	-496(ra) # 80003acc <_ZdlPv>
    8000bcc4:	01813083          	ld	ra,24(sp)
    8000bcc8:	01013403          	ld	s0,16(sp)
    8000bccc:	00813483          	ld	s1,8(sp)
    8000bcd0:	02010113          	addi	sp,sp,32
    8000bcd4:	00008067          	ret

000000008000bcd8 <_ZN3A10D1Ev>:
class A10:public Thread{
    8000bcd8:	ff010113          	addi	sp,sp,-16
    8000bcdc:	00113423          	sd	ra,8(sp)
    8000bce0:	00813023          	sd	s0,0(sp)
    8000bce4:	01010413          	addi	s0,sp,16
    8000bce8:	0000a797          	auipc	a5,0xa
    8000bcec:	b8078793          	addi	a5,a5,-1152 # 80015868 <_ZTV3A10+0x10>
    8000bcf0:	00f53023          	sd	a5,0(a0)
    8000bcf4:	ffff8097          	auipc	ra,0xffff8
    8000bcf8:	ee8080e7          	jalr	-280(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bcfc:	00813083          	ld	ra,8(sp)
    8000bd00:	00013403          	ld	s0,0(sp)
    8000bd04:	01010113          	addi	sp,sp,16
    8000bd08:	00008067          	ret

000000008000bd0c <_ZN3A10D0Ev>:
    8000bd0c:	fe010113          	addi	sp,sp,-32
    8000bd10:	00113c23          	sd	ra,24(sp)
    8000bd14:	00813823          	sd	s0,16(sp)
    8000bd18:	00913423          	sd	s1,8(sp)
    8000bd1c:	02010413          	addi	s0,sp,32
    8000bd20:	00050493          	mv	s1,a0
    8000bd24:	0000a797          	auipc	a5,0xa
    8000bd28:	b4478793          	addi	a5,a5,-1212 # 80015868 <_ZTV3A10+0x10>
    8000bd2c:	00f53023          	sd	a5,0(a0)
    8000bd30:	ffff8097          	auipc	ra,0xffff8
    8000bd34:	eac080e7          	jalr	-340(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bd38:	00048513          	mv	a0,s1
    8000bd3c:	ffff8097          	auipc	ra,0xffff8
    8000bd40:	d90080e7          	jalr	-624(ra) # 80003acc <_ZdlPv>
    8000bd44:	01813083          	ld	ra,24(sp)
    8000bd48:	01013403          	ld	s0,16(sp)
    8000bd4c:	00813483          	ld	s1,8(sp)
    8000bd50:	02010113          	addi	sp,sp,32
    8000bd54:	00008067          	ret

000000008000bd58 <_ZN2A9D1Ev>:
class A9:public Thread{
    8000bd58:	ff010113          	addi	sp,sp,-16
    8000bd5c:	00113423          	sd	ra,8(sp)
    8000bd60:	00813023          	sd	s0,0(sp)
    8000bd64:	01010413          	addi	s0,sp,16
    8000bd68:	0000a797          	auipc	a5,0xa
    8000bd6c:	ad878793          	addi	a5,a5,-1320 # 80015840 <_ZTV2A9+0x10>
    8000bd70:	00f53023          	sd	a5,0(a0)
    8000bd74:	ffff8097          	auipc	ra,0xffff8
    8000bd78:	e68080e7          	jalr	-408(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bd7c:	00813083          	ld	ra,8(sp)
    8000bd80:	00013403          	ld	s0,0(sp)
    8000bd84:	01010113          	addi	sp,sp,16
    8000bd88:	00008067          	ret

000000008000bd8c <_ZN2A9D0Ev>:
    8000bd8c:	fe010113          	addi	sp,sp,-32
    8000bd90:	00113c23          	sd	ra,24(sp)
    8000bd94:	00813823          	sd	s0,16(sp)
    8000bd98:	00913423          	sd	s1,8(sp)
    8000bd9c:	02010413          	addi	s0,sp,32
    8000bda0:	00050493          	mv	s1,a0
    8000bda4:	0000a797          	auipc	a5,0xa
    8000bda8:	a9c78793          	addi	a5,a5,-1380 # 80015840 <_ZTV2A9+0x10>
    8000bdac:	00f53023          	sd	a5,0(a0)
    8000bdb0:	ffff8097          	auipc	ra,0xffff8
    8000bdb4:	e2c080e7          	jalr	-468(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bdb8:	00048513          	mv	a0,s1
    8000bdbc:	ffff8097          	auipc	ra,0xffff8
    8000bdc0:	d10080e7          	jalr	-752(ra) # 80003acc <_ZdlPv>
    8000bdc4:	01813083          	ld	ra,24(sp)
    8000bdc8:	01013403          	ld	s0,16(sp)
    8000bdcc:	00813483          	ld	s1,8(sp)
    8000bdd0:	02010113          	addi	sp,sp,32
    8000bdd4:	00008067          	ret

000000008000bdd8 <_ZN2A8D1Ev>:
class A8:public Thread{
    8000bdd8:	ff010113          	addi	sp,sp,-16
    8000bddc:	00113423          	sd	ra,8(sp)
    8000bde0:	00813023          	sd	s0,0(sp)
    8000bde4:	01010413          	addi	s0,sp,16
    8000bde8:	0000a797          	auipc	a5,0xa
    8000bdec:	a3078793          	addi	a5,a5,-1488 # 80015818 <_ZTV2A8+0x10>
    8000bdf0:	00f53023          	sd	a5,0(a0)
    8000bdf4:	ffff8097          	auipc	ra,0xffff8
    8000bdf8:	de8080e7          	jalr	-536(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bdfc:	00813083          	ld	ra,8(sp)
    8000be00:	00013403          	ld	s0,0(sp)
    8000be04:	01010113          	addi	sp,sp,16
    8000be08:	00008067          	ret

000000008000be0c <_ZN2A8D0Ev>:
    8000be0c:	fe010113          	addi	sp,sp,-32
    8000be10:	00113c23          	sd	ra,24(sp)
    8000be14:	00813823          	sd	s0,16(sp)
    8000be18:	00913423          	sd	s1,8(sp)
    8000be1c:	02010413          	addi	s0,sp,32
    8000be20:	00050493          	mv	s1,a0
    8000be24:	0000a797          	auipc	a5,0xa
    8000be28:	9f478793          	addi	a5,a5,-1548 # 80015818 <_ZTV2A8+0x10>
    8000be2c:	00f53023          	sd	a5,0(a0)
    8000be30:	ffff8097          	auipc	ra,0xffff8
    8000be34:	dac080e7          	jalr	-596(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000be38:	00048513          	mv	a0,s1
    8000be3c:	ffff8097          	auipc	ra,0xffff8
    8000be40:	c90080e7          	jalr	-880(ra) # 80003acc <_ZdlPv>
    8000be44:	01813083          	ld	ra,24(sp)
    8000be48:	01013403          	ld	s0,16(sp)
    8000be4c:	00813483          	ld	s1,8(sp)
    8000be50:	02010113          	addi	sp,sp,32
    8000be54:	00008067          	ret

000000008000be58 <_ZN2A5D1Ev>:
class A5:public Thread{
    8000be58:	ff010113          	addi	sp,sp,-16
    8000be5c:	00113423          	sd	ra,8(sp)
    8000be60:	00813023          	sd	s0,0(sp)
    8000be64:	01010413          	addi	s0,sp,16
    8000be68:	0000a797          	auipc	a5,0xa
    8000be6c:	93878793          	addi	a5,a5,-1736 # 800157a0 <_ZTV2A5+0x10>
    8000be70:	00f53023          	sd	a5,0(a0)
    8000be74:	ffff8097          	auipc	ra,0xffff8
    8000be78:	d68080e7          	jalr	-664(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000be7c:	00813083          	ld	ra,8(sp)
    8000be80:	00013403          	ld	s0,0(sp)
    8000be84:	01010113          	addi	sp,sp,16
    8000be88:	00008067          	ret

000000008000be8c <_ZN2A5D0Ev>:
    8000be8c:	fe010113          	addi	sp,sp,-32
    8000be90:	00113c23          	sd	ra,24(sp)
    8000be94:	00813823          	sd	s0,16(sp)
    8000be98:	00913423          	sd	s1,8(sp)
    8000be9c:	02010413          	addi	s0,sp,32
    8000bea0:	00050493          	mv	s1,a0
    8000bea4:	0000a797          	auipc	a5,0xa
    8000bea8:	8fc78793          	addi	a5,a5,-1796 # 800157a0 <_ZTV2A5+0x10>
    8000beac:	00f53023          	sd	a5,0(a0)
    8000beb0:	ffff8097          	auipc	ra,0xffff8
    8000beb4:	d2c080e7          	jalr	-724(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000beb8:	00048513          	mv	a0,s1
    8000bebc:	ffff8097          	auipc	ra,0xffff8
    8000bec0:	c10080e7          	jalr	-1008(ra) # 80003acc <_ZdlPv>
    8000bec4:	01813083          	ld	ra,24(sp)
    8000bec8:	01013403          	ld	s0,16(sp)
    8000becc:	00813483          	ld	s1,8(sp)
    8000bed0:	02010113          	addi	sp,sp,32
    8000bed4:	00008067          	ret

000000008000bed8 <_ZN2C4D1Ev>:
class C4:public Thread{
    8000bed8:	ff010113          	addi	sp,sp,-16
    8000bedc:	00113423          	sd	ra,8(sp)
    8000bee0:	00813023          	sd	s0,0(sp)
    8000bee4:	01010413          	addi	s0,sp,16
    8000bee8:	0000a797          	auipc	a5,0xa
    8000beec:	89078793          	addi	a5,a5,-1904 # 80015778 <_ZTV2C4+0x10>
    8000bef0:	00f53023          	sd	a5,0(a0)
    8000bef4:	ffff8097          	auipc	ra,0xffff8
    8000bef8:	ce8080e7          	jalr	-792(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000befc:	00813083          	ld	ra,8(sp)
    8000bf00:	00013403          	ld	s0,0(sp)
    8000bf04:	01010113          	addi	sp,sp,16
    8000bf08:	00008067          	ret

000000008000bf0c <_ZN2C4D0Ev>:
    8000bf0c:	fe010113          	addi	sp,sp,-32
    8000bf10:	00113c23          	sd	ra,24(sp)
    8000bf14:	00813823          	sd	s0,16(sp)
    8000bf18:	00913423          	sd	s1,8(sp)
    8000bf1c:	02010413          	addi	s0,sp,32
    8000bf20:	00050493          	mv	s1,a0
    8000bf24:	0000a797          	auipc	a5,0xa
    8000bf28:	85478793          	addi	a5,a5,-1964 # 80015778 <_ZTV2C4+0x10>
    8000bf2c:	00f53023          	sd	a5,0(a0)
    8000bf30:	ffff8097          	auipc	ra,0xffff8
    8000bf34:	cac080e7          	jalr	-852(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bf38:	00048513          	mv	a0,s1
    8000bf3c:	ffff8097          	auipc	ra,0xffff8
    8000bf40:	b90080e7          	jalr	-1136(ra) # 80003acc <_ZdlPv>
    8000bf44:	01813083          	ld	ra,24(sp)
    8000bf48:	01013403          	ld	s0,16(sp)
    8000bf4c:	00813483          	ld	s1,8(sp)
    8000bf50:	02010113          	addi	sp,sp,32
    8000bf54:	00008067          	ret

000000008000bf58 <_ZN2B4D1Ev>:
class B4:public Thread{
    8000bf58:	ff010113          	addi	sp,sp,-16
    8000bf5c:	00113423          	sd	ra,8(sp)
    8000bf60:	00813023          	sd	s0,0(sp)
    8000bf64:	01010413          	addi	s0,sp,16
    8000bf68:	00009797          	auipc	a5,0x9
    8000bf6c:	7e878793          	addi	a5,a5,2024 # 80015750 <_ZTV2B4+0x10>
    8000bf70:	00f53023          	sd	a5,0(a0)
    8000bf74:	ffff8097          	auipc	ra,0xffff8
    8000bf78:	c68080e7          	jalr	-920(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bf7c:	00813083          	ld	ra,8(sp)
    8000bf80:	00013403          	ld	s0,0(sp)
    8000bf84:	01010113          	addi	sp,sp,16
    8000bf88:	00008067          	ret

000000008000bf8c <_ZN2B4D0Ev>:
    8000bf8c:	fe010113          	addi	sp,sp,-32
    8000bf90:	00113c23          	sd	ra,24(sp)
    8000bf94:	00813823          	sd	s0,16(sp)
    8000bf98:	00913423          	sd	s1,8(sp)
    8000bf9c:	02010413          	addi	s0,sp,32
    8000bfa0:	00050493          	mv	s1,a0
    8000bfa4:	00009797          	auipc	a5,0x9
    8000bfa8:	7ac78793          	addi	a5,a5,1964 # 80015750 <_ZTV2B4+0x10>
    8000bfac:	00f53023          	sd	a5,0(a0)
    8000bfb0:	ffff8097          	auipc	ra,0xffff8
    8000bfb4:	c2c080e7          	jalr	-980(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bfb8:	00048513          	mv	a0,s1
    8000bfbc:	ffff8097          	auipc	ra,0xffff8
    8000bfc0:	b10080e7          	jalr	-1264(ra) # 80003acc <_ZdlPv>
    8000bfc4:	01813083          	ld	ra,24(sp)
    8000bfc8:	01013403          	ld	s0,16(sp)
    8000bfcc:	00813483          	ld	s1,8(sp)
    8000bfd0:	02010113          	addi	sp,sp,32
    8000bfd4:	00008067          	ret

000000008000bfd8 <_ZN2A4D1Ev>:
class A4:public Thread{
    8000bfd8:	ff010113          	addi	sp,sp,-16
    8000bfdc:	00113423          	sd	ra,8(sp)
    8000bfe0:	00813023          	sd	s0,0(sp)
    8000bfe4:	01010413          	addi	s0,sp,16
    8000bfe8:	00009797          	auipc	a5,0x9
    8000bfec:	74078793          	addi	a5,a5,1856 # 80015728 <_ZTV2A4+0x10>
    8000bff0:	00f53023          	sd	a5,0(a0)
    8000bff4:	ffff8097          	auipc	ra,0xffff8
    8000bff8:	be8080e7          	jalr	-1048(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000bffc:	00813083          	ld	ra,8(sp)
    8000c000:	00013403          	ld	s0,0(sp)
    8000c004:	01010113          	addi	sp,sp,16
    8000c008:	00008067          	ret

000000008000c00c <_ZN2A4D0Ev>:
    8000c00c:	fe010113          	addi	sp,sp,-32
    8000c010:	00113c23          	sd	ra,24(sp)
    8000c014:	00813823          	sd	s0,16(sp)
    8000c018:	00913423          	sd	s1,8(sp)
    8000c01c:	02010413          	addi	s0,sp,32
    8000c020:	00050493          	mv	s1,a0
    8000c024:	00009797          	auipc	a5,0x9
    8000c028:	70478793          	addi	a5,a5,1796 # 80015728 <_ZTV2A4+0x10>
    8000c02c:	00f53023          	sd	a5,0(a0)
    8000c030:	ffff8097          	auipc	ra,0xffff8
    8000c034:	bac080e7          	jalr	-1108(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c038:	00048513          	mv	a0,s1
    8000c03c:	ffff8097          	auipc	ra,0xffff8
    8000c040:	a90080e7          	jalr	-1392(ra) # 80003acc <_ZdlPv>
    8000c044:	01813083          	ld	ra,24(sp)
    8000c048:	01013403          	ld	s0,16(sp)
    8000c04c:	00813483          	ld	s1,8(sp)
    8000c050:	02010113          	addi	sp,sp,32
    8000c054:	00008067          	ret

000000008000c058 <_ZN2C3D1Ev>:
class C3:public Thread{
    8000c058:	ff010113          	addi	sp,sp,-16
    8000c05c:	00113423          	sd	ra,8(sp)
    8000c060:	00813023          	sd	s0,0(sp)
    8000c064:	01010413          	addi	s0,sp,16
    8000c068:	00009797          	auipc	a5,0x9
    8000c06c:	69878793          	addi	a5,a5,1688 # 80015700 <_ZTV2C3+0x10>
    8000c070:	00f53023          	sd	a5,0(a0)
    8000c074:	ffff8097          	auipc	ra,0xffff8
    8000c078:	b68080e7          	jalr	-1176(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c07c:	00813083          	ld	ra,8(sp)
    8000c080:	00013403          	ld	s0,0(sp)
    8000c084:	01010113          	addi	sp,sp,16
    8000c088:	00008067          	ret

000000008000c08c <_ZN2C3D0Ev>:
    8000c08c:	fe010113          	addi	sp,sp,-32
    8000c090:	00113c23          	sd	ra,24(sp)
    8000c094:	00813823          	sd	s0,16(sp)
    8000c098:	00913423          	sd	s1,8(sp)
    8000c09c:	02010413          	addi	s0,sp,32
    8000c0a0:	00050493          	mv	s1,a0
    8000c0a4:	00009797          	auipc	a5,0x9
    8000c0a8:	65c78793          	addi	a5,a5,1628 # 80015700 <_ZTV2C3+0x10>
    8000c0ac:	00f53023          	sd	a5,0(a0)
    8000c0b0:	ffff8097          	auipc	ra,0xffff8
    8000c0b4:	b2c080e7          	jalr	-1236(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c0b8:	00048513          	mv	a0,s1
    8000c0bc:	ffff8097          	auipc	ra,0xffff8
    8000c0c0:	a10080e7          	jalr	-1520(ra) # 80003acc <_ZdlPv>
    8000c0c4:	01813083          	ld	ra,24(sp)
    8000c0c8:	01013403          	ld	s0,16(sp)
    8000c0cc:	00813483          	ld	s1,8(sp)
    8000c0d0:	02010113          	addi	sp,sp,32
    8000c0d4:	00008067          	ret

000000008000c0d8 <_ZN2B3D1Ev>:
class B3:public Thread{
    8000c0d8:	ff010113          	addi	sp,sp,-16
    8000c0dc:	00113423          	sd	ra,8(sp)
    8000c0e0:	00813023          	sd	s0,0(sp)
    8000c0e4:	01010413          	addi	s0,sp,16
    8000c0e8:	00009797          	auipc	a5,0x9
    8000c0ec:	5f078793          	addi	a5,a5,1520 # 800156d8 <_ZTV2B3+0x10>
    8000c0f0:	00f53023          	sd	a5,0(a0)
    8000c0f4:	ffff8097          	auipc	ra,0xffff8
    8000c0f8:	ae8080e7          	jalr	-1304(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c0fc:	00813083          	ld	ra,8(sp)
    8000c100:	00013403          	ld	s0,0(sp)
    8000c104:	01010113          	addi	sp,sp,16
    8000c108:	00008067          	ret

000000008000c10c <_ZN2B3D0Ev>:
    8000c10c:	fe010113          	addi	sp,sp,-32
    8000c110:	00113c23          	sd	ra,24(sp)
    8000c114:	00813823          	sd	s0,16(sp)
    8000c118:	00913423          	sd	s1,8(sp)
    8000c11c:	02010413          	addi	s0,sp,32
    8000c120:	00050493          	mv	s1,a0
    8000c124:	00009797          	auipc	a5,0x9
    8000c128:	5b478793          	addi	a5,a5,1460 # 800156d8 <_ZTV2B3+0x10>
    8000c12c:	00f53023          	sd	a5,0(a0)
    8000c130:	ffff8097          	auipc	ra,0xffff8
    8000c134:	aac080e7          	jalr	-1364(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c138:	00048513          	mv	a0,s1
    8000c13c:	ffff8097          	auipc	ra,0xffff8
    8000c140:	990080e7          	jalr	-1648(ra) # 80003acc <_ZdlPv>
    8000c144:	01813083          	ld	ra,24(sp)
    8000c148:	01013403          	ld	s0,16(sp)
    8000c14c:	00813483          	ld	s1,8(sp)
    8000c150:	02010113          	addi	sp,sp,32
    8000c154:	00008067          	ret

000000008000c158 <_ZN2A3D1Ev>:
class A3:public Thread{
    8000c158:	ff010113          	addi	sp,sp,-16
    8000c15c:	00113423          	sd	ra,8(sp)
    8000c160:	00813023          	sd	s0,0(sp)
    8000c164:	01010413          	addi	s0,sp,16
    8000c168:	00009797          	auipc	a5,0x9
    8000c16c:	54878793          	addi	a5,a5,1352 # 800156b0 <_ZTV2A3+0x10>
    8000c170:	00f53023          	sd	a5,0(a0)
    8000c174:	ffff8097          	auipc	ra,0xffff8
    8000c178:	a68080e7          	jalr	-1432(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c17c:	00813083          	ld	ra,8(sp)
    8000c180:	00013403          	ld	s0,0(sp)
    8000c184:	01010113          	addi	sp,sp,16
    8000c188:	00008067          	ret

000000008000c18c <_ZN2A3D0Ev>:
    8000c18c:	fe010113          	addi	sp,sp,-32
    8000c190:	00113c23          	sd	ra,24(sp)
    8000c194:	00813823          	sd	s0,16(sp)
    8000c198:	00913423          	sd	s1,8(sp)
    8000c19c:	02010413          	addi	s0,sp,32
    8000c1a0:	00050493          	mv	s1,a0
    8000c1a4:	00009797          	auipc	a5,0x9
    8000c1a8:	50c78793          	addi	a5,a5,1292 # 800156b0 <_ZTV2A3+0x10>
    8000c1ac:	00f53023          	sd	a5,0(a0)
    8000c1b0:	ffff8097          	auipc	ra,0xffff8
    8000c1b4:	a2c080e7          	jalr	-1492(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c1b8:	00048513          	mv	a0,s1
    8000c1bc:	ffff8097          	auipc	ra,0xffff8
    8000c1c0:	910080e7          	jalr	-1776(ra) # 80003acc <_ZdlPv>
    8000c1c4:	01813083          	ld	ra,24(sp)
    8000c1c8:	01013403          	ld	s0,16(sp)
    8000c1cc:	00813483          	ld	s1,8(sp)
    8000c1d0:	02010113          	addi	sp,sp,32
    8000c1d4:	00008067          	ret

000000008000c1d8 <_ZN2A6D1Ev>:
class A6:public Thread{
    8000c1d8:	ff010113          	addi	sp,sp,-16
    8000c1dc:	00113423          	sd	ra,8(sp)
    8000c1e0:	00813023          	sd	s0,0(sp)
    8000c1e4:	01010413          	addi	s0,sp,16
    8000c1e8:	00009797          	auipc	a5,0x9
    8000c1ec:	4a078793          	addi	a5,a5,1184 # 80015688 <_ZTV2A6+0x10>
    8000c1f0:	00f53023          	sd	a5,0(a0)
    8000c1f4:	ffff8097          	auipc	ra,0xffff8
    8000c1f8:	9e8080e7          	jalr	-1560(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c1fc:	00813083          	ld	ra,8(sp)
    8000c200:	00013403          	ld	s0,0(sp)
    8000c204:	01010113          	addi	sp,sp,16
    8000c208:	00008067          	ret

000000008000c20c <_ZN2A6D0Ev>:
    8000c20c:	fe010113          	addi	sp,sp,-32
    8000c210:	00113c23          	sd	ra,24(sp)
    8000c214:	00813823          	sd	s0,16(sp)
    8000c218:	00913423          	sd	s1,8(sp)
    8000c21c:	02010413          	addi	s0,sp,32
    8000c220:	00050493          	mv	s1,a0
    8000c224:	00009797          	auipc	a5,0x9
    8000c228:	46478793          	addi	a5,a5,1124 # 80015688 <_ZTV2A6+0x10>
    8000c22c:	00f53023          	sd	a5,0(a0)
    8000c230:	ffff8097          	auipc	ra,0xffff8
    8000c234:	9ac080e7          	jalr	-1620(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c238:	00048513          	mv	a0,s1
    8000c23c:	ffff8097          	auipc	ra,0xffff8
    8000c240:	890080e7          	jalr	-1904(ra) # 80003acc <_ZdlPv>
    8000c244:	01813083          	ld	ra,24(sp)
    8000c248:	01013403          	ld	s0,16(sp)
    8000c24c:	00813483          	ld	s1,8(sp)
    8000c250:	02010113          	addi	sp,sp,32
    8000c254:	00008067          	ret

000000008000c258 <_ZN2A2D1Ev>:
class A2:public Thread{
    8000c258:	ff010113          	addi	sp,sp,-16
    8000c25c:	00113423          	sd	ra,8(sp)
    8000c260:	00813023          	sd	s0,0(sp)
    8000c264:	01010413          	addi	s0,sp,16
    8000c268:	00009797          	auipc	a5,0x9
    8000c26c:	3f878793          	addi	a5,a5,1016 # 80015660 <_ZTV2A2+0x10>
    8000c270:	00f53023          	sd	a5,0(a0)
    8000c274:	ffff8097          	auipc	ra,0xffff8
    8000c278:	968080e7          	jalr	-1688(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c27c:	00813083          	ld	ra,8(sp)
    8000c280:	00013403          	ld	s0,0(sp)
    8000c284:	01010113          	addi	sp,sp,16
    8000c288:	00008067          	ret

000000008000c28c <_ZN2A2D0Ev>:
    8000c28c:	fe010113          	addi	sp,sp,-32
    8000c290:	00113c23          	sd	ra,24(sp)
    8000c294:	00813823          	sd	s0,16(sp)
    8000c298:	00913423          	sd	s1,8(sp)
    8000c29c:	02010413          	addi	s0,sp,32
    8000c2a0:	00050493          	mv	s1,a0
    8000c2a4:	00009797          	auipc	a5,0x9
    8000c2a8:	3bc78793          	addi	a5,a5,956 # 80015660 <_ZTV2A2+0x10>
    8000c2ac:	00f53023          	sd	a5,0(a0)
    8000c2b0:	ffff8097          	auipc	ra,0xffff8
    8000c2b4:	92c080e7          	jalr	-1748(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c2b8:	00048513          	mv	a0,s1
    8000c2bc:	ffff8097          	auipc	ra,0xffff8
    8000c2c0:	810080e7          	jalr	-2032(ra) # 80003acc <_ZdlPv>
    8000c2c4:	01813083          	ld	ra,24(sp)
    8000c2c8:	01013403          	ld	s0,16(sp)
    8000c2cc:	00813483          	ld	s1,8(sp)
    8000c2d0:	02010113          	addi	sp,sp,32
    8000c2d4:	00008067          	ret

000000008000c2d8 <_ZN2A1D1Ev>:
class A1:public Thread{
    8000c2d8:	ff010113          	addi	sp,sp,-16
    8000c2dc:	00113423          	sd	ra,8(sp)
    8000c2e0:	00813023          	sd	s0,0(sp)
    8000c2e4:	01010413          	addi	s0,sp,16
    8000c2e8:	00009797          	auipc	a5,0x9
    8000c2ec:	35078793          	addi	a5,a5,848 # 80015638 <_ZTV2A1+0x10>
    8000c2f0:	00f53023          	sd	a5,0(a0)
    8000c2f4:	ffff8097          	auipc	ra,0xffff8
    8000c2f8:	8e8080e7          	jalr	-1816(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c2fc:	00813083          	ld	ra,8(sp)
    8000c300:	00013403          	ld	s0,0(sp)
    8000c304:	01010113          	addi	sp,sp,16
    8000c308:	00008067          	ret

000000008000c30c <_ZN2A1D0Ev>:
    8000c30c:	fe010113          	addi	sp,sp,-32
    8000c310:	00113c23          	sd	ra,24(sp)
    8000c314:	00813823          	sd	s0,16(sp)
    8000c318:	00913423          	sd	s1,8(sp)
    8000c31c:	02010413          	addi	s0,sp,32
    8000c320:	00050493          	mv	s1,a0
    8000c324:	00009797          	auipc	a5,0x9
    8000c328:	31478793          	addi	a5,a5,788 # 80015638 <_ZTV2A1+0x10>
    8000c32c:	00f53023          	sd	a5,0(a0)
    8000c330:	ffff8097          	auipc	ra,0xffff8
    8000c334:	8ac080e7          	jalr	-1876(ra) # 80003bdc <_ZN6ThreadD1Ev>
    8000c338:	00048513          	mv	a0,s1
    8000c33c:	ffff7097          	auipc	ra,0xffff7
    8000c340:	790080e7          	jalr	1936(ra) # 80003acc <_ZdlPv>
    8000c344:	01813083          	ld	ra,24(sp)
    8000c348:	01013403          	ld	s0,16(sp)
    8000c34c:	00813483          	ld	s1,8(sp)
    8000c350:	02010113          	addi	sp,sp,32
    8000c354:	00008067          	ret

000000008000c358 <_ZN2A73runEv>:
    void run() override {
    8000c358:	fe010113          	addi	sp,sp,-32
    8000c35c:	00113c23          	sd	ra,24(sp)
    8000c360:	00813823          	sd	s0,16(sp)
    8000c364:	00913423          	sd	s1,8(sp)
    8000c368:	01213023          	sd	s2,0(sp)
    8000c36c:	02010413          	addi	s0,sp,32
    8000c370:	00050913          	mv	s2,a0
        printString("Producer run wrapper\n");
    8000c374:	00005517          	auipc	a0,0x5
    8000c378:	dbc50513          	addi	a0,a0,-580 # 80011130 <CONSOLE_STATUS+0x1120>
    8000c37c:	ffffb097          	auipc	ra,0xffffb
    8000c380:	330080e7          	jalr	816(ra) # 800076ac <_Z11printStringPKc>
        for (int i = 0; i < 1000; i++) {
    8000c384:	00000493          	li	s1,0
    8000c388:	0100006f          	j	8000c398 <_ZN2A73runEv+0x40>
            thread_dispatch();
    8000c38c:	ffff5097          	auipc	ra,0xffff5
    8000c390:	fcc080e7          	jalr	-52(ra) # 80001358 <_Z15thread_dispatchv>
        for (int i = 0; i < 1000; i++) {
    8000c394:	0014849b          	addiw	s1,s1,1
    8000c398:	3e700793          	li	a5,999
    8000c39c:	0097cc63          	blt	a5,s1,8000c3b4 <_ZN2A73runEv+0x5c>
            for (int j = 0; j < 1000; j++) {}
    8000c3a0:	00000793          	li	a5,0
    8000c3a4:	3e700713          	li	a4,999
    8000c3a8:	fef742e3          	blt	a4,a5,8000c38c <_ZN2A73runEv+0x34>
    8000c3ac:	0017879b          	addiw	a5,a5,1
    8000c3b0:	ff5ff06f          	j	8000c3a4 <_ZN2A73runEv+0x4c>
        printString("Pozivam producer metod\n");
    8000c3b4:	00005517          	auipc	a0,0x5
    8000c3b8:	d9450513          	addi	a0,a0,-620 # 80011148 <CONSOLE_STATUS+0x1138>
    8000c3bc:	ffffb097          	auipc	ra,0xffffb
    8000c3c0:	2f0080e7          	jalr	752(ra) # 800076ac <_Z11printStringPKc>
        Thread::producer(id);
    8000c3c4:	02092583          	lw	a1,32(s2)
    8000c3c8:	00090513          	mv	a0,s2
    8000c3cc:	ffff8097          	auipc	ra,0xffff8
    8000c3d0:	ce4080e7          	jalr	-796(ra) # 800040b0 <_ZN6Thread8producerEi>
        printString("Producer finished\n");
    8000c3d4:	00005517          	auipc	a0,0x5
    8000c3d8:	d8c50513          	addi	a0,a0,-628 # 80011160 <CONSOLE_STATUS+0x1150>
    8000c3dc:	ffffb097          	auipc	ra,0xffffb
    8000c3e0:	2d0080e7          	jalr	720(ra) # 800076ac <_Z11printStringPKc>
        thread_dispatch();
    8000c3e4:	ffff5097          	auipc	ra,0xffff5
    8000c3e8:	f74080e7          	jalr	-140(ra) # 80001358 <_Z15thread_dispatchv>
    }
    8000c3ec:	01813083          	ld	ra,24(sp)
    8000c3f0:	01013403          	ld	s0,16(sp)
    8000c3f4:	00813483          	ld	s1,8(sp)
    8000c3f8:	00013903          	ld	s2,0(sp)
    8000c3fc:	02010113          	addi	sp,sp,32
    8000c400:	00008067          	ret

000000008000c404 <_ZN2B73runEv>:
    void run() override{
    8000c404:	fe010113          	addi	sp,sp,-32
    8000c408:	00113c23          	sd	ra,24(sp)
    8000c40c:	00813823          	sd	s0,16(sp)
    8000c410:	00913423          	sd	s1,8(sp)
    8000c414:	01213023          	sd	s2,0(sp)
    8000c418:	02010413          	addi	s0,sp,32
    8000c41c:	00050913          	mv	s2,a0
        printString("Consumer run wrapper\n");
    8000c420:	00005517          	auipc	a0,0x5
    8000c424:	d5850513          	addi	a0,a0,-680 # 80011178 <CONSOLE_STATUS+0x1168>
    8000c428:	ffffb097          	auipc	ra,0xffffb
    8000c42c:	284080e7          	jalr	644(ra) # 800076ac <_Z11printStringPKc>
        for (int i = 0;i < 1000; i++) {
    8000c430:	00000493          	li	s1,0
    8000c434:	0100006f          	j	8000c444 <_ZN2B73runEv+0x40>
            thread_dispatch();
    8000c438:	ffff5097          	auipc	ra,0xffff5
    8000c43c:	f20080e7          	jalr	-224(ra) # 80001358 <_Z15thread_dispatchv>
        for (int i = 0;i < 1000; i++) {
    8000c440:	0014849b          	addiw	s1,s1,1
    8000c444:	3e700793          	li	a5,999
    8000c448:	0097cc63          	blt	a5,s1,8000c460 <_ZN2B73runEv+0x5c>
            for (int j = 0; j < 1000; j++) {}
    8000c44c:	00000793          	li	a5,0
    8000c450:	3e700713          	li	a4,999
    8000c454:	fef742e3          	blt	a4,a5,8000c438 <_ZN2B73runEv+0x34>
    8000c458:	0017879b          	addiw	a5,a5,1
    8000c45c:	ff5ff06f          	j	8000c450 <_ZN2B73runEv+0x4c>
        printString("Pozivam consumer metod\n");
    8000c460:	00005517          	auipc	a0,0x5
    8000c464:	d3050513          	addi	a0,a0,-720 # 80011190 <CONSOLE_STATUS+0x1180>
    8000c468:	ffffb097          	auipc	ra,0xffffb
    8000c46c:	244080e7          	jalr	580(ra) # 800076ac <_Z11printStringPKc>
        Thread::consumer(id);
    8000c470:	02092583          	lw	a1,32(s2)
    8000c474:	00090513          	mv	a0,s2
    8000c478:	ffff8097          	auipc	ra,0xffff8
    8000c47c:	c0c080e7          	jalr	-1012(ra) # 80004084 <_ZN6Thread8consumerEi>
        printString("Consumer finished\n");
    8000c480:	00005517          	auipc	a0,0x5
    8000c484:	d2850513          	addi	a0,a0,-728 # 800111a8 <CONSOLE_STATUS+0x1198>
    8000c488:	ffffb097          	auipc	ra,0xffffb
    8000c48c:	224080e7          	jalr	548(ra) # 800076ac <_Z11printStringPKc>
        thread_dispatch();
    8000c490:	ffff5097          	auipc	ra,0xffff5
    8000c494:	ec8080e7          	jalr	-312(ra) # 80001358 <_Z15thread_dispatchv>
    }
    8000c498:	01813083          	ld	ra,24(sp)
    8000c49c:	01013403          	ld	s0,16(sp)
    8000c4a0:	00813483          	ld	s1,8(sp)
    8000c4a4:	00013903          	ld	s2,0(sp)
    8000c4a8:	02010113          	addi	sp,sp,32
    8000c4ac:	00008067          	ret

000000008000c4b0 <_ZN11testTRYWait3runEv>:
    void run() override{
    8000c4b0:	fd010113          	addi	sp,sp,-48
    8000c4b4:	02113423          	sd	ra,40(sp)
    8000c4b8:	02813023          	sd	s0,32(sp)
    8000c4bc:	00913c23          	sd	s1,24(sp)
    8000c4c0:	01213823          	sd	s2,16(sp)
    8000c4c4:	01313423          	sd	s3,8(sp)
    8000c4c8:	01413023          	sd	s4,0(sp)
    8000c4cc:	03010413          	addi	s0,sp,48
    8000c4d0:	00050913          	mv	s2,a0
        int i = 3;
    8000c4d4:	00300a13          	li	s4,3
    8000c4d8:	1680006f          	j	8000c640 <_ZN11testTRYWait3runEv+0x190>
                printString("Nit usla u kriticnu sekciju i smanjila semafor, njen id je: ");
    8000c4dc:	00005517          	auipc	a0,0x5
    8000c4e0:	ce450513          	addi	a0,a0,-796 # 800111c0 <CONSOLE_STATUS+0x11b0>
    8000c4e4:	ffffb097          	auipc	ra,0xffffb
    8000c4e8:	1c8080e7          	jalr	456(ra) # 800076ac <_Z11printStringPKc>
                printInt(id,10,0);
    8000c4ec:	00000613          	li	a2,0
    8000c4f0:	00a00593          	li	a1,10
    8000c4f4:	00098513          	mv	a0,s3
    8000c4f8:	ffffb097          	auipc	ra,0xffffb
    8000c4fc:	364080e7          	jalr	868(ra) # 8000785c <_Z8printIntiii>
                printString("\n");
    8000c500:	00004517          	auipc	a0,0x4
    8000c504:	4e050513          	addi	a0,a0,1248 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000c508:	ffffb097          	auipc	ra,0xffffb
    8000c50c:	1a4080e7          	jalr	420(ra) # 800076ac <_Z11printStringPKc>
                for(int j=0;j<10000;j++){
    8000c510:	00000493          	li	s1,0
    8000c514:	0100006f          	j	8000c524 <_ZN11testTRYWait3runEv+0x74>
                    thread_dispatch();
    8000c518:	ffff5097          	auipc	ra,0xffff5
    8000c51c:	e40080e7          	jalr	-448(ra) # 80001358 <_Z15thread_dispatchv>
                for(int j=0;j<10000;j++){
    8000c520:	0014849b          	addiw	s1,s1,1
    8000c524:	000027b7          	lui	a5,0x2
    8000c528:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000c52c:	0097ce63          	blt	a5,s1,8000c548 <_ZN11testTRYWait3runEv+0x98>
                    for(int k=0;k<30000;k++){}
    8000c530:	00000713          	li	a4,0
    8000c534:	000077b7          	lui	a5,0x7
    8000c538:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000c53c:	fce7cee3          	blt	a5,a4,8000c518 <_ZN11testTRYWait3runEv+0x68>
    8000c540:	0017071b          	addiw	a4,a4,1
    8000c544:	ff1ff06f          	j	8000c534 <_ZN11testTRYWait3runEv+0x84>
                sem->signal();
    8000c548:	02093503          	ld	a0,32(s2)
    8000c54c:	ffff7097          	auipc	ra,0xffff7
    8000c550:	798080e7          	jalr	1944(ra) # 80003ce4 <_ZN9Semaphore6signalEv>
                printString("Nit izasla iz kriticne sekcije, njen id je: ");
    8000c554:	00005517          	auipc	a0,0x5
    8000c558:	cac50513          	addi	a0,a0,-852 # 80011200 <CONSOLE_STATUS+0x11f0>
    8000c55c:	ffffb097          	auipc	ra,0xffffb
    8000c560:	150080e7          	jalr	336(ra) # 800076ac <_Z11printStringPKc>
                printInt(id,10,0);
    8000c564:	00000613          	li	a2,0
    8000c568:	00a00593          	li	a1,10
    8000c56c:	00098513          	mv	a0,s3
    8000c570:	ffffb097          	auipc	ra,0xffffb
    8000c574:	2ec080e7          	jalr	748(ra) # 8000785c <_Z8printIntiii>
                printString("\n");
    8000c578:	00004517          	auipc	a0,0x4
    8000c57c:	46850513          	addi	a0,a0,1128 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000c580:	ffffb097          	auipc	ra,0xffffb
    8000c584:	12c080e7          	jalr	300(ra) # 800076ac <_Z11printStringPKc>
        waitNiti->signal();
    8000c588:	00009517          	auipc	a0,0x9
    8000c58c:	75053503          	ld	a0,1872(a0) # 80015cd8 <_ZL8waitNiti>
    8000c590:	ffff7097          	auipc	ra,0xffff7
    8000c594:	754080e7          	jalr	1876(ra) # 80003ce4 <_ZN9Semaphore6signalEv>
        printString("Nit zavrsila\n");
    8000c598:	00005517          	auipc	a0,0x5
    8000c59c:	d0050513          	addi	a0,a0,-768 # 80011298 <CONSOLE_STATUS+0x1288>
    8000c5a0:	ffffb097          	auipc	ra,0xffffb
    8000c5a4:	10c080e7          	jalr	268(ra) # 800076ac <_Z11printStringPKc>
    };
    8000c5a8:	02813083          	ld	ra,40(sp)
    8000c5ac:	02013403          	ld	s0,32(sp)
    8000c5b0:	01813483          	ld	s1,24(sp)
    8000c5b4:	01013903          	ld	s2,16(sp)
    8000c5b8:	00813983          	ld	s3,8(sp)
    8000c5bc:	00013a03          	ld	s4,0(sp)
    8000c5c0:	03010113          	addi	sp,sp,48
    8000c5c4:	00008067          	ret
                printString("Nit nije uspela da se prodje semafor, nastavlja dalje, njen id je: ");
    8000c5c8:	00005517          	auipc	a0,0x5
    8000c5cc:	c6850513          	addi	a0,a0,-920 # 80011230 <CONSOLE_STATUS+0x1220>
    8000c5d0:	ffffb097          	auipc	ra,0xffffb
    8000c5d4:	0dc080e7          	jalr	220(ra) # 800076ac <_Z11printStringPKc>
                printInt(id,10,0);
    8000c5d8:	00000613          	li	a2,0
    8000c5dc:	00a00593          	li	a1,10
    8000c5e0:	00098513          	mv	a0,s3
    8000c5e4:	ffffb097          	auipc	ra,0xffffb
    8000c5e8:	278080e7          	jalr	632(ra) # 8000785c <_Z8printIntiii>
                printString("\n");
    8000c5ec:	00004517          	auipc	a0,0x4
    8000c5f0:	3f450513          	addi	a0,a0,1012 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000c5f4:	ffffb097          	auipc	ra,0xffffb
    8000c5f8:	0b8080e7          	jalr	184(ra) # 800076ac <_Z11printStringPKc>
                for(int j=0;j<10000;j++){
    8000c5fc:	00000493          	li	s1,0
    8000c600:	0100006f          	j	8000c610 <_ZN11testTRYWait3runEv+0x160>
                    thread_dispatch();
    8000c604:	ffff5097          	auipc	ra,0xffff5
    8000c608:	d54080e7          	jalr	-684(ra) # 80001358 <_Z15thread_dispatchv>
                for(int j=0;j<10000;j++){
    8000c60c:	0014849b          	addiw	s1,s1,1
    8000c610:	000027b7          	lui	a5,0x2
    8000c614:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000c618:	0097ce63          	blt	a5,s1,8000c634 <_ZN11testTRYWait3runEv+0x184>
                    for(int k=0;k<30000;k++){}
    8000c61c:	00000713          	li	a4,0
    8000c620:	000077b7          	lui	a5,0x7
    8000c624:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000c628:	fce7cee3          	blt	a5,a4,8000c604 <_ZN11testTRYWait3runEv+0x154>
    8000c62c:	0017071b          	addiw	a4,a4,1
    8000c630:	ff1ff06f          	j	8000c620 <_ZN11testTRYWait3runEv+0x170>
            i--;
    8000c634:	fffa0a1b          	addiw	s4,s4,-1
            thread_dispatch();
    8000c638:	ffff5097          	auipc	ra,0xffff5
    8000c63c:	d20080e7          	jalr	-736(ra) # 80001358 <_Z15thread_dispatchv>
        while(i>0){
    8000c640:	f54054e3          	blez	s4,8000c588 <_ZN11testTRYWait3runEv+0xd8>
            int id = getThreadId();
    8000c644:	00090513          	mv	a0,s2
    8000c648:	ffff8097          	auipc	ra,0xffff8
    8000c64c:	898080e7          	jalr	-1896(ra) # 80003ee0 <_ZN6Thread11getThreadIdEv>
    8000c650:	00050993          	mv	s3,a0
            int res = sem->trywait();
    8000c654:	02093503          	ld	a0,32(s2)
    8000c658:	ffff7097          	auipc	ra,0xffff7
    8000c65c:	6b8080e7          	jalr	1720(ra) # 80003d10 <_ZN9Semaphore7trywaitEv>
            if(res==1){
    8000c660:	00100713          	li	a4,1
    8000c664:	e6e50ce3          	beq	a0,a4,8000c4dc <_ZN11testTRYWait3runEv+0x2c>
            else if(res == -1){
    8000c668:	fff00713          	li	a4,-1
    8000c66c:	f4e50ee3          	beq	a0,a4,8000c5c8 <_ZN11testTRYWait3runEv+0x118>
                printString("Semafor zatvoren i oslobodjen\n");
    8000c670:	00005517          	auipc	a0,0x5
    8000c674:	c0850513          	addi	a0,a0,-1016 # 80011278 <CONSOLE_STATUS+0x1268>
    8000c678:	ffffb097          	auipc	ra,0xffffb
    8000c67c:	034080e7          	jalr	52(ra) # 800076ac <_Z11printStringPKc>
    8000c680:	fb5ff06f          	j	8000c634 <_ZN11testTRYWait3runEv+0x184>

000000008000c684 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000c684:	fe010113          	addi	sp,sp,-32
    8000c688:	00113c23          	sd	ra,24(sp)
    8000c68c:	00813823          	sd	s0,16(sp)
    8000c690:	00913423          	sd	s1,8(sp)
    8000c694:	01213023          	sd	s2,0(sp)
    8000c698:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000c69c:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000c6a0:	00600493          	li	s1,6
    while (--i > 0) {
    8000c6a4:	fff4849b          	addiw	s1,s1,-1
    8000c6a8:	04905463          	blez	s1,8000c6f0 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    8000c6ac:	00005517          	auipc	a0,0x5
    8000c6b0:	bfc50513          	addi	a0,a0,-1028 # 800112a8 <CONSOLE_STATUS+0x1298>
    8000c6b4:	ffffb097          	auipc	ra,0xffffb
    8000c6b8:	ff8080e7          	jalr	-8(ra) # 800076ac <_Z11printStringPKc>
        printInt(sleep_time);
    8000c6bc:	00000613          	li	a2,0
    8000c6c0:	00a00593          	li	a1,10
    8000c6c4:	0009051b          	sext.w	a0,s2
    8000c6c8:	ffffb097          	auipc	ra,0xffffb
    8000c6cc:	194080e7          	jalr	404(ra) # 8000785c <_Z8printIntiii>
        printString(" !\n");
    8000c6d0:	00005517          	auipc	a0,0x5
    8000c6d4:	be050513          	addi	a0,a0,-1056 # 800112b0 <CONSOLE_STATUS+0x12a0>
    8000c6d8:	ffffb097          	auipc	ra,0xffffb
    8000c6dc:	fd4080e7          	jalr	-44(ra) # 800076ac <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000c6e0:	00090513          	mv	a0,s2
    8000c6e4:	ffff5097          	auipc	ra,0xffff5
    8000c6e8:	e4c080e7          	jalr	-436(ra) # 80001530 <_Z10time_sleepm>
    while (--i > 0) {
    8000c6ec:	fb9ff06f          	j	8000c6a4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000c6f0:	00a00793          	li	a5,10
    8000c6f4:	02f95933          	divu	s2,s2,a5
    8000c6f8:	fff90913          	addi	s2,s2,-1
    8000c6fc:	00009797          	auipc	a5,0x9
    8000c700:	5f478793          	addi	a5,a5,1524 # 80015cf0 <_ZL8finished>
    8000c704:	01278933          	add	s2,a5,s2
    8000c708:	00100793          	li	a5,1
    8000c70c:	00f90023          	sb	a5,0(s2)
}
    8000c710:	01813083          	ld	ra,24(sp)
    8000c714:	01013403          	ld	s0,16(sp)
    8000c718:	00813483          	ld	s1,8(sp)
    8000c71c:	00013903          	ld	s2,0(sp)
    8000c720:	02010113          	addi	sp,sp,32
    8000c724:	00008067          	ret

000000008000c728 <_Z12testSleepingv>:

void testSleeping() {
    8000c728:	fc010113          	addi	sp,sp,-64
    8000c72c:	02113c23          	sd	ra,56(sp)
    8000c730:	02813823          	sd	s0,48(sp)
    8000c734:	02913423          	sd	s1,40(sp)
    8000c738:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000c73c:	00a00793          	li	a5,10
    8000c740:	fcf43823          	sd	a5,-48(s0)
    8000c744:	01400793          	li	a5,20
    8000c748:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000c74c:	00000493          	li	s1,0
    8000c750:	02c0006f          	j	8000c77c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000c754:	00349793          	slli	a5,s1,0x3
    8000c758:	fd040613          	addi	a2,s0,-48
    8000c75c:	00f60633          	add	a2,a2,a5
    8000c760:	00000597          	auipc	a1,0x0
    8000c764:	f2458593          	addi	a1,a1,-220 # 8000c684 <_ZL9sleepyRunPv>
    8000c768:	fc040513          	addi	a0,s0,-64
    8000c76c:	00f50533          	add	a0,a0,a5
    8000c770:	ffff5097          	auipc	ra,0xffff5
    8000c774:	b30080e7          	jalr	-1232(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000c778:	0014849b          	addiw	s1,s1,1
    8000c77c:	00100793          	li	a5,1
    8000c780:	fc97dae3          	bge	a5,s1,8000c754 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000c784:	00009797          	auipc	a5,0x9
    8000c788:	56c7c783          	lbu	a5,1388(a5) # 80015cf0 <_ZL8finished>
    8000c78c:	fe078ce3          	beqz	a5,8000c784 <_Z12testSleepingv+0x5c>
    8000c790:	00009797          	auipc	a5,0x9
    8000c794:	5617c783          	lbu	a5,1377(a5) # 80015cf1 <_ZL8finished+0x1>
    8000c798:	fe0786e3          	beqz	a5,8000c784 <_Z12testSleepingv+0x5c>
}
    8000c79c:	03813083          	ld	ra,56(sp)
    8000c7a0:	03013403          	ld	s0,48(sp)
    8000c7a4:	02813483          	ld	s1,40(sp)
    8000c7a8:	04010113          	addi	sp,sp,64
    8000c7ac:	00008067          	ret

000000008000c7b0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000c7b0:	fe010113          	addi	sp,sp,-32
    8000c7b4:	00113c23          	sd	ra,24(sp)
    8000c7b8:	00813823          	sd	s0,16(sp)
    8000c7bc:	00913423          	sd	s1,8(sp)
    8000c7c0:	01213023          	sd	s2,0(sp)
    8000c7c4:	02010413          	addi	s0,sp,32
    8000c7c8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000c7cc:	00100793          	li	a5,1
    8000c7d0:	02a7f863          	bgeu	a5,a0,8000c800 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000c7d4:	00a00793          	li	a5,10
    8000c7d8:	02f577b3          	remu	a5,a0,a5
    8000c7dc:	02078e63          	beqz	a5,8000c818 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000c7e0:	fff48513          	addi	a0,s1,-1
    8000c7e4:	00000097          	auipc	ra,0x0
    8000c7e8:	fcc080e7          	jalr	-52(ra) # 8000c7b0 <_ZL9fibonaccim>
    8000c7ec:	00050913          	mv	s2,a0
    8000c7f0:	ffe48513          	addi	a0,s1,-2
    8000c7f4:	00000097          	auipc	ra,0x0
    8000c7f8:	fbc080e7          	jalr	-68(ra) # 8000c7b0 <_ZL9fibonaccim>
    8000c7fc:	00a90533          	add	a0,s2,a0
}
    8000c800:	01813083          	ld	ra,24(sp)
    8000c804:	01013403          	ld	s0,16(sp)
    8000c808:	00813483          	ld	s1,8(sp)
    8000c80c:	00013903          	ld	s2,0(sp)
    8000c810:	02010113          	addi	sp,sp,32
    8000c814:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000c818:	ffff5097          	auipc	ra,0xffff5
    8000c81c:	b40080e7          	jalr	-1216(ra) # 80001358 <_Z15thread_dispatchv>
    8000c820:	fc1ff06f          	j	8000c7e0 <_ZL9fibonaccim+0x30>

000000008000c824 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000c824:	fe010113          	addi	sp,sp,-32
    8000c828:	00113c23          	sd	ra,24(sp)
    8000c82c:	00813823          	sd	s0,16(sp)
    8000c830:	00913423          	sd	s1,8(sp)
    8000c834:	01213023          	sd	s2,0(sp)
    8000c838:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000c83c:	00a00493          	li	s1,10
    8000c840:	0400006f          	j	8000c880 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000c844:	00004517          	auipc	a0,0x4
    8000c848:	eec50513          	addi	a0,a0,-276 # 80010730 <CONSOLE_STATUS+0x720>
    8000c84c:	ffffb097          	auipc	ra,0xffffb
    8000c850:	e60080e7          	jalr	-416(ra) # 800076ac <_Z11printStringPKc>
    8000c854:	00000613          	li	a2,0
    8000c858:	00a00593          	li	a1,10
    8000c85c:	00048513          	mv	a0,s1
    8000c860:	ffffb097          	auipc	ra,0xffffb
    8000c864:	ffc080e7          	jalr	-4(ra) # 8000785c <_Z8printIntiii>
    8000c868:	00004517          	auipc	a0,0x4
    8000c86c:	17850513          	addi	a0,a0,376 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000c870:	ffffb097          	auipc	ra,0xffffb
    8000c874:	e3c080e7          	jalr	-452(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000c878:	0014849b          	addiw	s1,s1,1
    8000c87c:	0ff4f493          	andi	s1,s1,255
    8000c880:	00c00793          	li	a5,12
    8000c884:	fc97f0e3          	bgeu	a5,s1,8000c844 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000c888:	00004517          	auipc	a0,0x4
    8000c88c:	eb050513          	addi	a0,a0,-336 # 80010738 <CONSOLE_STATUS+0x728>
    8000c890:	ffffb097          	auipc	ra,0xffffb
    8000c894:	e1c080e7          	jalr	-484(ra) # 800076ac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000c898:	00500313          	li	t1,5
    thread_dispatch();
    8000c89c:	ffff5097          	auipc	ra,0xffff5
    8000c8a0:	abc080e7          	jalr	-1348(ra) # 80001358 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000c8a4:	01000513          	li	a0,16
    8000c8a8:	00000097          	auipc	ra,0x0
    8000c8ac:	f08080e7          	jalr	-248(ra) # 8000c7b0 <_ZL9fibonaccim>
    8000c8b0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000c8b4:	00004517          	auipc	a0,0x4
    8000c8b8:	e9450513          	addi	a0,a0,-364 # 80010748 <CONSOLE_STATUS+0x738>
    8000c8bc:	ffffb097          	auipc	ra,0xffffb
    8000c8c0:	df0080e7          	jalr	-528(ra) # 800076ac <_Z11printStringPKc>
    8000c8c4:	00000613          	li	a2,0
    8000c8c8:	00a00593          	li	a1,10
    8000c8cc:	0009051b          	sext.w	a0,s2
    8000c8d0:	ffffb097          	auipc	ra,0xffffb
    8000c8d4:	f8c080e7          	jalr	-116(ra) # 8000785c <_Z8printIntiii>
    8000c8d8:	00004517          	auipc	a0,0x4
    8000c8dc:	10850513          	addi	a0,a0,264 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000c8e0:	ffffb097          	auipc	ra,0xffffb
    8000c8e4:	dcc080e7          	jalr	-564(ra) # 800076ac <_Z11printStringPKc>
    8000c8e8:	0400006f          	j	8000c928 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000c8ec:	00004517          	auipc	a0,0x4
    8000c8f0:	e4450513          	addi	a0,a0,-444 # 80010730 <CONSOLE_STATUS+0x720>
    8000c8f4:	ffffb097          	auipc	ra,0xffffb
    8000c8f8:	db8080e7          	jalr	-584(ra) # 800076ac <_Z11printStringPKc>
    8000c8fc:	00000613          	li	a2,0
    8000c900:	00a00593          	li	a1,10
    8000c904:	00048513          	mv	a0,s1
    8000c908:	ffffb097          	auipc	ra,0xffffb
    8000c90c:	f54080e7          	jalr	-172(ra) # 8000785c <_Z8printIntiii>
    8000c910:	00004517          	auipc	a0,0x4
    8000c914:	0d050513          	addi	a0,a0,208 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000c918:	ffffb097          	auipc	ra,0xffffb
    8000c91c:	d94080e7          	jalr	-620(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000c920:	0014849b          	addiw	s1,s1,1
    8000c924:	0ff4f493          	andi	s1,s1,255
    8000c928:	00f00793          	li	a5,15
    8000c92c:	fc97f0e3          	bgeu	a5,s1,8000c8ec <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000c930:	00004517          	auipc	a0,0x4
    8000c934:	e2850513          	addi	a0,a0,-472 # 80010758 <CONSOLE_STATUS+0x748>
    8000c938:	ffffb097          	auipc	ra,0xffffb
    8000c93c:	d74080e7          	jalr	-652(ra) # 800076ac <_Z11printStringPKc>
    finishedD = true;
    8000c940:	00100793          	li	a5,1
    8000c944:	00009717          	auipc	a4,0x9
    8000c948:	3af70723          	sb	a5,942(a4) # 80015cf2 <_ZL9finishedD>
    thread_dispatch();
    8000c94c:	ffff5097          	auipc	ra,0xffff5
    8000c950:	a0c080e7          	jalr	-1524(ra) # 80001358 <_Z15thread_dispatchv>
}
    8000c954:	01813083          	ld	ra,24(sp)
    8000c958:	01013403          	ld	s0,16(sp)
    8000c95c:	00813483          	ld	s1,8(sp)
    8000c960:	00013903          	ld	s2,0(sp)
    8000c964:	02010113          	addi	sp,sp,32
    8000c968:	00008067          	ret

000000008000c96c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000c96c:	fe010113          	addi	sp,sp,-32
    8000c970:	00113c23          	sd	ra,24(sp)
    8000c974:	00813823          	sd	s0,16(sp)
    8000c978:	00913423          	sd	s1,8(sp)
    8000c97c:	01213023          	sd	s2,0(sp)
    8000c980:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000c984:	00000493          	li	s1,0
    8000c988:	0400006f          	j	8000c9c8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000c98c:	00004517          	auipc	a0,0x4
    8000c990:	d7450513          	addi	a0,a0,-652 # 80010700 <CONSOLE_STATUS+0x6f0>
    8000c994:	ffffb097          	auipc	ra,0xffffb
    8000c998:	d18080e7          	jalr	-744(ra) # 800076ac <_Z11printStringPKc>
    8000c99c:	00000613          	li	a2,0
    8000c9a0:	00a00593          	li	a1,10
    8000c9a4:	00048513          	mv	a0,s1
    8000c9a8:	ffffb097          	auipc	ra,0xffffb
    8000c9ac:	eb4080e7          	jalr	-332(ra) # 8000785c <_Z8printIntiii>
    8000c9b0:	00004517          	auipc	a0,0x4
    8000c9b4:	03050513          	addi	a0,a0,48 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000c9b8:	ffffb097          	auipc	ra,0xffffb
    8000c9bc:	cf4080e7          	jalr	-780(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000c9c0:	0014849b          	addiw	s1,s1,1
    8000c9c4:	0ff4f493          	andi	s1,s1,255
    8000c9c8:	00200793          	li	a5,2
    8000c9cc:	fc97f0e3          	bgeu	a5,s1,8000c98c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000c9d0:	00004517          	auipc	a0,0x4
    8000c9d4:	d3850513          	addi	a0,a0,-712 # 80010708 <CONSOLE_STATUS+0x6f8>
    8000c9d8:	ffffb097          	auipc	ra,0xffffb
    8000c9dc:	cd4080e7          	jalr	-812(ra) # 800076ac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000c9e0:	00700313          	li	t1,7
    thread_dispatch();
    8000c9e4:	ffff5097          	auipc	ra,0xffff5
    8000c9e8:	974080e7          	jalr	-1676(ra) # 80001358 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000c9ec:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000c9f0:	00004517          	auipc	a0,0x4
    8000c9f4:	d2850513          	addi	a0,a0,-728 # 80010718 <CONSOLE_STATUS+0x708>
    8000c9f8:	ffffb097          	auipc	ra,0xffffb
    8000c9fc:	cb4080e7          	jalr	-844(ra) # 800076ac <_Z11printStringPKc>
    8000ca00:	00000613          	li	a2,0
    8000ca04:	00a00593          	li	a1,10
    8000ca08:	0009051b          	sext.w	a0,s2
    8000ca0c:	ffffb097          	auipc	ra,0xffffb
    8000ca10:	e50080e7          	jalr	-432(ra) # 8000785c <_Z8printIntiii>
    8000ca14:	00004517          	auipc	a0,0x4
    8000ca18:	fcc50513          	addi	a0,a0,-52 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000ca1c:	ffffb097          	auipc	ra,0xffffb
    8000ca20:	c90080e7          	jalr	-880(ra) # 800076ac <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000ca24:	00c00513          	li	a0,12
    8000ca28:	00000097          	auipc	ra,0x0
    8000ca2c:	d88080e7          	jalr	-632(ra) # 8000c7b0 <_ZL9fibonaccim>
    8000ca30:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000ca34:	00004517          	auipc	a0,0x4
    8000ca38:	cec50513          	addi	a0,a0,-788 # 80010720 <CONSOLE_STATUS+0x710>
    8000ca3c:	ffffb097          	auipc	ra,0xffffb
    8000ca40:	c70080e7          	jalr	-912(ra) # 800076ac <_Z11printStringPKc>
    8000ca44:	00000613          	li	a2,0
    8000ca48:	00a00593          	li	a1,10
    8000ca4c:	0009051b          	sext.w	a0,s2
    8000ca50:	ffffb097          	auipc	ra,0xffffb
    8000ca54:	e0c080e7          	jalr	-500(ra) # 8000785c <_Z8printIntiii>
    8000ca58:	00004517          	auipc	a0,0x4
    8000ca5c:	f8850513          	addi	a0,a0,-120 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000ca60:	ffffb097          	auipc	ra,0xffffb
    8000ca64:	c4c080e7          	jalr	-948(ra) # 800076ac <_Z11printStringPKc>
    8000ca68:	0400006f          	j	8000caa8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000ca6c:	00004517          	auipc	a0,0x4
    8000ca70:	c9450513          	addi	a0,a0,-876 # 80010700 <CONSOLE_STATUS+0x6f0>
    8000ca74:	ffffb097          	auipc	ra,0xffffb
    8000ca78:	c38080e7          	jalr	-968(ra) # 800076ac <_Z11printStringPKc>
    8000ca7c:	00000613          	li	a2,0
    8000ca80:	00a00593          	li	a1,10
    8000ca84:	00048513          	mv	a0,s1
    8000ca88:	ffffb097          	auipc	ra,0xffffb
    8000ca8c:	dd4080e7          	jalr	-556(ra) # 8000785c <_Z8printIntiii>
    8000ca90:	00004517          	auipc	a0,0x4
    8000ca94:	f5050513          	addi	a0,a0,-176 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000ca98:	ffffb097          	auipc	ra,0xffffb
    8000ca9c:	c14080e7          	jalr	-1004(ra) # 800076ac <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000caa0:	0014849b          	addiw	s1,s1,1
    8000caa4:	0ff4f493          	andi	s1,s1,255
    8000caa8:	00500793          	li	a5,5
    8000caac:	fc97f0e3          	bgeu	a5,s1,8000ca6c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000cab0:	00004517          	auipc	a0,0x4
    8000cab4:	c2850513          	addi	a0,a0,-984 # 800106d8 <CONSOLE_STATUS+0x6c8>
    8000cab8:	ffffb097          	auipc	ra,0xffffb
    8000cabc:	bf4080e7          	jalr	-1036(ra) # 800076ac <_Z11printStringPKc>
    finishedC = true;
    8000cac0:	00100793          	li	a5,1
    8000cac4:	00009717          	auipc	a4,0x9
    8000cac8:	22f707a3          	sb	a5,559(a4) # 80015cf3 <_ZL9finishedC>
    thread_dispatch();
    8000cacc:	ffff5097          	auipc	ra,0xffff5
    8000cad0:	88c080e7          	jalr	-1908(ra) # 80001358 <_Z15thread_dispatchv>
}
    8000cad4:	01813083          	ld	ra,24(sp)
    8000cad8:	01013403          	ld	s0,16(sp)
    8000cadc:	00813483          	ld	s1,8(sp)
    8000cae0:	00013903          	ld	s2,0(sp)
    8000cae4:	02010113          	addi	sp,sp,32
    8000cae8:	00008067          	ret

000000008000caec <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000caec:	fe010113          	addi	sp,sp,-32
    8000caf0:	00113c23          	sd	ra,24(sp)
    8000caf4:	00813823          	sd	s0,16(sp)
    8000caf8:	00913423          	sd	s1,8(sp)
    8000cafc:	01213023          	sd	s2,0(sp)
    8000cb00:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000cb04:	00000913          	li	s2,0
    8000cb08:	0400006f          	j	8000cb48 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000cb0c:	ffff5097          	auipc	ra,0xffff5
    8000cb10:	84c080e7          	jalr	-1972(ra) # 80001358 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000cb14:	00148493          	addi	s1,s1,1
    8000cb18:	000027b7          	lui	a5,0x2
    8000cb1c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000cb20:	0097ee63          	bltu	a5,s1,8000cb3c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000cb24:	00000713          	li	a4,0
    8000cb28:	000077b7          	lui	a5,0x7
    8000cb2c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000cb30:	fce7eee3          	bltu	a5,a4,8000cb0c <_ZL11workerBodyBPv+0x20>
    8000cb34:	00170713          	addi	a4,a4,1
    8000cb38:	ff1ff06f          	j	8000cb28 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000cb3c:	00a00793          	li	a5,10
    8000cb40:	04f90663          	beq	s2,a5,8000cb8c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000cb44:	00190913          	addi	s2,s2,1
    8000cb48:	00f00793          	li	a5,15
    8000cb4c:	0527e463          	bltu	a5,s2,8000cb94 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    8000cb50:	00004517          	auipc	a0,0x4
    8000cb54:	b9850513          	addi	a0,a0,-1128 # 800106e8 <CONSOLE_STATUS+0x6d8>
    8000cb58:	ffffb097          	auipc	ra,0xffffb
    8000cb5c:	b54080e7          	jalr	-1196(ra) # 800076ac <_Z11printStringPKc>
    8000cb60:	00000613          	li	a2,0
    8000cb64:	00a00593          	li	a1,10
    8000cb68:	0009051b          	sext.w	a0,s2
    8000cb6c:	ffffb097          	auipc	ra,0xffffb
    8000cb70:	cf0080e7          	jalr	-784(ra) # 8000785c <_Z8printIntiii>
    8000cb74:	00004517          	auipc	a0,0x4
    8000cb78:	e6c50513          	addi	a0,a0,-404 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000cb7c:	ffffb097          	auipc	ra,0xffffb
    8000cb80:	b30080e7          	jalr	-1232(ra) # 800076ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000cb84:	00000493          	li	s1,0
    8000cb88:	f91ff06f          	j	8000cb18 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000cb8c:	14102ff3          	csrr	t6,sepc
    8000cb90:	fb5ff06f          	j	8000cb44 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000cb94:	00004517          	auipc	a0,0x4
    8000cb98:	b5c50513          	addi	a0,a0,-1188 # 800106f0 <CONSOLE_STATUS+0x6e0>
    8000cb9c:	ffffb097          	auipc	ra,0xffffb
    8000cba0:	b10080e7          	jalr	-1264(ra) # 800076ac <_Z11printStringPKc>
    finishedB = true;
    8000cba4:	00100793          	li	a5,1
    8000cba8:	00009717          	auipc	a4,0x9
    8000cbac:	14f70623          	sb	a5,332(a4) # 80015cf4 <_ZL9finishedB>
    thread_dispatch();
    8000cbb0:	ffff4097          	auipc	ra,0xffff4
    8000cbb4:	7a8080e7          	jalr	1960(ra) # 80001358 <_Z15thread_dispatchv>
}
    8000cbb8:	01813083          	ld	ra,24(sp)
    8000cbbc:	01013403          	ld	s0,16(sp)
    8000cbc0:	00813483          	ld	s1,8(sp)
    8000cbc4:	00013903          	ld	s2,0(sp)
    8000cbc8:	02010113          	addi	sp,sp,32
    8000cbcc:	00008067          	ret

000000008000cbd0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000cbd0:	fe010113          	addi	sp,sp,-32
    8000cbd4:	00113c23          	sd	ra,24(sp)
    8000cbd8:	00813823          	sd	s0,16(sp)
    8000cbdc:	00913423          	sd	s1,8(sp)
    8000cbe0:	01213023          	sd	s2,0(sp)
    8000cbe4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000cbe8:	00000913          	li	s2,0
    8000cbec:	0380006f          	j	8000cc24 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000cbf0:	ffff4097          	auipc	ra,0xffff4
    8000cbf4:	768080e7          	jalr	1896(ra) # 80001358 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000cbf8:	00148493          	addi	s1,s1,1
    8000cbfc:	000027b7          	lui	a5,0x2
    8000cc00:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000cc04:	0097ee63          	bltu	a5,s1,8000cc20 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000cc08:	00000713          	li	a4,0
    8000cc0c:	000077b7          	lui	a5,0x7
    8000cc10:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000cc14:	fce7eee3          	bltu	a5,a4,8000cbf0 <_ZL11workerBodyAPv+0x20>
    8000cc18:	00170713          	addi	a4,a4,1
    8000cc1c:	ff1ff06f          	j	8000cc0c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000cc20:	00190913          	addi	s2,s2,1
    8000cc24:	00900793          	li	a5,9
    8000cc28:	0527e063          	bltu	a5,s2,8000cc68 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000cc2c:	00004517          	auipc	a0,0x4
    8000cc30:	aa450513          	addi	a0,a0,-1372 # 800106d0 <CONSOLE_STATUS+0x6c0>
    8000cc34:	ffffb097          	auipc	ra,0xffffb
    8000cc38:	a78080e7          	jalr	-1416(ra) # 800076ac <_Z11printStringPKc>
    8000cc3c:	00000613          	li	a2,0
    8000cc40:	00a00593          	li	a1,10
    8000cc44:	0009051b          	sext.w	a0,s2
    8000cc48:	ffffb097          	auipc	ra,0xffffb
    8000cc4c:	c14080e7          	jalr	-1004(ra) # 8000785c <_Z8printIntiii>
    8000cc50:	00004517          	auipc	a0,0x4
    8000cc54:	d9050513          	addi	a0,a0,-624 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000cc58:	ffffb097          	auipc	ra,0xffffb
    8000cc5c:	a54080e7          	jalr	-1452(ra) # 800076ac <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000cc60:	00000493          	li	s1,0
    8000cc64:	f99ff06f          	j	8000cbfc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000cc68:	00004517          	auipc	a0,0x4
    8000cc6c:	a7050513          	addi	a0,a0,-1424 # 800106d8 <CONSOLE_STATUS+0x6c8>
    8000cc70:	ffffb097          	auipc	ra,0xffffb
    8000cc74:	a3c080e7          	jalr	-1476(ra) # 800076ac <_Z11printStringPKc>
    finishedA = true;
    8000cc78:	00100793          	li	a5,1
    8000cc7c:	00009717          	auipc	a4,0x9
    8000cc80:	06f70ca3          	sb	a5,121(a4) # 80015cf5 <_ZL9finishedA>
}
    8000cc84:	01813083          	ld	ra,24(sp)
    8000cc88:	01013403          	ld	s0,16(sp)
    8000cc8c:	00813483          	ld	s1,8(sp)
    8000cc90:	00013903          	ld	s2,0(sp)
    8000cc94:	02010113          	addi	sp,sp,32
    8000cc98:	00008067          	ret

000000008000cc9c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000cc9c:	fd010113          	addi	sp,sp,-48
    8000cca0:	02113423          	sd	ra,40(sp)
    8000cca4:	02813023          	sd	s0,32(sp)
    8000cca8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000ccac:	00000613          	li	a2,0
    8000ccb0:	00000597          	auipc	a1,0x0
    8000ccb4:	f2058593          	addi	a1,a1,-224 # 8000cbd0 <_ZL11workerBodyAPv>
    8000ccb8:	fd040513          	addi	a0,s0,-48
    8000ccbc:	ffff4097          	auipc	ra,0xffff4
    8000ccc0:	5e4080e7          	jalr	1508(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000ccc4:	00004517          	auipc	a0,0x4
    8000ccc8:	aa450513          	addi	a0,a0,-1372 # 80010768 <CONSOLE_STATUS+0x758>
    8000cccc:	ffffb097          	auipc	ra,0xffffb
    8000ccd0:	9e0080e7          	jalr	-1568(ra) # 800076ac <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000ccd4:	00000613          	li	a2,0
    8000ccd8:	00000597          	auipc	a1,0x0
    8000ccdc:	e1458593          	addi	a1,a1,-492 # 8000caec <_ZL11workerBodyBPv>
    8000cce0:	fd840513          	addi	a0,s0,-40
    8000cce4:	ffff4097          	auipc	ra,0xffff4
    8000cce8:	5bc080e7          	jalr	1468(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    8000ccec:	00004517          	auipc	a0,0x4
    8000ccf0:	a9450513          	addi	a0,a0,-1388 # 80010780 <CONSOLE_STATUS+0x770>
    8000ccf4:	ffffb097          	auipc	ra,0xffffb
    8000ccf8:	9b8080e7          	jalr	-1608(ra) # 800076ac <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000ccfc:	00000613          	li	a2,0
    8000cd00:	00000597          	auipc	a1,0x0
    8000cd04:	c6c58593          	addi	a1,a1,-916 # 8000c96c <_ZL11workerBodyCPv>
    8000cd08:	fe040513          	addi	a0,s0,-32
    8000cd0c:	ffff4097          	auipc	ra,0xffff4
    8000cd10:	594080e7          	jalr	1428(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000cd14:	00004517          	auipc	a0,0x4
    8000cd18:	a8450513          	addi	a0,a0,-1404 # 80010798 <CONSOLE_STATUS+0x788>
    8000cd1c:	ffffb097          	auipc	ra,0xffffb
    8000cd20:	990080e7          	jalr	-1648(ra) # 800076ac <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000cd24:	00000613          	li	a2,0
    8000cd28:	00000597          	auipc	a1,0x0
    8000cd2c:	afc58593          	addi	a1,a1,-1284 # 8000c824 <_ZL11workerBodyDPv>
    8000cd30:	fe840513          	addi	a0,s0,-24
    8000cd34:	ffff4097          	auipc	ra,0xffff4
    8000cd38:	56c080e7          	jalr	1388(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    8000cd3c:	00004517          	auipc	a0,0x4
    8000cd40:	a7450513          	addi	a0,a0,-1420 # 800107b0 <CONSOLE_STATUS+0x7a0>
    8000cd44:	ffffb097          	auipc	ra,0xffffb
    8000cd48:	968080e7          	jalr	-1688(ra) # 800076ac <_Z11printStringPKc>
    8000cd4c:	00c0006f          	j	8000cd58 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000cd50:	ffff4097          	auipc	ra,0xffff4
    8000cd54:	608080e7          	jalr	1544(ra) # 80001358 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000cd58:	00009797          	auipc	a5,0x9
    8000cd5c:	f9d7c783          	lbu	a5,-99(a5) # 80015cf5 <_ZL9finishedA>
    8000cd60:	fe0788e3          	beqz	a5,8000cd50 <_Z16System_Mode_testv+0xb4>
    8000cd64:	00009797          	auipc	a5,0x9
    8000cd68:	f907c783          	lbu	a5,-112(a5) # 80015cf4 <_ZL9finishedB>
    8000cd6c:	fe0782e3          	beqz	a5,8000cd50 <_Z16System_Mode_testv+0xb4>
    8000cd70:	00009797          	auipc	a5,0x9
    8000cd74:	f837c783          	lbu	a5,-125(a5) # 80015cf3 <_ZL9finishedC>
    8000cd78:	fc078ce3          	beqz	a5,8000cd50 <_Z16System_Mode_testv+0xb4>
    8000cd7c:	00009797          	auipc	a5,0x9
    8000cd80:	f767c783          	lbu	a5,-138(a5) # 80015cf2 <_ZL9finishedD>
    8000cd84:	fc0786e3          	beqz	a5,8000cd50 <_Z16System_Mode_testv+0xb4>
    }

}
    8000cd88:	02813083          	ld	ra,40(sp)
    8000cd8c:	02013403          	ld	s0,32(sp)
    8000cd90:	03010113          	addi	sp,sp,48
    8000cd94:	00008067          	ret

000000008000cd98 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000cd98:	fe010113          	addi	sp,sp,-32
    8000cd9c:	00113c23          	sd	ra,24(sp)
    8000cda0:	00813823          	sd	s0,16(sp)
    8000cda4:	00913423          	sd	s1,8(sp)
    8000cda8:	01213023          	sd	s2,0(sp)
    8000cdac:	02010413          	addi	s0,sp,32
    8000cdb0:	00050493          	mv	s1,a0
    8000cdb4:	00058913          	mv	s2,a1
    8000cdb8:	0015879b          	addiw	a5,a1,1
    8000cdbc:	0007851b          	sext.w	a0,a5
    8000cdc0:	00f4a023          	sw	a5,0(s1)
    8000cdc4:	0004a823          	sw	zero,16(s1)
    8000cdc8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000cdcc:	00251513          	slli	a0,a0,0x2
    8000cdd0:	ffff4097          	auipc	ra,0xffff4
    8000cdd4:	464080e7          	jalr	1124(ra) # 80001234 <_Z9mem_allocm>
    8000cdd8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000cddc:	00000593          	li	a1,0
    8000cde0:	02048513          	addi	a0,s1,32
    8000cde4:	ffff4097          	auipc	ra,0xffff4
    8000cde8:	594080e7          	jalr	1428(ra) # 80001378 <_Z8sem_openPP11Semaphore_kj>
    sem_open(&spaceAvailable, _cap);
    8000cdec:	00090593          	mv	a1,s2
    8000cdf0:	01848513          	addi	a0,s1,24
    8000cdf4:	ffff4097          	auipc	ra,0xffff4
    8000cdf8:	584080e7          	jalr	1412(ra) # 80001378 <_Z8sem_openPP11Semaphore_kj>
    sem_open(&mutexHead, 1);
    8000cdfc:	00100593          	li	a1,1
    8000ce00:	02848513          	addi	a0,s1,40
    8000ce04:	ffff4097          	auipc	ra,0xffff4
    8000ce08:	574080e7          	jalr	1396(ra) # 80001378 <_Z8sem_openPP11Semaphore_kj>
    sem_open(&mutexTail, 1);
    8000ce0c:	00100593          	li	a1,1
    8000ce10:	03048513          	addi	a0,s1,48
    8000ce14:	ffff4097          	auipc	ra,0xffff4
    8000ce18:	564080e7          	jalr	1380(ra) # 80001378 <_Z8sem_openPP11Semaphore_kj>
}
    8000ce1c:	01813083          	ld	ra,24(sp)
    8000ce20:	01013403          	ld	s0,16(sp)
    8000ce24:	00813483          	ld	s1,8(sp)
    8000ce28:	00013903          	ld	s2,0(sp)
    8000ce2c:	02010113          	addi	sp,sp,32
    8000ce30:	00008067          	ret

000000008000ce34 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000ce34:	fe010113          	addi	sp,sp,-32
    8000ce38:	00113c23          	sd	ra,24(sp)
    8000ce3c:	00813823          	sd	s0,16(sp)
    8000ce40:	00913423          	sd	s1,8(sp)
    8000ce44:	01213023          	sd	s2,0(sp)
    8000ce48:	02010413          	addi	s0,sp,32
    8000ce4c:	00050493          	mv	s1,a0
    8000ce50:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000ce54:	01853503          	ld	a0,24(a0)
    8000ce58:	ffff4097          	auipc	ra,0xffff4
    8000ce5c:	57c080e7          	jalr	1404(ra) # 800013d4 <_Z8sem_waitP11Semaphore_k>

    sem_wait(mutexTail);
    8000ce60:	0304b503          	ld	a0,48(s1)
    8000ce64:	ffff4097          	auipc	ra,0xffff4
    8000ce68:	570080e7          	jalr	1392(ra) # 800013d4 <_Z8sem_waitP11Semaphore_k>
    buffer[tail] = val;
    8000ce6c:	0084b783          	ld	a5,8(s1)
    8000ce70:	0144a703          	lw	a4,20(s1)
    8000ce74:	00271713          	slli	a4,a4,0x2
    8000ce78:	00e787b3          	add	a5,a5,a4
    8000ce7c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000ce80:	0144a783          	lw	a5,20(s1)
    8000ce84:	0017879b          	addiw	a5,a5,1
    8000ce88:	0004a703          	lw	a4,0(s1)
    8000ce8c:	02e7e7bb          	remw	a5,a5,a4
    8000ce90:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000ce94:	0304b503          	ld	a0,48(s1)
    8000ce98:	ffff4097          	auipc	ra,0xffff4
    8000ce9c:	568080e7          	jalr	1384(ra) # 80001400 <_Z10sem_signalP11Semaphore_k>

    sem_signal(itemAvailable);
    8000cea0:	0204b503          	ld	a0,32(s1)
    8000cea4:	ffff4097          	auipc	ra,0xffff4
    8000cea8:	55c080e7          	jalr	1372(ra) # 80001400 <_Z10sem_signalP11Semaphore_k>

}
    8000ceac:	01813083          	ld	ra,24(sp)
    8000ceb0:	01013403          	ld	s0,16(sp)
    8000ceb4:	00813483          	ld	s1,8(sp)
    8000ceb8:	00013903          	ld	s2,0(sp)
    8000cebc:	02010113          	addi	sp,sp,32
    8000cec0:	00008067          	ret

000000008000cec4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000cec4:	fe010113          	addi	sp,sp,-32
    8000cec8:	00113c23          	sd	ra,24(sp)
    8000cecc:	00813823          	sd	s0,16(sp)
    8000ced0:	00913423          	sd	s1,8(sp)
    8000ced4:	01213023          	sd	s2,0(sp)
    8000ced8:	02010413          	addi	s0,sp,32
    8000cedc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000cee0:	02053503          	ld	a0,32(a0)
    8000cee4:	ffff4097          	auipc	ra,0xffff4
    8000cee8:	4f0080e7          	jalr	1264(ra) # 800013d4 <_Z8sem_waitP11Semaphore_k>

    sem_wait(mutexHead);
    8000ceec:	0284b503          	ld	a0,40(s1)
    8000cef0:	ffff4097          	auipc	ra,0xffff4
    8000cef4:	4e4080e7          	jalr	1252(ra) # 800013d4 <_Z8sem_waitP11Semaphore_k>

    int ret = buffer[head];
    8000cef8:	0084b703          	ld	a4,8(s1)
    8000cefc:	0104a783          	lw	a5,16(s1)
    8000cf00:	00279693          	slli	a3,a5,0x2
    8000cf04:	00d70733          	add	a4,a4,a3
    8000cf08:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000cf0c:	0017879b          	addiw	a5,a5,1
    8000cf10:	0004a703          	lw	a4,0(s1)
    8000cf14:	02e7e7bb          	remw	a5,a5,a4
    8000cf18:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000cf1c:	0284b503          	ld	a0,40(s1)
    8000cf20:	ffff4097          	auipc	ra,0xffff4
    8000cf24:	4e0080e7          	jalr	1248(ra) # 80001400 <_Z10sem_signalP11Semaphore_k>

    sem_signal(spaceAvailable);
    8000cf28:	0184b503          	ld	a0,24(s1)
    8000cf2c:	ffff4097          	auipc	ra,0xffff4
    8000cf30:	4d4080e7          	jalr	1236(ra) # 80001400 <_Z10sem_signalP11Semaphore_k>

    return ret;
}
    8000cf34:	00090513          	mv	a0,s2
    8000cf38:	01813083          	ld	ra,24(sp)
    8000cf3c:	01013403          	ld	s0,16(sp)
    8000cf40:	00813483          	ld	s1,8(sp)
    8000cf44:	00013903          	ld	s2,0(sp)
    8000cf48:	02010113          	addi	sp,sp,32
    8000cf4c:	00008067          	ret

000000008000cf50 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000cf50:	fe010113          	addi	sp,sp,-32
    8000cf54:	00113c23          	sd	ra,24(sp)
    8000cf58:	00813823          	sd	s0,16(sp)
    8000cf5c:	00913423          	sd	s1,8(sp)
    8000cf60:	01213023          	sd	s2,0(sp)
    8000cf64:	02010413          	addi	s0,sp,32
    8000cf68:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000cf6c:	02853503          	ld	a0,40(a0)
    8000cf70:	ffff4097          	auipc	ra,0xffff4
    8000cf74:	464080e7          	jalr	1124(ra) # 800013d4 <_Z8sem_waitP11Semaphore_k>
    sem_wait(mutexTail);
    8000cf78:	0304b503          	ld	a0,48(s1)
    8000cf7c:	ffff4097          	auipc	ra,0xffff4
    8000cf80:	458080e7          	jalr	1112(ra) # 800013d4 <_Z8sem_waitP11Semaphore_k>

    if (tail >= head) {
    8000cf84:	0144a783          	lw	a5,20(s1)
    8000cf88:	0104a903          	lw	s2,16(s1)
    8000cf8c:	0327ce63          	blt	a5,s2,8000cfc8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000cf90:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000cf94:	0304b503          	ld	a0,48(s1)
    8000cf98:	ffff4097          	auipc	ra,0xffff4
    8000cf9c:	468080e7          	jalr	1128(ra) # 80001400 <_Z10sem_signalP11Semaphore_k>
    sem_signal(mutexHead);
    8000cfa0:	0284b503          	ld	a0,40(s1)
    8000cfa4:	ffff4097          	auipc	ra,0xffff4
    8000cfa8:	45c080e7          	jalr	1116(ra) # 80001400 <_Z10sem_signalP11Semaphore_k>

    return ret;
}
    8000cfac:	00090513          	mv	a0,s2
    8000cfb0:	01813083          	ld	ra,24(sp)
    8000cfb4:	01013403          	ld	s0,16(sp)
    8000cfb8:	00813483          	ld	s1,8(sp)
    8000cfbc:	00013903          	ld	s2,0(sp)
    8000cfc0:	02010113          	addi	sp,sp,32
    8000cfc4:	00008067          	ret
        ret = cap - head + tail;
    8000cfc8:	0004a703          	lw	a4,0(s1)
    8000cfcc:	4127093b          	subw	s2,a4,s2
    8000cfd0:	00f9093b          	addw	s2,s2,a5
    8000cfd4:	fc1ff06f          	j	8000cf94 <_ZN6Buffer6getCntEv+0x44>

000000008000cfd8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000cfd8:	fe010113          	addi	sp,sp,-32
    8000cfdc:	00113c23          	sd	ra,24(sp)
    8000cfe0:	00813823          	sd	s0,16(sp)
    8000cfe4:	00913423          	sd	s1,8(sp)
    8000cfe8:	02010413          	addi	s0,sp,32
    8000cfec:	00050493          	mv	s1,a0
    putc('\n');
    8000cff0:	00a00513          	li	a0,10
    8000cff4:	ffff4097          	auipc	ra,0xffff4
    8000cff8:	518080e7          	jalr	1304(ra) # 8000150c <_Z4putcc>
    printString("Buffer deleted!\n");
    8000cffc:	00003517          	auipc	a0,0x3
    8000d000:	7cc50513          	addi	a0,a0,1996 # 800107c8 <CONSOLE_STATUS+0x7b8>
    8000d004:	ffffa097          	auipc	ra,0xffffa
    8000d008:	6a8080e7          	jalr	1704(ra) # 800076ac <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000d00c:	00048513          	mv	a0,s1
    8000d010:	00000097          	auipc	ra,0x0
    8000d014:	f40080e7          	jalr	-192(ra) # 8000cf50 <_ZN6Buffer6getCntEv>
    8000d018:	02a05c63          	blez	a0,8000d050 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000d01c:	0084b783          	ld	a5,8(s1)
    8000d020:	0104a703          	lw	a4,16(s1)
    8000d024:	00271713          	slli	a4,a4,0x2
    8000d028:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000d02c:	0007c503          	lbu	a0,0(a5)
    8000d030:	ffff4097          	auipc	ra,0xffff4
    8000d034:	4dc080e7          	jalr	1244(ra) # 8000150c <_Z4putcc>
        head = (head + 1) % cap;
    8000d038:	0104a783          	lw	a5,16(s1)
    8000d03c:	0017879b          	addiw	a5,a5,1
    8000d040:	0004a703          	lw	a4,0(s1)
    8000d044:	02e7e7bb          	remw	a5,a5,a4
    8000d048:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000d04c:	fc1ff06f          	j	8000d00c <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000d050:	02100513          	li	a0,33
    8000d054:	ffff4097          	auipc	ra,0xffff4
    8000d058:	4b8080e7          	jalr	1208(ra) # 8000150c <_Z4putcc>
    putc('\n');
    8000d05c:	00a00513          	li	a0,10
    8000d060:	ffff4097          	auipc	ra,0xffff4
    8000d064:	4ac080e7          	jalr	1196(ra) # 8000150c <_Z4putcc>
    mem_free(buffer);
    8000d068:	0084b503          	ld	a0,8(s1)
    8000d06c:	ffff4097          	auipc	ra,0xffff4
    8000d070:	208080e7          	jalr	520(ra) # 80001274 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000d074:	0204b503          	ld	a0,32(s1)
    8000d078:	ffff4097          	auipc	ra,0xffff4
    8000d07c:	330080e7          	jalr	816(ra) # 800013a8 <_Z9sem_closeP11Semaphore_k>
    sem_close(spaceAvailable);
    8000d080:	0184b503          	ld	a0,24(s1)
    8000d084:	ffff4097          	auipc	ra,0xffff4
    8000d088:	324080e7          	jalr	804(ra) # 800013a8 <_Z9sem_closeP11Semaphore_k>
    sem_close(mutexTail);
    8000d08c:	0304b503          	ld	a0,48(s1)
    8000d090:	ffff4097          	auipc	ra,0xffff4
    8000d094:	318080e7          	jalr	792(ra) # 800013a8 <_Z9sem_closeP11Semaphore_k>
    sem_close(mutexHead);
    8000d098:	0284b503          	ld	a0,40(s1)
    8000d09c:	ffff4097          	auipc	ra,0xffff4
    8000d0a0:	30c080e7          	jalr	780(ra) # 800013a8 <_Z9sem_closeP11Semaphore_k>
}
    8000d0a4:	01813083          	ld	ra,24(sp)
    8000d0a8:	01013403          	ld	s0,16(sp)
    8000d0ac:	00813483          	ld	s1,8(sp)
    8000d0b0:	02010113          	addi	sp,sp,32
    8000d0b4:	00008067          	ret

000000008000d0b8 <start>:
    8000d0b8:	ff010113          	addi	sp,sp,-16
    8000d0bc:	00813423          	sd	s0,8(sp)
    8000d0c0:	01010413          	addi	s0,sp,16
    8000d0c4:	300027f3          	csrr	a5,mstatus
    8000d0c8:	ffffe737          	lui	a4,0xffffe
    8000d0cc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffe789f>
    8000d0d0:	00e7f7b3          	and	a5,a5,a4
    8000d0d4:	00001737          	lui	a4,0x1
    8000d0d8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000d0dc:	00e7e7b3          	or	a5,a5,a4
    8000d0e0:	30079073          	csrw	mstatus,a5
    8000d0e4:	00000797          	auipc	a5,0x0
    8000d0e8:	16078793          	addi	a5,a5,352 # 8000d244 <system_main>
    8000d0ec:	34179073          	csrw	mepc,a5
    8000d0f0:	00000793          	li	a5,0
    8000d0f4:	18079073          	csrw	satp,a5
    8000d0f8:	000107b7          	lui	a5,0x10
    8000d0fc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000d100:	30279073          	csrw	medeleg,a5
    8000d104:	30379073          	csrw	mideleg,a5
    8000d108:	104027f3          	csrr	a5,sie
    8000d10c:	2227e793          	ori	a5,a5,546
    8000d110:	10479073          	csrw	sie,a5
    8000d114:	fff00793          	li	a5,-1
    8000d118:	00a7d793          	srli	a5,a5,0xa
    8000d11c:	3b079073          	csrw	pmpaddr0,a5
    8000d120:	00f00793          	li	a5,15
    8000d124:	3a079073          	csrw	pmpcfg0,a5
    8000d128:	f14027f3          	csrr	a5,mhartid
    8000d12c:	0200c737          	lui	a4,0x200c
    8000d130:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000d134:	0007869b          	sext.w	a3,a5
    8000d138:	00269713          	slli	a4,a3,0x2
    8000d13c:	000f4637          	lui	a2,0xf4
    8000d140:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000d144:	00d70733          	add	a4,a4,a3
    8000d148:	0037979b          	slliw	a5,a5,0x3
    8000d14c:	020046b7          	lui	a3,0x2004
    8000d150:	00d787b3          	add	a5,a5,a3
    8000d154:	00c585b3          	add	a1,a1,a2
    8000d158:	00371693          	slli	a3,a4,0x3
    8000d15c:	00009717          	auipc	a4,0x9
    8000d160:	ba470713          	addi	a4,a4,-1116 # 80015d00 <timer_scratch>
    8000d164:	00b7b023          	sd	a1,0(a5)
    8000d168:	00d70733          	add	a4,a4,a3
    8000d16c:	00f73c23          	sd	a5,24(a4)
    8000d170:	02c73023          	sd	a2,32(a4)
    8000d174:	34071073          	csrw	mscratch,a4
    8000d178:	00000797          	auipc	a5,0x0
    8000d17c:	6e878793          	addi	a5,a5,1768 # 8000d860 <timervec>
    8000d180:	30579073          	csrw	mtvec,a5
    8000d184:	300027f3          	csrr	a5,mstatus
    8000d188:	0087e793          	ori	a5,a5,8
    8000d18c:	30079073          	csrw	mstatus,a5
    8000d190:	304027f3          	csrr	a5,mie
    8000d194:	0807e793          	ori	a5,a5,128
    8000d198:	30479073          	csrw	mie,a5
    8000d19c:	f14027f3          	csrr	a5,mhartid
    8000d1a0:	0007879b          	sext.w	a5,a5
    8000d1a4:	00078213          	mv	tp,a5
    8000d1a8:	30200073          	mret
    8000d1ac:	00813403          	ld	s0,8(sp)
    8000d1b0:	01010113          	addi	sp,sp,16
    8000d1b4:	00008067          	ret

000000008000d1b8 <timerinit>:
    8000d1b8:	ff010113          	addi	sp,sp,-16
    8000d1bc:	00813423          	sd	s0,8(sp)
    8000d1c0:	01010413          	addi	s0,sp,16
    8000d1c4:	f14027f3          	csrr	a5,mhartid
    8000d1c8:	0200c737          	lui	a4,0x200c
    8000d1cc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000d1d0:	0007869b          	sext.w	a3,a5
    8000d1d4:	00269713          	slli	a4,a3,0x2
    8000d1d8:	000f4637          	lui	a2,0xf4
    8000d1dc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000d1e0:	00d70733          	add	a4,a4,a3
    8000d1e4:	0037979b          	slliw	a5,a5,0x3
    8000d1e8:	020046b7          	lui	a3,0x2004
    8000d1ec:	00d787b3          	add	a5,a5,a3
    8000d1f0:	00c585b3          	add	a1,a1,a2
    8000d1f4:	00371693          	slli	a3,a4,0x3
    8000d1f8:	00009717          	auipc	a4,0x9
    8000d1fc:	b0870713          	addi	a4,a4,-1272 # 80015d00 <timer_scratch>
    8000d200:	00b7b023          	sd	a1,0(a5)
    8000d204:	00d70733          	add	a4,a4,a3
    8000d208:	00f73c23          	sd	a5,24(a4)
    8000d20c:	02c73023          	sd	a2,32(a4)
    8000d210:	34071073          	csrw	mscratch,a4
    8000d214:	00000797          	auipc	a5,0x0
    8000d218:	64c78793          	addi	a5,a5,1612 # 8000d860 <timervec>
    8000d21c:	30579073          	csrw	mtvec,a5
    8000d220:	300027f3          	csrr	a5,mstatus
    8000d224:	0087e793          	ori	a5,a5,8
    8000d228:	30079073          	csrw	mstatus,a5
    8000d22c:	304027f3          	csrr	a5,mie
    8000d230:	0807e793          	ori	a5,a5,128
    8000d234:	30479073          	csrw	mie,a5
    8000d238:	00813403          	ld	s0,8(sp)
    8000d23c:	01010113          	addi	sp,sp,16
    8000d240:	00008067          	ret

000000008000d244 <system_main>:
    8000d244:	fe010113          	addi	sp,sp,-32
    8000d248:	00813823          	sd	s0,16(sp)
    8000d24c:	00913423          	sd	s1,8(sp)
    8000d250:	00113c23          	sd	ra,24(sp)
    8000d254:	02010413          	addi	s0,sp,32
    8000d258:	00000097          	auipc	ra,0x0
    8000d25c:	0c4080e7          	jalr	196(ra) # 8000d31c <cpuid>
    8000d260:	00008497          	auipc	s1,0x8
    8000d264:	7a048493          	addi	s1,s1,1952 # 80015a00 <started>
    8000d268:	02050263          	beqz	a0,8000d28c <system_main+0x48>
    8000d26c:	0004a783          	lw	a5,0(s1)
    8000d270:	0007879b          	sext.w	a5,a5
    8000d274:	fe078ce3          	beqz	a5,8000d26c <system_main+0x28>
    8000d278:	0ff0000f          	fence
    8000d27c:	00004517          	auipc	a0,0x4
    8000d280:	06c50513          	addi	a0,a0,108 # 800112e8 <CONSOLE_STATUS+0x12d8>
    8000d284:	00001097          	auipc	ra,0x1
    8000d288:	a78080e7          	jalr	-1416(ra) # 8000dcfc <panic>
    8000d28c:	00001097          	auipc	ra,0x1
    8000d290:	9cc080e7          	jalr	-1588(ra) # 8000dc58 <consoleinit>
    8000d294:	00001097          	auipc	ra,0x1
    8000d298:	158080e7          	jalr	344(ra) # 8000e3ec <printfinit>
    8000d29c:	00003517          	auipc	a0,0x3
    8000d2a0:	74450513          	addi	a0,a0,1860 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000d2a4:	00001097          	auipc	ra,0x1
    8000d2a8:	ab4080e7          	jalr	-1356(ra) # 8000dd58 <__printf>
    8000d2ac:	00004517          	auipc	a0,0x4
    8000d2b0:	00c50513          	addi	a0,a0,12 # 800112b8 <CONSOLE_STATUS+0x12a8>
    8000d2b4:	00001097          	auipc	ra,0x1
    8000d2b8:	aa4080e7          	jalr	-1372(ra) # 8000dd58 <__printf>
    8000d2bc:	00003517          	auipc	a0,0x3
    8000d2c0:	72450513          	addi	a0,a0,1828 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000d2c4:	00001097          	auipc	ra,0x1
    8000d2c8:	a94080e7          	jalr	-1388(ra) # 8000dd58 <__printf>
    8000d2cc:	00001097          	auipc	ra,0x1
    8000d2d0:	4ac080e7          	jalr	1196(ra) # 8000e778 <kinit>
    8000d2d4:	00000097          	auipc	ra,0x0
    8000d2d8:	148080e7          	jalr	328(ra) # 8000d41c <trapinit>
    8000d2dc:	00000097          	auipc	ra,0x0
    8000d2e0:	16c080e7          	jalr	364(ra) # 8000d448 <trapinithart>
    8000d2e4:	00000097          	auipc	ra,0x0
    8000d2e8:	5bc080e7          	jalr	1468(ra) # 8000d8a0 <plicinit>
    8000d2ec:	00000097          	auipc	ra,0x0
    8000d2f0:	5dc080e7          	jalr	1500(ra) # 8000d8c8 <plicinithart>
    8000d2f4:	00000097          	auipc	ra,0x0
    8000d2f8:	078080e7          	jalr	120(ra) # 8000d36c <userinit>
    8000d2fc:	0ff0000f          	fence
    8000d300:	00100793          	li	a5,1
    8000d304:	00004517          	auipc	a0,0x4
    8000d308:	fcc50513          	addi	a0,a0,-52 # 800112d0 <CONSOLE_STATUS+0x12c0>
    8000d30c:	00f4a023          	sw	a5,0(s1)
    8000d310:	00001097          	auipc	ra,0x1
    8000d314:	a48080e7          	jalr	-1464(ra) # 8000dd58 <__printf>
    8000d318:	0000006f          	j	8000d318 <system_main+0xd4>

000000008000d31c <cpuid>:
    8000d31c:	ff010113          	addi	sp,sp,-16
    8000d320:	00813423          	sd	s0,8(sp)
    8000d324:	01010413          	addi	s0,sp,16
    8000d328:	00020513          	mv	a0,tp
    8000d32c:	00813403          	ld	s0,8(sp)
    8000d330:	0005051b          	sext.w	a0,a0
    8000d334:	01010113          	addi	sp,sp,16
    8000d338:	00008067          	ret

000000008000d33c <mycpu>:
    8000d33c:	ff010113          	addi	sp,sp,-16
    8000d340:	00813423          	sd	s0,8(sp)
    8000d344:	01010413          	addi	s0,sp,16
    8000d348:	00020793          	mv	a5,tp
    8000d34c:	00813403          	ld	s0,8(sp)
    8000d350:	0007879b          	sext.w	a5,a5
    8000d354:	00779793          	slli	a5,a5,0x7
    8000d358:	0000a517          	auipc	a0,0xa
    8000d35c:	9d850513          	addi	a0,a0,-1576 # 80016d30 <cpus>
    8000d360:	00f50533          	add	a0,a0,a5
    8000d364:	01010113          	addi	sp,sp,16
    8000d368:	00008067          	ret

000000008000d36c <userinit>:
    8000d36c:	ff010113          	addi	sp,sp,-16
    8000d370:	00813423          	sd	s0,8(sp)
    8000d374:	01010413          	addi	s0,sp,16
    8000d378:	00813403          	ld	s0,8(sp)
    8000d37c:	01010113          	addi	sp,sp,16
    8000d380:	ffff4317          	auipc	t1,0xffff4
    8000d384:	4dc30067          	jr	1244(t1) # 8000185c <main>

000000008000d388 <either_copyout>:
    8000d388:	ff010113          	addi	sp,sp,-16
    8000d38c:	00813023          	sd	s0,0(sp)
    8000d390:	00113423          	sd	ra,8(sp)
    8000d394:	01010413          	addi	s0,sp,16
    8000d398:	02051663          	bnez	a0,8000d3c4 <either_copyout+0x3c>
    8000d39c:	00058513          	mv	a0,a1
    8000d3a0:	00060593          	mv	a1,a2
    8000d3a4:	0006861b          	sext.w	a2,a3
    8000d3a8:	00002097          	auipc	ra,0x2
    8000d3ac:	c5c080e7          	jalr	-932(ra) # 8000f004 <__memmove>
    8000d3b0:	00813083          	ld	ra,8(sp)
    8000d3b4:	00013403          	ld	s0,0(sp)
    8000d3b8:	00000513          	li	a0,0
    8000d3bc:	01010113          	addi	sp,sp,16
    8000d3c0:	00008067          	ret
    8000d3c4:	00004517          	auipc	a0,0x4
    8000d3c8:	f4c50513          	addi	a0,a0,-180 # 80011310 <CONSOLE_STATUS+0x1300>
    8000d3cc:	00001097          	auipc	ra,0x1
    8000d3d0:	930080e7          	jalr	-1744(ra) # 8000dcfc <panic>

000000008000d3d4 <either_copyin>:
    8000d3d4:	ff010113          	addi	sp,sp,-16
    8000d3d8:	00813023          	sd	s0,0(sp)
    8000d3dc:	00113423          	sd	ra,8(sp)
    8000d3e0:	01010413          	addi	s0,sp,16
    8000d3e4:	02059463          	bnez	a1,8000d40c <either_copyin+0x38>
    8000d3e8:	00060593          	mv	a1,a2
    8000d3ec:	0006861b          	sext.w	a2,a3
    8000d3f0:	00002097          	auipc	ra,0x2
    8000d3f4:	c14080e7          	jalr	-1004(ra) # 8000f004 <__memmove>
    8000d3f8:	00813083          	ld	ra,8(sp)
    8000d3fc:	00013403          	ld	s0,0(sp)
    8000d400:	00000513          	li	a0,0
    8000d404:	01010113          	addi	sp,sp,16
    8000d408:	00008067          	ret
    8000d40c:	00004517          	auipc	a0,0x4
    8000d410:	f2c50513          	addi	a0,a0,-212 # 80011338 <CONSOLE_STATUS+0x1328>
    8000d414:	00001097          	auipc	ra,0x1
    8000d418:	8e8080e7          	jalr	-1816(ra) # 8000dcfc <panic>

000000008000d41c <trapinit>:
    8000d41c:	ff010113          	addi	sp,sp,-16
    8000d420:	00813423          	sd	s0,8(sp)
    8000d424:	01010413          	addi	s0,sp,16
    8000d428:	00813403          	ld	s0,8(sp)
    8000d42c:	00004597          	auipc	a1,0x4
    8000d430:	f3458593          	addi	a1,a1,-204 # 80011360 <CONSOLE_STATUS+0x1350>
    8000d434:	0000a517          	auipc	a0,0xa
    8000d438:	97c50513          	addi	a0,a0,-1668 # 80016db0 <tickslock>
    8000d43c:	01010113          	addi	sp,sp,16
    8000d440:	00001317          	auipc	t1,0x1
    8000d444:	5c830067          	jr	1480(t1) # 8000ea08 <initlock>

000000008000d448 <trapinithart>:
    8000d448:	ff010113          	addi	sp,sp,-16
    8000d44c:	00813423          	sd	s0,8(sp)
    8000d450:	01010413          	addi	s0,sp,16
    8000d454:	00000797          	auipc	a5,0x0
    8000d458:	2fc78793          	addi	a5,a5,764 # 8000d750 <kernelvec>
    8000d45c:	10579073          	csrw	stvec,a5
    8000d460:	00813403          	ld	s0,8(sp)
    8000d464:	01010113          	addi	sp,sp,16
    8000d468:	00008067          	ret

000000008000d46c <usertrap>:
    8000d46c:	ff010113          	addi	sp,sp,-16
    8000d470:	00813423          	sd	s0,8(sp)
    8000d474:	01010413          	addi	s0,sp,16
    8000d478:	00813403          	ld	s0,8(sp)
    8000d47c:	01010113          	addi	sp,sp,16
    8000d480:	00008067          	ret

000000008000d484 <usertrapret>:
    8000d484:	ff010113          	addi	sp,sp,-16
    8000d488:	00813423          	sd	s0,8(sp)
    8000d48c:	01010413          	addi	s0,sp,16
    8000d490:	00813403          	ld	s0,8(sp)
    8000d494:	01010113          	addi	sp,sp,16
    8000d498:	00008067          	ret

000000008000d49c <kerneltrap>:
    8000d49c:	fe010113          	addi	sp,sp,-32
    8000d4a0:	00813823          	sd	s0,16(sp)
    8000d4a4:	00113c23          	sd	ra,24(sp)
    8000d4a8:	00913423          	sd	s1,8(sp)
    8000d4ac:	02010413          	addi	s0,sp,32
    8000d4b0:	142025f3          	csrr	a1,scause
    8000d4b4:	100027f3          	csrr	a5,sstatus
    8000d4b8:	0027f793          	andi	a5,a5,2
    8000d4bc:	10079c63          	bnez	a5,8000d5d4 <kerneltrap+0x138>
    8000d4c0:	142027f3          	csrr	a5,scause
    8000d4c4:	0207ce63          	bltz	a5,8000d500 <kerneltrap+0x64>
    8000d4c8:	00004517          	auipc	a0,0x4
    8000d4cc:	ee050513          	addi	a0,a0,-288 # 800113a8 <CONSOLE_STATUS+0x1398>
    8000d4d0:	00001097          	auipc	ra,0x1
    8000d4d4:	888080e7          	jalr	-1912(ra) # 8000dd58 <__printf>
    8000d4d8:	141025f3          	csrr	a1,sepc
    8000d4dc:	14302673          	csrr	a2,stval
    8000d4e0:	00004517          	auipc	a0,0x4
    8000d4e4:	ed850513          	addi	a0,a0,-296 # 800113b8 <CONSOLE_STATUS+0x13a8>
    8000d4e8:	00001097          	auipc	ra,0x1
    8000d4ec:	870080e7          	jalr	-1936(ra) # 8000dd58 <__printf>
    8000d4f0:	00004517          	auipc	a0,0x4
    8000d4f4:	ee050513          	addi	a0,a0,-288 # 800113d0 <CONSOLE_STATUS+0x13c0>
    8000d4f8:	00001097          	auipc	ra,0x1
    8000d4fc:	804080e7          	jalr	-2044(ra) # 8000dcfc <panic>
    8000d500:	0ff7f713          	andi	a4,a5,255
    8000d504:	00900693          	li	a3,9
    8000d508:	04d70063          	beq	a4,a3,8000d548 <kerneltrap+0xac>
    8000d50c:	fff00713          	li	a4,-1
    8000d510:	03f71713          	slli	a4,a4,0x3f
    8000d514:	00170713          	addi	a4,a4,1
    8000d518:	fae798e3          	bne	a5,a4,8000d4c8 <kerneltrap+0x2c>
    8000d51c:	00000097          	auipc	ra,0x0
    8000d520:	e00080e7          	jalr	-512(ra) # 8000d31c <cpuid>
    8000d524:	06050663          	beqz	a0,8000d590 <kerneltrap+0xf4>
    8000d528:	144027f3          	csrr	a5,sip
    8000d52c:	ffd7f793          	andi	a5,a5,-3
    8000d530:	14479073          	csrw	sip,a5
    8000d534:	01813083          	ld	ra,24(sp)
    8000d538:	01013403          	ld	s0,16(sp)
    8000d53c:	00813483          	ld	s1,8(sp)
    8000d540:	02010113          	addi	sp,sp,32
    8000d544:	00008067          	ret
    8000d548:	00000097          	auipc	ra,0x0
    8000d54c:	3cc080e7          	jalr	972(ra) # 8000d914 <plic_claim>
    8000d550:	00a00793          	li	a5,10
    8000d554:	00050493          	mv	s1,a0
    8000d558:	06f50863          	beq	a0,a5,8000d5c8 <kerneltrap+0x12c>
    8000d55c:	fc050ce3          	beqz	a0,8000d534 <kerneltrap+0x98>
    8000d560:	00050593          	mv	a1,a0
    8000d564:	00004517          	auipc	a0,0x4
    8000d568:	e2450513          	addi	a0,a0,-476 # 80011388 <CONSOLE_STATUS+0x1378>
    8000d56c:	00000097          	auipc	ra,0x0
    8000d570:	7ec080e7          	jalr	2028(ra) # 8000dd58 <__printf>
    8000d574:	01013403          	ld	s0,16(sp)
    8000d578:	01813083          	ld	ra,24(sp)
    8000d57c:	00048513          	mv	a0,s1
    8000d580:	00813483          	ld	s1,8(sp)
    8000d584:	02010113          	addi	sp,sp,32
    8000d588:	00000317          	auipc	t1,0x0
    8000d58c:	3c430067          	jr	964(t1) # 8000d94c <plic_complete>
    8000d590:	0000a517          	auipc	a0,0xa
    8000d594:	82050513          	addi	a0,a0,-2016 # 80016db0 <tickslock>
    8000d598:	00001097          	auipc	ra,0x1
    8000d59c:	494080e7          	jalr	1172(ra) # 8000ea2c <acquire>
    8000d5a0:	00008717          	auipc	a4,0x8
    8000d5a4:	46470713          	addi	a4,a4,1124 # 80015a04 <ticks>
    8000d5a8:	00072783          	lw	a5,0(a4)
    8000d5ac:	0000a517          	auipc	a0,0xa
    8000d5b0:	80450513          	addi	a0,a0,-2044 # 80016db0 <tickslock>
    8000d5b4:	0017879b          	addiw	a5,a5,1
    8000d5b8:	00f72023          	sw	a5,0(a4)
    8000d5bc:	00001097          	auipc	ra,0x1
    8000d5c0:	53c080e7          	jalr	1340(ra) # 8000eaf8 <release>
    8000d5c4:	f65ff06f          	j	8000d528 <kerneltrap+0x8c>
    8000d5c8:	00001097          	auipc	ra,0x1
    8000d5cc:	098080e7          	jalr	152(ra) # 8000e660 <uartintr>
    8000d5d0:	fa5ff06f          	j	8000d574 <kerneltrap+0xd8>
    8000d5d4:	00004517          	auipc	a0,0x4
    8000d5d8:	d9450513          	addi	a0,a0,-620 # 80011368 <CONSOLE_STATUS+0x1358>
    8000d5dc:	00000097          	auipc	ra,0x0
    8000d5e0:	720080e7          	jalr	1824(ra) # 8000dcfc <panic>

000000008000d5e4 <clockintr>:
    8000d5e4:	fe010113          	addi	sp,sp,-32
    8000d5e8:	00813823          	sd	s0,16(sp)
    8000d5ec:	00913423          	sd	s1,8(sp)
    8000d5f0:	00113c23          	sd	ra,24(sp)
    8000d5f4:	02010413          	addi	s0,sp,32
    8000d5f8:	00009497          	auipc	s1,0x9
    8000d5fc:	7b848493          	addi	s1,s1,1976 # 80016db0 <tickslock>
    8000d600:	00048513          	mv	a0,s1
    8000d604:	00001097          	auipc	ra,0x1
    8000d608:	428080e7          	jalr	1064(ra) # 8000ea2c <acquire>
    8000d60c:	00008717          	auipc	a4,0x8
    8000d610:	3f870713          	addi	a4,a4,1016 # 80015a04 <ticks>
    8000d614:	00072783          	lw	a5,0(a4)
    8000d618:	01013403          	ld	s0,16(sp)
    8000d61c:	01813083          	ld	ra,24(sp)
    8000d620:	00048513          	mv	a0,s1
    8000d624:	0017879b          	addiw	a5,a5,1
    8000d628:	00813483          	ld	s1,8(sp)
    8000d62c:	00f72023          	sw	a5,0(a4)
    8000d630:	02010113          	addi	sp,sp,32
    8000d634:	00001317          	auipc	t1,0x1
    8000d638:	4c430067          	jr	1220(t1) # 8000eaf8 <release>

000000008000d63c <devintr>:
    8000d63c:	142027f3          	csrr	a5,scause
    8000d640:	00000513          	li	a0,0
    8000d644:	0007c463          	bltz	a5,8000d64c <devintr+0x10>
    8000d648:	00008067          	ret
    8000d64c:	fe010113          	addi	sp,sp,-32
    8000d650:	00813823          	sd	s0,16(sp)
    8000d654:	00113c23          	sd	ra,24(sp)
    8000d658:	00913423          	sd	s1,8(sp)
    8000d65c:	02010413          	addi	s0,sp,32
    8000d660:	0ff7f713          	andi	a4,a5,255
    8000d664:	00900693          	li	a3,9
    8000d668:	04d70c63          	beq	a4,a3,8000d6c0 <devintr+0x84>
    8000d66c:	fff00713          	li	a4,-1
    8000d670:	03f71713          	slli	a4,a4,0x3f
    8000d674:	00170713          	addi	a4,a4,1
    8000d678:	00e78c63          	beq	a5,a4,8000d690 <devintr+0x54>
    8000d67c:	01813083          	ld	ra,24(sp)
    8000d680:	01013403          	ld	s0,16(sp)
    8000d684:	00813483          	ld	s1,8(sp)
    8000d688:	02010113          	addi	sp,sp,32
    8000d68c:	00008067          	ret
    8000d690:	00000097          	auipc	ra,0x0
    8000d694:	c8c080e7          	jalr	-884(ra) # 8000d31c <cpuid>
    8000d698:	06050663          	beqz	a0,8000d704 <devintr+0xc8>
    8000d69c:	144027f3          	csrr	a5,sip
    8000d6a0:	ffd7f793          	andi	a5,a5,-3
    8000d6a4:	14479073          	csrw	sip,a5
    8000d6a8:	01813083          	ld	ra,24(sp)
    8000d6ac:	01013403          	ld	s0,16(sp)
    8000d6b0:	00813483          	ld	s1,8(sp)
    8000d6b4:	00200513          	li	a0,2
    8000d6b8:	02010113          	addi	sp,sp,32
    8000d6bc:	00008067          	ret
    8000d6c0:	00000097          	auipc	ra,0x0
    8000d6c4:	254080e7          	jalr	596(ra) # 8000d914 <plic_claim>
    8000d6c8:	00a00793          	li	a5,10
    8000d6cc:	00050493          	mv	s1,a0
    8000d6d0:	06f50663          	beq	a0,a5,8000d73c <devintr+0x100>
    8000d6d4:	00100513          	li	a0,1
    8000d6d8:	fa0482e3          	beqz	s1,8000d67c <devintr+0x40>
    8000d6dc:	00048593          	mv	a1,s1
    8000d6e0:	00004517          	auipc	a0,0x4
    8000d6e4:	ca850513          	addi	a0,a0,-856 # 80011388 <CONSOLE_STATUS+0x1378>
    8000d6e8:	00000097          	auipc	ra,0x0
    8000d6ec:	670080e7          	jalr	1648(ra) # 8000dd58 <__printf>
    8000d6f0:	00048513          	mv	a0,s1
    8000d6f4:	00000097          	auipc	ra,0x0
    8000d6f8:	258080e7          	jalr	600(ra) # 8000d94c <plic_complete>
    8000d6fc:	00100513          	li	a0,1
    8000d700:	f7dff06f          	j	8000d67c <devintr+0x40>
    8000d704:	00009517          	auipc	a0,0x9
    8000d708:	6ac50513          	addi	a0,a0,1708 # 80016db0 <tickslock>
    8000d70c:	00001097          	auipc	ra,0x1
    8000d710:	320080e7          	jalr	800(ra) # 8000ea2c <acquire>
    8000d714:	00008717          	auipc	a4,0x8
    8000d718:	2f070713          	addi	a4,a4,752 # 80015a04 <ticks>
    8000d71c:	00072783          	lw	a5,0(a4)
    8000d720:	00009517          	auipc	a0,0x9
    8000d724:	69050513          	addi	a0,a0,1680 # 80016db0 <tickslock>
    8000d728:	0017879b          	addiw	a5,a5,1
    8000d72c:	00f72023          	sw	a5,0(a4)
    8000d730:	00001097          	auipc	ra,0x1
    8000d734:	3c8080e7          	jalr	968(ra) # 8000eaf8 <release>
    8000d738:	f65ff06f          	j	8000d69c <devintr+0x60>
    8000d73c:	00001097          	auipc	ra,0x1
    8000d740:	f24080e7          	jalr	-220(ra) # 8000e660 <uartintr>
    8000d744:	fadff06f          	j	8000d6f0 <devintr+0xb4>
	...

000000008000d750 <kernelvec>:
    8000d750:	f0010113          	addi	sp,sp,-256
    8000d754:	00113023          	sd	ra,0(sp)
    8000d758:	00213423          	sd	sp,8(sp)
    8000d75c:	00313823          	sd	gp,16(sp)
    8000d760:	00413c23          	sd	tp,24(sp)
    8000d764:	02513023          	sd	t0,32(sp)
    8000d768:	02613423          	sd	t1,40(sp)
    8000d76c:	02713823          	sd	t2,48(sp)
    8000d770:	02813c23          	sd	s0,56(sp)
    8000d774:	04913023          	sd	s1,64(sp)
    8000d778:	04a13423          	sd	a0,72(sp)
    8000d77c:	04b13823          	sd	a1,80(sp)
    8000d780:	04c13c23          	sd	a2,88(sp)
    8000d784:	06d13023          	sd	a3,96(sp)
    8000d788:	06e13423          	sd	a4,104(sp)
    8000d78c:	06f13823          	sd	a5,112(sp)
    8000d790:	07013c23          	sd	a6,120(sp)
    8000d794:	09113023          	sd	a7,128(sp)
    8000d798:	09213423          	sd	s2,136(sp)
    8000d79c:	09313823          	sd	s3,144(sp)
    8000d7a0:	09413c23          	sd	s4,152(sp)
    8000d7a4:	0b513023          	sd	s5,160(sp)
    8000d7a8:	0b613423          	sd	s6,168(sp)
    8000d7ac:	0b713823          	sd	s7,176(sp)
    8000d7b0:	0b813c23          	sd	s8,184(sp)
    8000d7b4:	0d913023          	sd	s9,192(sp)
    8000d7b8:	0da13423          	sd	s10,200(sp)
    8000d7bc:	0db13823          	sd	s11,208(sp)
    8000d7c0:	0dc13c23          	sd	t3,216(sp)
    8000d7c4:	0fd13023          	sd	t4,224(sp)
    8000d7c8:	0fe13423          	sd	t5,232(sp)
    8000d7cc:	0ff13823          	sd	t6,240(sp)
    8000d7d0:	ccdff0ef          	jal	ra,8000d49c <kerneltrap>
    8000d7d4:	00013083          	ld	ra,0(sp)
    8000d7d8:	00813103          	ld	sp,8(sp)
    8000d7dc:	01013183          	ld	gp,16(sp)
    8000d7e0:	02013283          	ld	t0,32(sp)
    8000d7e4:	02813303          	ld	t1,40(sp)
    8000d7e8:	03013383          	ld	t2,48(sp)
    8000d7ec:	03813403          	ld	s0,56(sp)
    8000d7f0:	04013483          	ld	s1,64(sp)
    8000d7f4:	04813503          	ld	a0,72(sp)
    8000d7f8:	05013583          	ld	a1,80(sp)
    8000d7fc:	05813603          	ld	a2,88(sp)
    8000d800:	06013683          	ld	a3,96(sp)
    8000d804:	06813703          	ld	a4,104(sp)
    8000d808:	07013783          	ld	a5,112(sp)
    8000d80c:	07813803          	ld	a6,120(sp)
    8000d810:	08013883          	ld	a7,128(sp)
    8000d814:	08813903          	ld	s2,136(sp)
    8000d818:	09013983          	ld	s3,144(sp)
    8000d81c:	09813a03          	ld	s4,152(sp)
    8000d820:	0a013a83          	ld	s5,160(sp)
    8000d824:	0a813b03          	ld	s6,168(sp)
    8000d828:	0b013b83          	ld	s7,176(sp)
    8000d82c:	0b813c03          	ld	s8,184(sp)
    8000d830:	0c013c83          	ld	s9,192(sp)
    8000d834:	0c813d03          	ld	s10,200(sp)
    8000d838:	0d013d83          	ld	s11,208(sp)
    8000d83c:	0d813e03          	ld	t3,216(sp)
    8000d840:	0e013e83          	ld	t4,224(sp)
    8000d844:	0e813f03          	ld	t5,232(sp)
    8000d848:	0f013f83          	ld	t6,240(sp)
    8000d84c:	10010113          	addi	sp,sp,256
    8000d850:	10200073          	sret
    8000d854:	00000013          	nop
    8000d858:	00000013          	nop
    8000d85c:	00000013          	nop

000000008000d860 <timervec>:
    8000d860:	34051573          	csrrw	a0,mscratch,a0
    8000d864:	00b53023          	sd	a1,0(a0)
    8000d868:	00c53423          	sd	a2,8(a0)
    8000d86c:	00d53823          	sd	a3,16(a0)
    8000d870:	01853583          	ld	a1,24(a0)
    8000d874:	02053603          	ld	a2,32(a0)
    8000d878:	0005b683          	ld	a3,0(a1)
    8000d87c:	00c686b3          	add	a3,a3,a2
    8000d880:	00d5b023          	sd	a3,0(a1)
    8000d884:	00200593          	li	a1,2
    8000d888:	14459073          	csrw	sip,a1
    8000d88c:	01053683          	ld	a3,16(a0)
    8000d890:	00853603          	ld	a2,8(a0)
    8000d894:	00053583          	ld	a1,0(a0)
    8000d898:	34051573          	csrrw	a0,mscratch,a0
    8000d89c:	30200073          	mret

000000008000d8a0 <plicinit>:
    8000d8a0:	ff010113          	addi	sp,sp,-16
    8000d8a4:	00813423          	sd	s0,8(sp)
    8000d8a8:	01010413          	addi	s0,sp,16
    8000d8ac:	00813403          	ld	s0,8(sp)
    8000d8b0:	0c0007b7          	lui	a5,0xc000
    8000d8b4:	00100713          	li	a4,1
    8000d8b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000d8bc:	00e7a223          	sw	a4,4(a5)
    8000d8c0:	01010113          	addi	sp,sp,16
    8000d8c4:	00008067          	ret

000000008000d8c8 <plicinithart>:
    8000d8c8:	ff010113          	addi	sp,sp,-16
    8000d8cc:	00813023          	sd	s0,0(sp)
    8000d8d0:	00113423          	sd	ra,8(sp)
    8000d8d4:	01010413          	addi	s0,sp,16
    8000d8d8:	00000097          	auipc	ra,0x0
    8000d8dc:	a44080e7          	jalr	-1468(ra) # 8000d31c <cpuid>
    8000d8e0:	0085171b          	slliw	a4,a0,0x8
    8000d8e4:	0c0027b7          	lui	a5,0xc002
    8000d8e8:	00e787b3          	add	a5,a5,a4
    8000d8ec:	40200713          	li	a4,1026
    8000d8f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    8000d8f4:	00813083          	ld	ra,8(sp)
    8000d8f8:	00013403          	ld	s0,0(sp)
    8000d8fc:	00d5151b          	slliw	a0,a0,0xd
    8000d900:	0c2017b7          	lui	a5,0xc201
    8000d904:	00a78533          	add	a0,a5,a0
    8000d908:	00052023          	sw	zero,0(a0)
    8000d90c:	01010113          	addi	sp,sp,16
    8000d910:	00008067          	ret

000000008000d914 <plic_claim>:
    8000d914:	ff010113          	addi	sp,sp,-16
    8000d918:	00813023          	sd	s0,0(sp)
    8000d91c:	00113423          	sd	ra,8(sp)
    8000d920:	01010413          	addi	s0,sp,16
    8000d924:	00000097          	auipc	ra,0x0
    8000d928:	9f8080e7          	jalr	-1544(ra) # 8000d31c <cpuid>
    8000d92c:	00813083          	ld	ra,8(sp)
    8000d930:	00013403          	ld	s0,0(sp)
    8000d934:	00d5151b          	slliw	a0,a0,0xd
    8000d938:	0c2017b7          	lui	a5,0xc201
    8000d93c:	00a78533          	add	a0,a5,a0
    8000d940:	00452503          	lw	a0,4(a0)
    8000d944:	01010113          	addi	sp,sp,16
    8000d948:	00008067          	ret

000000008000d94c <plic_complete>:
    8000d94c:	fe010113          	addi	sp,sp,-32
    8000d950:	00813823          	sd	s0,16(sp)
    8000d954:	00913423          	sd	s1,8(sp)
    8000d958:	00113c23          	sd	ra,24(sp)
    8000d95c:	02010413          	addi	s0,sp,32
    8000d960:	00050493          	mv	s1,a0
    8000d964:	00000097          	auipc	ra,0x0
    8000d968:	9b8080e7          	jalr	-1608(ra) # 8000d31c <cpuid>
    8000d96c:	01813083          	ld	ra,24(sp)
    8000d970:	01013403          	ld	s0,16(sp)
    8000d974:	00d5179b          	slliw	a5,a0,0xd
    8000d978:	0c201737          	lui	a4,0xc201
    8000d97c:	00f707b3          	add	a5,a4,a5
    8000d980:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    8000d984:	00813483          	ld	s1,8(sp)
    8000d988:	02010113          	addi	sp,sp,32
    8000d98c:	00008067          	ret

000000008000d990 <consolewrite>:
    8000d990:	fb010113          	addi	sp,sp,-80
    8000d994:	04813023          	sd	s0,64(sp)
    8000d998:	04113423          	sd	ra,72(sp)
    8000d99c:	02913c23          	sd	s1,56(sp)
    8000d9a0:	03213823          	sd	s2,48(sp)
    8000d9a4:	03313423          	sd	s3,40(sp)
    8000d9a8:	03413023          	sd	s4,32(sp)
    8000d9ac:	01513c23          	sd	s5,24(sp)
    8000d9b0:	05010413          	addi	s0,sp,80
    8000d9b4:	06c05c63          	blez	a2,8000da2c <consolewrite+0x9c>
    8000d9b8:	00060993          	mv	s3,a2
    8000d9bc:	00050a13          	mv	s4,a0
    8000d9c0:	00058493          	mv	s1,a1
    8000d9c4:	00000913          	li	s2,0
    8000d9c8:	fff00a93          	li	s5,-1
    8000d9cc:	01c0006f          	j	8000d9e8 <consolewrite+0x58>
    8000d9d0:	fbf44503          	lbu	a0,-65(s0)
    8000d9d4:	0019091b          	addiw	s2,s2,1
    8000d9d8:	00148493          	addi	s1,s1,1
    8000d9dc:	00001097          	auipc	ra,0x1
    8000d9e0:	a9c080e7          	jalr	-1380(ra) # 8000e478 <uartputc>
    8000d9e4:	03298063          	beq	s3,s2,8000da04 <consolewrite+0x74>
    8000d9e8:	00048613          	mv	a2,s1
    8000d9ec:	00100693          	li	a3,1
    8000d9f0:	000a0593          	mv	a1,s4
    8000d9f4:	fbf40513          	addi	a0,s0,-65
    8000d9f8:	00000097          	auipc	ra,0x0
    8000d9fc:	9dc080e7          	jalr	-1572(ra) # 8000d3d4 <either_copyin>
    8000da00:	fd5518e3          	bne	a0,s5,8000d9d0 <consolewrite+0x40>
    8000da04:	04813083          	ld	ra,72(sp)
    8000da08:	04013403          	ld	s0,64(sp)
    8000da0c:	03813483          	ld	s1,56(sp)
    8000da10:	02813983          	ld	s3,40(sp)
    8000da14:	02013a03          	ld	s4,32(sp)
    8000da18:	01813a83          	ld	s5,24(sp)
    8000da1c:	00090513          	mv	a0,s2
    8000da20:	03013903          	ld	s2,48(sp)
    8000da24:	05010113          	addi	sp,sp,80
    8000da28:	00008067          	ret
    8000da2c:	00000913          	li	s2,0
    8000da30:	fd5ff06f          	j	8000da04 <consolewrite+0x74>

000000008000da34 <consoleread>:
    8000da34:	f9010113          	addi	sp,sp,-112
    8000da38:	06813023          	sd	s0,96(sp)
    8000da3c:	04913c23          	sd	s1,88(sp)
    8000da40:	05213823          	sd	s2,80(sp)
    8000da44:	05313423          	sd	s3,72(sp)
    8000da48:	05413023          	sd	s4,64(sp)
    8000da4c:	03513c23          	sd	s5,56(sp)
    8000da50:	03613823          	sd	s6,48(sp)
    8000da54:	03713423          	sd	s7,40(sp)
    8000da58:	03813023          	sd	s8,32(sp)
    8000da5c:	06113423          	sd	ra,104(sp)
    8000da60:	01913c23          	sd	s9,24(sp)
    8000da64:	07010413          	addi	s0,sp,112
    8000da68:	00060b93          	mv	s7,a2
    8000da6c:	00050913          	mv	s2,a0
    8000da70:	00058c13          	mv	s8,a1
    8000da74:	00060b1b          	sext.w	s6,a2
    8000da78:	00009497          	auipc	s1,0x9
    8000da7c:	36048493          	addi	s1,s1,864 # 80016dd8 <cons>
    8000da80:	00400993          	li	s3,4
    8000da84:	fff00a13          	li	s4,-1
    8000da88:	00a00a93          	li	s5,10
    8000da8c:	05705e63          	blez	s7,8000dae8 <consoleread+0xb4>
    8000da90:	09c4a703          	lw	a4,156(s1)
    8000da94:	0984a783          	lw	a5,152(s1)
    8000da98:	0007071b          	sext.w	a4,a4
    8000da9c:	08e78463          	beq	a5,a4,8000db24 <consoleread+0xf0>
    8000daa0:	07f7f713          	andi	a4,a5,127
    8000daa4:	00e48733          	add	a4,s1,a4
    8000daa8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000daac:	0017869b          	addiw	a3,a5,1
    8000dab0:	08d4ac23          	sw	a3,152(s1)
    8000dab4:	00070c9b          	sext.w	s9,a4
    8000dab8:	0b370663          	beq	a4,s3,8000db64 <consoleread+0x130>
    8000dabc:	00100693          	li	a3,1
    8000dac0:	f9f40613          	addi	a2,s0,-97
    8000dac4:	000c0593          	mv	a1,s8
    8000dac8:	00090513          	mv	a0,s2
    8000dacc:	f8e40fa3          	sb	a4,-97(s0)
    8000dad0:	00000097          	auipc	ra,0x0
    8000dad4:	8b8080e7          	jalr	-1864(ra) # 8000d388 <either_copyout>
    8000dad8:	01450863          	beq	a0,s4,8000dae8 <consoleread+0xb4>
    8000dadc:	001c0c13          	addi	s8,s8,1
    8000dae0:	fffb8b9b          	addiw	s7,s7,-1
    8000dae4:	fb5c94e3          	bne	s9,s5,8000da8c <consoleread+0x58>
    8000dae8:	000b851b          	sext.w	a0,s7
    8000daec:	06813083          	ld	ra,104(sp)
    8000daf0:	06013403          	ld	s0,96(sp)
    8000daf4:	05813483          	ld	s1,88(sp)
    8000daf8:	05013903          	ld	s2,80(sp)
    8000dafc:	04813983          	ld	s3,72(sp)
    8000db00:	04013a03          	ld	s4,64(sp)
    8000db04:	03813a83          	ld	s5,56(sp)
    8000db08:	02813b83          	ld	s7,40(sp)
    8000db0c:	02013c03          	ld	s8,32(sp)
    8000db10:	01813c83          	ld	s9,24(sp)
    8000db14:	40ab053b          	subw	a0,s6,a0
    8000db18:	03013b03          	ld	s6,48(sp)
    8000db1c:	07010113          	addi	sp,sp,112
    8000db20:	00008067          	ret
    8000db24:	00001097          	auipc	ra,0x1
    8000db28:	1d8080e7          	jalr	472(ra) # 8000ecfc <push_on>
    8000db2c:	0984a703          	lw	a4,152(s1)
    8000db30:	09c4a783          	lw	a5,156(s1)
    8000db34:	0007879b          	sext.w	a5,a5
    8000db38:	fef70ce3          	beq	a4,a5,8000db30 <consoleread+0xfc>
    8000db3c:	00001097          	auipc	ra,0x1
    8000db40:	234080e7          	jalr	564(ra) # 8000ed70 <pop_on>
    8000db44:	0984a783          	lw	a5,152(s1)
    8000db48:	07f7f713          	andi	a4,a5,127
    8000db4c:	00e48733          	add	a4,s1,a4
    8000db50:	01874703          	lbu	a4,24(a4)
    8000db54:	0017869b          	addiw	a3,a5,1
    8000db58:	08d4ac23          	sw	a3,152(s1)
    8000db5c:	00070c9b          	sext.w	s9,a4
    8000db60:	f5371ee3          	bne	a4,s3,8000dabc <consoleread+0x88>
    8000db64:	000b851b          	sext.w	a0,s7
    8000db68:	f96bf2e3          	bgeu	s7,s6,8000daec <consoleread+0xb8>
    8000db6c:	08f4ac23          	sw	a5,152(s1)
    8000db70:	f7dff06f          	j	8000daec <consoleread+0xb8>

000000008000db74 <consputc>:
    8000db74:	10000793          	li	a5,256
    8000db78:	00f50663          	beq	a0,a5,8000db84 <consputc+0x10>
    8000db7c:	00001317          	auipc	t1,0x1
    8000db80:	9f430067          	jr	-1548(t1) # 8000e570 <uartputc_sync>
    8000db84:	ff010113          	addi	sp,sp,-16
    8000db88:	00113423          	sd	ra,8(sp)
    8000db8c:	00813023          	sd	s0,0(sp)
    8000db90:	01010413          	addi	s0,sp,16
    8000db94:	00800513          	li	a0,8
    8000db98:	00001097          	auipc	ra,0x1
    8000db9c:	9d8080e7          	jalr	-1576(ra) # 8000e570 <uartputc_sync>
    8000dba0:	02000513          	li	a0,32
    8000dba4:	00001097          	auipc	ra,0x1
    8000dba8:	9cc080e7          	jalr	-1588(ra) # 8000e570 <uartputc_sync>
    8000dbac:	00013403          	ld	s0,0(sp)
    8000dbb0:	00813083          	ld	ra,8(sp)
    8000dbb4:	00800513          	li	a0,8
    8000dbb8:	01010113          	addi	sp,sp,16
    8000dbbc:	00001317          	auipc	t1,0x1
    8000dbc0:	9b430067          	jr	-1612(t1) # 8000e570 <uartputc_sync>

000000008000dbc4 <consoleintr>:
    8000dbc4:	fe010113          	addi	sp,sp,-32
    8000dbc8:	00813823          	sd	s0,16(sp)
    8000dbcc:	00913423          	sd	s1,8(sp)
    8000dbd0:	01213023          	sd	s2,0(sp)
    8000dbd4:	00113c23          	sd	ra,24(sp)
    8000dbd8:	02010413          	addi	s0,sp,32
    8000dbdc:	00009917          	auipc	s2,0x9
    8000dbe0:	1fc90913          	addi	s2,s2,508 # 80016dd8 <cons>
    8000dbe4:	00050493          	mv	s1,a0
    8000dbe8:	00090513          	mv	a0,s2
    8000dbec:	00001097          	auipc	ra,0x1
    8000dbf0:	e40080e7          	jalr	-448(ra) # 8000ea2c <acquire>
    8000dbf4:	02048c63          	beqz	s1,8000dc2c <consoleintr+0x68>
    8000dbf8:	0a092783          	lw	a5,160(s2)
    8000dbfc:	09892703          	lw	a4,152(s2)
    8000dc00:	07f00693          	li	a3,127
    8000dc04:	40e7873b          	subw	a4,a5,a4
    8000dc08:	02e6e263          	bltu	a3,a4,8000dc2c <consoleintr+0x68>
    8000dc0c:	00d00713          	li	a4,13
    8000dc10:	04e48063          	beq	s1,a4,8000dc50 <consoleintr+0x8c>
    8000dc14:	07f7f713          	andi	a4,a5,127
    8000dc18:	00e90733          	add	a4,s2,a4
    8000dc1c:	0017879b          	addiw	a5,a5,1
    8000dc20:	0af92023          	sw	a5,160(s2)
    8000dc24:	00970c23          	sb	s1,24(a4)
    8000dc28:	08f92e23          	sw	a5,156(s2)
    8000dc2c:	01013403          	ld	s0,16(sp)
    8000dc30:	01813083          	ld	ra,24(sp)
    8000dc34:	00813483          	ld	s1,8(sp)
    8000dc38:	00013903          	ld	s2,0(sp)
    8000dc3c:	00009517          	auipc	a0,0x9
    8000dc40:	19c50513          	addi	a0,a0,412 # 80016dd8 <cons>
    8000dc44:	02010113          	addi	sp,sp,32
    8000dc48:	00001317          	auipc	t1,0x1
    8000dc4c:	eb030067          	jr	-336(t1) # 8000eaf8 <release>
    8000dc50:	00a00493          	li	s1,10
    8000dc54:	fc1ff06f          	j	8000dc14 <consoleintr+0x50>

000000008000dc58 <consoleinit>:
    8000dc58:	fe010113          	addi	sp,sp,-32
    8000dc5c:	00113c23          	sd	ra,24(sp)
    8000dc60:	00813823          	sd	s0,16(sp)
    8000dc64:	00913423          	sd	s1,8(sp)
    8000dc68:	02010413          	addi	s0,sp,32
    8000dc6c:	00009497          	auipc	s1,0x9
    8000dc70:	16c48493          	addi	s1,s1,364 # 80016dd8 <cons>
    8000dc74:	00048513          	mv	a0,s1
    8000dc78:	00003597          	auipc	a1,0x3
    8000dc7c:	76858593          	addi	a1,a1,1896 # 800113e0 <CONSOLE_STATUS+0x13d0>
    8000dc80:	00001097          	auipc	ra,0x1
    8000dc84:	d88080e7          	jalr	-632(ra) # 8000ea08 <initlock>
    8000dc88:	00000097          	auipc	ra,0x0
    8000dc8c:	7ac080e7          	jalr	1964(ra) # 8000e434 <uartinit>
    8000dc90:	01813083          	ld	ra,24(sp)
    8000dc94:	01013403          	ld	s0,16(sp)
    8000dc98:	00000797          	auipc	a5,0x0
    8000dc9c:	d9c78793          	addi	a5,a5,-612 # 8000da34 <consoleread>
    8000dca0:	0af4bc23          	sd	a5,184(s1)
    8000dca4:	00000797          	auipc	a5,0x0
    8000dca8:	cec78793          	addi	a5,a5,-788 # 8000d990 <consolewrite>
    8000dcac:	0cf4b023          	sd	a5,192(s1)
    8000dcb0:	00813483          	ld	s1,8(sp)
    8000dcb4:	02010113          	addi	sp,sp,32
    8000dcb8:	00008067          	ret

000000008000dcbc <console_read>:
    8000dcbc:	ff010113          	addi	sp,sp,-16
    8000dcc0:	00813423          	sd	s0,8(sp)
    8000dcc4:	01010413          	addi	s0,sp,16
    8000dcc8:	00813403          	ld	s0,8(sp)
    8000dccc:	00009317          	auipc	t1,0x9
    8000dcd0:	1c433303          	ld	t1,452(t1) # 80016e90 <devsw+0x10>
    8000dcd4:	01010113          	addi	sp,sp,16
    8000dcd8:	00030067          	jr	t1

000000008000dcdc <console_write>:
    8000dcdc:	ff010113          	addi	sp,sp,-16
    8000dce0:	00813423          	sd	s0,8(sp)
    8000dce4:	01010413          	addi	s0,sp,16
    8000dce8:	00813403          	ld	s0,8(sp)
    8000dcec:	00009317          	auipc	t1,0x9
    8000dcf0:	1ac33303          	ld	t1,428(t1) # 80016e98 <devsw+0x18>
    8000dcf4:	01010113          	addi	sp,sp,16
    8000dcf8:	00030067          	jr	t1

000000008000dcfc <panic>:
    8000dcfc:	fe010113          	addi	sp,sp,-32
    8000dd00:	00113c23          	sd	ra,24(sp)
    8000dd04:	00813823          	sd	s0,16(sp)
    8000dd08:	00913423          	sd	s1,8(sp)
    8000dd0c:	02010413          	addi	s0,sp,32
    8000dd10:	00050493          	mv	s1,a0
    8000dd14:	00003517          	auipc	a0,0x3
    8000dd18:	6d450513          	addi	a0,a0,1748 # 800113e8 <CONSOLE_STATUS+0x13d8>
    8000dd1c:	00009797          	auipc	a5,0x9
    8000dd20:	2007ae23          	sw	zero,540(a5) # 80016f38 <pr+0x18>
    8000dd24:	00000097          	auipc	ra,0x0
    8000dd28:	034080e7          	jalr	52(ra) # 8000dd58 <__printf>
    8000dd2c:	00048513          	mv	a0,s1
    8000dd30:	00000097          	auipc	ra,0x0
    8000dd34:	028080e7          	jalr	40(ra) # 8000dd58 <__printf>
    8000dd38:	00003517          	auipc	a0,0x3
    8000dd3c:	ca850513          	addi	a0,a0,-856 # 800109e0 <CONSOLE_STATUS+0x9d0>
    8000dd40:	00000097          	auipc	ra,0x0
    8000dd44:	018080e7          	jalr	24(ra) # 8000dd58 <__printf>
    8000dd48:	00100793          	li	a5,1
    8000dd4c:	00008717          	auipc	a4,0x8
    8000dd50:	caf72e23          	sw	a5,-836(a4) # 80015a08 <panicked>
    8000dd54:	0000006f          	j	8000dd54 <panic+0x58>

000000008000dd58 <__printf>:
    8000dd58:	f3010113          	addi	sp,sp,-208
    8000dd5c:	08813023          	sd	s0,128(sp)
    8000dd60:	07313423          	sd	s3,104(sp)
    8000dd64:	09010413          	addi	s0,sp,144
    8000dd68:	05813023          	sd	s8,64(sp)
    8000dd6c:	08113423          	sd	ra,136(sp)
    8000dd70:	06913c23          	sd	s1,120(sp)
    8000dd74:	07213823          	sd	s2,112(sp)
    8000dd78:	07413023          	sd	s4,96(sp)
    8000dd7c:	05513c23          	sd	s5,88(sp)
    8000dd80:	05613823          	sd	s6,80(sp)
    8000dd84:	05713423          	sd	s7,72(sp)
    8000dd88:	03913c23          	sd	s9,56(sp)
    8000dd8c:	03a13823          	sd	s10,48(sp)
    8000dd90:	03b13423          	sd	s11,40(sp)
    8000dd94:	00009317          	auipc	t1,0x9
    8000dd98:	18c30313          	addi	t1,t1,396 # 80016f20 <pr>
    8000dd9c:	01832c03          	lw	s8,24(t1)
    8000dda0:	00b43423          	sd	a1,8(s0)
    8000dda4:	00c43823          	sd	a2,16(s0)
    8000dda8:	00d43c23          	sd	a3,24(s0)
    8000ddac:	02e43023          	sd	a4,32(s0)
    8000ddb0:	02f43423          	sd	a5,40(s0)
    8000ddb4:	03043823          	sd	a6,48(s0)
    8000ddb8:	03143c23          	sd	a7,56(s0)
    8000ddbc:	00050993          	mv	s3,a0
    8000ddc0:	4a0c1663          	bnez	s8,8000e26c <__printf+0x514>
    8000ddc4:	60098c63          	beqz	s3,8000e3dc <__printf+0x684>
    8000ddc8:	0009c503          	lbu	a0,0(s3)
    8000ddcc:	00840793          	addi	a5,s0,8
    8000ddd0:	f6f43c23          	sd	a5,-136(s0)
    8000ddd4:	00000493          	li	s1,0
    8000ddd8:	22050063          	beqz	a0,8000dff8 <__printf+0x2a0>
    8000dddc:	00002a37          	lui	s4,0x2
    8000dde0:	00018ab7          	lui	s5,0x18
    8000dde4:	000f4b37          	lui	s6,0xf4
    8000dde8:	00989bb7          	lui	s7,0x989
    8000ddec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    8000ddf0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    8000ddf4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    8000ddf8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000ddfc:	00148c9b          	addiw	s9,s1,1
    8000de00:	02500793          	li	a5,37
    8000de04:	01998933          	add	s2,s3,s9
    8000de08:	38f51263          	bne	a0,a5,8000e18c <__printf+0x434>
    8000de0c:	00094783          	lbu	a5,0(s2)
    8000de10:	00078c9b          	sext.w	s9,a5
    8000de14:	1e078263          	beqz	a5,8000dff8 <__printf+0x2a0>
    8000de18:	0024849b          	addiw	s1,s1,2
    8000de1c:	07000713          	li	a4,112
    8000de20:	00998933          	add	s2,s3,s1
    8000de24:	38e78a63          	beq	a5,a4,8000e1b8 <__printf+0x460>
    8000de28:	20f76863          	bltu	a4,a5,8000e038 <__printf+0x2e0>
    8000de2c:	42a78863          	beq	a5,a0,8000e25c <__printf+0x504>
    8000de30:	06400713          	li	a4,100
    8000de34:	40e79663          	bne	a5,a4,8000e240 <__printf+0x4e8>
    8000de38:	f7843783          	ld	a5,-136(s0)
    8000de3c:	0007a603          	lw	a2,0(a5)
    8000de40:	00878793          	addi	a5,a5,8
    8000de44:	f6f43c23          	sd	a5,-136(s0)
    8000de48:	42064a63          	bltz	a2,8000e27c <__printf+0x524>
    8000de4c:	00a00713          	li	a4,10
    8000de50:	02e677bb          	remuw	a5,a2,a4
    8000de54:	00003d97          	auipc	s11,0x3
    8000de58:	5bcd8d93          	addi	s11,s11,1468 # 80011410 <digits>
    8000de5c:	00900593          	li	a1,9
    8000de60:	0006051b          	sext.w	a0,a2
    8000de64:	00000c93          	li	s9,0
    8000de68:	02079793          	slli	a5,a5,0x20
    8000de6c:	0207d793          	srli	a5,a5,0x20
    8000de70:	00fd87b3          	add	a5,s11,a5
    8000de74:	0007c783          	lbu	a5,0(a5)
    8000de78:	02e656bb          	divuw	a3,a2,a4
    8000de7c:	f8f40023          	sb	a5,-128(s0)
    8000de80:	14c5d863          	bge	a1,a2,8000dfd0 <__printf+0x278>
    8000de84:	06300593          	li	a1,99
    8000de88:	00100c93          	li	s9,1
    8000de8c:	02e6f7bb          	remuw	a5,a3,a4
    8000de90:	02079793          	slli	a5,a5,0x20
    8000de94:	0207d793          	srli	a5,a5,0x20
    8000de98:	00fd87b3          	add	a5,s11,a5
    8000de9c:	0007c783          	lbu	a5,0(a5)
    8000dea0:	02e6d73b          	divuw	a4,a3,a4
    8000dea4:	f8f400a3          	sb	a5,-127(s0)
    8000dea8:	12a5f463          	bgeu	a1,a0,8000dfd0 <__printf+0x278>
    8000deac:	00a00693          	li	a3,10
    8000deb0:	00900593          	li	a1,9
    8000deb4:	02d777bb          	remuw	a5,a4,a3
    8000deb8:	02079793          	slli	a5,a5,0x20
    8000debc:	0207d793          	srli	a5,a5,0x20
    8000dec0:	00fd87b3          	add	a5,s11,a5
    8000dec4:	0007c503          	lbu	a0,0(a5)
    8000dec8:	02d757bb          	divuw	a5,a4,a3
    8000decc:	f8a40123          	sb	a0,-126(s0)
    8000ded0:	48e5f263          	bgeu	a1,a4,8000e354 <__printf+0x5fc>
    8000ded4:	06300513          	li	a0,99
    8000ded8:	02d7f5bb          	remuw	a1,a5,a3
    8000dedc:	02059593          	slli	a1,a1,0x20
    8000dee0:	0205d593          	srli	a1,a1,0x20
    8000dee4:	00bd85b3          	add	a1,s11,a1
    8000dee8:	0005c583          	lbu	a1,0(a1)
    8000deec:	02d7d7bb          	divuw	a5,a5,a3
    8000def0:	f8b401a3          	sb	a1,-125(s0)
    8000def4:	48e57263          	bgeu	a0,a4,8000e378 <__printf+0x620>
    8000def8:	3e700513          	li	a0,999
    8000defc:	02d7f5bb          	remuw	a1,a5,a3
    8000df00:	02059593          	slli	a1,a1,0x20
    8000df04:	0205d593          	srli	a1,a1,0x20
    8000df08:	00bd85b3          	add	a1,s11,a1
    8000df0c:	0005c583          	lbu	a1,0(a1)
    8000df10:	02d7d7bb          	divuw	a5,a5,a3
    8000df14:	f8b40223          	sb	a1,-124(s0)
    8000df18:	46e57663          	bgeu	a0,a4,8000e384 <__printf+0x62c>
    8000df1c:	02d7f5bb          	remuw	a1,a5,a3
    8000df20:	02059593          	slli	a1,a1,0x20
    8000df24:	0205d593          	srli	a1,a1,0x20
    8000df28:	00bd85b3          	add	a1,s11,a1
    8000df2c:	0005c583          	lbu	a1,0(a1)
    8000df30:	02d7d7bb          	divuw	a5,a5,a3
    8000df34:	f8b402a3          	sb	a1,-123(s0)
    8000df38:	46ea7863          	bgeu	s4,a4,8000e3a8 <__printf+0x650>
    8000df3c:	02d7f5bb          	remuw	a1,a5,a3
    8000df40:	02059593          	slli	a1,a1,0x20
    8000df44:	0205d593          	srli	a1,a1,0x20
    8000df48:	00bd85b3          	add	a1,s11,a1
    8000df4c:	0005c583          	lbu	a1,0(a1)
    8000df50:	02d7d7bb          	divuw	a5,a5,a3
    8000df54:	f8b40323          	sb	a1,-122(s0)
    8000df58:	3eeaf863          	bgeu	s5,a4,8000e348 <__printf+0x5f0>
    8000df5c:	02d7f5bb          	remuw	a1,a5,a3
    8000df60:	02059593          	slli	a1,a1,0x20
    8000df64:	0205d593          	srli	a1,a1,0x20
    8000df68:	00bd85b3          	add	a1,s11,a1
    8000df6c:	0005c583          	lbu	a1,0(a1)
    8000df70:	02d7d7bb          	divuw	a5,a5,a3
    8000df74:	f8b403a3          	sb	a1,-121(s0)
    8000df78:	42eb7e63          	bgeu	s6,a4,8000e3b4 <__printf+0x65c>
    8000df7c:	02d7f5bb          	remuw	a1,a5,a3
    8000df80:	02059593          	slli	a1,a1,0x20
    8000df84:	0205d593          	srli	a1,a1,0x20
    8000df88:	00bd85b3          	add	a1,s11,a1
    8000df8c:	0005c583          	lbu	a1,0(a1)
    8000df90:	02d7d7bb          	divuw	a5,a5,a3
    8000df94:	f8b40423          	sb	a1,-120(s0)
    8000df98:	42ebfc63          	bgeu	s7,a4,8000e3d0 <__printf+0x678>
    8000df9c:	02079793          	slli	a5,a5,0x20
    8000dfa0:	0207d793          	srli	a5,a5,0x20
    8000dfa4:	00fd8db3          	add	s11,s11,a5
    8000dfa8:	000dc703          	lbu	a4,0(s11)
    8000dfac:	00a00793          	li	a5,10
    8000dfb0:	00900c93          	li	s9,9
    8000dfb4:	f8e404a3          	sb	a4,-119(s0)
    8000dfb8:	00065c63          	bgez	a2,8000dfd0 <__printf+0x278>
    8000dfbc:	f9040713          	addi	a4,s0,-112
    8000dfc0:	00f70733          	add	a4,a4,a5
    8000dfc4:	02d00693          	li	a3,45
    8000dfc8:	fed70823          	sb	a3,-16(a4)
    8000dfcc:	00078c93          	mv	s9,a5
    8000dfd0:	f8040793          	addi	a5,s0,-128
    8000dfd4:	01978cb3          	add	s9,a5,s9
    8000dfd8:	f7f40d13          	addi	s10,s0,-129
    8000dfdc:	000cc503          	lbu	a0,0(s9)
    8000dfe0:	fffc8c93          	addi	s9,s9,-1
    8000dfe4:	00000097          	auipc	ra,0x0
    8000dfe8:	b90080e7          	jalr	-1136(ra) # 8000db74 <consputc>
    8000dfec:	ffac98e3          	bne	s9,s10,8000dfdc <__printf+0x284>
    8000dff0:	00094503          	lbu	a0,0(s2)
    8000dff4:	e00514e3          	bnez	a0,8000ddfc <__printf+0xa4>
    8000dff8:	1a0c1663          	bnez	s8,8000e1a4 <__printf+0x44c>
    8000dffc:	08813083          	ld	ra,136(sp)
    8000e000:	08013403          	ld	s0,128(sp)
    8000e004:	07813483          	ld	s1,120(sp)
    8000e008:	07013903          	ld	s2,112(sp)
    8000e00c:	06813983          	ld	s3,104(sp)
    8000e010:	06013a03          	ld	s4,96(sp)
    8000e014:	05813a83          	ld	s5,88(sp)
    8000e018:	05013b03          	ld	s6,80(sp)
    8000e01c:	04813b83          	ld	s7,72(sp)
    8000e020:	04013c03          	ld	s8,64(sp)
    8000e024:	03813c83          	ld	s9,56(sp)
    8000e028:	03013d03          	ld	s10,48(sp)
    8000e02c:	02813d83          	ld	s11,40(sp)
    8000e030:	0d010113          	addi	sp,sp,208
    8000e034:	00008067          	ret
    8000e038:	07300713          	li	a4,115
    8000e03c:	1ce78a63          	beq	a5,a4,8000e210 <__printf+0x4b8>
    8000e040:	07800713          	li	a4,120
    8000e044:	1ee79e63          	bne	a5,a4,8000e240 <__printf+0x4e8>
    8000e048:	f7843783          	ld	a5,-136(s0)
    8000e04c:	0007a703          	lw	a4,0(a5)
    8000e050:	00878793          	addi	a5,a5,8
    8000e054:	f6f43c23          	sd	a5,-136(s0)
    8000e058:	28074263          	bltz	a4,8000e2dc <__printf+0x584>
    8000e05c:	00003d97          	auipc	s11,0x3
    8000e060:	3b4d8d93          	addi	s11,s11,948 # 80011410 <digits>
    8000e064:	00f77793          	andi	a5,a4,15
    8000e068:	00fd87b3          	add	a5,s11,a5
    8000e06c:	0007c683          	lbu	a3,0(a5)
    8000e070:	00f00613          	li	a2,15
    8000e074:	0007079b          	sext.w	a5,a4
    8000e078:	f8d40023          	sb	a3,-128(s0)
    8000e07c:	0047559b          	srliw	a1,a4,0x4
    8000e080:	0047569b          	srliw	a3,a4,0x4
    8000e084:	00000c93          	li	s9,0
    8000e088:	0ee65063          	bge	a2,a4,8000e168 <__printf+0x410>
    8000e08c:	00f6f693          	andi	a3,a3,15
    8000e090:	00dd86b3          	add	a3,s11,a3
    8000e094:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    8000e098:	0087d79b          	srliw	a5,a5,0x8
    8000e09c:	00100c93          	li	s9,1
    8000e0a0:	f8d400a3          	sb	a3,-127(s0)
    8000e0a4:	0cb67263          	bgeu	a2,a1,8000e168 <__printf+0x410>
    8000e0a8:	00f7f693          	andi	a3,a5,15
    8000e0ac:	00dd86b3          	add	a3,s11,a3
    8000e0b0:	0006c583          	lbu	a1,0(a3)
    8000e0b4:	00f00613          	li	a2,15
    8000e0b8:	0047d69b          	srliw	a3,a5,0x4
    8000e0bc:	f8b40123          	sb	a1,-126(s0)
    8000e0c0:	0047d593          	srli	a1,a5,0x4
    8000e0c4:	28f67e63          	bgeu	a2,a5,8000e360 <__printf+0x608>
    8000e0c8:	00f6f693          	andi	a3,a3,15
    8000e0cc:	00dd86b3          	add	a3,s11,a3
    8000e0d0:	0006c503          	lbu	a0,0(a3)
    8000e0d4:	0087d813          	srli	a6,a5,0x8
    8000e0d8:	0087d69b          	srliw	a3,a5,0x8
    8000e0dc:	f8a401a3          	sb	a0,-125(s0)
    8000e0e0:	28b67663          	bgeu	a2,a1,8000e36c <__printf+0x614>
    8000e0e4:	00f6f693          	andi	a3,a3,15
    8000e0e8:	00dd86b3          	add	a3,s11,a3
    8000e0ec:	0006c583          	lbu	a1,0(a3)
    8000e0f0:	00c7d513          	srli	a0,a5,0xc
    8000e0f4:	00c7d69b          	srliw	a3,a5,0xc
    8000e0f8:	f8b40223          	sb	a1,-124(s0)
    8000e0fc:	29067a63          	bgeu	a2,a6,8000e390 <__printf+0x638>
    8000e100:	00f6f693          	andi	a3,a3,15
    8000e104:	00dd86b3          	add	a3,s11,a3
    8000e108:	0006c583          	lbu	a1,0(a3)
    8000e10c:	0107d813          	srli	a6,a5,0x10
    8000e110:	0107d69b          	srliw	a3,a5,0x10
    8000e114:	f8b402a3          	sb	a1,-123(s0)
    8000e118:	28a67263          	bgeu	a2,a0,8000e39c <__printf+0x644>
    8000e11c:	00f6f693          	andi	a3,a3,15
    8000e120:	00dd86b3          	add	a3,s11,a3
    8000e124:	0006c683          	lbu	a3,0(a3)
    8000e128:	0147d79b          	srliw	a5,a5,0x14
    8000e12c:	f8d40323          	sb	a3,-122(s0)
    8000e130:	21067663          	bgeu	a2,a6,8000e33c <__printf+0x5e4>
    8000e134:	02079793          	slli	a5,a5,0x20
    8000e138:	0207d793          	srli	a5,a5,0x20
    8000e13c:	00fd8db3          	add	s11,s11,a5
    8000e140:	000dc683          	lbu	a3,0(s11)
    8000e144:	00800793          	li	a5,8
    8000e148:	00700c93          	li	s9,7
    8000e14c:	f8d403a3          	sb	a3,-121(s0)
    8000e150:	00075c63          	bgez	a4,8000e168 <__printf+0x410>
    8000e154:	f9040713          	addi	a4,s0,-112
    8000e158:	00f70733          	add	a4,a4,a5
    8000e15c:	02d00693          	li	a3,45
    8000e160:	fed70823          	sb	a3,-16(a4)
    8000e164:	00078c93          	mv	s9,a5
    8000e168:	f8040793          	addi	a5,s0,-128
    8000e16c:	01978cb3          	add	s9,a5,s9
    8000e170:	f7f40d13          	addi	s10,s0,-129
    8000e174:	000cc503          	lbu	a0,0(s9)
    8000e178:	fffc8c93          	addi	s9,s9,-1
    8000e17c:	00000097          	auipc	ra,0x0
    8000e180:	9f8080e7          	jalr	-1544(ra) # 8000db74 <consputc>
    8000e184:	ff9d18e3          	bne	s10,s9,8000e174 <__printf+0x41c>
    8000e188:	0100006f          	j	8000e198 <__printf+0x440>
    8000e18c:	00000097          	auipc	ra,0x0
    8000e190:	9e8080e7          	jalr	-1560(ra) # 8000db74 <consputc>
    8000e194:	000c8493          	mv	s1,s9
    8000e198:	00094503          	lbu	a0,0(s2)
    8000e19c:	c60510e3          	bnez	a0,8000ddfc <__printf+0xa4>
    8000e1a0:	e40c0ee3          	beqz	s8,8000dffc <__printf+0x2a4>
    8000e1a4:	00009517          	auipc	a0,0x9
    8000e1a8:	d7c50513          	addi	a0,a0,-644 # 80016f20 <pr>
    8000e1ac:	00001097          	auipc	ra,0x1
    8000e1b0:	94c080e7          	jalr	-1716(ra) # 8000eaf8 <release>
    8000e1b4:	e49ff06f          	j	8000dffc <__printf+0x2a4>
    8000e1b8:	f7843783          	ld	a5,-136(s0)
    8000e1bc:	03000513          	li	a0,48
    8000e1c0:	01000d13          	li	s10,16
    8000e1c4:	00878713          	addi	a4,a5,8
    8000e1c8:	0007bc83          	ld	s9,0(a5)
    8000e1cc:	f6e43c23          	sd	a4,-136(s0)
    8000e1d0:	00000097          	auipc	ra,0x0
    8000e1d4:	9a4080e7          	jalr	-1628(ra) # 8000db74 <consputc>
    8000e1d8:	07800513          	li	a0,120
    8000e1dc:	00000097          	auipc	ra,0x0
    8000e1e0:	998080e7          	jalr	-1640(ra) # 8000db74 <consputc>
    8000e1e4:	00003d97          	auipc	s11,0x3
    8000e1e8:	22cd8d93          	addi	s11,s11,556 # 80011410 <digits>
    8000e1ec:	03ccd793          	srli	a5,s9,0x3c
    8000e1f0:	00fd87b3          	add	a5,s11,a5
    8000e1f4:	0007c503          	lbu	a0,0(a5)
    8000e1f8:	fffd0d1b          	addiw	s10,s10,-1
    8000e1fc:	004c9c93          	slli	s9,s9,0x4
    8000e200:	00000097          	auipc	ra,0x0
    8000e204:	974080e7          	jalr	-1676(ra) # 8000db74 <consputc>
    8000e208:	fe0d12e3          	bnez	s10,8000e1ec <__printf+0x494>
    8000e20c:	f8dff06f          	j	8000e198 <__printf+0x440>
    8000e210:	f7843783          	ld	a5,-136(s0)
    8000e214:	0007bc83          	ld	s9,0(a5)
    8000e218:	00878793          	addi	a5,a5,8
    8000e21c:	f6f43c23          	sd	a5,-136(s0)
    8000e220:	000c9a63          	bnez	s9,8000e234 <__printf+0x4dc>
    8000e224:	1080006f          	j	8000e32c <__printf+0x5d4>
    8000e228:	001c8c93          	addi	s9,s9,1
    8000e22c:	00000097          	auipc	ra,0x0
    8000e230:	948080e7          	jalr	-1720(ra) # 8000db74 <consputc>
    8000e234:	000cc503          	lbu	a0,0(s9)
    8000e238:	fe0518e3          	bnez	a0,8000e228 <__printf+0x4d0>
    8000e23c:	f5dff06f          	j	8000e198 <__printf+0x440>
    8000e240:	02500513          	li	a0,37
    8000e244:	00000097          	auipc	ra,0x0
    8000e248:	930080e7          	jalr	-1744(ra) # 8000db74 <consputc>
    8000e24c:	000c8513          	mv	a0,s9
    8000e250:	00000097          	auipc	ra,0x0
    8000e254:	924080e7          	jalr	-1756(ra) # 8000db74 <consputc>
    8000e258:	f41ff06f          	j	8000e198 <__printf+0x440>
    8000e25c:	02500513          	li	a0,37
    8000e260:	00000097          	auipc	ra,0x0
    8000e264:	914080e7          	jalr	-1772(ra) # 8000db74 <consputc>
    8000e268:	f31ff06f          	j	8000e198 <__printf+0x440>
    8000e26c:	00030513          	mv	a0,t1
    8000e270:	00000097          	auipc	ra,0x0
    8000e274:	7bc080e7          	jalr	1980(ra) # 8000ea2c <acquire>
    8000e278:	b4dff06f          	j	8000ddc4 <__printf+0x6c>
    8000e27c:	40c0053b          	negw	a0,a2
    8000e280:	00a00713          	li	a4,10
    8000e284:	02e576bb          	remuw	a3,a0,a4
    8000e288:	00003d97          	auipc	s11,0x3
    8000e28c:	188d8d93          	addi	s11,s11,392 # 80011410 <digits>
    8000e290:	ff700593          	li	a1,-9
    8000e294:	02069693          	slli	a3,a3,0x20
    8000e298:	0206d693          	srli	a3,a3,0x20
    8000e29c:	00dd86b3          	add	a3,s11,a3
    8000e2a0:	0006c683          	lbu	a3,0(a3)
    8000e2a4:	02e557bb          	divuw	a5,a0,a4
    8000e2a8:	f8d40023          	sb	a3,-128(s0)
    8000e2ac:	10b65e63          	bge	a2,a1,8000e3c8 <__printf+0x670>
    8000e2b0:	06300593          	li	a1,99
    8000e2b4:	02e7f6bb          	remuw	a3,a5,a4
    8000e2b8:	02069693          	slli	a3,a3,0x20
    8000e2bc:	0206d693          	srli	a3,a3,0x20
    8000e2c0:	00dd86b3          	add	a3,s11,a3
    8000e2c4:	0006c683          	lbu	a3,0(a3)
    8000e2c8:	02e7d73b          	divuw	a4,a5,a4
    8000e2cc:	00200793          	li	a5,2
    8000e2d0:	f8d400a3          	sb	a3,-127(s0)
    8000e2d4:	bca5ece3          	bltu	a1,a0,8000deac <__printf+0x154>
    8000e2d8:	ce5ff06f          	j	8000dfbc <__printf+0x264>
    8000e2dc:	40e007bb          	negw	a5,a4
    8000e2e0:	00003d97          	auipc	s11,0x3
    8000e2e4:	130d8d93          	addi	s11,s11,304 # 80011410 <digits>
    8000e2e8:	00f7f693          	andi	a3,a5,15
    8000e2ec:	00dd86b3          	add	a3,s11,a3
    8000e2f0:	0006c583          	lbu	a1,0(a3)
    8000e2f4:	ff100613          	li	a2,-15
    8000e2f8:	0047d69b          	srliw	a3,a5,0x4
    8000e2fc:	f8b40023          	sb	a1,-128(s0)
    8000e300:	0047d59b          	srliw	a1,a5,0x4
    8000e304:	0ac75e63          	bge	a4,a2,8000e3c0 <__printf+0x668>
    8000e308:	00f6f693          	andi	a3,a3,15
    8000e30c:	00dd86b3          	add	a3,s11,a3
    8000e310:	0006c603          	lbu	a2,0(a3)
    8000e314:	00f00693          	li	a3,15
    8000e318:	0087d79b          	srliw	a5,a5,0x8
    8000e31c:	f8c400a3          	sb	a2,-127(s0)
    8000e320:	d8b6e4e3          	bltu	a3,a1,8000e0a8 <__printf+0x350>
    8000e324:	00200793          	li	a5,2
    8000e328:	e2dff06f          	j	8000e154 <__printf+0x3fc>
    8000e32c:	00003c97          	auipc	s9,0x3
    8000e330:	0c4c8c93          	addi	s9,s9,196 # 800113f0 <CONSOLE_STATUS+0x13e0>
    8000e334:	02800513          	li	a0,40
    8000e338:	ef1ff06f          	j	8000e228 <__printf+0x4d0>
    8000e33c:	00700793          	li	a5,7
    8000e340:	00600c93          	li	s9,6
    8000e344:	e0dff06f          	j	8000e150 <__printf+0x3f8>
    8000e348:	00700793          	li	a5,7
    8000e34c:	00600c93          	li	s9,6
    8000e350:	c69ff06f          	j	8000dfb8 <__printf+0x260>
    8000e354:	00300793          	li	a5,3
    8000e358:	00200c93          	li	s9,2
    8000e35c:	c5dff06f          	j	8000dfb8 <__printf+0x260>
    8000e360:	00300793          	li	a5,3
    8000e364:	00200c93          	li	s9,2
    8000e368:	de9ff06f          	j	8000e150 <__printf+0x3f8>
    8000e36c:	00400793          	li	a5,4
    8000e370:	00300c93          	li	s9,3
    8000e374:	dddff06f          	j	8000e150 <__printf+0x3f8>
    8000e378:	00400793          	li	a5,4
    8000e37c:	00300c93          	li	s9,3
    8000e380:	c39ff06f          	j	8000dfb8 <__printf+0x260>
    8000e384:	00500793          	li	a5,5
    8000e388:	00400c93          	li	s9,4
    8000e38c:	c2dff06f          	j	8000dfb8 <__printf+0x260>
    8000e390:	00500793          	li	a5,5
    8000e394:	00400c93          	li	s9,4
    8000e398:	db9ff06f          	j	8000e150 <__printf+0x3f8>
    8000e39c:	00600793          	li	a5,6
    8000e3a0:	00500c93          	li	s9,5
    8000e3a4:	dadff06f          	j	8000e150 <__printf+0x3f8>
    8000e3a8:	00600793          	li	a5,6
    8000e3ac:	00500c93          	li	s9,5
    8000e3b0:	c09ff06f          	j	8000dfb8 <__printf+0x260>
    8000e3b4:	00800793          	li	a5,8
    8000e3b8:	00700c93          	li	s9,7
    8000e3bc:	bfdff06f          	j	8000dfb8 <__printf+0x260>
    8000e3c0:	00100793          	li	a5,1
    8000e3c4:	d91ff06f          	j	8000e154 <__printf+0x3fc>
    8000e3c8:	00100793          	li	a5,1
    8000e3cc:	bf1ff06f          	j	8000dfbc <__printf+0x264>
    8000e3d0:	00900793          	li	a5,9
    8000e3d4:	00800c93          	li	s9,8
    8000e3d8:	be1ff06f          	j	8000dfb8 <__printf+0x260>
    8000e3dc:	00003517          	auipc	a0,0x3
    8000e3e0:	01c50513          	addi	a0,a0,28 # 800113f8 <CONSOLE_STATUS+0x13e8>
    8000e3e4:	00000097          	auipc	ra,0x0
    8000e3e8:	918080e7          	jalr	-1768(ra) # 8000dcfc <panic>

000000008000e3ec <printfinit>:
    8000e3ec:	fe010113          	addi	sp,sp,-32
    8000e3f0:	00813823          	sd	s0,16(sp)
    8000e3f4:	00913423          	sd	s1,8(sp)
    8000e3f8:	00113c23          	sd	ra,24(sp)
    8000e3fc:	02010413          	addi	s0,sp,32
    8000e400:	00009497          	auipc	s1,0x9
    8000e404:	b2048493          	addi	s1,s1,-1248 # 80016f20 <pr>
    8000e408:	00048513          	mv	a0,s1
    8000e40c:	00003597          	auipc	a1,0x3
    8000e410:	ffc58593          	addi	a1,a1,-4 # 80011408 <CONSOLE_STATUS+0x13f8>
    8000e414:	00000097          	auipc	ra,0x0
    8000e418:	5f4080e7          	jalr	1524(ra) # 8000ea08 <initlock>
    8000e41c:	01813083          	ld	ra,24(sp)
    8000e420:	01013403          	ld	s0,16(sp)
    8000e424:	0004ac23          	sw	zero,24(s1)
    8000e428:	00813483          	ld	s1,8(sp)
    8000e42c:	02010113          	addi	sp,sp,32
    8000e430:	00008067          	ret

000000008000e434 <uartinit>:
    8000e434:	ff010113          	addi	sp,sp,-16
    8000e438:	00813423          	sd	s0,8(sp)
    8000e43c:	01010413          	addi	s0,sp,16
    8000e440:	100007b7          	lui	a5,0x10000
    8000e444:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    8000e448:	f8000713          	li	a4,-128
    8000e44c:	00e781a3          	sb	a4,3(a5)
    8000e450:	00300713          	li	a4,3
    8000e454:	00e78023          	sb	a4,0(a5)
    8000e458:	000780a3          	sb	zero,1(a5)
    8000e45c:	00e781a3          	sb	a4,3(a5)
    8000e460:	00700693          	li	a3,7
    8000e464:	00d78123          	sb	a3,2(a5)
    8000e468:	00e780a3          	sb	a4,1(a5)
    8000e46c:	00813403          	ld	s0,8(sp)
    8000e470:	01010113          	addi	sp,sp,16
    8000e474:	00008067          	ret

000000008000e478 <uartputc>:
    8000e478:	00007797          	auipc	a5,0x7
    8000e47c:	5907a783          	lw	a5,1424(a5) # 80015a08 <panicked>
    8000e480:	00078463          	beqz	a5,8000e488 <uartputc+0x10>
    8000e484:	0000006f          	j	8000e484 <uartputc+0xc>
    8000e488:	fd010113          	addi	sp,sp,-48
    8000e48c:	02813023          	sd	s0,32(sp)
    8000e490:	00913c23          	sd	s1,24(sp)
    8000e494:	01213823          	sd	s2,16(sp)
    8000e498:	01313423          	sd	s3,8(sp)
    8000e49c:	02113423          	sd	ra,40(sp)
    8000e4a0:	03010413          	addi	s0,sp,48
    8000e4a4:	00007917          	auipc	s2,0x7
    8000e4a8:	56c90913          	addi	s2,s2,1388 # 80015a10 <uart_tx_r>
    8000e4ac:	00093783          	ld	a5,0(s2)
    8000e4b0:	00007497          	auipc	s1,0x7
    8000e4b4:	56848493          	addi	s1,s1,1384 # 80015a18 <uart_tx_w>
    8000e4b8:	0004b703          	ld	a4,0(s1)
    8000e4bc:	02078693          	addi	a3,a5,32
    8000e4c0:	00050993          	mv	s3,a0
    8000e4c4:	02e69c63          	bne	a3,a4,8000e4fc <uartputc+0x84>
    8000e4c8:	00001097          	auipc	ra,0x1
    8000e4cc:	834080e7          	jalr	-1996(ra) # 8000ecfc <push_on>
    8000e4d0:	00093783          	ld	a5,0(s2)
    8000e4d4:	0004b703          	ld	a4,0(s1)
    8000e4d8:	02078793          	addi	a5,a5,32
    8000e4dc:	00e79463          	bne	a5,a4,8000e4e4 <uartputc+0x6c>
    8000e4e0:	0000006f          	j	8000e4e0 <uartputc+0x68>
    8000e4e4:	00001097          	auipc	ra,0x1
    8000e4e8:	88c080e7          	jalr	-1908(ra) # 8000ed70 <pop_on>
    8000e4ec:	00093783          	ld	a5,0(s2)
    8000e4f0:	0004b703          	ld	a4,0(s1)
    8000e4f4:	02078693          	addi	a3,a5,32
    8000e4f8:	fce688e3          	beq	a3,a4,8000e4c8 <uartputc+0x50>
    8000e4fc:	01f77693          	andi	a3,a4,31
    8000e500:	00009597          	auipc	a1,0x9
    8000e504:	a4058593          	addi	a1,a1,-1472 # 80016f40 <uart_tx_buf>
    8000e508:	00d586b3          	add	a3,a1,a3
    8000e50c:	00170713          	addi	a4,a4,1
    8000e510:	01368023          	sb	s3,0(a3)
    8000e514:	00e4b023          	sd	a4,0(s1)
    8000e518:	10000637          	lui	a2,0x10000
    8000e51c:	02f71063          	bne	a4,a5,8000e53c <uartputc+0xc4>
    8000e520:	0340006f          	j	8000e554 <uartputc+0xdc>
    8000e524:	00074703          	lbu	a4,0(a4)
    8000e528:	00f93023          	sd	a5,0(s2)
    8000e52c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    8000e530:	00093783          	ld	a5,0(s2)
    8000e534:	0004b703          	ld	a4,0(s1)
    8000e538:	00f70e63          	beq	a4,a5,8000e554 <uartputc+0xdc>
    8000e53c:	00564683          	lbu	a3,5(a2)
    8000e540:	01f7f713          	andi	a4,a5,31
    8000e544:	00e58733          	add	a4,a1,a4
    8000e548:	0206f693          	andi	a3,a3,32
    8000e54c:	00178793          	addi	a5,a5,1
    8000e550:	fc069ae3          	bnez	a3,8000e524 <uartputc+0xac>
    8000e554:	02813083          	ld	ra,40(sp)
    8000e558:	02013403          	ld	s0,32(sp)
    8000e55c:	01813483          	ld	s1,24(sp)
    8000e560:	01013903          	ld	s2,16(sp)
    8000e564:	00813983          	ld	s3,8(sp)
    8000e568:	03010113          	addi	sp,sp,48
    8000e56c:	00008067          	ret

000000008000e570 <uartputc_sync>:
    8000e570:	ff010113          	addi	sp,sp,-16
    8000e574:	00813423          	sd	s0,8(sp)
    8000e578:	01010413          	addi	s0,sp,16
    8000e57c:	00007717          	auipc	a4,0x7
    8000e580:	48c72703          	lw	a4,1164(a4) # 80015a08 <panicked>
    8000e584:	02071663          	bnez	a4,8000e5b0 <uartputc_sync+0x40>
    8000e588:	00050793          	mv	a5,a0
    8000e58c:	100006b7          	lui	a3,0x10000
    8000e590:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    8000e594:	02077713          	andi	a4,a4,32
    8000e598:	fe070ce3          	beqz	a4,8000e590 <uartputc_sync+0x20>
    8000e59c:	0ff7f793          	andi	a5,a5,255
    8000e5a0:	00f68023          	sb	a5,0(a3)
    8000e5a4:	00813403          	ld	s0,8(sp)
    8000e5a8:	01010113          	addi	sp,sp,16
    8000e5ac:	00008067          	ret
    8000e5b0:	0000006f          	j	8000e5b0 <uartputc_sync+0x40>

000000008000e5b4 <uartstart>:
    8000e5b4:	ff010113          	addi	sp,sp,-16
    8000e5b8:	00813423          	sd	s0,8(sp)
    8000e5bc:	01010413          	addi	s0,sp,16
    8000e5c0:	00007617          	auipc	a2,0x7
    8000e5c4:	45060613          	addi	a2,a2,1104 # 80015a10 <uart_tx_r>
    8000e5c8:	00007517          	auipc	a0,0x7
    8000e5cc:	45050513          	addi	a0,a0,1104 # 80015a18 <uart_tx_w>
    8000e5d0:	00063783          	ld	a5,0(a2)
    8000e5d4:	00053703          	ld	a4,0(a0)
    8000e5d8:	04f70263          	beq	a4,a5,8000e61c <uartstart+0x68>
    8000e5dc:	100005b7          	lui	a1,0x10000
    8000e5e0:	00009817          	auipc	a6,0x9
    8000e5e4:	96080813          	addi	a6,a6,-1696 # 80016f40 <uart_tx_buf>
    8000e5e8:	01c0006f          	j	8000e604 <uartstart+0x50>
    8000e5ec:	0006c703          	lbu	a4,0(a3)
    8000e5f0:	00f63023          	sd	a5,0(a2)
    8000e5f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000e5f8:	00063783          	ld	a5,0(a2)
    8000e5fc:	00053703          	ld	a4,0(a0)
    8000e600:	00f70e63          	beq	a4,a5,8000e61c <uartstart+0x68>
    8000e604:	01f7f713          	andi	a4,a5,31
    8000e608:	00e806b3          	add	a3,a6,a4
    8000e60c:	0055c703          	lbu	a4,5(a1)
    8000e610:	00178793          	addi	a5,a5,1
    8000e614:	02077713          	andi	a4,a4,32
    8000e618:	fc071ae3          	bnez	a4,8000e5ec <uartstart+0x38>
    8000e61c:	00813403          	ld	s0,8(sp)
    8000e620:	01010113          	addi	sp,sp,16
    8000e624:	00008067          	ret

000000008000e628 <uartgetc>:
    8000e628:	ff010113          	addi	sp,sp,-16
    8000e62c:	00813423          	sd	s0,8(sp)
    8000e630:	01010413          	addi	s0,sp,16
    8000e634:	10000737          	lui	a4,0x10000
    8000e638:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000e63c:	0017f793          	andi	a5,a5,1
    8000e640:	00078c63          	beqz	a5,8000e658 <uartgetc+0x30>
    8000e644:	00074503          	lbu	a0,0(a4)
    8000e648:	0ff57513          	andi	a0,a0,255
    8000e64c:	00813403          	ld	s0,8(sp)
    8000e650:	01010113          	addi	sp,sp,16
    8000e654:	00008067          	ret
    8000e658:	fff00513          	li	a0,-1
    8000e65c:	ff1ff06f          	j	8000e64c <uartgetc+0x24>

000000008000e660 <uartintr>:
    8000e660:	100007b7          	lui	a5,0x10000
    8000e664:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    8000e668:	0017f793          	andi	a5,a5,1
    8000e66c:	0a078463          	beqz	a5,8000e714 <uartintr+0xb4>
    8000e670:	fe010113          	addi	sp,sp,-32
    8000e674:	00813823          	sd	s0,16(sp)
    8000e678:	00913423          	sd	s1,8(sp)
    8000e67c:	00113c23          	sd	ra,24(sp)
    8000e680:	02010413          	addi	s0,sp,32
    8000e684:	100004b7          	lui	s1,0x10000
    8000e688:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000e68c:	0ff57513          	andi	a0,a0,255
    8000e690:	fffff097          	auipc	ra,0xfffff
    8000e694:	534080e7          	jalr	1332(ra) # 8000dbc4 <consoleintr>
    8000e698:	0054c783          	lbu	a5,5(s1)
    8000e69c:	0017f793          	andi	a5,a5,1
    8000e6a0:	fe0794e3          	bnez	a5,8000e688 <uartintr+0x28>
    8000e6a4:	00007617          	auipc	a2,0x7
    8000e6a8:	36c60613          	addi	a2,a2,876 # 80015a10 <uart_tx_r>
    8000e6ac:	00007517          	auipc	a0,0x7
    8000e6b0:	36c50513          	addi	a0,a0,876 # 80015a18 <uart_tx_w>
    8000e6b4:	00063783          	ld	a5,0(a2)
    8000e6b8:	00053703          	ld	a4,0(a0)
    8000e6bc:	04f70263          	beq	a4,a5,8000e700 <uartintr+0xa0>
    8000e6c0:	100005b7          	lui	a1,0x10000
    8000e6c4:	00009817          	auipc	a6,0x9
    8000e6c8:	87c80813          	addi	a6,a6,-1924 # 80016f40 <uart_tx_buf>
    8000e6cc:	01c0006f          	j	8000e6e8 <uartintr+0x88>
    8000e6d0:	0006c703          	lbu	a4,0(a3)
    8000e6d4:	00f63023          	sd	a5,0(a2)
    8000e6d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000e6dc:	00063783          	ld	a5,0(a2)
    8000e6e0:	00053703          	ld	a4,0(a0)
    8000e6e4:	00f70e63          	beq	a4,a5,8000e700 <uartintr+0xa0>
    8000e6e8:	01f7f713          	andi	a4,a5,31
    8000e6ec:	00e806b3          	add	a3,a6,a4
    8000e6f0:	0055c703          	lbu	a4,5(a1)
    8000e6f4:	00178793          	addi	a5,a5,1
    8000e6f8:	02077713          	andi	a4,a4,32
    8000e6fc:	fc071ae3          	bnez	a4,8000e6d0 <uartintr+0x70>
    8000e700:	01813083          	ld	ra,24(sp)
    8000e704:	01013403          	ld	s0,16(sp)
    8000e708:	00813483          	ld	s1,8(sp)
    8000e70c:	02010113          	addi	sp,sp,32
    8000e710:	00008067          	ret
    8000e714:	00007617          	auipc	a2,0x7
    8000e718:	2fc60613          	addi	a2,a2,764 # 80015a10 <uart_tx_r>
    8000e71c:	00007517          	auipc	a0,0x7
    8000e720:	2fc50513          	addi	a0,a0,764 # 80015a18 <uart_tx_w>
    8000e724:	00063783          	ld	a5,0(a2)
    8000e728:	00053703          	ld	a4,0(a0)
    8000e72c:	04f70263          	beq	a4,a5,8000e770 <uartintr+0x110>
    8000e730:	100005b7          	lui	a1,0x10000
    8000e734:	00009817          	auipc	a6,0x9
    8000e738:	80c80813          	addi	a6,a6,-2036 # 80016f40 <uart_tx_buf>
    8000e73c:	01c0006f          	j	8000e758 <uartintr+0xf8>
    8000e740:	0006c703          	lbu	a4,0(a3)
    8000e744:	00f63023          	sd	a5,0(a2)
    8000e748:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000e74c:	00063783          	ld	a5,0(a2)
    8000e750:	00053703          	ld	a4,0(a0)
    8000e754:	02f70063          	beq	a4,a5,8000e774 <uartintr+0x114>
    8000e758:	01f7f713          	andi	a4,a5,31
    8000e75c:	00e806b3          	add	a3,a6,a4
    8000e760:	0055c703          	lbu	a4,5(a1)
    8000e764:	00178793          	addi	a5,a5,1
    8000e768:	02077713          	andi	a4,a4,32
    8000e76c:	fc071ae3          	bnez	a4,8000e740 <uartintr+0xe0>
    8000e770:	00008067          	ret
    8000e774:	00008067          	ret

000000008000e778 <kinit>:
    8000e778:	fc010113          	addi	sp,sp,-64
    8000e77c:	02913423          	sd	s1,40(sp)
    8000e780:	fffff7b7          	lui	a5,0xfffff
    8000e784:	00009497          	auipc	s1,0x9
    8000e788:	7db48493          	addi	s1,s1,2011 # 80017f5f <end+0xfff>
    8000e78c:	02813823          	sd	s0,48(sp)
    8000e790:	01313c23          	sd	s3,24(sp)
    8000e794:	00f4f4b3          	and	s1,s1,a5
    8000e798:	02113c23          	sd	ra,56(sp)
    8000e79c:	03213023          	sd	s2,32(sp)
    8000e7a0:	01413823          	sd	s4,16(sp)
    8000e7a4:	01513423          	sd	s5,8(sp)
    8000e7a8:	04010413          	addi	s0,sp,64
    8000e7ac:	000017b7          	lui	a5,0x1
    8000e7b0:	01100993          	li	s3,17
    8000e7b4:	00f487b3          	add	a5,s1,a5
    8000e7b8:	01b99993          	slli	s3,s3,0x1b
    8000e7bc:	06f9e063          	bltu	s3,a5,8000e81c <kinit+0xa4>
    8000e7c0:	00008a97          	auipc	s5,0x8
    8000e7c4:	7a0a8a93          	addi	s5,s5,1952 # 80016f60 <end>
    8000e7c8:	0754ec63          	bltu	s1,s5,8000e840 <kinit+0xc8>
    8000e7cc:	0734fa63          	bgeu	s1,s3,8000e840 <kinit+0xc8>
    8000e7d0:	00088a37          	lui	s4,0x88
    8000e7d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    8000e7d8:	00007917          	auipc	s2,0x7
    8000e7dc:	24890913          	addi	s2,s2,584 # 80015a20 <kmem>
    8000e7e0:	00ca1a13          	slli	s4,s4,0xc
    8000e7e4:	0140006f          	j	8000e7f8 <kinit+0x80>
    8000e7e8:	000017b7          	lui	a5,0x1
    8000e7ec:	00f484b3          	add	s1,s1,a5
    8000e7f0:	0554e863          	bltu	s1,s5,8000e840 <kinit+0xc8>
    8000e7f4:	0534f663          	bgeu	s1,s3,8000e840 <kinit+0xc8>
    8000e7f8:	00001637          	lui	a2,0x1
    8000e7fc:	00100593          	li	a1,1
    8000e800:	00048513          	mv	a0,s1
    8000e804:	00000097          	auipc	ra,0x0
    8000e808:	5e4080e7          	jalr	1508(ra) # 8000ede8 <__memset>
    8000e80c:	00093783          	ld	a5,0(s2)
    8000e810:	00f4b023          	sd	a5,0(s1)
    8000e814:	00993023          	sd	s1,0(s2)
    8000e818:	fd4498e3          	bne	s1,s4,8000e7e8 <kinit+0x70>
    8000e81c:	03813083          	ld	ra,56(sp)
    8000e820:	03013403          	ld	s0,48(sp)
    8000e824:	02813483          	ld	s1,40(sp)
    8000e828:	02013903          	ld	s2,32(sp)
    8000e82c:	01813983          	ld	s3,24(sp)
    8000e830:	01013a03          	ld	s4,16(sp)
    8000e834:	00813a83          	ld	s5,8(sp)
    8000e838:	04010113          	addi	sp,sp,64
    8000e83c:	00008067          	ret
    8000e840:	00003517          	auipc	a0,0x3
    8000e844:	be850513          	addi	a0,a0,-1048 # 80011428 <digits+0x18>
    8000e848:	fffff097          	auipc	ra,0xfffff
    8000e84c:	4b4080e7          	jalr	1204(ra) # 8000dcfc <panic>

000000008000e850 <freerange>:
    8000e850:	fc010113          	addi	sp,sp,-64
    8000e854:	000017b7          	lui	a5,0x1
    8000e858:	02913423          	sd	s1,40(sp)
    8000e85c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    8000e860:	009504b3          	add	s1,a0,s1
    8000e864:	fffff537          	lui	a0,0xfffff
    8000e868:	02813823          	sd	s0,48(sp)
    8000e86c:	02113c23          	sd	ra,56(sp)
    8000e870:	03213023          	sd	s2,32(sp)
    8000e874:	01313c23          	sd	s3,24(sp)
    8000e878:	01413823          	sd	s4,16(sp)
    8000e87c:	01513423          	sd	s5,8(sp)
    8000e880:	01613023          	sd	s6,0(sp)
    8000e884:	04010413          	addi	s0,sp,64
    8000e888:	00a4f4b3          	and	s1,s1,a0
    8000e88c:	00f487b3          	add	a5,s1,a5
    8000e890:	06f5e463          	bltu	a1,a5,8000e8f8 <freerange+0xa8>
    8000e894:	00008a97          	auipc	s5,0x8
    8000e898:	6cca8a93          	addi	s5,s5,1740 # 80016f60 <end>
    8000e89c:	0954e263          	bltu	s1,s5,8000e920 <freerange+0xd0>
    8000e8a0:	01100993          	li	s3,17
    8000e8a4:	01b99993          	slli	s3,s3,0x1b
    8000e8a8:	0734fc63          	bgeu	s1,s3,8000e920 <freerange+0xd0>
    8000e8ac:	00058a13          	mv	s4,a1
    8000e8b0:	00007917          	auipc	s2,0x7
    8000e8b4:	17090913          	addi	s2,s2,368 # 80015a20 <kmem>
    8000e8b8:	00002b37          	lui	s6,0x2
    8000e8bc:	0140006f          	j	8000e8d0 <freerange+0x80>
    8000e8c0:	000017b7          	lui	a5,0x1
    8000e8c4:	00f484b3          	add	s1,s1,a5
    8000e8c8:	0554ec63          	bltu	s1,s5,8000e920 <freerange+0xd0>
    8000e8cc:	0534fa63          	bgeu	s1,s3,8000e920 <freerange+0xd0>
    8000e8d0:	00001637          	lui	a2,0x1
    8000e8d4:	00100593          	li	a1,1
    8000e8d8:	00048513          	mv	a0,s1
    8000e8dc:	00000097          	auipc	ra,0x0
    8000e8e0:	50c080e7          	jalr	1292(ra) # 8000ede8 <__memset>
    8000e8e4:	00093703          	ld	a4,0(s2)
    8000e8e8:	016487b3          	add	a5,s1,s6
    8000e8ec:	00e4b023          	sd	a4,0(s1)
    8000e8f0:	00993023          	sd	s1,0(s2)
    8000e8f4:	fcfa76e3          	bgeu	s4,a5,8000e8c0 <freerange+0x70>
    8000e8f8:	03813083          	ld	ra,56(sp)
    8000e8fc:	03013403          	ld	s0,48(sp)
    8000e900:	02813483          	ld	s1,40(sp)
    8000e904:	02013903          	ld	s2,32(sp)
    8000e908:	01813983          	ld	s3,24(sp)
    8000e90c:	01013a03          	ld	s4,16(sp)
    8000e910:	00813a83          	ld	s5,8(sp)
    8000e914:	00013b03          	ld	s6,0(sp)
    8000e918:	04010113          	addi	sp,sp,64
    8000e91c:	00008067          	ret
    8000e920:	00003517          	auipc	a0,0x3
    8000e924:	b0850513          	addi	a0,a0,-1272 # 80011428 <digits+0x18>
    8000e928:	fffff097          	auipc	ra,0xfffff
    8000e92c:	3d4080e7          	jalr	980(ra) # 8000dcfc <panic>

000000008000e930 <kfree>:
    8000e930:	fe010113          	addi	sp,sp,-32
    8000e934:	00813823          	sd	s0,16(sp)
    8000e938:	00113c23          	sd	ra,24(sp)
    8000e93c:	00913423          	sd	s1,8(sp)
    8000e940:	02010413          	addi	s0,sp,32
    8000e944:	03451793          	slli	a5,a0,0x34
    8000e948:	04079c63          	bnez	a5,8000e9a0 <kfree+0x70>
    8000e94c:	00008797          	auipc	a5,0x8
    8000e950:	61478793          	addi	a5,a5,1556 # 80016f60 <end>
    8000e954:	00050493          	mv	s1,a0
    8000e958:	04f56463          	bltu	a0,a5,8000e9a0 <kfree+0x70>
    8000e95c:	01100793          	li	a5,17
    8000e960:	01b79793          	slli	a5,a5,0x1b
    8000e964:	02f57e63          	bgeu	a0,a5,8000e9a0 <kfree+0x70>
    8000e968:	00001637          	lui	a2,0x1
    8000e96c:	00100593          	li	a1,1
    8000e970:	00000097          	auipc	ra,0x0
    8000e974:	478080e7          	jalr	1144(ra) # 8000ede8 <__memset>
    8000e978:	00007797          	auipc	a5,0x7
    8000e97c:	0a878793          	addi	a5,a5,168 # 80015a20 <kmem>
    8000e980:	0007b703          	ld	a4,0(a5)
    8000e984:	01813083          	ld	ra,24(sp)
    8000e988:	01013403          	ld	s0,16(sp)
    8000e98c:	00e4b023          	sd	a4,0(s1)
    8000e990:	0097b023          	sd	s1,0(a5)
    8000e994:	00813483          	ld	s1,8(sp)
    8000e998:	02010113          	addi	sp,sp,32
    8000e99c:	00008067          	ret
    8000e9a0:	00003517          	auipc	a0,0x3
    8000e9a4:	a8850513          	addi	a0,a0,-1400 # 80011428 <digits+0x18>
    8000e9a8:	fffff097          	auipc	ra,0xfffff
    8000e9ac:	354080e7          	jalr	852(ra) # 8000dcfc <panic>

000000008000e9b0 <kalloc>:
    8000e9b0:	fe010113          	addi	sp,sp,-32
    8000e9b4:	00813823          	sd	s0,16(sp)
    8000e9b8:	00913423          	sd	s1,8(sp)
    8000e9bc:	00113c23          	sd	ra,24(sp)
    8000e9c0:	02010413          	addi	s0,sp,32
    8000e9c4:	00007797          	auipc	a5,0x7
    8000e9c8:	05c78793          	addi	a5,a5,92 # 80015a20 <kmem>
    8000e9cc:	0007b483          	ld	s1,0(a5)
    8000e9d0:	02048063          	beqz	s1,8000e9f0 <kalloc+0x40>
    8000e9d4:	0004b703          	ld	a4,0(s1)
    8000e9d8:	00001637          	lui	a2,0x1
    8000e9dc:	00500593          	li	a1,5
    8000e9e0:	00048513          	mv	a0,s1
    8000e9e4:	00e7b023          	sd	a4,0(a5)
    8000e9e8:	00000097          	auipc	ra,0x0
    8000e9ec:	400080e7          	jalr	1024(ra) # 8000ede8 <__memset>
    8000e9f0:	01813083          	ld	ra,24(sp)
    8000e9f4:	01013403          	ld	s0,16(sp)
    8000e9f8:	00048513          	mv	a0,s1
    8000e9fc:	00813483          	ld	s1,8(sp)
    8000ea00:	02010113          	addi	sp,sp,32
    8000ea04:	00008067          	ret

000000008000ea08 <initlock>:
    8000ea08:	ff010113          	addi	sp,sp,-16
    8000ea0c:	00813423          	sd	s0,8(sp)
    8000ea10:	01010413          	addi	s0,sp,16
    8000ea14:	00813403          	ld	s0,8(sp)
    8000ea18:	00b53423          	sd	a1,8(a0)
    8000ea1c:	00052023          	sw	zero,0(a0)
    8000ea20:	00053823          	sd	zero,16(a0)
    8000ea24:	01010113          	addi	sp,sp,16
    8000ea28:	00008067          	ret

000000008000ea2c <acquire>:
    8000ea2c:	fe010113          	addi	sp,sp,-32
    8000ea30:	00813823          	sd	s0,16(sp)
    8000ea34:	00913423          	sd	s1,8(sp)
    8000ea38:	00113c23          	sd	ra,24(sp)
    8000ea3c:	01213023          	sd	s2,0(sp)
    8000ea40:	02010413          	addi	s0,sp,32
    8000ea44:	00050493          	mv	s1,a0
    8000ea48:	10002973          	csrr	s2,sstatus
    8000ea4c:	100027f3          	csrr	a5,sstatus
    8000ea50:	ffd7f793          	andi	a5,a5,-3
    8000ea54:	10079073          	csrw	sstatus,a5
    8000ea58:	fffff097          	auipc	ra,0xfffff
    8000ea5c:	8e4080e7          	jalr	-1820(ra) # 8000d33c <mycpu>
    8000ea60:	07852783          	lw	a5,120(a0)
    8000ea64:	06078e63          	beqz	a5,8000eae0 <acquire+0xb4>
    8000ea68:	fffff097          	auipc	ra,0xfffff
    8000ea6c:	8d4080e7          	jalr	-1836(ra) # 8000d33c <mycpu>
    8000ea70:	07852783          	lw	a5,120(a0)
    8000ea74:	0004a703          	lw	a4,0(s1)
    8000ea78:	0017879b          	addiw	a5,a5,1
    8000ea7c:	06f52c23          	sw	a5,120(a0)
    8000ea80:	04071063          	bnez	a4,8000eac0 <acquire+0x94>
    8000ea84:	00100713          	li	a4,1
    8000ea88:	00070793          	mv	a5,a4
    8000ea8c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    8000ea90:	0007879b          	sext.w	a5,a5
    8000ea94:	fe079ae3          	bnez	a5,8000ea88 <acquire+0x5c>
    8000ea98:	0ff0000f          	fence
    8000ea9c:	fffff097          	auipc	ra,0xfffff
    8000eaa0:	8a0080e7          	jalr	-1888(ra) # 8000d33c <mycpu>
    8000eaa4:	01813083          	ld	ra,24(sp)
    8000eaa8:	01013403          	ld	s0,16(sp)
    8000eaac:	00a4b823          	sd	a0,16(s1)
    8000eab0:	00013903          	ld	s2,0(sp)
    8000eab4:	00813483          	ld	s1,8(sp)
    8000eab8:	02010113          	addi	sp,sp,32
    8000eabc:	00008067          	ret
    8000eac0:	0104b903          	ld	s2,16(s1)
    8000eac4:	fffff097          	auipc	ra,0xfffff
    8000eac8:	878080e7          	jalr	-1928(ra) # 8000d33c <mycpu>
    8000eacc:	faa91ce3          	bne	s2,a0,8000ea84 <acquire+0x58>
    8000ead0:	00003517          	auipc	a0,0x3
    8000ead4:	96050513          	addi	a0,a0,-1696 # 80011430 <digits+0x20>
    8000ead8:	fffff097          	auipc	ra,0xfffff
    8000eadc:	224080e7          	jalr	548(ra) # 8000dcfc <panic>
    8000eae0:	00195913          	srli	s2,s2,0x1
    8000eae4:	fffff097          	auipc	ra,0xfffff
    8000eae8:	858080e7          	jalr	-1960(ra) # 8000d33c <mycpu>
    8000eaec:	00197913          	andi	s2,s2,1
    8000eaf0:	07252e23          	sw	s2,124(a0)
    8000eaf4:	f75ff06f          	j	8000ea68 <acquire+0x3c>

000000008000eaf8 <release>:
    8000eaf8:	fe010113          	addi	sp,sp,-32
    8000eafc:	00813823          	sd	s0,16(sp)
    8000eb00:	00113c23          	sd	ra,24(sp)
    8000eb04:	00913423          	sd	s1,8(sp)
    8000eb08:	01213023          	sd	s2,0(sp)
    8000eb0c:	02010413          	addi	s0,sp,32
    8000eb10:	00052783          	lw	a5,0(a0)
    8000eb14:	00079a63          	bnez	a5,8000eb28 <release+0x30>
    8000eb18:	00003517          	auipc	a0,0x3
    8000eb1c:	92050513          	addi	a0,a0,-1760 # 80011438 <digits+0x28>
    8000eb20:	fffff097          	auipc	ra,0xfffff
    8000eb24:	1dc080e7          	jalr	476(ra) # 8000dcfc <panic>
    8000eb28:	01053903          	ld	s2,16(a0)
    8000eb2c:	00050493          	mv	s1,a0
    8000eb30:	fffff097          	auipc	ra,0xfffff
    8000eb34:	80c080e7          	jalr	-2036(ra) # 8000d33c <mycpu>
    8000eb38:	fea910e3          	bne	s2,a0,8000eb18 <release+0x20>
    8000eb3c:	0004b823          	sd	zero,16(s1)
    8000eb40:	0ff0000f          	fence
    8000eb44:	0f50000f          	fence	iorw,ow
    8000eb48:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000eb4c:	ffffe097          	auipc	ra,0xffffe
    8000eb50:	7f0080e7          	jalr	2032(ra) # 8000d33c <mycpu>
    8000eb54:	100027f3          	csrr	a5,sstatus
    8000eb58:	0027f793          	andi	a5,a5,2
    8000eb5c:	04079a63          	bnez	a5,8000ebb0 <release+0xb8>
    8000eb60:	07852783          	lw	a5,120(a0)
    8000eb64:	02f05e63          	blez	a5,8000eba0 <release+0xa8>
    8000eb68:	fff7871b          	addiw	a4,a5,-1
    8000eb6c:	06e52c23          	sw	a4,120(a0)
    8000eb70:	00071c63          	bnez	a4,8000eb88 <release+0x90>
    8000eb74:	07c52783          	lw	a5,124(a0)
    8000eb78:	00078863          	beqz	a5,8000eb88 <release+0x90>
    8000eb7c:	100027f3          	csrr	a5,sstatus
    8000eb80:	0027e793          	ori	a5,a5,2
    8000eb84:	10079073          	csrw	sstatus,a5
    8000eb88:	01813083          	ld	ra,24(sp)
    8000eb8c:	01013403          	ld	s0,16(sp)
    8000eb90:	00813483          	ld	s1,8(sp)
    8000eb94:	00013903          	ld	s2,0(sp)
    8000eb98:	02010113          	addi	sp,sp,32
    8000eb9c:	00008067          	ret
    8000eba0:	00003517          	auipc	a0,0x3
    8000eba4:	8b850513          	addi	a0,a0,-1864 # 80011458 <digits+0x48>
    8000eba8:	fffff097          	auipc	ra,0xfffff
    8000ebac:	154080e7          	jalr	340(ra) # 8000dcfc <panic>
    8000ebb0:	00003517          	auipc	a0,0x3
    8000ebb4:	89050513          	addi	a0,a0,-1904 # 80011440 <digits+0x30>
    8000ebb8:	fffff097          	auipc	ra,0xfffff
    8000ebbc:	144080e7          	jalr	324(ra) # 8000dcfc <panic>

000000008000ebc0 <holding>:
    8000ebc0:	00052783          	lw	a5,0(a0)
    8000ebc4:	00079663          	bnez	a5,8000ebd0 <holding+0x10>
    8000ebc8:	00000513          	li	a0,0
    8000ebcc:	00008067          	ret
    8000ebd0:	fe010113          	addi	sp,sp,-32
    8000ebd4:	00813823          	sd	s0,16(sp)
    8000ebd8:	00913423          	sd	s1,8(sp)
    8000ebdc:	00113c23          	sd	ra,24(sp)
    8000ebe0:	02010413          	addi	s0,sp,32
    8000ebe4:	01053483          	ld	s1,16(a0)
    8000ebe8:	ffffe097          	auipc	ra,0xffffe
    8000ebec:	754080e7          	jalr	1876(ra) # 8000d33c <mycpu>
    8000ebf0:	01813083          	ld	ra,24(sp)
    8000ebf4:	01013403          	ld	s0,16(sp)
    8000ebf8:	40a48533          	sub	a0,s1,a0
    8000ebfc:	00153513          	seqz	a0,a0
    8000ec00:	00813483          	ld	s1,8(sp)
    8000ec04:	02010113          	addi	sp,sp,32
    8000ec08:	00008067          	ret

000000008000ec0c <push_off>:
    8000ec0c:	fe010113          	addi	sp,sp,-32
    8000ec10:	00813823          	sd	s0,16(sp)
    8000ec14:	00113c23          	sd	ra,24(sp)
    8000ec18:	00913423          	sd	s1,8(sp)
    8000ec1c:	02010413          	addi	s0,sp,32
    8000ec20:	100024f3          	csrr	s1,sstatus
    8000ec24:	100027f3          	csrr	a5,sstatus
    8000ec28:	ffd7f793          	andi	a5,a5,-3
    8000ec2c:	10079073          	csrw	sstatus,a5
    8000ec30:	ffffe097          	auipc	ra,0xffffe
    8000ec34:	70c080e7          	jalr	1804(ra) # 8000d33c <mycpu>
    8000ec38:	07852783          	lw	a5,120(a0)
    8000ec3c:	02078663          	beqz	a5,8000ec68 <push_off+0x5c>
    8000ec40:	ffffe097          	auipc	ra,0xffffe
    8000ec44:	6fc080e7          	jalr	1788(ra) # 8000d33c <mycpu>
    8000ec48:	07852783          	lw	a5,120(a0)
    8000ec4c:	01813083          	ld	ra,24(sp)
    8000ec50:	01013403          	ld	s0,16(sp)
    8000ec54:	0017879b          	addiw	a5,a5,1
    8000ec58:	06f52c23          	sw	a5,120(a0)
    8000ec5c:	00813483          	ld	s1,8(sp)
    8000ec60:	02010113          	addi	sp,sp,32
    8000ec64:	00008067          	ret
    8000ec68:	0014d493          	srli	s1,s1,0x1
    8000ec6c:	ffffe097          	auipc	ra,0xffffe
    8000ec70:	6d0080e7          	jalr	1744(ra) # 8000d33c <mycpu>
    8000ec74:	0014f493          	andi	s1,s1,1
    8000ec78:	06952e23          	sw	s1,124(a0)
    8000ec7c:	fc5ff06f          	j	8000ec40 <push_off+0x34>

000000008000ec80 <pop_off>:
    8000ec80:	ff010113          	addi	sp,sp,-16
    8000ec84:	00813023          	sd	s0,0(sp)
    8000ec88:	00113423          	sd	ra,8(sp)
    8000ec8c:	01010413          	addi	s0,sp,16
    8000ec90:	ffffe097          	auipc	ra,0xffffe
    8000ec94:	6ac080e7          	jalr	1708(ra) # 8000d33c <mycpu>
    8000ec98:	100027f3          	csrr	a5,sstatus
    8000ec9c:	0027f793          	andi	a5,a5,2
    8000eca0:	04079663          	bnez	a5,8000ecec <pop_off+0x6c>
    8000eca4:	07852783          	lw	a5,120(a0)
    8000eca8:	02f05a63          	blez	a5,8000ecdc <pop_off+0x5c>
    8000ecac:	fff7871b          	addiw	a4,a5,-1
    8000ecb0:	06e52c23          	sw	a4,120(a0)
    8000ecb4:	00071c63          	bnez	a4,8000eccc <pop_off+0x4c>
    8000ecb8:	07c52783          	lw	a5,124(a0)
    8000ecbc:	00078863          	beqz	a5,8000eccc <pop_off+0x4c>
    8000ecc0:	100027f3          	csrr	a5,sstatus
    8000ecc4:	0027e793          	ori	a5,a5,2
    8000ecc8:	10079073          	csrw	sstatus,a5
    8000eccc:	00813083          	ld	ra,8(sp)
    8000ecd0:	00013403          	ld	s0,0(sp)
    8000ecd4:	01010113          	addi	sp,sp,16
    8000ecd8:	00008067          	ret
    8000ecdc:	00002517          	auipc	a0,0x2
    8000ece0:	77c50513          	addi	a0,a0,1916 # 80011458 <digits+0x48>
    8000ece4:	fffff097          	auipc	ra,0xfffff
    8000ece8:	018080e7          	jalr	24(ra) # 8000dcfc <panic>
    8000ecec:	00002517          	auipc	a0,0x2
    8000ecf0:	75450513          	addi	a0,a0,1876 # 80011440 <digits+0x30>
    8000ecf4:	fffff097          	auipc	ra,0xfffff
    8000ecf8:	008080e7          	jalr	8(ra) # 8000dcfc <panic>

000000008000ecfc <push_on>:
    8000ecfc:	fe010113          	addi	sp,sp,-32
    8000ed00:	00813823          	sd	s0,16(sp)
    8000ed04:	00113c23          	sd	ra,24(sp)
    8000ed08:	00913423          	sd	s1,8(sp)
    8000ed0c:	02010413          	addi	s0,sp,32
    8000ed10:	100024f3          	csrr	s1,sstatus
    8000ed14:	100027f3          	csrr	a5,sstatus
    8000ed18:	0027e793          	ori	a5,a5,2
    8000ed1c:	10079073          	csrw	sstatus,a5
    8000ed20:	ffffe097          	auipc	ra,0xffffe
    8000ed24:	61c080e7          	jalr	1564(ra) # 8000d33c <mycpu>
    8000ed28:	07852783          	lw	a5,120(a0)
    8000ed2c:	02078663          	beqz	a5,8000ed58 <push_on+0x5c>
    8000ed30:	ffffe097          	auipc	ra,0xffffe
    8000ed34:	60c080e7          	jalr	1548(ra) # 8000d33c <mycpu>
    8000ed38:	07852783          	lw	a5,120(a0)
    8000ed3c:	01813083          	ld	ra,24(sp)
    8000ed40:	01013403          	ld	s0,16(sp)
    8000ed44:	0017879b          	addiw	a5,a5,1
    8000ed48:	06f52c23          	sw	a5,120(a0)
    8000ed4c:	00813483          	ld	s1,8(sp)
    8000ed50:	02010113          	addi	sp,sp,32
    8000ed54:	00008067          	ret
    8000ed58:	0014d493          	srli	s1,s1,0x1
    8000ed5c:	ffffe097          	auipc	ra,0xffffe
    8000ed60:	5e0080e7          	jalr	1504(ra) # 8000d33c <mycpu>
    8000ed64:	0014f493          	andi	s1,s1,1
    8000ed68:	06952e23          	sw	s1,124(a0)
    8000ed6c:	fc5ff06f          	j	8000ed30 <push_on+0x34>

000000008000ed70 <pop_on>:
    8000ed70:	ff010113          	addi	sp,sp,-16
    8000ed74:	00813023          	sd	s0,0(sp)
    8000ed78:	00113423          	sd	ra,8(sp)
    8000ed7c:	01010413          	addi	s0,sp,16
    8000ed80:	ffffe097          	auipc	ra,0xffffe
    8000ed84:	5bc080e7          	jalr	1468(ra) # 8000d33c <mycpu>
    8000ed88:	100027f3          	csrr	a5,sstatus
    8000ed8c:	0027f793          	andi	a5,a5,2
    8000ed90:	04078463          	beqz	a5,8000edd8 <pop_on+0x68>
    8000ed94:	07852783          	lw	a5,120(a0)
    8000ed98:	02f05863          	blez	a5,8000edc8 <pop_on+0x58>
    8000ed9c:	fff7879b          	addiw	a5,a5,-1
    8000eda0:	06f52c23          	sw	a5,120(a0)
    8000eda4:	07853783          	ld	a5,120(a0)
    8000eda8:	00079863          	bnez	a5,8000edb8 <pop_on+0x48>
    8000edac:	100027f3          	csrr	a5,sstatus
    8000edb0:	ffd7f793          	andi	a5,a5,-3
    8000edb4:	10079073          	csrw	sstatus,a5
    8000edb8:	00813083          	ld	ra,8(sp)
    8000edbc:	00013403          	ld	s0,0(sp)
    8000edc0:	01010113          	addi	sp,sp,16
    8000edc4:	00008067          	ret
    8000edc8:	00002517          	auipc	a0,0x2
    8000edcc:	6b850513          	addi	a0,a0,1720 # 80011480 <digits+0x70>
    8000edd0:	fffff097          	auipc	ra,0xfffff
    8000edd4:	f2c080e7          	jalr	-212(ra) # 8000dcfc <panic>
    8000edd8:	00002517          	auipc	a0,0x2
    8000eddc:	68850513          	addi	a0,a0,1672 # 80011460 <digits+0x50>
    8000ede0:	fffff097          	auipc	ra,0xfffff
    8000ede4:	f1c080e7          	jalr	-228(ra) # 8000dcfc <panic>

000000008000ede8 <__memset>:
    8000ede8:	ff010113          	addi	sp,sp,-16
    8000edec:	00813423          	sd	s0,8(sp)
    8000edf0:	01010413          	addi	s0,sp,16
    8000edf4:	1a060e63          	beqz	a2,8000efb0 <__memset+0x1c8>
    8000edf8:	40a007b3          	neg	a5,a0
    8000edfc:	0077f793          	andi	a5,a5,7
    8000ee00:	00778693          	addi	a3,a5,7
    8000ee04:	00b00813          	li	a6,11
    8000ee08:	0ff5f593          	andi	a1,a1,255
    8000ee0c:	fff6071b          	addiw	a4,a2,-1
    8000ee10:	1b06e663          	bltu	a3,a6,8000efbc <__memset+0x1d4>
    8000ee14:	1cd76463          	bltu	a4,a3,8000efdc <__memset+0x1f4>
    8000ee18:	1a078e63          	beqz	a5,8000efd4 <__memset+0x1ec>
    8000ee1c:	00b50023          	sb	a1,0(a0)
    8000ee20:	00100713          	li	a4,1
    8000ee24:	1ae78463          	beq	a5,a4,8000efcc <__memset+0x1e4>
    8000ee28:	00b500a3          	sb	a1,1(a0)
    8000ee2c:	00200713          	li	a4,2
    8000ee30:	1ae78a63          	beq	a5,a4,8000efe4 <__memset+0x1fc>
    8000ee34:	00b50123          	sb	a1,2(a0)
    8000ee38:	00300713          	li	a4,3
    8000ee3c:	18e78463          	beq	a5,a4,8000efc4 <__memset+0x1dc>
    8000ee40:	00b501a3          	sb	a1,3(a0)
    8000ee44:	00400713          	li	a4,4
    8000ee48:	1ae78263          	beq	a5,a4,8000efec <__memset+0x204>
    8000ee4c:	00b50223          	sb	a1,4(a0)
    8000ee50:	00500713          	li	a4,5
    8000ee54:	1ae78063          	beq	a5,a4,8000eff4 <__memset+0x20c>
    8000ee58:	00b502a3          	sb	a1,5(a0)
    8000ee5c:	00700713          	li	a4,7
    8000ee60:	18e79e63          	bne	a5,a4,8000effc <__memset+0x214>
    8000ee64:	00b50323          	sb	a1,6(a0)
    8000ee68:	00700e93          	li	t4,7
    8000ee6c:	00859713          	slli	a4,a1,0x8
    8000ee70:	00e5e733          	or	a4,a1,a4
    8000ee74:	01059e13          	slli	t3,a1,0x10
    8000ee78:	01c76e33          	or	t3,a4,t3
    8000ee7c:	01859313          	slli	t1,a1,0x18
    8000ee80:	006e6333          	or	t1,t3,t1
    8000ee84:	02059893          	slli	a7,a1,0x20
    8000ee88:	40f60e3b          	subw	t3,a2,a5
    8000ee8c:	011368b3          	or	a7,t1,a7
    8000ee90:	02859813          	slli	a6,a1,0x28
    8000ee94:	0108e833          	or	a6,a7,a6
    8000ee98:	03059693          	slli	a3,a1,0x30
    8000ee9c:	003e589b          	srliw	a7,t3,0x3
    8000eea0:	00d866b3          	or	a3,a6,a3
    8000eea4:	03859713          	slli	a4,a1,0x38
    8000eea8:	00389813          	slli	a6,a7,0x3
    8000eeac:	00f507b3          	add	a5,a0,a5
    8000eeb0:	00e6e733          	or	a4,a3,a4
    8000eeb4:	000e089b          	sext.w	a7,t3
    8000eeb8:	00f806b3          	add	a3,a6,a5
    8000eebc:	00e7b023          	sd	a4,0(a5)
    8000eec0:	00878793          	addi	a5,a5,8
    8000eec4:	fed79ce3          	bne	a5,a3,8000eebc <__memset+0xd4>
    8000eec8:	ff8e7793          	andi	a5,t3,-8
    8000eecc:	0007871b          	sext.w	a4,a5
    8000eed0:	01d787bb          	addw	a5,a5,t4
    8000eed4:	0ce88e63          	beq	a7,a4,8000efb0 <__memset+0x1c8>
    8000eed8:	00f50733          	add	a4,a0,a5
    8000eedc:	00b70023          	sb	a1,0(a4)
    8000eee0:	0017871b          	addiw	a4,a5,1
    8000eee4:	0cc77663          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000eee8:	00e50733          	add	a4,a0,a4
    8000eeec:	00b70023          	sb	a1,0(a4)
    8000eef0:	0027871b          	addiw	a4,a5,2
    8000eef4:	0ac77e63          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000eef8:	00e50733          	add	a4,a0,a4
    8000eefc:	00b70023          	sb	a1,0(a4)
    8000ef00:	0037871b          	addiw	a4,a5,3
    8000ef04:	0ac77663          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000ef08:	00e50733          	add	a4,a0,a4
    8000ef0c:	00b70023          	sb	a1,0(a4)
    8000ef10:	0047871b          	addiw	a4,a5,4
    8000ef14:	08c77e63          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000ef18:	00e50733          	add	a4,a0,a4
    8000ef1c:	00b70023          	sb	a1,0(a4)
    8000ef20:	0057871b          	addiw	a4,a5,5
    8000ef24:	08c77663          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000ef28:	00e50733          	add	a4,a0,a4
    8000ef2c:	00b70023          	sb	a1,0(a4)
    8000ef30:	0067871b          	addiw	a4,a5,6
    8000ef34:	06c77e63          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000ef38:	00e50733          	add	a4,a0,a4
    8000ef3c:	00b70023          	sb	a1,0(a4)
    8000ef40:	0077871b          	addiw	a4,a5,7
    8000ef44:	06c77663          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000ef48:	00e50733          	add	a4,a0,a4
    8000ef4c:	00b70023          	sb	a1,0(a4)
    8000ef50:	0087871b          	addiw	a4,a5,8
    8000ef54:	04c77e63          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000ef58:	00e50733          	add	a4,a0,a4
    8000ef5c:	00b70023          	sb	a1,0(a4)
    8000ef60:	0097871b          	addiw	a4,a5,9
    8000ef64:	04c77663          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000ef68:	00e50733          	add	a4,a0,a4
    8000ef6c:	00b70023          	sb	a1,0(a4)
    8000ef70:	00a7871b          	addiw	a4,a5,10
    8000ef74:	02c77e63          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000ef78:	00e50733          	add	a4,a0,a4
    8000ef7c:	00b70023          	sb	a1,0(a4)
    8000ef80:	00b7871b          	addiw	a4,a5,11
    8000ef84:	02c77663          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000ef88:	00e50733          	add	a4,a0,a4
    8000ef8c:	00b70023          	sb	a1,0(a4)
    8000ef90:	00c7871b          	addiw	a4,a5,12
    8000ef94:	00c77e63          	bgeu	a4,a2,8000efb0 <__memset+0x1c8>
    8000ef98:	00e50733          	add	a4,a0,a4
    8000ef9c:	00b70023          	sb	a1,0(a4)
    8000efa0:	00d7879b          	addiw	a5,a5,13
    8000efa4:	00c7f663          	bgeu	a5,a2,8000efb0 <__memset+0x1c8>
    8000efa8:	00f507b3          	add	a5,a0,a5
    8000efac:	00b78023          	sb	a1,0(a5)
    8000efb0:	00813403          	ld	s0,8(sp)
    8000efb4:	01010113          	addi	sp,sp,16
    8000efb8:	00008067          	ret
    8000efbc:	00b00693          	li	a3,11
    8000efc0:	e55ff06f          	j	8000ee14 <__memset+0x2c>
    8000efc4:	00300e93          	li	t4,3
    8000efc8:	ea5ff06f          	j	8000ee6c <__memset+0x84>
    8000efcc:	00100e93          	li	t4,1
    8000efd0:	e9dff06f          	j	8000ee6c <__memset+0x84>
    8000efd4:	00000e93          	li	t4,0
    8000efd8:	e95ff06f          	j	8000ee6c <__memset+0x84>
    8000efdc:	00000793          	li	a5,0
    8000efe0:	ef9ff06f          	j	8000eed8 <__memset+0xf0>
    8000efe4:	00200e93          	li	t4,2
    8000efe8:	e85ff06f          	j	8000ee6c <__memset+0x84>
    8000efec:	00400e93          	li	t4,4
    8000eff0:	e7dff06f          	j	8000ee6c <__memset+0x84>
    8000eff4:	00500e93          	li	t4,5
    8000eff8:	e75ff06f          	j	8000ee6c <__memset+0x84>
    8000effc:	00600e93          	li	t4,6
    8000f000:	e6dff06f          	j	8000ee6c <__memset+0x84>

000000008000f004 <__memmove>:
    8000f004:	ff010113          	addi	sp,sp,-16
    8000f008:	00813423          	sd	s0,8(sp)
    8000f00c:	01010413          	addi	s0,sp,16
    8000f010:	0e060863          	beqz	a2,8000f100 <__memmove+0xfc>
    8000f014:	fff6069b          	addiw	a3,a2,-1
    8000f018:	0006881b          	sext.w	a6,a3
    8000f01c:	0ea5e863          	bltu	a1,a0,8000f10c <__memmove+0x108>
    8000f020:	00758713          	addi	a4,a1,7
    8000f024:	00a5e7b3          	or	a5,a1,a0
    8000f028:	40a70733          	sub	a4,a4,a0
    8000f02c:	0077f793          	andi	a5,a5,7
    8000f030:	00f73713          	sltiu	a4,a4,15
    8000f034:	00174713          	xori	a4,a4,1
    8000f038:	0017b793          	seqz	a5,a5
    8000f03c:	00e7f7b3          	and	a5,a5,a4
    8000f040:	10078863          	beqz	a5,8000f150 <__memmove+0x14c>
    8000f044:	00900793          	li	a5,9
    8000f048:	1107f463          	bgeu	a5,a6,8000f150 <__memmove+0x14c>
    8000f04c:	0036581b          	srliw	a6,a2,0x3
    8000f050:	fff8081b          	addiw	a6,a6,-1
    8000f054:	02081813          	slli	a6,a6,0x20
    8000f058:	01d85893          	srli	a7,a6,0x1d
    8000f05c:	00858813          	addi	a6,a1,8
    8000f060:	00058793          	mv	a5,a1
    8000f064:	00050713          	mv	a4,a0
    8000f068:	01088833          	add	a6,a7,a6
    8000f06c:	0007b883          	ld	a7,0(a5)
    8000f070:	00878793          	addi	a5,a5,8
    8000f074:	00870713          	addi	a4,a4,8
    8000f078:	ff173c23          	sd	a7,-8(a4)
    8000f07c:	ff0798e3          	bne	a5,a6,8000f06c <__memmove+0x68>
    8000f080:	ff867713          	andi	a4,a2,-8
    8000f084:	02071793          	slli	a5,a4,0x20
    8000f088:	0207d793          	srli	a5,a5,0x20
    8000f08c:	00f585b3          	add	a1,a1,a5
    8000f090:	40e686bb          	subw	a3,a3,a4
    8000f094:	00f507b3          	add	a5,a0,a5
    8000f098:	06e60463          	beq	a2,a4,8000f100 <__memmove+0xfc>
    8000f09c:	0005c703          	lbu	a4,0(a1)
    8000f0a0:	00e78023          	sb	a4,0(a5)
    8000f0a4:	04068e63          	beqz	a3,8000f100 <__memmove+0xfc>
    8000f0a8:	0015c603          	lbu	a2,1(a1)
    8000f0ac:	00100713          	li	a4,1
    8000f0b0:	00c780a3          	sb	a2,1(a5)
    8000f0b4:	04e68663          	beq	a3,a4,8000f100 <__memmove+0xfc>
    8000f0b8:	0025c603          	lbu	a2,2(a1)
    8000f0bc:	00200713          	li	a4,2
    8000f0c0:	00c78123          	sb	a2,2(a5)
    8000f0c4:	02e68e63          	beq	a3,a4,8000f100 <__memmove+0xfc>
    8000f0c8:	0035c603          	lbu	a2,3(a1)
    8000f0cc:	00300713          	li	a4,3
    8000f0d0:	00c781a3          	sb	a2,3(a5)
    8000f0d4:	02e68663          	beq	a3,a4,8000f100 <__memmove+0xfc>
    8000f0d8:	0045c603          	lbu	a2,4(a1)
    8000f0dc:	00400713          	li	a4,4
    8000f0e0:	00c78223          	sb	a2,4(a5)
    8000f0e4:	00e68e63          	beq	a3,a4,8000f100 <__memmove+0xfc>
    8000f0e8:	0055c603          	lbu	a2,5(a1)
    8000f0ec:	00500713          	li	a4,5
    8000f0f0:	00c782a3          	sb	a2,5(a5)
    8000f0f4:	00e68663          	beq	a3,a4,8000f100 <__memmove+0xfc>
    8000f0f8:	0065c703          	lbu	a4,6(a1)
    8000f0fc:	00e78323          	sb	a4,6(a5)
    8000f100:	00813403          	ld	s0,8(sp)
    8000f104:	01010113          	addi	sp,sp,16
    8000f108:	00008067          	ret
    8000f10c:	02061713          	slli	a4,a2,0x20
    8000f110:	02075713          	srli	a4,a4,0x20
    8000f114:	00e587b3          	add	a5,a1,a4
    8000f118:	f0f574e3          	bgeu	a0,a5,8000f020 <__memmove+0x1c>
    8000f11c:	02069613          	slli	a2,a3,0x20
    8000f120:	02065613          	srli	a2,a2,0x20
    8000f124:	fff64613          	not	a2,a2
    8000f128:	00e50733          	add	a4,a0,a4
    8000f12c:	00c78633          	add	a2,a5,a2
    8000f130:	fff7c683          	lbu	a3,-1(a5)
    8000f134:	fff78793          	addi	a5,a5,-1
    8000f138:	fff70713          	addi	a4,a4,-1
    8000f13c:	00d70023          	sb	a3,0(a4)
    8000f140:	fec798e3          	bne	a5,a2,8000f130 <__memmove+0x12c>
    8000f144:	00813403          	ld	s0,8(sp)
    8000f148:	01010113          	addi	sp,sp,16
    8000f14c:	00008067          	ret
    8000f150:	02069713          	slli	a4,a3,0x20
    8000f154:	02075713          	srli	a4,a4,0x20
    8000f158:	00170713          	addi	a4,a4,1
    8000f15c:	00e50733          	add	a4,a0,a4
    8000f160:	00050793          	mv	a5,a0
    8000f164:	0005c683          	lbu	a3,0(a1)
    8000f168:	00178793          	addi	a5,a5,1
    8000f16c:	00158593          	addi	a1,a1,1
    8000f170:	fed78fa3          	sb	a3,-1(a5)
    8000f174:	fee798e3          	bne	a5,a4,8000f164 <__memmove+0x160>
    8000f178:	f89ff06f          	j	8000f100 <__memmove+0xfc>

000000008000f17c <__putc>:
    8000f17c:	fe010113          	addi	sp,sp,-32
    8000f180:	00813823          	sd	s0,16(sp)
    8000f184:	00113c23          	sd	ra,24(sp)
    8000f188:	02010413          	addi	s0,sp,32
    8000f18c:	00050793          	mv	a5,a0
    8000f190:	fef40593          	addi	a1,s0,-17
    8000f194:	00100613          	li	a2,1
    8000f198:	00000513          	li	a0,0
    8000f19c:	fef407a3          	sb	a5,-17(s0)
    8000f1a0:	fffff097          	auipc	ra,0xfffff
    8000f1a4:	b3c080e7          	jalr	-1220(ra) # 8000dcdc <console_write>
    8000f1a8:	01813083          	ld	ra,24(sp)
    8000f1ac:	01013403          	ld	s0,16(sp)
    8000f1b0:	02010113          	addi	sp,sp,32
    8000f1b4:	00008067          	ret

000000008000f1b8 <__getc>:
    8000f1b8:	fe010113          	addi	sp,sp,-32
    8000f1bc:	00813823          	sd	s0,16(sp)
    8000f1c0:	00113c23          	sd	ra,24(sp)
    8000f1c4:	02010413          	addi	s0,sp,32
    8000f1c8:	fe840593          	addi	a1,s0,-24
    8000f1cc:	00100613          	li	a2,1
    8000f1d0:	00000513          	li	a0,0
    8000f1d4:	fffff097          	auipc	ra,0xfffff
    8000f1d8:	ae8080e7          	jalr	-1304(ra) # 8000dcbc <console_read>
    8000f1dc:	fe844503          	lbu	a0,-24(s0)
    8000f1e0:	01813083          	ld	ra,24(sp)
    8000f1e4:	01013403          	ld	s0,16(sp)
    8000f1e8:	02010113          	addi	sp,sp,32
    8000f1ec:	00008067          	ret

000000008000f1f0 <console_handler>:
    8000f1f0:	fe010113          	addi	sp,sp,-32
    8000f1f4:	00813823          	sd	s0,16(sp)
    8000f1f8:	00113c23          	sd	ra,24(sp)
    8000f1fc:	00913423          	sd	s1,8(sp)
    8000f200:	02010413          	addi	s0,sp,32
    8000f204:	14202773          	csrr	a4,scause
    8000f208:	100027f3          	csrr	a5,sstatus
    8000f20c:	0027f793          	andi	a5,a5,2
    8000f210:	06079e63          	bnez	a5,8000f28c <console_handler+0x9c>
    8000f214:	00074c63          	bltz	a4,8000f22c <console_handler+0x3c>
    8000f218:	01813083          	ld	ra,24(sp)
    8000f21c:	01013403          	ld	s0,16(sp)
    8000f220:	00813483          	ld	s1,8(sp)
    8000f224:	02010113          	addi	sp,sp,32
    8000f228:	00008067          	ret
    8000f22c:	0ff77713          	andi	a4,a4,255
    8000f230:	00900793          	li	a5,9
    8000f234:	fef712e3          	bne	a4,a5,8000f218 <console_handler+0x28>
    8000f238:	ffffe097          	auipc	ra,0xffffe
    8000f23c:	6dc080e7          	jalr	1756(ra) # 8000d914 <plic_claim>
    8000f240:	00a00793          	li	a5,10
    8000f244:	00050493          	mv	s1,a0
    8000f248:	02f50c63          	beq	a0,a5,8000f280 <console_handler+0x90>
    8000f24c:	fc0506e3          	beqz	a0,8000f218 <console_handler+0x28>
    8000f250:	00050593          	mv	a1,a0
    8000f254:	00002517          	auipc	a0,0x2
    8000f258:	13450513          	addi	a0,a0,308 # 80011388 <CONSOLE_STATUS+0x1378>
    8000f25c:	fffff097          	auipc	ra,0xfffff
    8000f260:	afc080e7          	jalr	-1284(ra) # 8000dd58 <__printf>
    8000f264:	01013403          	ld	s0,16(sp)
    8000f268:	01813083          	ld	ra,24(sp)
    8000f26c:	00048513          	mv	a0,s1
    8000f270:	00813483          	ld	s1,8(sp)
    8000f274:	02010113          	addi	sp,sp,32
    8000f278:	ffffe317          	auipc	t1,0xffffe
    8000f27c:	6d430067          	jr	1748(t1) # 8000d94c <plic_complete>
    8000f280:	fffff097          	auipc	ra,0xfffff
    8000f284:	3e0080e7          	jalr	992(ra) # 8000e660 <uartintr>
    8000f288:	fddff06f          	j	8000f264 <console_handler+0x74>
    8000f28c:	00002517          	auipc	a0,0x2
    8000f290:	1fc50513          	addi	a0,a0,508 # 80011488 <digits+0x78>
    8000f294:	fffff097          	auipc	ra,0xfffff
    8000f298:	a68080e7          	jalr	-1432(ra) # 8000dcfc <panic>
	...
