
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	67813103          	ld	sp,1656(sp) # 80004678 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	425010ef          	jal	ra,80001c40 <start>

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
    mv a0, sp
    80001080:	00010513          	mv	a0,sp

    call _ZN5Riscv20handleSupervisorTrapEPm
    80001084:	0e9000ef          	jal	ra,8000196c <_ZN5Riscv20handleSupervisorTrapEPm>


    .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ,21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
        ld x\index, \index * 8(sp)
        .endr
    80001088:	00813083          	ld	ra,8(sp)
    8000108c:	01013103          	ld	sp,16(sp)
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05013503          	ld	a0,80(sp)
    800010b0:	05813583          	ld	a1,88(sp)
    800010b4:	06013603          	ld	a2,96(sp)
    800010b8:	06813683          	ld	a3,104(sp)
    800010bc:	07013703          	ld	a4,112(sp)
    800010c0:	07813783          	ld	a5,120(sp)
    800010c4:	08013803          	ld	a6,128(sp)
    800010c8:	08813883          	ld	a7,136(sp)
    800010cc:	09013903          	ld	s2,144(sp)
    800010d0:	09813983          	ld	s3,152(sp)
    800010d4:	0a013a03          	ld	s4,160(sp)
    800010d8:	0a813a83          	ld	s5,168(sp)
    800010dc:	0b013b03          	ld	s6,176(sp)
    800010e0:	0b813b83          	ld	s7,184(sp)
    800010e4:	0c013c03          	ld	s8,192(sp)
    800010e8:	0c813c83          	ld	s9,200(sp)
    800010ec:	0d013d03          	ld	s10,208(sp)
    800010f0:	0d813d83          	ld	s11,216(sp)
    800010f4:	0e013e03          	ld	t3,224(sp)
    800010f8:	0e813e83          	ld	t4,232(sp)
    800010fc:	0f013f03          	ld	t5,240(sp)
    80001100:	0f813f83          	ld	t6,248(sp)
      addi sp, sp, 256
    80001104:	10010113          	addi	sp,sp,256
          sret
    80001108:	10200073          	sret
    8000110c:	0000                	unimp
	...

0000000080001110 <_ZN6Thread13switchContextEPNS_7ContextES1_>:
.global _ZN6Thread13switchContextEPNS_7ContextES1_
.type _ZN6Thread13contextSwitchEPNS_7ContextES1_, @function
_ZN6Thread13switchContextEPNS_7ContextES1_:

    # 1. SAČUVAJ STARU NIT (u a0)
    sd ra, 0(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    # 2. UČITAJ NOVU NIT (iz a1)
    ld ra, 0(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    # 3. SKOK U NOVU NIT
    ret
    80001120:	00008067          	ret

0000000080001124 <_ZN5Riscv11pushAllRegsEv>:

.global _ZN5Riscv11pushAllRegsEv
.type _ZN5Riscv11pushAllRegsEv, @function
_ZN5Riscv11pushAllRegsEv:
    # Rezervišemo prostor za 32 registra (32 * 8 = 256 bajtova)
    addi sp, sp, -256
    80001124:	f0010113          	addi	sp,sp,-256

    # Čuvamo registre x1 do x31 na stek
    # x0 ne čuvamo jer je uvek nula
    .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    sd x\index, \index * 8(sp)
    .endr
    80001128:	00113423          	sd	ra,8(sp)
    8000112c:	00213823          	sd	sp,16(sp)
    80001130:	00313c23          	sd	gp,24(sp)
    80001134:	02413023          	sd	tp,32(sp)
    80001138:	02513423          	sd	t0,40(sp)
    8000113c:	02613823          	sd	t1,48(sp)
    80001140:	02713c23          	sd	t2,56(sp)
    80001144:	04813023          	sd	s0,64(sp)
    80001148:	04913423          	sd	s1,72(sp)
    8000114c:	04a13823          	sd	a0,80(sp)
    80001150:	04b13c23          	sd	a1,88(sp)
    80001154:	06c13023          	sd	a2,96(sp)
    80001158:	06d13423          	sd	a3,104(sp)
    8000115c:	06e13823          	sd	a4,112(sp)
    80001160:	06f13c23          	sd	a5,120(sp)
    80001164:	09013023          	sd	a6,128(sp)
    80001168:	09113423          	sd	a7,136(sp)
    8000116c:	09213823          	sd	s2,144(sp)
    80001170:	09313c23          	sd	s3,152(sp)
    80001174:	0b413023          	sd	s4,160(sp)
    80001178:	0b513423          	sd	s5,168(sp)
    8000117c:	0b613823          	sd	s6,176(sp)
    80001180:	0b713c23          	sd	s7,184(sp)
    80001184:	0d813023          	sd	s8,192(sp)
    80001188:	0d913423          	sd	s9,200(sp)
    8000118c:	0da13823          	sd	s10,208(sp)
    80001190:	0db13c23          	sd	s11,216(sp)
    80001194:	0fc13023          	sd	t3,224(sp)
    80001198:	0fd13423          	sd	t4,232(sp)
    8000119c:	0fe13823          	sd	t5,240(sp)
    800011a0:	0ff13c23          	sd	t6,248(sp)

    ret
    800011a4:	00008067          	ret

00000000800011a8 <_ZN5Riscv10popAllRegsEv>:
.type _ZN5Riscv10popAllRegsEv, @function
_ZN5Riscv10popAllRegsEv:
    # Vraćamo registre x1 do x31 sa steka
    .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31
    ld x\index, \index * 8(sp)
    .endr
    800011a8:	00813083          	ld	ra,8(sp)
    800011ac:	01013103          	ld	sp,16(sp)
    800011b0:	01813183          	ld	gp,24(sp)
    800011b4:	02013203          	ld	tp,32(sp)
    800011b8:	02813283          	ld	t0,40(sp)
    800011bc:	03013303          	ld	t1,48(sp)
    800011c0:	03813383          	ld	t2,56(sp)
    800011c4:	04013403          	ld	s0,64(sp)
    800011c8:	04813483          	ld	s1,72(sp)
    800011cc:	05013503          	ld	a0,80(sp)
    800011d0:	05813583          	ld	a1,88(sp)
    800011d4:	06013603          	ld	a2,96(sp)
    800011d8:	06813683          	ld	a3,104(sp)
    800011dc:	07013703          	ld	a4,112(sp)
    800011e0:	07813783          	ld	a5,120(sp)
    800011e4:	08013803          	ld	a6,128(sp)
    800011e8:	08813883          	ld	a7,136(sp)
    800011ec:	09013903          	ld	s2,144(sp)
    800011f0:	09813983          	ld	s3,152(sp)
    800011f4:	0a013a03          	ld	s4,160(sp)
    800011f8:	0a813a83          	ld	s5,168(sp)
    800011fc:	0b013b03          	ld	s6,176(sp)
    80001200:	0b813b83          	ld	s7,184(sp)
    80001204:	0c013c03          	ld	s8,192(sp)
    80001208:	0c813c83          	ld	s9,200(sp)
    8000120c:	0d013d03          	ld	s10,208(sp)
    80001210:	0d813d83          	ld	s11,216(sp)
    80001214:	0e013e03          	ld	t3,224(sp)
    80001218:	0e813e83          	ld	t4,232(sp)
    8000121c:	0f013f03          	ld	t5,240(sp)
    80001220:	0f813f83          	ld	t6,248(sp)

    # Oslobađamo prostor na steku
    addi sp, sp, 256
    80001224:	10010113          	addi	sp,sp,256
    80001228:	00008067          	ret

000000008000122c <_Z9mem_allocm>:
#include "../h/syscall_c.h"
#include  "../h/riscv.h"
void *mem_alloc(size_t size) {
    8000122c:	fe010113          	addi	sp,sp,-32
    80001230:	00813c23          	sd	s0,24(sp)
    80001234:	02010413          	addi	s0,sp,32
    size_t blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001238:	03f50513          	addi	a0,a0,63
    8000123c:	00655513          	srli	a0,a0,0x6
        uint64 value;
        __asm__ volatile("mv %[val], a%[reg]" : [val] "=r" (value) : [reg] "i" (reg_number));
        return value;
    }


    80001240:	00050593          	mv	a1,a0
    80001244:	00100793          	li	a5,1
    80001248:	00078513          	mv	a0,a5

    Riscv::writeARegister(1, blocks);
    Riscv::writeARegister(0, 0x01);

    __asm__ volatile("ecall");
    8000124c:	00000073          	ecall
inline uint64 Riscv::readARegister(int reg_number) {
    80001250:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80001254:	fef43423          	sd	a5,-24(s0)
    return (void*) a0;
    80001258:	fe843503          	ld	a0,-24(s0)


}
    8000125c:	01813403          	ld	s0,24(sp)
    80001260:	02010113          	addi	sp,sp,32
    80001264:	00008067          	ret

0000000080001268 <_Z8mem_freePv>:

int mem_free (void* ptr) {
    80001268:	fe010113          	addi	sp,sp,-32
    8000126c:	00813c23          	sd	s0,24(sp)
    80001270:	02010413          	addi	s0,sp,32

    80001274:	00050593          	mv	a1,a0
    80001278:	00200793          	li	a5,2
    8000127c:	00078513          	mv	a0,a5
    Riscv::writeARegister(1, (uint64)ptr);
    Riscv::writeARegister(0, 0x02);

    __asm__ volatile("ecall");
    80001280:	00000073          	ecall
inline uint64 Riscv::readARegister(int reg_number) {
    80001284:	00050793          	mv	a5,a0

    volatile long a0 = Riscv::readARegister(0);
    80001288:	fef43423          	sd	a5,-24(s0)
    return (int) a0;
    8000128c:	fe843503          	ld	a0,-24(s0)
}
    80001290:	0005051b          	sext.w	a0,a0
    80001294:	01813403          	ld	s0,24(sp)
    80001298:	02010113          	addi	sp,sp,32
    8000129c:	00008067          	ret

00000000800012a0 <_Znwm>:

void* operator new(size_t size) {
    800012a0:	ff010113          	addi	sp,sp,-16
    800012a4:	00113423          	sd	ra,8(sp)
    800012a8:	00813023          	sd	s0,0(sp)
    800012ac:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800012b0:	00000097          	auipc	ra,0x0
    800012b4:	f7c080e7          	jalr	-132(ra) # 8000122c <_Z9mem_allocm>
}
    800012b8:	00813083          	ld	ra,8(sp)
    800012bc:	00013403          	ld	s0,0(sp)
    800012c0:	01010113          	addi	sp,sp,16
    800012c4:	00008067          	ret

00000000800012c8 <_Znam>:


void* operator new[](size_t size) {
    800012c8:	ff010113          	addi	sp,sp,-16
    800012cc:	00113423          	sd	ra,8(sp)
    800012d0:	00813023          	sd	s0,0(sp)
    800012d4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	f54080e7          	jalr	-172(ra) # 8000122c <_Z9mem_allocm>
}
    800012e0:	00813083          	ld	ra,8(sp)
    800012e4:	00013403          	ld	s0,0(sp)
    800012e8:	01010113          	addi	sp,sp,16
    800012ec:	00008067          	ret

00000000800012f0 <_ZdlPv>:


void operator delete(void* ptr) noexcept {
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00113423          	sd	ra,8(sp)
    800012f8:	00813023          	sd	s0,0(sp)
    800012fc:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001300:	00000097          	auipc	ra,0x0
    80001304:	f68080e7          	jalr	-152(ra) # 80001268 <_Z8mem_freePv>
}
    80001308:	00813083          	ld	ra,8(sp)
    8000130c:	00013403          	ld	s0,0(sp)
    80001310:	01010113          	addi	sp,sp,16
    80001314:	00008067          	ret

0000000080001318 <_ZdaPv>:

void operator delete[](void* ptr) noexcept {
    80001318:	ff010113          	addi	sp,sp,-16
    8000131c:	00113423          	sd	ra,8(sp)
    80001320:	00813023          	sd	s0,0(sp)
    80001324:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001328:	00000097          	auipc	ra,0x0
    8000132c:	f40080e7          	jalr	-192(ra) # 80001268 <_Z8mem_freePv>
    80001330:	00813083          	ld	ra,8(sp)
    80001334:	00013403          	ld	s0,0(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_ZN6Thread8dispatchEv>:
    dispatch();

     Riscv::popAllRegs();
}

void Thread::dispatch() {
    80001340:	fe010113          	addi	sp,sp,-32
    80001344:	00113c23          	sd	ra,24(sp)
    80001348:	00813823          	sd	s0,16(sp)
    8000134c:	00913423          	sd	s1,8(sp)
    80001350:	02010413          	addi	s0,sp,32
    Thread* old = running;
    80001354:	00003497          	auipc	s1,0x3
    80001358:	37c4b483          	ld	s1,892(s1) # 800046d0 <_ZN6Thread7runningE>

    // Ako nije gotova, vrati je u Scheduler
    if (old && !old->finished) {
    8000135c:	04048463          	beqz	s1,800013a4 <_ZN6Thread8dispatchEv+0x64>
    80001360:	0304c783          	lbu	a5,48(s1)
    80001364:	04079063          	bnez	a5,800013a4 <_ZN6Thread8dispatchEv+0x64>

class Thread;

class Scheduler {
public:
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001368:	00003797          	auipc	a5,0x3
    8000136c:	3707c783          	lbu	a5,880(a5) # 800046d8 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001370:	02079063          	bnez	a5,80001390 <_ZN6Thread8dispatchEv+0x50>

    void put(Thread* t);

    Thread* get();
private:
    Scheduler():head(nullptr), tail(nullptr){};
    80001374:	00003797          	auipc	a5,0x3
    80001378:	36c78793          	addi	a5,a5,876 # 800046e0 <_ZZN9Scheduler8instanceEvE8instance>
    8000137c:	0007b023          	sd	zero,0(a5)
    80001380:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001384:	00100793          	li	a5,1
    80001388:	00003717          	auipc	a4,0x3
    8000138c:	34f70823          	sb	a5,848(a4) # 800046d8 <_ZGVZN9Scheduler8instanceEvE8instance>
        Scheduler::instance().put(old);
    80001390:	00048593          	mv	a1,s1
    80001394:	00003517          	auipc	a0,0x3
    80001398:	34c50513          	addi	a0,a0,844 # 800046e0 <_ZZN9Scheduler8instanceEvE8instance>
    8000139c:	00000097          	auipc	ra,0x0
    800013a0:	218080e7          	jalr	536(ra) # 800015b4 <_ZN9Scheduler3putEP6Thread>
    800013a4:	00003797          	auipc	a5,0x3
    800013a8:	3347c783          	lbu	a5,820(a5) # 800046d8 <_ZGVZN9Scheduler8instanceEvE8instance>
    800013ac:	02079063          	bnez	a5,800013cc <_ZN6Thread8dispatchEv+0x8c>
    Scheduler():head(nullptr), tail(nullptr){};
    800013b0:	00003797          	auipc	a5,0x3
    800013b4:	33078793          	addi	a5,a5,816 # 800046e0 <_ZZN9Scheduler8instanceEvE8instance>
    800013b8:	0007b023          	sd	zero,0(a5)
    800013bc:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    800013c0:	00100793          	li	a5,1
    800013c4:	00003717          	auipc	a4,0x3
    800013c8:	30f70a23          	sb	a5,788(a4) # 800046d8 <_ZGVZN9Scheduler8instanceEvE8instance>
    }

    // Uzmi sledeću
    running = Scheduler::instance().get();
    800013cc:	00003517          	auipc	a0,0x3
    800013d0:	31450513          	addi	a0,a0,788 # 800046e0 <_ZZN9Scheduler8instanceEvE8instance>
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	21c080e7          	jalr	540(ra) # 800015f0 <_ZN9Scheduler3getEv>
    800013dc:	00003797          	auipc	a5,0x3
    800013e0:	2ea7ba23          	sd	a0,756(a5) # 800046d0 <_ZN6Thread7runningE>

    // Ako smo zapravo promenili nit, uradi switch
    if (old != running) {
    800013e4:	00a48a63          	beq	s1,a0,800013f8 <_ZN6Thread8dispatchEv+0xb8>
        switchContext(&old->context, &running->context);
    800013e8:	00850593          	addi	a1,a0,8
    800013ec:	00848513          	addi	a0,s1,8
    800013f0:	00000097          	auipc	ra,0x0
    800013f4:	d20080e7          	jalr	-736(ra) # 80001110 <_ZN6Thread13switchContextEPNS_7ContextES1_>
    }
}
    800013f8:	01813083          	ld	ra,24(sp)
    800013fc:	01013403          	ld	s0,16(sp)
    80001400:	00813483          	ld	s1,8(sp)
    80001404:	02010113          	addi	sp,sp,32
    80001408:	00008067          	ret

000000008000140c <_ZN6Thread5yieldEv>:
void Thread::yield() {
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00113423          	sd	ra,8(sp)
    80001414:	00813023          	sd	s0,0(sp)
    80001418:	01010413          	addi	s0,sp,16
    Riscv::pushAllRegs();
    8000141c:	00000097          	auipc	ra,0x0
    80001420:	d08080e7          	jalr	-760(ra) # 80001124 <_ZN5Riscv11pushAllRegsEv>
    dispatch();
    80001424:	00000097          	auipc	ra,0x0
    80001428:	f1c080e7          	jalr	-228(ra) # 80001340 <_ZN6Thread8dispatchEv>
     Riscv::popAllRegs();
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	d7c080e7          	jalr	-644(ra) # 800011a8 <_ZN5Riscv10popAllRegsEv>
}
    80001434:	00813083          	ld	ra,8(sp)
    80001438:	00013403          	ld	s0,0(sp)
    8000143c:	01010113          	addi	sp,sp,16
    80001440:	00008067          	ret

0000000080001444 <_ZN6Thread13threadWrapperEv>:
        this->context.sp = 0;
        this->context.ra = 0;
    }
}

void Thread::threadWrapper() {
    80001444:	ff010113          	addi	sp,sp,-16
    80001448:	00113423          	sd	ra,8(sp)
    8000144c:	00813023          	sd	s0,0(sp)
    80001450:	01010413          	addi	s0,sp,16
    // Svaka nova nit počinje odavde
    if (running->body) {
    80001454:	00003717          	auipc	a4,0x3
    80001458:	27c73703          	ld	a4,636(a4) # 800046d0 <_ZN6Thread7runningE>
    8000145c:	02073783          	ld	a5,32(a4)
    80001460:	00078663          	beqz	a5,8000146c <_ZN6Thread13threadWrapperEv+0x28>
        running->body(running->arg);
    80001464:	02873503          	ld	a0,40(a4)
    80001468:	000780e7          	jalr	a5
    }
    running->finished = true;
    8000146c:	00003797          	auipc	a5,0x3
    80001470:	2647b783          	ld	a5,612(a5) # 800046d0 <_ZN6Thread7runningE>
    80001474:	00100713          	li	a4,1
    80001478:	02e78823          	sb	a4,48(a5)
    Thread::dispatch(); // Kada završi, trajno predaje procesor
    8000147c:	00000097          	auipc	ra,0x0
    80001480:	ec4080e7          	jalr	-316(ra) # 80001340 <_ZN6Thread8dispatchEv>
    80001484:	00813083          	ld	ra,8(sp)
    80001488:	00013403          	ld	s0,0(sp)
    8000148c:	01010113          	addi	sp,sp,16
    80001490:	00008067          	ret

0000000080001494 <_ZN6ThreadC1EPFvPvES0_Pm>:
Thread::Thread(Body body, void *arg, uint64 *stackSpace)
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00813423          	sd	s0,8(sp)
    8000149c:	01010413          	addi	s0,sp,16
    : next(nullptr), stack(stackSpace), body(body), arg(arg),finished(false)
    800014a0:	00053023          	sd	zero,0(a0)
    800014a4:	00d53c23          	sd	a3,24(a0)
    800014a8:	02b53023          	sd	a1,32(a0)
    800014ac:	02c53423          	sd	a2,40(a0)
    800014b0:	02050823          	sb	zero,48(a0)
    if (body != nullptr) {
    800014b4:	02058463          	beqz	a1,800014dc <_ZN6ThreadC1EPFvPvES0_Pm+0x48>
        this->context.sp = (uint64)&stack[DEFAULT_STACK_SIZE / sizeof(uint64)];
    800014b8:	000017b7          	lui	a5,0x1
    800014bc:	00f686b3          	add	a3,a3,a5
    800014c0:	00d53823          	sd	a3,16(a0)
        this->context.ra = (uint64)&Thread::threadWrapper;
    800014c4:	00000797          	auipc	a5,0x0
    800014c8:	f8078793          	addi	a5,a5,-128 # 80001444 <_ZN6Thread13threadWrapperEv>
    800014cc:	00f53423          	sd	a5,8(a0)
}
    800014d0:	00813403          	ld	s0,8(sp)
    800014d4:	01010113          	addi	sp,sp,16
    800014d8:	00008067          	ret
        this->context.sp = 0;
    800014dc:	00053823          	sd	zero,16(a0)
        this->context.ra = 0;
    800014e0:	00053423          	sd	zero,8(a0)
}
    800014e4:	fedff06f          	j	800014d0 <_ZN6ThreadC1EPFvPvES0_Pm+0x3c>

00000000800014e8 <_ZN6Thread12createThreadEPFvPvES0_>:
Thread* Thread::createThread(Body body, void *arg) {
    800014e8:	fd010113          	addi	sp,sp,-48
    800014ec:	02113423          	sd	ra,40(sp)
    800014f0:	02813023          	sd	s0,32(sp)
    800014f4:	00913c23          	sd	s1,24(sp)
    800014f8:	01213823          	sd	s2,16(sp)
    800014fc:	01313423          	sd	s3,8(sp)
    80001500:	01413023          	sd	s4,0(sp)
    80001504:	03010413          	addi	s0,sp,48
    80001508:	00050493          	mv	s1,a0
    8000150c:	00058993          	mv	s3,a1
    if (body != nullptr) {
    80001510:	08050e63          	beqz	a0,800015ac <_ZN6Thread12createThreadEPFvPvES0_+0xc4>
        stack = new uint64[DEFAULT_STACK_SIZE / sizeof(uint64)];
    80001514:	00001537          	lui	a0,0x1
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	db0080e7          	jalr	-592(ra) # 800012c8 <_Znam>
    80001520:	00050a13          	mv	s4,a0
    Thread* t = new Thread(body, arg, stack);
    80001524:	03800513          	li	a0,56
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	d78080e7          	jalr	-648(ra) # 800012a0 <_Znwm>
    80001530:	00050913          	mv	s2,a0
    80001534:	000a0693          	mv	a3,s4
    80001538:	00098613          	mv	a2,s3
    8000153c:	00048593          	mv	a1,s1
    80001540:	00000097          	auipc	ra,0x0
    80001544:	f54080e7          	jalr	-172(ra) # 80001494 <_ZN6ThreadC1EPFvPvES0_Pm>
    if (body != nullptr) {
    80001548:	04048063          	beqz	s1,80001588 <_ZN6Thread12createThreadEPFvPvES0_+0xa0>
    8000154c:	00003797          	auipc	a5,0x3
    80001550:	18c7c783          	lbu	a5,396(a5) # 800046d8 <_ZGVZN9Scheduler8instanceEvE8instance>
    80001554:	02079063          	bnez	a5,80001574 <_ZN6Thread12createThreadEPFvPvES0_+0x8c>
    Scheduler():head(nullptr), tail(nullptr){};
    80001558:	00003797          	auipc	a5,0x3
    8000155c:	18878793          	addi	a5,a5,392 # 800046e0 <_ZZN9Scheduler8instanceEvE8instance>
    80001560:	0007b023          	sd	zero,0(a5)
    80001564:	0007b423          	sd	zero,8(a5)
    static Scheduler& instance(){static Scheduler instance; return instance;}
    80001568:	00100793          	li	a5,1
    8000156c:	00003717          	auipc	a4,0x3
    80001570:	16f70623          	sb	a5,364(a4) # 800046d8 <_ZGVZN9Scheduler8instanceEvE8instance>
        Scheduler::instance().put(t);
    80001574:	00090593          	mv	a1,s2
    80001578:	00003517          	auipc	a0,0x3
    8000157c:	16850513          	addi	a0,a0,360 # 800046e0 <_ZZN9Scheduler8instanceEvE8instance>
    80001580:	00000097          	auipc	ra,0x0
    80001584:	034080e7          	jalr	52(ra) # 800015b4 <_ZN9Scheduler3putEP6Thread>
}
    80001588:	00090513          	mv	a0,s2
    8000158c:	02813083          	ld	ra,40(sp)
    80001590:	02013403          	ld	s0,32(sp)
    80001594:	01813483          	ld	s1,24(sp)
    80001598:	01013903          	ld	s2,16(sp)
    8000159c:	00813983          	ld	s3,8(sp)
    800015a0:	00013a03          	ld	s4,0(sp)
    800015a4:	03010113          	addi	sp,sp,48
    800015a8:	00008067          	ret
    uint64* stack = nullptr;
    800015ac:	00000a13          	li	s4,0
    800015b0:	f75ff06f          	j	80001524 <_ZN6Thread12createThreadEPFvPvES0_+0x3c>

00000000800015b4 <_ZN9Scheduler3putEP6Thread>:
#include "../h/Scheduler.h"
#include "../h/Thread.h"
void Scheduler::put(Thread* t) {
    800015b4:	ff010113          	addi	sp,sp,-16
    800015b8:	00813423          	sd	s0,8(sp)
    800015bc:	01010413          	addi	s0,sp,16
    if (!t) return;
    800015c0:	00058e63          	beqz	a1,800015dc <_ZN9Scheduler3putEP6Thread+0x28>
    t->next = nullptr;
    800015c4:	0005b023          	sd	zero,0(a1)

    if (!head) {
    800015c8:	00053783          	ld	a5,0(a0)
    800015cc:	00078e63          	beqz	a5,800015e8 <_ZN9Scheduler3putEP6Thread+0x34>
        head = t;
    } else {
        tail->next = t;
    800015d0:	00853783          	ld	a5,8(a0)
    800015d4:	00b7b023          	sd	a1,0(a5)
    }
    tail = t;
    800015d8:	00b53423          	sd	a1,8(a0)
}
    800015dc:	00813403          	ld	s0,8(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret
        head = t;
    800015e8:	00b53023          	sd	a1,0(a0)
    800015ec:	fedff06f          	j	800015d8 <_ZN9Scheduler3putEP6Thread+0x24>

00000000800015f0 <_ZN9Scheduler3getEv>:

Thread* Scheduler::get() {
    800015f0:	ff010113          	addi	sp,sp,-16
    800015f4:	00813423          	sd	s0,8(sp)
    800015f8:	01010413          	addi	s0,sp,16
    800015fc:	00050793          	mv	a5,a0
    if (!head) {
    80001600:	00053503          	ld	a0,0(a0)
    80001604:	00050a63          	beqz	a0,80001618 <_ZN9Scheduler3getEv+0x28>
        return nullptr;
    }

    Thread* t = head;
    head = head->next;
    80001608:	00053703          	ld	a4,0(a0)
    8000160c:	00e7b023          	sd	a4,0(a5)

    if (!head) {
    80001610:	00070a63          	beqz	a4,80001624 <_ZN9Scheduler3getEv+0x34>
        tail = nullptr;
    }

    t->next = nullptr;
    80001614:	00053023          	sd	zero,0(a0)
    return t;
    80001618:	00813403          	ld	s0,8(sp)
    8000161c:	01010113          	addi	sp,sp,16
    80001620:	00008067          	ret
        tail = nullptr;
    80001624:	0007b423          	sd	zero,8(a5)
    80001628:	fedff06f          	j	80001614 <_ZN9Scheduler3getEv+0x24>

000000008000162c <_Z12checkNullptrPv>:
#include "../lib/console.h"
#include "../h/syscall_c.h"
#include  "../h/riscv.h"
void checkNullptr(void* p) {
    static int x = 0;
    if(p == nullptr) {
    8000162c:	00050e63          	beqz	a0,80001648 <_Z12checkNullptrPv+0x1c>
        __putc('?');
        __putc('0' + x);
    }
    x++;
    80001630:	00003717          	auipc	a4,0x3
    80001634:	0c070713          	addi	a4,a4,192 # 800046f0 <_ZZ12checkNullptrPvE1x>
    80001638:	00072783          	lw	a5,0(a4)
    8000163c:	0017879b          	addiw	a5,a5,1
    80001640:	00f72023          	sw	a5,0(a4)
    80001644:	00008067          	ret
void checkNullptr(void* p) {
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00113423          	sd	ra,8(sp)
    80001650:	00813023          	sd	s0,0(sp)
    80001654:	01010413          	addi	s0,sp,16
        __putc('?');
    80001658:	03f00513          	li	a0,63
    8000165c:	00002097          	auipc	ra,0x2
    80001660:	6a0080e7          	jalr	1696(ra) # 80003cfc <__putc>
        __putc('0' + x);
    80001664:	00003517          	auipc	a0,0x3
    80001668:	08c52503          	lw	a0,140(a0) # 800046f0 <_ZZ12checkNullptrPvE1x>
    8000166c:	0305051b          	addiw	a0,a0,48
    80001670:	0ff57513          	andi	a0,a0,255
    80001674:	00002097          	auipc	ra,0x2
    80001678:	688080e7          	jalr	1672(ra) # 80003cfc <__putc>
    x++;
    8000167c:	00003717          	auipc	a4,0x3
    80001680:	07470713          	addi	a4,a4,116 # 800046f0 <_ZZ12checkNullptrPvE1x>
    80001684:	00072783          	lw	a5,0(a4)
    80001688:	0017879b          	addiw	a5,a5,1
    8000168c:	00f72023          	sw	a5,0(a4)
}
    80001690:	00813083          	ld	ra,8(sp)
    80001694:	00013403          	ld	s0,0(sp)
    80001698:	01010113          	addi	sp,sp,16
    8000169c:	00008067          	ret

00000000800016a0 <_Z11checkStatusi>:

void checkStatus(int status) {
    static int y = 0;
    if(status) {
    800016a0:	00051e63          	bnez	a0,800016bc <_Z11checkStatusi+0x1c>
        __putc('0' + y);
        __putc('?');
    }
    y++;
    800016a4:	00003717          	auipc	a4,0x3
    800016a8:	04c70713          	addi	a4,a4,76 # 800046f0 <_ZZ12checkNullptrPvE1x>
    800016ac:	00472783          	lw	a5,4(a4)
    800016b0:	0017879b          	addiw	a5,a5,1
    800016b4:	00f72223          	sw	a5,4(a4)
    800016b8:	00008067          	ret
void checkStatus(int status) {
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00113423          	sd	ra,8(sp)
    800016c4:	00813023          	sd	s0,0(sp)
    800016c8:	01010413          	addi	s0,sp,16
        __putc('0' + y);
    800016cc:	00003517          	auipc	a0,0x3
    800016d0:	02852503          	lw	a0,40(a0) # 800046f4 <_ZZ11checkStatusiE1y>
    800016d4:	0305051b          	addiw	a0,a0,48
    800016d8:	0ff57513          	andi	a0,a0,255
    800016dc:	00002097          	auipc	ra,0x2
    800016e0:	620080e7          	jalr	1568(ra) # 80003cfc <__putc>
        __putc('?');
    800016e4:	03f00513          	li	a0,63
    800016e8:	00002097          	auipc	ra,0x2
    800016ec:	614080e7          	jalr	1556(ra) # 80003cfc <__putc>
    y++;
    800016f0:	00003717          	auipc	a4,0x3
    800016f4:	00070713          	mv	a4,a4
    800016f8:	00472783          	lw	a5,4(a4) # 800046f4 <_ZZ11checkStatusiE1y>
    800016fc:	0017879b          	addiw	a5,a5,1
    80001700:	00f72223          	sw	a5,4(a4)
}
    80001704:	00813083          	ld	ra,8(sp)
    80001708:	00013403          	ld	s0,0(sp)
    8000170c:	01010113          	addi	sp,sp,16
    80001710:	00008067          	ret

0000000080001714 <main>:

int main() {
    80001714:	fd010113          	addi	sp,sp,-48
    80001718:	02113423          	sd	ra,40(sp)
    8000171c:	02813023          	sd	s0,32(sp)
    80001720:	00913c23          	sd	s1,24(sp)
    80001724:	01213823          	sd	s2,16(sp)
    80001728:	01313423          	sd	s3,8(sp)
    8000172c:	03010413          	addi	s0,sp,48
    int n = 16;
    Riscv::w_stvec((uint64)& Riscv::supervisorTrap);
    80001730:	00003797          	auipc	a5,0x3
    80001734:	f407b783          	ld	a5,-192(a5) # 80004670 <_GLOBAL_OFFSET_TABLE_+0x10>
    inline void Riscv::w_stvec(uint64 stvec)
    80001738:	10579073          	csrw	stvec,a5

    char** matrix = (char**)::mem_alloc(n*sizeof(char*));
    8000173c:	08000513          	li	a0,128
    80001740:	00000097          	auipc	ra,0x0
    80001744:	aec080e7          	jalr	-1300(ra) # 8000122c <_Z9mem_allocm>
    80001748:	00050913          	mv	s2,a0
    checkNullptr(matrix);
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	ee0080e7          	jalr	-288(ra) # 8000162c <_Z12checkNullptrPv>
    for(int i = 0; i < n; i++) {
    80001754:	00000493          	li	s1,0
    80001758:	00f00793          	li	a5,15
    8000175c:	0297c663          	blt	a5,s1,80001788 <main+0x74>
        matrix[i] = (char *) ::mem_alloc(n * sizeof(char));
    80001760:	00349993          	slli	s3,s1,0x3
    80001764:	013909b3          	add	s3,s2,s3
    80001768:	01000513          	li	a0,16
    8000176c:	00000097          	auipc	ra,0x0
    80001770:	ac0080e7          	jalr	-1344(ra) # 8000122c <_Z9mem_allocm>
    80001774:	00a9b023          	sd	a0,0(s3)
        checkNullptr(matrix[i]);
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	eb4080e7          	jalr	-332(ra) # 8000162c <_Z12checkNullptrPv>
    for(int i = 0; i < n; i++) {
    80001780:	0014849b          	addiw	s1,s1,1
    80001784:	fd5ff06f          	j	80001758 <main+0x44>
    }

    for(int i = 0; i < n; i++) {
    80001788:	00000613          	li	a2,0
    8000178c:	0080006f          	j	80001794 <main+0x80>
    80001790:	0016061b          	addiw	a2,a2,1
    80001794:	00f00793          	li	a5,15
    80001798:	02c7c863          	blt	a5,a2,800017c8 <main+0xb4>
        for(int j = 0; j < n; j++) {
    8000179c:	00000793          	li	a5,0
    800017a0:	00f00713          	li	a4,15
    800017a4:	fef746e3          	blt	a4,a5,80001790 <main+0x7c>
            matrix[i][j] = 'k';
    800017a8:	00361713          	slli	a4,a2,0x3
    800017ac:	00e90733          	add	a4,s2,a4
    800017b0:	00073703          	ld	a4,0(a4)
    800017b4:	00f70733          	add	a4,a4,a5
    800017b8:	06b00693          	li	a3,107
    800017bc:	00d70023          	sb	a3,0(a4)
        for(int j = 0; j < n; j++) {
    800017c0:	0017879b          	addiw	a5,a5,1
    800017c4:	fddff06f          	j	800017a0 <main+0x8c>
        }
    }

    for(int i = 0; i < n; i++) {
    800017c8:	00000993          	li	s3,0
    800017cc:	0140006f          	j	800017e0 <main+0xcc>
        for(int j = 0; j < n; j++) {
            __putc(matrix[i][j]);
            __putc(' ');
        }
        __putc('\n');
    800017d0:	00a00513          	li	a0,10
    800017d4:	00002097          	auipc	ra,0x2
    800017d8:	528080e7          	jalr	1320(ra) # 80003cfc <__putc>
    for(int i = 0; i < n; i++) {
    800017dc:	0019899b          	addiw	s3,s3,1
    800017e0:	00f00793          	li	a5,15
    800017e4:	0537c063          	blt	a5,s3,80001824 <main+0x110>
        for(int j = 0; j < n; j++) {
    800017e8:	00000493          	li	s1,0
    800017ec:	00f00793          	li	a5,15
    800017f0:	fe97c0e3          	blt	a5,s1,800017d0 <main+0xbc>
            __putc(matrix[i][j]);
    800017f4:	00399793          	slli	a5,s3,0x3
    800017f8:	00f907b3          	add	a5,s2,a5
    800017fc:	0007b783          	ld	a5,0(a5)
    80001800:	009787b3          	add	a5,a5,s1
    80001804:	0007c503          	lbu	a0,0(a5)
    80001808:	00002097          	auipc	ra,0x2
    8000180c:	4f4080e7          	jalr	1268(ra) # 80003cfc <__putc>
            __putc(' ');
    80001810:	02000513          	li	a0,32
    80001814:	00002097          	auipc	ra,0x2
    80001818:	4e8080e7          	jalr	1256(ra) # 80003cfc <__putc>
        for(int j = 0; j < n; j++) {
    8000181c:	0014849b          	addiw	s1,s1,1
    80001820:	fcdff06f          	j	800017ec <main+0xd8>
    }


    for(int i = 0; i < n; i++) {
    80001824:	00000493          	li	s1,0
    80001828:	00f00793          	li	a5,15
    8000182c:	0297c463          	blt	a5,s1,80001854 <main+0x140>
        int status = ::mem_free(matrix[i]);
    80001830:	00349793          	slli	a5,s1,0x3
    80001834:	00f907b3          	add	a5,s2,a5
    80001838:	0007b503          	ld	a0,0(a5)
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	a2c080e7          	jalr	-1492(ra) # 80001268 <_Z8mem_freePv>
        checkStatus(status);
    80001844:	00000097          	auipc	ra,0x0
    80001848:	e5c080e7          	jalr	-420(ra) # 800016a0 <_Z11checkStatusi>
    for(int i = 0; i < n; i++) {
    8000184c:	0014849b          	addiw	s1,s1,1
    80001850:	fd9ff06f          	j	80001828 <main+0x114>
    }
    int status = ::mem_free(matrix);
    80001854:	00090513          	mv	a0,s2
    80001858:	00000097          	auipc	ra,0x0
    8000185c:	a10080e7          	jalr	-1520(ra) # 80001268 <_Z8mem_freePv>
    checkStatus(status);
    80001860:	00000097          	auipc	ra,0x0
    80001864:	e40080e7          	jalr	-448(ra) # 800016a0 <_Z11checkStatusi>

    return 0;
}
    80001868:	00000513          	li	a0,0
    8000186c:	02813083          	ld	ra,40(sp)
    80001870:	02013403          	ld	s0,32(sp)
    80001874:	01813483          	ld	s1,24(sp)
    80001878:	01013903          	ld	s2,16(sp)
    8000187c:	00813983          	ld	s3,8(sp)
    80001880:	03010113          	addi	sp,sp,48
    80001884:	00008067          	ret

0000000080001888 <_ZN5Riscv11handleEcallEPm>:
#include "../h/riscv.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.h"

void Riscv::handleEcall(uint64* regs) {
    80001888:	fc010113          	addi	sp,sp,-64
    8000188c:	02113c23          	sd	ra,56(sp)
    80001890:	02813823          	sd	s0,48(sp)
    80001894:	02913423          	sd	s1,40(sp)
    80001898:	03213023          	sd	s2,32(sp)
    8000189c:	01313c23          	sd	s3,24(sp)
    800018a0:	04010413          	addi	s0,sp,64
    800018a4:	00050493          	mv	s1,a0
    // regs[10] je x10 (a0), regs[11] je x11 (a1)
    uint64 a0_val = regs[10];
    800018a8:	05053703          	ld	a4,80(a0)
    uint64 a1_val = regs[11];
    800018ac:	05853503          	ld	a0,88(a0)
    {
    800018b0:	141027f3          	csrr	a5,sepc
    800018b4:	fcf43423          	sd	a5,-56(s0)
        uint64 volatile sepc;
    800018b8:	fc843783          	ld	a5,-56(s0)

    uint64 sepc = r_sepc() + 4;
    800018bc:	00478913          	addi	s2,a5,4
    {
    800018c0:	100027f3          	csrr	a5,sstatus
    800018c4:	fcf43023          	sd	a5,-64(s0)
        uint64 volatile sstatus;
    800018c8:	fc043983          	ld	s3,-64(s0)
    uint64 sstatus = r_sstatus();

    switch(a0_val) {
    800018cc:	00100793          	li	a5,1
    800018d0:	02f70863          	beq	a4,a5,80001900 <_ZN5Riscv11handleEcallEPm+0x78>
    800018d4:	00200793          	li	a5,2
    800018d8:	02f70e63          	beq	a4,a5,80001914 <_ZN5Riscv11handleEcallEPm+0x8c>
    inline void Riscv::w_sstatus(uint64 sstatus)
    800018dc:	10099073          	csrw	sstatus,s3
    inline void Riscv::w_sepc(uint64 sepc)
    800018e0:	14191073          	csrw	sepc,s2
            break;
    }

    w_sstatus(sstatus);
    w_sepc(sepc);
}
    800018e4:	03813083          	ld	ra,56(sp)
    800018e8:	03013403          	ld	s0,48(sp)
    800018ec:	02813483          	ld	s1,40(sp)
    800018f0:	02013903          	ld	s2,32(sp)
    800018f4:	01813983          	ld	s3,24(sp)
    800018f8:	04010113          	addi	sp,sp,64
    800018fc:	00008067          	ret
            void* result = MemoryAllocator::kmalloc(size_in_bytes);
    80001900:	00651513          	slli	a0,a0,0x6
    80001904:	00000097          	auipc	ra,0x0
    80001908:	110080e7          	jalr	272(ra) # 80001a14 <_ZN15MemoryAllocator7kmallocEm>
            regs[10] = (uint64)result;
    8000190c:	04a4b823          	sd	a0,80(s1)
            break;
    80001910:	fcdff06f          	j	800018dc <_ZN5Riscv11handleEcallEPm+0x54>
            int result = MemoryAllocator::kfree(ptr);
    80001914:	00000097          	auipc	ra,0x0
    80001918:	22c080e7          	jalr	556(ra) # 80001b40 <_ZN15MemoryAllocator5kfreeEPv>
            regs[10] = (uint64)result;
    8000191c:	04a4b823          	sd	a0,80(s1)
            break;
    80001920:	fbdff06f          	j	800018dc <_ZN5Riscv11handleEcallEPm+0x54>

0000000080001924 <_ZN5Riscv13handleConsoleEv>:

void Riscv::handleConsole() {
    80001924:	ff010113          	addi	sp,sp,-16
    80001928:	00813423          	sd	s0,8(sp)
    8000192c:	01010413          	addi	s0,sp,16
}
    80001930:	00813403          	ld	s0,8(sp)
    80001934:	01010113          	addi	sp,sp,16
    80001938:	00008067          	ret

000000008000193c <_ZN5Riscv11handleTimerEv>:

void Riscv::handleTimer() {
    8000193c:	ff010113          	addi	sp,sp,-16
    80001940:	00813423          	sd	s0,8(sp)
    80001944:	01010413          	addi	s0,sp,16
}
    80001948:	00813403          	ld	s0,8(sp)
    8000194c:	01010113          	addi	sp,sp,16
    80001950:	00008067          	ret

0000000080001954 <_ZN5Riscv13unknownsCauseEv>:

void Riscv::unknownsCause() {
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00813423          	sd	s0,8(sp)
    8000195c:	01010413          	addi	s0,sp,16
}
    80001960:	00813403          	ld	s0,8(sp)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <_ZN5Riscv20handleSupervisorTrapEPm>:

void Riscv::handleSupervisorTrap(uint64* regs) {
    8000196c:	fe010113          	addi	sp,sp,-32
    80001970:	00113c23          	sd	ra,24(sp)
    80001974:	00813823          	sd	s0,16(sp)
    80001978:	02010413          	addi	s0,sp,32
    {
    8000197c:	142027f3          	csrr	a5,scause
    80001980:	fef43423          	sd	a5,-24(s0)
        uint64 volatile scause;
    80001984:	fe843783          	ld	a5,-24(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001988:	ff878793          	addi	a5,a5,-8
    8000198c:	00100713          	li	a4,1
    80001990:	00f77a63          	bgeu	a4,a5,800019a4 <_ZN5Riscv20handleSupervisorTrapEPm+0x38>
    } else if (scause == 0x8000000000000001UL) {
        handleTimer();
    } else {
        unknownsCause();
    }
}
    80001994:	01813083          	ld	ra,24(sp)
    80001998:	01013403          	ld	s0,16(sp)
    8000199c:	02010113          	addi	sp,sp,32
    800019a0:	00008067          	ret
        handleEcall(regs);
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	ee4080e7          	jalr	-284(ra) # 80001888 <_ZN5Riscv11handleEcallEPm>
}
    800019ac:	fe9ff06f          	j	80001994 <_ZN5Riscv20handleSupervisorTrapEPm+0x28>

00000000800019b0 <_ZN15MemoryAllocator4initEv>:
    }

    return address;
}

void MemoryAllocator::init() {
    800019b0:	ff010113          	addi	sp,sp,-16
    800019b4:	00813423          	sd	s0,8(sp)
    800019b8:	01010413          	addi	s0,sp,16
    size_t start = (size_t)HEAP_START_ADDR;
    800019bc:	00003797          	auipc	a5,0x3
    800019c0:	cac7b783          	ld	a5,-852(a5) # 80004668 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019c4:	0007b783          	ld	a5,0(a5)
    size_t end = (size_t)HEAP_END_ADDR;
    800019c8:	00003717          	auipc	a4,0x3
    800019cc:	cb873703          	ld	a4,-840(a4) # 80004680 <_GLOBAL_OFFSET_TABLE_+0x20>
    800019d0:	00073703          	ld	a4,0(a4)

    start = start % MEM_BLOCK_SIZE == 0 ? start :   (start - start % MEM_BLOCK_SIZE) + MEM_BLOCK_SIZE;
    800019d4:	03f7f693          	andi	a3,a5,63
    800019d8:	00068663          	beqz	a3,800019e4 <_ZN15MemoryAllocator4initEv+0x34>
    800019dc:	fc07f793          	andi	a5,a5,-64
    800019e0:	04078793          	addi	a5,a5,64
    end = end % MEM_BLOCK_SIZE == 0 ? end : (end - end % MEM_BLOCK_SIZE);
    800019e4:	03f77693          	andi	a3,a4,63
    800019e8:	00068463          	beqz	a3,800019f0 <_ZN15MemoryAllocator4initEv+0x40>
    800019ec:	fc077713          	andi	a4,a4,-64

    head = (segmentHeader*) start;
    800019f0:	00003697          	auipc	a3,0x3
    800019f4:	d0f6b423          	sd	a5,-760(a3) # 800046f8 <_ZN15MemoryAllocator4headE>
    head->size = end - start - MEM_BLOCK_SIZE;
    800019f8:	40f70733          	sub	a4,a4,a5
    800019fc:	fc070713          	addi	a4,a4,-64
    80001a00:	00e7b423          	sd	a4,8(a5)
    head -> next = nullptr;
    80001a04:	0007b023          	sd	zero,0(a5)
}
    80001a08:	00813403          	ld	s0,8(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret

0000000080001a14 <_ZN15MemoryAllocator7kmallocEm>:
void *MemoryAllocator::kmalloc(size_t size) {  // argument is in bytes
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	00913423          	sd	s1,8(sp)
    80001a24:	02010413          	addi	s0,sp,32
    80001a28:	00050493          	mv	s1,a0
    if(!isinit){
    80001a2c:	00003797          	auipc	a5,0x3
    80001a30:	cd47c783          	lbu	a5,-812(a5) # 80004700 <_ZN15MemoryAllocator6isinitE>
    80001a34:	02078863          	beqz	a5,80001a64 <_ZN15MemoryAllocator7kmallocEm+0x50>
    size_t bytes_needed = (size_t)((size + MEM_BLOCK_SIZE - 1 ) / MEM_BLOCK_SIZE)*MEM_BLOCK_SIZE;
    80001a38:	03f48713          	addi	a4,s1,63
    80001a3c:	fc077713          	andi	a4,a4,-64
    segmentHeader* curr = head;
    80001a40:	00003797          	auipc	a5,0x3
    80001a44:	cb87b783          	ld	a5,-840(a5) # 800046f8 <_ZN15MemoryAllocator4headE>
    segmentHeader* prev = nullptr;
    80001a48:	00000613          	li	a2,0
    for(;curr; curr = curr -> next){
    80001a4c:	02078c63          	beqz	a5,80001a84 <_ZN15MemoryAllocator7kmallocEm+0x70>
        if(curr -> size >= bytes_needed) {
    80001a50:	0087b683          	ld	a3,8(a5)
    80001a54:	02e6f463          	bgeu	a3,a4,80001a7c <_ZN15MemoryAllocator7kmallocEm+0x68>
        prev = curr;
    80001a58:	00078613          	mv	a2,a5
    for(;curr; curr = curr -> next){
    80001a5c:	0007b783          	ld	a5,0(a5)
    80001a60:	fedff06f          	j	80001a4c <_ZN15MemoryAllocator7kmallocEm+0x38>
        isinit = true;
    80001a64:	00100793          	li	a5,1
    80001a68:	00003717          	auipc	a4,0x3
    80001a6c:	c8f70c23          	sb	a5,-872(a4) # 80004700 <_ZN15MemoryAllocator6isinitE>
        init();
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	f40080e7          	jalr	-192(ra) # 800019b0 <_ZN15MemoryAllocator4initEv>
    80001a78:	fc1ff06f          	j	80001a38 <_ZN15MemoryAllocator7kmallocEm+0x24>
            address = (void*) ((size_t) curr + MEM_BLOCK_SIZE);
    80001a7c:	04078513          	addi	a0,a5,64
            break;
    80001a80:	0080006f          	j	80001a88 <_ZN15MemoryAllocator7kmallocEm+0x74>
    void* address = nullptr;
    80001a84:	00078513          	mv	a0,a5
    if(!curr) return nullptr;
    80001a88:	06078063          	beqz	a5,80001ae8 <_ZN15MemoryAllocator7kmallocEm+0xd4>
    size_t remaining_bytes = curr->size - bytes_needed;
    80001a8c:	0087b683          	ld	a3,8(a5)
    80001a90:	40e686b3          	sub	a3,a3,a4
    if(remaining_bytes >= 2*MEM_BLOCK_SIZE){  //there is enough space for header and minimum one block
    80001a94:	07f00593          	li	a1,127
    80001a98:	02d5fe63          	bgeu	a1,a3,80001ad4 <_ZN15MemoryAllocator7kmallocEm+0xc0>
        next_free_node = (segmentHeader*)((char*)curr + bytes_needed + MEM_BLOCK_SIZE);
    80001a9c:	04070593          	addi	a1,a4,64
    80001aa0:	00b785b3          	add	a1,a5,a1
        next_free_node -> next = curr -> next;
    80001aa4:	0007b803          	ld	a6,0(a5)
    80001aa8:	0105b023          	sd	a6,0(a1)
        next_free_node -> size = remaining_bytes - MEM_BLOCK_SIZE;
    80001aac:	fc068693          	addi	a3,a3,-64
    80001ab0:	00d5b423          	sd	a3,8(a1)
        curr -> size = bytes_needed;
    80001ab4:	00e7b423          	sd	a4,8(a5)
    if(prev){
    80001ab8:	02060263          	beqz	a2,80001adc <_ZN15MemoryAllocator7kmallocEm+0xc8>
        prev -> next = next_free_node;
    80001abc:	00b63023          	sd	a1,0(a2)
}
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	02010113          	addi	sp,sp,32
    80001ad0:	00008067          	ret
        next_free_node = curr -> next;
    80001ad4:	0007b583          	ld	a1,0(a5)
    80001ad8:	fe1ff06f          	j	80001ab8 <_ZN15MemoryAllocator7kmallocEm+0xa4>
        head = next_free_node;
    80001adc:	00003797          	auipc	a5,0x3
    80001ae0:	c0b7be23          	sd	a1,-996(a5) # 800046f8 <_ZN15MemoryAllocator4headE>
    80001ae4:	fddff06f          	j	80001ac0 <_ZN15MemoryAllocator7kmallocEm+0xac>
    if(!curr) return nullptr;
    80001ae8:	00078513          	mv	a0,a5
    80001aec:	fd5ff06f          	j	80001ac0 <_ZN15MemoryAllocator7kmallocEm+0xac>

0000000080001af0 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>:



void MemoryAllocator::tryMerge(segmentHeader *block) {
    80001af0:	ff010113          	addi	sp,sp,-16
    80001af4:	00813423          	sd	s0,8(sp)
    80001af8:	01010413          	addi	s0,sp,16
    if(!block) return;
    80001afc:	00050e63          	beqz	a0,80001b18 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    segmentHeader* next_seg = block -> next;
    80001b00:	00053783          	ld	a5,0(a0)

    if(!next_seg) return;
    80001b04:	00078a63          	beqz	a5,80001b18 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

    if((char*) block +  MEM_BLOCK_SIZE + block -> size == (char*) next_seg){
    80001b08:	00853683          	ld	a3,8(a0)
    80001b0c:	04068713          	addi	a4,a3,64
    80001b10:	00e50733          	add	a4,a0,a4
    80001b14:	00f70863          	beq	a4,a5,80001b24 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x34>
        block -> next = next_seg -> next;
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    }
}
    80001b18:	00813403          	ld	s0,8(sp)
    80001b1c:	01010113          	addi	sp,sp,16
    80001b20:	00008067          	ret
        block -> next = next_seg -> next;
    80001b24:	0007b703          	ld	a4,0(a5)
    80001b28:	00e53023          	sd	a4,0(a0)
        block -> size += next_seg -> size +  MEM_BLOCK_SIZE;
    80001b2c:	0087b783          	ld	a5,8(a5)
    80001b30:	00f686b3          	add	a3,a3,a5
    80001b34:	04068693          	addi	a3,a3,64
    80001b38:	00d53423          	sd	a3,8(a0)
    80001b3c:	fddff06f          	j	80001b18 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE+0x28>

0000000080001b40 <_ZN15MemoryAllocator5kfreeEPv>:
int MemoryAllocator::kfree(void *addr) {
    80001b40:	fe010113          	addi	sp,sp,-32
    80001b44:	00113c23          	sd	ra,24(sp)
    80001b48:	00813823          	sd	s0,16(sp)
    80001b4c:	00913423          	sd	s1,8(sp)
    80001b50:	01213023          	sd	s2,0(sp)
    80001b54:	02010413          	addi	s0,sp,32
    80001b58:	00050913          	mv	s2,a0
    if(!isinit){ isinit = true; init(); }
    80001b5c:	00003797          	auipc	a5,0x3
    80001b60:	ba47c783          	lbu	a5,-1116(a5) # 80004700 <_ZN15MemoryAllocator6isinitE>
    80001b64:	04078a63          	beqz	a5,80001bb8 <_ZN15MemoryAllocator5kfreeEPv+0x78>
    if(!addr) return -1;
    80001b68:	0a090c63          	beqz	s2,80001c20 <_ZN15MemoryAllocator5kfreeEPv+0xe0>
    segmentHeader* newFree = (segmentHeader*)((char*)addr - MEM_BLOCK_SIZE);
    80001b6c:	fc090513          	addi	a0,s2,-64
    if((size_t)newFree < (size_t)HEAP_START_ADDR || (size_t)newFree >= (size_t)HEAP_END_ADDR) {
    80001b70:	00003797          	auipc	a5,0x3
    80001b74:	af87b783          	ld	a5,-1288(a5) # 80004668 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b78:	0007b783          	ld	a5,0(a5)
    80001b7c:	0af56663          	bltu	a0,a5,80001c28 <_ZN15MemoryAllocator5kfreeEPv+0xe8>
    80001b80:	00003797          	auipc	a5,0x3
    80001b84:	b007b783          	ld	a5,-1280(a5) # 80004680 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b88:	0007b783          	ld	a5,0(a5)
    80001b8c:	0af57263          	bgeu	a0,a5,80001c30 <_ZN15MemoryAllocator5kfreeEPv+0xf0>
    segmentHeader* curr = head;
    80001b90:	00003717          	auipc	a4,0x3
    80001b94:	b6873703          	ld	a4,-1176(a4) # 800046f8 <_ZN15MemoryAllocator4headE>
    80001b98:	00070793          	mv	a5,a4
    segmentHeader* prev = nullptr;
    80001b9c:	00000493          	li	s1,0
    while(curr) {
    80001ba0:	02078863          	beqz	a5,80001bd0 <_ZN15MemoryAllocator5kfreeEPv+0x90>
        if(curr == newFree) {
    80001ba4:	08a78a63          	beq	a5,a0,80001c38 <_ZN15MemoryAllocator5kfreeEPv+0xf8>
        if(curr > newFree) break;
    80001ba8:	02f56463          	bltu	a0,a5,80001bd0 <_ZN15MemoryAllocator5kfreeEPv+0x90>
        prev = curr;
    80001bac:	00078493          	mv	s1,a5
        curr = curr->next;
    80001bb0:	0007b783          	ld	a5,0(a5)
    while(curr) {
    80001bb4:	fedff06f          	j	80001ba0 <_ZN15MemoryAllocator5kfreeEPv+0x60>
    if(!isinit){ isinit = true; init(); }
    80001bb8:	00100793          	li	a5,1
    80001bbc:	00003717          	auipc	a4,0x3
    80001bc0:	b4f70223          	sb	a5,-1212(a4) # 80004700 <_ZN15MemoryAllocator6isinitE>
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	dec080e7          	jalr	-532(ra) # 800019b0 <_ZN15MemoryAllocator4initEv>
    80001bcc:	f9dff06f          	j	80001b68 <_ZN15MemoryAllocator5kfreeEPv+0x28>
    if(prev) {
    80001bd0:	04048063          	beqz	s1,80001c10 <_ZN15MemoryAllocator5kfreeEPv+0xd0>
        newFree->next = prev->next;
    80001bd4:	0004b783          	ld	a5,0(s1)
    80001bd8:	fcf93023          	sd	a5,-64(s2)
        prev->next = newFree;
    80001bdc:	00a4b023          	sd	a0,0(s1)
    tryMerge(newFree);
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	f10080e7          	jalr	-240(ra) # 80001af0 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    tryMerge(prev);
    80001be8:	00048513          	mv	a0,s1
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	f04080e7          	jalr	-252(ra) # 80001af0 <_ZN15MemoryAllocator8tryMergeEPNS_13segmentHeaderE>
    return 0;
    80001bf4:	00000513          	li	a0,0
}
    80001bf8:	01813083          	ld	ra,24(sp)
    80001bfc:	01013403          	ld	s0,16(sp)
    80001c00:	00813483          	ld	s1,8(sp)
    80001c04:	00013903          	ld	s2,0(sp)
    80001c08:	02010113          	addi	sp,sp,32
    80001c0c:	00008067          	ret
        newFree->next = head;
    80001c10:	fce93023          	sd	a4,-64(s2)
        head = newFree;
    80001c14:	00003797          	auipc	a5,0x3
    80001c18:	aea7b223          	sd	a0,-1308(a5) # 800046f8 <_ZN15MemoryAllocator4headE>
    80001c1c:	fc5ff06f          	j	80001be0 <_ZN15MemoryAllocator5kfreeEPv+0xa0>
    if(!addr) return -1;
    80001c20:	fff00513          	li	a0,-1
    80001c24:	fd5ff06f          	j	80001bf8 <_ZN15MemoryAllocator5kfreeEPv+0xb8>
        return -1;
    80001c28:	fff00513          	li	a0,-1
    80001c2c:	fcdff06f          	j	80001bf8 <_ZN15MemoryAllocator5kfreeEPv+0xb8>
    80001c30:	fff00513          	li	a0,-1
    80001c34:	fc5ff06f          	j	80001bf8 <_ZN15MemoryAllocator5kfreeEPv+0xb8>
            return -1;
    80001c38:	fff00513          	li	a0,-1
    80001c3c:	fbdff06f          	j	80001bf8 <_ZN15MemoryAllocator5kfreeEPv+0xb8>

0000000080001c40 <start>:
    80001c40:	ff010113          	addi	sp,sp,-16
    80001c44:	00813423          	sd	s0,8(sp)
    80001c48:	01010413          	addi	s0,sp,16
    80001c4c:	300027f3          	csrr	a5,mstatus
    80001c50:	ffffe737          	lui	a4,0xffffe
    80001c54:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8e9f>
    80001c58:	00e7f7b3          	and	a5,a5,a4
    80001c5c:	00001737          	lui	a4,0x1
    80001c60:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001c64:	00e7e7b3          	or	a5,a5,a4
    80001c68:	30079073          	csrw	mstatus,a5
    80001c6c:	00000797          	auipc	a5,0x0
    80001c70:	16078793          	addi	a5,a5,352 # 80001dcc <system_main>
    80001c74:	34179073          	csrw	mepc,a5
    80001c78:	00000793          	li	a5,0
    80001c7c:	18079073          	csrw	satp,a5
    80001c80:	000107b7          	lui	a5,0x10
    80001c84:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c88:	30279073          	csrw	medeleg,a5
    80001c8c:	30379073          	csrw	mideleg,a5
    80001c90:	104027f3          	csrr	a5,sie
    80001c94:	2227e793          	ori	a5,a5,546
    80001c98:	10479073          	csrw	sie,a5
    80001c9c:	fff00793          	li	a5,-1
    80001ca0:	00a7d793          	srli	a5,a5,0xa
    80001ca4:	3b079073          	csrw	pmpaddr0,a5
    80001ca8:	00f00793          	li	a5,15
    80001cac:	3a079073          	csrw	pmpcfg0,a5
    80001cb0:	f14027f3          	csrr	a5,mhartid
    80001cb4:	0200c737          	lui	a4,0x200c
    80001cb8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001cbc:	0007869b          	sext.w	a3,a5
    80001cc0:	00269713          	slli	a4,a3,0x2
    80001cc4:	000f4637          	lui	a2,0xf4
    80001cc8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ccc:	00d70733          	add	a4,a4,a3
    80001cd0:	0037979b          	slliw	a5,a5,0x3
    80001cd4:	020046b7          	lui	a3,0x2004
    80001cd8:	00d787b3          	add	a5,a5,a3
    80001cdc:	00c585b3          	add	a1,a1,a2
    80001ce0:	00371693          	slli	a3,a4,0x3
    80001ce4:	00003717          	auipc	a4,0x3
    80001ce8:	a2c70713          	addi	a4,a4,-1492 # 80004710 <timer_scratch>
    80001cec:	00b7b023          	sd	a1,0(a5)
    80001cf0:	00d70733          	add	a4,a4,a3
    80001cf4:	00f73c23          	sd	a5,24(a4)
    80001cf8:	02c73023          	sd	a2,32(a4)
    80001cfc:	34071073          	csrw	mscratch,a4
    80001d00:	00000797          	auipc	a5,0x0
    80001d04:	6e078793          	addi	a5,a5,1760 # 800023e0 <timervec>
    80001d08:	30579073          	csrw	mtvec,a5
    80001d0c:	300027f3          	csrr	a5,mstatus
    80001d10:	0087e793          	ori	a5,a5,8
    80001d14:	30079073          	csrw	mstatus,a5
    80001d18:	304027f3          	csrr	a5,mie
    80001d1c:	0807e793          	ori	a5,a5,128
    80001d20:	30479073          	csrw	mie,a5
    80001d24:	f14027f3          	csrr	a5,mhartid
    80001d28:	0007879b          	sext.w	a5,a5
    80001d2c:	00078213          	mv	tp,a5
    80001d30:	30200073          	mret
    80001d34:	00813403          	ld	s0,8(sp)
    80001d38:	01010113          	addi	sp,sp,16
    80001d3c:	00008067          	ret

0000000080001d40 <timerinit>:
    80001d40:	ff010113          	addi	sp,sp,-16
    80001d44:	00813423          	sd	s0,8(sp)
    80001d48:	01010413          	addi	s0,sp,16
    80001d4c:	f14027f3          	csrr	a5,mhartid
    80001d50:	0200c737          	lui	a4,0x200c
    80001d54:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001d58:	0007869b          	sext.w	a3,a5
    80001d5c:	00269713          	slli	a4,a3,0x2
    80001d60:	000f4637          	lui	a2,0xf4
    80001d64:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001d68:	00d70733          	add	a4,a4,a3
    80001d6c:	0037979b          	slliw	a5,a5,0x3
    80001d70:	020046b7          	lui	a3,0x2004
    80001d74:	00d787b3          	add	a5,a5,a3
    80001d78:	00c585b3          	add	a1,a1,a2
    80001d7c:	00371693          	slli	a3,a4,0x3
    80001d80:	00003717          	auipc	a4,0x3
    80001d84:	99070713          	addi	a4,a4,-1648 # 80004710 <timer_scratch>
    80001d88:	00b7b023          	sd	a1,0(a5)
    80001d8c:	00d70733          	add	a4,a4,a3
    80001d90:	00f73c23          	sd	a5,24(a4)
    80001d94:	02c73023          	sd	a2,32(a4)
    80001d98:	34071073          	csrw	mscratch,a4
    80001d9c:	00000797          	auipc	a5,0x0
    80001da0:	64478793          	addi	a5,a5,1604 # 800023e0 <timervec>
    80001da4:	30579073          	csrw	mtvec,a5
    80001da8:	300027f3          	csrr	a5,mstatus
    80001dac:	0087e793          	ori	a5,a5,8
    80001db0:	30079073          	csrw	mstatus,a5
    80001db4:	304027f3          	csrr	a5,mie
    80001db8:	0807e793          	ori	a5,a5,128
    80001dbc:	30479073          	csrw	mie,a5
    80001dc0:	00813403          	ld	s0,8(sp)
    80001dc4:	01010113          	addi	sp,sp,16
    80001dc8:	00008067          	ret

0000000080001dcc <system_main>:
    80001dcc:	fe010113          	addi	sp,sp,-32
    80001dd0:	00813823          	sd	s0,16(sp)
    80001dd4:	00913423          	sd	s1,8(sp)
    80001dd8:	00113c23          	sd	ra,24(sp)
    80001ddc:	02010413          	addi	s0,sp,32
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	0c4080e7          	jalr	196(ra) # 80001ea4 <cpuid>
    80001de8:	00003497          	auipc	s1,0x3
    80001dec:	8b848493          	addi	s1,s1,-1864 # 800046a0 <started>
    80001df0:	02050263          	beqz	a0,80001e14 <system_main+0x48>
    80001df4:	0004a783          	lw	a5,0(s1)
    80001df8:	0007879b          	sext.w	a5,a5
    80001dfc:	fe078ce3          	beqz	a5,80001df4 <system_main+0x28>
    80001e00:	0ff0000f          	fence
    80001e04:	00002517          	auipc	a0,0x2
    80001e08:	24c50513          	addi	a0,a0,588 # 80004050 <CONSOLE_STATUS+0x40>
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	a70080e7          	jalr	-1424(ra) # 8000287c <panic>
    80001e14:	00001097          	auipc	ra,0x1
    80001e18:	9c4080e7          	jalr	-1596(ra) # 800027d8 <consoleinit>
    80001e1c:	00001097          	auipc	ra,0x1
    80001e20:	150080e7          	jalr	336(ra) # 80002f6c <printfinit>
    80001e24:	00002517          	auipc	a0,0x2
    80001e28:	30c50513          	addi	a0,a0,780 # 80004130 <CONSOLE_STATUS+0x120>
    80001e2c:	00001097          	auipc	ra,0x1
    80001e30:	aac080e7          	jalr	-1364(ra) # 800028d8 <__printf>
    80001e34:	00002517          	auipc	a0,0x2
    80001e38:	1ec50513          	addi	a0,a0,492 # 80004020 <CONSOLE_STATUS+0x10>
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	a9c080e7          	jalr	-1380(ra) # 800028d8 <__printf>
    80001e44:	00002517          	auipc	a0,0x2
    80001e48:	2ec50513          	addi	a0,a0,748 # 80004130 <CONSOLE_STATUS+0x120>
    80001e4c:	00001097          	auipc	ra,0x1
    80001e50:	a8c080e7          	jalr	-1396(ra) # 800028d8 <__printf>
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	4a4080e7          	jalr	1188(ra) # 800032f8 <kinit>
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	148080e7          	jalr	328(ra) # 80001fa4 <trapinit>
    80001e64:	00000097          	auipc	ra,0x0
    80001e68:	16c080e7          	jalr	364(ra) # 80001fd0 <trapinithart>
    80001e6c:	00000097          	auipc	ra,0x0
    80001e70:	5b4080e7          	jalr	1460(ra) # 80002420 <plicinit>
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	5d4080e7          	jalr	1492(ra) # 80002448 <plicinithart>
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	078080e7          	jalr	120(ra) # 80001ef4 <userinit>
    80001e84:	0ff0000f          	fence
    80001e88:	00100793          	li	a5,1
    80001e8c:	00002517          	auipc	a0,0x2
    80001e90:	1ac50513          	addi	a0,a0,428 # 80004038 <CONSOLE_STATUS+0x28>
    80001e94:	00f4a023          	sw	a5,0(s1)
    80001e98:	00001097          	auipc	ra,0x1
    80001e9c:	a40080e7          	jalr	-1472(ra) # 800028d8 <__printf>
    80001ea0:	0000006f          	j	80001ea0 <system_main+0xd4>

0000000080001ea4 <cpuid>:
    80001ea4:	ff010113          	addi	sp,sp,-16
    80001ea8:	00813423          	sd	s0,8(sp)
    80001eac:	01010413          	addi	s0,sp,16
    80001eb0:	00020513          	mv	a0,tp
    80001eb4:	00813403          	ld	s0,8(sp)
    80001eb8:	0005051b          	sext.w	a0,a0
    80001ebc:	01010113          	addi	sp,sp,16
    80001ec0:	00008067          	ret

0000000080001ec4 <mycpu>:
    80001ec4:	ff010113          	addi	sp,sp,-16
    80001ec8:	00813423          	sd	s0,8(sp)
    80001ecc:	01010413          	addi	s0,sp,16
    80001ed0:	00020793          	mv	a5,tp
    80001ed4:	00813403          	ld	s0,8(sp)
    80001ed8:	0007879b          	sext.w	a5,a5
    80001edc:	00779793          	slli	a5,a5,0x7
    80001ee0:	00004517          	auipc	a0,0x4
    80001ee4:	86050513          	addi	a0,a0,-1952 # 80005740 <cpus>
    80001ee8:	00f50533          	add	a0,a0,a5
    80001eec:	01010113          	addi	sp,sp,16
    80001ef0:	00008067          	ret

0000000080001ef4 <userinit>:
    80001ef4:	ff010113          	addi	sp,sp,-16
    80001ef8:	00813423          	sd	s0,8(sp)
    80001efc:	01010413          	addi	s0,sp,16
    80001f00:	00813403          	ld	s0,8(sp)
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00000317          	auipc	t1,0x0
    80001f0c:	80c30067          	jr	-2036(t1) # 80001714 <main>

0000000080001f10 <either_copyout>:
    80001f10:	ff010113          	addi	sp,sp,-16
    80001f14:	00813023          	sd	s0,0(sp)
    80001f18:	00113423          	sd	ra,8(sp)
    80001f1c:	01010413          	addi	s0,sp,16
    80001f20:	02051663          	bnez	a0,80001f4c <either_copyout+0x3c>
    80001f24:	00058513          	mv	a0,a1
    80001f28:	00060593          	mv	a1,a2
    80001f2c:	0006861b          	sext.w	a2,a3
    80001f30:	00002097          	auipc	ra,0x2
    80001f34:	c54080e7          	jalr	-940(ra) # 80003b84 <__memmove>
    80001f38:	00813083          	ld	ra,8(sp)
    80001f3c:	00013403          	ld	s0,0(sp)
    80001f40:	00000513          	li	a0,0
    80001f44:	01010113          	addi	sp,sp,16
    80001f48:	00008067          	ret
    80001f4c:	00002517          	auipc	a0,0x2
    80001f50:	12c50513          	addi	a0,a0,300 # 80004078 <CONSOLE_STATUS+0x68>
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	928080e7          	jalr	-1752(ra) # 8000287c <panic>

0000000080001f5c <either_copyin>:
    80001f5c:	ff010113          	addi	sp,sp,-16
    80001f60:	00813023          	sd	s0,0(sp)
    80001f64:	00113423          	sd	ra,8(sp)
    80001f68:	01010413          	addi	s0,sp,16
    80001f6c:	02059463          	bnez	a1,80001f94 <either_copyin+0x38>
    80001f70:	00060593          	mv	a1,a2
    80001f74:	0006861b          	sext.w	a2,a3
    80001f78:	00002097          	auipc	ra,0x2
    80001f7c:	c0c080e7          	jalr	-1012(ra) # 80003b84 <__memmove>
    80001f80:	00813083          	ld	ra,8(sp)
    80001f84:	00013403          	ld	s0,0(sp)
    80001f88:	00000513          	li	a0,0
    80001f8c:	01010113          	addi	sp,sp,16
    80001f90:	00008067          	ret
    80001f94:	00002517          	auipc	a0,0x2
    80001f98:	10c50513          	addi	a0,a0,268 # 800040a0 <CONSOLE_STATUS+0x90>
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	8e0080e7          	jalr	-1824(ra) # 8000287c <panic>

0000000080001fa4 <trapinit>:
    80001fa4:	ff010113          	addi	sp,sp,-16
    80001fa8:	00813423          	sd	s0,8(sp)
    80001fac:	01010413          	addi	s0,sp,16
    80001fb0:	00813403          	ld	s0,8(sp)
    80001fb4:	00002597          	auipc	a1,0x2
    80001fb8:	11458593          	addi	a1,a1,276 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001fbc:	00004517          	auipc	a0,0x4
    80001fc0:	80450513          	addi	a0,a0,-2044 # 800057c0 <tickslock>
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00001317          	auipc	t1,0x1
    80001fcc:	5c030067          	jr	1472(t1) # 80003588 <initlock>

0000000080001fd0 <trapinithart>:
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    80001fdc:	00000797          	auipc	a5,0x0
    80001fe0:	2f478793          	addi	a5,a5,756 # 800022d0 <kernelvec>
    80001fe4:	10579073          	csrw	stvec,a5
    80001fe8:	00813403          	ld	s0,8(sp)
    80001fec:	01010113          	addi	sp,sp,16
    80001ff0:	00008067          	ret

0000000080001ff4 <usertrap>:
    80001ff4:	ff010113          	addi	sp,sp,-16
    80001ff8:	00813423          	sd	s0,8(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    80002000:	00813403          	ld	s0,8(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret

000000008000200c <usertrapret>:
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00813423          	sd	s0,8(sp)
    80002014:	01010413          	addi	s0,sp,16
    80002018:	00813403          	ld	s0,8(sp)
    8000201c:	01010113          	addi	sp,sp,16
    80002020:	00008067          	ret

0000000080002024 <kerneltrap>:
    80002024:	fe010113          	addi	sp,sp,-32
    80002028:	00813823          	sd	s0,16(sp)
    8000202c:	00113c23          	sd	ra,24(sp)
    80002030:	00913423          	sd	s1,8(sp)
    80002034:	02010413          	addi	s0,sp,32
    80002038:	142025f3          	csrr	a1,scause
    8000203c:	100027f3          	csrr	a5,sstatus
    80002040:	0027f793          	andi	a5,a5,2
    80002044:	10079c63          	bnez	a5,8000215c <kerneltrap+0x138>
    80002048:	142027f3          	csrr	a5,scause
    8000204c:	0207ce63          	bltz	a5,80002088 <kerneltrap+0x64>
    80002050:	00002517          	auipc	a0,0x2
    80002054:	0c050513          	addi	a0,a0,192 # 80004110 <CONSOLE_STATUS+0x100>
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	880080e7          	jalr	-1920(ra) # 800028d8 <__printf>
    80002060:	141025f3          	csrr	a1,sepc
    80002064:	14302673          	csrr	a2,stval
    80002068:	00002517          	auipc	a0,0x2
    8000206c:	0b850513          	addi	a0,a0,184 # 80004120 <CONSOLE_STATUS+0x110>
    80002070:	00001097          	auipc	ra,0x1
    80002074:	868080e7          	jalr	-1944(ra) # 800028d8 <__printf>
    80002078:	00002517          	auipc	a0,0x2
    8000207c:	0c050513          	addi	a0,a0,192 # 80004138 <CONSOLE_STATUS+0x128>
    80002080:	00000097          	auipc	ra,0x0
    80002084:	7fc080e7          	jalr	2044(ra) # 8000287c <panic>
    80002088:	0ff7f713          	andi	a4,a5,255
    8000208c:	00900693          	li	a3,9
    80002090:	04d70063          	beq	a4,a3,800020d0 <kerneltrap+0xac>
    80002094:	fff00713          	li	a4,-1
    80002098:	03f71713          	slli	a4,a4,0x3f
    8000209c:	00170713          	addi	a4,a4,1
    800020a0:	fae798e3          	bne	a5,a4,80002050 <kerneltrap+0x2c>
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	e00080e7          	jalr	-512(ra) # 80001ea4 <cpuid>
    800020ac:	06050663          	beqz	a0,80002118 <kerneltrap+0xf4>
    800020b0:	144027f3          	csrr	a5,sip
    800020b4:	ffd7f793          	andi	a5,a5,-3
    800020b8:	14479073          	csrw	sip,a5
    800020bc:	01813083          	ld	ra,24(sp)
    800020c0:	01013403          	ld	s0,16(sp)
    800020c4:	00813483          	ld	s1,8(sp)
    800020c8:	02010113          	addi	sp,sp,32
    800020cc:	00008067          	ret
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	3c4080e7          	jalr	964(ra) # 80002494 <plic_claim>
    800020d8:	00a00793          	li	a5,10
    800020dc:	00050493          	mv	s1,a0
    800020e0:	06f50863          	beq	a0,a5,80002150 <kerneltrap+0x12c>
    800020e4:	fc050ce3          	beqz	a0,800020bc <kerneltrap+0x98>
    800020e8:	00050593          	mv	a1,a0
    800020ec:	00002517          	auipc	a0,0x2
    800020f0:	00450513          	addi	a0,a0,4 # 800040f0 <CONSOLE_STATUS+0xe0>
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	7e4080e7          	jalr	2020(ra) # 800028d8 <__printf>
    800020fc:	01013403          	ld	s0,16(sp)
    80002100:	01813083          	ld	ra,24(sp)
    80002104:	00048513          	mv	a0,s1
    80002108:	00813483          	ld	s1,8(sp)
    8000210c:	02010113          	addi	sp,sp,32
    80002110:	00000317          	auipc	t1,0x0
    80002114:	3bc30067          	jr	956(t1) # 800024cc <plic_complete>
    80002118:	00003517          	auipc	a0,0x3
    8000211c:	6a850513          	addi	a0,a0,1704 # 800057c0 <tickslock>
    80002120:	00001097          	auipc	ra,0x1
    80002124:	48c080e7          	jalr	1164(ra) # 800035ac <acquire>
    80002128:	00002717          	auipc	a4,0x2
    8000212c:	57c70713          	addi	a4,a4,1404 # 800046a4 <ticks>
    80002130:	00072783          	lw	a5,0(a4)
    80002134:	00003517          	auipc	a0,0x3
    80002138:	68c50513          	addi	a0,a0,1676 # 800057c0 <tickslock>
    8000213c:	0017879b          	addiw	a5,a5,1
    80002140:	00f72023          	sw	a5,0(a4)
    80002144:	00001097          	auipc	ra,0x1
    80002148:	534080e7          	jalr	1332(ra) # 80003678 <release>
    8000214c:	f65ff06f          	j	800020b0 <kerneltrap+0x8c>
    80002150:	00001097          	auipc	ra,0x1
    80002154:	090080e7          	jalr	144(ra) # 800031e0 <uartintr>
    80002158:	fa5ff06f          	j	800020fc <kerneltrap+0xd8>
    8000215c:	00002517          	auipc	a0,0x2
    80002160:	f7450513          	addi	a0,a0,-140 # 800040d0 <CONSOLE_STATUS+0xc0>
    80002164:	00000097          	auipc	ra,0x0
    80002168:	718080e7          	jalr	1816(ra) # 8000287c <panic>

000000008000216c <clockintr>:
    8000216c:	fe010113          	addi	sp,sp,-32
    80002170:	00813823          	sd	s0,16(sp)
    80002174:	00913423          	sd	s1,8(sp)
    80002178:	00113c23          	sd	ra,24(sp)
    8000217c:	02010413          	addi	s0,sp,32
    80002180:	00003497          	auipc	s1,0x3
    80002184:	64048493          	addi	s1,s1,1600 # 800057c0 <tickslock>
    80002188:	00048513          	mv	a0,s1
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	420080e7          	jalr	1056(ra) # 800035ac <acquire>
    80002194:	00002717          	auipc	a4,0x2
    80002198:	51070713          	addi	a4,a4,1296 # 800046a4 <ticks>
    8000219c:	00072783          	lw	a5,0(a4)
    800021a0:	01013403          	ld	s0,16(sp)
    800021a4:	01813083          	ld	ra,24(sp)
    800021a8:	00048513          	mv	a0,s1
    800021ac:	0017879b          	addiw	a5,a5,1
    800021b0:	00813483          	ld	s1,8(sp)
    800021b4:	00f72023          	sw	a5,0(a4)
    800021b8:	02010113          	addi	sp,sp,32
    800021bc:	00001317          	auipc	t1,0x1
    800021c0:	4bc30067          	jr	1212(t1) # 80003678 <release>

00000000800021c4 <devintr>:
    800021c4:	142027f3          	csrr	a5,scause
    800021c8:	00000513          	li	a0,0
    800021cc:	0007c463          	bltz	a5,800021d4 <devintr+0x10>
    800021d0:	00008067          	ret
    800021d4:	fe010113          	addi	sp,sp,-32
    800021d8:	00813823          	sd	s0,16(sp)
    800021dc:	00113c23          	sd	ra,24(sp)
    800021e0:	00913423          	sd	s1,8(sp)
    800021e4:	02010413          	addi	s0,sp,32
    800021e8:	0ff7f713          	andi	a4,a5,255
    800021ec:	00900693          	li	a3,9
    800021f0:	04d70c63          	beq	a4,a3,80002248 <devintr+0x84>
    800021f4:	fff00713          	li	a4,-1
    800021f8:	03f71713          	slli	a4,a4,0x3f
    800021fc:	00170713          	addi	a4,a4,1
    80002200:	00e78c63          	beq	a5,a4,80002218 <devintr+0x54>
    80002204:	01813083          	ld	ra,24(sp)
    80002208:	01013403          	ld	s0,16(sp)
    8000220c:	00813483          	ld	s1,8(sp)
    80002210:	02010113          	addi	sp,sp,32
    80002214:	00008067          	ret
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	c8c080e7          	jalr	-884(ra) # 80001ea4 <cpuid>
    80002220:	06050663          	beqz	a0,8000228c <devintr+0xc8>
    80002224:	144027f3          	csrr	a5,sip
    80002228:	ffd7f793          	andi	a5,a5,-3
    8000222c:	14479073          	csrw	sip,a5
    80002230:	01813083          	ld	ra,24(sp)
    80002234:	01013403          	ld	s0,16(sp)
    80002238:	00813483          	ld	s1,8(sp)
    8000223c:	00200513          	li	a0,2
    80002240:	02010113          	addi	sp,sp,32
    80002244:	00008067          	ret
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	24c080e7          	jalr	588(ra) # 80002494 <plic_claim>
    80002250:	00a00793          	li	a5,10
    80002254:	00050493          	mv	s1,a0
    80002258:	06f50663          	beq	a0,a5,800022c4 <devintr+0x100>
    8000225c:	00100513          	li	a0,1
    80002260:	fa0482e3          	beqz	s1,80002204 <devintr+0x40>
    80002264:	00048593          	mv	a1,s1
    80002268:	00002517          	auipc	a0,0x2
    8000226c:	e8850513          	addi	a0,a0,-376 # 800040f0 <CONSOLE_STATUS+0xe0>
    80002270:	00000097          	auipc	ra,0x0
    80002274:	668080e7          	jalr	1640(ra) # 800028d8 <__printf>
    80002278:	00048513          	mv	a0,s1
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	250080e7          	jalr	592(ra) # 800024cc <plic_complete>
    80002284:	00100513          	li	a0,1
    80002288:	f7dff06f          	j	80002204 <devintr+0x40>
    8000228c:	00003517          	auipc	a0,0x3
    80002290:	53450513          	addi	a0,a0,1332 # 800057c0 <tickslock>
    80002294:	00001097          	auipc	ra,0x1
    80002298:	318080e7          	jalr	792(ra) # 800035ac <acquire>
    8000229c:	00002717          	auipc	a4,0x2
    800022a0:	40870713          	addi	a4,a4,1032 # 800046a4 <ticks>
    800022a4:	00072783          	lw	a5,0(a4)
    800022a8:	00003517          	auipc	a0,0x3
    800022ac:	51850513          	addi	a0,a0,1304 # 800057c0 <tickslock>
    800022b0:	0017879b          	addiw	a5,a5,1
    800022b4:	00f72023          	sw	a5,0(a4)
    800022b8:	00001097          	auipc	ra,0x1
    800022bc:	3c0080e7          	jalr	960(ra) # 80003678 <release>
    800022c0:	f65ff06f          	j	80002224 <devintr+0x60>
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	f1c080e7          	jalr	-228(ra) # 800031e0 <uartintr>
    800022cc:	fadff06f          	j	80002278 <devintr+0xb4>

00000000800022d0 <kernelvec>:
    800022d0:	f0010113          	addi	sp,sp,-256
    800022d4:	00113023          	sd	ra,0(sp)
    800022d8:	00213423          	sd	sp,8(sp)
    800022dc:	00313823          	sd	gp,16(sp)
    800022e0:	00413c23          	sd	tp,24(sp)
    800022e4:	02513023          	sd	t0,32(sp)
    800022e8:	02613423          	sd	t1,40(sp)
    800022ec:	02713823          	sd	t2,48(sp)
    800022f0:	02813c23          	sd	s0,56(sp)
    800022f4:	04913023          	sd	s1,64(sp)
    800022f8:	04a13423          	sd	a0,72(sp)
    800022fc:	04b13823          	sd	a1,80(sp)
    80002300:	04c13c23          	sd	a2,88(sp)
    80002304:	06d13023          	sd	a3,96(sp)
    80002308:	06e13423          	sd	a4,104(sp)
    8000230c:	06f13823          	sd	a5,112(sp)
    80002310:	07013c23          	sd	a6,120(sp)
    80002314:	09113023          	sd	a7,128(sp)
    80002318:	09213423          	sd	s2,136(sp)
    8000231c:	09313823          	sd	s3,144(sp)
    80002320:	09413c23          	sd	s4,152(sp)
    80002324:	0b513023          	sd	s5,160(sp)
    80002328:	0b613423          	sd	s6,168(sp)
    8000232c:	0b713823          	sd	s7,176(sp)
    80002330:	0b813c23          	sd	s8,184(sp)
    80002334:	0d913023          	sd	s9,192(sp)
    80002338:	0da13423          	sd	s10,200(sp)
    8000233c:	0db13823          	sd	s11,208(sp)
    80002340:	0dc13c23          	sd	t3,216(sp)
    80002344:	0fd13023          	sd	t4,224(sp)
    80002348:	0fe13423          	sd	t5,232(sp)
    8000234c:	0ff13823          	sd	t6,240(sp)
    80002350:	cd5ff0ef          	jal	ra,80002024 <kerneltrap>
    80002354:	00013083          	ld	ra,0(sp)
    80002358:	00813103          	ld	sp,8(sp)
    8000235c:	01013183          	ld	gp,16(sp)
    80002360:	02013283          	ld	t0,32(sp)
    80002364:	02813303          	ld	t1,40(sp)
    80002368:	03013383          	ld	t2,48(sp)
    8000236c:	03813403          	ld	s0,56(sp)
    80002370:	04013483          	ld	s1,64(sp)
    80002374:	04813503          	ld	a0,72(sp)
    80002378:	05013583          	ld	a1,80(sp)
    8000237c:	05813603          	ld	a2,88(sp)
    80002380:	06013683          	ld	a3,96(sp)
    80002384:	06813703          	ld	a4,104(sp)
    80002388:	07013783          	ld	a5,112(sp)
    8000238c:	07813803          	ld	a6,120(sp)
    80002390:	08013883          	ld	a7,128(sp)
    80002394:	08813903          	ld	s2,136(sp)
    80002398:	09013983          	ld	s3,144(sp)
    8000239c:	09813a03          	ld	s4,152(sp)
    800023a0:	0a013a83          	ld	s5,160(sp)
    800023a4:	0a813b03          	ld	s6,168(sp)
    800023a8:	0b013b83          	ld	s7,176(sp)
    800023ac:	0b813c03          	ld	s8,184(sp)
    800023b0:	0c013c83          	ld	s9,192(sp)
    800023b4:	0c813d03          	ld	s10,200(sp)
    800023b8:	0d013d83          	ld	s11,208(sp)
    800023bc:	0d813e03          	ld	t3,216(sp)
    800023c0:	0e013e83          	ld	t4,224(sp)
    800023c4:	0e813f03          	ld	t5,232(sp)
    800023c8:	0f013f83          	ld	t6,240(sp)
    800023cc:	10010113          	addi	sp,sp,256
    800023d0:	10200073          	sret
    800023d4:	00000013          	nop
    800023d8:	00000013          	nop
    800023dc:	00000013          	nop

00000000800023e0 <timervec>:
    800023e0:	34051573          	csrrw	a0,mscratch,a0
    800023e4:	00b53023          	sd	a1,0(a0)
    800023e8:	00c53423          	sd	a2,8(a0)
    800023ec:	00d53823          	sd	a3,16(a0)
    800023f0:	01853583          	ld	a1,24(a0)
    800023f4:	02053603          	ld	a2,32(a0)
    800023f8:	0005b683          	ld	a3,0(a1)
    800023fc:	00c686b3          	add	a3,a3,a2
    80002400:	00d5b023          	sd	a3,0(a1)
    80002404:	00200593          	li	a1,2
    80002408:	14459073          	csrw	sip,a1
    8000240c:	01053683          	ld	a3,16(a0)
    80002410:	00853603          	ld	a2,8(a0)
    80002414:	00053583          	ld	a1,0(a0)
    80002418:	34051573          	csrrw	a0,mscratch,a0
    8000241c:	30200073          	mret

0000000080002420 <plicinit>:
    80002420:	ff010113          	addi	sp,sp,-16
    80002424:	00813423          	sd	s0,8(sp)
    80002428:	01010413          	addi	s0,sp,16
    8000242c:	00813403          	ld	s0,8(sp)
    80002430:	0c0007b7          	lui	a5,0xc000
    80002434:	00100713          	li	a4,1
    80002438:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000243c:	00e7a223          	sw	a4,4(a5)
    80002440:	01010113          	addi	sp,sp,16
    80002444:	00008067          	ret

0000000080002448 <plicinithart>:
    80002448:	ff010113          	addi	sp,sp,-16
    8000244c:	00813023          	sd	s0,0(sp)
    80002450:	00113423          	sd	ra,8(sp)
    80002454:	01010413          	addi	s0,sp,16
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	a4c080e7          	jalr	-1460(ra) # 80001ea4 <cpuid>
    80002460:	0085171b          	slliw	a4,a0,0x8
    80002464:	0c0027b7          	lui	a5,0xc002
    80002468:	00e787b3          	add	a5,a5,a4
    8000246c:	40200713          	li	a4,1026
    80002470:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002474:	00813083          	ld	ra,8(sp)
    80002478:	00013403          	ld	s0,0(sp)
    8000247c:	00d5151b          	slliw	a0,a0,0xd
    80002480:	0c2017b7          	lui	a5,0xc201
    80002484:	00a78533          	add	a0,a5,a0
    80002488:	00052023          	sw	zero,0(a0)
    8000248c:	01010113          	addi	sp,sp,16
    80002490:	00008067          	ret

0000000080002494 <plic_claim>:
    80002494:	ff010113          	addi	sp,sp,-16
    80002498:	00813023          	sd	s0,0(sp)
    8000249c:	00113423          	sd	ra,8(sp)
    800024a0:	01010413          	addi	s0,sp,16
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	a00080e7          	jalr	-1536(ra) # 80001ea4 <cpuid>
    800024ac:	00813083          	ld	ra,8(sp)
    800024b0:	00013403          	ld	s0,0(sp)
    800024b4:	00d5151b          	slliw	a0,a0,0xd
    800024b8:	0c2017b7          	lui	a5,0xc201
    800024bc:	00a78533          	add	a0,a5,a0
    800024c0:	00452503          	lw	a0,4(a0)
    800024c4:	01010113          	addi	sp,sp,16
    800024c8:	00008067          	ret

00000000800024cc <plic_complete>:
    800024cc:	fe010113          	addi	sp,sp,-32
    800024d0:	00813823          	sd	s0,16(sp)
    800024d4:	00913423          	sd	s1,8(sp)
    800024d8:	00113c23          	sd	ra,24(sp)
    800024dc:	02010413          	addi	s0,sp,32
    800024e0:	00050493          	mv	s1,a0
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	9c0080e7          	jalr	-1600(ra) # 80001ea4 <cpuid>
    800024ec:	01813083          	ld	ra,24(sp)
    800024f0:	01013403          	ld	s0,16(sp)
    800024f4:	00d5179b          	slliw	a5,a0,0xd
    800024f8:	0c201737          	lui	a4,0xc201
    800024fc:	00f707b3          	add	a5,a4,a5
    80002500:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002504:	00813483          	ld	s1,8(sp)
    80002508:	02010113          	addi	sp,sp,32
    8000250c:	00008067          	ret

0000000080002510 <consolewrite>:
    80002510:	fb010113          	addi	sp,sp,-80
    80002514:	04813023          	sd	s0,64(sp)
    80002518:	04113423          	sd	ra,72(sp)
    8000251c:	02913c23          	sd	s1,56(sp)
    80002520:	03213823          	sd	s2,48(sp)
    80002524:	03313423          	sd	s3,40(sp)
    80002528:	03413023          	sd	s4,32(sp)
    8000252c:	01513c23          	sd	s5,24(sp)
    80002530:	05010413          	addi	s0,sp,80
    80002534:	06c05c63          	blez	a2,800025ac <consolewrite+0x9c>
    80002538:	00060993          	mv	s3,a2
    8000253c:	00050a13          	mv	s4,a0
    80002540:	00058493          	mv	s1,a1
    80002544:	00000913          	li	s2,0
    80002548:	fff00a93          	li	s5,-1
    8000254c:	01c0006f          	j	80002568 <consolewrite+0x58>
    80002550:	fbf44503          	lbu	a0,-65(s0)
    80002554:	0019091b          	addiw	s2,s2,1
    80002558:	00148493          	addi	s1,s1,1
    8000255c:	00001097          	auipc	ra,0x1
    80002560:	a9c080e7          	jalr	-1380(ra) # 80002ff8 <uartputc>
    80002564:	03298063          	beq	s3,s2,80002584 <consolewrite+0x74>
    80002568:	00048613          	mv	a2,s1
    8000256c:	00100693          	li	a3,1
    80002570:	000a0593          	mv	a1,s4
    80002574:	fbf40513          	addi	a0,s0,-65
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	9e4080e7          	jalr	-1564(ra) # 80001f5c <either_copyin>
    80002580:	fd5518e3          	bne	a0,s5,80002550 <consolewrite+0x40>
    80002584:	04813083          	ld	ra,72(sp)
    80002588:	04013403          	ld	s0,64(sp)
    8000258c:	03813483          	ld	s1,56(sp)
    80002590:	02813983          	ld	s3,40(sp)
    80002594:	02013a03          	ld	s4,32(sp)
    80002598:	01813a83          	ld	s5,24(sp)
    8000259c:	00090513          	mv	a0,s2
    800025a0:	03013903          	ld	s2,48(sp)
    800025a4:	05010113          	addi	sp,sp,80
    800025a8:	00008067          	ret
    800025ac:	00000913          	li	s2,0
    800025b0:	fd5ff06f          	j	80002584 <consolewrite+0x74>

00000000800025b4 <consoleread>:
    800025b4:	f9010113          	addi	sp,sp,-112
    800025b8:	06813023          	sd	s0,96(sp)
    800025bc:	04913c23          	sd	s1,88(sp)
    800025c0:	05213823          	sd	s2,80(sp)
    800025c4:	05313423          	sd	s3,72(sp)
    800025c8:	05413023          	sd	s4,64(sp)
    800025cc:	03513c23          	sd	s5,56(sp)
    800025d0:	03613823          	sd	s6,48(sp)
    800025d4:	03713423          	sd	s7,40(sp)
    800025d8:	03813023          	sd	s8,32(sp)
    800025dc:	06113423          	sd	ra,104(sp)
    800025e0:	01913c23          	sd	s9,24(sp)
    800025e4:	07010413          	addi	s0,sp,112
    800025e8:	00060b93          	mv	s7,a2
    800025ec:	00050913          	mv	s2,a0
    800025f0:	00058c13          	mv	s8,a1
    800025f4:	00060b1b          	sext.w	s6,a2
    800025f8:	00003497          	auipc	s1,0x3
    800025fc:	1e048493          	addi	s1,s1,480 # 800057d8 <cons>
    80002600:	00400993          	li	s3,4
    80002604:	fff00a13          	li	s4,-1
    80002608:	00a00a93          	li	s5,10
    8000260c:	05705e63          	blez	s7,80002668 <consoleread+0xb4>
    80002610:	09c4a703          	lw	a4,156(s1)
    80002614:	0984a783          	lw	a5,152(s1)
    80002618:	0007071b          	sext.w	a4,a4
    8000261c:	08e78463          	beq	a5,a4,800026a4 <consoleread+0xf0>
    80002620:	07f7f713          	andi	a4,a5,127
    80002624:	00e48733          	add	a4,s1,a4
    80002628:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000262c:	0017869b          	addiw	a3,a5,1
    80002630:	08d4ac23          	sw	a3,152(s1)
    80002634:	00070c9b          	sext.w	s9,a4
    80002638:	0b370663          	beq	a4,s3,800026e4 <consoleread+0x130>
    8000263c:	00100693          	li	a3,1
    80002640:	f9f40613          	addi	a2,s0,-97
    80002644:	000c0593          	mv	a1,s8
    80002648:	00090513          	mv	a0,s2
    8000264c:	f8e40fa3          	sb	a4,-97(s0)
    80002650:	00000097          	auipc	ra,0x0
    80002654:	8c0080e7          	jalr	-1856(ra) # 80001f10 <either_copyout>
    80002658:	01450863          	beq	a0,s4,80002668 <consoleread+0xb4>
    8000265c:	001c0c13          	addi	s8,s8,1
    80002660:	fffb8b9b          	addiw	s7,s7,-1
    80002664:	fb5c94e3          	bne	s9,s5,8000260c <consoleread+0x58>
    80002668:	000b851b          	sext.w	a0,s7
    8000266c:	06813083          	ld	ra,104(sp)
    80002670:	06013403          	ld	s0,96(sp)
    80002674:	05813483          	ld	s1,88(sp)
    80002678:	05013903          	ld	s2,80(sp)
    8000267c:	04813983          	ld	s3,72(sp)
    80002680:	04013a03          	ld	s4,64(sp)
    80002684:	03813a83          	ld	s5,56(sp)
    80002688:	02813b83          	ld	s7,40(sp)
    8000268c:	02013c03          	ld	s8,32(sp)
    80002690:	01813c83          	ld	s9,24(sp)
    80002694:	40ab053b          	subw	a0,s6,a0
    80002698:	03013b03          	ld	s6,48(sp)
    8000269c:	07010113          	addi	sp,sp,112
    800026a0:	00008067          	ret
    800026a4:	00001097          	auipc	ra,0x1
    800026a8:	1d8080e7          	jalr	472(ra) # 8000387c <push_on>
    800026ac:	0984a703          	lw	a4,152(s1)
    800026b0:	09c4a783          	lw	a5,156(s1)
    800026b4:	0007879b          	sext.w	a5,a5
    800026b8:	fef70ce3          	beq	a4,a5,800026b0 <consoleread+0xfc>
    800026bc:	00001097          	auipc	ra,0x1
    800026c0:	234080e7          	jalr	564(ra) # 800038f0 <pop_on>
    800026c4:	0984a783          	lw	a5,152(s1)
    800026c8:	07f7f713          	andi	a4,a5,127
    800026cc:	00e48733          	add	a4,s1,a4
    800026d0:	01874703          	lbu	a4,24(a4)
    800026d4:	0017869b          	addiw	a3,a5,1
    800026d8:	08d4ac23          	sw	a3,152(s1)
    800026dc:	00070c9b          	sext.w	s9,a4
    800026e0:	f5371ee3          	bne	a4,s3,8000263c <consoleread+0x88>
    800026e4:	000b851b          	sext.w	a0,s7
    800026e8:	f96bf2e3          	bgeu	s7,s6,8000266c <consoleread+0xb8>
    800026ec:	08f4ac23          	sw	a5,152(s1)
    800026f0:	f7dff06f          	j	8000266c <consoleread+0xb8>

00000000800026f4 <consputc>:
    800026f4:	10000793          	li	a5,256
    800026f8:	00f50663          	beq	a0,a5,80002704 <consputc+0x10>
    800026fc:	00001317          	auipc	t1,0x1
    80002700:	9f430067          	jr	-1548(t1) # 800030f0 <uartputc_sync>
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00113423          	sd	ra,8(sp)
    8000270c:	00813023          	sd	s0,0(sp)
    80002710:	01010413          	addi	s0,sp,16
    80002714:	00800513          	li	a0,8
    80002718:	00001097          	auipc	ra,0x1
    8000271c:	9d8080e7          	jalr	-1576(ra) # 800030f0 <uartputc_sync>
    80002720:	02000513          	li	a0,32
    80002724:	00001097          	auipc	ra,0x1
    80002728:	9cc080e7          	jalr	-1588(ra) # 800030f0 <uartputc_sync>
    8000272c:	00013403          	ld	s0,0(sp)
    80002730:	00813083          	ld	ra,8(sp)
    80002734:	00800513          	li	a0,8
    80002738:	01010113          	addi	sp,sp,16
    8000273c:	00001317          	auipc	t1,0x1
    80002740:	9b430067          	jr	-1612(t1) # 800030f0 <uartputc_sync>

0000000080002744 <consoleintr>:
    80002744:	fe010113          	addi	sp,sp,-32
    80002748:	00813823          	sd	s0,16(sp)
    8000274c:	00913423          	sd	s1,8(sp)
    80002750:	01213023          	sd	s2,0(sp)
    80002754:	00113c23          	sd	ra,24(sp)
    80002758:	02010413          	addi	s0,sp,32
    8000275c:	00003917          	auipc	s2,0x3
    80002760:	07c90913          	addi	s2,s2,124 # 800057d8 <cons>
    80002764:	00050493          	mv	s1,a0
    80002768:	00090513          	mv	a0,s2
    8000276c:	00001097          	auipc	ra,0x1
    80002770:	e40080e7          	jalr	-448(ra) # 800035ac <acquire>
    80002774:	02048c63          	beqz	s1,800027ac <consoleintr+0x68>
    80002778:	0a092783          	lw	a5,160(s2)
    8000277c:	09892703          	lw	a4,152(s2)
    80002780:	07f00693          	li	a3,127
    80002784:	40e7873b          	subw	a4,a5,a4
    80002788:	02e6e263          	bltu	a3,a4,800027ac <consoleintr+0x68>
    8000278c:	00d00713          	li	a4,13
    80002790:	04e48063          	beq	s1,a4,800027d0 <consoleintr+0x8c>
    80002794:	07f7f713          	andi	a4,a5,127
    80002798:	00e90733          	add	a4,s2,a4
    8000279c:	0017879b          	addiw	a5,a5,1
    800027a0:	0af92023          	sw	a5,160(s2)
    800027a4:	00970c23          	sb	s1,24(a4)
    800027a8:	08f92e23          	sw	a5,156(s2)
    800027ac:	01013403          	ld	s0,16(sp)
    800027b0:	01813083          	ld	ra,24(sp)
    800027b4:	00813483          	ld	s1,8(sp)
    800027b8:	00013903          	ld	s2,0(sp)
    800027bc:	00003517          	auipc	a0,0x3
    800027c0:	01c50513          	addi	a0,a0,28 # 800057d8 <cons>
    800027c4:	02010113          	addi	sp,sp,32
    800027c8:	00001317          	auipc	t1,0x1
    800027cc:	eb030067          	jr	-336(t1) # 80003678 <release>
    800027d0:	00a00493          	li	s1,10
    800027d4:	fc1ff06f          	j	80002794 <consoleintr+0x50>

00000000800027d8 <consoleinit>:
    800027d8:	fe010113          	addi	sp,sp,-32
    800027dc:	00113c23          	sd	ra,24(sp)
    800027e0:	00813823          	sd	s0,16(sp)
    800027e4:	00913423          	sd	s1,8(sp)
    800027e8:	02010413          	addi	s0,sp,32
    800027ec:	00003497          	auipc	s1,0x3
    800027f0:	fec48493          	addi	s1,s1,-20 # 800057d8 <cons>
    800027f4:	00048513          	mv	a0,s1
    800027f8:	00002597          	auipc	a1,0x2
    800027fc:	95058593          	addi	a1,a1,-1712 # 80004148 <CONSOLE_STATUS+0x138>
    80002800:	00001097          	auipc	ra,0x1
    80002804:	d88080e7          	jalr	-632(ra) # 80003588 <initlock>
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	7ac080e7          	jalr	1964(ra) # 80002fb4 <uartinit>
    80002810:	01813083          	ld	ra,24(sp)
    80002814:	01013403          	ld	s0,16(sp)
    80002818:	00000797          	auipc	a5,0x0
    8000281c:	d9c78793          	addi	a5,a5,-612 # 800025b4 <consoleread>
    80002820:	0af4bc23          	sd	a5,184(s1)
    80002824:	00000797          	auipc	a5,0x0
    80002828:	cec78793          	addi	a5,a5,-788 # 80002510 <consolewrite>
    8000282c:	0cf4b023          	sd	a5,192(s1)
    80002830:	00813483          	ld	s1,8(sp)
    80002834:	02010113          	addi	sp,sp,32
    80002838:	00008067          	ret

000000008000283c <console_read>:
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00813423          	sd	s0,8(sp)
    80002844:	01010413          	addi	s0,sp,16
    80002848:	00813403          	ld	s0,8(sp)
    8000284c:	00003317          	auipc	t1,0x3
    80002850:	04433303          	ld	t1,68(t1) # 80005890 <devsw+0x10>
    80002854:	01010113          	addi	sp,sp,16
    80002858:	00030067          	jr	t1

000000008000285c <console_write>:
    8000285c:	ff010113          	addi	sp,sp,-16
    80002860:	00813423          	sd	s0,8(sp)
    80002864:	01010413          	addi	s0,sp,16
    80002868:	00813403          	ld	s0,8(sp)
    8000286c:	00003317          	auipc	t1,0x3
    80002870:	02c33303          	ld	t1,44(t1) # 80005898 <devsw+0x18>
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00030067          	jr	t1

000000008000287c <panic>:
    8000287c:	fe010113          	addi	sp,sp,-32
    80002880:	00113c23          	sd	ra,24(sp)
    80002884:	00813823          	sd	s0,16(sp)
    80002888:	00913423          	sd	s1,8(sp)
    8000288c:	02010413          	addi	s0,sp,32
    80002890:	00050493          	mv	s1,a0
    80002894:	00002517          	auipc	a0,0x2
    80002898:	8bc50513          	addi	a0,a0,-1860 # 80004150 <CONSOLE_STATUS+0x140>
    8000289c:	00003797          	auipc	a5,0x3
    800028a0:	0807ae23          	sw	zero,156(a5) # 80005938 <pr+0x18>
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	034080e7          	jalr	52(ra) # 800028d8 <__printf>
    800028ac:	00048513          	mv	a0,s1
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	028080e7          	jalr	40(ra) # 800028d8 <__printf>
    800028b8:	00002517          	auipc	a0,0x2
    800028bc:	87850513          	addi	a0,a0,-1928 # 80004130 <CONSOLE_STATUS+0x120>
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	018080e7          	jalr	24(ra) # 800028d8 <__printf>
    800028c8:	00100793          	li	a5,1
    800028cc:	00002717          	auipc	a4,0x2
    800028d0:	dcf72e23          	sw	a5,-548(a4) # 800046a8 <panicked>
    800028d4:	0000006f          	j	800028d4 <panic+0x58>

00000000800028d8 <__printf>:
    800028d8:	f3010113          	addi	sp,sp,-208
    800028dc:	08813023          	sd	s0,128(sp)
    800028e0:	07313423          	sd	s3,104(sp)
    800028e4:	09010413          	addi	s0,sp,144
    800028e8:	05813023          	sd	s8,64(sp)
    800028ec:	08113423          	sd	ra,136(sp)
    800028f0:	06913c23          	sd	s1,120(sp)
    800028f4:	07213823          	sd	s2,112(sp)
    800028f8:	07413023          	sd	s4,96(sp)
    800028fc:	05513c23          	sd	s5,88(sp)
    80002900:	05613823          	sd	s6,80(sp)
    80002904:	05713423          	sd	s7,72(sp)
    80002908:	03913c23          	sd	s9,56(sp)
    8000290c:	03a13823          	sd	s10,48(sp)
    80002910:	03b13423          	sd	s11,40(sp)
    80002914:	00003317          	auipc	t1,0x3
    80002918:	00c30313          	addi	t1,t1,12 # 80005920 <pr>
    8000291c:	01832c03          	lw	s8,24(t1)
    80002920:	00b43423          	sd	a1,8(s0)
    80002924:	00c43823          	sd	a2,16(s0)
    80002928:	00d43c23          	sd	a3,24(s0)
    8000292c:	02e43023          	sd	a4,32(s0)
    80002930:	02f43423          	sd	a5,40(s0)
    80002934:	03043823          	sd	a6,48(s0)
    80002938:	03143c23          	sd	a7,56(s0)
    8000293c:	00050993          	mv	s3,a0
    80002940:	4a0c1663          	bnez	s8,80002dec <__printf+0x514>
    80002944:	60098c63          	beqz	s3,80002f5c <__printf+0x684>
    80002948:	0009c503          	lbu	a0,0(s3)
    8000294c:	00840793          	addi	a5,s0,8
    80002950:	f6f43c23          	sd	a5,-136(s0)
    80002954:	00000493          	li	s1,0
    80002958:	22050063          	beqz	a0,80002b78 <__printf+0x2a0>
    8000295c:	00002a37          	lui	s4,0x2
    80002960:	00018ab7          	lui	s5,0x18
    80002964:	000f4b37          	lui	s6,0xf4
    80002968:	00989bb7          	lui	s7,0x989
    8000296c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002970:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002974:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002978:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000297c:	00148c9b          	addiw	s9,s1,1
    80002980:	02500793          	li	a5,37
    80002984:	01998933          	add	s2,s3,s9
    80002988:	38f51263          	bne	a0,a5,80002d0c <__printf+0x434>
    8000298c:	00094783          	lbu	a5,0(s2)
    80002990:	00078c9b          	sext.w	s9,a5
    80002994:	1e078263          	beqz	a5,80002b78 <__printf+0x2a0>
    80002998:	0024849b          	addiw	s1,s1,2
    8000299c:	07000713          	li	a4,112
    800029a0:	00998933          	add	s2,s3,s1
    800029a4:	38e78a63          	beq	a5,a4,80002d38 <__printf+0x460>
    800029a8:	20f76863          	bltu	a4,a5,80002bb8 <__printf+0x2e0>
    800029ac:	42a78863          	beq	a5,a0,80002ddc <__printf+0x504>
    800029b0:	06400713          	li	a4,100
    800029b4:	40e79663          	bne	a5,a4,80002dc0 <__printf+0x4e8>
    800029b8:	f7843783          	ld	a5,-136(s0)
    800029bc:	0007a603          	lw	a2,0(a5)
    800029c0:	00878793          	addi	a5,a5,8
    800029c4:	f6f43c23          	sd	a5,-136(s0)
    800029c8:	42064a63          	bltz	a2,80002dfc <__printf+0x524>
    800029cc:	00a00713          	li	a4,10
    800029d0:	02e677bb          	remuw	a5,a2,a4
    800029d4:	00001d97          	auipc	s11,0x1
    800029d8:	7a4d8d93          	addi	s11,s11,1956 # 80004178 <digits>
    800029dc:	00900593          	li	a1,9
    800029e0:	0006051b          	sext.w	a0,a2
    800029e4:	00000c93          	li	s9,0
    800029e8:	02079793          	slli	a5,a5,0x20
    800029ec:	0207d793          	srli	a5,a5,0x20
    800029f0:	00fd87b3          	add	a5,s11,a5
    800029f4:	0007c783          	lbu	a5,0(a5)
    800029f8:	02e656bb          	divuw	a3,a2,a4
    800029fc:	f8f40023          	sb	a5,-128(s0)
    80002a00:	14c5d863          	bge	a1,a2,80002b50 <__printf+0x278>
    80002a04:	06300593          	li	a1,99
    80002a08:	00100c93          	li	s9,1
    80002a0c:	02e6f7bb          	remuw	a5,a3,a4
    80002a10:	02079793          	slli	a5,a5,0x20
    80002a14:	0207d793          	srli	a5,a5,0x20
    80002a18:	00fd87b3          	add	a5,s11,a5
    80002a1c:	0007c783          	lbu	a5,0(a5)
    80002a20:	02e6d73b          	divuw	a4,a3,a4
    80002a24:	f8f400a3          	sb	a5,-127(s0)
    80002a28:	12a5f463          	bgeu	a1,a0,80002b50 <__printf+0x278>
    80002a2c:	00a00693          	li	a3,10
    80002a30:	00900593          	li	a1,9
    80002a34:	02d777bb          	remuw	a5,a4,a3
    80002a38:	02079793          	slli	a5,a5,0x20
    80002a3c:	0207d793          	srli	a5,a5,0x20
    80002a40:	00fd87b3          	add	a5,s11,a5
    80002a44:	0007c503          	lbu	a0,0(a5)
    80002a48:	02d757bb          	divuw	a5,a4,a3
    80002a4c:	f8a40123          	sb	a0,-126(s0)
    80002a50:	48e5f263          	bgeu	a1,a4,80002ed4 <__printf+0x5fc>
    80002a54:	06300513          	li	a0,99
    80002a58:	02d7f5bb          	remuw	a1,a5,a3
    80002a5c:	02059593          	slli	a1,a1,0x20
    80002a60:	0205d593          	srli	a1,a1,0x20
    80002a64:	00bd85b3          	add	a1,s11,a1
    80002a68:	0005c583          	lbu	a1,0(a1)
    80002a6c:	02d7d7bb          	divuw	a5,a5,a3
    80002a70:	f8b401a3          	sb	a1,-125(s0)
    80002a74:	48e57263          	bgeu	a0,a4,80002ef8 <__printf+0x620>
    80002a78:	3e700513          	li	a0,999
    80002a7c:	02d7f5bb          	remuw	a1,a5,a3
    80002a80:	02059593          	slli	a1,a1,0x20
    80002a84:	0205d593          	srli	a1,a1,0x20
    80002a88:	00bd85b3          	add	a1,s11,a1
    80002a8c:	0005c583          	lbu	a1,0(a1)
    80002a90:	02d7d7bb          	divuw	a5,a5,a3
    80002a94:	f8b40223          	sb	a1,-124(s0)
    80002a98:	46e57663          	bgeu	a0,a4,80002f04 <__printf+0x62c>
    80002a9c:	02d7f5bb          	remuw	a1,a5,a3
    80002aa0:	02059593          	slli	a1,a1,0x20
    80002aa4:	0205d593          	srli	a1,a1,0x20
    80002aa8:	00bd85b3          	add	a1,s11,a1
    80002aac:	0005c583          	lbu	a1,0(a1)
    80002ab0:	02d7d7bb          	divuw	a5,a5,a3
    80002ab4:	f8b402a3          	sb	a1,-123(s0)
    80002ab8:	46ea7863          	bgeu	s4,a4,80002f28 <__printf+0x650>
    80002abc:	02d7f5bb          	remuw	a1,a5,a3
    80002ac0:	02059593          	slli	a1,a1,0x20
    80002ac4:	0205d593          	srli	a1,a1,0x20
    80002ac8:	00bd85b3          	add	a1,s11,a1
    80002acc:	0005c583          	lbu	a1,0(a1)
    80002ad0:	02d7d7bb          	divuw	a5,a5,a3
    80002ad4:	f8b40323          	sb	a1,-122(s0)
    80002ad8:	3eeaf863          	bgeu	s5,a4,80002ec8 <__printf+0x5f0>
    80002adc:	02d7f5bb          	remuw	a1,a5,a3
    80002ae0:	02059593          	slli	a1,a1,0x20
    80002ae4:	0205d593          	srli	a1,a1,0x20
    80002ae8:	00bd85b3          	add	a1,s11,a1
    80002aec:	0005c583          	lbu	a1,0(a1)
    80002af0:	02d7d7bb          	divuw	a5,a5,a3
    80002af4:	f8b403a3          	sb	a1,-121(s0)
    80002af8:	42eb7e63          	bgeu	s6,a4,80002f34 <__printf+0x65c>
    80002afc:	02d7f5bb          	remuw	a1,a5,a3
    80002b00:	02059593          	slli	a1,a1,0x20
    80002b04:	0205d593          	srli	a1,a1,0x20
    80002b08:	00bd85b3          	add	a1,s11,a1
    80002b0c:	0005c583          	lbu	a1,0(a1)
    80002b10:	02d7d7bb          	divuw	a5,a5,a3
    80002b14:	f8b40423          	sb	a1,-120(s0)
    80002b18:	42ebfc63          	bgeu	s7,a4,80002f50 <__printf+0x678>
    80002b1c:	02079793          	slli	a5,a5,0x20
    80002b20:	0207d793          	srli	a5,a5,0x20
    80002b24:	00fd8db3          	add	s11,s11,a5
    80002b28:	000dc703          	lbu	a4,0(s11)
    80002b2c:	00a00793          	li	a5,10
    80002b30:	00900c93          	li	s9,9
    80002b34:	f8e404a3          	sb	a4,-119(s0)
    80002b38:	00065c63          	bgez	a2,80002b50 <__printf+0x278>
    80002b3c:	f9040713          	addi	a4,s0,-112
    80002b40:	00f70733          	add	a4,a4,a5
    80002b44:	02d00693          	li	a3,45
    80002b48:	fed70823          	sb	a3,-16(a4)
    80002b4c:	00078c93          	mv	s9,a5
    80002b50:	f8040793          	addi	a5,s0,-128
    80002b54:	01978cb3          	add	s9,a5,s9
    80002b58:	f7f40d13          	addi	s10,s0,-129
    80002b5c:	000cc503          	lbu	a0,0(s9)
    80002b60:	fffc8c93          	addi	s9,s9,-1
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	b90080e7          	jalr	-1136(ra) # 800026f4 <consputc>
    80002b6c:	ffac98e3          	bne	s9,s10,80002b5c <__printf+0x284>
    80002b70:	00094503          	lbu	a0,0(s2)
    80002b74:	e00514e3          	bnez	a0,8000297c <__printf+0xa4>
    80002b78:	1a0c1663          	bnez	s8,80002d24 <__printf+0x44c>
    80002b7c:	08813083          	ld	ra,136(sp)
    80002b80:	08013403          	ld	s0,128(sp)
    80002b84:	07813483          	ld	s1,120(sp)
    80002b88:	07013903          	ld	s2,112(sp)
    80002b8c:	06813983          	ld	s3,104(sp)
    80002b90:	06013a03          	ld	s4,96(sp)
    80002b94:	05813a83          	ld	s5,88(sp)
    80002b98:	05013b03          	ld	s6,80(sp)
    80002b9c:	04813b83          	ld	s7,72(sp)
    80002ba0:	04013c03          	ld	s8,64(sp)
    80002ba4:	03813c83          	ld	s9,56(sp)
    80002ba8:	03013d03          	ld	s10,48(sp)
    80002bac:	02813d83          	ld	s11,40(sp)
    80002bb0:	0d010113          	addi	sp,sp,208
    80002bb4:	00008067          	ret
    80002bb8:	07300713          	li	a4,115
    80002bbc:	1ce78a63          	beq	a5,a4,80002d90 <__printf+0x4b8>
    80002bc0:	07800713          	li	a4,120
    80002bc4:	1ee79e63          	bne	a5,a4,80002dc0 <__printf+0x4e8>
    80002bc8:	f7843783          	ld	a5,-136(s0)
    80002bcc:	0007a703          	lw	a4,0(a5)
    80002bd0:	00878793          	addi	a5,a5,8
    80002bd4:	f6f43c23          	sd	a5,-136(s0)
    80002bd8:	28074263          	bltz	a4,80002e5c <__printf+0x584>
    80002bdc:	00001d97          	auipc	s11,0x1
    80002be0:	59cd8d93          	addi	s11,s11,1436 # 80004178 <digits>
    80002be4:	00f77793          	andi	a5,a4,15
    80002be8:	00fd87b3          	add	a5,s11,a5
    80002bec:	0007c683          	lbu	a3,0(a5)
    80002bf0:	00f00613          	li	a2,15
    80002bf4:	0007079b          	sext.w	a5,a4
    80002bf8:	f8d40023          	sb	a3,-128(s0)
    80002bfc:	0047559b          	srliw	a1,a4,0x4
    80002c00:	0047569b          	srliw	a3,a4,0x4
    80002c04:	00000c93          	li	s9,0
    80002c08:	0ee65063          	bge	a2,a4,80002ce8 <__printf+0x410>
    80002c0c:	00f6f693          	andi	a3,a3,15
    80002c10:	00dd86b3          	add	a3,s11,a3
    80002c14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002c18:	0087d79b          	srliw	a5,a5,0x8
    80002c1c:	00100c93          	li	s9,1
    80002c20:	f8d400a3          	sb	a3,-127(s0)
    80002c24:	0cb67263          	bgeu	a2,a1,80002ce8 <__printf+0x410>
    80002c28:	00f7f693          	andi	a3,a5,15
    80002c2c:	00dd86b3          	add	a3,s11,a3
    80002c30:	0006c583          	lbu	a1,0(a3)
    80002c34:	00f00613          	li	a2,15
    80002c38:	0047d69b          	srliw	a3,a5,0x4
    80002c3c:	f8b40123          	sb	a1,-126(s0)
    80002c40:	0047d593          	srli	a1,a5,0x4
    80002c44:	28f67e63          	bgeu	a2,a5,80002ee0 <__printf+0x608>
    80002c48:	00f6f693          	andi	a3,a3,15
    80002c4c:	00dd86b3          	add	a3,s11,a3
    80002c50:	0006c503          	lbu	a0,0(a3)
    80002c54:	0087d813          	srli	a6,a5,0x8
    80002c58:	0087d69b          	srliw	a3,a5,0x8
    80002c5c:	f8a401a3          	sb	a0,-125(s0)
    80002c60:	28b67663          	bgeu	a2,a1,80002eec <__printf+0x614>
    80002c64:	00f6f693          	andi	a3,a3,15
    80002c68:	00dd86b3          	add	a3,s11,a3
    80002c6c:	0006c583          	lbu	a1,0(a3)
    80002c70:	00c7d513          	srli	a0,a5,0xc
    80002c74:	00c7d69b          	srliw	a3,a5,0xc
    80002c78:	f8b40223          	sb	a1,-124(s0)
    80002c7c:	29067a63          	bgeu	a2,a6,80002f10 <__printf+0x638>
    80002c80:	00f6f693          	andi	a3,a3,15
    80002c84:	00dd86b3          	add	a3,s11,a3
    80002c88:	0006c583          	lbu	a1,0(a3)
    80002c8c:	0107d813          	srli	a6,a5,0x10
    80002c90:	0107d69b          	srliw	a3,a5,0x10
    80002c94:	f8b402a3          	sb	a1,-123(s0)
    80002c98:	28a67263          	bgeu	a2,a0,80002f1c <__printf+0x644>
    80002c9c:	00f6f693          	andi	a3,a3,15
    80002ca0:	00dd86b3          	add	a3,s11,a3
    80002ca4:	0006c683          	lbu	a3,0(a3)
    80002ca8:	0147d79b          	srliw	a5,a5,0x14
    80002cac:	f8d40323          	sb	a3,-122(s0)
    80002cb0:	21067663          	bgeu	a2,a6,80002ebc <__printf+0x5e4>
    80002cb4:	02079793          	slli	a5,a5,0x20
    80002cb8:	0207d793          	srli	a5,a5,0x20
    80002cbc:	00fd8db3          	add	s11,s11,a5
    80002cc0:	000dc683          	lbu	a3,0(s11)
    80002cc4:	00800793          	li	a5,8
    80002cc8:	00700c93          	li	s9,7
    80002ccc:	f8d403a3          	sb	a3,-121(s0)
    80002cd0:	00075c63          	bgez	a4,80002ce8 <__printf+0x410>
    80002cd4:	f9040713          	addi	a4,s0,-112
    80002cd8:	00f70733          	add	a4,a4,a5
    80002cdc:	02d00693          	li	a3,45
    80002ce0:	fed70823          	sb	a3,-16(a4)
    80002ce4:	00078c93          	mv	s9,a5
    80002ce8:	f8040793          	addi	a5,s0,-128
    80002cec:	01978cb3          	add	s9,a5,s9
    80002cf0:	f7f40d13          	addi	s10,s0,-129
    80002cf4:	000cc503          	lbu	a0,0(s9)
    80002cf8:	fffc8c93          	addi	s9,s9,-1
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	9f8080e7          	jalr	-1544(ra) # 800026f4 <consputc>
    80002d04:	ff9d18e3          	bne	s10,s9,80002cf4 <__printf+0x41c>
    80002d08:	0100006f          	j	80002d18 <__printf+0x440>
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	9e8080e7          	jalr	-1560(ra) # 800026f4 <consputc>
    80002d14:	000c8493          	mv	s1,s9
    80002d18:	00094503          	lbu	a0,0(s2)
    80002d1c:	c60510e3          	bnez	a0,8000297c <__printf+0xa4>
    80002d20:	e40c0ee3          	beqz	s8,80002b7c <__printf+0x2a4>
    80002d24:	00003517          	auipc	a0,0x3
    80002d28:	bfc50513          	addi	a0,a0,-1028 # 80005920 <pr>
    80002d2c:	00001097          	auipc	ra,0x1
    80002d30:	94c080e7          	jalr	-1716(ra) # 80003678 <release>
    80002d34:	e49ff06f          	j	80002b7c <__printf+0x2a4>
    80002d38:	f7843783          	ld	a5,-136(s0)
    80002d3c:	03000513          	li	a0,48
    80002d40:	01000d13          	li	s10,16
    80002d44:	00878713          	addi	a4,a5,8
    80002d48:	0007bc83          	ld	s9,0(a5)
    80002d4c:	f6e43c23          	sd	a4,-136(s0)
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	9a4080e7          	jalr	-1628(ra) # 800026f4 <consputc>
    80002d58:	07800513          	li	a0,120
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	998080e7          	jalr	-1640(ra) # 800026f4 <consputc>
    80002d64:	00001d97          	auipc	s11,0x1
    80002d68:	414d8d93          	addi	s11,s11,1044 # 80004178 <digits>
    80002d6c:	03ccd793          	srli	a5,s9,0x3c
    80002d70:	00fd87b3          	add	a5,s11,a5
    80002d74:	0007c503          	lbu	a0,0(a5)
    80002d78:	fffd0d1b          	addiw	s10,s10,-1
    80002d7c:	004c9c93          	slli	s9,s9,0x4
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	974080e7          	jalr	-1676(ra) # 800026f4 <consputc>
    80002d88:	fe0d12e3          	bnez	s10,80002d6c <__printf+0x494>
    80002d8c:	f8dff06f          	j	80002d18 <__printf+0x440>
    80002d90:	f7843783          	ld	a5,-136(s0)
    80002d94:	0007bc83          	ld	s9,0(a5)
    80002d98:	00878793          	addi	a5,a5,8
    80002d9c:	f6f43c23          	sd	a5,-136(s0)
    80002da0:	000c9a63          	bnez	s9,80002db4 <__printf+0x4dc>
    80002da4:	1080006f          	j	80002eac <__printf+0x5d4>
    80002da8:	001c8c93          	addi	s9,s9,1
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	948080e7          	jalr	-1720(ra) # 800026f4 <consputc>
    80002db4:	000cc503          	lbu	a0,0(s9)
    80002db8:	fe0518e3          	bnez	a0,80002da8 <__printf+0x4d0>
    80002dbc:	f5dff06f          	j	80002d18 <__printf+0x440>
    80002dc0:	02500513          	li	a0,37
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	930080e7          	jalr	-1744(ra) # 800026f4 <consputc>
    80002dcc:	000c8513          	mv	a0,s9
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	924080e7          	jalr	-1756(ra) # 800026f4 <consputc>
    80002dd8:	f41ff06f          	j	80002d18 <__printf+0x440>
    80002ddc:	02500513          	li	a0,37
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	914080e7          	jalr	-1772(ra) # 800026f4 <consputc>
    80002de8:	f31ff06f          	j	80002d18 <__printf+0x440>
    80002dec:	00030513          	mv	a0,t1
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	7bc080e7          	jalr	1980(ra) # 800035ac <acquire>
    80002df8:	b4dff06f          	j	80002944 <__printf+0x6c>
    80002dfc:	40c0053b          	negw	a0,a2
    80002e00:	00a00713          	li	a4,10
    80002e04:	02e576bb          	remuw	a3,a0,a4
    80002e08:	00001d97          	auipc	s11,0x1
    80002e0c:	370d8d93          	addi	s11,s11,880 # 80004178 <digits>
    80002e10:	ff700593          	li	a1,-9
    80002e14:	02069693          	slli	a3,a3,0x20
    80002e18:	0206d693          	srli	a3,a3,0x20
    80002e1c:	00dd86b3          	add	a3,s11,a3
    80002e20:	0006c683          	lbu	a3,0(a3)
    80002e24:	02e557bb          	divuw	a5,a0,a4
    80002e28:	f8d40023          	sb	a3,-128(s0)
    80002e2c:	10b65e63          	bge	a2,a1,80002f48 <__printf+0x670>
    80002e30:	06300593          	li	a1,99
    80002e34:	02e7f6bb          	remuw	a3,a5,a4
    80002e38:	02069693          	slli	a3,a3,0x20
    80002e3c:	0206d693          	srli	a3,a3,0x20
    80002e40:	00dd86b3          	add	a3,s11,a3
    80002e44:	0006c683          	lbu	a3,0(a3)
    80002e48:	02e7d73b          	divuw	a4,a5,a4
    80002e4c:	00200793          	li	a5,2
    80002e50:	f8d400a3          	sb	a3,-127(s0)
    80002e54:	bca5ece3          	bltu	a1,a0,80002a2c <__printf+0x154>
    80002e58:	ce5ff06f          	j	80002b3c <__printf+0x264>
    80002e5c:	40e007bb          	negw	a5,a4
    80002e60:	00001d97          	auipc	s11,0x1
    80002e64:	318d8d93          	addi	s11,s11,792 # 80004178 <digits>
    80002e68:	00f7f693          	andi	a3,a5,15
    80002e6c:	00dd86b3          	add	a3,s11,a3
    80002e70:	0006c583          	lbu	a1,0(a3)
    80002e74:	ff100613          	li	a2,-15
    80002e78:	0047d69b          	srliw	a3,a5,0x4
    80002e7c:	f8b40023          	sb	a1,-128(s0)
    80002e80:	0047d59b          	srliw	a1,a5,0x4
    80002e84:	0ac75e63          	bge	a4,a2,80002f40 <__printf+0x668>
    80002e88:	00f6f693          	andi	a3,a3,15
    80002e8c:	00dd86b3          	add	a3,s11,a3
    80002e90:	0006c603          	lbu	a2,0(a3)
    80002e94:	00f00693          	li	a3,15
    80002e98:	0087d79b          	srliw	a5,a5,0x8
    80002e9c:	f8c400a3          	sb	a2,-127(s0)
    80002ea0:	d8b6e4e3          	bltu	a3,a1,80002c28 <__printf+0x350>
    80002ea4:	00200793          	li	a5,2
    80002ea8:	e2dff06f          	j	80002cd4 <__printf+0x3fc>
    80002eac:	00001c97          	auipc	s9,0x1
    80002eb0:	2acc8c93          	addi	s9,s9,684 # 80004158 <CONSOLE_STATUS+0x148>
    80002eb4:	02800513          	li	a0,40
    80002eb8:	ef1ff06f          	j	80002da8 <__printf+0x4d0>
    80002ebc:	00700793          	li	a5,7
    80002ec0:	00600c93          	li	s9,6
    80002ec4:	e0dff06f          	j	80002cd0 <__printf+0x3f8>
    80002ec8:	00700793          	li	a5,7
    80002ecc:	00600c93          	li	s9,6
    80002ed0:	c69ff06f          	j	80002b38 <__printf+0x260>
    80002ed4:	00300793          	li	a5,3
    80002ed8:	00200c93          	li	s9,2
    80002edc:	c5dff06f          	j	80002b38 <__printf+0x260>
    80002ee0:	00300793          	li	a5,3
    80002ee4:	00200c93          	li	s9,2
    80002ee8:	de9ff06f          	j	80002cd0 <__printf+0x3f8>
    80002eec:	00400793          	li	a5,4
    80002ef0:	00300c93          	li	s9,3
    80002ef4:	dddff06f          	j	80002cd0 <__printf+0x3f8>
    80002ef8:	00400793          	li	a5,4
    80002efc:	00300c93          	li	s9,3
    80002f00:	c39ff06f          	j	80002b38 <__printf+0x260>
    80002f04:	00500793          	li	a5,5
    80002f08:	00400c93          	li	s9,4
    80002f0c:	c2dff06f          	j	80002b38 <__printf+0x260>
    80002f10:	00500793          	li	a5,5
    80002f14:	00400c93          	li	s9,4
    80002f18:	db9ff06f          	j	80002cd0 <__printf+0x3f8>
    80002f1c:	00600793          	li	a5,6
    80002f20:	00500c93          	li	s9,5
    80002f24:	dadff06f          	j	80002cd0 <__printf+0x3f8>
    80002f28:	00600793          	li	a5,6
    80002f2c:	00500c93          	li	s9,5
    80002f30:	c09ff06f          	j	80002b38 <__printf+0x260>
    80002f34:	00800793          	li	a5,8
    80002f38:	00700c93          	li	s9,7
    80002f3c:	bfdff06f          	j	80002b38 <__printf+0x260>
    80002f40:	00100793          	li	a5,1
    80002f44:	d91ff06f          	j	80002cd4 <__printf+0x3fc>
    80002f48:	00100793          	li	a5,1
    80002f4c:	bf1ff06f          	j	80002b3c <__printf+0x264>
    80002f50:	00900793          	li	a5,9
    80002f54:	00800c93          	li	s9,8
    80002f58:	be1ff06f          	j	80002b38 <__printf+0x260>
    80002f5c:	00001517          	auipc	a0,0x1
    80002f60:	20450513          	addi	a0,a0,516 # 80004160 <CONSOLE_STATUS+0x150>
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	918080e7          	jalr	-1768(ra) # 8000287c <panic>

0000000080002f6c <printfinit>:
    80002f6c:	fe010113          	addi	sp,sp,-32
    80002f70:	00813823          	sd	s0,16(sp)
    80002f74:	00913423          	sd	s1,8(sp)
    80002f78:	00113c23          	sd	ra,24(sp)
    80002f7c:	02010413          	addi	s0,sp,32
    80002f80:	00003497          	auipc	s1,0x3
    80002f84:	9a048493          	addi	s1,s1,-1632 # 80005920 <pr>
    80002f88:	00048513          	mv	a0,s1
    80002f8c:	00001597          	auipc	a1,0x1
    80002f90:	1e458593          	addi	a1,a1,484 # 80004170 <CONSOLE_STATUS+0x160>
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	5f4080e7          	jalr	1524(ra) # 80003588 <initlock>
    80002f9c:	01813083          	ld	ra,24(sp)
    80002fa0:	01013403          	ld	s0,16(sp)
    80002fa4:	0004ac23          	sw	zero,24(s1)
    80002fa8:	00813483          	ld	s1,8(sp)
    80002fac:	02010113          	addi	sp,sp,32
    80002fb0:	00008067          	ret

0000000080002fb4 <uartinit>:
    80002fb4:	ff010113          	addi	sp,sp,-16
    80002fb8:	00813423          	sd	s0,8(sp)
    80002fbc:	01010413          	addi	s0,sp,16
    80002fc0:	100007b7          	lui	a5,0x10000
    80002fc4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002fc8:	f8000713          	li	a4,-128
    80002fcc:	00e781a3          	sb	a4,3(a5)
    80002fd0:	00300713          	li	a4,3
    80002fd4:	00e78023          	sb	a4,0(a5)
    80002fd8:	000780a3          	sb	zero,1(a5)
    80002fdc:	00e781a3          	sb	a4,3(a5)
    80002fe0:	00700693          	li	a3,7
    80002fe4:	00d78123          	sb	a3,2(a5)
    80002fe8:	00e780a3          	sb	a4,1(a5)
    80002fec:	00813403          	ld	s0,8(sp)
    80002ff0:	01010113          	addi	sp,sp,16
    80002ff4:	00008067          	ret

0000000080002ff8 <uartputc>:
    80002ff8:	00001797          	auipc	a5,0x1
    80002ffc:	6b07a783          	lw	a5,1712(a5) # 800046a8 <panicked>
    80003000:	00078463          	beqz	a5,80003008 <uartputc+0x10>
    80003004:	0000006f          	j	80003004 <uartputc+0xc>
    80003008:	fd010113          	addi	sp,sp,-48
    8000300c:	02813023          	sd	s0,32(sp)
    80003010:	00913c23          	sd	s1,24(sp)
    80003014:	01213823          	sd	s2,16(sp)
    80003018:	01313423          	sd	s3,8(sp)
    8000301c:	02113423          	sd	ra,40(sp)
    80003020:	03010413          	addi	s0,sp,48
    80003024:	00001917          	auipc	s2,0x1
    80003028:	68c90913          	addi	s2,s2,1676 # 800046b0 <uart_tx_r>
    8000302c:	00093783          	ld	a5,0(s2)
    80003030:	00001497          	auipc	s1,0x1
    80003034:	68848493          	addi	s1,s1,1672 # 800046b8 <uart_tx_w>
    80003038:	0004b703          	ld	a4,0(s1)
    8000303c:	02078693          	addi	a3,a5,32
    80003040:	00050993          	mv	s3,a0
    80003044:	02e69c63          	bne	a3,a4,8000307c <uartputc+0x84>
    80003048:	00001097          	auipc	ra,0x1
    8000304c:	834080e7          	jalr	-1996(ra) # 8000387c <push_on>
    80003050:	00093783          	ld	a5,0(s2)
    80003054:	0004b703          	ld	a4,0(s1)
    80003058:	02078793          	addi	a5,a5,32
    8000305c:	00e79463          	bne	a5,a4,80003064 <uartputc+0x6c>
    80003060:	0000006f          	j	80003060 <uartputc+0x68>
    80003064:	00001097          	auipc	ra,0x1
    80003068:	88c080e7          	jalr	-1908(ra) # 800038f0 <pop_on>
    8000306c:	00093783          	ld	a5,0(s2)
    80003070:	0004b703          	ld	a4,0(s1)
    80003074:	02078693          	addi	a3,a5,32
    80003078:	fce688e3          	beq	a3,a4,80003048 <uartputc+0x50>
    8000307c:	01f77693          	andi	a3,a4,31
    80003080:	00003597          	auipc	a1,0x3
    80003084:	8c058593          	addi	a1,a1,-1856 # 80005940 <uart_tx_buf>
    80003088:	00d586b3          	add	a3,a1,a3
    8000308c:	00170713          	addi	a4,a4,1
    80003090:	01368023          	sb	s3,0(a3)
    80003094:	00e4b023          	sd	a4,0(s1)
    80003098:	10000637          	lui	a2,0x10000
    8000309c:	02f71063          	bne	a4,a5,800030bc <uartputc+0xc4>
    800030a0:	0340006f          	j	800030d4 <uartputc+0xdc>
    800030a4:	00074703          	lbu	a4,0(a4)
    800030a8:	00f93023          	sd	a5,0(s2)
    800030ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800030b0:	00093783          	ld	a5,0(s2)
    800030b4:	0004b703          	ld	a4,0(s1)
    800030b8:	00f70e63          	beq	a4,a5,800030d4 <uartputc+0xdc>
    800030bc:	00564683          	lbu	a3,5(a2)
    800030c0:	01f7f713          	andi	a4,a5,31
    800030c4:	00e58733          	add	a4,a1,a4
    800030c8:	0206f693          	andi	a3,a3,32
    800030cc:	00178793          	addi	a5,a5,1
    800030d0:	fc069ae3          	bnez	a3,800030a4 <uartputc+0xac>
    800030d4:	02813083          	ld	ra,40(sp)
    800030d8:	02013403          	ld	s0,32(sp)
    800030dc:	01813483          	ld	s1,24(sp)
    800030e0:	01013903          	ld	s2,16(sp)
    800030e4:	00813983          	ld	s3,8(sp)
    800030e8:	03010113          	addi	sp,sp,48
    800030ec:	00008067          	ret

00000000800030f0 <uartputc_sync>:
    800030f0:	ff010113          	addi	sp,sp,-16
    800030f4:	00813423          	sd	s0,8(sp)
    800030f8:	01010413          	addi	s0,sp,16
    800030fc:	00001717          	auipc	a4,0x1
    80003100:	5ac72703          	lw	a4,1452(a4) # 800046a8 <panicked>
    80003104:	02071663          	bnez	a4,80003130 <uartputc_sync+0x40>
    80003108:	00050793          	mv	a5,a0
    8000310c:	100006b7          	lui	a3,0x10000
    80003110:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003114:	02077713          	andi	a4,a4,32
    80003118:	fe070ce3          	beqz	a4,80003110 <uartputc_sync+0x20>
    8000311c:	0ff7f793          	andi	a5,a5,255
    80003120:	00f68023          	sb	a5,0(a3)
    80003124:	00813403          	ld	s0,8(sp)
    80003128:	01010113          	addi	sp,sp,16
    8000312c:	00008067          	ret
    80003130:	0000006f          	j	80003130 <uartputc_sync+0x40>

0000000080003134 <uartstart>:
    80003134:	ff010113          	addi	sp,sp,-16
    80003138:	00813423          	sd	s0,8(sp)
    8000313c:	01010413          	addi	s0,sp,16
    80003140:	00001617          	auipc	a2,0x1
    80003144:	57060613          	addi	a2,a2,1392 # 800046b0 <uart_tx_r>
    80003148:	00001517          	auipc	a0,0x1
    8000314c:	57050513          	addi	a0,a0,1392 # 800046b8 <uart_tx_w>
    80003150:	00063783          	ld	a5,0(a2)
    80003154:	00053703          	ld	a4,0(a0)
    80003158:	04f70263          	beq	a4,a5,8000319c <uartstart+0x68>
    8000315c:	100005b7          	lui	a1,0x10000
    80003160:	00002817          	auipc	a6,0x2
    80003164:	7e080813          	addi	a6,a6,2016 # 80005940 <uart_tx_buf>
    80003168:	01c0006f          	j	80003184 <uartstart+0x50>
    8000316c:	0006c703          	lbu	a4,0(a3)
    80003170:	00f63023          	sd	a5,0(a2)
    80003174:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003178:	00063783          	ld	a5,0(a2)
    8000317c:	00053703          	ld	a4,0(a0)
    80003180:	00f70e63          	beq	a4,a5,8000319c <uartstart+0x68>
    80003184:	01f7f713          	andi	a4,a5,31
    80003188:	00e806b3          	add	a3,a6,a4
    8000318c:	0055c703          	lbu	a4,5(a1)
    80003190:	00178793          	addi	a5,a5,1
    80003194:	02077713          	andi	a4,a4,32
    80003198:	fc071ae3          	bnez	a4,8000316c <uartstart+0x38>
    8000319c:	00813403          	ld	s0,8(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <uartgetc>:
    800031a8:	ff010113          	addi	sp,sp,-16
    800031ac:	00813423          	sd	s0,8(sp)
    800031b0:	01010413          	addi	s0,sp,16
    800031b4:	10000737          	lui	a4,0x10000
    800031b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800031bc:	0017f793          	andi	a5,a5,1
    800031c0:	00078c63          	beqz	a5,800031d8 <uartgetc+0x30>
    800031c4:	00074503          	lbu	a0,0(a4)
    800031c8:	0ff57513          	andi	a0,a0,255
    800031cc:	00813403          	ld	s0,8(sp)
    800031d0:	01010113          	addi	sp,sp,16
    800031d4:	00008067          	ret
    800031d8:	fff00513          	li	a0,-1
    800031dc:	ff1ff06f          	j	800031cc <uartgetc+0x24>

00000000800031e0 <uartintr>:
    800031e0:	100007b7          	lui	a5,0x10000
    800031e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800031e8:	0017f793          	andi	a5,a5,1
    800031ec:	0a078463          	beqz	a5,80003294 <uartintr+0xb4>
    800031f0:	fe010113          	addi	sp,sp,-32
    800031f4:	00813823          	sd	s0,16(sp)
    800031f8:	00913423          	sd	s1,8(sp)
    800031fc:	00113c23          	sd	ra,24(sp)
    80003200:	02010413          	addi	s0,sp,32
    80003204:	100004b7          	lui	s1,0x10000
    80003208:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000320c:	0ff57513          	andi	a0,a0,255
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	534080e7          	jalr	1332(ra) # 80002744 <consoleintr>
    80003218:	0054c783          	lbu	a5,5(s1)
    8000321c:	0017f793          	andi	a5,a5,1
    80003220:	fe0794e3          	bnez	a5,80003208 <uartintr+0x28>
    80003224:	00001617          	auipc	a2,0x1
    80003228:	48c60613          	addi	a2,a2,1164 # 800046b0 <uart_tx_r>
    8000322c:	00001517          	auipc	a0,0x1
    80003230:	48c50513          	addi	a0,a0,1164 # 800046b8 <uart_tx_w>
    80003234:	00063783          	ld	a5,0(a2)
    80003238:	00053703          	ld	a4,0(a0)
    8000323c:	04f70263          	beq	a4,a5,80003280 <uartintr+0xa0>
    80003240:	100005b7          	lui	a1,0x10000
    80003244:	00002817          	auipc	a6,0x2
    80003248:	6fc80813          	addi	a6,a6,1788 # 80005940 <uart_tx_buf>
    8000324c:	01c0006f          	j	80003268 <uartintr+0x88>
    80003250:	0006c703          	lbu	a4,0(a3)
    80003254:	00f63023          	sd	a5,0(a2)
    80003258:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000325c:	00063783          	ld	a5,0(a2)
    80003260:	00053703          	ld	a4,0(a0)
    80003264:	00f70e63          	beq	a4,a5,80003280 <uartintr+0xa0>
    80003268:	01f7f713          	andi	a4,a5,31
    8000326c:	00e806b3          	add	a3,a6,a4
    80003270:	0055c703          	lbu	a4,5(a1)
    80003274:	00178793          	addi	a5,a5,1
    80003278:	02077713          	andi	a4,a4,32
    8000327c:	fc071ae3          	bnez	a4,80003250 <uartintr+0x70>
    80003280:	01813083          	ld	ra,24(sp)
    80003284:	01013403          	ld	s0,16(sp)
    80003288:	00813483          	ld	s1,8(sp)
    8000328c:	02010113          	addi	sp,sp,32
    80003290:	00008067          	ret
    80003294:	00001617          	auipc	a2,0x1
    80003298:	41c60613          	addi	a2,a2,1052 # 800046b0 <uart_tx_r>
    8000329c:	00001517          	auipc	a0,0x1
    800032a0:	41c50513          	addi	a0,a0,1052 # 800046b8 <uart_tx_w>
    800032a4:	00063783          	ld	a5,0(a2)
    800032a8:	00053703          	ld	a4,0(a0)
    800032ac:	04f70263          	beq	a4,a5,800032f0 <uartintr+0x110>
    800032b0:	100005b7          	lui	a1,0x10000
    800032b4:	00002817          	auipc	a6,0x2
    800032b8:	68c80813          	addi	a6,a6,1676 # 80005940 <uart_tx_buf>
    800032bc:	01c0006f          	j	800032d8 <uartintr+0xf8>
    800032c0:	0006c703          	lbu	a4,0(a3)
    800032c4:	00f63023          	sd	a5,0(a2)
    800032c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800032cc:	00063783          	ld	a5,0(a2)
    800032d0:	00053703          	ld	a4,0(a0)
    800032d4:	02f70063          	beq	a4,a5,800032f4 <uartintr+0x114>
    800032d8:	01f7f713          	andi	a4,a5,31
    800032dc:	00e806b3          	add	a3,a6,a4
    800032e0:	0055c703          	lbu	a4,5(a1)
    800032e4:	00178793          	addi	a5,a5,1
    800032e8:	02077713          	andi	a4,a4,32
    800032ec:	fc071ae3          	bnez	a4,800032c0 <uartintr+0xe0>
    800032f0:	00008067          	ret
    800032f4:	00008067          	ret

00000000800032f8 <kinit>:
    800032f8:	fc010113          	addi	sp,sp,-64
    800032fc:	02913423          	sd	s1,40(sp)
    80003300:	fffff7b7          	lui	a5,0xfffff
    80003304:	00003497          	auipc	s1,0x3
    80003308:	65b48493          	addi	s1,s1,1627 # 8000695f <end+0xfff>
    8000330c:	02813823          	sd	s0,48(sp)
    80003310:	01313c23          	sd	s3,24(sp)
    80003314:	00f4f4b3          	and	s1,s1,a5
    80003318:	02113c23          	sd	ra,56(sp)
    8000331c:	03213023          	sd	s2,32(sp)
    80003320:	01413823          	sd	s4,16(sp)
    80003324:	01513423          	sd	s5,8(sp)
    80003328:	04010413          	addi	s0,sp,64
    8000332c:	000017b7          	lui	a5,0x1
    80003330:	01100993          	li	s3,17
    80003334:	00f487b3          	add	a5,s1,a5
    80003338:	01b99993          	slli	s3,s3,0x1b
    8000333c:	06f9e063          	bltu	s3,a5,8000339c <kinit+0xa4>
    80003340:	00002a97          	auipc	s5,0x2
    80003344:	620a8a93          	addi	s5,s5,1568 # 80005960 <end>
    80003348:	0754ec63          	bltu	s1,s5,800033c0 <kinit+0xc8>
    8000334c:	0734fa63          	bgeu	s1,s3,800033c0 <kinit+0xc8>
    80003350:	00088a37          	lui	s4,0x88
    80003354:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003358:	00001917          	auipc	s2,0x1
    8000335c:	36890913          	addi	s2,s2,872 # 800046c0 <kmem>
    80003360:	00ca1a13          	slli	s4,s4,0xc
    80003364:	0140006f          	j	80003378 <kinit+0x80>
    80003368:	000017b7          	lui	a5,0x1
    8000336c:	00f484b3          	add	s1,s1,a5
    80003370:	0554e863          	bltu	s1,s5,800033c0 <kinit+0xc8>
    80003374:	0534f663          	bgeu	s1,s3,800033c0 <kinit+0xc8>
    80003378:	00001637          	lui	a2,0x1
    8000337c:	00100593          	li	a1,1
    80003380:	00048513          	mv	a0,s1
    80003384:	00000097          	auipc	ra,0x0
    80003388:	5e4080e7          	jalr	1508(ra) # 80003968 <__memset>
    8000338c:	00093783          	ld	a5,0(s2)
    80003390:	00f4b023          	sd	a5,0(s1)
    80003394:	00993023          	sd	s1,0(s2)
    80003398:	fd4498e3          	bne	s1,s4,80003368 <kinit+0x70>
    8000339c:	03813083          	ld	ra,56(sp)
    800033a0:	03013403          	ld	s0,48(sp)
    800033a4:	02813483          	ld	s1,40(sp)
    800033a8:	02013903          	ld	s2,32(sp)
    800033ac:	01813983          	ld	s3,24(sp)
    800033b0:	01013a03          	ld	s4,16(sp)
    800033b4:	00813a83          	ld	s5,8(sp)
    800033b8:	04010113          	addi	sp,sp,64
    800033bc:	00008067          	ret
    800033c0:	00001517          	auipc	a0,0x1
    800033c4:	dd050513          	addi	a0,a0,-560 # 80004190 <digits+0x18>
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	4b4080e7          	jalr	1204(ra) # 8000287c <panic>

00000000800033d0 <freerange>:
    800033d0:	fc010113          	addi	sp,sp,-64
    800033d4:	000017b7          	lui	a5,0x1
    800033d8:	02913423          	sd	s1,40(sp)
    800033dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800033e0:	009504b3          	add	s1,a0,s1
    800033e4:	fffff537          	lui	a0,0xfffff
    800033e8:	02813823          	sd	s0,48(sp)
    800033ec:	02113c23          	sd	ra,56(sp)
    800033f0:	03213023          	sd	s2,32(sp)
    800033f4:	01313c23          	sd	s3,24(sp)
    800033f8:	01413823          	sd	s4,16(sp)
    800033fc:	01513423          	sd	s5,8(sp)
    80003400:	01613023          	sd	s6,0(sp)
    80003404:	04010413          	addi	s0,sp,64
    80003408:	00a4f4b3          	and	s1,s1,a0
    8000340c:	00f487b3          	add	a5,s1,a5
    80003410:	06f5e463          	bltu	a1,a5,80003478 <freerange+0xa8>
    80003414:	00002a97          	auipc	s5,0x2
    80003418:	54ca8a93          	addi	s5,s5,1356 # 80005960 <end>
    8000341c:	0954e263          	bltu	s1,s5,800034a0 <freerange+0xd0>
    80003420:	01100993          	li	s3,17
    80003424:	01b99993          	slli	s3,s3,0x1b
    80003428:	0734fc63          	bgeu	s1,s3,800034a0 <freerange+0xd0>
    8000342c:	00058a13          	mv	s4,a1
    80003430:	00001917          	auipc	s2,0x1
    80003434:	29090913          	addi	s2,s2,656 # 800046c0 <kmem>
    80003438:	00002b37          	lui	s6,0x2
    8000343c:	0140006f          	j	80003450 <freerange+0x80>
    80003440:	000017b7          	lui	a5,0x1
    80003444:	00f484b3          	add	s1,s1,a5
    80003448:	0554ec63          	bltu	s1,s5,800034a0 <freerange+0xd0>
    8000344c:	0534fa63          	bgeu	s1,s3,800034a0 <freerange+0xd0>
    80003450:	00001637          	lui	a2,0x1
    80003454:	00100593          	li	a1,1
    80003458:	00048513          	mv	a0,s1
    8000345c:	00000097          	auipc	ra,0x0
    80003460:	50c080e7          	jalr	1292(ra) # 80003968 <__memset>
    80003464:	00093703          	ld	a4,0(s2)
    80003468:	016487b3          	add	a5,s1,s6
    8000346c:	00e4b023          	sd	a4,0(s1)
    80003470:	00993023          	sd	s1,0(s2)
    80003474:	fcfa76e3          	bgeu	s4,a5,80003440 <freerange+0x70>
    80003478:	03813083          	ld	ra,56(sp)
    8000347c:	03013403          	ld	s0,48(sp)
    80003480:	02813483          	ld	s1,40(sp)
    80003484:	02013903          	ld	s2,32(sp)
    80003488:	01813983          	ld	s3,24(sp)
    8000348c:	01013a03          	ld	s4,16(sp)
    80003490:	00813a83          	ld	s5,8(sp)
    80003494:	00013b03          	ld	s6,0(sp)
    80003498:	04010113          	addi	sp,sp,64
    8000349c:	00008067          	ret
    800034a0:	00001517          	auipc	a0,0x1
    800034a4:	cf050513          	addi	a0,a0,-784 # 80004190 <digits+0x18>
    800034a8:	fffff097          	auipc	ra,0xfffff
    800034ac:	3d4080e7          	jalr	980(ra) # 8000287c <panic>

00000000800034b0 <kfree>:
    800034b0:	fe010113          	addi	sp,sp,-32
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00113c23          	sd	ra,24(sp)
    800034bc:	00913423          	sd	s1,8(sp)
    800034c0:	02010413          	addi	s0,sp,32
    800034c4:	03451793          	slli	a5,a0,0x34
    800034c8:	04079c63          	bnez	a5,80003520 <kfree+0x70>
    800034cc:	00002797          	auipc	a5,0x2
    800034d0:	49478793          	addi	a5,a5,1172 # 80005960 <end>
    800034d4:	00050493          	mv	s1,a0
    800034d8:	04f56463          	bltu	a0,a5,80003520 <kfree+0x70>
    800034dc:	01100793          	li	a5,17
    800034e0:	01b79793          	slli	a5,a5,0x1b
    800034e4:	02f57e63          	bgeu	a0,a5,80003520 <kfree+0x70>
    800034e8:	00001637          	lui	a2,0x1
    800034ec:	00100593          	li	a1,1
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	478080e7          	jalr	1144(ra) # 80003968 <__memset>
    800034f8:	00001797          	auipc	a5,0x1
    800034fc:	1c878793          	addi	a5,a5,456 # 800046c0 <kmem>
    80003500:	0007b703          	ld	a4,0(a5)
    80003504:	01813083          	ld	ra,24(sp)
    80003508:	01013403          	ld	s0,16(sp)
    8000350c:	00e4b023          	sd	a4,0(s1)
    80003510:	0097b023          	sd	s1,0(a5)
    80003514:	00813483          	ld	s1,8(sp)
    80003518:	02010113          	addi	sp,sp,32
    8000351c:	00008067          	ret
    80003520:	00001517          	auipc	a0,0x1
    80003524:	c7050513          	addi	a0,a0,-912 # 80004190 <digits+0x18>
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	354080e7          	jalr	852(ra) # 8000287c <panic>

0000000080003530 <kalloc>:
    80003530:	fe010113          	addi	sp,sp,-32
    80003534:	00813823          	sd	s0,16(sp)
    80003538:	00913423          	sd	s1,8(sp)
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	02010413          	addi	s0,sp,32
    80003544:	00001797          	auipc	a5,0x1
    80003548:	17c78793          	addi	a5,a5,380 # 800046c0 <kmem>
    8000354c:	0007b483          	ld	s1,0(a5)
    80003550:	02048063          	beqz	s1,80003570 <kalloc+0x40>
    80003554:	0004b703          	ld	a4,0(s1)
    80003558:	00001637          	lui	a2,0x1
    8000355c:	00500593          	li	a1,5
    80003560:	00048513          	mv	a0,s1
    80003564:	00e7b023          	sd	a4,0(a5)
    80003568:	00000097          	auipc	ra,0x0
    8000356c:	400080e7          	jalr	1024(ra) # 80003968 <__memset>
    80003570:	01813083          	ld	ra,24(sp)
    80003574:	01013403          	ld	s0,16(sp)
    80003578:	00048513          	mv	a0,s1
    8000357c:	00813483          	ld	s1,8(sp)
    80003580:	02010113          	addi	sp,sp,32
    80003584:	00008067          	ret

0000000080003588 <initlock>:
    80003588:	ff010113          	addi	sp,sp,-16
    8000358c:	00813423          	sd	s0,8(sp)
    80003590:	01010413          	addi	s0,sp,16
    80003594:	00813403          	ld	s0,8(sp)
    80003598:	00b53423          	sd	a1,8(a0)
    8000359c:	00052023          	sw	zero,0(a0)
    800035a0:	00053823          	sd	zero,16(a0)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret

00000000800035ac <acquire>:
    800035ac:	fe010113          	addi	sp,sp,-32
    800035b0:	00813823          	sd	s0,16(sp)
    800035b4:	00913423          	sd	s1,8(sp)
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	01213023          	sd	s2,0(sp)
    800035c0:	02010413          	addi	s0,sp,32
    800035c4:	00050493          	mv	s1,a0
    800035c8:	10002973          	csrr	s2,sstatus
    800035cc:	100027f3          	csrr	a5,sstatus
    800035d0:	ffd7f793          	andi	a5,a5,-3
    800035d4:	10079073          	csrw	sstatus,a5
    800035d8:	fffff097          	auipc	ra,0xfffff
    800035dc:	8ec080e7          	jalr	-1812(ra) # 80001ec4 <mycpu>
    800035e0:	07852783          	lw	a5,120(a0)
    800035e4:	06078e63          	beqz	a5,80003660 <acquire+0xb4>
    800035e8:	fffff097          	auipc	ra,0xfffff
    800035ec:	8dc080e7          	jalr	-1828(ra) # 80001ec4 <mycpu>
    800035f0:	07852783          	lw	a5,120(a0)
    800035f4:	0004a703          	lw	a4,0(s1)
    800035f8:	0017879b          	addiw	a5,a5,1
    800035fc:	06f52c23          	sw	a5,120(a0)
    80003600:	04071063          	bnez	a4,80003640 <acquire+0x94>
    80003604:	00100713          	li	a4,1
    80003608:	00070793          	mv	a5,a4
    8000360c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003610:	0007879b          	sext.w	a5,a5
    80003614:	fe079ae3          	bnez	a5,80003608 <acquire+0x5c>
    80003618:	0ff0000f          	fence
    8000361c:	fffff097          	auipc	ra,0xfffff
    80003620:	8a8080e7          	jalr	-1880(ra) # 80001ec4 <mycpu>
    80003624:	01813083          	ld	ra,24(sp)
    80003628:	01013403          	ld	s0,16(sp)
    8000362c:	00a4b823          	sd	a0,16(s1)
    80003630:	00013903          	ld	s2,0(sp)
    80003634:	00813483          	ld	s1,8(sp)
    80003638:	02010113          	addi	sp,sp,32
    8000363c:	00008067          	ret
    80003640:	0104b903          	ld	s2,16(s1)
    80003644:	fffff097          	auipc	ra,0xfffff
    80003648:	880080e7          	jalr	-1920(ra) # 80001ec4 <mycpu>
    8000364c:	faa91ce3          	bne	s2,a0,80003604 <acquire+0x58>
    80003650:	00001517          	auipc	a0,0x1
    80003654:	b4850513          	addi	a0,a0,-1208 # 80004198 <digits+0x20>
    80003658:	fffff097          	auipc	ra,0xfffff
    8000365c:	224080e7          	jalr	548(ra) # 8000287c <panic>
    80003660:	00195913          	srli	s2,s2,0x1
    80003664:	fffff097          	auipc	ra,0xfffff
    80003668:	860080e7          	jalr	-1952(ra) # 80001ec4 <mycpu>
    8000366c:	00197913          	andi	s2,s2,1
    80003670:	07252e23          	sw	s2,124(a0)
    80003674:	f75ff06f          	j	800035e8 <acquire+0x3c>

0000000080003678 <release>:
    80003678:	fe010113          	addi	sp,sp,-32
    8000367c:	00813823          	sd	s0,16(sp)
    80003680:	00113c23          	sd	ra,24(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	01213023          	sd	s2,0(sp)
    8000368c:	02010413          	addi	s0,sp,32
    80003690:	00052783          	lw	a5,0(a0)
    80003694:	00079a63          	bnez	a5,800036a8 <release+0x30>
    80003698:	00001517          	auipc	a0,0x1
    8000369c:	b0850513          	addi	a0,a0,-1272 # 800041a0 <digits+0x28>
    800036a0:	fffff097          	auipc	ra,0xfffff
    800036a4:	1dc080e7          	jalr	476(ra) # 8000287c <panic>
    800036a8:	01053903          	ld	s2,16(a0)
    800036ac:	00050493          	mv	s1,a0
    800036b0:	fffff097          	auipc	ra,0xfffff
    800036b4:	814080e7          	jalr	-2028(ra) # 80001ec4 <mycpu>
    800036b8:	fea910e3          	bne	s2,a0,80003698 <release+0x20>
    800036bc:	0004b823          	sd	zero,16(s1)
    800036c0:	0ff0000f          	fence
    800036c4:	0f50000f          	fence	iorw,ow
    800036c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	7f8080e7          	jalr	2040(ra) # 80001ec4 <mycpu>
    800036d4:	100027f3          	csrr	a5,sstatus
    800036d8:	0027f793          	andi	a5,a5,2
    800036dc:	04079a63          	bnez	a5,80003730 <release+0xb8>
    800036e0:	07852783          	lw	a5,120(a0)
    800036e4:	02f05e63          	blez	a5,80003720 <release+0xa8>
    800036e8:	fff7871b          	addiw	a4,a5,-1
    800036ec:	06e52c23          	sw	a4,120(a0)
    800036f0:	00071c63          	bnez	a4,80003708 <release+0x90>
    800036f4:	07c52783          	lw	a5,124(a0)
    800036f8:	00078863          	beqz	a5,80003708 <release+0x90>
    800036fc:	100027f3          	csrr	a5,sstatus
    80003700:	0027e793          	ori	a5,a5,2
    80003704:	10079073          	csrw	sstatus,a5
    80003708:	01813083          	ld	ra,24(sp)
    8000370c:	01013403          	ld	s0,16(sp)
    80003710:	00813483          	ld	s1,8(sp)
    80003714:	00013903          	ld	s2,0(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret
    80003720:	00001517          	auipc	a0,0x1
    80003724:	aa050513          	addi	a0,a0,-1376 # 800041c0 <digits+0x48>
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	154080e7          	jalr	340(ra) # 8000287c <panic>
    80003730:	00001517          	auipc	a0,0x1
    80003734:	a7850513          	addi	a0,a0,-1416 # 800041a8 <digits+0x30>
    80003738:	fffff097          	auipc	ra,0xfffff
    8000373c:	144080e7          	jalr	324(ra) # 8000287c <panic>

0000000080003740 <holding>:
    80003740:	00052783          	lw	a5,0(a0)
    80003744:	00079663          	bnez	a5,80003750 <holding+0x10>
    80003748:	00000513          	li	a0,0
    8000374c:	00008067          	ret
    80003750:	fe010113          	addi	sp,sp,-32
    80003754:	00813823          	sd	s0,16(sp)
    80003758:	00913423          	sd	s1,8(sp)
    8000375c:	00113c23          	sd	ra,24(sp)
    80003760:	02010413          	addi	s0,sp,32
    80003764:	01053483          	ld	s1,16(a0)
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	75c080e7          	jalr	1884(ra) # 80001ec4 <mycpu>
    80003770:	01813083          	ld	ra,24(sp)
    80003774:	01013403          	ld	s0,16(sp)
    80003778:	40a48533          	sub	a0,s1,a0
    8000377c:	00153513          	seqz	a0,a0
    80003780:	00813483          	ld	s1,8(sp)
    80003784:	02010113          	addi	sp,sp,32
    80003788:	00008067          	ret

000000008000378c <push_off>:
    8000378c:	fe010113          	addi	sp,sp,-32
    80003790:	00813823          	sd	s0,16(sp)
    80003794:	00113c23          	sd	ra,24(sp)
    80003798:	00913423          	sd	s1,8(sp)
    8000379c:	02010413          	addi	s0,sp,32
    800037a0:	100024f3          	csrr	s1,sstatus
    800037a4:	100027f3          	csrr	a5,sstatus
    800037a8:	ffd7f793          	andi	a5,a5,-3
    800037ac:	10079073          	csrw	sstatus,a5
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	714080e7          	jalr	1812(ra) # 80001ec4 <mycpu>
    800037b8:	07852783          	lw	a5,120(a0)
    800037bc:	02078663          	beqz	a5,800037e8 <push_off+0x5c>
    800037c0:	ffffe097          	auipc	ra,0xffffe
    800037c4:	704080e7          	jalr	1796(ra) # 80001ec4 <mycpu>
    800037c8:	07852783          	lw	a5,120(a0)
    800037cc:	01813083          	ld	ra,24(sp)
    800037d0:	01013403          	ld	s0,16(sp)
    800037d4:	0017879b          	addiw	a5,a5,1
    800037d8:	06f52c23          	sw	a5,120(a0)
    800037dc:	00813483          	ld	s1,8(sp)
    800037e0:	02010113          	addi	sp,sp,32
    800037e4:	00008067          	ret
    800037e8:	0014d493          	srli	s1,s1,0x1
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	6d8080e7          	jalr	1752(ra) # 80001ec4 <mycpu>
    800037f4:	0014f493          	andi	s1,s1,1
    800037f8:	06952e23          	sw	s1,124(a0)
    800037fc:	fc5ff06f          	j	800037c0 <push_off+0x34>

0000000080003800 <pop_off>:
    80003800:	ff010113          	addi	sp,sp,-16
    80003804:	00813023          	sd	s0,0(sp)
    80003808:	00113423          	sd	ra,8(sp)
    8000380c:	01010413          	addi	s0,sp,16
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	6b4080e7          	jalr	1716(ra) # 80001ec4 <mycpu>
    80003818:	100027f3          	csrr	a5,sstatus
    8000381c:	0027f793          	andi	a5,a5,2
    80003820:	04079663          	bnez	a5,8000386c <pop_off+0x6c>
    80003824:	07852783          	lw	a5,120(a0)
    80003828:	02f05a63          	blez	a5,8000385c <pop_off+0x5c>
    8000382c:	fff7871b          	addiw	a4,a5,-1
    80003830:	06e52c23          	sw	a4,120(a0)
    80003834:	00071c63          	bnez	a4,8000384c <pop_off+0x4c>
    80003838:	07c52783          	lw	a5,124(a0)
    8000383c:	00078863          	beqz	a5,8000384c <pop_off+0x4c>
    80003840:	100027f3          	csrr	a5,sstatus
    80003844:	0027e793          	ori	a5,a5,2
    80003848:	10079073          	csrw	sstatus,a5
    8000384c:	00813083          	ld	ra,8(sp)
    80003850:	00013403          	ld	s0,0(sp)
    80003854:	01010113          	addi	sp,sp,16
    80003858:	00008067          	ret
    8000385c:	00001517          	auipc	a0,0x1
    80003860:	96450513          	addi	a0,a0,-1692 # 800041c0 <digits+0x48>
    80003864:	fffff097          	auipc	ra,0xfffff
    80003868:	018080e7          	jalr	24(ra) # 8000287c <panic>
    8000386c:	00001517          	auipc	a0,0x1
    80003870:	93c50513          	addi	a0,a0,-1732 # 800041a8 <digits+0x30>
    80003874:	fffff097          	auipc	ra,0xfffff
    80003878:	008080e7          	jalr	8(ra) # 8000287c <panic>

000000008000387c <push_on>:
    8000387c:	fe010113          	addi	sp,sp,-32
    80003880:	00813823          	sd	s0,16(sp)
    80003884:	00113c23          	sd	ra,24(sp)
    80003888:	00913423          	sd	s1,8(sp)
    8000388c:	02010413          	addi	s0,sp,32
    80003890:	100024f3          	csrr	s1,sstatus
    80003894:	100027f3          	csrr	a5,sstatus
    80003898:	0027e793          	ori	a5,a5,2
    8000389c:	10079073          	csrw	sstatus,a5
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	624080e7          	jalr	1572(ra) # 80001ec4 <mycpu>
    800038a8:	07852783          	lw	a5,120(a0)
    800038ac:	02078663          	beqz	a5,800038d8 <push_on+0x5c>
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	614080e7          	jalr	1556(ra) # 80001ec4 <mycpu>
    800038b8:	07852783          	lw	a5,120(a0)
    800038bc:	01813083          	ld	ra,24(sp)
    800038c0:	01013403          	ld	s0,16(sp)
    800038c4:	0017879b          	addiw	a5,a5,1
    800038c8:	06f52c23          	sw	a5,120(a0)
    800038cc:	00813483          	ld	s1,8(sp)
    800038d0:	02010113          	addi	sp,sp,32
    800038d4:	00008067          	ret
    800038d8:	0014d493          	srli	s1,s1,0x1
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	5e8080e7          	jalr	1512(ra) # 80001ec4 <mycpu>
    800038e4:	0014f493          	andi	s1,s1,1
    800038e8:	06952e23          	sw	s1,124(a0)
    800038ec:	fc5ff06f          	j	800038b0 <push_on+0x34>

00000000800038f0 <pop_on>:
    800038f0:	ff010113          	addi	sp,sp,-16
    800038f4:	00813023          	sd	s0,0(sp)
    800038f8:	00113423          	sd	ra,8(sp)
    800038fc:	01010413          	addi	s0,sp,16
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	5c4080e7          	jalr	1476(ra) # 80001ec4 <mycpu>
    80003908:	100027f3          	csrr	a5,sstatus
    8000390c:	0027f793          	andi	a5,a5,2
    80003910:	04078463          	beqz	a5,80003958 <pop_on+0x68>
    80003914:	07852783          	lw	a5,120(a0)
    80003918:	02f05863          	blez	a5,80003948 <pop_on+0x58>
    8000391c:	fff7879b          	addiw	a5,a5,-1
    80003920:	06f52c23          	sw	a5,120(a0)
    80003924:	07853783          	ld	a5,120(a0)
    80003928:	00079863          	bnez	a5,80003938 <pop_on+0x48>
    8000392c:	100027f3          	csrr	a5,sstatus
    80003930:	ffd7f793          	andi	a5,a5,-3
    80003934:	10079073          	csrw	sstatus,a5
    80003938:	00813083          	ld	ra,8(sp)
    8000393c:	00013403          	ld	s0,0(sp)
    80003940:	01010113          	addi	sp,sp,16
    80003944:	00008067          	ret
    80003948:	00001517          	auipc	a0,0x1
    8000394c:	8a050513          	addi	a0,a0,-1888 # 800041e8 <digits+0x70>
    80003950:	fffff097          	auipc	ra,0xfffff
    80003954:	f2c080e7          	jalr	-212(ra) # 8000287c <panic>
    80003958:	00001517          	auipc	a0,0x1
    8000395c:	87050513          	addi	a0,a0,-1936 # 800041c8 <digits+0x50>
    80003960:	fffff097          	auipc	ra,0xfffff
    80003964:	f1c080e7          	jalr	-228(ra) # 8000287c <panic>

0000000080003968 <__memset>:
    80003968:	ff010113          	addi	sp,sp,-16
    8000396c:	00813423          	sd	s0,8(sp)
    80003970:	01010413          	addi	s0,sp,16
    80003974:	1a060e63          	beqz	a2,80003b30 <__memset+0x1c8>
    80003978:	40a007b3          	neg	a5,a0
    8000397c:	0077f793          	andi	a5,a5,7
    80003980:	00778693          	addi	a3,a5,7
    80003984:	00b00813          	li	a6,11
    80003988:	0ff5f593          	andi	a1,a1,255
    8000398c:	fff6071b          	addiw	a4,a2,-1
    80003990:	1b06e663          	bltu	a3,a6,80003b3c <__memset+0x1d4>
    80003994:	1cd76463          	bltu	a4,a3,80003b5c <__memset+0x1f4>
    80003998:	1a078e63          	beqz	a5,80003b54 <__memset+0x1ec>
    8000399c:	00b50023          	sb	a1,0(a0)
    800039a0:	00100713          	li	a4,1
    800039a4:	1ae78463          	beq	a5,a4,80003b4c <__memset+0x1e4>
    800039a8:	00b500a3          	sb	a1,1(a0)
    800039ac:	00200713          	li	a4,2
    800039b0:	1ae78a63          	beq	a5,a4,80003b64 <__memset+0x1fc>
    800039b4:	00b50123          	sb	a1,2(a0)
    800039b8:	00300713          	li	a4,3
    800039bc:	18e78463          	beq	a5,a4,80003b44 <__memset+0x1dc>
    800039c0:	00b501a3          	sb	a1,3(a0)
    800039c4:	00400713          	li	a4,4
    800039c8:	1ae78263          	beq	a5,a4,80003b6c <__memset+0x204>
    800039cc:	00b50223          	sb	a1,4(a0)
    800039d0:	00500713          	li	a4,5
    800039d4:	1ae78063          	beq	a5,a4,80003b74 <__memset+0x20c>
    800039d8:	00b502a3          	sb	a1,5(a0)
    800039dc:	00700713          	li	a4,7
    800039e0:	18e79e63          	bne	a5,a4,80003b7c <__memset+0x214>
    800039e4:	00b50323          	sb	a1,6(a0)
    800039e8:	00700e93          	li	t4,7
    800039ec:	00859713          	slli	a4,a1,0x8
    800039f0:	00e5e733          	or	a4,a1,a4
    800039f4:	01059e13          	slli	t3,a1,0x10
    800039f8:	01c76e33          	or	t3,a4,t3
    800039fc:	01859313          	slli	t1,a1,0x18
    80003a00:	006e6333          	or	t1,t3,t1
    80003a04:	02059893          	slli	a7,a1,0x20
    80003a08:	40f60e3b          	subw	t3,a2,a5
    80003a0c:	011368b3          	or	a7,t1,a7
    80003a10:	02859813          	slli	a6,a1,0x28
    80003a14:	0108e833          	or	a6,a7,a6
    80003a18:	03059693          	slli	a3,a1,0x30
    80003a1c:	003e589b          	srliw	a7,t3,0x3
    80003a20:	00d866b3          	or	a3,a6,a3
    80003a24:	03859713          	slli	a4,a1,0x38
    80003a28:	00389813          	slli	a6,a7,0x3
    80003a2c:	00f507b3          	add	a5,a0,a5
    80003a30:	00e6e733          	or	a4,a3,a4
    80003a34:	000e089b          	sext.w	a7,t3
    80003a38:	00f806b3          	add	a3,a6,a5
    80003a3c:	00e7b023          	sd	a4,0(a5)
    80003a40:	00878793          	addi	a5,a5,8
    80003a44:	fed79ce3          	bne	a5,a3,80003a3c <__memset+0xd4>
    80003a48:	ff8e7793          	andi	a5,t3,-8
    80003a4c:	0007871b          	sext.w	a4,a5
    80003a50:	01d787bb          	addw	a5,a5,t4
    80003a54:	0ce88e63          	beq	a7,a4,80003b30 <__memset+0x1c8>
    80003a58:	00f50733          	add	a4,a0,a5
    80003a5c:	00b70023          	sb	a1,0(a4)
    80003a60:	0017871b          	addiw	a4,a5,1
    80003a64:	0cc77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a68:	00e50733          	add	a4,a0,a4
    80003a6c:	00b70023          	sb	a1,0(a4)
    80003a70:	0027871b          	addiw	a4,a5,2
    80003a74:	0ac77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a78:	00e50733          	add	a4,a0,a4
    80003a7c:	00b70023          	sb	a1,0(a4)
    80003a80:	0037871b          	addiw	a4,a5,3
    80003a84:	0ac77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a88:	00e50733          	add	a4,a0,a4
    80003a8c:	00b70023          	sb	a1,0(a4)
    80003a90:	0047871b          	addiw	a4,a5,4
    80003a94:	08c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a98:	00e50733          	add	a4,a0,a4
    80003a9c:	00b70023          	sb	a1,0(a4)
    80003aa0:	0057871b          	addiw	a4,a5,5
    80003aa4:	08c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003aa8:	00e50733          	add	a4,a0,a4
    80003aac:	00b70023          	sb	a1,0(a4)
    80003ab0:	0067871b          	addiw	a4,a5,6
    80003ab4:	06c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ab8:	00e50733          	add	a4,a0,a4
    80003abc:	00b70023          	sb	a1,0(a4)
    80003ac0:	0077871b          	addiw	a4,a5,7
    80003ac4:	06c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ac8:	00e50733          	add	a4,a0,a4
    80003acc:	00b70023          	sb	a1,0(a4)
    80003ad0:	0087871b          	addiw	a4,a5,8
    80003ad4:	04c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ad8:	00e50733          	add	a4,a0,a4
    80003adc:	00b70023          	sb	a1,0(a4)
    80003ae0:	0097871b          	addiw	a4,a5,9
    80003ae4:	04c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ae8:	00e50733          	add	a4,a0,a4
    80003aec:	00b70023          	sb	a1,0(a4)
    80003af0:	00a7871b          	addiw	a4,a5,10
    80003af4:	02c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003af8:	00e50733          	add	a4,a0,a4
    80003afc:	00b70023          	sb	a1,0(a4)
    80003b00:	00b7871b          	addiw	a4,a5,11
    80003b04:	02c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003b08:	00e50733          	add	a4,a0,a4
    80003b0c:	00b70023          	sb	a1,0(a4)
    80003b10:	00c7871b          	addiw	a4,a5,12
    80003b14:	00c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003b18:	00e50733          	add	a4,a0,a4
    80003b1c:	00b70023          	sb	a1,0(a4)
    80003b20:	00d7879b          	addiw	a5,a5,13
    80003b24:	00c7f663          	bgeu	a5,a2,80003b30 <__memset+0x1c8>
    80003b28:	00f507b3          	add	a5,a0,a5
    80003b2c:	00b78023          	sb	a1,0(a5)
    80003b30:	00813403          	ld	s0,8(sp)
    80003b34:	01010113          	addi	sp,sp,16
    80003b38:	00008067          	ret
    80003b3c:	00b00693          	li	a3,11
    80003b40:	e55ff06f          	j	80003994 <__memset+0x2c>
    80003b44:	00300e93          	li	t4,3
    80003b48:	ea5ff06f          	j	800039ec <__memset+0x84>
    80003b4c:	00100e93          	li	t4,1
    80003b50:	e9dff06f          	j	800039ec <__memset+0x84>
    80003b54:	00000e93          	li	t4,0
    80003b58:	e95ff06f          	j	800039ec <__memset+0x84>
    80003b5c:	00000793          	li	a5,0
    80003b60:	ef9ff06f          	j	80003a58 <__memset+0xf0>
    80003b64:	00200e93          	li	t4,2
    80003b68:	e85ff06f          	j	800039ec <__memset+0x84>
    80003b6c:	00400e93          	li	t4,4
    80003b70:	e7dff06f          	j	800039ec <__memset+0x84>
    80003b74:	00500e93          	li	t4,5
    80003b78:	e75ff06f          	j	800039ec <__memset+0x84>
    80003b7c:	00600e93          	li	t4,6
    80003b80:	e6dff06f          	j	800039ec <__memset+0x84>

0000000080003b84 <__memmove>:
    80003b84:	ff010113          	addi	sp,sp,-16
    80003b88:	00813423          	sd	s0,8(sp)
    80003b8c:	01010413          	addi	s0,sp,16
    80003b90:	0e060863          	beqz	a2,80003c80 <__memmove+0xfc>
    80003b94:	fff6069b          	addiw	a3,a2,-1
    80003b98:	0006881b          	sext.w	a6,a3
    80003b9c:	0ea5e863          	bltu	a1,a0,80003c8c <__memmove+0x108>
    80003ba0:	00758713          	addi	a4,a1,7
    80003ba4:	00a5e7b3          	or	a5,a1,a0
    80003ba8:	40a70733          	sub	a4,a4,a0
    80003bac:	0077f793          	andi	a5,a5,7
    80003bb0:	00f73713          	sltiu	a4,a4,15
    80003bb4:	00174713          	xori	a4,a4,1
    80003bb8:	0017b793          	seqz	a5,a5
    80003bbc:	00e7f7b3          	and	a5,a5,a4
    80003bc0:	10078863          	beqz	a5,80003cd0 <__memmove+0x14c>
    80003bc4:	00900793          	li	a5,9
    80003bc8:	1107f463          	bgeu	a5,a6,80003cd0 <__memmove+0x14c>
    80003bcc:	0036581b          	srliw	a6,a2,0x3
    80003bd0:	fff8081b          	addiw	a6,a6,-1
    80003bd4:	02081813          	slli	a6,a6,0x20
    80003bd8:	01d85893          	srli	a7,a6,0x1d
    80003bdc:	00858813          	addi	a6,a1,8
    80003be0:	00058793          	mv	a5,a1
    80003be4:	00050713          	mv	a4,a0
    80003be8:	01088833          	add	a6,a7,a6
    80003bec:	0007b883          	ld	a7,0(a5)
    80003bf0:	00878793          	addi	a5,a5,8
    80003bf4:	00870713          	addi	a4,a4,8
    80003bf8:	ff173c23          	sd	a7,-8(a4)
    80003bfc:	ff0798e3          	bne	a5,a6,80003bec <__memmove+0x68>
    80003c00:	ff867713          	andi	a4,a2,-8
    80003c04:	02071793          	slli	a5,a4,0x20
    80003c08:	0207d793          	srli	a5,a5,0x20
    80003c0c:	00f585b3          	add	a1,a1,a5
    80003c10:	40e686bb          	subw	a3,a3,a4
    80003c14:	00f507b3          	add	a5,a0,a5
    80003c18:	06e60463          	beq	a2,a4,80003c80 <__memmove+0xfc>
    80003c1c:	0005c703          	lbu	a4,0(a1)
    80003c20:	00e78023          	sb	a4,0(a5)
    80003c24:	04068e63          	beqz	a3,80003c80 <__memmove+0xfc>
    80003c28:	0015c603          	lbu	a2,1(a1)
    80003c2c:	00100713          	li	a4,1
    80003c30:	00c780a3          	sb	a2,1(a5)
    80003c34:	04e68663          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c38:	0025c603          	lbu	a2,2(a1)
    80003c3c:	00200713          	li	a4,2
    80003c40:	00c78123          	sb	a2,2(a5)
    80003c44:	02e68e63          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c48:	0035c603          	lbu	a2,3(a1)
    80003c4c:	00300713          	li	a4,3
    80003c50:	00c781a3          	sb	a2,3(a5)
    80003c54:	02e68663          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c58:	0045c603          	lbu	a2,4(a1)
    80003c5c:	00400713          	li	a4,4
    80003c60:	00c78223          	sb	a2,4(a5)
    80003c64:	00e68e63          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c68:	0055c603          	lbu	a2,5(a1)
    80003c6c:	00500713          	li	a4,5
    80003c70:	00c782a3          	sb	a2,5(a5)
    80003c74:	00e68663          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c78:	0065c703          	lbu	a4,6(a1)
    80003c7c:	00e78323          	sb	a4,6(a5)
    80003c80:	00813403          	ld	s0,8(sp)
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00008067          	ret
    80003c8c:	02061713          	slli	a4,a2,0x20
    80003c90:	02075713          	srli	a4,a4,0x20
    80003c94:	00e587b3          	add	a5,a1,a4
    80003c98:	f0f574e3          	bgeu	a0,a5,80003ba0 <__memmove+0x1c>
    80003c9c:	02069613          	slli	a2,a3,0x20
    80003ca0:	02065613          	srli	a2,a2,0x20
    80003ca4:	fff64613          	not	a2,a2
    80003ca8:	00e50733          	add	a4,a0,a4
    80003cac:	00c78633          	add	a2,a5,a2
    80003cb0:	fff7c683          	lbu	a3,-1(a5)
    80003cb4:	fff78793          	addi	a5,a5,-1
    80003cb8:	fff70713          	addi	a4,a4,-1
    80003cbc:	00d70023          	sb	a3,0(a4)
    80003cc0:	fec798e3          	bne	a5,a2,80003cb0 <__memmove+0x12c>
    80003cc4:	00813403          	ld	s0,8(sp)
    80003cc8:	01010113          	addi	sp,sp,16
    80003ccc:	00008067          	ret
    80003cd0:	02069713          	slli	a4,a3,0x20
    80003cd4:	02075713          	srli	a4,a4,0x20
    80003cd8:	00170713          	addi	a4,a4,1
    80003cdc:	00e50733          	add	a4,a0,a4
    80003ce0:	00050793          	mv	a5,a0
    80003ce4:	0005c683          	lbu	a3,0(a1)
    80003ce8:	00178793          	addi	a5,a5,1
    80003cec:	00158593          	addi	a1,a1,1
    80003cf0:	fed78fa3          	sb	a3,-1(a5)
    80003cf4:	fee798e3          	bne	a5,a4,80003ce4 <__memmove+0x160>
    80003cf8:	f89ff06f          	j	80003c80 <__memmove+0xfc>

0000000080003cfc <__putc>:
    80003cfc:	fe010113          	addi	sp,sp,-32
    80003d00:	00813823          	sd	s0,16(sp)
    80003d04:	00113c23          	sd	ra,24(sp)
    80003d08:	02010413          	addi	s0,sp,32
    80003d0c:	00050793          	mv	a5,a0
    80003d10:	fef40593          	addi	a1,s0,-17
    80003d14:	00100613          	li	a2,1
    80003d18:	00000513          	li	a0,0
    80003d1c:	fef407a3          	sb	a5,-17(s0)
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	b3c080e7          	jalr	-1220(ra) # 8000285c <console_write>
    80003d28:	01813083          	ld	ra,24(sp)
    80003d2c:	01013403          	ld	s0,16(sp)
    80003d30:	02010113          	addi	sp,sp,32
    80003d34:	00008067          	ret

0000000080003d38 <__getc>:
    80003d38:	fe010113          	addi	sp,sp,-32
    80003d3c:	00813823          	sd	s0,16(sp)
    80003d40:	00113c23          	sd	ra,24(sp)
    80003d44:	02010413          	addi	s0,sp,32
    80003d48:	fe840593          	addi	a1,s0,-24
    80003d4c:	00100613          	li	a2,1
    80003d50:	00000513          	li	a0,0
    80003d54:	fffff097          	auipc	ra,0xfffff
    80003d58:	ae8080e7          	jalr	-1304(ra) # 8000283c <console_read>
    80003d5c:	fe844503          	lbu	a0,-24(s0)
    80003d60:	01813083          	ld	ra,24(sp)
    80003d64:	01013403          	ld	s0,16(sp)
    80003d68:	02010113          	addi	sp,sp,32
    80003d6c:	00008067          	ret

0000000080003d70 <console_handler>:
    80003d70:	fe010113          	addi	sp,sp,-32
    80003d74:	00813823          	sd	s0,16(sp)
    80003d78:	00113c23          	sd	ra,24(sp)
    80003d7c:	00913423          	sd	s1,8(sp)
    80003d80:	02010413          	addi	s0,sp,32
    80003d84:	14202773          	csrr	a4,scause
    80003d88:	100027f3          	csrr	a5,sstatus
    80003d8c:	0027f793          	andi	a5,a5,2
    80003d90:	06079e63          	bnez	a5,80003e0c <console_handler+0x9c>
    80003d94:	00074c63          	bltz	a4,80003dac <console_handler+0x3c>
    80003d98:	01813083          	ld	ra,24(sp)
    80003d9c:	01013403          	ld	s0,16(sp)
    80003da0:	00813483          	ld	s1,8(sp)
    80003da4:	02010113          	addi	sp,sp,32
    80003da8:	00008067          	ret
    80003dac:	0ff77713          	andi	a4,a4,255
    80003db0:	00900793          	li	a5,9
    80003db4:	fef712e3          	bne	a4,a5,80003d98 <console_handler+0x28>
    80003db8:	ffffe097          	auipc	ra,0xffffe
    80003dbc:	6dc080e7          	jalr	1756(ra) # 80002494 <plic_claim>
    80003dc0:	00a00793          	li	a5,10
    80003dc4:	00050493          	mv	s1,a0
    80003dc8:	02f50c63          	beq	a0,a5,80003e00 <console_handler+0x90>
    80003dcc:	fc0506e3          	beqz	a0,80003d98 <console_handler+0x28>
    80003dd0:	00050593          	mv	a1,a0
    80003dd4:	00000517          	auipc	a0,0x0
    80003dd8:	31c50513          	addi	a0,a0,796 # 800040f0 <CONSOLE_STATUS+0xe0>
    80003ddc:	fffff097          	auipc	ra,0xfffff
    80003de0:	afc080e7          	jalr	-1284(ra) # 800028d8 <__printf>
    80003de4:	01013403          	ld	s0,16(sp)
    80003de8:	01813083          	ld	ra,24(sp)
    80003dec:	00048513          	mv	a0,s1
    80003df0:	00813483          	ld	s1,8(sp)
    80003df4:	02010113          	addi	sp,sp,32
    80003df8:	ffffe317          	auipc	t1,0xffffe
    80003dfc:	6d430067          	jr	1748(t1) # 800024cc <plic_complete>
    80003e00:	fffff097          	auipc	ra,0xfffff
    80003e04:	3e0080e7          	jalr	992(ra) # 800031e0 <uartintr>
    80003e08:	fddff06f          	j	80003de4 <console_handler+0x74>
    80003e0c:	00000517          	auipc	a0,0x0
    80003e10:	3e450513          	addi	a0,a0,996 # 800041f0 <digits+0x78>
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	a68080e7          	jalr	-1432(ra) # 8000287c <panic>
	...
