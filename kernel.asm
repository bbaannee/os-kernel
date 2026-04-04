
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	70813103          	ld	sp,1800(sp) # 80005708 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3c1010ef          	jal	ra,80001bdc <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function

_ZN5Riscv14supervisorTrapEv:
     addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ,21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00113423          	sd	ra,8(sp)
    80001008:	00213823          	sd	sp,16(sp)
    8000100c:	00313c23          	sd	gp,24(sp)
    80001010:	02413023          	sd	tp,32(sp)
    80001014:	02513423          	sd	t0,40(sp)
    80001018:	02613823          	sd	t1,48(sp)
    8000101c:	02713c23          	sd	t2,56(sp)
    80001020:	04813023          	sd	s0,64(sp)
    80001024:	04913423          	sd	s1,72(sp)
    80001028:	04a13823          	sd	a0,80(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)
    
    call _ZN5Riscv20handleSupervisorTrapEv
    80001080:	7b0000ef          	jal	ra,80001830 <_ZN5Riscv20handleSupervisorTrapEv>


    .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ,21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
        ld x\index, \index * 8(sp)
        .endr
    80001084:	00813083          	ld	ra,8(sp)
    80001088:	01013103          	ld	sp,16(sp)
    8000108c:	01813183          	ld	gp,24(sp)
    80001090:	02013203          	ld	tp,32(sp)
    80001094:	02813283          	ld	t0,40(sp)
    80001098:	03013303          	ld	t1,48(sp)
    8000109c:	03813383          	ld	t2,56(sp)
    800010a0:	04013403          	ld	s0,64(sp)
    800010a4:	04813483          	ld	s1,72(sp)
    800010a8:	05013503          	ld	a0,80(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)
      addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256
          sret
    80001104:	10200073          	sret
	...

0000000080001110 <_ZN6Thread13switchContextEPNS_7ContextES1_>:
.global _ZN6Thread13switchContextEPNS_7ContextES1_
.type _ZN6Thread13switchContextEPNS_7ContextES1_, @function
_ZN6Thread13switchContextEPNS_7ContextES1_:

   
    sd ra, 0(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

   
    ld ra, 0(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    ret
    80001120:	00008067          	ret

0000000080001124 <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include  "../h/riscv.h"
#include "../lib/mem.h"
void *mem_alloc(size_t size) {
    80001124:	fe010113          	addi	sp,sp,-32
    80001128:	00813c23          	sd	s0,24(sp)
    8000112c:	02010413          	addi	s0,sp,32
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001130:	03f50513          	addi	a0,a0,63
    80001134:	00655513          	srli	a0,a0,0x6
    80001138:	00050593          	mv	a1,a0
    8000113c:	00100793          	li	a5,1
    80001140:	00078513          	mv	a0,a5

    Riscv::writeARegister(1, blocks);
    Riscv::writeARegister(0, 0x01);

    __asm__ volatile("ecall");
    80001144:	00000073          	ecall
    80001148:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    8000114c:	fef43423          	sd	a5,-24(s0)
    return (void*) a0;
    80001150:	fe843503          	ld	a0,-24(s0)


}
    80001154:	01813403          	ld	s0,24(sp)
    80001158:	02010113          	addi	sp,sp,32
    8000115c:	00008067          	ret

0000000080001160 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80001160:	fe010113          	addi	sp,sp,-32
    80001164:	00813c23          	sd	s0,24(sp)
    80001168:	02010413          	addi	s0,sp,32
    8000116c:	00050593          	mv	a1,a0
    80001170:	00200793          	li	a5,2
    80001174:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)ptr);
    Riscv::writeARegister(0, 0x02);

    __asm__ volatile("ecall");
    80001178:	00000073          	ecall
    8000117c:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80001180:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    80001184:	fe843503          	ld	a0,-24(s0)
}
    80001188:	0005051b          	sext.w	a0,a0
    8000118c:	01813403          	ld	s0,24(sp)
    80001190:	02010113          	addi	sp,sp,32
    80001194:	00008067          	ret

0000000080001198 <_Znwm>:

void* operator new(size_t size) {
    80001198:	ff010113          	addi	sp,sp,-16
    8000119c:	00113423          	sd	ra,8(sp)
    800011a0:	00813023          	sd	s0,0(sp)
    800011a4:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800011a8:	00003097          	auipc	ra,0x3
    800011ac:	bc0080e7          	jalr	-1088(ra) # 80003d68 <__mem_alloc>
}
    800011b0:	00813083          	ld	ra,8(sp)
    800011b4:	00013403          	ld	s0,0(sp)
    800011b8:	01010113          	addi	sp,sp,16
    800011bc:	00008067          	ret

00000000800011c0 <_Znam>:


void* operator new[](size_t size) {
    800011c0:	ff010113          	addi	sp,sp,-16
    800011c4:	00113423          	sd	ra,8(sp)
    800011c8:	00813023          	sd	s0,0(sp)
    800011cc:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800011d0:	00003097          	auipc	ra,0x3
    800011d4:	b98080e7          	jalr	-1128(ra) # 80003d68 <__mem_alloc>
}
    800011d8:	00813083          	ld	ra,8(sp)
    800011dc:	00013403          	ld	s0,0(sp)
    800011e0:	01010113          	addi	sp,sp,16
    800011e4:	00008067          	ret

00000000800011e8 <_ZdlPv>:


void operator delete(void* ptr) noexcept {
    800011e8:	ff010113          	addi	sp,sp,-16
    800011ec:	00113423          	sd	ra,8(sp)
    800011f0:	00813023          	sd	s0,0(sp)
    800011f4:	01010413          	addi	s0,sp,16
    __mem_free(ptr);
    800011f8:	00003097          	auipc	ra,0x3
    800011fc:	aa4080e7          	jalr	-1372(ra) # 80003c9c <__mem_free>
}
    80001200:	00813083          	ld	ra,8(sp)
    80001204:	00013403          	ld	s0,0(sp)
    80001208:	01010113          	addi	sp,sp,16
    8000120c:	00008067          	ret

0000000080001210 <_ZdaPv>:

void operator delete[](void* ptr) noexcept {
    80001210:	ff010113          	addi	sp,sp,-16
    80001214:	00113423          	sd	ra,8(sp)
    80001218:	00813023          	sd	s0,0(sp)
    8000121c:	01010413          	addi	s0,sp,16
    __mem_free(ptr);
    80001220:	00003097          	auipc	ra,0x3
    80001224:	a7c080e7          	jalr	-1412(ra) # 80003c9c <__mem_free>
    80001228:	00813083          	ld	ra,8(sp)
    8000122c:	00013403          	ld	s0,0(sp)
    80001230:	01010113          	addi	sp,sp,16
    80001234:	00008067          	ret

0000000080001238 <_Z11workerBodyAv>:
#include "../lib/hw.h"
#include "../h/Thread.h"
#include "../h/printer.h"

void workerBodyA()
{
    80001238:	fe010113          	addi	sp,sp,-32
    8000123c:	00113c23          	sd	ra,24(sp)
    80001240:	00813823          	sd	s0,16(sp)
    80001244:	00913423          	sd	s1,8(sp)
    80001248:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    8000124c:	00000493          	li	s1,0
    80001250:	0300006f          	j	80001280 <_Z11workerBodyAv+0x48>
    {
        printString("A: i=");
        printInteger(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++)
    80001254:	00168693          	addi	a3,a3,1
    80001258:	000027b7          	lui	a5,0x2
    8000125c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001260:	00d7ee63          	bltu	a5,a3,8000127c <_Z11workerBodyAv+0x44>
        {
            for (uint64 k = 0; k < 30000; k++)
    80001264:	00000713          	li	a4,0
    80001268:	000077b7          	lui	a5,0x7
    8000126c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001270:	fee7e2e3          	bltu	a5,a4,80001254 <_Z11workerBodyAv+0x1c>
    80001274:	00170713          	addi	a4,a4,1
    80001278:	ff1ff06f          	j	80001268 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    8000127c:	00148493          	addi	s1,s1,1
    80001280:	00900793          	li	a5,9
    80001284:	0297ec63          	bltu	a5,s1,800012bc <_Z11workerBodyAv+0x84>
        printString("A: i=");
    80001288:	00004517          	auipc	a0,0x4
    8000128c:	d9850513          	addi	a0,a0,-616 # 80005020 <CONSOLE_STATUS+0x10>
    80001290:	00000097          	auipc	ra,0x0
    80001294:	314080e7          	jalr	788(ra) # 800015a4 <_Z11printStringPKc>
        printInteger(i);
    80001298:	00048513          	mv	a0,s1
    8000129c:	00000097          	auipc	ra,0x0
    800012a0:	378080e7          	jalr	888(ra) # 80001614 <_Z12printIntegerm>
        printString("\n");
    800012a4:	00004517          	auipc	a0,0x4
    800012a8:	dd450513          	addi	a0,a0,-556 # 80005078 <_ZZ12printIntegermE6digits+0x48>
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	2f8080e7          	jalr	760(ra) # 800015a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800012b4:	00000693          	li	a3,0
    800012b8:	fa1ff06f          	j	80001258 <_Z11workerBodyAv+0x20>
                // busy wait
            }
        }
     
    }
}
    800012bc:	01813083          	ld	ra,24(sp)
    800012c0:	01013403          	ld	s0,16(sp)
    800012c4:	00813483          	ld	s1,8(sp)
    800012c8:	02010113          	addi	sp,sp,32
    800012cc:	00008067          	ret

00000000800012d0 <_Z11workerBodyBv>:

void workerBodyB()
{
    800012d0:	fe010113          	addi	sp,sp,-32
    800012d4:	00113c23          	sd	ra,24(sp)
    800012d8:	00813823          	sd	s0,16(sp)
    800012dc:	00913423          	sd	s1,8(sp)
    800012e0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 61; i++)
    800012e4:	00000493          	li	s1,0
    800012e8:	0300006f          	j	80001318 <_Z11workerBodyBv+0x48>
    {
        printString("B: i=");
        printInteger(i);
        printString("\n");
        for (uint64 j = 0; j < 10000; j++)
    800012ec:	00168693          	addi	a3,a3,1
    800012f0:	000027b7          	lui	a5,0x2
    800012f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800012f8:	00d7ee63          	bltu	a5,a3,80001314 <_Z11workerBodyBv+0x44>
        {
            for (uint64 k = 0; k < 30000; k++)
    800012fc:	00000713          	li	a4,0
    80001300:	000077b7          	lui	a5,0x7
    80001304:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001308:	fee7e2e3          	bltu	a5,a4,800012ec <_Z11workerBodyBv+0x1c>
    8000130c:	00170713          	addi	a4,a4,1
    80001310:	ff1ff06f          	j	80001300 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 61; i++)
    80001314:	00148493          	addi	s1,s1,1
    80001318:	03c00793          	li	a5,60
    8000131c:	0297ec63          	bltu	a5,s1,80001354 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001320:	00004517          	auipc	a0,0x4
    80001324:	d0850513          	addi	a0,a0,-760 # 80005028 <CONSOLE_STATUS+0x18>
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	27c080e7          	jalr	636(ra) # 800015a4 <_Z11printStringPKc>
        printInteger(i);
    80001330:	00048513          	mv	a0,s1
    80001334:	00000097          	auipc	ra,0x0
    80001338:	2e0080e7          	jalr	736(ra) # 80001614 <_Z12printIntegerm>
        printString("\n");
    8000133c:	00004517          	auipc	a0,0x4
    80001340:	d3c50513          	addi	a0,a0,-708 # 80005078 <_ZZ12printIntegermE6digits+0x48>
    80001344:	00000097          	auipc	ra,0x0
    80001348:	260080e7          	jalr	608(ra) # 800015a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000134c:	00000693          	li	a3,0
    80001350:	fa1ff06f          	j	800012f0 <_Z11workerBodyBv+0x20>
                // busy wait
            }
        }
      
    }
}
    80001354:	01813083          	ld	ra,24(sp)
    80001358:	01013403          	ld	s0,16(sp)
    8000135c:	00813483          	ld	s1,8(sp)
    80001360:	02010113          	addi	sp,sp,32
    80001364:	00008067          	ret

0000000080001368 <_ZN6Thread12createThreadEPFvvE>:
Thread* Thread::running = nullptr;

uint64 Thread::timeSliceCounter = 0;


Thread* Thread::createThread(Body body) {
    80001368:	fe010113          	addi	sp,sp,-32
    8000136c:	00113c23          	sd	ra,24(sp)
    80001370:	00813823          	sd	s0,16(sp)
    80001374:	00913423          	sd	s1,8(sp)
    80001378:	01213023          	sd	s2,0(sp)
    8000137c:	02010413          	addi	s0,sp,32
    80001380:	00050913          	mv	s2,a0
    return new Thread(body, TIME_SLICE);
    80001384:	03800513          	li	a0,56
    80001388:	00000097          	auipc	ra,0x0
    8000138c:	e10080e7          	jalr	-496(ra) # 80001198 <_Znwm>
    80001390:	00050493          	mv	s1,a0
    friend class Scheduler;
    friend class Riscv;

    Thread(Body body, uint64 timeSlice): next(nullptr), body(body),stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),context({
    (uint64)&threadWrapper, stack!= nullptr ? (uint64)& stack[STACK_SIZE] : 0}),
    timeSlice(timeSlice), finished(false) {
    80001394:	00053023          	sd	zero,0(a0)
    80001398:	01253423          	sd	s2,8(a0)
    Thread(Body body, uint64 timeSlice): next(nullptr), body(body),stack(body!=nullptr ? new uint64[STACK_SIZE] : nullptr),context({
    8000139c:	00090a63          	beqz	s2,800013b0 <_ZN6Thread12createThreadEPFvvE+0x48>
    800013a0:	00002537          	lui	a0,0x2
    800013a4:	00000097          	auipc	ra,0x0
    800013a8:	e1c080e7          	jalr	-484(ra) # 800011c0 <_Znam>
    800013ac:	0080006f          	j	800013b4 <_ZN6Thread12createThreadEPFvvE+0x4c>
    800013b0:	00000513          	li	a0,0
    timeSlice(timeSlice), finished(false) {
    800013b4:	00a4b823          	sd	a0,16(s1)
    800013b8:	00000797          	auipc	a5,0x0
    800013bc:	0c878793          	addi	a5,a5,200 # 80001480 <_ZN6Thread13threadWrapperEv>
    800013c0:	00f4bc23          	sd	a5,24(s1)
    (uint64)&threadWrapper, stack!= nullptr ? (uint64)& stack[STACK_SIZE] : 0}),
    800013c4:	06050063          	beqz	a0,80001424 <_ZN6Thread12createThreadEPFvvE+0xbc>
    800013c8:	000027b7          	lui	a5,0x2
    800013cc:	00f507b3          	add	a5,a0,a5
    timeSlice(timeSlice), finished(false) {
    800013d0:	02f4b023          	sd	a5,32(s1)
    800013d4:	00200793          	li	a5,2
    800013d8:	02f4b423          	sd	a5,40(s1)
    800013dc:	02048823          	sb	zero,48(s1)
        if (body!=nullptr) Scheduler::instance().put(this);
    800013e0:	06090463          	beqz	s2,80001448 <_ZN6Thread12createThreadEPFvvE+0xe0>

class Thread;

class Scheduler {
public:
    static Scheduler& instance(){static Scheduler instance; return instance;}
    800013e4:	00004797          	auipc	a5,0x4
    800013e8:	38c7c783          	lbu	a5,908(a5) # 80005770 <_ZGVZN9Scheduler8instanceEvE8instance>
    800013ec:	02079063          	bnez	a5,8000140c <_ZN6Thread12createThreadEPFvvE+0xa4>

    void put(Thread* t);

    Thread* get();
private:
    Scheduler():head(nullptr), tail(nullptr){};
    800013f0:	00004797          	auipc	a5,0x4
    800013f4:	38878793          	addi	a5,a5,904 # 80005778 <_ZZN9Scheduler8instanceEvE8instance>
    800013f8:	0007b023          	sd	zero,0(a5)
    800013fc:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001400:	00100793          	li	a5,1
    80001404:	00004717          	auipc	a4,0x4
    80001408:	36f70623          	sb	a5,876(a4) # 80005770 <_ZGVZN9Scheduler8instanceEvE8instance>
    8000140c:	00048593          	mv	a1,s1
    80001410:	00004517          	auipc	a0,0x4
    80001414:	36850513          	addi	a0,a0,872 # 80005778 <_ZZN9Scheduler8instanceEvE8instance>
    80001418:	00000097          	auipc	ra,0x0
    8000141c:	2ac080e7          	jalr	684(ra) # 800016c4 <_ZN9Scheduler3putEP6Thread>
    80001420:	0280006f          	j	80001448 <_ZN6Thread12createThreadEPFvvE+0xe0>
    (uint64)&threadWrapper, stack!= nullptr ? (uint64)& stack[STACK_SIZE] : 0}),
    80001424:	00000793          	li	a5,0
    80001428:	fa9ff06f          	j	800013d0 <_ZN6Thread12createThreadEPFvvE+0x68>
    8000142c:	00050913          	mv	s2,a0
    80001430:	00048513          	mv	a0,s1
    80001434:	00000097          	auipc	ra,0x0
    80001438:	db4080e7          	jalr	-588(ra) # 800011e8 <_ZdlPv>
    8000143c:	00090513          	mv	a0,s2
    80001440:	00005097          	auipc	ra,0x5
    80001444:	428080e7          	jalr	1064(ra) # 80006868 <_Unwind_Resume>
}
    80001448:	00048513          	mv	a0,s1
    8000144c:	01813083          	ld	ra,24(sp)
    80001450:	01013403          	ld	s0,16(sp)
    80001454:	00813483          	ld	s1,8(sp)
    80001458:	00013903          	ld	s2,0(sp)
    8000145c:	02010113          	addi	sp,sp,32
    80001460:	00008067          	ret

0000000080001464 <_ZN6Thread5yieldEv>:

void Thread::yield() {
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00813423          	sd	s0,8(sp)
    8000146c:	01010413          	addi	s0,sp,16
    
    __asm__ volatile ("ecall");
    80001470:	00000073          	ecall
}
    80001474:	00813403          	ld	s0,8(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret

0000000080001480 <_ZN6Thread13threadWrapperEv>:
        switchContext(&old->context, &running->context);
    }
}


void Thread::threadWrapper(){
    80001480:	fe010113          	addi	sp,sp,-32
    80001484:	00113c23          	sd	ra,24(sp)
    80001488:	00813823          	sd	s0,16(sp)
    8000148c:	00913423          	sd	s1,8(sp)
    80001490:	02010413          	addi	s0,sp,32

Riscv::popSppSpie();
    80001494:	00000097          	auipc	ra,0x0
    80001498:	37c080e7          	jalr	892(ra) # 80001810 <_ZN5Riscv10popSppSpieEv>
running -> body();
    8000149c:	00004497          	auipc	s1,0x4
    800014a0:	2c448493          	addi	s1,s1,708 # 80005760 <_ZN6Thread7runningE>
    800014a4:	0004b783          	ld	a5,0(s1)
    800014a8:	0087b783          	ld	a5,8(a5)
    800014ac:	000780e7          	jalr	a5

running -> setFinished(true);
    800014b0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool finished){Thread::finished = finished;};
    800014b4:	00100713          	li	a4,1
    800014b8:	02e78823          	sb	a4,48(a5)

Thread::yield();
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	fa8080e7          	jalr	-88(ra) # 80001464 <_ZN6Thread5yieldEv>
}
    800014c4:	01813083          	ld	ra,24(sp)
    800014c8:	01013403          	ld	s0,16(sp)
    800014cc:	00813483          	ld	s1,8(sp)
    800014d0:	02010113          	addi	sp,sp,32
    800014d4:	00008067          	ret

00000000800014d8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800014d8:	fe010113          	addi	sp,sp,-32
    800014dc:	00113c23          	sd	ra,24(sp)
    800014e0:	00813823          	sd	s0,16(sp)
    800014e4:	00913423          	sd	s1,8(sp)
    800014e8:	02010413          	addi	s0,sp,32
    Thread* old = running;
    800014ec:	00004497          	auipc	s1,0x4
    800014f0:	2744b483          	ld	s1,628(s1) # 80005760 <_ZN6Thread7runningE>
    if (old && !old->finished) {
    800014f4:	04048463          	beqz	s1,8000153c <_ZN6Thread8dispatchEv+0x64>
    800014f8:	0304c783          	lbu	a5,48(s1)
    800014fc:	04079063          	bnez	a5,8000153c <_ZN6Thread8dispatchEv+0x64>
    80001500:	00004797          	auipc	a5,0x4
    80001504:	2707c783          	lbu	a5,624(a5) # 80005770 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001508:	02079063          	bnez	a5,80001528 <_ZN6Thread8dispatchEv+0x50>
    Scheduler():head(nullptr), tail(nullptr){};
    8000150c:	00004797          	auipc	a5,0x4
    80001510:	26c78793          	addi	a5,a5,620 # 80005778 <_ZZN9Scheduler8instanceEvE8instance>
    80001514:	0007b023          	sd	zero,0(a5)
    80001518:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    8000151c:	00100793          	li	a5,1
    80001520:	00004717          	auipc	a4,0x4
    80001524:	24f70823          	sb	a5,592(a4) # 80005770 <_ZGVZN9Scheduler8instanceEvE8instance>
        Scheduler::instance().put(old);
    80001528:	00048593          	mv	a1,s1
    8000152c:	00004517          	auipc	a0,0x4
    80001530:	24c50513          	addi	a0,a0,588 # 80005778 <_ZZN9Scheduler8instanceEvE8instance>
    80001534:	00000097          	auipc	ra,0x0
    80001538:	190080e7          	jalr	400(ra) # 800016c4 <_ZN9Scheduler3putEP6Thread>
    8000153c:	00004797          	auipc	a5,0x4
    80001540:	2347c783          	lbu	a5,564(a5) # 80005770 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001544:	02079063          	bnez	a5,80001564 <_ZN6Thread8dispatchEv+0x8c>
    Scheduler():head(nullptr), tail(nullptr){};
    80001548:	00004797          	auipc	a5,0x4
    8000154c:	23078793          	addi	a5,a5,560 # 80005778 <_ZZN9Scheduler8instanceEvE8instance>
    80001550:	0007b023          	sd	zero,0(a5)
    80001554:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001558:	00100793          	li	a5,1
    8000155c:	00004717          	auipc	a4,0x4
    80001560:	20f70a23          	sb	a5,532(a4) # 80005770 <_ZGVZN9Scheduler8instanceEvE8instance>
    running = Scheduler::instance().get();
    80001564:	00004517          	auipc	a0,0x4
    80001568:	21450513          	addi	a0,a0,532 # 80005778 <_ZZN9Scheduler8instanceEvE8instance>
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	194080e7          	jalr	404(ra) # 80001700 <_ZN9Scheduler3getEv>
    80001574:	00004797          	auipc	a5,0x4
    80001578:	1ea7b623          	sd	a0,492(a5) # 80005760 <_ZN6Thread7runningE>
    if (old != running) {
    8000157c:	00a48a63          	beq	s1,a0,80001590 <_ZN6Thread8dispatchEv+0xb8>
        switchContext(&old->context, &running->context);
    80001580:	01850593          	addi	a1,a0,24
    80001584:	01848513          	addi	a0,s1,24
    80001588:	00000097          	auipc	ra,0x0
    8000158c:	b88080e7          	jalr	-1144(ra) # 80001110 <_ZN6Thread13switchContextEPNS_7ContextES1_>
}
    80001590:	01813083          	ld	ra,24(sp)
    80001594:	01013403          	ld	s0,16(sp)
    80001598:	00813483          	ld	s1,8(sp)
    8000159c:	02010113          	addi	sp,sp,32
    800015a0:	00008067          	ret

00000000800015a4 <_Z11printStringPKc>:

#include "../h/printer.h"
#include "../lib/console.h"
#include "../h/riscv.h"
void printString(char const *string)
{
    800015a4:	fd010113          	addi	sp,sp,-48
    800015a8:	02113423          	sd	ra,40(sp)
    800015ac:	02813023          	sd	s0,32(sp)
    800015b0:	00913c23          	sd	s1,24(sp)
    800015b4:	01213823          	sd	s2,16(sp)
    800015b8:	03010413          	addi	s0,sp,48
    800015bc:	00050493          	mv	s1,a0
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    800015c0:	100027f3          	csrr	a5,sstatus
    800015c4:	fcf43c23          	sd	a5,-40(s0)
        return value;
    800015c8:	fd843903          	ld	s2,-40(s0)
    {
    800015cc:	00200793          	li	a5,2
    800015d0:	1007b073          	csrc	sstatus,a5
	uint64 sstatus = Riscv::r_sstatus();
	Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    800015d4:	0004c503          	lbu	a0,0(s1)
    800015d8:	00050a63          	beqz	a0,800015ec <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800015dc:	00003097          	auipc	ra,0x3
    800015e0:	8e4080e7          	jalr	-1820(ra) # 80003ec0 <__putc>
        string++;
    800015e4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800015e8:	fedff06f          	j	800015d4 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800015ec:	0009091b          	sext.w	s2,s2
    800015f0:	00297913          	andi	s2,s2,2
    800015f4:	0009091b          	sext.w	s2,s2
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800015f8:	10092073          	csrs	sstatus,s2
}
    800015fc:	02813083          	ld	ra,40(sp)
    80001600:	02013403          	ld	s0,32(sp)
    80001604:	01813483          	ld	s1,24(sp)
    80001608:	01013903          	ld	s2,16(sp)
    8000160c:	03010113          	addi	sp,sp,48
    80001610:	00008067          	ret

0000000080001614 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{	
    80001614:	fc010113          	addi	sp,sp,-64
    80001618:	02113c23          	sd	ra,56(sp)
    8000161c:	02813823          	sd	s0,48(sp)
    80001620:	02913423          	sd	s1,40(sp)
    80001624:	03213023          	sd	s2,32(sp)
    80001628:	04010413          	addi	s0,sp,64
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
    8000162c:	100027f3          	csrr	a5,sstatus
    80001630:	fcf43423          	sd	a5,-56(s0)
        return value;
    80001634:	fc843903          	ld	s2,-56(s0)
    {
    80001638:	00200793          	li	a5,2
    8000163c:	1007b073          	csrc	sstatus,a5
    else
    {
        x = integer;
    }

    i = 0;
    80001640:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001644:	00a00693          	li	a3,10
    80001648:	02d57633          	remu	a2,a0,a3
    8000164c:	00004717          	auipc	a4,0x4
    80001650:	9e470713          	addi	a4,a4,-1564 # 80005030 <_ZZ12printIntegermE6digits>
    80001654:	00c70733          	add	a4,a4,a2
    80001658:	00074703          	lbu	a4,0(a4)
    8000165c:	fe040613          	addi	a2,s0,-32
    80001660:	009607b3          	add	a5,a2,s1
    80001664:	0014849b          	addiw	s1,s1,1
    80001668:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    8000166c:	00050713          	mv	a4,a0
    80001670:	02d55533          	divu	a0,a0,a3
    80001674:	00900793          	li	a5,9
    80001678:	fce7e6e3          	bltu	a5,a4,80001644 <_Z12printIntegerm+0x30>

    if (neg)
        buf[i++] = '-';

    while (--i >= 0)        __putc(buf[i]);
    8000167c:	fff4849b          	addiw	s1,s1,-1
    80001680:	0004ce63          	bltz	s1,8000169c <_Z12printIntegerm+0x88>
    80001684:	fe040793          	addi	a5,s0,-32
    80001688:	009787b3          	add	a5,a5,s1
    8000168c:	ff07c503          	lbu	a0,-16(a5)
    80001690:	00003097          	auipc	ra,0x3
    80001694:	830080e7          	jalr	-2000(ra) # 80003ec0 <__putc>
    80001698:	fe5ff06f          	j	8000167c <_Z12printIntegerm+0x68>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000169c:	0009091b          	sext.w	s2,s2
    800016a0:	00297913          	andi	s2,s2,2
    800016a4:	0009091b          	sext.w	s2,s2
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800016a8:	10092073          	csrs	sstatus,s2
}
    800016ac:	03813083          	ld	ra,56(sp)
    800016b0:	03013403          	ld	s0,48(sp)
    800016b4:	02813483          	ld	s1,40(sp)
    800016b8:	02013903          	ld	s2,32(sp)
    800016bc:	04010113          	addi	sp,sp,64
    800016c0:	00008067          	ret

00000000800016c4 <_ZN9Scheduler3putEP6Thread>:
#include "../h/Scheduler.h"
#include "../h/Thread.h"
void Scheduler::put(Thread* t) {
    800016c4:	ff010113          	addi	sp,sp,-16
    800016c8:	00813423          	sd	s0,8(sp)
    800016cc:	01010413          	addi	s0,sp,16
    if (!t) return;
    800016d0:	00058e63          	beqz	a1,800016ec <_ZN9Scheduler3putEP6Thread+0x28>
    t->next = nullptr;
    800016d4:	0005b023          	sd	zero,0(a1)

    if (!head) {
    800016d8:	00053783          	ld	a5,0(a0)
    800016dc:	00078e63          	beqz	a5,800016f8 <_ZN9Scheduler3putEP6Thread+0x34>
        head = t;
    } else {
        tail->next = t;
    800016e0:	00853783          	ld	a5,8(a0)
    800016e4:	00b7b023          	sd	a1,0(a5)
    }
    tail = t;
    800016e8:	00b53423          	sd	a1,8(a0)
}
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret
        head = t;
    800016f8:	00b53023          	sd	a1,0(a0)
    800016fc:	fedff06f          	j	800016e8 <_ZN9Scheduler3putEP6Thread+0x24>

0000000080001700 <_ZN9Scheduler3getEv>:

Thread* Scheduler::get() {
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00813423          	sd	s0,8(sp)
    80001708:	01010413          	addi	s0,sp,16
    8000170c:	00050793          	mv	a5,a0
    if (!head) {
    80001710:	00053503          	ld	a0,0(a0)
    80001714:	00050a63          	beqz	a0,80001728 <_ZN9Scheduler3getEv+0x28>
        return nullptr;
    }

    Thread* t = head;
    head = head->next;
    80001718:	00053703          	ld	a4,0(a0)
    8000171c:	00e7b023          	sd	a4,0(a5)

    if (!head) {
    80001720:	00070a63          	beqz	a4,80001734 <_ZN9Scheduler3getEv+0x34>
        tail = nullptr;
    }

    t->next = nullptr;
    80001724:	00053023          	sd	zero,0(a0)
    return t;
    80001728:	00813403          	ld	s0,8(sp)
    8000172c:	01010113          	addi	sp,sp,16
    80001730:	00008067          	ret
        tail = nullptr;
    80001734:	0007b423          	sd	zero,8(a5)
    80001738:	fedff06f          	j	80001724 <_ZN9Scheduler3getEv+0x24>

000000008000173c <main>:
#include  "../h/workers.h"
#include "../h/printer.h"


int main()
{
    8000173c:	fe010113          	addi	sp,sp,-32
    80001740:	00113c23          	sd	ra,24(sp)
    80001744:	00813823          	sd	s0,16(sp)
    80001748:	00913423          	sd	s1,8(sp)
    8000174c:	01213023          	sd	s2,0(sp)
    80001750:	02010413          	addi	s0,sp,32
    Thread *threads[3];

    threads[0] = Thread::createThread(nullptr);
    80001754:	00000513          	li	a0,0
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	c10080e7          	jalr	-1008(ra) # 80001368 <_ZN6Thread12createThreadEPFvvE>
    Thread::running = threads[0];
    80001760:	00004797          	auipc	a5,0x4
    80001764:	fb07b783          	ld	a5,-80(a5) # 80005710 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001768:	00a7b023          	sd	a0,0(a5)

    threads[1] = Thread::createThread(workerBodyA);
    8000176c:	00004517          	auipc	a0,0x4
    80001770:	f8c53503          	ld	a0,-116(a0) # 800056f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001774:	00000097          	auipc	ra,0x0
    80001778:	bf4080e7          	jalr	-1036(ra) # 80001368 <_ZN6Thread12createThreadEPFvvE>
    8000177c:	00050493          	mv	s1,a0
    printString("ThreadA created\n");
    80001780:	00004517          	auipc	a0,0x4
    80001784:	8c050513          	addi	a0,a0,-1856 # 80005040 <_ZZ12printIntegermE6digits+0x10>
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	e1c080e7          	jalr	-484(ra) # 800015a4 <_Z11printStringPKc>
    threads[2] = Thread::createThread(workerBodyB);
    80001790:	00004517          	auipc	a0,0x4
    80001794:	f6053503          	ld	a0,-160(a0) # 800056f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	bd0080e7          	jalr	-1072(ra) # 80001368 <_ZN6Thread12createThreadEPFvvE>
    800017a0:	00050913          	mv	s2,a0
    printString("ThreadB created\n");
    800017a4:	00004517          	auipc	a0,0x4
    800017a8:	8b450513          	addi	a0,a0,-1868 # 80005058 <_ZZ12printIntegermE6digits+0x28>
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	df8080e7          	jalr	-520(ra) # 800015a4 <_Z11printStringPKc>


    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800017b4:	00004797          	auipc	a5,0x4
    800017b8:	f347b783          	ld	a5,-204(a5) # 800056e8 <_GLOBAL_OFFSET_TABLE_+0x10>
        __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800017bc:	10579073          	csrw	stvec,a5
        __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800017c0:	00200793          	li	a5,2
    800017c4:	1007a073          	csrs	sstatus,a5
    }
    800017c8:	00c0006f          	j	800017d4 <main+0x98>
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished()))
    {
        Thread::yield();
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	c98080e7          	jalr	-872(ra) # 80001464 <_ZN6Thread5yieldEv>
    bool isFinished(){return finished;};
    800017d4:	0304c783          	lbu	a5,48(s1)
    while (!(threads[1]->isFinished() &&
    800017d8:	fe078ae3          	beqz	a5,800017cc <main+0x90>
    800017dc:	03094783          	lbu	a5,48(s2)
    800017e0:	fe0786e3          	beqz	a5,800017cc <main+0x90>
    }



    printString("Finished\n");
    800017e4:	00004517          	auipc	a0,0x4
    800017e8:	88c50513          	addi	a0,a0,-1908 # 80005070 <_ZZ12printIntegermE6digits+0x40>
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	db8080e7          	jalr	-584(ra) # 800015a4 <_Z11printStringPKc>

    return 0;
}
    800017f4:	00000513          	li	a0,0
    800017f8:	01813083          	ld	ra,24(sp)
    800017fc:	01013403          	ld	s0,16(sp)
    80001800:	00813483          	ld	s1,8(sp)
    80001804:	00013903          	ld	s2,0(sp)
    80001808:	02010113          	addi	sp,sp,32
    8000180c:	00008067          	ret

0000000080001810 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.h"
#include "../h/Thread.h"

void Riscv::popSppSpie(){
    80001810:	ff010113          	addi	sp,sp,-16
    80001814:	00813423          	sd	s0,8(sp)
    80001818:	01010413          	addi	s0,sp,16
	
	__asm__ volatile("csrw sepc, ra");
    8000181c:	14109073          	csrw	sepc,ra
	__asm__ volatile ("sret");
    80001820:	10200073          	sret
}
    80001824:	00813403          	ld	s0,8(sp)
    80001828:	01010113          	addi	sp,sp,16
    8000182c:	00008067          	ret

0000000080001830 <_ZN5Riscv20handleSupervisorTrapEv>:
void Riscv::handleSupervisorTrap() {
    80001830:	fb010113          	addi	sp,sp,-80
    80001834:	04113423          	sd	ra,72(sp)
    80001838:	04813023          	sd	s0,64(sp)
    8000183c:	02913c23          	sd	s1,56(sp)
    80001840:	03213823          	sd	s2,48(sp)
    80001844:	05010413          	addi	s0,sp,80
        __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001848:	142027f3          	csrr	a5,scause
    8000184c:	faf43c23          	sd	a5,-72(s0)
        return scause;
    80001850:	fb843703          	ld	a4,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001854:	ff870693          	addi	a3,a4,-8
    80001858:	00100793          	li	a5,1
    8000185c:	02d7fe63          	bgeu	a5,a3,80001898 <_ZN5Riscv20handleSupervisorTrapEv+0x68>
    	uint64 sstatus = r_sstatus();
    	Thread::timeSliceCounter = 0;
    	Thread::dispatch();
    	w_sstatus(sstatus);
    	w_sepc(sepc);
    } else if (scause == 0x8000000000000009UL) {
    80001860:	fff00793          	li	a5,-1
    80001864:	03f79793          	slli	a5,a5,0x3f
    80001868:	00978793          	addi	a5,a5,9
    8000186c:	06f70463          	beq	a4,a5,800018d4 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
        console_handler();
    } else if (scause == 0x8000000000000001UL) {
    80001870:	fff00793          	li	a5,-1
    80001874:	03f79793          	slli	a5,a5,0x3f
    80001878:	00178793          	addi	a5,a5,1
    8000187c:	06f70263          	beq	a4,a5,800018e0 <_ZN5Riscv20handleSupervisorTrapEv+0xb0>
    }
        mc_sip(SIP_SSIP);
    } else {
       
    }
}
    80001880:	04813083          	ld	ra,72(sp)
    80001884:	04013403          	ld	s0,64(sp)
    80001888:	03813483          	ld	s1,56(sp)
    8000188c:	03013903          	ld	s2,48(sp)
    80001890:	05010113          	addi	sp,sp,80
    80001894:	00008067          	ret
        __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001898:	141027f3          	csrr	a5,sepc
    8000189c:	fcf43423          	sd	a5,-56(s0)
        return sepc;
    800018a0:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4;
    800018a4:	00448493          	addi	s1,s1,4
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800018a8:	100027f3          	csrr	a5,sstatus
    800018ac:	fcf43023          	sd	a5,-64(s0)
        return sstatus;
    800018b0:	fc043903          	ld	s2,-64(s0)
    	Thread::timeSliceCounter = 0;
    800018b4:	00004797          	auipc	a5,0x4
    800018b8:	e4c7b783          	ld	a5,-436(a5) # 80005700 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018bc:	0007b023          	sd	zero,0(a5)
    	Thread::dispatch();
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	c18080e7          	jalr	-1000(ra) # 800014d8 <_ZN6Thread8dispatchEv>
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800018c8:	10091073          	csrw	sstatus,s2
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800018cc:	14149073          	csrw	sepc,s1
    }
    800018d0:	fb1ff06f          	j	80001880 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        console_handler();
    800018d4:	00002097          	auipc	ra,0x2
    800018d8:	660080e7          	jalr	1632(ra) # 80003f34 <console_handler>
    800018dc:	fa5ff06f          	j	80001880 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
    	Thread::timeSliceCounter++;
    800018e0:	00004717          	auipc	a4,0x4
    800018e4:	e2073703          	ld	a4,-480(a4) # 80005700 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018e8:	00073783          	ld	a5,0(a4)
    800018ec:	00178793          	addi	a5,a5,1
    800018f0:	00f73023          	sd	a5,0(a4)
    if(Thread::timeSliceCounter >= Thread::running -> getTimeSlice())
    800018f4:	00004717          	auipc	a4,0x4
    800018f8:	e1c73703          	ld	a4,-484(a4) # 80005710 <_GLOBAL_OFFSET_TABLE_+0x38>
    800018fc:	00073703          	ld	a4,0(a4)
	return timeSlice;
    80001900:	02873703          	ld	a4,40(a4)
    80001904:	00e7f863          	bgeu	a5,a4,80001914 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
        __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001908:	00200793          	li	a5,2
    8000190c:	1447b073          	csrc	sip,a5
}
    80001910:	f71ff06f          	j	80001880 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001914:	141027f3          	csrr	a5,sepc
    80001918:	fcf43c23          	sd	a5,-40(s0)
        return sepc;
    8000191c:	fd843483          	ld	s1,-40(s0)
        __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001920:	100027f3          	csrr	a5,sstatus
    80001924:	fcf43823          	sd	a5,-48(s0)
        return sstatus;
    80001928:	fd043903          	ld	s2,-48(s0)
    	Thread::timeSliceCounter = 0;
    8000192c:	00004797          	auipc	a5,0x4
    80001930:	dd47b783          	ld	a5,-556(a5) # 80005700 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001934:	0007b023          	sd	zero,0(a5)
    	Thread::dispatch();
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	ba0080e7          	jalr	-1120(ra) # 800014d8 <_ZN6Thread8dispatchEv>
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001940:	10091073          	csrw	sstatus,s2
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001944:	14149073          	csrw	sepc,s1
    }
    80001948:	fc1ff06f          	j	80001908 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>

000000008000194c <_ZN15MemoryAllocator4initEv>:
    }

    return address;
}

void MemoryAllocator::init() {
    8000194c:	ff010113          	addi	sp,sp,-16
    80001950:	00813423          	sd	s0,8(sp)
    80001954:	01010413          	addi	s0,sp,16
    size_t start = (size_t)HEAP_START_ADDR;
    80001958:	00004797          	auipc	a5,0x4
    8000195c:	d887b783          	ld	a5,-632(a5) # 800056e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001960:	0007b783          	ld	a5,0(a5)
    size_t end = (size_t)HEAP_END_ADDR;
    80001964:	00004717          	auipc	a4,0x4
    80001968:	db473703          	ld	a4,-588(a4) # 80005718 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000196c:	00073703          	ld	a4,0(a4)

    start = start % MEM_BLOCK_SIZE == 0 ? start :   (start - start % MEM_BLOCK_SIZE) + MEM_BLOCK_SIZE;
    80001970:	03f7f693          	andi	a3,a5,63
    80001974:	00068663          	beqz	a3,80001980 <_ZN15MemoryAllocator4initEv+0x34>
    80001978:	fc07f793          	andi	a5,a5,-64
    8000197c:	04078793          	addi	a5,a5,64
    end = end % MEM_BLOCK_SIZE == 0 ? end : (end - end % MEM_BLOCK_SIZE);
    80001980:	03f77693          	andi	a3,a4,63
    80001984:	00068463          	beqz	a3,8000198c <_ZN15MemoryAllocator4initEv+0x40>
    80001988:	fc077713          	andi	a4,a4,-64

    head = (segmentHeader*) start;
    8000198c:	00004697          	auipc	a3,0x4
    80001990:	def6be23          	sd	a5,-516(a3) # 80005788 <_ZN15MemoryAllocator4headE>
    head->size = end - start - MEM_BLOCK_SIZE;
    80001994:	40f70733          	sub	a4,a4,a5
    80001998:	fc070713          	addi	a4,a4,-64
    8000199c:	00e7b423          	sd	a4,8(a5)
    head -> next = nullptr;
    800019a0:	0007b023          	sd	zero,0(a5)
}
    800019a4:	00813403          	ld	s0,8(sp)
    800019a8:	01010113          	addi	sp,sp,16
    800019ac:	00008067          	ret

00000000800019b0 <_ZN15MemoryAllocator7kmallocEm>:
void *MemoryAllocator::kmalloc(size_t size) {  // argument is in bytes
    800019b0:	fe010113          	addi	sp,sp,-32
    800019b4:	00113c23          	sd	ra,24(sp)
    800019b8:	00813823          	sd	s0,16(sp)
    800019bc:	00913423          	sd	s1,8(sp)
    800019c0:	02010413          	addi	s0,sp,32
    800019c4:	00050493          	mv	s1,a0
    if(!isinit){
    800019c8:	00004797          	auipc	a5,0x4
    800019cc:	dc87c783          	lbu	a5,-568(a5) # 80005790 <_ZN15MemoryAllocator6isinitE>
    800019d0:	02078863          	beqz	a5,80001a00 <_ZN15MemoryAllocator7kmallocEm+0x50>
    size_t bytes_needed = (size_t)((size + MEM_BLOCK_SIZE - 1 ) / MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    800019d4:	03f48713          	addi	a4,s1,63
    800019d8:	fc077713          	andi	a4,a4,-64
    segmentHeader* curr = head;
    800019dc:	00004797          	auipc	a5,0x4
    800019e0:	dac7b783          	ld	a5,-596(a5) # 80005788 <_ZN15MemoryAllocator4headE>
    segmentHeader* prev = nullptr;
    800019e4:	00000613          	li	a2,0
    for(;curr; curr = curr -> next){
    800019e8:	02078c63          	beqz	a5,80001a20 <_ZN15MemoryAllocator7kmallocEm+0x70>
        if(curr -> size >= bytes_needed) {
    800019ec:	0087b683          	ld	a3,8(a5)
    800019f0:	02e6f463          	bgeu	a3,a4,80001a18 <_ZN15MemoryAllocator7kmallocEm+0x68>
        prev = curr;
    800019f4:	00078613          	mv	a2,a5
    for(;curr; curr = curr -> next){
    800019f8:	0007b783          	ld	a5,0(a5)
    800019fc:	fedff06f          	j	800019e8 <_ZN15MemoryAllocator7kmallocEm+0x38>
        isinit = true;
    80001a00:	00100793          	li	a5,1
    80001a04:	00004717          	auipc	a4,0x4
    80001a08:	d8f70623          	sb	a5,-628(a4) # 80005790 <_ZN15MemoryAllocator6isinitE>
        init();
    80001a0c:	00000097          	auipc	ra,0x0
    80001a10:	f40080e7          	jalr	-192(ra) # 8000194c <_ZN15MemoryAllocator4initEv>
    80001a14:	fc1ff06f          	j	800019d4 <_ZN15MemoryAllocator7kmallocEm+0x24>
            address = (void*) ((size_t) curr + MEM_BLOCK_SIZE);
    80001a18:	04078513          	addi	a0,a5,64
            break;
    80001a1c:	0080006f          	j	80001a24 <_ZN15MemoryAllocator7kmallocEm+0x74>
    void* address = nullptr;
    80001a20:	00078513          	mv	a0,a5
    if(!curr) return nullptr;
    80001a24:	06078063          	beqz	a5,80001a84 <_ZN15MemoryAllocator7kmallocEm+0xd4>
    size_t remaining_bytes = curr->size - bytes_needed;
    80001a28:	0087b683          	ld	a3,8(a5)
    80001a2c:	40e686b3          	sub	a3,a3,a4
    if(remaining_bytes >= 2*MEM_BLOCK_SIZE){  //there is enough space for header and minimum one block
    80001a30:	07f00593          	li	a1,127
    80001a34:	02d5fe63          	bgeu	a1,a3,80001a70 <_ZN15MemoryAllocator7kmallocEm+0xc0>
        next_free_node = (segmentHeader*)((char*)curr + bytes_needed + MEM_BLOCK_SIZE);
    80001a38:	04070593          	addi	a1,a4,64
    80001a3c:	00b785b3          	add	a1,a5,a1
        next_free_node -> next = curr -> next;
    80001a40:	0007b803          	ld	a6,0(a5)
    80001a44:	0105b023          	sd	a6,0(a1)
        next_free_node -> size = remaining_bytes - MEM_BLOCK_SIZE;
    80001a48:	fc068693          	addi	a3,a3,-64
    80001a4c:	00d5b423          	sd	a3,8(a1)
        curr -> size = bytes_needed;
    80001a50:	00e7b423          	sd	a4,8(a5)
    if(prev){
    80001a54:	02060263          	beqz	a2,80001a78 <_ZN15MemoryAllocator7kmallocEm+0xc8>
        prev -> next = next_free_node;
    80001a58:	00b63023          	sd	a1,0(a2)
}
    80001a5c:	01813083          	ld	ra,24(sp)
    80001a60:	01013403          	ld	s0,16(sp)
    80001a64:	00813483          	ld	s1,8(sp)
    80001a68:	02010113          	addi	sp,sp,32
    80001a6c:	00008067          	ret
        next_free_node = curr -> next;
    80001a70:	0007b583          	ld	a1,0(a5)
    80001a74:	fe1ff06f          	j	80001a54 <_ZN15MemoryAllocator7kmallocEm+0xa4>
        head = next_free_node;
    80001a78:	00004797          	auipc	a5,0x4
    80001a7c:	d0b7b823          	sd	a1,-752(a5) # 80005788 <_ZN15MemoryAllocator4headE>
    80001a80:	fddff06f          	j	80001a5c <_ZN15MemoryAllocator7kmallocEm+0xac>
    if(!curr) return nullptr;
    80001a84:	00078513          	mv	a0,a5
    80001a88:	fd5ff06f          	j	80001a5c <_ZN15MemoryAllocator7kmallocEm+0xac>

0000000080001a8c <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>:



void MemoryAllocator::tryMerge(segmentHeader *block) {
    80001a8c:	ff010113          	addi	sp,sp,-16
    80001a90:	00813423          	sd	s0,8(sp)
    80001a94:	01010413          	addi	s0,sp,16
    if(!block) return;
    80001a98:	00050e63          	beqz	a0,80001ab4 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    segmentHeader* next_seg = block -> next;
    80001a9c:	00053783          	ld	a5,0(a0)

    if(!next_seg) return;
    80001aa0:	00078a63          	beqz	a5,80001ab4 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    if((char*) block +  MEM_BLOCK_SIZE + block -> size == (char*) next_seg){
    80001aa4:	00853683          	ld	a3,8(a0)
    80001aa8:	04068713          	addi	a4,a3,64
    80001aac:	00e50733          	add	a4,a0,a4
    80001ab0:	00f70863          	beq	a4,a5,80001ac0 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x34>
        block -> next = next_seg -> next;
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    }
}
    80001ab4:	00813403          	ld	s0,8(sp)
    80001ab8:	01010113          	addi	sp,sp,16
    80001abc:	00008067          	ret
        block -> next = next_seg -> next;
    80001ac0:	0007b703          	ld	a4,0(a5)
    80001ac4:	00e53023          	sd	a4,0(a0)
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    80001ac8:	0087b783          	ld	a5,8(a5)
    80001acc:	00f686b3          	add	a3,a3,a5
    80001ad0:	04068693          	addi	a3,a3,64
    80001ad4:	00d53423          	sd	a3,8(a0)
    80001ad8:	fddff06f          	j	80001ab4 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

0000000080001adc <_ZN15MemoryAllocator5kfreeEPv>:
int MemoryAllocator::kfree(void *addr) {
    80001adc:	fe010113          	addi	sp,sp,-32
    80001ae0:	00113c23          	sd	ra,24(sp)
    80001ae4:	00813823          	sd	s0,16(sp)
    80001ae8:	00913423          	sd	s1,8(sp)
    80001aec:	01213023          	sd	s2,0(sp)
    80001af0:	02010413          	addi	s0,sp,32
    80001af4:	00050913          	mv	s2,a0
    if(!isinit){ isinit = true; init(); }
    80001af8:	00004797          	auipc	a5,0x4
    80001afc:	c987c783          	lbu	a5,-872(a5) # 80005790 <_ZN15MemoryAllocator6isinitE>
    80001b00:	04078a63          	beqz	a5,80001b54 <_ZN15MemoryAllocator5kfreeEPv+0x78>
    if(!addr) return -1;
    80001b04:	0a090c63          	beqz	s2,80001bbc <_ZN15MemoryAllocator5kfreeEPv+0xe0>
    segmentHeader* newFree = (segmentHeader*)((char*)addr - MEM_BLOCK_SIZE);
    80001b08:	fc090513          	addi	a0,s2,-64
    if((size_t)newFree < (size_t)HEAP_START_ADDR || (size_t)newFree >= (size_t)HEAP_END_ADDR) {
    80001b0c:	00004797          	auipc	a5,0x4
    80001b10:	bd47b783          	ld	a5,-1068(a5) # 800056e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b14:	0007b783          	ld	a5,0(a5)
    80001b18:	0af56663          	bltu	a0,a5,80001bc4 <_ZN15MemoryAllocator5kfreeEPv+0xe8>
    80001b1c:	00004797          	auipc	a5,0x4
    80001b20:	bfc7b783          	ld	a5,-1028(a5) # 80005718 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001b24:	0007b783          	ld	a5,0(a5)
    80001b28:	0af57263          	bgeu	a0,a5,80001bcc <_ZN15MemoryAllocator5kfreeEPv+0xf0>
    segmentHeader* curr = head;
    80001b2c:	00004717          	auipc	a4,0x4
    80001b30:	c5c73703          	ld	a4,-932(a4) # 80005788 <_ZN15MemoryAllocator4headE>
    80001b34:	00070793          	mv	a5,a4
    segmentHeader* prev = nullptr;
    80001b38:	00000493          	li	s1,0
    while(curr) {
    80001b3c:	02078863          	beqz	a5,80001b6c <_ZN15MemoryAllocator5kfreeEPv+0x90>
        if(curr == newFree) {
    80001b40:	08a78a63          	beq	a5,a0,80001bd4 <_ZN15MemoryAllocator5kfreeEPv+0xf8>
        if(curr > newFree) break;
    80001b44:	02f56463          	bltu	a0,a5,80001b6c <_ZN15MemoryAllocator5kfreeEPv+0x90>
        prev = curr;
    80001b48:	00078493          	mv	s1,a5
        curr = curr->next;
    80001b4c:	0007b783          	ld	a5,0(a5)
    while(curr) {
    80001b50:	fedff06f          	j	80001b3c <_ZN15MemoryAllocator5kfreeEPv+0x60>
    if(!isinit){ isinit = true; init(); }
    80001b54:	00100793          	li	a5,1
    80001b58:	00004717          	auipc	a4,0x4
    80001b5c:	c2f70c23          	sb	a5,-968(a4) # 80005790 <_ZN15MemoryAllocator6isinitE>
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	dec080e7          	jalr	-532(ra) # 8000194c <_ZN15MemoryAllocator4initEv>
    80001b68:	f9dff06f          	j	80001b04 <_ZN15MemoryAllocator5kfreeEPv+0x28>
    if(prev) {
    80001b6c:	04048063          	beqz	s1,80001bac <_ZN15MemoryAllocator5kfreeEPv+0xd0>
        newFree->next = prev->next;
    80001b70:	0004b783          	ld	a5,0(s1)
    80001b74:	fcf93023          	sd	a5,-64(s2)
        prev->next = newFree;
    80001b78:	00a4b023          	sd	a0,0(s1)
    tryMerge(newFree);
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	f10080e7          	jalr	-240(ra) # 80001a8c <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    tryMerge(prev);
    80001b84:	00048513          	mv	a0,s1
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	f04080e7          	jalr	-252(ra) # 80001a8c <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    return 0;
    80001b90:	00000513          	li	a0,0
}
    80001b94:	01813083          	ld	ra,24(sp)
    80001b98:	01013403          	ld	s0,16(sp)
    80001b9c:	00813483          	ld	s1,8(sp)
    80001ba0:	00013903          	ld	s2,0(sp)
    80001ba4:	02010113          	addi	sp,sp,32
    80001ba8:	00008067          	ret
        newFree->next = head;
    80001bac:	fce93023          	sd	a4,-64(s2)
        head = newFree;
    80001bb0:	00004797          	auipc	a5,0x4
    80001bb4:	bca7bc23          	sd	a0,-1064(a5) # 80005788 <_ZN15MemoryAllocator4headE>
    80001bb8:	fc5ff06f          	j	80001b7c <_ZN15MemoryAllocator5kfreeEPv+0xa0>
    if(!addr) return -1;
    80001bbc:	fff00513          	li	a0,-1
    80001bc0:	fd5ff06f          	j	80001b94 <_ZN15MemoryAllocator5kfreeEPv+0xb8>
        return -1;
    80001bc4:	fff00513          	li	a0,-1
    80001bc8:	fcdff06f          	j	80001b94 <_ZN15MemoryAllocator5kfreeEPv+0xb8>
    80001bcc:	fff00513          	li	a0,-1
    80001bd0:	fc5ff06f          	j	80001b94 <_ZN15MemoryAllocator5kfreeEPv+0xb8>
            return -1;
    80001bd4:	fff00513          	li	a0,-1
    80001bd8:	fbdff06f          	j	80001b94 <_ZN15MemoryAllocator5kfreeEPv+0xb8>

0000000080001bdc <start>:
    80001bdc:	ff010113          	addi	sp,sp,-16
    80001be0:	00813423          	sd	s0,8(sp)
    80001be4:	01010413          	addi	s0,sp,16
    80001be8:	300027f3          	csrr	a5,mstatus
    80001bec:	ffffe737          	lui	a4,0xffffe
    80001bf0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7def>
    80001bf4:	00e7f7b3          	and	a5,a5,a4
    80001bf8:	00001737          	lui	a4,0x1
    80001bfc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001c00:	00e7e7b3          	or	a5,a5,a4
    80001c04:	30079073          	csrw	mstatus,a5
    80001c08:	00000797          	auipc	a5,0x0
    80001c0c:	16078793          	addi	a5,a5,352 # 80001d68 <system_main>
    80001c10:	34179073          	csrw	mepc,a5
    80001c14:	00000793          	li	a5,0
    80001c18:	18079073          	csrw	satp,a5
    80001c1c:	000107b7          	lui	a5,0x10
    80001c20:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c24:	30279073          	csrw	medeleg,a5
    80001c28:	30379073          	csrw	mideleg,a5
    80001c2c:	104027f3          	csrr	a5,sie
    80001c30:	2227e793          	ori	a5,a5,546
    80001c34:	10479073          	csrw	sie,a5
    80001c38:	fff00793          	li	a5,-1
    80001c3c:	00a7d793          	srli	a5,a5,0xa
    80001c40:	3b079073          	csrw	pmpaddr0,a5
    80001c44:	00f00793          	li	a5,15
    80001c48:	3a079073          	csrw	pmpcfg0,a5
    80001c4c:	f14027f3          	csrr	a5,mhartid
    80001c50:	0200c737          	lui	a4,0x200c
    80001c54:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001c58:	0007869b          	sext.w	a3,a5
    80001c5c:	00269713          	slli	a4,a3,0x2
    80001c60:	000f4637          	lui	a2,0xf4
    80001c64:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001c68:	00d70733          	add	a4,a4,a3
    80001c6c:	0037979b          	slliw	a5,a5,0x3
    80001c70:	020046b7          	lui	a3,0x2004
    80001c74:	00d787b3          	add	a5,a5,a3
    80001c78:	00c585b3          	add	a1,a1,a2
    80001c7c:	00371693          	slli	a3,a4,0x3
    80001c80:	00004717          	auipc	a4,0x4
    80001c84:	b2070713          	addi	a4,a4,-1248 # 800057a0 <timer_scratch>
    80001c88:	00b7b023          	sd	a1,0(a5)
    80001c8c:	00d70733          	add	a4,a4,a3
    80001c90:	00f73c23          	sd	a5,24(a4)
    80001c94:	02c73023          	sd	a2,32(a4)
    80001c98:	34071073          	csrw	mscratch,a4
    80001c9c:	00000797          	auipc	a5,0x0
    80001ca0:	6e478793          	addi	a5,a5,1764 # 80002380 <timervec>
    80001ca4:	30579073          	csrw	mtvec,a5
    80001ca8:	300027f3          	csrr	a5,mstatus
    80001cac:	0087e793          	ori	a5,a5,8
    80001cb0:	30079073          	csrw	mstatus,a5
    80001cb4:	304027f3          	csrr	a5,mie
    80001cb8:	0807e793          	ori	a5,a5,128
    80001cbc:	30479073          	csrw	mie,a5
    80001cc0:	f14027f3          	csrr	a5,mhartid
    80001cc4:	0007879b          	sext.w	a5,a5
    80001cc8:	00078213          	mv	tp,a5
    80001ccc:	30200073          	mret
    80001cd0:	00813403          	ld	s0,8(sp)
    80001cd4:	01010113          	addi	sp,sp,16
    80001cd8:	00008067          	ret

0000000080001cdc <timerinit>:
    80001cdc:	ff010113          	addi	sp,sp,-16
    80001ce0:	00813423          	sd	s0,8(sp)
    80001ce4:	01010413          	addi	s0,sp,16
    80001ce8:	f14027f3          	csrr	a5,mhartid
    80001cec:	0200c737          	lui	a4,0x200c
    80001cf0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001cf4:	0007869b          	sext.w	a3,a5
    80001cf8:	00269713          	slli	a4,a3,0x2
    80001cfc:	000f4637          	lui	a2,0xf4
    80001d00:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001d04:	00d70733          	add	a4,a4,a3
    80001d08:	0037979b          	slliw	a5,a5,0x3
    80001d0c:	020046b7          	lui	a3,0x2004
    80001d10:	00d787b3          	add	a5,a5,a3
    80001d14:	00c585b3          	add	a1,a1,a2
    80001d18:	00371693          	slli	a3,a4,0x3
    80001d1c:	00004717          	auipc	a4,0x4
    80001d20:	a8470713          	addi	a4,a4,-1404 # 800057a0 <timer_scratch>
    80001d24:	00b7b023          	sd	a1,0(a5)
    80001d28:	00d70733          	add	a4,a4,a3
    80001d2c:	00f73c23          	sd	a5,24(a4)
    80001d30:	02c73023          	sd	a2,32(a4)
    80001d34:	34071073          	csrw	mscratch,a4
    80001d38:	00000797          	auipc	a5,0x0
    80001d3c:	64878793          	addi	a5,a5,1608 # 80002380 <timervec>
    80001d40:	30579073          	csrw	mtvec,a5
    80001d44:	300027f3          	csrr	a5,mstatus
    80001d48:	0087e793          	ori	a5,a5,8
    80001d4c:	30079073          	csrw	mstatus,a5
    80001d50:	304027f3          	csrr	a5,mie
    80001d54:	0807e793          	ori	a5,a5,128
    80001d58:	30479073          	csrw	mie,a5
    80001d5c:	00813403          	ld	s0,8(sp)
    80001d60:	01010113          	addi	sp,sp,16
    80001d64:	00008067          	ret

0000000080001d68 <system_main>:
    80001d68:	fe010113          	addi	sp,sp,-32
    80001d6c:	00813823          	sd	s0,16(sp)
    80001d70:	00913423          	sd	s1,8(sp)
    80001d74:	00113c23          	sd	ra,24(sp)
    80001d78:	02010413          	addi	s0,sp,32
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	0c4080e7          	jalr	196(ra) # 80001e40 <cpuid>
    80001d84:	00004497          	auipc	s1,0x4
    80001d88:	9ac48493          	addi	s1,s1,-1620 # 80005730 <started>
    80001d8c:	02050263          	beqz	a0,80001db0 <system_main+0x48>
    80001d90:	0004a783          	lw	a5,0(s1)
    80001d94:	0007879b          	sext.w	a5,a5
    80001d98:	fe078ce3          	beqz	a5,80001d90 <system_main+0x28>
    80001d9c:	0ff0000f          	fence
    80001da0:	00003517          	auipc	a0,0x3
    80001da4:	31050513          	addi	a0,a0,784 # 800050b0 <_ZZ12printIntegermE6digits+0x80>
    80001da8:	00001097          	auipc	ra,0x1
    80001dac:	a74080e7          	jalr	-1420(ra) # 8000281c <panic>
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	9c8080e7          	jalr	-1592(ra) # 80002778 <consoleinit>
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	154080e7          	jalr	340(ra) # 80002f0c <printfinit>
    80001dc0:	00003517          	auipc	a0,0x3
    80001dc4:	2b850513          	addi	a0,a0,696 # 80005078 <_ZZ12printIntegermE6digits+0x48>
    80001dc8:	00001097          	auipc	ra,0x1
    80001dcc:	ab0080e7          	jalr	-1360(ra) # 80002878 <__printf>
    80001dd0:	00003517          	auipc	a0,0x3
    80001dd4:	2b050513          	addi	a0,a0,688 # 80005080 <_ZZ12printIntegermE6digits+0x50>
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	aa0080e7          	jalr	-1376(ra) # 80002878 <__printf>
    80001de0:	00003517          	auipc	a0,0x3
    80001de4:	29850513          	addi	a0,a0,664 # 80005078 <_ZZ12printIntegermE6digits+0x48>
    80001de8:	00001097          	auipc	ra,0x1
    80001dec:	a90080e7          	jalr	-1392(ra) # 80002878 <__printf>
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	4a8080e7          	jalr	1192(ra) # 80003298 <kinit>
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	148080e7          	jalr	328(ra) # 80001f40 <trapinit>
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	16c080e7          	jalr	364(ra) # 80001f6c <trapinithart>
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	5b8080e7          	jalr	1464(ra) # 800023c0 <plicinit>
    80001e10:	00000097          	auipc	ra,0x0
    80001e14:	5d8080e7          	jalr	1496(ra) # 800023e8 <plicinithart>
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	078080e7          	jalr	120(ra) # 80001e90 <userinit>
    80001e20:	0ff0000f          	fence
    80001e24:	00100793          	li	a5,1
    80001e28:	00003517          	auipc	a0,0x3
    80001e2c:	27050513          	addi	a0,a0,624 # 80005098 <_ZZ12printIntegermE6digits+0x68>
    80001e30:	00f4a023          	sw	a5,0(s1)
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	a44080e7          	jalr	-1468(ra) # 80002878 <__printf>
    80001e3c:	0000006f          	j	80001e3c <system_main+0xd4>

0000000080001e40 <cpuid>:
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00813423          	sd	s0,8(sp)
    80001e48:	01010413          	addi	s0,sp,16
    80001e4c:	00020513          	mv	a0,tp
    80001e50:	00813403          	ld	s0,8(sp)
    80001e54:	0005051b          	sext.w	a0,a0
    80001e58:	01010113          	addi	sp,sp,16
    80001e5c:	00008067          	ret

0000000080001e60 <mycpu>:
    80001e60:	ff010113          	addi	sp,sp,-16
    80001e64:	00813423          	sd	s0,8(sp)
    80001e68:	01010413          	addi	s0,sp,16
    80001e6c:	00020793          	mv	a5,tp
    80001e70:	00813403          	ld	s0,8(sp)
    80001e74:	0007879b          	sext.w	a5,a5
    80001e78:	00779793          	slli	a5,a5,0x7
    80001e7c:	00005517          	auipc	a0,0x5
    80001e80:	95450513          	addi	a0,a0,-1708 # 800067d0 <cpus>
    80001e84:	00f50533          	add	a0,a0,a5
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret

0000000080001e90 <userinit>:
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00813423          	sd	s0,8(sp)
    80001e98:	01010413          	addi	s0,sp,16
    80001e9c:	00813403          	ld	s0,8(sp)
    80001ea0:	01010113          	addi	sp,sp,16
    80001ea4:	00000317          	auipc	t1,0x0
    80001ea8:	89830067          	jr	-1896(t1) # 8000173c <main>

0000000080001eac <either_copyout>:
    80001eac:	ff010113          	addi	sp,sp,-16
    80001eb0:	00813023          	sd	s0,0(sp)
    80001eb4:	00113423          	sd	ra,8(sp)
    80001eb8:	01010413          	addi	s0,sp,16
    80001ebc:	02051663          	bnez	a0,80001ee8 <either_copyout+0x3c>
    80001ec0:	00058513          	mv	a0,a1
    80001ec4:	00060593          	mv	a1,a2
    80001ec8:	0006861b          	sext.w	a2,a3
    80001ecc:	00002097          	auipc	ra,0x2
    80001ed0:	c58080e7          	jalr	-936(ra) # 80003b24 <__memmove>
    80001ed4:	00813083          	ld	ra,8(sp)
    80001ed8:	00013403          	ld	s0,0(sp)
    80001edc:	00000513          	li	a0,0
    80001ee0:	01010113          	addi	sp,sp,16
    80001ee4:	00008067          	ret
    80001ee8:	00003517          	auipc	a0,0x3
    80001eec:	1f050513          	addi	a0,a0,496 # 800050d8 <_ZZ12printIntegermE6digits+0xa8>
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	92c080e7          	jalr	-1748(ra) # 8000281c <panic>

0000000080001ef8 <either_copyin>:
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00813023          	sd	s0,0(sp)
    80001f00:	00113423          	sd	ra,8(sp)
    80001f04:	01010413          	addi	s0,sp,16
    80001f08:	02059463          	bnez	a1,80001f30 <either_copyin+0x38>
    80001f0c:	00060593          	mv	a1,a2
    80001f10:	0006861b          	sext.w	a2,a3
    80001f14:	00002097          	auipc	ra,0x2
    80001f18:	c10080e7          	jalr	-1008(ra) # 80003b24 <__memmove>
    80001f1c:	00813083          	ld	ra,8(sp)
    80001f20:	00013403          	ld	s0,0(sp)
    80001f24:	00000513          	li	a0,0
    80001f28:	01010113          	addi	sp,sp,16
    80001f2c:	00008067          	ret
    80001f30:	00003517          	auipc	a0,0x3
    80001f34:	1d050513          	addi	a0,a0,464 # 80005100 <_ZZ12printIntegermE6digits+0xd0>
    80001f38:	00001097          	auipc	ra,0x1
    80001f3c:	8e4080e7          	jalr	-1820(ra) # 8000281c <panic>

0000000080001f40 <trapinit>:
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00813423          	sd	s0,8(sp)
    80001f48:	01010413          	addi	s0,sp,16
    80001f4c:	00813403          	ld	s0,8(sp)
    80001f50:	00003597          	auipc	a1,0x3
    80001f54:	1d858593          	addi	a1,a1,472 # 80005128 <_ZZ12printIntegermE6digits+0xf8>
    80001f58:	00005517          	auipc	a0,0x5
    80001f5c:	8f850513          	addi	a0,a0,-1800 # 80006850 <tickslock>
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00001317          	auipc	t1,0x1
    80001f68:	5c430067          	jr	1476(t1) # 80003528 <initlock>

0000000080001f6c <trapinithart>:
    80001f6c:	ff010113          	addi	sp,sp,-16
    80001f70:	00813423          	sd	s0,8(sp)
    80001f74:	01010413          	addi	s0,sp,16
    80001f78:	00000797          	auipc	a5,0x0
    80001f7c:	2f878793          	addi	a5,a5,760 # 80002270 <kernelvec>
    80001f80:	10579073          	csrw	stvec,a5
    80001f84:	00813403          	ld	s0,8(sp)
    80001f88:	01010113          	addi	sp,sp,16
    80001f8c:	00008067          	ret

0000000080001f90 <usertrap>:
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00813423          	sd	s0,8(sp)
    80001f98:	01010413          	addi	s0,sp,16
    80001f9c:	00813403          	ld	s0,8(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <usertrapret>:
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00813423          	sd	s0,8(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    80001fb4:	00813403          	ld	s0,8(sp)
    80001fb8:	01010113          	addi	sp,sp,16
    80001fbc:	00008067          	ret

0000000080001fc0 <kerneltrap>:
    80001fc0:	fe010113          	addi	sp,sp,-32
    80001fc4:	00813823          	sd	s0,16(sp)
    80001fc8:	00113c23          	sd	ra,24(sp)
    80001fcc:	00913423          	sd	s1,8(sp)
    80001fd0:	02010413          	addi	s0,sp,32
    80001fd4:	142025f3          	csrr	a1,scause
    80001fd8:	100027f3          	csrr	a5,sstatus
    80001fdc:	0027f793          	andi	a5,a5,2
    80001fe0:	10079c63          	bnez	a5,800020f8 <kerneltrap+0x138>
    80001fe4:	142027f3          	csrr	a5,scause
    80001fe8:	0207ce63          	bltz	a5,80002024 <kerneltrap+0x64>
    80001fec:	00003517          	auipc	a0,0x3
    80001ff0:	18450513          	addi	a0,a0,388 # 80005170 <_ZZ12printIntegermE6digits+0x140>
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	884080e7          	jalr	-1916(ra) # 80002878 <__printf>
    80001ffc:	141025f3          	csrr	a1,sepc
    80002000:	14302673          	csrr	a2,stval
    80002004:	00003517          	auipc	a0,0x3
    80002008:	17c50513          	addi	a0,a0,380 # 80005180 <_ZZ12printIntegermE6digits+0x150>
    8000200c:	00001097          	auipc	ra,0x1
    80002010:	86c080e7          	jalr	-1940(ra) # 80002878 <__printf>
    80002014:	00003517          	auipc	a0,0x3
    80002018:	18450513          	addi	a0,a0,388 # 80005198 <_ZZ12printIntegermE6digits+0x168>
    8000201c:	00001097          	auipc	ra,0x1
    80002020:	800080e7          	jalr	-2048(ra) # 8000281c <panic>
    80002024:	0ff7f713          	andi	a4,a5,255
    80002028:	00900693          	li	a3,9
    8000202c:	04d70063          	beq	a4,a3,8000206c <kerneltrap+0xac>
    80002030:	fff00713          	li	a4,-1
    80002034:	03f71713          	slli	a4,a4,0x3f
    80002038:	00170713          	addi	a4,a4,1
    8000203c:	fae798e3          	bne	a5,a4,80001fec <kerneltrap+0x2c>
    80002040:	00000097          	auipc	ra,0x0
    80002044:	e00080e7          	jalr	-512(ra) # 80001e40 <cpuid>
    80002048:	06050663          	beqz	a0,800020b4 <kerneltrap+0xf4>
    8000204c:	144027f3          	csrr	a5,sip
    80002050:	ffd7f793          	andi	a5,a5,-3
    80002054:	14479073          	csrw	sip,a5
    80002058:	01813083          	ld	ra,24(sp)
    8000205c:	01013403          	ld	s0,16(sp)
    80002060:	00813483          	ld	s1,8(sp)
    80002064:	02010113          	addi	sp,sp,32
    80002068:	00008067          	ret
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	3c8080e7          	jalr	968(ra) # 80002434 <plic_claim>
    80002074:	00a00793          	li	a5,10
    80002078:	00050493          	mv	s1,a0
    8000207c:	06f50863          	beq	a0,a5,800020ec <kerneltrap+0x12c>
    80002080:	fc050ce3          	beqz	a0,80002058 <kerneltrap+0x98>
    80002084:	00050593          	mv	a1,a0
    80002088:	00003517          	auipc	a0,0x3
    8000208c:	0c850513          	addi	a0,a0,200 # 80005150 <_ZZ12printIntegermE6digits+0x120>
    80002090:	00000097          	auipc	ra,0x0
    80002094:	7e8080e7          	jalr	2024(ra) # 80002878 <__printf>
    80002098:	01013403          	ld	s0,16(sp)
    8000209c:	01813083          	ld	ra,24(sp)
    800020a0:	00048513          	mv	a0,s1
    800020a4:	00813483          	ld	s1,8(sp)
    800020a8:	02010113          	addi	sp,sp,32
    800020ac:	00000317          	auipc	t1,0x0
    800020b0:	3c030067          	jr	960(t1) # 8000246c <plic_complete>
    800020b4:	00004517          	auipc	a0,0x4
    800020b8:	79c50513          	addi	a0,a0,1948 # 80006850 <tickslock>
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	490080e7          	jalr	1168(ra) # 8000354c <acquire>
    800020c4:	00003717          	auipc	a4,0x3
    800020c8:	67070713          	addi	a4,a4,1648 # 80005734 <ticks>
    800020cc:	00072783          	lw	a5,0(a4)
    800020d0:	00004517          	auipc	a0,0x4
    800020d4:	78050513          	addi	a0,a0,1920 # 80006850 <tickslock>
    800020d8:	0017879b          	addiw	a5,a5,1
    800020dc:	00f72023          	sw	a5,0(a4)
    800020e0:	00001097          	auipc	ra,0x1
    800020e4:	538080e7          	jalr	1336(ra) # 80003618 <release>
    800020e8:	f65ff06f          	j	8000204c <kerneltrap+0x8c>
    800020ec:	00001097          	auipc	ra,0x1
    800020f0:	094080e7          	jalr	148(ra) # 80003180 <uartintr>
    800020f4:	fa5ff06f          	j	80002098 <kerneltrap+0xd8>
    800020f8:	00003517          	auipc	a0,0x3
    800020fc:	03850513          	addi	a0,a0,56 # 80005130 <_ZZ12printIntegermE6digits+0x100>
    80002100:	00000097          	auipc	ra,0x0
    80002104:	71c080e7          	jalr	1820(ra) # 8000281c <panic>

0000000080002108 <clockintr>:
    80002108:	fe010113          	addi	sp,sp,-32
    8000210c:	00813823          	sd	s0,16(sp)
    80002110:	00913423          	sd	s1,8(sp)
    80002114:	00113c23          	sd	ra,24(sp)
    80002118:	02010413          	addi	s0,sp,32
    8000211c:	00004497          	auipc	s1,0x4
    80002120:	73448493          	addi	s1,s1,1844 # 80006850 <tickslock>
    80002124:	00048513          	mv	a0,s1
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	424080e7          	jalr	1060(ra) # 8000354c <acquire>
    80002130:	00003717          	auipc	a4,0x3
    80002134:	60470713          	addi	a4,a4,1540 # 80005734 <ticks>
    80002138:	00072783          	lw	a5,0(a4)
    8000213c:	01013403          	ld	s0,16(sp)
    80002140:	01813083          	ld	ra,24(sp)
    80002144:	00048513          	mv	a0,s1
    80002148:	0017879b          	addiw	a5,a5,1
    8000214c:	00813483          	ld	s1,8(sp)
    80002150:	00f72023          	sw	a5,0(a4)
    80002154:	02010113          	addi	sp,sp,32
    80002158:	00001317          	auipc	t1,0x1
    8000215c:	4c030067          	jr	1216(t1) # 80003618 <release>

0000000080002160 <devintr>:
    80002160:	142027f3          	csrr	a5,scause
    80002164:	00000513          	li	a0,0
    80002168:	0007c463          	bltz	a5,80002170 <devintr+0x10>
    8000216c:	00008067          	ret
    80002170:	fe010113          	addi	sp,sp,-32
    80002174:	00813823          	sd	s0,16(sp)
    80002178:	00113c23          	sd	ra,24(sp)
    8000217c:	00913423          	sd	s1,8(sp)
    80002180:	02010413          	addi	s0,sp,32
    80002184:	0ff7f713          	andi	a4,a5,255
    80002188:	00900693          	li	a3,9
    8000218c:	04d70c63          	beq	a4,a3,800021e4 <devintr+0x84>
    80002190:	fff00713          	li	a4,-1
    80002194:	03f71713          	slli	a4,a4,0x3f
    80002198:	00170713          	addi	a4,a4,1
    8000219c:	00e78c63          	beq	a5,a4,800021b4 <devintr+0x54>
    800021a0:	01813083          	ld	ra,24(sp)
    800021a4:	01013403          	ld	s0,16(sp)
    800021a8:	00813483          	ld	s1,8(sp)
    800021ac:	02010113          	addi	sp,sp,32
    800021b0:	00008067          	ret
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	c8c080e7          	jalr	-884(ra) # 80001e40 <cpuid>
    800021bc:	06050663          	beqz	a0,80002228 <devintr+0xc8>
    800021c0:	144027f3          	csrr	a5,sip
    800021c4:	ffd7f793          	andi	a5,a5,-3
    800021c8:	14479073          	csrw	sip,a5
    800021cc:	01813083          	ld	ra,24(sp)
    800021d0:	01013403          	ld	s0,16(sp)
    800021d4:	00813483          	ld	s1,8(sp)
    800021d8:	00200513          	li	a0,2
    800021dc:	02010113          	addi	sp,sp,32
    800021e0:	00008067          	ret
    800021e4:	00000097          	auipc	ra,0x0
    800021e8:	250080e7          	jalr	592(ra) # 80002434 <plic_claim>
    800021ec:	00a00793          	li	a5,10
    800021f0:	00050493          	mv	s1,a0
    800021f4:	06f50663          	beq	a0,a5,80002260 <devintr+0x100>
    800021f8:	00100513          	li	a0,1
    800021fc:	fa0482e3          	beqz	s1,800021a0 <devintr+0x40>
    80002200:	00048593          	mv	a1,s1
    80002204:	00003517          	auipc	a0,0x3
    80002208:	f4c50513          	addi	a0,a0,-180 # 80005150 <_ZZ12printIntegermE6digits+0x120>
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	66c080e7          	jalr	1644(ra) # 80002878 <__printf>
    80002214:	00048513          	mv	a0,s1
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	254080e7          	jalr	596(ra) # 8000246c <plic_complete>
    80002220:	00100513          	li	a0,1
    80002224:	f7dff06f          	j	800021a0 <devintr+0x40>
    80002228:	00004517          	auipc	a0,0x4
    8000222c:	62850513          	addi	a0,a0,1576 # 80006850 <tickslock>
    80002230:	00001097          	auipc	ra,0x1
    80002234:	31c080e7          	jalr	796(ra) # 8000354c <acquire>
    80002238:	00003717          	auipc	a4,0x3
    8000223c:	4fc70713          	addi	a4,a4,1276 # 80005734 <ticks>
    80002240:	00072783          	lw	a5,0(a4)
    80002244:	00004517          	auipc	a0,0x4
    80002248:	60c50513          	addi	a0,a0,1548 # 80006850 <tickslock>
    8000224c:	0017879b          	addiw	a5,a5,1
    80002250:	00f72023          	sw	a5,0(a4)
    80002254:	00001097          	auipc	ra,0x1
    80002258:	3c4080e7          	jalr	964(ra) # 80003618 <release>
    8000225c:	f65ff06f          	j	800021c0 <devintr+0x60>
    80002260:	00001097          	auipc	ra,0x1
    80002264:	f20080e7          	jalr	-224(ra) # 80003180 <uartintr>
    80002268:	fadff06f          	j	80002214 <devintr+0xb4>
    8000226c:	0000                	unimp
	...

0000000080002270 <kernelvec>:
    80002270:	f0010113          	addi	sp,sp,-256
    80002274:	00113023          	sd	ra,0(sp)
    80002278:	00213423          	sd	sp,8(sp)
    8000227c:	00313823          	sd	gp,16(sp)
    80002280:	00413c23          	sd	tp,24(sp)
    80002284:	02513023          	sd	t0,32(sp)
    80002288:	02613423          	sd	t1,40(sp)
    8000228c:	02713823          	sd	t2,48(sp)
    80002290:	02813c23          	sd	s0,56(sp)
    80002294:	04913023          	sd	s1,64(sp)
    80002298:	04a13423          	sd	a0,72(sp)
    8000229c:	04b13823          	sd	a1,80(sp)
    800022a0:	04c13c23          	sd	a2,88(sp)
    800022a4:	06d13023          	sd	a3,96(sp)
    800022a8:	06e13423          	sd	a4,104(sp)
    800022ac:	06f13823          	sd	a5,112(sp)
    800022b0:	07013c23          	sd	a6,120(sp)
    800022b4:	09113023          	sd	a7,128(sp)
    800022b8:	09213423          	sd	s2,136(sp)
    800022bc:	09313823          	sd	s3,144(sp)
    800022c0:	09413c23          	sd	s4,152(sp)
    800022c4:	0b513023          	sd	s5,160(sp)
    800022c8:	0b613423          	sd	s6,168(sp)
    800022cc:	0b713823          	sd	s7,176(sp)
    800022d0:	0b813c23          	sd	s8,184(sp)
    800022d4:	0d913023          	sd	s9,192(sp)
    800022d8:	0da13423          	sd	s10,200(sp)
    800022dc:	0db13823          	sd	s11,208(sp)
    800022e0:	0dc13c23          	sd	t3,216(sp)
    800022e4:	0fd13023          	sd	t4,224(sp)
    800022e8:	0fe13423          	sd	t5,232(sp)
    800022ec:	0ff13823          	sd	t6,240(sp)
    800022f0:	cd1ff0ef          	jal	ra,80001fc0 <kerneltrap>
    800022f4:	00013083          	ld	ra,0(sp)
    800022f8:	00813103          	ld	sp,8(sp)
    800022fc:	01013183          	ld	gp,16(sp)
    80002300:	02013283          	ld	t0,32(sp)
    80002304:	02813303          	ld	t1,40(sp)
    80002308:	03013383          	ld	t2,48(sp)
    8000230c:	03813403          	ld	s0,56(sp)
    80002310:	04013483          	ld	s1,64(sp)
    80002314:	04813503          	ld	a0,72(sp)
    80002318:	05013583          	ld	a1,80(sp)
    8000231c:	05813603          	ld	a2,88(sp)
    80002320:	06013683          	ld	a3,96(sp)
    80002324:	06813703          	ld	a4,104(sp)
    80002328:	07013783          	ld	a5,112(sp)
    8000232c:	07813803          	ld	a6,120(sp)
    80002330:	08013883          	ld	a7,128(sp)
    80002334:	08813903          	ld	s2,136(sp)
    80002338:	09013983          	ld	s3,144(sp)
    8000233c:	09813a03          	ld	s4,152(sp)
    80002340:	0a013a83          	ld	s5,160(sp)
    80002344:	0a813b03          	ld	s6,168(sp)
    80002348:	0b013b83          	ld	s7,176(sp)
    8000234c:	0b813c03          	ld	s8,184(sp)
    80002350:	0c013c83          	ld	s9,192(sp)
    80002354:	0c813d03          	ld	s10,200(sp)
    80002358:	0d013d83          	ld	s11,208(sp)
    8000235c:	0d813e03          	ld	t3,216(sp)
    80002360:	0e013e83          	ld	t4,224(sp)
    80002364:	0e813f03          	ld	t5,232(sp)
    80002368:	0f013f83          	ld	t6,240(sp)
    8000236c:	10010113          	addi	sp,sp,256
    80002370:	10200073          	sret
    80002374:	00000013          	nop
    80002378:	00000013          	nop
    8000237c:	00000013          	nop

0000000080002380 <timervec>:
    80002380:	34051573          	csrrw	a0,mscratch,a0
    80002384:	00b53023          	sd	a1,0(a0)
    80002388:	00c53423          	sd	a2,8(a0)
    8000238c:	00d53823          	sd	a3,16(a0)
    80002390:	01853583          	ld	a1,24(a0)
    80002394:	02053603          	ld	a2,32(a0)
    80002398:	0005b683          	ld	a3,0(a1)
    8000239c:	00c686b3          	add	a3,a3,a2
    800023a0:	00d5b023          	sd	a3,0(a1)
    800023a4:	00200593          	li	a1,2
    800023a8:	14459073          	csrw	sip,a1
    800023ac:	01053683          	ld	a3,16(a0)
    800023b0:	00853603          	ld	a2,8(a0)
    800023b4:	00053583          	ld	a1,0(a0)
    800023b8:	34051573          	csrrw	a0,mscratch,a0
    800023bc:	30200073          	mret

00000000800023c0 <plicinit>:
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00813423          	sd	s0,8(sp)
    800023c8:	01010413          	addi	s0,sp,16
    800023cc:	00813403          	ld	s0,8(sp)
    800023d0:	0c0007b7          	lui	a5,0xc000
    800023d4:	00100713          	li	a4,1
    800023d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800023dc:	00e7a223          	sw	a4,4(a5)
    800023e0:	01010113          	addi	sp,sp,16
    800023e4:	00008067          	ret

00000000800023e8 <plicinithart>:
    800023e8:	ff010113          	addi	sp,sp,-16
    800023ec:	00813023          	sd	s0,0(sp)
    800023f0:	00113423          	sd	ra,8(sp)
    800023f4:	01010413          	addi	s0,sp,16
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	a48080e7          	jalr	-1464(ra) # 80001e40 <cpuid>
    80002400:	0085171b          	slliw	a4,a0,0x8
    80002404:	0c0027b7          	lui	a5,0xc002
    80002408:	00e787b3          	add	a5,a5,a4
    8000240c:	40200713          	li	a4,1026
    80002410:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002414:	00813083          	ld	ra,8(sp)
    80002418:	00013403          	ld	s0,0(sp)
    8000241c:	00d5151b          	slliw	a0,a0,0xd
    80002420:	0c2017b7          	lui	a5,0xc201
    80002424:	00a78533          	add	a0,a5,a0
    80002428:	00052023          	sw	zero,0(a0)
    8000242c:	01010113          	addi	sp,sp,16
    80002430:	00008067          	ret

0000000080002434 <plic_claim>:
    80002434:	ff010113          	addi	sp,sp,-16
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	00113423          	sd	ra,8(sp)
    80002440:	01010413          	addi	s0,sp,16
    80002444:	00000097          	auipc	ra,0x0
    80002448:	9fc080e7          	jalr	-1540(ra) # 80001e40 <cpuid>
    8000244c:	00813083          	ld	ra,8(sp)
    80002450:	00013403          	ld	s0,0(sp)
    80002454:	00d5151b          	slliw	a0,a0,0xd
    80002458:	0c2017b7          	lui	a5,0xc201
    8000245c:	00a78533          	add	a0,a5,a0
    80002460:	00452503          	lw	a0,4(a0)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <plic_complete>:
    8000246c:	fe010113          	addi	sp,sp,-32
    80002470:	00813823          	sd	s0,16(sp)
    80002474:	00913423          	sd	s1,8(sp)
    80002478:	00113c23          	sd	ra,24(sp)
    8000247c:	02010413          	addi	s0,sp,32
    80002480:	00050493          	mv	s1,a0
    80002484:	00000097          	auipc	ra,0x0
    80002488:	9bc080e7          	jalr	-1604(ra) # 80001e40 <cpuid>
    8000248c:	01813083          	ld	ra,24(sp)
    80002490:	01013403          	ld	s0,16(sp)
    80002494:	00d5179b          	slliw	a5,a0,0xd
    80002498:	0c201737          	lui	a4,0xc201
    8000249c:	00f707b3          	add	a5,a4,a5
    800024a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800024a4:	00813483          	ld	s1,8(sp)
    800024a8:	02010113          	addi	sp,sp,32
    800024ac:	00008067          	ret

00000000800024b0 <consolewrite>:
    800024b0:	fb010113          	addi	sp,sp,-80
    800024b4:	04813023          	sd	s0,64(sp)
    800024b8:	04113423          	sd	ra,72(sp)
    800024bc:	02913c23          	sd	s1,56(sp)
    800024c0:	03213823          	sd	s2,48(sp)
    800024c4:	03313423          	sd	s3,40(sp)
    800024c8:	03413023          	sd	s4,32(sp)
    800024cc:	01513c23          	sd	s5,24(sp)
    800024d0:	05010413          	addi	s0,sp,80
    800024d4:	06c05c63          	blez	a2,8000254c <consolewrite+0x9c>
    800024d8:	00060993          	mv	s3,a2
    800024dc:	00050a13          	mv	s4,a0
    800024e0:	00058493          	mv	s1,a1
    800024e4:	00000913          	li	s2,0
    800024e8:	fff00a93          	li	s5,-1
    800024ec:	01c0006f          	j	80002508 <consolewrite+0x58>
    800024f0:	fbf44503          	lbu	a0,-65(s0)
    800024f4:	0019091b          	addiw	s2,s2,1
    800024f8:	00148493          	addi	s1,s1,1
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	a9c080e7          	jalr	-1380(ra) # 80002f98 <uartputc>
    80002504:	03298063          	beq	s3,s2,80002524 <consolewrite+0x74>
    80002508:	00048613          	mv	a2,s1
    8000250c:	00100693          	li	a3,1
    80002510:	000a0593          	mv	a1,s4
    80002514:	fbf40513          	addi	a0,s0,-65
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	9e0080e7          	jalr	-1568(ra) # 80001ef8 <either_copyin>
    80002520:	fd5518e3          	bne	a0,s5,800024f0 <consolewrite+0x40>
    80002524:	04813083          	ld	ra,72(sp)
    80002528:	04013403          	ld	s0,64(sp)
    8000252c:	03813483          	ld	s1,56(sp)
    80002530:	02813983          	ld	s3,40(sp)
    80002534:	02013a03          	ld	s4,32(sp)
    80002538:	01813a83          	ld	s5,24(sp)
    8000253c:	00090513          	mv	a0,s2
    80002540:	03013903          	ld	s2,48(sp)
    80002544:	05010113          	addi	sp,sp,80
    80002548:	00008067          	ret
    8000254c:	00000913          	li	s2,0
    80002550:	fd5ff06f          	j	80002524 <consolewrite+0x74>

0000000080002554 <consoleread>:
    80002554:	f9010113          	addi	sp,sp,-112
    80002558:	06813023          	sd	s0,96(sp)
    8000255c:	04913c23          	sd	s1,88(sp)
    80002560:	05213823          	sd	s2,80(sp)
    80002564:	05313423          	sd	s3,72(sp)
    80002568:	05413023          	sd	s4,64(sp)
    8000256c:	03513c23          	sd	s5,56(sp)
    80002570:	03613823          	sd	s6,48(sp)
    80002574:	03713423          	sd	s7,40(sp)
    80002578:	03813023          	sd	s8,32(sp)
    8000257c:	06113423          	sd	ra,104(sp)
    80002580:	01913c23          	sd	s9,24(sp)
    80002584:	07010413          	addi	s0,sp,112
    80002588:	00060b93          	mv	s7,a2
    8000258c:	00050913          	mv	s2,a0
    80002590:	00058c13          	mv	s8,a1
    80002594:	00060b1b          	sext.w	s6,a2
    80002598:	00004497          	auipc	s1,0x4
    8000259c:	2e048493          	addi	s1,s1,736 # 80006878 <cons>
    800025a0:	00400993          	li	s3,4
    800025a4:	fff00a13          	li	s4,-1
    800025a8:	00a00a93          	li	s5,10
    800025ac:	05705e63          	blez	s7,80002608 <consoleread+0xb4>
    800025b0:	09c4a703          	lw	a4,156(s1)
    800025b4:	0984a783          	lw	a5,152(s1)
    800025b8:	0007071b          	sext.w	a4,a4
    800025bc:	08e78463          	beq	a5,a4,80002644 <consoleread+0xf0>
    800025c0:	07f7f713          	andi	a4,a5,127
    800025c4:	00e48733          	add	a4,s1,a4
    800025c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800025cc:	0017869b          	addiw	a3,a5,1
    800025d0:	08d4ac23          	sw	a3,152(s1)
    800025d4:	00070c9b          	sext.w	s9,a4
    800025d8:	0b370663          	beq	a4,s3,80002684 <consoleread+0x130>
    800025dc:	00100693          	li	a3,1
    800025e0:	f9f40613          	addi	a2,s0,-97
    800025e4:	000c0593          	mv	a1,s8
    800025e8:	00090513          	mv	a0,s2
    800025ec:	f8e40fa3          	sb	a4,-97(s0)
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	8bc080e7          	jalr	-1860(ra) # 80001eac <either_copyout>
    800025f8:	01450863          	beq	a0,s4,80002608 <consoleread+0xb4>
    800025fc:	001c0c13          	addi	s8,s8,1
    80002600:	fffb8b9b          	addiw	s7,s7,-1
    80002604:	fb5c94e3          	bne	s9,s5,800025ac <consoleread+0x58>
    80002608:	000b851b          	sext.w	a0,s7
    8000260c:	06813083          	ld	ra,104(sp)
    80002610:	06013403          	ld	s0,96(sp)
    80002614:	05813483          	ld	s1,88(sp)
    80002618:	05013903          	ld	s2,80(sp)
    8000261c:	04813983          	ld	s3,72(sp)
    80002620:	04013a03          	ld	s4,64(sp)
    80002624:	03813a83          	ld	s5,56(sp)
    80002628:	02813b83          	ld	s7,40(sp)
    8000262c:	02013c03          	ld	s8,32(sp)
    80002630:	01813c83          	ld	s9,24(sp)
    80002634:	40ab053b          	subw	a0,s6,a0
    80002638:	03013b03          	ld	s6,48(sp)
    8000263c:	07010113          	addi	sp,sp,112
    80002640:	00008067          	ret
    80002644:	00001097          	auipc	ra,0x1
    80002648:	1d8080e7          	jalr	472(ra) # 8000381c <push_on>
    8000264c:	0984a703          	lw	a4,152(s1)
    80002650:	09c4a783          	lw	a5,156(s1)
    80002654:	0007879b          	sext.w	a5,a5
    80002658:	fef70ce3          	beq	a4,a5,80002650 <consoleread+0xfc>
    8000265c:	00001097          	auipc	ra,0x1
    80002660:	234080e7          	jalr	564(ra) # 80003890 <pop_on>
    80002664:	0984a783          	lw	a5,152(s1)
    80002668:	07f7f713          	andi	a4,a5,127
    8000266c:	00e48733          	add	a4,s1,a4
    80002670:	01874703          	lbu	a4,24(a4)
    80002674:	0017869b          	addiw	a3,a5,1
    80002678:	08d4ac23          	sw	a3,152(s1)
    8000267c:	00070c9b          	sext.w	s9,a4
    80002680:	f5371ee3          	bne	a4,s3,800025dc <consoleread+0x88>
    80002684:	000b851b          	sext.w	a0,s7
    80002688:	f96bf2e3          	bgeu	s7,s6,8000260c <consoleread+0xb8>
    8000268c:	08f4ac23          	sw	a5,152(s1)
    80002690:	f7dff06f          	j	8000260c <consoleread+0xb8>

0000000080002694 <consputc>:
    80002694:	10000793          	li	a5,256
    80002698:	00f50663          	beq	a0,a5,800026a4 <consputc+0x10>
    8000269c:	00001317          	auipc	t1,0x1
    800026a0:	9f430067          	jr	-1548(t1) # 80003090 <uartputc_sync>
    800026a4:	ff010113          	addi	sp,sp,-16
    800026a8:	00113423          	sd	ra,8(sp)
    800026ac:	00813023          	sd	s0,0(sp)
    800026b0:	01010413          	addi	s0,sp,16
    800026b4:	00800513          	li	a0,8
    800026b8:	00001097          	auipc	ra,0x1
    800026bc:	9d8080e7          	jalr	-1576(ra) # 80003090 <uartputc_sync>
    800026c0:	02000513          	li	a0,32
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	9cc080e7          	jalr	-1588(ra) # 80003090 <uartputc_sync>
    800026cc:	00013403          	ld	s0,0(sp)
    800026d0:	00813083          	ld	ra,8(sp)
    800026d4:	00800513          	li	a0,8
    800026d8:	01010113          	addi	sp,sp,16
    800026dc:	00001317          	auipc	t1,0x1
    800026e0:	9b430067          	jr	-1612(t1) # 80003090 <uartputc_sync>

00000000800026e4 <consoleintr>:
    800026e4:	fe010113          	addi	sp,sp,-32
    800026e8:	00813823          	sd	s0,16(sp)
    800026ec:	00913423          	sd	s1,8(sp)
    800026f0:	01213023          	sd	s2,0(sp)
    800026f4:	00113c23          	sd	ra,24(sp)
    800026f8:	02010413          	addi	s0,sp,32
    800026fc:	00004917          	auipc	s2,0x4
    80002700:	17c90913          	addi	s2,s2,380 # 80006878 <cons>
    80002704:	00050493          	mv	s1,a0
    80002708:	00090513          	mv	a0,s2
    8000270c:	00001097          	auipc	ra,0x1
    80002710:	e40080e7          	jalr	-448(ra) # 8000354c <acquire>
    80002714:	02048c63          	beqz	s1,8000274c <consoleintr+0x68>
    80002718:	0a092783          	lw	a5,160(s2)
    8000271c:	09892703          	lw	a4,152(s2)
    80002720:	07f00693          	li	a3,127
    80002724:	40e7873b          	subw	a4,a5,a4
    80002728:	02e6e263          	bltu	a3,a4,8000274c <consoleintr+0x68>
    8000272c:	00d00713          	li	a4,13
    80002730:	04e48063          	beq	s1,a4,80002770 <consoleintr+0x8c>
    80002734:	07f7f713          	andi	a4,a5,127
    80002738:	00e90733          	add	a4,s2,a4
    8000273c:	0017879b          	addiw	a5,a5,1
    80002740:	0af92023          	sw	a5,160(s2)
    80002744:	00970c23          	sb	s1,24(a4)
    80002748:	08f92e23          	sw	a5,156(s2)
    8000274c:	01013403          	ld	s0,16(sp)
    80002750:	01813083          	ld	ra,24(sp)
    80002754:	00813483          	ld	s1,8(sp)
    80002758:	00013903          	ld	s2,0(sp)
    8000275c:	00004517          	auipc	a0,0x4
    80002760:	11c50513          	addi	a0,a0,284 # 80006878 <cons>
    80002764:	02010113          	addi	sp,sp,32
    80002768:	00001317          	auipc	t1,0x1
    8000276c:	eb030067          	jr	-336(t1) # 80003618 <release>
    80002770:	00a00493          	li	s1,10
    80002774:	fc1ff06f          	j	80002734 <consoleintr+0x50>

0000000080002778 <consoleinit>:
    80002778:	fe010113          	addi	sp,sp,-32
    8000277c:	00113c23          	sd	ra,24(sp)
    80002780:	00813823          	sd	s0,16(sp)
    80002784:	00913423          	sd	s1,8(sp)
    80002788:	02010413          	addi	s0,sp,32
    8000278c:	00004497          	auipc	s1,0x4
    80002790:	0ec48493          	addi	s1,s1,236 # 80006878 <cons>
    80002794:	00048513          	mv	a0,s1
    80002798:	00003597          	auipc	a1,0x3
    8000279c:	a1058593          	addi	a1,a1,-1520 # 800051a8 <_ZZ12printIntegermE6digits+0x178>
    800027a0:	00001097          	auipc	ra,0x1
    800027a4:	d88080e7          	jalr	-632(ra) # 80003528 <initlock>
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	7ac080e7          	jalr	1964(ra) # 80002f54 <uartinit>
    800027b0:	01813083          	ld	ra,24(sp)
    800027b4:	01013403          	ld	s0,16(sp)
    800027b8:	00000797          	auipc	a5,0x0
    800027bc:	d9c78793          	addi	a5,a5,-612 # 80002554 <consoleread>
    800027c0:	0af4bc23          	sd	a5,184(s1)
    800027c4:	00000797          	auipc	a5,0x0
    800027c8:	cec78793          	addi	a5,a5,-788 # 800024b0 <consolewrite>
    800027cc:	0cf4b023          	sd	a5,192(s1)
    800027d0:	00813483          	ld	s1,8(sp)
    800027d4:	02010113          	addi	sp,sp,32
    800027d8:	00008067          	ret

00000000800027dc <console_read>:
    800027dc:	ff010113          	addi	sp,sp,-16
    800027e0:	00813423          	sd	s0,8(sp)
    800027e4:	01010413          	addi	s0,sp,16
    800027e8:	00813403          	ld	s0,8(sp)
    800027ec:	00004317          	auipc	t1,0x4
    800027f0:	14433303          	ld	t1,324(t1) # 80006930 <devsw+0x10>
    800027f4:	01010113          	addi	sp,sp,16
    800027f8:	00030067          	jr	t1

00000000800027fc <console_write>:
    800027fc:	ff010113          	addi	sp,sp,-16
    80002800:	00813423          	sd	s0,8(sp)
    80002804:	01010413          	addi	s0,sp,16
    80002808:	00813403          	ld	s0,8(sp)
    8000280c:	00004317          	auipc	t1,0x4
    80002810:	12c33303          	ld	t1,300(t1) # 80006938 <devsw+0x18>
    80002814:	01010113          	addi	sp,sp,16
    80002818:	00030067          	jr	t1

000000008000281c <panic>:
    8000281c:	fe010113          	addi	sp,sp,-32
    80002820:	00113c23          	sd	ra,24(sp)
    80002824:	00813823          	sd	s0,16(sp)
    80002828:	00913423          	sd	s1,8(sp)
    8000282c:	02010413          	addi	s0,sp,32
    80002830:	00050493          	mv	s1,a0
    80002834:	00003517          	auipc	a0,0x3
    80002838:	97c50513          	addi	a0,a0,-1668 # 800051b0 <_ZZ12printIntegermE6digits+0x180>
    8000283c:	00004797          	auipc	a5,0x4
    80002840:	1807ae23          	sw	zero,412(a5) # 800069d8 <pr+0x18>
    80002844:	00000097          	auipc	ra,0x0
    80002848:	034080e7          	jalr	52(ra) # 80002878 <__printf>
    8000284c:	00048513          	mv	a0,s1
    80002850:	00000097          	auipc	ra,0x0
    80002854:	028080e7          	jalr	40(ra) # 80002878 <__printf>
    80002858:	00003517          	auipc	a0,0x3
    8000285c:	82050513          	addi	a0,a0,-2016 # 80005078 <_ZZ12printIntegermE6digits+0x48>
    80002860:	00000097          	auipc	ra,0x0
    80002864:	018080e7          	jalr	24(ra) # 80002878 <__printf>
    80002868:	00100793          	li	a5,1
    8000286c:	00003717          	auipc	a4,0x3
    80002870:	ecf72623          	sw	a5,-308(a4) # 80005738 <panicked>
    80002874:	0000006f          	j	80002874 <panic+0x58>

0000000080002878 <__printf>:
    80002878:	f3010113          	addi	sp,sp,-208
    8000287c:	08813023          	sd	s0,128(sp)
    80002880:	07313423          	sd	s3,104(sp)
    80002884:	09010413          	addi	s0,sp,144
    80002888:	05813023          	sd	s8,64(sp)
    8000288c:	08113423          	sd	ra,136(sp)
    80002890:	06913c23          	sd	s1,120(sp)
    80002894:	07213823          	sd	s2,112(sp)
    80002898:	07413023          	sd	s4,96(sp)
    8000289c:	05513c23          	sd	s5,88(sp)
    800028a0:	05613823          	sd	s6,80(sp)
    800028a4:	05713423          	sd	s7,72(sp)
    800028a8:	03913c23          	sd	s9,56(sp)
    800028ac:	03a13823          	sd	s10,48(sp)
    800028b0:	03b13423          	sd	s11,40(sp)
    800028b4:	00004317          	auipc	t1,0x4
    800028b8:	10c30313          	addi	t1,t1,268 # 800069c0 <pr>
    800028bc:	01832c03          	lw	s8,24(t1)
    800028c0:	00b43423          	sd	a1,8(s0)
    800028c4:	00c43823          	sd	a2,16(s0)
    800028c8:	00d43c23          	sd	a3,24(s0)
    800028cc:	02e43023          	sd	a4,32(s0)
    800028d0:	02f43423          	sd	a5,40(s0)
    800028d4:	03043823          	sd	a6,48(s0)
    800028d8:	03143c23          	sd	a7,56(s0)
    800028dc:	00050993          	mv	s3,a0
    800028e0:	4a0c1663          	bnez	s8,80002d8c <__printf+0x514>
    800028e4:	60098c63          	beqz	s3,80002efc <__printf+0x684>
    800028e8:	0009c503          	lbu	a0,0(s3)
    800028ec:	00840793          	addi	a5,s0,8
    800028f0:	f6f43c23          	sd	a5,-136(s0)
    800028f4:	00000493          	li	s1,0
    800028f8:	22050063          	beqz	a0,80002b18 <__printf+0x2a0>
    800028fc:	00002a37          	lui	s4,0x2
    80002900:	00018ab7          	lui	s5,0x18
    80002904:	000f4b37          	lui	s6,0xf4
    80002908:	00989bb7          	lui	s7,0x989
    8000290c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002910:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002914:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002918:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000291c:	00148c9b          	addiw	s9,s1,1
    80002920:	02500793          	li	a5,37
    80002924:	01998933          	add	s2,s3,s9
    80002928:	38f51263          	bne	a0,a5,80002cac <__printf+0x434>
    8000292c:	00094783          	lbu	a5,0(s2)
    80002930:	00078c9b          	sext.w	s9,a5
    80002934:	1e078263          	beqz	a5,80002b18 <__printf+0x2a0>
    80002938:	0024849b          	addiw	s1,s1,2
    8000293c:	07000713          	li	a4,112
    80002940:	00998933          	add	s2,s3,s1
    80002944:	38e78a63          	beq	a5,a4,80002cd8 <__printf+0x460>
    80002948:	20f76863          	bltu	a4,a5,80002b58 <__printf+0x2e0>
    8000294c:	42a78863          	beq	a5,a0,80002d7c <__printf+0x504>
    80002950:	06400713          	li	a4,100
    80002954:	40e79663          	bne	a5,a4,80002d60 <__printf+0x4e8>
    80002958:	f7843783          	ld	a5,-136(s0)
    8000295c:	0007a603          	lw	a2,0(a5)
    80002960:	00878793          	addi	a5,a5,8
    80002964:	f6f43c23          	sd	a5,-136(s0)
    80002968:	42064a63          	bltz	a2,80002d9c <__printf+0x524>
    8000296c:	00a00713          	li	a4,10
    80002970:	02e677bb          	remuw	a5,a2,a4
    80002974:	00003d97          	auipc	s11,0x3
    80002978:	864d8d93          	addi	s11,s11,-1948 # 800051d8 <digits>
    8000297c:	00900593          	li	a1,9
    80002980:	0006051b          	sext.w	a0,a2
    80002984:	00000c93          	li	s9,0
    80002988:	02079793          	slli	a5,a5,0x20
    8000298c:	0207d793          	srli	a5,a5,0x20
    80002990:	00fd87b3          	add	a5,s11,a5
    80002994:	0007c783          	lbu	a5,0(a5)
    80002998:	02e656bb          	divuw	a3,a2,a4
    8000299c:	f8f40023          	sb	a5,-128(s0)
    800029a0:	14c5d863          	bge	a1,a2,80002af0 <__printf+0x278>
    800029a4:	06300593          	li	a1,99
    800029a8:	00100c93          	li	s9,1
    800029ac:	02e6f7bb          	remuw	a5,a3,a4
    800029b0:	02079793          	slli	a5,a5,0x20
    800029b4:	0207d793          	srli	a5,a5,0x20
    800029b8:	00fd87b3          	add	a5,s11,a5
    800029bc:	0007c783          	lbu	a5,0(a5)
    800029c0:	02e6d73b          	divuw	a4,a3,a4
    800029c4:	f8f400a3          	sb	a5,-127(s0)
    800029c8:	12a5f463          	bgeu	a1,a0,80002af0 <__printf+0x278>
    800029cc:	00a00693          	li	a3,10
    800029d0:	00900593          	li	a1,9
    800029d4:	02d777bb          	remuw	a5,a4,a3
    800029d8:	02079793          	slli	a5,a5,0x20
    800029dc:	0207d793          	srli	a5,a5,0x20
    800029e0:	00fd87b3          	add	a5,s11,a5
    800029e4:	0007c503          	lbu	a0,0(a5)
    800029e8:	02d757bb          	divuw	a5,a4,a3
    800029ec:	f8a40123          	sb	a0,-126(s0)
    800029f0:	48e5f263          	bgeu	a1,a4,80002e74 <__printf+0x5fc>
    800029f4:	06300513          	li	a0,99
    800029f8:	02d7f5bb          	remuw	a1,a5,a3
    800029fc:	02059593          	slli	a1,a1,0x20
    80002a00:	0205d593          	srli	a1,a1,0x20
    80002a04:	00bd85b3          	add	a1,s11,a1
    80002a08:	0005c583          	lbu	a1,0(a1)
    80002a0c:	02d7d7bb          	divuw	a5,a5,a3
    80002a10:	f8b401a3          	sb	a1,-125(s0)
    80002a14:	48e57263          	bgeu	a0,a4,80002e98 <__printf+0x620>
    80002a18:	3e700513          	li	a0,999
    80002a1c:	02d7f5bb          	remuw	a1,a5,a3
    80002a20:	02059593          	slli	a1,a1,0x20
    80002a24:	0205d593          	srli	a1,a1,0x20
    80002a28:	00bd85b3          	add	a1,s11,a1
    80002a2c:	0005c583          	lbu	a1,0(a1)
    80002a30:	02d7d7bb          	divuw	a5,a5,a3
    80002a34:	f8b40223          	sb	a1,-124(s0)
    80002a38:	46e57663          	bgeu	a0,a4,80002ea4 <__printf+0x62c>
    80002a3c:	02d7f5bb          	remuw	a1,a5,a3
    80002a40:	02059593          	slli	a1,a1,0x20
    80002a44:	0205d593          	srli	a1,a1,0x20
    80002a48:	00bd85b3          	add	a1,s11,a1
    80002a4c:	0005c583          	lbu	a1,0(a1)
    80002a50:	02d7d7bb          	divuw	a5,a5,a3
    80002a54:	f8b402a3          	sb	a1,-123(s0)
    80002a58:	46ea7863          	bgeu	s4,a4,80002ec8 <__printf+0x650>
    80002a5c:	02d7f5bb          	remuw	a1,a5,a3
    80002a60:	02059593          	slli	a1,a1,0x20
    80002a64:	0205d593          	srli	a1,a1,0x20
    80002a68:	00bd85b3          	add	a1,s11,a1
    80002a6c:	0005c583          	lbu	a1,0(a1)
    80002a70:	02d7d7bb          	divuw	a5,a5,a3
    80002a74:	f8b40323          	sb	a1,-122(s0)
    80002a78:	3eeaf863          	bgeu	s5,a4,80002e68 <__printf+0x5f0>
    80002a7c:	02d7f5bb          	remuw	a1,a5,a3
    80002a80:	02059593          	slli	a1,a1,0x20
    80002a84:	0205d593          	srli	a1,a1,0x20
    80002a88:	00bd85b3          	add	a1,s11,a1
    80002a8c:	0005c583          	lbu	a1,0(a1)
    80002a90:	02d7d7bb          	divuw	a5,a5,a3
    80002a94:	f8b403a3          	sb	a1,-121(s0)
    80002a98:	42eb7e63          	bgeu	s6,a4,80002ed4 <__printf+0x65c>
    80002a9c:	02d7f5bb          	remuw	a1,a5,a3
    80002aa0:	02059593          	slli	a1,a1,0x20
    80002aa4:	0205d593          	srli	a1,a1,0x20
    80002aa8:	00bd85b3          	add	a1,s11,a1
    80002aac:	0005c583          	lbu	a1,0(a1)
    80002ab0:	02d7d7bb          	divuw	a5,a5,a3
    80002ab4:	f8b40423          	sb	a1,-120(s0)
    80002ab8:	42ebfc63          	bgeu	s7,a4,80002ef0 <__printf+0x678>
    80002abc:	02079793          	slli	a5,a5,0x20
    80002ac0:	0207d793          	srli	a5,a5,0x20
    80002ac4:	00fd8db3          	add	s11,s11,a5
    80002ac8:	000dc703          	lbu	a4,0(s11)
    80002acc:	00a00793          	li	a5,10
    80002ad0:	00900c93          	li	s9,9
    80002ad4:	f8e404a3          	sb	a4,-119(s0)
    80002ad8:	00065c63          	bgez	a2,80002af0 <__printf+0x278>
    80002adc:	f9040713          	addi	a4,s0,-112
    80002ae0:	00f70733          	add	a4,a4,a5
    80002ae4:	02d00693          	li	a3,45
    80002ae8:	fed70823          	sb	a3,-16(a4)
    80002aec:	00078c93          	mv	s9,a5
    80002af0:	f8040793          	addi	a5,s0,-128
    80002af4:	01978cb3          	add	s9,a5,s9
    80002af8:	f7f40d13          	addi	s10,s0,-129
    80002afc:	000cc503          	lbu	a0,0(s9)
    80002b00:	fffc8c93          	addi	s9,s9,-1
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	b90080e7          	jalr	-1136(ra) # 80002694 <consputc>
    80002b0c:	ffac98e3          	bne	s9,s10,80002afc <__printf+0x284>
    80002b10:	00094503          	lbu	a0,0(s2)
    80002b14:	e00514e3          	bnez	a0,8000291c <__printf+0xa4>
    80002b18:	1a0c1663          	bnez	s8,80002cc4 <__printf+0x44c>
    80002b1c:	08813083          	ld	ra,136(sp)
    80002b20:	08013403          	ld	s0,128(sp)
    80002b24:	07813483          	ld	s1,120(sp)
    80002b28:	07013903          	ld	s2,112(sp)
    80002b2c:	06813983          	ld	s3,104(sp)
    80002b30:	06013a03          	ld	s4,96(sp)
    80002b34:	05813a83          	ld	s5,88(sp)
    80002b38:	05013b03          	ld	s6,80(sp)
    80002b3c:	04813b83          	ld	s7,72(sp)
    80002b40:	04013c03          	ld	s8,64(sp)
    80002b44:	03813c83          	ld	s9,56(sp)
    80002b48:	03013d03          	ld	s10,48(sp)
    80002b4c:	02813d83          	ld	s11,40(sp)
    80002b50:	0d010113          	addi	sp,sp,208
    80002b54:	00008067          	ret
    80002b58:	07300713          	li	a4,115
    80002b5c:	1ce78a63          	beq	a5,a4,80002d30 <__printf+0x4b8>
    80002b60:	07800713          	li	a4,120
    80002b64:	1ee79e63          	bne	a5,a4,80002d60 <__printf+0x4e8>
    80002b68:	f7843783          	ld	a5,-136(s0)
    80002b6c:	0007a703          	lw	a4,0(a5)
    80002b70:	00878793          	addi	a5,a5,8
    80002b74:	f6f43c23          	sd	a5,-136(s0)
    80002b78:	28074263          	bltz	a4,80002dfc <__printf+0x584>
    80002b7c:	00002d97          	auipc	s11,0x2
    80002b80:	65cd8d93          	addi	s11,s11,1628 # 800051d8 <digits>
    80002b84:	00f77793          	andi	a5,a4,15
    80002b88:	00fd87b3          	add	a5,s11,a5
    80002b8c:	0007c683          	lbu	a3,0(a5)
    80002b90:	00f00613          	li	a2,15
    80002b94:	0007079b          	sext.w	a5,a4
    80002b98:	f8d40023          	sb	a3,-128(s0)
    80002b9c:	0047559b          	srliw	a1,a4,0x4
    80002ba0:	0047569b          	srliw	a3,a4,0x4
    80002ba4:	00000c93          	li	s9,0
    80002ba8:	0ee65063          	bge	a2,a4,80002c88 <__printf+0x410>
    80002bac:	00f6f693          	andi	a3,a3,15
    80002bb0:	00dd86b3          	add	a3,s11,a3
    80002bb4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002bb8:	0087d79b          	srliw	a5,a5,0x8
    80002bbc:	00100c93          	li	s9,1
    80002bc0:	f8d400a3          	sb	a3,-127(s0)
    80002bc4:	0cb67263          	bgeu	a2,a1,80002c88 <__printf+0x410>
    80002bc8:	00f7f693          	andi	a3,a5,15
    80002bcc:	00dd86b3          	add	a3,s11,a3
    80002bd0:	0006c583          	lbu	a1,0(a3)
    80002bd4:	00f00613          	li	a2,15
    80002bd8:	0047d69b          	srliw	a3,a5,0x4
    80002bdc:	f8b40123          	sb	a1,-126(s0)
    80002be0:	0047d593          	srli	a1,a5,0x4
    80002be4:	28f67e63          	bgeu	a2,a5,80002e80 <__printf+0x608>
    80002be8:	00f6f693          	andi	a3,a3,15
    80002bec:	00dd86b3          	add	a3,s11,a3
    80002bf0:	0006c503          	lbu	a0,0(a3)
    80002bf4:	0087d813          	srli	a6,a5,0x8
    80002bf8:	0087d69b          	srliw	a3,a5,0x8
    80002bfc:	f8a401a3          	sb	a0,-125(s0)
    80002c00:	28b67663          	bgeu	a2,a1,80002e8c <__printf+0x614>
    80002c04:	00f6f693          	andi	a3,a3,15
    80002c08:	00dd86b3          	add	a3,s11,a3
    80002c0c:	0006c583          	lbu	a1,0(a3)
    80002c10:	00c7d513          	srli	a0,a5,0xc
    80002c14:	00c7d69b          	srliw	a3,a5,0xc
    80002c18:	f8b40223          	sb	a1,-124(s0)
    80002c1c:	29067a63          	bgeu	a2,a6,80002eb0 <__printf+0x638>
    80002c20:	00f6f693          	andi	a3,a3,15
    80002c24:	00dd86b3          	add	a3,s11,a3
    80002c28:	0006c583          	lbu	a1,0(a3)
    80002c2c:	0107d813          	srli	a6,a5,0x10
    80002c30:	0107d69b          	srliw	a3,a5,0x10
    80002c34:	f8b402a3          	sb	a1,-123(s0)
    80002c38:	28a67263          	bgeu	a2,a0,80002ebc <__printf+0x644>
    80002c3c:	00f6f693          	andi	a3,a3,15
    80002c40:	00dd86b3          	add	a3,s11,a3
    80002c44:	0006c683          	lbu	a3,0(a3)
    80002c48:	0147d79b          	srliw	a5,a5,0x14
    80002c4c:	f8d40323          	sb	a3,-122(s0)
    80002c50:	21067663          	bgeu	a2,a6,80002e5c <__printf+0x5e4>
    80002c54:	02079793          	slli	a5,a5,0x20
    80002c58:	0207d793          	srli	a5,a5,0x20
    80002c5c:	00fd8db3          	add	s11,s11,a5
    80002c60:	000dc683          	lbu	a3,0(s11)
    80002c64:	00800793          	li	a5,8
    80002c68:	00700c93          	li	s9,7
    80002c6c:	f8d403a3          	sb	a3,-121(s0)
    80002c70:	00075c63          	bgez	a4,80002c88 <__printf+0x410>
    80002c74:	f9040713          	addi	a4,s0,-112
    80002c78:	00f70733          	add	a4,a4,a5
    80002c7c:	02d00693          	li	a3,45
    80002c80:	fed70823          	sb	a3,-16(a4)
    80002c84:	00078c93          	mv	s9,a5
    80002c88:	f8040793          	addi	a5,s0,-128
    80002c8c:	01978cb3          	add	s9,a5,s9
    80002c90:	f7f40d13          	addi	s10,s0,-129
    80002c94:	000cc503          	lbu	a0,0(s9)
    80002c98:	fffc8c93          	addi	s9,s9,-1
    80002c9c:	00000097          	auipc	ra,0x0
    80002ca0:	9f8080e7          	jalr	-1544(ra) # 80002694 <consputc>
    80002ca4:	ff9d18e3          	bne	s10,s9,80002c94 <__printf+0x41c>
    80002ca8:	0100006f          	j	80002cb8 <__printf+0x440>
    80002cac:	00000097          	auipc	ra,0x0
    80002cb0:	9e8080e7          	jalr	-1560(ra) # 80002694 <consputc>
    80002cb4:	000c8493          	mv	s1,s9
    80002cb8:	00094503          	lbu	a0,0(s2)
    80002cbc:	c60510e3          	bnez	a0,8000291c <__printf+0xa4>
    80002cc0:	e40c0ee3          	beqz	s8,80002b1c <__printf+0x2a4>
    80002cc4:	00004517          	auipc	a0,0x4
    80002cc8:	cfc50513          	addi	a0,a0,-772 # 800069c0 <pr>
    80002ccc:	00001097          	auipc	ra,0x1
    80002cd0:	94c080e7          	jalr	-1716(ra) # 80003618 <release>
    80002cd4:	e49ff06f          	j	80002b1c <__printf+0x2a4>
    80002cd8:	f7843783          	ld	a5,-136(s0)
    80002cdc:	03000513          	li	a0,48
    80002ce0:	01000d13          	li	s10,16
    80002ce4:	00878713          	addi	a4,a5,8
    80002ce8:	0007bc83          	ld	s9,0(a5)
    80002cec:	f6e43c23          	sd	a4,-136(s0)
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	9a4080e7          	jalr	-1628(ra) # 80002694 <consputc>
    80002cf8:	07800513          	li	a0,120
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	998080e7          	jalr	-1640(ra) # 80002694 <consputc>
    80002d04:	00002d97          	auipc	s11,0x2
    80002d08:	4d4d8d93          	addi	s11,s11,1236 # 800051d8 <digits>
    80002d0c:	03ccd793          	srli	a5,s9,0x3c
    80002d10:	00fd87b3          	add	a5,s11,a5
    80002d14:	0007c503          	lbu	a0,0(a5)
    80002d18:	fffd0d1b          	addiw	s10,s10,-1
    80002d1c:	004c9c93          	slli	s9,s9,0x4
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	974080e7          	jalr	-1676(ra) # 80002694 <consputc>
    80002d28:	fe0d12e3          	bnez	s10,80002d0c <__printf+0x494>
    80002d2c:	f8dff06f          	j	80002cb8 <__printf+0x440>
    80002d30:	f7843783          	ld	a5,-136(s0)
    80002d34:	0007bc83          	ld	s9,0(a5)
    80002d38:	00878793          	addi	a5,a5,8
    80002d3c:	f6f43c23          	sd	a5,-136(s0)
    80002d40:	000c9a63          	bnez	s9,80002d54 <__printf+0x4dc>
    80002d44:	1080006f          	j	80002e4c <__printf+0x5d4>
    80002d48:	001c8c93          	addi	s9,s9,1
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	948080e7          	jalr	-1720(ra) # 80002694 <consputc>
    80002d54:	000cc503          	lbu	a0,0(s9)
    80002d58:	fe0518e3          	bnez	a0,80002d48 <__printf+0x4d0>
    80002d5c:	f5dff06f          	j	80002cb8 <__printf+0x440>
    80002d60:	02500513          	li	a0,37
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	930080e7          	jalr	-1744(ra) # 80002694 <consputc>
    80002d6c:	000c8513          	mv	a0,s9
    80002d70:	00000097          	auipc	ra,0x0
    80002d74:	924080e7          	jalr	-1756(ra) # 80002694 <consputc>
    80002d78:	f41ff06f          	j	80002cb8 <__printf+0x440>
    80002d7c:	02500513          	li	a0,37
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	914080e7          	jalr	-1772(ra) # 80002694 <consputc>
    80002d88:	f31ff06f          	j	80002cb8 <__printf+0x440>
    80002d8c:	00030513          	mv	a0,t1
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	7bc080e7          	jalr	1980(ra) # 8000354c <acquire>
    80002d98:	b4dff06f          	j	800028e4 <__printf+0x6c>
    80002d9c:	40c0053b          	negw	a0,a2
    80002da0:	00a00713          	li	a4,10
    80002da4:	02e576bb          	remuw	a3,a0,a4
    80002da8:	00002d97          	auipc	s11,0x2
    80002dac:	430d8d93          	addi	s11,s11,1072 # 800051d8 <digits>
    80002db0:	ff700593          	li	a1,-9
    80002db4:	02069693          	slli	a3,a3,0x20
    80002db8:	0206d693          	srli	a3,a3,0x20
    80002dbc:	00dd86b3          	add	a3,s11,a3
    80002dc0:	0006c683          	lbu	a3,0(a3)
    80002dc4:	02e557bb          	divuw	a5,a0,a4
    80002dc8:	f8d40023          	sb	a3,-128(s0)
    80002dcc:	10b65e63          	bge	a2,a1,80002ee8 <__printf+0x670>
    80002dd0:	06300593          	li	a1,99
    80002dd4:	02e7f6bb          	remuw	a3,a5,a4
    80002dd8:	02069693          	slli	a3,a3,0x20
    80002ddc:	0206d693          	srli	a3,a3,0x20
    80002de0:	00dd86b3          	add	a3,s11,a3
    80002de4:	0006c683          	lbu	a3,0(a3)
    80002de8:	02e7d73b          	divuw	a4,a5,a4
    80002dec:	00200793          	li	a5,2
    80002df0:	f8d400a3          	sb	a3,-127(s0)
    80002df4:	bca5ece3          	bltu	a1,a0,800029cc <__printf+0x154>
    80002df8:	ce5ff06f          	j	80002adc <__printf+0x264>
    80002dfc:	40e007bb          	negw	a5,a4
    80002e00:	00002d97          	auipc	s11,0x2
    80002e04:	3d8d8d93          	addi	s11,s11,984 # 800051d8 <digits>
    80002e08:	00f7f693          	andi	a3,a5,15
    80002e0c:	00dd86b3          	add	a3,s11,a3
    80002e10:	0006c583          	lbu	a1,0(a3)
    80002e14:	ff100613          	li	a2,-15
    80002e18:	0047d69b          	srliw	a3,a5,0x4
    80002e1c:	f8b40023          	sb	a1,-128(s0)
    80002e20:	0047d59b          	srliw	a1,a5,0x4
    80002e24:	0ac75e63          	bge	a4,a2,80002ee0 <__printf+0x668>
    80002e28:	00f6f693          	andi	a3,a3,15
    80002e2c:	00dd86b3          	add	a3,s11,a3
    80002e30:	0006c603          	lbu	a2,0(a3)
    80002e34:	00f00693          	li	a3,15
    80002e38:	0087d79b          	srliw	a5,a5,0x8
    80002e3c:	f8c400a3          	sb	a2,-127(s0)
    80002e40:	d8b6e4e3          	bltu	a3,a1,80002bc8 <__printf+0x350>
    80002e44:	00200793          	li	a5,2
    80002e48:	e2dff06f          	j	80002c74 <__printf+0x3fc>
    80002e4c:	00002c97          	auipc	s9,0x2
    80002e50:	36cc8c93          	addi	s9,s9,876 # 800051b8 <_ZZ12printIntegermE6digits+0x188>
    80002e54:	02800513          	li	a0,40
    80002e58:	ef1ff06f          	j	80002d48 <__printf+0x4d0>
    80002e5c:	00700793          	li	a5,7
    80002e60:	00600c93          	li	s9,6
    80002e64:	e0dff06f          	j	80002c70 <__printf+0x3f8>
    80002e68:	00700793          	li	a5,7
    80002e6c:	00600c93          	li	s9,6
    80002e70:	c69ff06f          	j	80002ad8 <__printf+0x260>
    80002e74:	00300793          	li	a5,3
    80002e78:	00200c93          	li	s9,2
    80002e7c:	c5dff06f          	j	80002ad8 <__printf+0x260>
    80002e80:	00300793          	li	a5,3
    80002e84:	00200c93          	li	s9,2
    80002e88:	de9ff06f          	j	80002c70 <__printf+0x3f8>
    80002e8c:	00400793          	li	a5,4
    80002e90:	00300c93          	li	s9,3
    80002e94:	dddff06f          	j	80002c70 <__printf+0x3f8>
    80002e98:	00400793          	li	a5,4
    80002e9c:	00300c93          	li	s9,3
    80002ea0:	c39ff06f          	j	80002ad8 <__printf+0x260>
    80002ea4:	00500793          	li	a5,5
    80002ea8:	00400c93          	li	s9,4
    80002eac:	c2dff06f          	j	80002ad8 <__printf+0x260>
    80002eb0:	00500793          	li	a5,5
    80002eb4:	00400c93          	li	s9,4
    80002eb8:	db9ff06f          	j	80002c70 <__printf+0x3f8>
    80002ebc:	00600793          	li	a5,6
    80002ec0:	00500c93          	li	s9,5
    80002ec4:	dadff06f          	j	80002c70 <__printf+0x3f8>
    80002ec8:	00600793          	li	a5,6
    80002ecc:	00500c93          	li	s9,5
    80002ed0:	c09ff06f          	j	80002ad8 <__printf+0x260>
    80002ed4:	00800793          	li	a5,8
    80002ed8:	00700c93          	li	s9,7
    80002edc:	bfdff06f          	j	80002ad8 <__printf+0x260>
    80002ee0:	00100793          	li	a5,1
    80002ee4:	d91ff06f          	j	80002c74 <__printf+0x3fc>
    80002ee8:	00100793          	li	a5,1
    80002eec:	bf1ff06f          	j	80002adc <__printf+0x264>
    80002ef0:	00900793          	li	a5,9
    80002ef4:	00800c93          	li	s9,8
    80002ef8:	be1ff06f          	j	80002ad8 <__printf+0x260>
    80002efc:	00002517          	auipc	a0,0x2
    80002f00:	2c450513          	addi	a0,a0,708 # 800051c0 <_ZZ12printIntegermE6digits+0x190>
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	918080e7          	jalr	-1768(ra) # 8000281c <panic>

0000000080002f0c <printfinit>:
    80002f0c:	fe010113          	addi	sp,sp,-32
    80002f10:	00813823          	sd	s0,16(sp)
    80002f14:	00913423          	sd	s1,8(sp)
    80002f18:	00113c23          	sd	ra,24(sp)
    80002f1c:	02010413          	addi	s0,sp,32
    80002f20:	00004497          	auipc	s1,0x4
    80002f24:	aa048493          	addi	s1,s1,-1376 # 800069c0 <pr>
    80002f28:	00048513          	mv	a0,s1
    80002f2c:	00002597          	auipc	a1,0x2
    80002f30:	2a458593          	addi	a1,a1,676 # 800051d0 <_ZZ12printIntegermE6digits+0x1a0>
    80002f34:	00000097          	auipc	ra,0x0
    80002f38:	5f4080e7          	jalr	1524(ra) # 80003528 <initlock>
    80002f3c:	01813083          	ld	ra,24(sp)
    80002f40:	01013403          	ld	s0,16(sp)
    80002f44:	0004ac23          	sw	zero,24(s1)
    80002f48:	00813483          	ld	s1,8(sp)
    80002f4c:	02010113          	addi	sp,sp,32
    80002f50:	00008067          	ret

0000000080002f54 <uartinit>:
    80002f54:	ff010113          	addi	sp,sp,-16
    80002f58:	00813423          	sd	s0,8(sp)
    80002f5c:	01010413          	addi	s0,sp,16
    80002f60:	100007b7          	lui	a5,0x10000
    80002f64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002f68:	f8000713          	li	a4,-128
    80002f6c:	00e781a3          	sb	a4,3(a5)
    80002f70:	00300713          	li	a4,3
    80002f74:	00e78023          	sb	a4,0(a5)
    80002f78:	000780a3          	sb	zero,1(a5)
    80002f7c:	00e781a3          	sb	a4,3(a5)
    80002f80:	00700693          	li	a3,7
    80002f84:	00d78123          	sb	a3,2(a5)
    80002f88:	00e780a3          	sb	a4,1(a5)
    80002f8c:	00813403          	ld	s0,8(sp)
    80002f90:	01010113          	addi	sp,sp,16
    80002f94:	00008067          	ret

0000000080002f98 <uartputc>:
    80002f98:	00002797          	auipc	a5,0x2
    80002f9c:	7a07a783          	lw	a5,1952(a5) # 80005738 <panicked>
    80002fa0:	00078463          	beqz	a5,80002fa8 <uartputc+0x10>
    80002fa4:	0000006f          	j	80002fa4 <uartputc+0xc>
    80002fa8:	fd010113          	addi	sp,sp,-48
    80002fac:	02813023          	sd	s0,32(sp)
    80002fb0:	00913c23          	sd	s1,24(sp)
    80002fb4:	01213823          	sd	s2,16(sp)
    80002fb8:	01313423          	sd	s3,8(sp)
    80002fbc:	02113423          	sd	ra,40(sp)
    80002fc0:	03010413          	addi	s0,sp,48
    80002fc4:	00002917          	auipc	s2,0x2
    80002fc8:	77c90913          	addi	s2,s2,1916 # 80005740 <uart_tx_r>
    80002fcc:	00093783          	ld	a5,0(s2)
    80002fd0:	00002497          	auipc	s1,0x2
    80002fd4:	77848493          	addi	s1,s1,1912 # 80005748 <uart_tx_w>
    80002fd8:	0004b703          	ld	a4,0(s1)
    80002fdc:	02078693          	addi	a3,a5,32
    80002fe0:	00050993          	mv	s3,a0
    80002fe4:	02e69c63          	bne	a3,a4,8000301c <uartputc+0x84>
    80002fe8:	00001097          	auipc	ra,0x1
    80002fec:	834080e7          	jalr	-1996(ra) # 8000381c <push_on>
    80002ff0:	00093783          	ld	a5,0(s2)
    80002ff4:	0004b703          	ld	a4,0(s1)
    80002ff8:	02078793          	addi	a5,a5,32
    80002ffc:	00e79463          	bne	a5,a4,80003004 <uartputc+0x6c>
    80003000:	0000006f          	j	80003000 <uartputc+0x68>
    80003004:	00001097          	auipc	ra,0x1
    80003008:	88c080e7          	jalr	-1908(ra) # 80003890 <pop_on>
    8000300c:	00093783          	ld	a5,0(s2)
    80003010:	0004b703          	ld	a4,0(s1)
    80003014:	02078693          	addi	a3,a5,32
    80003018:	fce688e3          	beq	a3,a4,80002fe8 <uartputc+0x50>
    8000301c:	01f77693          	andi	a3,a4,31
    80003020:	00004597          	auipc	a1,0x4
    80003024:	9c058593          	addi	a1,a1,-1600 # 800069e0 <uart_tx_buf>
    80003028:	00d586b3          	add	a3,a1,a3
    8000302c:	00170713          	addi	a4,a4,1
    80003030:	01368023          	sb	s3,0(a3)
    80003034:	00e4b023          	sd	a4,0(s1)
    80003038:	10000637          	lui	a2,0x10000
    8000303c:	02f71063          	bne	a4,a5,8000305c <uartputc+0xc4>
    80003040:	0340006f          	j	80003074 <uartputc+0xdc>
    80003044:	00074703          	lbu	a4,0(a4)
    80003048:	00f93023          	sd	a5,0(s2)
    8000304c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003050:	00093783          	ld	a5,0(s2)
    80003054:	0004b703          	ld	a4,0(s1)
    80003058:	00f70e63          	beq	a4,a5,80003074 <uartputc+0xdc>
    8000305c:	00564683          	lbu	a3,5(a2)
    80003060:	01f7f713          	andi	a4,a5,31
    80003064:	00e58733          	add	a4,a1,a4
    80003068:	0206f693          	andi	a3,a3,32
    8000306c:	00178793          	addi	a5,a5,1
    80003070:	fc069ae3          	bnez	a3,80003044 <uartputc+0xac>
    80003074:	02813083          	ld	ra,40(sp)
    80003078:	02013403          	ld	s0,32(sp)
    8000307c:	01813483          	ld	s1,24(sp)
    80003080:	01013903          	ld	s2,16(sp)
    80003084:	00813983          	ld	s3,8(sp)
    80003088:	03010113          	addi	sp,sp,48
    8000308c:	00008067          	ret

0000000080003090 <uartputc_sync>:
    80003090:	ff010113          	addi	sp,sp,-16
    80003094:	00813423          	sd	s0,8(sp)
    80003098:	01010413          	addi	s0,sp,16
    8000309c:	00002717          	auipc	a4,0x2
    800030a0:	69c72703          	lw	a4,1692(a4) # 80005738 <panicked>
    800030a4:	02071663          	bnez	a4,800030d0 <uartputc_sync+0x40>
    800030a8:	00050793          	mv	a5,a0
    800030ac:	100006b7          	lui	a3,0x10000
    800030b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800030b4:	02077713          	andi	a4,a4,32
    800030b8:	fe070ce3          	beqz	a4,800030b0 <uartputc_sync+0x20>
    800030bc:	0ff7f793          	andi	a5,a5,255
    800030c0:	00f68023          	sb	a5,0(a3)
    800030c4:	00813403          	ld	s0,8(sp)
    800030c8:	01010113          	addi	sp,sp,16
    800030cc:	00008067          	ret
    800030d0:	0000006f          	j	800030d0 <uartputc_sync+0x40>

00000000800030d4 <uartstart>:
    800030d4:	ff010113          	addi	sp,sp,-16
    800030d8:	00813423          	sd	s0,8(sp)
    800030dc:	01010413          	addi	s0,sp,16
    800030e0:	00002617          	auipc	a2,0x2
    800030e4:	66060613          	addi	a2,a2,1632 # 80005740 <uart_tx_r>
    800030e8:	00002517          	auipc	a0,0x2
    800030ec:	66050513          	addi	a0,a0,1632 # 80005748 <uart_tx_w>
    800030f0:	00063783          	ld	a5,0(a2)
    800030f4:	00053703          	ld	a4,0(a0)
    800030f8:	04f70263          	beq	a4,a5,8000313c <uartstart+0x68>
    800030fc:	100005b7          	lui	a1,0x10000
    80003100:	00004817          	auipc	a6,0x4
    80003104:	8e080813          	addi	a6,a6,-1824 # 800069e0 <uart_tx_buf>
    80003108:	01c0006f          	j	80003124 <uartstart+0x50>
    8000310c:	0006c703          	lbu	a4,0(a3)
    80003110:	00f63023          	sd	a5,0(a2)
    80003114:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003118:	00063783          	ld	a5,0(a2)
    8000311c:	00053703          	ld	a4,0(a0)
    80003120:	00f70e63          	beq	a4,a5,8000313c <uartstart+0x68>
    80003124:	01f7f713          	andi	a4,a5,31
    80003128:	00e806b3          	add	a3,a6,a4
    8000312c:	0055c703          	lbu	a4,5(a1)
    80003130:	00178793          	addi	a5,a5,1
    80003134:	02077713          	andi	a4,a4,32
    80003138:	fc071ae3          	bnez	a4,8000310c <uartstart+0x38>
    8000313c:	00813403          	ld	s0,8(sp)
    80003140:	01010113          	addi	sp,sp,16
    80003144:	00008067          	ret

0000000080003148 <uartgetc>:
    80003148:	ff010113          	addi	sp,sp,-16
    8000314c:	00813423          	sd	s0,8(sp)
    80003150:	01010413          	addi	s0,sp,16
    80003154:	10000737          	lui	a4,0x10000
    80003158:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000315c:	0017f793          	andi	a5,a5,1
    80003160:	00078c63          	beqz	a5,80003178 <uartgetc+0x30>
    80003164:	00074503          	lbu	a0,0(a4)
    80003168:	0ff57513          	andi	a0,a0,255
    8000316c:	00813403          	ld	s0,8(sp)
    80003170:	01010113          	addi	sp,sp,16
    80003174:	00008067          	ret
    80003178:	fff00513          	li	a0,-1
    8000317c:	ff1ff06f          	j	8000316c <uartgetc+0x24>

0000000080003180 <uartintr>:
    80003180:	100007b7          	lui	a5,0x10000
    80003184:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003188:	0017f793          	andi	a5,a5,1
    8000318c:	0a078463          	beqz	a5,80003234 <uartintr+0xb4>
    80003190:	fe010113          	addi	sp,sp,-32
    80003194:	00813823          	sd	s0,16(sp)
    80003198:	00913423          	sd	s1,8(sp)
    8000319c:	00113c23          	sd	ra,24(sp)
    800031a0:	02010413          	addi	s0,sp,32
    800031a4:	100004b7          	lui	s1,0x10000
    800031a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800031ac:	0ff57513          	andi	a0,a0,255
    800031b0:	fffff097          	auipc	ra,0xfffff
    800031b4:	534080e7          	jalr	1332(ra) # 800026e4 <consoleintr>
    800031b8:	0054c783          	lbu	a5,5(s1)
    800031bc:	0017f793          	andi	a5,a5,1
    800031c0:	fe0794e3          	bnez	a5,800031a8 <uartintr+0x28>
    800031c4:	00002617          	auipc	a2,0x2
    800031c8:	57c60613          	addi	a2,a2,1404 # 80005740 <uart_tx_r>
    800031cc:	00002517          	auipc	a0,0x2
    800031d0:	57c50513          	addi	a0,a0,1404 # 80005748 <uart_tx_w>
    800031d4:	00063783          	ld	a5,0(a2)
    800031d8:	00053703          	ld	a4,0(a0)
    800031dc:	04f70263          	beq	a4,a5,80003220 <uartintr+0xa0>
    800031e0:	100005b7          	lui	a1,0x10000
    800031e4:	00003817          	auipc	a6,0x3
    800031e8:	7fc80813          	addi	a6,a6,2044 # 800069e0 <uart_tx_buf>
    800031ec:	01c0006f          	j	80003208 <uartintr+0x88>
    800031f0:	0006c703          	lbu	a4,0(a3)
    800031f4:	00f63023          	sd	a5,0(a2)
    800031f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800031fc:	00063783          	ld	a5,0(a2)
    80003200:	00053703          	ld	a4,0(a0)
    80003204:	00f70e63          	beq	a4,a5,80003220 <uartintr+0xa0>
    80003208:	01f7f713          	andi	a4,a5,31
    8000320c:	00e806b3          	add	a3,a6,a4
    80003210:	0055c703          	lbu	a4,5(a1)
    80003214:	00178793          	addi	a5,a5,1
    80003218:	02077713          	andi	a4,a4,32
    8000321c:	fc071ae3          	bnez	a4,800031f0 <uartintr+0x70>
    80003220:	01813083          	ld	ra,24(sp)
    80003224:	01013403          	ld	s0,16(sp)
    80003228:	00813483          	ld	s1,8(sp)
    8000322c:	02010113          	addi	sp,sp,32
    80003230:	00008067          	ret
    80003234:	00002617          	auipc	a2,0x2
    80003238:	50c60613          	addi	a2,a2,1292 # 80005740 <uart_tx_r>
    8000323c:	00002517          	auipc	a0,0x2
    80003240:	50c50513          	addi	a0,a0,1292 # 80005748 <uart_tx_w>
    80003244:	00063783          	ld	a5,0(a2)
    80003248:	00053703          	ld	a4,0(a0)
    8000324c:	04f70263          	beq	a4,a5,80003290 <uartintr+0x110>
    80003250:	100005b7          	lui	a1,0x10000
    80003254:	00003817          	auipc	a6,0x3
    80003258:	78c80813          	addi	a6,a6,1932 # 800069e0 <uart_tx_buf>
    8000325c:	01c0006f          	j	80003278 <uartintr+0xf8>
    80003260:	0006c703          	lbu	a4,0(a3)
    80003264:	00f63023          	sd	a5,0(a2)
    80003268:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000326c:	00063783          	ld	a5,0(a2)
    80003270:	00053703          	ld	a4,0(a0)
    80003274:	02f70063          	beq	a4,a5,80003294 <uartintr+0x114>
    80003278:	01f7f713          	andi	a4,a5,31
    8000327c:	00e806b3          	add	a3,a6,a4
    80003280:	0055c703          	lbu	a4,5(a1)
    80003284:	00178793          	addi	a5,a5,1
    80003288:	02077713          	andi	a4,a4,32
    8000328c:	fc071ae3          	bnez	a4,80003260 <uartintr+0xe0>
    80003290:	00008067          	ret
    80003294:	00008067          	ret

0000000080003298 <kinit>:
    80003298:	fc010113          	addi	sp,sp,-64
    8000329c:	02913423          	sd	s1,40(sp)
    800032a0:	fffff7b7          	lui	a5,0xfffff
    800032a4:	00004497          	auipc	s1,0x4
    800032a8:	76b48493          	addi	s1,s1,1899 # 80007a0f <end+0xfff>
    800032ac:	02813823          	sd	s0,48(sp)
    800032b0:	01313c23          	sd	s3,24(sp)
    800032b4:	00f4f4b3          	and	s1,s1,a5
    800032b8:	02113c23          	sd	ra,56(sp)
    800032bc:	03213023          	sd	s2,32(sp)
    800032c0:	01413823          	sd	s4,16(sp)
    800032c4:	01513423          	sd	s5,8(sp)
    800032c8:	04010413          	addi	s0,sp,64
    800032cc:	000017b7          	lui	a5,0x1
    800032d0:	01100993          	li	s3,17
    800032d4:	00f487b3          	add	a5,s1,a5
    800032d8:	01b99993          	slli	s3,s3,0x1b
    800032dc:	06f9e063          	bltu	s3,a5,8000333c <kinit+0xa4>
    800032e0:	00003a97          	auipc	s5,0x3
    800032e4:	730a8a93          	addi	s5,s5,1840 # 80006a10 <end>
    800032e8:	0754ec63          	bltu	s1,s5,80003360 <kinit+0xc8>
    800032ec:	0734fa63          	bgeu	s1,s3,80003360 <kinit+0xc8>
    800032f0:	00088a37          	lui	s4,0x88
    800032f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800032f8:	00002917          	auipc	s2,0x2
    800032fc:	45890913          	addi	s2,s2,1112 # 80005750 <kmem>
    80003300:	00ca1a13          	slli	s4,s4,0xc
    80003304:	0140006f          	j	80003318 <kinit+0x80>
    80003308:	000017b7          	lui	a5,0x1
    8000330c:	00f484b3          	add	s1,s1,a5
    80003310:	0554e863          	bltu	s1,s5,80003360 <kinit+0xc8>
    80003314:	0534f663          	bgeu	s1,s3,80003360 <kinit+0xc8>
    80003318:	00001637          	lui	a2,0x1
    8000331c:	00100593          	li	a1,1
    80003320:	00048513          	mv	a0,s1
    80003324:	00000097          	auipc	ra,0x0
    80003328:	5e4080e7          	jalr	1508(ra) # 80003908 <__memset>
    8000332c:	00093783          	ld	a5,0(s2)
    80003330:	00f4b023          	sd	a5,0(s1)
    80003334:	00993023          	sd	s1,0(s2)
    80003338:	fd4498e3          	bne	s1,s4,80003308 <kinit+0x70>
    8000333c:	03813083          	ld	ra,56(sp)
    80003340:	03013403          	ld	s0,48(sp)
    80003344:	02813483          	ld	s1,40(sp)
    80003348:	02013903          	ld	s2,32(sp)
    8000334c:	01813983          	ld	s3,24(sp)
    80003350:	01013a03          	ld	s4,16(sp)
    80003354:	00813a83          	ld	s5,8(sp)
    80003358:	04010113          	addi	sp,sp,64
    8000335c:	00008067          	ret
    80003360:	00002517          	auipc	a0,0x2
    80003364:	e9050513          	addi	a0,a0,-368 # 800051f0 <digits+0x18>
    80003368:	fffff097          	auipc	ra,0xfffff
    8000336c:	4b4080e7          	jalr	1204(ra) # 8000281c <panic>

0000000080003370 <freerange>:
    80003370:	fc010113          	addi	sp,sp,-64
    80003374:	000017b7          	lui	a5,0x1
    80003378:	02913423          	sd	s1,40(sp)
    8000337c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003380:	009504b3          	add	s1,a0,s1
    80003384:	fffff537          	lui	a0,0xfffff
    80003388:	02813823          	sd	s0,48(sp)
    8000338c:	02113c23          	sd	ra,56(sp)
    80003390:	03213023          	sd	s2,32(sp)
    80003394:	01313c23          	sd	s3,24(sp)
    80003398:	01413823          	sd	s4,16(sp)
    8000339c:	01513423          	sd	s5,8(sp)
    800033a0:	01613023          	sd	s6,0(sp)
    800033a4:	04010413          	addi	s0,sp,64
    800033a8:	00a4f4b3          	and	s1,s1,a0
    800033ac:	00f487b3          	add	a5,s1,a5
    800033b0:	06f5e463          	bltu	a1,a5,80003418 <freerange+0xa8>
    800033b4:	00003a97          	auipc	s5,0x3
    800033b8:	65ca8a93          	addi	s5,s5,1628 # 80006a10 <end>
    800033bc:	0954e263          	bltu	s1,s5,80003440 <freerange+0xd0>
    800033c0:	01100993          	li	s3,17
    800033c4:	01b99993          	slli	s3,s3,0x1b
    800033c8:	0734fc63          	bgeu	s1,s3,80003440 <freerange+0xd0>
    800033cc:	00058a13          	mv	s4,a1
    800033d0:	00002917          	auipc	s2,0x2
    800033d4:	38090913          	addi	s2,s2,896 # 80005750 <kmem>
    800033d8:	00002b37          	lui	s6,0x2
    800033dc:	0140006f          	j	800033f0 <freerange+0x80>
    800033e0:	000017b7          	lui	a5,0x1
    800033e4:	00f484b3          	add	s1,s1,a5
    800033e8:	0554ec63          	bltu	s1,s5,80003440 <freerange+0xd0>
    800033ec:	0534fa63          	bgeu	s1,s3,80003440 <freerange+0xd0>
    800033f0:	00001637          	lui	a2,0x1
    800033f4:	00100593          	li	a1,1
    800033f8:	00048513          	mv	a0,s1
    800033fc:	00000097          	auipc	ra,0x0
    80003400:	50c080e7          	jalr	1292(ra) # 80003908 <__memset>
    80003404:	00093703          	ld	a4,0(s2)
    80003408:	016487b3          	add	a5,s1,s6
    8000340c:	00e4b023          	sd	a4,0(s1)
    80003410:	00993023          	sd	s1,0(s2)
    80003414:	fcfa76e3          	bgeu	s4,a5,800033e0 <freerange+0x70>
    80003418:	03813083          	ld	ra,56(sp)
    8000341c:	03013403          	ld	s0,48(sp)
    80003420:	02813483          	ld	s1,40(sp)
    80003424:	02013903          	ld	s2,32(sp)
    80003428:	01813983          	ld	s3,24(sp)
    8000342c:	01013a03          	ld	s4,16(sp)
    80003430:	00813a83          	ld	s5,8(sp)
    80003434:	00013b03          	ld	s6,0(sp)
    80003438:	04010113          	addi	sp,sp,64
    8000343c:	00008067          	ret
    80003440:	00002517          	auipc	a0,0x2
    80003444:	db050513          	addi	a0,a0,-592 # 800051f0 <digits+0x18>
    80003448:	fffff097          	auipc	ra,0xfffff
    8000344c:	3d4080e7          	jalr	980(ra) # 8000281c <panic>

0000000080003450 <kfree>:
    80003450:	fe010113          	addi	sp,sp,-32
    80003454:	00813823          	sd	s0,16(sp)
    80003458:	00113c23          	sd	ra,24(sp)
    8000345c:	00913423          	sd	s1,8(sp)
    80003460:	02010413          	addi	s0,sp,32
    80003464:	03451793          	slli	a5,a0,0x34
    80003468:	04079c63          	bnez	a5,800034c0 <kfree+0x70>
    8000346c:	00003797          	auipc	a5,0x3
    80003470:	5a478793          	addi	a5,a5,1444 # 80006a10 <end>
    80003474:	00050493          	mv	s1,a0
    80003478:	04f56463          	bltu	a0,a5,800034c0 <kfree+0x70>
    8000347c:	01100793          	li	a5,17
    80003480:	01b79793          	slli	a5,a5,0x1b
    80003484:	02f57e63          	bgeu	a0,a5,800034c0 <kfree+0x70>
    80003488:	00001637          	lui	a2,0x1
    8000348c:	00100593          	li	a1,1
    80003490:	00000097          	auipc	ra,0x0
    80003494:	478080e7          	jalr	1144(ra) # 80003908 <__memset>
    80003498:	00002797          	auipc	a5,0x2
    8000349c:	2b878793          	addi	a5,a5,696 # 80005750 <kmem>
    800034a0:	0007b703          	ld	a4,0(a5)
    800034a4:	01813083          	ld	ra,24(sp)
    800034a8:	01013403          	ld	s0,16(sp)
    800034ac:	00e4b023          	sd	a4,0(s1)
    800034b0:	0097b023          	sd	s1,0(a5)
    800034b4:	00813483          	ld	s1,8(sp)
    800034b8:	02010113          	addi	sp,sp,32
    800034bc:	00008067          	ret
    800034c0:	00002517          	auipc	a0,0x2
    800034c4:	d3050513          	addi	a0,a0,-720 # 800051f0 <digits+0x18>
    800034c8:	fffff097          	auipc	ra,0xfffff
    800034cc:	354080e7          	jalr	852(ra) # 8000281c <panic>

00000000800034d0 <kalloc>:
    800034d0:	fe010113          	addi	sp,sp,-32
    800034d4:	00813823          	sd	s0,16(sp)
    800034d8:	00913423          	sd	s1,8(sp)
    800034dc:	00113c23          	sd	ra,24(sp)
    800034e0:	02010413          	addi	s0,sp,32
    800034e4:	00002797          	auipc	a5,0x2
    800034e8:	26c78793          	addi	a5,a5,620 # 80005750 <kmem>
    800034ec:	0007b483          	ld	s1,0(a5)
    800034f0:	02048063          	beqz	s1,80003510 <kalloc+0x40>
    800034f4:	0004b703          	ld	a4,0(s1)
    800034f8:	00001637          	lui	a2,0x1
    800034fc:	00500593          	li	a1,5
    80003500:	00048513          	mv	a0,s1
    80003504:	00e7b023          	sd	a4,0(a5)
    80003508:	00000097          	auipc	ra,0x0
    8000350c:	400080e7          	jalr	1024(ra) # 80003908 <__memset>
    80003510:	01813083          	ld	ra,24(sp)
    80003514:	01013403          	ld	s0,16(sp)
    80003518:	00048513          	mv	a0,s1
    8000351c:	00813483          	ld	s1,8(sp)
    80003520:	02010113          	addi	sp,sp,32
    80003524:	00008067          	ret

0000000080003528 <initlock>:
    80003528:	ff010113          	addi	sp,sp,-16
    8000352c:	00813423          	sd	s0,8(sp)
    80003530:	01010413          	addi	s0,sp,16
    80003534:	00813403          	ld	s0,8(sp)
    80003538:	00b53423          	sd	a1,8(a0)
    8000353c:	00052023          	sw	zero,0(a0)
    80003540:	00053823          	sd	zero,16(a0)
    80003544:	01010113          	addi	sp,sp,16
    80003548:	00008067          	ret

000000008000354c <acquire>:
    8000354c:	fe010113          	addi	sp,sp,-32
    80003550:	00813823          	sd	s0,16(sp)
    80003554:	00913423          	sd	s1,8(sp)
    80003558:	00113c23          	sd	ra,24(sp)
    8000355c:	01213023          	sd	s2,0(sp)
    80003560:	02010413          	addi	s0,sp,32
    80003564:	00050493          	mv	s1,a0
    80003568:	10002973          	csrr	s2,sstatus
    8000356c:	100027f3          	csrr	a5,sstatus
    80003570:	ffd7f793          	andi	a5,a5,-3
    80003574:	10079073          	csrw	sstatus,a5
    80003578:	fffff097          	auipc	ra,0xfffff
    8000357c:	8e8080e7          	jalr	-1816(ra) # 80001e60 <mycpu>
    80003580:	07852783          	lw	a5,120(a0)
    80003584:	06078e63          	beqz	a5,80003600 <acquire+0xb4>
    80003588:	fffff097          	auipc	ra,0xfffff
    8000358c:	8d8080e7          	jalr	-1832(ra) # 80001e60 <mycpu>
    80003590:	07852783          	lw	a5,120(a0)
    80003594:	0004a703          	lw	a4,0(s1)
    80003598:	0017879b          	addiw	a5,a5,1
    8000359c:	06f52c23          	sw	a5,120(a0)
    800035a0:	04071063          	bnez	a4,800035e0 <acquire+0x94>
    800035a4:	00100713          	li	a4,1
    800035a8:	00070793          	mv	a5,a4
    800035ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800035b0:	0007879b          	sext.w	a5,a5
    800035b4:	fe079ae3          	bnez	a5,800035a8 <acquire+0x5c>
    800035b8:	0ff0000f          	fence
    800035bc:	fffff097          	auipc	ra,0xfffff
    800035c0:	8a4080e7          	jalr	-1884(ra) # 80001e60 <mycpu>
    800035c4:	01813083          	ld	ra,24(sp)
    800035c8:	01013403          	ld	s0,16(sp)
    800035cc:	00a4b823          	sd	a0,16(s1)
    800035d0:	00013903          	ld	s2,0(sp)
    800035d4:	00813483          	ld	s1,8(sp)
    800035d8:	02010113          	addi	sp,sp,32
    800035dc:	00008067          	ret
    800035e0:	0104b903          	ld	s2,16(s1)
    800035e4:	fffff097          	auipc	ra,0xfffff
    800035e8:	87c080e7          	jalr	-1924(ra) # 80001e60 <mycpu>
    800035ec:	faa91ce3          	bne	s2,a0,800035a4 <acquire+0x58>
    800035f0:	00002517          	auipc	a0,0x2
    800035f4:	c0850513          	addi	a0,a0,-1016 # 800051f8 <digits+0x20>
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	224080e7          	jalr	548(ra) # 8000281c <panic>
    80003600:	00195913          	srli	s2,s2,0x1
    80003604:	fffff097          	auipc	ra,0xfffff
    80003608:	85c080e7          	jalr	-1956(ra) # 80001e60 <mycpu>
    8000360c:	00197913          	andi	s2,s2,1
    80003610:	07252e23          	sw	s2,124(a0)
    80003614:	f75ff06f          	j	80003588 <acquire+0x3c>

0000000080003618 <release>:
    80003618:	fe010113          	addi	sp,sp,-32
    8000361c:	00813823          	sd	s0,16(sp)
    80003620:	00113c23          	sd	ra,24(sp)
    80003624:	00913423          	sd	s1,8(sp)
    80003628:	01213023          	sd	s2,0(sp)
    8000362c:	02010413          	addi	s0,sp,32
    80003630:	00052783          	lw	a5,0(a0)
    80003634:	00079a63          	bnez	a5,80003648 <release+0x30>
    80003638:	00002517          	auipc	a0,0x2
    8000363c:	bc850513          	addi	a0,a0,-1080 # 80005200 <digits+0x28>
    80003640:	fffff097          	auipc	ra,0xfffff
    80003644:	1dc080e7          	jalr	476(ra) # 8000281c <panic>
    80003648:	01053903          	ld	s2,16(a0)
    8000364c:	00050493          	mv	s1,a0
    80003650:	fffff097          	auipc	ra,0xfffff
    80003654:	810080e7          	jalr	-2032(ra) # 80001e60 <mycpu>
    80003658:	fea910e3          	bne	s2,a0,80003638 <release+0x20>
    8000365c:	0004b823          	sd	zero,16(s1)
    80003660:	0ff0000f          	fence
    80003664:	0f50000f          	fence	iorw,ow
    80003668:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000366c:	ffffe097          	auipc	ra,0xffffe
    80003670:	7f4080e7          	jalr	2036(ra) # 80001e60 <mycpu>
    80003674:	100027f3          	csrr	a5,sstatus
    80003678:	0027f793          	andi	a5,a5,2
    8000367c:	04079a63          	bnez	a5,800036d0 <release+0xb8>
    80003680:	07852783          	lw	a5,120(a0)
    80003684:	02f05e63          	blez	a5,800036c0 <release+0xa8>
    80003688:	fff7871b          	addiw	a4,a5,-1
    8000368c:	06e52c23          	sw	a4,120(a0)
    80003690:	00071c63          	bnez	a4,800036a8 <release+0x90>
    80003694:	07c52783          	lw	a5,124(a0)
    80003698:	00078863          	beqz	a5,800036a8 <release+0x90>
    8000369c:	100027f3          	csrr	a5,sstatus
    800036a0:	0027e793          	ori	a5,a5,2
    800036a4:	10079073          	csrw	sstatus,a5
    800036a8:	01813083          	ld	ra,24(sp)
    800036ac:	01013403          	ld	s0,16(sp)
    800036b0:	00813483          	ld	s1,8(sp)
    800036b4:	00013903          	ld	s2,0(sp)
    800036b8:	02010113          	addi	sp,sp,32
    800036bc:	00008067          	ret
    800036c0:	00002517          	auipc	a0,0x2
    800036c4:	b6050513          	addi	a0,a0,-1184 # 80005220 <digits+0x48>
    800036c8:	fffff097          	auipc	ra,0xfffff
    800036cc:	154080e7          	jalr	340(ra) # 8000281c <panic>
    800036d0:	00002517          	auipc	a0,0x2
    800036d4:	b3850513          	addi	a0,a0,-1224 # 80005208 <digits+0x30>
    800036d8:	fffff097          	auipc	ra,0xfffff
    800036dc:	144080e7          	jalr	324(ra) # 8000281c <panic>

00000000800036e0 <holding>:
    800036e0:	00052783          	lw	a5,0(a0)
    800036e4:	00079663          	bnez	a5,800036f0 <holding+0x10>
    800036e8:	00000513          	li	a0,0
    800036ec:	00008067          	ret
    800036f0:	fe010113          	addi	sp,sp,-32
    800036f4:	00813823          	sd	s0,16(sp)
    800036f8:	00913423          	sd	s1,8(sp)
    800036fc:	00113c23          	sd	ra,24(sp)
    80003700:	02010413          	addi	s0,sp,32
    80003704:	01053483          	ld	s1,16(a0)
    80003708:	ffffe097          	auipc	ra,0xffffe
    8000370c:	758080e7          	jalr	1880(ra) # 80001e60 <mycpu>
    80003710:	01813083          	ld	ra,24(sp)
    80003714:	01013403          	ld	s0,16(sp)
    80003718:	40a48533          	sub	a0,s1,a0
    8000371c:	00153513          	seqz	a0,a0
    80003720:	00813483          	ld	s1,8(sp)
    80003724:	02010113          	addi	sp,sp,32
    80003728:	00008067          	ret

000000008000372c <push_off>:
    8000372c:	fe010113          	addi	sp,sp,-32
    80003730:	00813823          	sd	s0,16(sp)
    80003734:	00113c23          	sd	ra,24(sp)
    80003738:	00913423          	sd	s1,8(sp)
    8000373c:	02010413          	addi	s0,sp,32
    80003740:	100024f3          	csrr	s1,sstatus
    80003744:	100027f3          	csrr	a5,sstatus
    80003748:	ffd7f793          	andi	a5,a5,-3
    8000374c:	10079073          	csrw	sstatus,a5
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	710080e7          	jalr	1808(ra) # 80001e60 <mycpu>
    80003758:	07852783          	lw	a5,120(a0)
    8000375c:	02078663          	beqz	a5,80003788 <push_off+0x5c>
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	700080e7          	jalr	1792(ra) # 80001e60 <mycpu>
    80003768:	07852783          	lw	a5,120(a0)
    8000376c:	01813083          	ld	ra,24(sp)
    80003770:	01013403          	ld	s0,16(sp)
    80003774:	0017879b          	addiw	a5,a5,1
    80003778:	06f52c23          	sw	a5,120(a0)
    8000377c:	00813483          	ld	s1,8(sp)
    80003780:	02010113          	addi	sp,sp,32
    80003784:	00008067          	ret
    80003788:	0014d493          	srli	s1,s1,0x1
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	6d4080e7          	jalr	1748(ra) # 80001e60 <mycpu>
    80003794:	0014f493          	andi	s1,s1,1
    80003798:	06952e23          	sw	s1,124(a0)
    8000379c:	fc5ff06f          	j	80003760 <push_off+0x34>

00000000800037a0 <pop_off>:
    800037a0:	ff010113          	addi	sp,sp,-16
    800037a4:	00813023          	sd	s0,0(sp)
    800037a8:	00113423          	sd	ra,8(sp)
    800037ac:	01010413          	addi	s0,sp,16
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	6b0080e7          	jalr	1712(ra) # 80001e60 <mycpu>
    800037b8:	100027f3          	csrr	a5,sstatus
    800037bc:	0027f793          	andi	a5,a5,2
    800037c0:	04079663          	bnez	a5,8000380c <pop_off+0x6c>
    800037c4:	07852783          	lw	a5,120(a0)
    800037c8:	02f05a63          	blez	a5,800037fc <pop_off+0x5c>
    800037cc:	fff7871b          	addiw	a4,a5,-1
    800037d0:	06e52c23          	sw	a4,120(a0)
    800037d4:	00071c63          	bnez	a4,800037ec <pop_off+0x4c>
    800037d8:	07c52783          	lw	a5,124(a0)
    800037dc:	00078863          	beqz	a5,800037ec <pop_off+0x4c>
    800037e0:	100027f3          	csrr	a5,sstatus
    800037e4:	0027e793          	ori	a5,a5,2
    800037e8:	10079073          	csrw	sstatus,a5
    800037ec:	00813083          	ld	ra,8(sp)
    800037f0:	00013403          	ld	s0,0(sp)
    800037f4:	01010113          	addi	sp,sp,16
    800037f8:	00008067          	ret
    800037fc:	00002517          	auipc	a0,0x2
    80003800:	a2450513          	addi	a0,a0,-1500 # 80005220 <digits+0x48>
    80003804:	fffff097          	auipc	ra,0xfffff
    80003808:	018080e7          	jalr	24(ra) # 8000281c <panic>
    8000380c:	00002517          	auipc	a0,0x2
    80003810:	9fc50513          	addi	a0,a0,-1540 # 80005208 <digits+0x30>
    80003814:	fffff097          	auipc	ra,0xfffff
    80003818:	008080e7          	jalr	8(ra) # 8000281c <panic>

000000008000381c <push_on>:
    8000381c:	fe010113          	addi	sp,sp,-32
    80003820:	00813823          	sd	s0,16(sp)
    80003824:	00113c23          	sd	ra,24(sp)
    80003828:	00913423          	sd	s1,8(sp)
    8000382c:	02010413          	addi	s0,sp,32
    80003830:	100024f3          	csrr	s1,sstatus
    80003834:	100027f3          	csrr	a5,sstatus
    80003838:	0027e793          	ori	a5,a5,2
    8000383c:	10079073          	csrw	sstatus,a5
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	620080e7          	jalr	1568(ra) # 80001e60 <mycpu>
    80003848:	07852783          	lw	a5,120(a0)
    8000384c:	02078663          	beqz	a5,80003878 <push_on+0x5c>
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	610080e7          	jalr	1552(ra) # 80001e60 <mycpu>
    80003858:	07852783          	lw	a5,120(a0)
    8000385c:	01813083          	ld	ra,24(sp)
    80003860:	01013403          	ld	s0,16(sp)
    80003864:	0017879b          	addiw	a5,a5,1
    80003868:	06f52c23          	sw	a5,120(a0)
    8000386c:	00813483          	ld	s1,8(sp)
    80003870:	02010113          	addi	sp,sp,32
    80003874:	00008067          	ret
    80003878:	0014d493          	srli	s1,s1,0x1
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	5e4080e7          	jalr	1508(ra) # 80001e60 <mycpu>
    80003884:	0014f493          	andi	s1,s1,1
    80003888:	06952e23          	sw	s1,124(a0)
    8000388c:	fc5ff06f          	j	80003850 <push_on+0x34>

0000000080003890 <pop_on>:
    80003890:	ff010113          	addi	sp,sp,-16
    80003894:	00813023          	sd	s0,0(sp)
    80003898:	00113423          	sd	ra,8(sp)
    8000389c:	01010413          	addi	s0,sp,16
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	5c0080e7          	jalr	1472(ra) # 80001e60 <mycpu>
    800038a8:	100027f3          	csrr	a5,sstatus
    800038ac:	0027f793          	andi	a5,a5,2
    800038b0:	04078463          	beqz	a5,800038f8 <pop_on+0x68>
    800038b4:	07852783          	lw	a5,120(a0)
    800038b8:	02f05863          	blez	a5,800038e8 <pop_on+0x58>
    800038bc:	fff7879b          	addiw	a5,a5,-1
    800038c0:	06f52c23          	sw	a5,120(a0)
    800038c4:	07853783          	ld	a5,120(a0)
    800038c8:	00079863          	bnez	a5,800038d8 <pop_on+0x48>
    800038cc:	100027f3          	csrr	a5,sstatus
    800038d0:	ffd7f793          	andi	a5,a5,-3
    800038d4:	10079073          	csrw	sstatus,a5
    800038d8:	00813083          	ld	ra,8(sp)
    800038dc:	00013403          	ld	s0,0(sp)
    800038e0:	01010113          	addi	sp,sp,16
    800038e4:	00008067          	ret
    800038e8:	00002517          	auipc	a0,0x2
    800038ec:	96050513          	addi	a0,a0,-1696 # 80005248 <digits+0x70>
    800038f0:	fffff097          	auipc	ra,0xfffff
    800038f4:	f2c080e7          	jalr	-212(ra) # 8000281c <panic>
    800038f8:	00002517          	auipc	a0,0x2
    800038fc:	93050513          	addi	a0,a0,-1744 # 80005228 <digits+0x50>
    80003900:	fffff097          	auipc	ra,0xfffff
    80003904:	f1c080e7          	jalr	-228(ra) # 8000281c <panic>

0000000080003908 <__memset>:
    80003908:	ff010113          	addi	sp,sp,-16
    8000390c:	00813423          	sd	s0,8(sp)
    80003910:	01010413          	addi	s0,sp,16
    80003914:	1a060e63          	beqz	a2,80003ad0 <__memset+0x1c8>
    80003918:	40a007b3          	neg	a5,a0
    8000391c:	0077f793          	andi	a5,a5,7
    80003920:	00778693          	addi	a3,a5,7
    80003924:	00b00813          	li	a6,11
    80003928:	0ff5f593          	andi	a1,a1,255
    8000392c:	fff6071b          	addiw	a4,a2,-1
    80003930:	1b06e663          	bltu	a3,a6,80003adc <__memset+0x1d4>
    80003934:	1cd76463          	bltu	a4,a3,80003afc <__memset+0x1f4>
    80003938:	1a078e63          	beqz	a5,80003af4 <__memset+0x1ec>
    8000393c:	00b50023          	sb	a1,0(a0)
    80003940:	00100713          	li	a4,1
    80003944:	1ae78463          	beq	a5,a4,80003aec <__memset+0x1e4>
    80003948:	00b500a3          	sb	a1,1(a0)
    8000394c:	00200713          	li	a4,2
    80003950:	1ae78a63          	beq	a5,a4,80003b04 <__memset+0x1fc>
    80003954:	00b50123          	sb	a1,2(a0)
    80003958:	00300713          	li	a4,3
    8000395c:	18e78463          	beq	a5,a4,80003ae4 <__memset+0x1dc>
    80003960:	00b501a3          	sb	a1,3(a0)
    80003964:	00400713          	li	a4,4
    80003968:	1ae78263          	beq	a5,a4,80003b0c <__memset+0x204>
    8000396c:	00b50223          	sb	a1,4(a0)
    80003970:	00500713          	li	a4,5
    80003974:	1ae78063          	beq	a5,a4,80003b14 <__memset+0x20c>
    80003978:	00b502a3          	sb	a1,5(a0)
    8000397c:	00700713          	li	a4,7
    80003980:	18e79e63          	bne	a5,a4,80003b1c <__memset+0x214>
    80003984:	00b50323          	sb	a1,6(a0)
    80003988:	00700e93          	li	t4,7
    8000398c:	00859713          	slli	a4,a1,0x8
    80003990:	00e5e733          	or	a4,a1,a4
    80003994:	01059e13          	slli	t3,a1,0x10
    80003998:	01c76e33          	or	t3,a4,t3
    8000399c:	01859313          	slli	t1,a1,0x18
    800039a0:	006e6333          	or	t1,t3,t1
    800039a4:	02059893          	slli	a7,a1,0x20
    800039a8:	40f60e3b          	subw	t3,a2,a5
    800039ac:	011368b3          	or	a7,t1,a7
    800039b0:	02859813          	slli	a6,a1,0x28
    800039b4:	0108e833          	or	a6,a7,a6
    800039b8:	03059693          	slli	a3,a1,0x30
    800039bc:	003e589b          	srliw	a7,t3,0x3
    800039c0:	00d866b3          	or	a3,a6,a3
    800039c4:	03859713          	slli	a4,a1,0x38
    800039c8:	00389813          	slli	a6,a7,0x3
    800039cc:	00f507b3          	add	a5,a0,a5
    800039d0:	00e6e733          	or	a4,a3,a4
    800039d4:	000e089b          	sext.w	a7,t3
    800039d8:	00f806b3          	add	a3,a6,a5
    800039dc:	00e7b023          	sd	a4,0(a5)
    800039e0:	00878793          	addi	a5,a5,8
    800039e4:	fed79ce3          	bne	a5,a3,800039dc <__memset+0xd4>
    800039e8:	ff8e7793          	andi	a5,t3,-8
    800039ec:	0007871b          	sext.w	a4,a5
    800039f0:	01d787bb          	addw	a5,a5,t4
    800039f4:	0ce88e63          	beq	a7,a4,80003ad0 <__memset+0x1c8>
    800039f8:	00f50733          	add	a4,a0,a5
    800039fc:	00b70023          	sb	a1,0(a4)
    80003a00:	0017871b          	addiw	a4,a5,1
    80003a04:	0cc77663          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003a08:	00e50733          	add	a4,a0,a4
    80003a0c:	00b70023          	sb	a1,0(a4)
    80003a10:	0027871b          	addiw	a4,a5,2
    80003a14:	0ac77e63          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003a18:	00e50733          	add	a4,a0,a4
    80003a1c:	00b70023          	sb	a1,0(a4)
    80003a20:	0037871b          	addiw	a4,a5,3
    80003a24:	0ac77663          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003a28:	00e50733          	add	a4,a0,a4
    80003a2c:	00b70023          	sb	a1,0(a4)
    80003a30:	0047871b          	addiw	a4,a5,4
    80003a34:	08c77e63          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003a38:	00e50733          	add	a4,a0,a4
    80003a3c:	00b70023          	sb	a1,0(a4)
    80003a40:	0057871b          	addiw	a4,a5,5
    80003a44:	08c77663          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003a48:	00e50733          	add	a4,a0,a4
    80003a4c:	00b70023          	sb	a1,0(a4)
    80003a50:	0067871b          	addiw	a4,a5,6
    80003a54:	06c77e63          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003a58:	00e50733          	add	a4,a0,a4
    80003a5c:	00b70023          	sb	a1,0(a4)
    80003a60:	0077871b          	addiw	a4,a5,7
    80003a64:	06c77663          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003a68:	00e50733          	add	a4,a0,a4
    80003a6c:	00b70023          	sb	a1,0(a4)
    80003a70:	0087871b          	addiw	a4,a5,8
    80003a74:	04c77e63          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003a78:	00e50733          	add	a4,a0,a4
    80003a7c:	00b70023          	sb	a1,0(a4)
    80003a80:	0097871b          	addiw	a4,a5,9
    80003a84:	04c77663          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003a88:	00e50733          	add	a4,a0,a4
    80003a8c:	00b70023          	sb	a1,0(a4)
    80003a90:	00a7871b          	addiw	a4,a5,10
    80003a94:	02c77e63          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003a98:	00e50733          	add	a4,a0,a4
    80003a9c:	00b70023          	sb	a1,0(a4)
    80003aa0:	00b7871b          	addiw	a4,a5,11
    80003aa4:	02c77663          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003aa8:	00e50733          	add	a4,a0,a4
    80003aac:	00b70023          	sb	a1,0(a4)
    80003ab0:	00c7871b          	addiw	a4,a5,12
    80003ab4:	00c77e63          	bgeu	a4,a2,80003ad0 <__memset+0x1c8>
    80003ab8:	00e50733          	add	a4,a0,a4
    80003abc:	00b70023          	sb	a1,0(a4)
    80003ac0:	00d7879b          	addiw	a5,a5,13
    80003ac4:	00c7f663          	bgeu	a5,a2,80003ad0 <__memset+0x1c8>
    80003ac8:	00f507b3          	add	a5,a0,a5
    80003acc:	00b78023          	sb	a1,0(a5)
    80003ad0:	00813403          	ld	s0,8(sp)
    80003ad4:	01010113          	addi	sp,sp,16
    80003ad8:	00008067          	ret
    80003adc:	00b00693          	li	a3,11
    80003ae0:	e55ff06f          	j	80003934 <__memset+0x2c>
    80003ae4:	00300e93          	li	t4,3
    80003ae8:	ea5ff06f          	j	8000398c <__memset+0x84>
    80003aec:	00100e93          	li	t4,1
    80003af0:	e9dff06f          	j	8000398c <__memset+0x84>
    80003af4:	00000e93          	li	t4,0
    80003af8:	e95ff06f          	j	8000398c <__memset+0x84>
    80003afc:	00000793          	li	a5,0
    80003b00:	ef9ff06f          	j	800039f8 <__memset+0xf0>
    80003b04:	00200e93          	li	t4,2
    80003b08:	e85ff06f          	j	8000398c <__memset+0x84>
    80003b0c:	00400e93          	li	t4,4
    80003b10:	e7dff06f          	j	8000398c <__memset+0x84>
    80003b14:	00500e93          	li	t4,5
    80003b18:	e75ff06f          	j	8000398c <__memset+0x84>
    80003b1c:	00600e93          	li	t4,6
    80003b20:	e6dff06f          	j	8000398c <__memset+0x84>

0000000080003b24 <__memmove>:
    80003b24:	ff010113          	addi	sp,sp,-16
    80003b28:	00813423          	sd	s0,8(sp)
    80003b2c:	01010413          	addi	s0,sp,16
    80003b30:	0e060863          	beqz	a2,80003c20 <__memmove+0xfc>
    80003b34:	fff6069b          	addiw	a3,a2,-1
    80003b38:	0006881b          	sext.w	a6,a3
    80003b3c:	0ea5e863          	bltu	a1,a0,80003c2c <__memmove+0x108>
    80003b40:	00758713          	addi	a4,a1,7
    80003b44:	00a5e7b3          	or	a5,a1,a0
    80003b48:	40a70733          	sub	a4,a4,a0
    80003b4c:	0077f793          	andi	a5,a5,7
    80003b50:	00f73713          	sltiu	a4,a4,15
    80003b54:	00174713          	xori	a4,a4,1
    80003b58:	0017b793          	seqz	a5,a5
    80003b5c:	00e7f7b3          	and	a5,a5,a4
    80003b60:	10078863          	beqz	a5,80003c70 <__memmove+0x14c>
    80003b64:	00900793          	li	a5,9
    80003b68:	1107f463          	bgeu	a5,a6,80003c70 <__memmove+0x14c>
    80003b6c:	0036581b          	srliw	a6,a2,0x3
    80003b70:	fff8081b          	addiw	a6,a6,-1
    80003b74:	02081813          	slli	a6,a6,0x20
    80003b78:	01d85893          	srli	a7,a6,0x1d
    80003b7c:	00858813          	addi	a6,a1,8
    80003b80:	00058793          	mv	a5,a1
    80003b84:	00050713          	mv	a4,a0
    80003b88:	01088833          	add	a6,a7,a6
    80003b8c:	0007b883          	ld	a7,0(a5)
    80003b90:	00878793          	addi	a5,a5,8
    80003b94:	00870713          	addi	a4,a4,8
    80003b98:	ff173c23          	sd	a7,-8(a4)
    80003b9c:	ff0798e3          	bne	a5,a6,80003b8c <__memmove+0x68>
    80003ba0:	ff867713          	andi	a4,a2,-8
    80003ba4:	02071793          	slli	a5,a4,0x20
    80003ba8:	0207d793          	srli	a5,a5,0x20
    80003bac:	00f585b3          	add	a1,a1,a5
    80003bb0:	40e686bb          	subw	a3,a3,a4
    80003bb4:	00f507b3          	add	a5,a0,a5
    80003bb8:	06e60463          	beq	a2,a4,80003c20 <__memmove+0xfc>
    80003bbc:	0005c703          	lbu	a4,0(a1)
    80003bc0:	00e78023          	sb	a4,0(a5)
    80003bc4:	04068e63          	beqz	a3,80003c20 <__memmove+0xfc>
    80003bc8:	0015c603          	lbu	a2,1(a1)
    80003bcc:	00100713          	li	a4,1
    80003bd0:	00c780a3          	sb	a2,1(a5)
    80003bd4:	04e68663          	beq	a3,a4,80003c20 <__memmove+0xfc>
    80003bd8:	0025c603          	lbu	a2,2(a1)
    80003bdc:	00200713          	li	a4,2
    80003be0:	00c78123          	sb	a2,2(a5)
    80003be4:	02e68e63          	beq	a3,a4,80003c20 <__memmove+0xfc>
    80003be8:	0035c603          	lbu	a2,3(a1)
    80003bec:	00300713          	li	a4,3
    80003bf0:	00c781a3          	sb	a2,3(a5)
    80003bf4:	02e68663          	beq	a3,a4,80003c20 <__memmove+0xfc>
    80003bf8:	0045c603          	lbu	a2,4(a1)
    80003bfc:	00400713          	li	a4,4
    80003c00:	00c78223          	sb	a2,4(a5)
    80003c04:	00e68e63          	beq	a3,a4,80003c20 <__memmove+0xfc>
    80003c08:	0055c603          	lbu	a2,5(a1)
    80003c0c:	00500713          	li	a4,5
    80003c10:	00c782a3          	sb	a2,5(a5)
    80003c14:	00e68663          	beq	a3,a4,80003c20 <__memmove+0xfc>
    80003c18:	0065c703          	lbu	a4,6(a1)
    80003c1c:	00e78323          	sb	a4,6(a5)
    80003c20:	00813403          	ld	s0,8(sp)
    80003c24:	01010113          	addi	sp,sp,16
    80003c28:	00008067          	ret
    80003c2c:	02061713          	slli	a4,a2,0x20
    80003c30:	02075713          	srli	a4,a4,0x20
    80003c34:	00e587b3          	add	a5,a1,a4
    80003c38:	f0f574e3          	bgeu	a0,a5,80003b40 <__memmove+0x1c>
    80003c3c:	02069613          	slli	a2,a3,0x20
    80003c40:	02065613          	srli	a2,a2,0x20
    80003c44:	fff64613          	not	a2,a2
    80003c48:	00e50733          	add	a4,a0,a4
    80003c4c:	00c78633          	add	a2,a5,a2
    80003c50:	fff7c683          	lbu	a3,-1(a5)
    80003c54:	fff78793          	addi	a5,a5,-1
    80003c58:	fff70713          	addi	a4,a4,-1
    80003c5c:	00d70023          	sb	a3,0(a4)
    80003c60:	fec798e3          	bne	a5,a2,80003c50 <__memmove+0x12c>
    80003c64:	00813403          	ld	s0,8(sp)
    80003c68:	01010113          	addi	sp,sp,16
    80003c6c:	00008067          	ret
    80003c70:	02069713          	slli	a4,a3,0x20
    80003c74:	02075713          	srli	a4,a4,0x20
    80003c78:	00170713          	addi	a4,a4,1
    80003c7c:	00e50733          	add	a4,a0,a4
    80003c80:	00050793          	mv	a5,a0
    80003c84:	0005c683          	lbu	a3,0(a1)
    80003c88:	00178793          	addi	a5,a5,1
    80003c8c:	00158593          	addi	a1,a1,1
    80003c90:	fed78fa3          	sb	a3,-1(a5)
    80003c94:	fee798e3          	bne	a5,a4,80003c84 <__memmove+0x160>
    80003c98:	f89ff06f          	j	80003c20 <__memmove+0xfc>

0000000080003c9c <__mem_free>:
    80003c9c:	ff010113          	addi	sp,sp,-16
    80003ca0:	00813423          	sd	s0,8(sp)
    80003ca4:	01010413          	addi	s0,sp,16
    80003ca8:	00002597          	auipc	a1,0x2
    80003cac:	ab058593          	addi	a1,a1,-1360 # 80005758 <freep>
    80003cb0:	0005b783          	ld	a5,0(a1)
    80003cb4:	ff050693          	addi	a3,a0,-16
    80003cb8:	0007b703          	ld	a4,0(a5)
    80003cbc:	00d7fc63          	bgeu	a5,a3,80003cd4 <__mem_free+0x38>
    80003cc0:	00e6ee63          	bltu	a3,a4,80003cdc <__mem_free+0x40>
    80003cc4:	00e7fc63          	bgeu	a5,a4,80003cdc <__mem_free+0x40>
    80003cc8:	00070793          	mv	a5,a4
    80003ccc:	0007b703          	ld	a4,0(a5)
    80003cd0:	fed7e8e3          	bltu	a5,a3,80003cc0 <__mem_free+0x24>
    80003cd4:	fee7eae3          	bltu	a5,a4,80003cc8 <__mem_free+0x2c>
    80003cd8:	fee6f8e3          	bgeu	a3,a4,80003cc8 <__mem_free+0x2c>
    80003cdc:	ff852803          	lw	a6,-8(a0)
    80003ce0:	02081613          	slli	a2,a6,0x20
    80003ce4:	01c65613          	srli	a2,a2,0x1c
    80003ce8:	00c68633          	add	a2,a3,a2
    80003cec:	02c70a63          	beq	a4,a2,80003d20 <__mem_free+0x84>
    80003cf0:	fee53823          	sd	a4,-16(a0)
    80003cf4:	0087a503          	lw	a0,8(a5)
    80003cf8:	02051613          	slli	a2,a0,0x20
    80003cfc:	01c65613          	srli	a2,a2,0x1c
    80003d00:	00c78633          	add	a2,a5,a2
    80003d04:	04c68263          	beq	a3,a2,80003d48 <__mem_free+0xac>
    80003d08:	00813403          	ld	s0,8(sp)
    80003d0c:	00d7b023          	sd	a3,0(a5)
    80003d10:	00f5b023          	sd	a5,0(a1)
    80003d14:	00000513          	li	a0,0
    80003d18:	01010113          	addi	sp,sp,16
    80003d1c:	00008067          	ret
    80003d20:	00872603          	lw	a2,8(a4)
    80003d24:	00073703          	ld	a4,0(a4)
    80003d28:	0106083b          	addw	a6,a2,a6
    80003d2c:	ff052c23          	sw	a6,-8(a0)
    80003d30:	fee53823          	sd	a4,-16(a0)
    80003d34:	0087a503          	lw	a0,8(a5)
    80003d38:	02051613          	slli	a2,a0,0x20
    80003d3c:	01c65613          	srli	a2,a2,0x1c
    80003d40:	00c78633          	add	a2,a5,a2
    80003d44:	fcc692e3          	bne	a3,a2,80003d08 <__mem_free+0x6c>
    80003d48:	00813403          	ld	s0,8(sp)
    80003d4c:	0105053b          	addw	a0,a0,a6
    80003d50:	00a7a423          	sw	a0,8(a5)
    80003d54:	00e7b023          	sd	a4,0(a5)
    80003d58:	00f5b023          	sd	a5,0(a1)
    80003d5c:	00000513          	li	a0,0
    80003d60:	01010113          	addi	sp,sp,16
    80003d64:	00008067          	ret

0000000080003d68 <__mem_alloc>:
    80003d68:	fc010113          	addi	sp,sp,-64
    80003d6c:	02813823          	sd	s0,48(sp)
    80003d70:	02913423          	sd	s1,40(sp)
    80003d74:	03213023          	sd	s2,32(sp)
    80003d78:	01513423          	sd	s5,8(sp)
    80003d7c:	02113c23          	sd	ra,56(sp)
    80003d80:	01313c23          	sd	s3,24(sp)
    80003d84:	01413823          	sd	s4,16(sp)
    80003d88:	01613023          	sd	s6,0(sp)
    80003d8c:	04010413          	addi	s0,sp,64
    80003d90:	00002a97          	auipc	s5,0x2
    80003d94:	9c8a8a93          	addi	s5,s5,-1592 # 80005758 <freep>
    80003d98:	00f50913          	addi	s2,a0,15
    80003d9c:	000ab683          	ld	a3,0(s5)
    80003da0:	00495913          	srli	s2,s2,0x4
    80003da4:	0019049b          	addiw	s1,s2,1
    80003da8:	00048913          	mv	s2,s1
    80003dac:	0c068c63          	beqz	a3,80003e84 <__mem_alloc+0x11c>
    80003db0:	0006b503          	ld	a0,0(a3)
    80003db4:	00852703          	lw	a4,8(a0)
    80003db8:	10977063          	bgeu	a4,s1,80003eb8 <__mem_alloc+0x150>
    80003dbc:	000017b7          	lui	a5,0x1
    80003dc0:	0009099b          	sext.w	s3,s2
    80003dc4:	0af4e863          	bltu	s1,a5,80003e74 <__mem_alloc+0x10c>
    80003dc8:	02099a13          	slli	s4,s3,0x20
    80003dcc:	01ca5a13          	srli	s4,s4,0x1c
    80003dd0:	fff00b13          	li	s6,-1
    80003dd4:	0100006f          	j	80003de4 <__mem_alloc+0x7c>
    80003dd8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003ddc:	00852703          	lw	a4,8(a0)
    80003de0:	04977463          	bgeu	a4,s1,80003e28 <__mem_alloc+0xc0>
    80003de4:	00050793          	mv	a5,a0
    80003de8:	fea698e3          	bne	a3,a0,80003dd8 <__mem_alloc+0x70>
    80003dec:	000a0513          	mv	a0,s4
    80003df0:	00000097          	auipc	ra,0x0
    80003df4:	1f0080e7          	jalr	496(ra) # 80003fe0 <kvmincrease>
    80003df8:	00050793          	mv	a5,a0
    80003dfc:	01050513          	addi	a0,a0,16
    80003e00:	07678e63          	beq	a5,s6,80003e7c <__mem_alloc+0x114>
    80003e04:	0137a423          	sw	s3,8(a5)
    80003e08:	00000097          	auipc	ra,0x0
    80003e0c:	e94080e7          	jalr	-364(ra) # 80003c9c <__mem_free>
    80003e10:	000ab783          	ld	a5,0(s5)
    80003e14:	06078463          	beqz	a5,80003e7c <__mem_alloc+0x114>
    80003e18:	0007b503          	ld	a0,0(a5)
    80003e1c:	00078693          	mv	a3,a5
    80003e20:	00852703          	lw	a4,8(a0)
    80003e24:	fc9760e3          	bltu	a4,s1,80003de4 <__mem_alloc+0x7c>
    80003e28:	08e48263          	beq	s1,a4,80003eac <__mem_alloc+0x144>
    80003e2c:	4127073b          	subw	a4,a4,s2
    80003e30:	02071693          	slli	a3,a4,0x20
    80003e34:	01c6d693          	srli	a3,a3,0x1c
    80003e38:	00e52423          	sw	a4,8(a0)
    80003e3c:	00d50533          	add	a0,a0,a3
    80003e40:	01252423          	sw	s2,8(a0)
    80003e44:	00fab023          	sd	a5,0(s5)
    80003e48:	01050513          	addi	a0,a0,16
    80003e4c:	03813083          	ld	ra,56(sp)
    80003e50:	03013403          	ld	s0,48(sp)
    80003e54:	02813483          	ld	s1,40(sp)
    80003e58:	02013903          	ld	s2,32(sp)
    80003e5c:	01813983          	ld	s3,24(sp)
    80003e60:	01013a03          	ld	s4,16(sp)
    80003e64:	00813a83          	ld	s5,8(sp)
    80003e68:	00013b03          	ld	s6,0(sp)
    80003e6c:	04010113          	addi	sp,sp,64
    80003e70:	00008067          	ret
    80003e74:	000019b7          	lui	s3,0x1
    80003e78:	f51ff06f          	j	80003dc8 <__mem_alloc+0x60>
    80003e7c:	00000513          	li	a0,0
    80003e80:	fcdff06f          	j	80003e4c <__mem_alloc+0xe4>
    80003e84:	00003797          	auipc	a5,0x3
    80003e88:	b7c78793          	addi	a5,a5,-1156 # 80006a00 <base>
    80003e8c:	00078513          	mv	a0,a5
    80003e90:	00fab023          	sd	a5,0(s5)
    80003e94:	00f7b023          	sd	a5,0(a5)
    80003e98:	00000713          	li	a4,0
    80003e9c:	00003797          	auipc	a5,0x3
    80003ea0:	b607a623          	sw	zero,-1172(a5) # 80006a08 <base+0x8>
    80003ea4:	00050693          	mv	a3,a0
    80003ea8:	f11ff06f          	j	80003db8 <__mem_alloc+0x50>
    80003eac:	00053703          	ld	a4,0(a0)
    80003eb0:	00e7b023          	sd	a4,0(a5)
    80003eb4:	f91ff06f          	j	80003e44 <__mem_alloc+0xdc>
    80003eb8:	00068793          	mv	a5,a3
    80003ebc:	f6dff06f          	j	80003e28 <__mem_alloc+0xc0>

0000000080003ec0 <__putc>:
    80003ec0:	fe010113          	addi	sp,sp,-32
    80003ec4:	00813823          	sd	s0,16(sp)
    80003ec8:	00113c23          	sd	ra,24(sp)
    80003ecc:	02010413          	addi	s0,sp,32
    80003ed0:	00050793          	mv	a5,a0
    80003ed4:	fef40593          	addi	a1,s0,-17
    80003ed8:	00100613          	li	a2,1
    80003edc:	00000513          	li	a0,0
    80003ee0:	fef407a3          	sb	a5,-17(s0)
    80003ee4:	fffff097          	auipc	ra,0xfffff
    80003ee8:	918080e7          	jalr	-1768(ra) # 800027fc <console_write>
    80003eec:	01813083          	ld	ra,24(sp)
    80003ef0:	01013403          	ld	s0,16(sp)
    80003ef4:	02010113          	addi	sp,sp,32
    80003ef8:	00008067          	ret

0000000080003efc <__getc>:
    80003efc:	fe010113          	addi	sp,sp,-32
    80003f00:	00813823          	sd	s0,16(sp)
    80003f04:	00113c23          	sd	ra,24(sp)
    80003f08:	02010413          	addi	s0,sp,32
    80003f0c:	fe840593          	addi	a1,s0,-24
    80003f10:	00100613          	li	a2,1
    80003f14:	00000513          	li	a0,0
    80003f18:	fffff097          	auipc	ra,0xfffff
    80003f1c:	8c4080e7          	jalr	-1852(ra) # 800027dc <console_read>
    80003f20:	fe844503          	lbu	a0,-24(s0)
    80003f24:	01813083          	ld	ra,24(sp)
    80003f28:	01013403          	ld	s0,16(sp)
    80003f2c:	02010113          	addi	sp,sp,32
    80003f30:	00008067          	ret

0000000080003f34 <console_handler>:
    80003f34:	fe010113          	addi	sp,sp,-32
    80003f38:	00813823          	sd	s0,16(sp)
    80003f3c:	00113c23          	sd	ra,24(sp)
    80003f40:	00913423          	sd	s1,8(sp)
    80003f44:	02010413          	addi	s0,sp,32
    80003f48:	14202773          	csrr	a4,scause
    80003f4c:	100027f3          	csrr	a5,sstatus
    80003f50:	0027f793          	andi	a5,a5,2
    80003f54:	06079e63          	bnez	a5,80003fd0 <console_handler+0x9c>
    80003f58:	00074c63          	bltz	a4,80003f70 <console_handler+0x3c>
    80003f5c:	01813083          	ld	ra,24(sp)
    80003f60:	01013403          	ld	s0,16(sp)
    80003f64:	00813483          	ld	s1,8(sp)
    80003f68:	02010113          	addi	sp,sp,32
    80003f6c:	00008067          	ret
    80003f70:	0ff77713          	andi	a4,a4,255
    80003f74:	00900793          	li	a5,9
    80003f78:	fef712e3          	bne	a4,a5,80003f5c <console_handler+0x28>
    80003f7c:	ffffe097          	auipc	ra,0xffffe
    80003f80:	4b8080e7          	jalr	1208(ra) # 80002434 <plic_claim>
    80003f84:	00a00793          	li	a5,10
    80003f88:	00050493          	mv	s1,a0
    80003f8c:	02f50c63          	beq	a0,a5,80003fc4 <console_handler+0x90>
    80003f90:	fc0506e3          	beqz	a0,80003f5c <console_handler+0x28>
    80003f94:	00050593          	mv	a1,a0
    80003f98:	00001517          	auipc	a0,0x1
    80003f9c:	1b850513          	addi	a0,a0,440 # 80005150 <_ZZ12printIntegermE6digits+0x120>
    80003fa0:	fffff097          	auipc	ra,0xfffff
    80003fa4:	8d8080e7          	jalr	-1832(ra) # 80002878 <__printf>
    80003fa8:	01013403          	ld	s0,16(sp)
    80003fac:	01813083          	ld	ra,24(sp)
    80003fb0:	00048513          	mv	a0,s1
    80003fb4:	00813483          	ld	s1,8(sp)
    80003fb8:	02010113          	addi	sp,sp,32
    80003fbc:	ffffe317          	auipc	t1,0xffffe
    80003fc0:	4b030067          	jr	1200(t1) # 8000246c <plic_complete>
    80003fc4:	fffff097          	auipc	ra,0xfffff
    80003fc8:	1bc080e7          	jalr	444(ra) # 80003180 <uartintr>
    80003fcc:	fddff06f          	j	80003fa8 <console_handler+0x74>
    80003fd0:	00001517          	auipc	a0,0x1
    80003fd4:	28050513          	addi	a0,a0,640 # 80005250 <digits+0x78>
    80003fd8:	fffff097          	auipc	ra,0xfffff
    80003fdc:	844080e7          	jalr	-1980(ra) # 8000281c <panic>

0000000080003fe0 <kvmincrease>:
    80003fe0:	fe010113          	addi	sp,sp,-32
    80003fe4:	01213023          	sd	s2,0(sp)
    80003fe8:	00001937          	lui	s2,0x1
    80003fec:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003ff0:	00813823          	sd	s0,16(sp)
    80003ff4:	00113c23          	sd	ra,24(sp)
    80003ff8:	00913423          	sd	s1,8(sp)
    80003ffc:	02010413          	addi	s0,sp,32
    80004000:	01250933          	add	s2,a0,s2
    80004004:	00c95913          	srli	s2,s2,0xc
    80004008:	02090863          	beqz	s2,80004038 <kvmincrease+0x58>
    8000400c:	00000493          	li	s1,0
    80004010:	00148493          	addi	s1,s1,1
    80004014:	fffff097          	auipc	ra,0xfffff
    80004018:	4bc080e7          	jalr	1212(ra) # 800034d0 <kalloc>
    8000401c:	fe991ae3          	bne	s2,s1,80004010 <kvmincrease+0x30>
    80004020:	01813083          	ld	ra,24(sp)
    80004024:	01013403          	ld	s0,16(sp)
    80004028:	00813483          	ld	s1,8(sp)
    8000402c:	00013903          	ld	s2,0(sp)
    80004030:	02010113          	addi	sp,sp,32
    80004034:	00008067          	ret
    80004038:	01813083          	ld	ra,24(sp)
    8000403c:	01013403          	ld	s0,16(sp)
    80004040:	00813483          	ld	s1,8(sp)
    80004044:	00013903          	ld	s2,0(sp)
    80004048:	00000513          	li	a0,0
    8000404c:	02010113          	addi	sp,sp,32
    80004050:	00008067          	ret
	...
